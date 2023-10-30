<?php

namespace App\Http\Controllers;

use App\Exports\OrderExport;
use App\Http\AllStatic;
use App\Models\Order;
use App\Models\Delivery;
use App\Models\OrderDetails;
use App\Models\UserBillingInfo;
use App\Models\UserShippingInfo;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use DB,PDF;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.order.order');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getOrder(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $taken = $request->get('take_some');
        $keyword   = $request->get('keyword');
        $byposition   = $request->get('byposition');
        $payment_status   = $request->get('payment_status');
        $status   = $request->get('status');
        $from   = $request->get('from');
        $to   = $request->get('to');
        $to = date('Y-m-d', strtotime("+1 day", strtotime($to)));
        if($request->excel == 'yes'){
            return Excel::download(new OrderExport($request->keyword,$request->byposition,$request->status),'order_list.xlsx');
        }
        if($request->invoicexcel == 'yes'){
            return Excel::download(new OrderExport($request->keyword,$request->byposition,$request->status,'invoice'),'invoice_report.xlsx');
        }
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;

        $order = Order::with(['user','delivery','user_shipping_info'])->withCount([
            'order_details as buying_sum' => function($query) {
                $query->select(\DB::raw('SUM(total_buying_price)'));
            }
        ])->orderBy('id','desc');

        if($keyword != ''){
            $order = $order->where('id','like','%'.$keyword.'%')
            ->orWhereHas('user_shipping_info', function ($q) use ($keyword) {
                $q->where('last_name','like','%'.$keyword.'%')
                    ->orWhere('phone','like','%'.$keyword.'%')
                    ->orWhere('email','like','%'.$keyword.'%');
            });
        }

        if($payment_status != ''){
            $order = $order->where('payment_status',$payment_status);
        }

        if($byposition != ''){
            $order = $order->where('order_position',$byposition);
        }

        if($status != ''){
            $order = $order->where('status',$status);
        }

        if($from != '' && $to != ''){
            $order = $order->whereBetween('order_date',[$from,$to]);
        }
        if($noPagination != ''){
            if($taken != ''){
                $order = $order->take($taken);
            }
            $order = $order->get();
        } else {
            $order = $order->paginate($dataQty);
        }
        return response()->json($order);
    }


    public function getUserOrder(Request $request,$id)
    {
        $noPagination = $request->get('no_paginate');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $order = Order::where('user_id',$id)->orderBy('id','desc');
        if($noPagination != ''){
            $order = $order->get();
        } else {
            $order = $order->paginate($dataQty);
        }
        return response()->json($order);
    }

    public function orderDetails(Request $request,$id)
    {

        try{
            if($request->from == 'pdf'){
               $orderdata = Order::find($id);
               // return view('invoice',['order_info' => $orderdata]);
                $pdf = \PDF::loadView('invoice',['order_info' => $orderdata]);
                return $pdf->download('invoice-'.$orderdata->id.'.pdf');
            }
            $order = Order::with('user','delivery','user_shipping_info','user_billing_info')->find($id);
            $details = OrderDetails::with(['product','colour','size','fabric'])->where('order_id',$id)->get();
            return view('pages.order.order_details',['details' => $details,'order' => $order]);
        } catch (\Throwable $th) {
                return $th->getMessage();
        }
    }

    public function orderCancel(Request $request)
    {
        $order = Order::find($request->order_id);
        $order->status = $request->order_modify;
        $order->update();
        return response()->json(['status' => 'success', 'message' => 'Order Has been Modified!']);
    }

    public function orderPaymentStatus(Request $request)
    {
        $order = Order::find($request->order_id);
        $order->payment_status = $request->payment_status;
        $order->payment_date = date("Y-m-d");
        $order->update();
        return response()->json(['status' => 'success', 'message' => 'Order Payment Changed!']);
    }

    public function orderShipment($id)
    {
        try {
            return Order::select('id','order_id','order_position','tracking_id')->find($id);
        } catch (\Throwable $th) {
            return $this->errorMessage();
            //throw $th;
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateOrderStatus(Request $request)
    {
        try {
            // return $request->all();
            DB::beginTransaction();
            $order = Order::find($request->order_id);
            $order->order_position = $request->order_position;
            $order->update();

            $delivery = Delivery::where('order_id',$request->order_id)->first();
            if(!empty($delivery)){
                if($request->order_position == AllStatic::$processing){
                    $delivery->process_date = $request->date ? $request->date : date('Y-m-d');
                    $delivery->process_state = AllStatic::$processing;
                    $delivery->process_value = deliveryPosition(AllStatic::$processing);
                }

                if($request->order_position == AllStatic::$on_delivery){
                    $delivery->on_delivery_date = $request->date ? $request->date : date('Y-m-d');
                    $delivery->on_delivery_state = AllStatic::$on_delivery;
                    $delivery->on_delivery_value = deliveryPosition(AllStatic::$on_delivery);
                }

                if($request->order_position == AllStatic::$delivered){
                    $delivery->delivery_date = $request->date ? $request->date : date('Y-m-d');
                    $delivery->delivery_state = AllStatic::$delivered;
                    $delivery->delivery_value = deliveryPosition(AllStatic::$delivered);
                }
                $delivery->update();
            }
            DB::commit();
            return response()->json(['status' => 'success', 'message' => 'Order Status Updated!']);

        } catch (\Throwable $th) {
            DB::rollBack();
            // return $th;
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
            //throw $th;
        }

        return response()->json($request->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order,$id)
    {
        response()->json(Order::find(2));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order)
    {
        response()->json(Order::find(2));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Order $order)
    {
        response()->json(Order::find(2));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order,$id)
    {
        try {
            DB::beginTransaction();
            $order = $order->find($id);
            if(empty($order)){
                return response()->json(['status' => 'error', 'message' => 'Order Not Found!']);
            }
            OrderDetails::where('order_id',$id)->delete();
            Delivery::where('order_id',$id)->delete();
            UserBillingInfo::where('order_id',$id)->delete();
            UserShippingInfo::where('order_id',$id)->delete();
            $order->delete();
            DB::commit();
            return response()->json(['status' => 'success', 'message' => 'Order Deleted Successfully!']);
        } catch (\Throwable $th) {
            DB::rollBack();
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
        }
    }
}
