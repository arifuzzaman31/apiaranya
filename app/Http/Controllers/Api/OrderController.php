<?php

namespace App\Http\Controllers\Api;

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
            DB::beginTransaction();

            $order_id   = Str::random(40);

            $order = new Order();
            $order->order_id    =   $order_id;
            $order->shipping_method  =  $request->shipping_method;
            $order->payment_method    =   $request->payment_method;
            $order->user_id           = 5;
          
            $order->vat_rate               = $request->vat_rate;
            $order->vat_amount             = $request->vat_total;
            $order->shipping_amount        = $request->shipping_amount ? $request->shipping_amount:0;
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
            $order->is_same_address        = $request->is_same_address;
            $order->save();

          
            
            foreach ($request->cart as $value) {
              
                $product = Product::find($value['id']);
  
                $details = new OrderDetails;

                $details->order_id            = $order->id;
                $details->category_id         = $product->category_id;
                $details->sub_category_id     = $product->sub_category_id ?$product->sub_category_id :0 ;
                $details->fabric_id           = $product->fabric_id ? $product->fabric_id : 0;
                $details->product_id          = $value['id'];
                $details->size_id             = 6;
                $details->colour_id           =  4;
                $details->user_id             = 5;
                $details->quantity            = $value['amount'];
                $details->selling_price       = $value['totalPrice'];
                $details->buying_price        = $product->cost;
                $details->total_buying_price  = $product->buying_price * $value['amount'];
                $details->total_selling_price = $value['price'] * $value['amount'];
                $details->unit_discount       = 3;
                $details->total_discount      = 16;
                $details->save();

            }

            $billing = new UserBillingInfo();
            $billing->user_id = 5;
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
                $shipping->user_id = 5;
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

            return redirect()->route('payment.ssl', $order->id);

        } catch (\Throwable $th) {
            \DB::rollback();
            return $th;
            return response()->json(['status' => 'error', 'message' => $th]);
        }
    }
}