<?php

namespace App\Http\Controllers;

use App\Exports\OrderExport;
use App\Models\Order;
use App\Models\Delivery;
use App\Models\OrderDetails;
use App\Models\UserBillingInfo;
use App\Models\UserShippingInfo;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use DB;

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
        $keyword   = $request->get('keyword');
        $byposition   = $request->get('byposition');
        $status   = $request->get('status');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $order = Order::with(['user','delivery'])->orderBy('id','desc');

        if($keyword != ''){
            $order = $order->where('order_id','like','%'.$keyword.'%');
        }

        if($byposition != ''){
            $order = $order->where('order_position',$byposition);
        }

        if($status != ''){
            $order = $order->where('status',$status);
        }
        if($noPagination != ''){
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

    public function orderDetails($id)
    {
        // $order = Order::find($id)->first();
        $details = OrderDetails::with(['product','colour','size','fabric'])->where('order_id',$id)->get();

        return response()->json($details);
    }

    public function orderCancel($id)
    {
        $order = Order::find($id);
        $order->status = 0;
        $order->update();
        return response()->json(['status' => 'success', 'message' => 'Order Has been Canceled!']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function updateOrder(Request $request)
    {
        try {
            // return $request->all();
            DB::beginTransaction();
            $order = Order::find($request->id);
            $order->order_position += 1;
            $order->update();

            $delivery = new Delivery();
            $delivery->order_id = $order->id;
            $delivery->tracking_id = $order->tracking_id;
            $delivery->shipping_date = date('Y-m-d');
            $delivery->delivered_by = $request->delivered_by;
            $delivery->position_status = deliveryPosition($order->order_position);
            $delivery->position_number = $order->order_position;
            $delivery->save();
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


    public function getOrderExcel(Request $request)
    {
        return Excel::download(new \App\Exports\OrderExport($request->keyword,$request->byposition,$request->status),'order_list.xlsx');
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
