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

    public function orderShipment($id)
    {
        try {
            return Order::select('id','order_id','order_position','tracking_id')->find($id);
        } catch (\Throwable $th) {
            return $this->errorMessage();
            //throw $th;
        }
    }


    public function orderRefund($id)
    {
        try {
            $order = Order::find($id);
            $bank_tran_id=urlencode($order->transaction_id);
            $refund_amount=urlencode((($order->total_price + $order->shipping_amount + $order->vat_amount) - ($order->discount + $order->coupon_discount)));
            $refund_remarks=urlencode('Out of Stock');
            $store_id=urlencode(config('app.storeid'));
            $store_passwd=urlencode(config('app.storepassw'));

            $requested_url = ("https://sandbox.sslcommerz.com/validator/api/merchantTransIDvalidationAPI.php?refund_amount=$refund_amount&refund_remarks=$refund_remarks&bank_tran_id=$bank_tran_id&store_id=$store_id&store_passwd=$store_passwd&v=1&format=json");

            $handle = curl_init();
            curl_setopt($handle, CURLOPT_URL, $requested_url);
            curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, false); # IF YOU RUN FROM LOCAL PC
            curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, false); # IF YOU RUN FROM LOCAL PC

            $result = curl_exec($handle);

            $code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

            if($code == 200 && !( curl_errno($handle)))
            {

                # TO CONVERT AS ARRAY
                # $result = json_decode($result, true);
                # $status = $result['status'];

                # TO CONVERT AS OBJECT
                $result = json_decode($result);

                # TRANSACTION INFO
                $status = $result->status;
                $bank_tran_id = $result->bank_tran_id;
                $trans_id = $result->trans_id;
                $refund_ref_id = $result->refund_ref_id;
                $errorReason = $result->errorReason;

                # API AUTHENTICATION
                $APIConnect = $result->APIConnect;

                DB::table('payments')->where('order_id', $order->id)->update([
                    'is_refunded' => AllStatic::$active,
                    'refund_date' => date("Y-m-d"),
                    'refund_info' => json_encode($result),
                    'updated_at'    => date("Y-m-d H:i:s")
                ]);
             
                $order->is_refunded = AllStatic::$active;
                $order->refund_date = date("Y-m-d");
                $order->update();
           
                
                return response()->json(['status' => $status,'message' => 'Refund Successfully Done']);
            } else {
                return $this->errorMessage();
            }
            

        } catch (\Throwable $th) {
            // return $th;
            return $this->errorMessage();
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
            $order->tracking_id = $request->tracking_id;
            $order->update();

            $delivery = Delivery::where('order_id',$request->order_id)->first();
            if(!empty($delivery)){
                if($request->order_position == AllStatic::$processing){
                    $delivery->process_date = $request->date;
                    $delivery->process_state = AllStatic::$processing;
                    $delivery->process_value = deliveryPosition(AllStatic::$processing);
                }

                if($request->order_position == AllStatic::$on_delivery){
                    $delivery->on_delivery_date = $request->date;
                    $delivery->on_delivery_state = AllStatic::$on_delivery;
                    $delivery->on_delivery_value = deliveryPosition(AllStatic::$on_delivery);
                }

                if($request->order_position == AllStatic::$delivered){
                    $delivery->delivery_date = $request->date;
                    $delivery->delivery_state = AllStatic::$delivered;
                    $delivery->delivery_value = deliveryPosition(AllStatic::$delivered);
                }
                $delivery->tracking_id = $request->tracking_id;
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


    public function getOrderExcel(Request $request)
    {
        return Excel::download(new OrderExport($request->keyword,$request->byposition,$request->status),'order_list.xlsx');
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
