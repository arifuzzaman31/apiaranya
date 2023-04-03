<?php

namespace App\Http\Controllers\Api;

use App\Http\AllStatic;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\UserBillingInfo;
use App\Models\UserShippingInfo;
use Auth,Str;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{

    public function order(Request $request)
    {
        try {
            //return response()->json($request->all());
            DB::beginTransaction();

            $order_id   = date('Ymd').time();
            $tax_amount = 0;
            $shipCharge = 0;
            if($request->data['deliveryMethod'] == 'outSideDhaka'){
                $shipCharge += 250;
            }
            if($request->data['deliveryMethod'] == 'insideDhaka'){
                $shipCharge += 100;
            }

            $order = new Order();
            $order->order_id    =   $order_id;
            $order->shipping_method   =  $request->shipping_method;
            $order->payment_method    =   $request->payment_method;
            $order->user_id           = $request->isGuestCheckout == false ? Auth::user()->id : 0;
            $order->vat_rate               = 7.5;
            $order->vat_amount             = $tax_amount;
            $order->payment_method         = 0;
            $order->shipping_amount        = $shipCharge;
            $order->total_item             = $request->totalAmount ? $request->totalAmount : 1;
            $order->total_price           = (float)$request->totalPrice;
            $order->coupon_discount        = $request->coupon_discount ? $request->coupon_discount : 0;
            $order->coupon                  = $request->coupon_code;
            $order->discount               = 0;
            $order->payment_status         = 0;
            $order->delivery_type          = $shipCharge == 0 ? 1 : 0;
            $order->order_position          = $request->data['paymentMethod'] != 'online' ? 1 : 0;
            $order->order_date             = date('Y-m-d');
            $order->requested_delivery_date = date('Y-m-d', strtotime("+1 day"));
            $order->status                 = 1;
            $order->is_same_address        = $request->isSameAddress == false ? 0 : 1;
            $order->save();

            foreach ($request->cart as $value) {
              
                $product = Product::find($value['id']);
  
                $details = new OrderDetails();

                $details->order_id            = $order->id;
                $details->category_id         = $product->category_id;
                $details->sub_category_id     = $product->sub_category_id ? $product->sub_category_id :0 ;
                $details->fabric_id           = 0;
                $details->product_id          = $value['id'];
                $details->size_id             = $value['size_id'];
                $details->colour_id           = $value['color_id'];
                $details->user_id             = $request->isGuestCheckout == false ? Auth::user()->id : 0;
                $details->quantity            = $value['amount'];
                $details->selling_price       = $value['price'];
                $details->buying_price        = $product->cost;
                $details->total_buying_price  = (float)($product->cost * $value['amount']);
                $details->total_selling_price = (float)$value['totalPrice'];
                $details->unit_discount       = 0;
                $details->total_discount      = 0;
                $details->save();

                $tax_amount += ($value['taxAmount']/100)*$value['totalPrice'];
            }

            DB::table('orders')->where('id',$order->id)->update([
                'vat_amount' => $tax_amount
            ]);
            

            $billing = new UserBillingInfo();
            $billing->user_id = $request->isGuestCheckout == false ? Auth::user()->id : 0;
            $billing->order_id = $order->id; //orderID
            $billing->first_name = $request->data['first_name_billing'];
            $billing->last_name = $request->data['last_name_billing'];
            $billing->country = $request->data['country_billing'];
            $billing->city = $request->data['city_billing'];
            $billing->email = $request->data['email_billing'];
            $billing->phone = $request->data['phone_billing'];
            $billing->post_code = $request->data['post_code_billing'];
            $billing->street_address = $request->data['street_address_billing'];
            $billing->save();

            if($request->isSameAddress == false)
            {
                $shipping = new UserShippingInfo();
                $shipping->user_id = $request->isGuestCheckout == false ? Auth::user()->id : 0;
                $shipping->order_id = $order->id; //orderID
                $shipping->first_name = $request->data['first_name_shipping'];
                $shipping->last_name = $request->data['last_name_shipping'];
                $shipping->country = $request->data['country_shipping'];
                $shipping->city = $request->data['city_shipping'];
                $shipping->email = $request->data['email_shipping'];
                $shipping->phone = $request->data['phone_shipping'];
                $shipping->post_code = $request->data['post_code_shipping'];
                $shipping->street_address = $request->data['street_address_shipping'];
                $shipping->save();
            }

            DB::table('payments')->insert([
                'order_id' => $order_id,
                'amount' => (($order->total_price + $order->shipping_amount + $order->vat_amount) - ($order->discount + $order->coupon_discount)),
                'payment_status' => 0,
                'created_at'    => date("Y-m-d H:i:s")
            ]);
            
            DB::table('deliveries')->insert([
                'order_id' => $order->id,
                'created_at'    => date("Y-m-d H:i:s")
            ]);
            
            \DB::commit();
            if($request->data['paymentMethod'] == 'online'){
                return response()->json(['status' => 'success', 'type' => 'online', 'message' => 'Order Created', 'payment' => $this->sslCommerz($order->id)], 200);
            } else {
                DB::table('deliveries')->where('order_id', $order->id)->update([
                    'process_date' => date('Y-m-d'),
                    'process_state' => AllStatic::$processing,
                    'process_value' => deliveryPosition(AllStatic::$processing),
                    'created_at'    => date("Y-m-d H:i:s")
                ]);
                return response()->json(['status' => 'success','type' => 'cash', 'order_id' => $order_id], 200);
            }

        } catch (\Throwable $th) {
            \DB::rollback();
            return $th;
            return response()->json(['status' => 'error', 'message' => $th]);
        }
    }
    
    public function sslCommerz($order_id)
    {
        $order = Order::with('user','user_billing_info')->find($order_id);
        $order_details = OrderDetails::with('product:id,product_name,mrp_price')->where('order_id', $order_id)->get();
        
        $post_data = array();
        if(config('app.payment_mode') == 'sandbox'){
            $storeid = "limme601b86f8e6dd4";
            $storepass = "limme601b86f8e6dd4@ssl";
        } else {
            $storeid = config('app.storeid');
            $storepass = config('app.storepassw');
        }
        $post_data['store_id'] = $storeid;
        $post_data['store_passwd'] = $storepass;
        $post_data['total_amount'] = (($order->total_price + $order->shipping_amount + $order->vat_amount) - ($order->discount + $order->coupon_discount));
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = $order_id;
        $post_data['success_url'] = route('ssl.success');
        $post_data['fail_url']     = config('app.front_url');
        $post_data['cancel_url']   = config('app.front_url');
    
        # CUSTOMER INFORMATION
        $post_data['cus_name'] = $order->user_billing_info->first_name;
        $post_data['cus_email'] = $order->user_billing_info->email;
        $post_data['cus_add1'] = $order->user_billing_info->city;
        $post_data['cus_add2'] = $order->user_billing_info->city;
        $post_data['cus_city'] = $order->user_billing_info->city;
        $post_data['cus_state'] = $order->user_billing_info->city;
        $post_data['cus_postcode'] = $order->user_billing_info->post_code;
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] = $order->user_billing_info->phone;
        $post_data['cus_fax'] = "";
    
        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Aranya";
        $post_data['shipping_method'] = "NO";
        $post_data['ship_add1 '] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_country'] = "Bangladesh";
    
        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "0";
        $post_data['value_b '] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";
    
        # EMI STATUS
        $post_data['emi_option'] = "1";
    
        # CART PARAMETERS
        $product_name = [];

        foreach ($order_details as $value) {
            $arr = [];
            $arr['product']  =  $value->product->product_name;
            $arr['amount']   =  $value->total_selling_price;

            array_push($product_name, $arr);
        }
        $product_name = json_encode($product_name);

        $post_data['cart'] = json_encode($product_name);
        $post_data['product_name'] = json_encode($product_name);
        $post_data['product_category'] = "online shop";
        $post_data['product_profile'] = "general";
        $post_data['product_amount'] = $order->total_price;
        $post_data['vat'] = $order->vat_rate;
        $post_data['discount_amount'] = ($order->discount + $order->coupon_discount);
        $post_data['convenience_fee'] = $order->shipping_amount;
    
        //$post_data['allowed_bin'] = "3,4";
        //$post_data['allowed_bin'] = "470661";
        //$post_data['allowed_bin'] = "470661,376947";
    
        // dd($post_data);
        # REQUEST SEND TO SSLCOMMERZ
        if (config('app.payment_mode') == 'sandbox') {
            $direct_api_url = "https://sandbox.sslcommerz.com/gwprocess/v4/api.php";
        } else {
            $direct_api_url = "https://securepay.sslcommerz.com/gwprocess/v4/api.php";
        }

        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $direct_api_url );
        curl_setopt($handle, CURLOPT_TIMEOUT, 30);
        curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($handle, CURLOPT_POST, 1 );
        curl_setopt($handle, CURLOPT_POSTFIELDS, $post_data);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, FALSE); # KEEP IT FALSE IF YOU RUN FROM LOCAL PC


        $content = curl_exec($handle );

        $code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

        if($code == 200 && !( curl_errno($handle))) {
            curl_close( $handle);
            $sslcommerzResponse = $content;
        } else {
            curl_close( $handle);
            echo "FAILED TO CONNECT WITH SSLCOMMERZ API";
            exit;
        }
        
        // dd($content);
        # PARSE THE JSON RESPONSE
        $sslcz = json_decode($sslcommerzResponse, true );
        // var_dump($sslcz); exit;
    
        if (isset($sslcz['GatewayPageURL']) && $sslcz['GatewayPageURL'] != "") {
            // return redirect()->to($sslcz['GatewayPageURL']);
             return json_encode(['status' => 'success', 'data' => $sslcz['GatewayPageURL'], 'logo' => $sslcz['storeLogo']]);
        } else {
            // return $sslcz;
            return json_encode(['status' => 'fail', 'data' => null, 'message' => "something went wrong!"]);
        }

    }

    public function sslCommerzSuccess(Request $request)
    {
        if ($request->status == "VALID") {
            try
            {
                DB::beginTransaction();
                $order = Order::where('id',$request->tran_id)->first();

                $order->payment_status = AllStatic::$paid;
                $order->payment_method_name = 'sslCommerz';
                $order->card_type = $request->card_type;
                $order->validation_id = $request->val_id;
                $order->transaction_id = $request->bank_tran_id;
                $order->payment_date = $request->tran_date;
                $order->payment_info = json_encode($request->all());
                $order->update();
                DB::table('payments')->where('order_id', $order->order_id)->update([
                    'payment_type' => 'sslCommerz-'.$request->card_type,
                    'transaction_id' => $request->bank_tran_id,
                    'payment_status' => AllStatic::$paid,
                    'updated_at'    => date("Y-m-d H:i:s")
                ]);

                DB::table('deliveries')->where('order_id', $order->id)->update([
                    'process_date' => date('Y-m-d'),
                    'process_state' => AllStatic::$processing,
                    'process_value' => deliveryPosition(AllStatic::$processing),
                    'updated_at'    => date("Y-m-d H:i:s")
                ]);

                if ($order->payment_status == 1) {
                    DB::commit();
                    return redirect('http://localhost:3000/payment?payment=success&orderid='.$order->order_id.'&transid='.$order->transaction_id);
                }

                DB::rollBack();
                return redirect('http://localhost:3000/payment?payment=fail');

            } catch (\Throwable $th) {
                DB::rollBack();
                return response()->json(['status' => 'error', 'message' => 'something went wrong'], 400);
            }

        }

    }

    public function sslCommerzFailed(Request $request)
    {
        $status  = 'error';
        $message = '';

        // if(!Auth::check()){
               
        //     Auth::loginUsingId($request->value_a);
        // }
        if ($request->status == 'FAILED') {

            $message = 'Payment failed for order #'.$request->tran_id.' due to ' . $request->error. '.';

        } 
        else {

            $message = 'Something went wrong and your payment failed  for order #'.$request->tran_id.'.';
        }

        return response()->json(['flug'   => 1,
            'status' => $status,
            'message' => $message,
        ]);

    }

    public function sslCommerzCancel(Request $request)
    {
        // return "Cancelled";
        // // return $request->all();
        // if(!Auth::check()){
               
        //     Auth::loginUsingId($request->value_a);
        // }
        return response()->json([
            'flug'   => 1,
            'status' => 'error',
            'message' => 'The payment has been canceled for order #'.$request->tran_id.'.',
        ]);

    }

    public function orderList(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $order = DB::table('orders')->selectRaw('id,order_id,user_id,total_price,total_item,payment_status,order_position,order_date')
                ->where('user_id',Auth::id())->orderBy('id','desc');
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
        $details = DB::table('order_details')->with(['product','colour','size','fabric'])->where('order_id',$id)->get();

        return response()->json($details);
    }

    public function invoice()
    {
        return view('partials.invoice');
    }
}