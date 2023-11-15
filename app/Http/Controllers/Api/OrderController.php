<?php

namespace App\Http\Controllers\Api;

use App\Http\AllStatic;
use App\Http\Controllers\Controller;
use App\Http\Resources\OrderResource;
use App\Mail\InvoiceMail;
use App\Models\Inventory;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Order;
use App\Models\User;
use App\Models\OrderDetails;
use App\Models\UserBillingInfo;
use App\Models\UserShippingInfo;
use Auth,Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Xenon\MultiCourier\Provider\ECourier;
use Xenon\MultiCourier\Courier;

class OrderController extends Controller
{

    public function order(Request $request)
    {
        try {
            //return response()->json($request->all()); Charge calculation is converted accr Currency
            DB::beginTransaction();
            $order_id   = str_shuffle(uniqueString().date('Ymd'));
            $order = new Order();
            $order->order_id    =   $order_id;
            $order->shipping_method   =  $request->shipping_method;
            $order->user_id           = $request->isGuestCheckout == false ? Auth::user()->id : 0;
            $order->vat_rate               = 0;
            $order->charge_vat_rate        = 0;
            $order->vat_amount             = (float)($request->totalPriceWithTaxOrg_after_discount - $request->totalPriceOrg_after_discount);
            $order->charge_vat_amount      = (float)($request->totalPriceWithTax_after_discount - $request->totalPrice_after_discount);
            $order->payment_method         = 0;
            $order->payment_via            = $request->data['paymentMethod'] == 'online' ? 1 : 0;
            $order->shipping_amount        = $request->shippingCost;
            $order->charge_shipping_amount = $request->shippingCost;
            $order->total_item             = $request->totalAmount ? $request->totalAmount : 1;
            $order->total_price            = (float)$request->totalPriceOrg_after_discount;
            $order->charge_total_price     = (float)$request->totalPrice_after_discount;
            $order->coupon_discount        = $request->coupon_discount ? $request->coupon_discount : 0;
            $order->coupon                 = $request->coupon_code;
            $order->discount               = (float)($request->totalPriceOrg - $request->totalPriceOrg_after_discount);
            $order->charge_discount        = (float)($request->totalPrice - $request->totalPrice_after_discount);
            $order->total_fragile_amount   = $request->totalFragileChargeOrg;
            $order->charge_fragile_amount  = $request->totalFragileCharge;
            $order->payment_status         = 0;
            $order->delivery_type          = $request->shippingCost == 0 ? 1 : 0;
            $order->delivery_platform      = $request->data['deliveryMethod'];
            $order->order_position         = $request->data['paymentMethod'] == 'online' ? 1 : 0;
            $order->order_date             = date('Y-m-d');
            $order->requested_delivery_date = date('Y-m-d', strtotime("+1 day"));
            $order->status                 = 1;
            $order->is_same_address        = $request->isSameAddress == false ? 0 : 1;
            $order->charged_currency       = $request->selectedCurrency;
            $order->exchange_rate          = (float)$request->currentConversionRate;
            $order->user_note              = $request->data['orderNote'];
            $order->save();

            foreach ($request->cart as $value) {

                $product = Product::find($value['id']);
                $decrese = Inventory::where(['product_id' => $value['id'],'colour_id' => $value['color_id'],'size_id' => $value['size_id']])->first();
                $details = new OrderDetails();

                $details->order_id            = $order->id;
                $details->category_id         = $product->category_id;
                $details->sub_category_id     = $product->sub_category_id ? $product->sub_category_id :0 ;
                $details->fabric_id           = 0;
                $details->product_id          = $value['id'];
                $details->size_id             = $value['size_id'] ?? 0;
                $details->colour_id           = $value['color_id'] ?? 0;
                $details->user_id             = $request->isGuestCheckout == false ? Auth::user()->id : 0;
                $details->item_sku            = $decrese->sku ?? 0;
                $details->quantity            = $value['amount'];
                $details->selling_price       = $value['priceOrg_after_discount'];
                $details->charge_selling_price = $value['price_after_discount'];
                $details->vat_rate            = $product->vat->tax_percentage;
                $details->charge_vat_rate     = $value['taxAmount'];
                $details->vat_amount          = (float)($value['vatAmountParticularProductOrg_after_discount']);
                $details->charge_vat_amount   = (float)($value['vatAmountParticularProduct_after_discount']);
                $details->total_fragile_amount = (float) $value['totalFragileChargeOrg'];
                $details->charge_fragile_amount = (float) $value['totalFragileCharge'];
                $details->buying_price        = (float)$decrese->cpu;
                $details->total_buying_price  = (float)($decrese->cpu * $value['amount']);
                $details->total_selling_price = (float)$value['totalPriceOrg_after_discount'];
                $details->total_charge_selling_price = (float)$value['totalPrice_after_discount'];
                $details->charged_currency    = $request->selectedCurrency ?? 'BDT';
                $details->exchange_rate       = (float)$request->currentConversionRate;
                $details->unit_discount       = (float)($value['priceOrg'] - $value['priceOrg_after_discount']);
                $details->charge_unit_discount  = (float)($value['price_after_discount'] - $value['price_after_discount']);
                $details->total_discount      = (float)($value['totalPriceOrg'] - $value['totalPriceOrg_after_discount']);
                $details->charge_total_discount = (float)($value['totalPrice'] - $value['totalPrice_after_discount']);
                $details->save();

                //$decrese->stock -= $value['amount'];
                //$decrese->update();
            }

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
            $billing->apartment = $request->data['apartment_address_billing'];
            $billing->save();

            if($request->isGuestCheckout == false){
                $useraddr = DB::table('address_books')->where('user_id',Auth::user()->id)->first();
                if(empty($useraddr)){
                     DB::table('address_books')->insert([
                        'user_id'       => Auth::user()->id,
                        'first_name'    => $request->data['first_name_billing'],
                        'last_name'     => $request->data['last_name_billing'],
                        'country'       => $request->data['country_billing'],
                        'city'          => $request->data['city_billing'],
                        'email'         => $request->data['email_billing'],
                        'phone'         => $request->data['phone_billing'],
                        'post_code'     => $request->data['post_code_billing'],
                        'apartment'     => $request->data['street_address_billing'],
                        'street_address' => $request->data['apartment_address_billing'],
                        'created_at' => now()
                    ]);
                }
            }

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
                $shipping->apartment = $request->data['apartment_address_shipping'];
                $shipping->save();


            DB::table('payments')->insert([
                'order_id' => $order->id,
                'amount' => (($order->total_price + $order->shipping_amount + $order->vat_amount+$order->total_fragile_amount) - ($order->coupon_discount)),
                'charge_amount' => ($order->charge_total_price + $order->charge_shipping_amount + $order->charge_vat_amount+$order->charge_fragile_amount),
                'charged_currency' => $request->selectedCurrency ?? 'BDT',
                'exchange_rate' => (float)$request->currentConversionRate,
                'payment_status' => 0,
                'created_at'    => date("Y-m-d H:i:s")
            ]);

            DB::table('deliveries')->insert([
                'order_id' => $order->id,
                'created_at'    => date("Y-m-d H:i:s")
            ]);
            $this->invoiceToMail($order->id);
            $courierData = [
                'recipient_name' => $request->data['first_name_billing'],
                'recipient_mobile' => $request->data['phone_billing'],
                'recipient_city' => $request->data['city_billing'],
                'recipient_area' => $request->data['city_billing'],
                'recipient_thana' => $request->data['city_billing'],
                'recipient_address' => $request->data['city_billing'],$request->data['country_billing'],
                'package_code' => $request->eQuerierPackagesCode,
                'product_price' => $order->total_price,
                'payment_method' => 'COD',
                'recipient_landmark' => 'DBBL ATM',
                'parcel_type' => 'BOX',
                'requested_delivery_time' => $order->requested_delivery_date,
                'delivery_hour' => 'any',
                'recipient_zip' => $request->data['post_code_billing'] ?? 'N/A',
                'pick_hub' => '18490',
                'product_id' => $order_id,
                'pick_address' => "dfgfhgfghfh",
                'comments' => 'Please handle carefully',
                'number_of_item' => $request->totalAmount,
                'actual_product_price' => $order->total_price,
                'pgwid' => '8888',
                'pgwtxn_id' => $order_id,
                'is_fragile' => $request->totalFragileCharge > 0 ? 1 : 0,
                'sending_type' => 1,
                'is_ipay' => 0
            ];

            if($request->data['deliveryMethod'] == 'E-Courier'){

                $courier = Courier::getInstance();
                $courier->setProvider(ECourier::class, config('app.payment_mode')); /* local/production */
                $courier->setConfig([
                    'API-KEY' => env('ECOURIER_API_KEY'),
                    'API-SECRET' => env('ECOURIER_API_SECRET'),
                    'USER-ID' => env('ECOURIER_USER_ID')
                ]);

                $courier->setParams($courierData);
                $resp = $courier->placeOrder();
                $result = json_decode(json_encode($resp),true);
                $datas = json_decode($result['response']);
                if ($datas !== null && isset($datas->ID)) {

                if($result['statusCode'] == 200){
                            DB::table('orders')->where('id', $order->id)->update([
                                'tracking_id' => $datas->ID,
                                'updated_at'    => date("Y-m-d H:i:s")
                            ]);
                            DB::table('deliveries')->where('order_id', $order->id)->update([
                                'tracking_id' => $datas->ID
                            ]);
                        }
                }

            }

            DB::commit();
            if($request->data['paymentMethod'] == 'online'){
                $backUri = $request->backUri ? $request->backUri : 'https://aranya.com.bd';
                return response()->json(['status' => 'success', 'type' => 'online', 'message' => 'Order Created', 'payment' => $this->sslCommerz($order->id,$backUri)], 200);
            } else {
                DB::table('deliveries')->where('order_id', $order->id)->update([
                    'process_date' => date('Y-m-d'),
                    'process_state' => AllStatic::$processing,
                    'process_value' => deliveryPosition(AllStatic::$processing),
                    'created_at'    => date("Y-m-d H:i:s")
                ]);
                return response()->json(['status' => 'success','type' => 'cash', 'order_id' => $order->id], 200);
            }

        } catch (\Throwable $th) {
            \DB::rollback();
            //return $th;
            return response()->json(['status' => 'error', 'message' => $th->getMessage()]);
        }
    }

