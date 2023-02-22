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
        //return response()->json($request->all());
        try {
            DB::beginTransaction();

            $order_id   = Str::random(11);

            $order = new Order();
            $order->order_id    =   $order_id;
            $order->shipping_method  =  $request->shipping_method;
            $order->payment_method    =   $request->payment_method;
            $order->user_id           = Auth::user()->id;
          
            $order->vat_rate               = $request->vat_rate;
            $order->vat_amount             = $request->vat_total;
            $order->payment_method         = 0;
            $order->shipping_amount        = $request->shipping_amount ? $request->shipping_amount:100;
            $order->vat_rate               = $request->vat_rate?$request->vat_rate:0;
            $order->vat_amount             = $request->vat_amount?$request->vat_amount:0;
            $order->total_item             = $request->totalAmount ? $request->totalAmount : 1;
            $order->total_price           = $request->totalPrice;
            $order->coupon_discount        = $request->coupon_discount;
            $order->coupon                  = $request->coupon_code;
            $order->discount               = 0;
            $order->payment_status         = 0;
            $order->order_date             = date('Y-m-d');
            $order->status                 = 1;
            $order->is_same_address        = $request->is_same_address ? $request->is_same_address : 0;
            $order->save();

          
            
            foreach ($request->cart as $value) {
              
                $product = Product::find($value['id']);
  
                $details = new OrderDetails;

                $details->order_id            = $order->id;
                $details->category_id         = $product->category_id;
                $details->sub_category_id     = $product->sub_category_id ?$product->sub_category_id :0 ;
                $details->fabric_id           = $product->fabric_id ? $product->fabric_id : 0;
                $details->product_id          = $value['id'];
                $details->size_id             = $value['size_id'];
                $details->colour_id           = $value['color_id'];
                $details->user_id             = $order->user_id;
                $details->quantity            = $value['amount'];
                $details->selling_price       = $value['totalPrice'];
                $details->buying_price        = $product->cost;
                $details->total_buying_price  = $product->buying_price * $value['amount'];
                $details->total_selling_price = $value['price'] * $value['amount'];
                $details->unit_discount       = 0;
                $details->total_discount      = 0;
                $details->save();

            }

            $billing = new UserBillingInfo();
            $billing->user_id = $order->user_id;
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

            if($request->is_same_address == false)
            {
                $shipping = new UserShippingInfo();
                $shipping->user_id = $order->user_id;
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
            
            \DB::commit();

            return response()->json(['status' => 'success', 'message' => 'order created', 'payment' => $this->sslCommerz($order->id)], 200);

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
        $post_data['store_id'] = "limme601b86f8e6dd4";
        $post_data['store_passwd'] = "limme601b86f8e6dd4@ssl";
        $post_data['total_amount'] = ($order->total_price + $order->shipping_amount + $order->vat_amount) - $order->coupon_discount;
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
        $post_data['value_a'] = "ref001";
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
        $post_data['discount_amount'] = $order->vat_amount;
        $post_data['convenience_fee'] = $order->shipping_amount;
    
        //$post_data['allowed_bin'] = "3,4";
        //$post_data['allowed_bin'] = "470661";
        //$post_data['allowed_bin'] = "470661,376947";
    
        // dd($post_data);
        # REQUEST SEND TO SSLCOMMERZ
        $direct_api_url = "https://sandbox.sslcommerz.com/gwprocess/v4/api.php";
       
        $handle = curl_init();
        curl_setopt($handle, CURLOPT_URL, $direct_api_url );
        curl_setopt($handle, CURLOPT_TIMEOUT, 30);
        curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 30);
        curl_setopt($handle, CURLOPT_POST, 1 );
        curl_setopt($handle, CURLOPT_POSTFIELDS, $post_data);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, 1); # KEEP IT FALSE IF YOU RUN FROM LOCAL PC
        curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 2);
        curl_setopt($handle, CURLOPT_VERBOSE, true);
        
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
            return response()->json((['status' => 'fail', 'data' => null, 'message' => "something went wrong!"]));
        }

    }

    public function sslCommerzSuccess(Request $request)
    {
        if ($request->status == "VALID") {
            try
            {
                DB::beginTransaction();
                $order = Order::find($request->tran_id);

                $order->payment_status = AllStatic::$paid;
                $order->payment_method_name = 'sslCommerz';
                $order->card_type = $request->card_type;
                $order->validation_id = $request->val_id;
                $order->payment_date =  date('Y-m-d');
                $order->update();


                if ($order->payment_status == 1) {

                    return redirect('http://localhost:3000/success');
                }

                DB::commit();

                return redirect('http://localhost:3000/success');

            } catch (\Throwable $th) {
                // return $th;
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

        return redirect()->route('order.completed',[

            'flug'   => 1,
            'status' => $status,
            'message' => $message,
        ]);

    }

    public function sslCommerzCancel(Request $request)
    {
        return "Cancelled";
        // return $request->all();
        if(!Auth::check()){
               
            Auth::loginUsingId($request->value_a);
        }
        return redirect()->route('order.completed',[

            'flug'   => 1,
            'status' => 'error',
            'message' => 'The payment has been canceled for order #'.$request->tran_id.'.',
        ]);

    }
}