    public function sslCommerz($order_id,$backUri)
    {
        $order = Order::with('user','user_billing_info')->find($order_id);
        $order_details = OrderDetails::with('product:id,product_name')->where('order_id', $order_id)->get();

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
        $post_data['total_amount'] = (($order->total_price + $order->shipping_amount + $order->vat_amount+$order->total_fragile_amount) - ($order->coupon_discount));
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
        $post_data['value_a'] = $backUri;
        $post_data['value_b '] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";

        # EMI STATUS
        $post_data['emi_option'] = "1";

        # CART PARAMETERS
        $product_name = [];

        foreach ($order_details as $value) {
            $inv = Inventory::where(['product_id' => $value->product_id,'size_id' => $value->size_id])->first();
            $arr = [];
            $arr['product']  =  $value->product->product_name;
            $arr['amount']   =  $inv->mrp;

            array_push($product_name, $arr);
        }
        $product_name = json_encode($product_name);

        $post_data['cart'] = json_encode($product_name);
        $post_data['product_name'] = json_encode($product_name);
        $post_data['product_category'] = "online shop";
        $post_data['product_profile'] = "general";
        $post_data['product_amount'] = $order->total_price;
        $post_data['vat'] = $order->vat_rate;
        $post_data['discount_amount'] = $order->coupon_discount;
        $post_data['convenience_fee'] = ($order->shipping_amount+$order->total_fragile_amount);

        //$post_data['allowed_bin'] = "3,4";
        //$post_data['allowed_bin'] = "470661";
        //$post_data['allowed_bin'] = "470661,376947";

        // dd($post_data);
        # REQUEST SEND TO SSLCOMMERZ
        if (config('app.payment_mode') == 'sandbox') {
            $direct_api_url = "https://sandbox.sslcommerz.com/gwprocess/v4/api.php";
        } else {
            // $direct_api_url = "https://sandbox.sslcommerz.com/gwprocess/v4/api.php";
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


        $content = curl_exec($handle);

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

                DB::table('payments')->where('order_id', $order->id)->update([
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
                    return redirect($request->value_a.'/payment?payment=success&orderid='.$order->id.'&transid='.$order->transaction_id);
                }

                DB::rollBack();
                return redirect($request->value_a.'/payment?payment=fail');

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
        DB::table('orders')->where('id',$request->tran_id)->update([
            'payment_status' => AllStatic::$failed
        ]);

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
        DB::table('orders')->where('id',$request->tran_id)->update([
            'payment_status' => AllStatic::$cancel
        ]);

        return response()->json([
            'flug'   => 1,
            'status' => 'error',
            'message' => 'The payment has been canceled for order #'.$request->tran_id.'.',
        ]);

    }

    public function orderCancel(Request $request)
    {
        $configure = DB::table('refund_configure')->first();
        $order = Order::find($request->order_id);

        if($configure->status == AllStatic::$active){
            if($order->created_at->addDays($configure->refund_within_days)->format('Y-m-d') <= date('Y-m-d')){
                return response()->json(['status' => 'error','message' => 'Cancellation Request Date Expired!']);
            } else {
                $order->status = 0;
                $order->update();
                return response()->json(['status' => 'success', 'message' => 'Order Has been Cancelled!']);
            }
        }
        return response()->json(['status' => 'error','message' => 'Cancellation Not Allowed!']);

    }

    public function orderList(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $order = Order::with('order_details.product')
                ->where('user_id',Auth::id())->orderBy('id','desc');
        if($noPagination != ''){
            $order = $order->get();
        } else {
            $order = $order->paginate($dataQty);
        }
        return OrderResource::collection($order);
    }

    public function orderDetails($id)
    {
        // $order = Order::find($id)->first();
        $details = OrderDetails::with(['product','colour','size','fabric'])->where('order_id',$id)->get();
        return response()->json($details);
    }

    public function orderItemRefundClaim(Request $request)
    {
        $configure = DB::table('refund_configure')->first();
        $order = OrderDetails::find($request->item_id);

        if($configure->status == AllStatic::$active && $order->status){
            if($order->created_at->addDays($configure->refund_within_days)->format('Y-m-d') <= date('Y-m-d')){
                return response()->json(['status' => 'error','message' => 'Refund Request Date Expired!']);
            } else {
                    $order->is_claim_refund = AllStatic::$active;
                    $order->refund_claim_date = date('Y-m-d');
                    $order->update();
                    return $this->successMessage('Refund Claim Successful!');
            }
        }

        return response()->json(['status' => 'error','message' => 'Refund Not Allowed!']);

    }

    public function invoiceToMail($order_id = '')
    {
        $orders = DB::table('order_details')
                ->join('orders', 'order_details.order_id', '=', 'orders.id')
                ->join('users', 'order_details.user_id', '=', 'users.id')
                ->select('order_details.*', 'orders.order_date', 'users.name')
                // ->groupBy('order_details.order_id')
                ->get();
        // return $orders;
        $order = Order::with('order_details.product','user_billing_info')->find($order_id);
        if($order->user_billing_info->email != ''){

            Mail::to($order->user_billing_info->email)->send(new InvoiceMail($order));
        }
        Mail::to('online@aranya.com.bd')->send(new InvoiceMail($order));
        return false;
        return view('email.order_invoice',['order_info' => $order]);
    }

    public function sendEcorier($orderData)
    {
        $courier = Courier::getInstance();
        $courier->setProvider(ECourier::class, 'local'); /* local/production */
        $courier->setConfig([
            'API-KEY' => env('ECOURIER_API_KEY'),
            'API-SECRET' => env('ECOURIER_API_SECRET'),
            'USER-ID' => env('ECOURIER_USER_ID')
        ]);

        $courier->setParams($orderData);
        $response = $courier->placeOrder();
        if($response->response_code == 200){

        }
        // \Log::info($response);
        return true;
    }
}
