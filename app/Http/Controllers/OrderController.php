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
use Xenon\MultiCourier\Provider\ECourier;
use Xenon\MultiCourier\Courier;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use DateTime;
use DateTimeZone;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pickup = DB::table('pickuphubs')->where('status',1)->get();
        return view('pages.order.order',['pickups' => $pickup]);
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
                ->orWhere('order_id','like','%'.$keyword.'%')
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
            //    return view('invoice',['order_info' => $orderdata]);
                $pdf = \PDF::loadView('invoice',['order_info' => $orderdata]);
                return $pdf->download('invoice-'.time().'-'.$orderdata->id.'.pdf');
            }
            $order = Order::with('user','delivery','user_shipping_info','user_billing_info')->find($id);
            $details = OrderDetails::with(['product','colour','size','fabric'])->where('order_id',$id)->get();
            $pickup = DB::table('pickuphubs')->where('status',1)->get();
            return view('pages.order.order_details',['details' => $details,'order' => $order,'pickups' => $pickup]);
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
                if($request->order_position == AllStatic::$pending){
                    $delivery->process_date = NULL;
                    $delivery->process_state = NULL;
                    $delivery->process_value = NULL;
                    $delivery->on_delivery_date = NULL;
                    $delivery->on_delivery_state = NULL;
                    $delivery->on_delivery_value = NULL;
                    $delivery->delivery_date = NULL;
                    $delivery->delivery_state = NULL;
                    $delivery->delivery_value = NULL;
                }
                if($request->order_position == AllStatic::$processing){
                    $delivery->process_date = date('Y-m-d');
                    $delivery->process_state = AllStatic::$processing;
                    $delivery->process_value = deliveryPosition(AllStatic::$processing);
                    $delivery->on_delivery_date = NULL;
                    $delivery->on_delivery_state = NULL;
                    $delivery->on_delivery_value = NULL;
                    $delivery->delivery_date = NULL;
                    $delivery->delivery_state = NULL;
                    $delivery->delivery_value = NULL;

                }

                if($request->order_position == AllStatic::$on_delivery){
                    $delivery->on_delivery_date = date('Y-m-d');
                    $delivery->on_delivery_state = AllStatic::$on_delivery;
                    $delivery->on_delivery_value = deliveryPosition(AllStatic::$on_delivery);
                    $delivery->delivery_date = NULL;
                    $delivery->delivery_state = NULL;
                    $delivery->delivery_value = NULL;
                    if(empty($delivery->tracking_id)){
                        if($order->delivery_platform == 'E-Courier'){
                              // $this->sendEcorier($order,$request->hub_name);
                               $this->resellerEcorier($order,$request->hub_name);
                        }
                        if($order->delivery_platform == 'DHL'){
                               $this->sendToDhl($order,$request->hub_name);
                        }
                    }
                }

                if($request->order_position == AllStatic::$onhold){
                    $delivery->on_hold_date = date('Y-m-d');
                    $delivery->on_hold_state = AllStatic::$delivered;
                    $delivery->on_hold_value = deliveryPosition(AllStatic::$onhold);
                }
                if($request->order_position == AllStatic::$pr_cancel){
                    $delivery->cancel_date = date('Y-m-d');
                    $delivery->cancel_state = AllStatic::$delivered;
                    $delivery->cancel_value = deliveryPosition(AllStatic::$pr_cancel);
                }
                if($request->order_position == AllStatic::$delivered){
                    $delivery->delivery_date = date('Y-m-d');
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

    public function sendEcorier($order,$hubInfo)
    {
        try {
            $courier = Courier::getInstance();
            $courier->setProvider(ECourier::class, config('app.ecorier_mode')); /* local/production */
            $courier->setConfig([
                'API-KEY' => env('ECOURIER_API_KEY'),
                'API-SECRET' => env('ECOURIER_API_SECRET'),
                'USER-ID' => env('ECOURIER_USER_ID')
            ]);
            $ecorier = json_decode($order->courier_details);
            $courierData = [
                'recipient_name' => $ecorier->recipient_name,
                'recipient_mobile' => $ecorier->recipient_mobile,
                'recipient_city' => $ecorier->recipient_city,
                'recipient_area' => $ecorier->recipient_area,
                'recipient_thana' => $ecorier->recipient_thana,
                'recipient_address' => $ecorier->recipient_address,
                'package_code' => $ecorier->package_code,
                'product_price' => ($order->total_price + $order->shipping_amount + $order->vat_amount),
                'payment_method' => 'COD',
                'recipient_landmark' => 'DBBL ATM',
                'parcel_type' => 'BOX',
                'requested_delivery_time' => $order->requested_delivery_date,
                'delivery_hour' => 'any',
                'recipient_zip' => $ecorier->recipient_zip,
                'pick_hub' => $hubInfo['hub_code'] ?? '18490',
                'product_id' => $order->order_id,
                'pick_address' => $hubInfo['hub_address']?? "Banani",
                'comments' => $order->user_note ?? 'Please handle carefully',
                'number_of_item' => $order->total_item,
                'actual_product_price' => ($order->total_price + $order->shipping_amount + $order->vat_amount),
                'pgwid' => '8888',
                'pgwtxn_id' => $order->order_id,
                'is_fragile' => $order->total_fragile_amount > 0 ? 1 : 0,
                'sending_type' => 1,
                'is_ipay' => 0
            ];

            $courier->setParams($courierData);
            $resp = $courier->placeOrder();
            $result = json_decode(json_encode($resp),true);
            $datas = json_decode($result['response']);
            if ($datas !== null && isset($datas->ID)) {

                    if($result['statusCode'] == 200){
                        DB::table('orders')->where('id', $order->id)->update([
                            'tracking_id' => $datas->ID,
                            'shippment_info' => $result['response'],
                            'updated_at'    => date("Y-m-d H:i:s")
                        ]);
                        DB::table('deliveries')->where('order_id', $order->id)->update([
                            'tracking_id' => $datas->ID
                        ]);
                    }
            }
            return false;
        } catch (\Throwable $th) {
            return false;
            // return $th;
        }

    }

    public function resellerEcorier($order,$hubInfo)
    {
        try {
            $ecorier = json_decode($order->courier_details);
            $courierData = [
                'product_id' => $order->order_id,
                'ep_name' => 'Aranya Craft Ltd',
                'pick_contact_person' => $hubInfo['contact_person'],
                'pick_division' => $hubInfo['pick_division'],
                'pick_district' => $hubInfo['pick_district'],
                'pick_thana' => $hubInfo['pick_thana'],
                'pick_hub' => $hubInfo['hub_code'] ?? '18490',
                'pick_union' => $hubInfo['pick_union'],
                'pick_address' => $hubInfo['hub_address'],
                'pick_mobile' => $hubInfo['pick_mobile'],
                'recipient_name' => $ecorier->recipient_name,
                'recipient_mobile' => $ecorier->recipient_mobile,
                'recipient_division' => $ecorier->recipient_division,
                'recipient_district' => $ecorier->recipient_district,
                'recipient_city' => $ecorier->recipient_city,
                'recipient_area' => $ecorier->recipient_area,
                'recipient_thana' => $ecorier->recipient_thana,
                'recipient_union' => $ecorier->recipient_zip,
                'package_code' => $ecorier->package_code,
                'recipient_address' => $ecorier->recipient_address,
                'parcel_detail' => '',
                'number_of_item' => $order->total_item,
                'product_price' => ($order->total_price + $order->shipping_amount + $order->vat_amount),
                'payment_method' => 'COD',
                'ep_id' => '233232212',
                'actual_product_price' => ($order->total_price + $order->shipping_amount + $order->vat_amount),
                'pgwid' => 8888,
                'pgwtxn_id' =>'asdasdsad',
                'parcel_type' => 'BOX',
                'is_fragile' => $order->total_fragile_amount > 0 ? 1 : 0,
                'sending_type' => 1,
                'is_ipay' => 0

            ];
            // return $courierData;
            if(config('app.ecorier_mode') == 'production'){
                $api_url = 'https://backoffice.ecourier.com.bd/api/order-place-reseller';

            }else {
                $api_url = 'https://staging.ecourier.com.bd/api/order-place-reseller';
            }
            $headers = [
                    'Content-Type: application/json',
                    'API-KEY: frz3', // Replace with env('ECOURIER_API_KEY')
                    'API-SECRET: 4vqsZ', // Replace with env('ECOURIER_API_SECRET')
                    'USER-ID: H7546' // Replace with env('ECOURIER_USER_ID')
                ];
                $handle = curl_init();
                curl_setopt($handle, CURLOPT_URL, $api_url);
                curl_setopt($handle, CURLOPT_TIMEOUT, 30);
                curl_setopt($handle, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 30);
                curl_setopt($handle, CURLOPT_POST, true);
                curl_setopt($handle, CURLOPT_POSTFIELDS, json_encode($courierData));
                curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, true); // Set to false if testing on local PC
                curl_setopt($handle, CURLOPT_FOLLOWLOCATION, true); // Follow redirects

            $content = curl_exec($handle);
            $code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

            if($code == 200) {
                $corier_order = json_decode($content,true );
                curl_close($handle);
                DB::table('orders')->where('id', $corier_order->id)->update([
                    'tracking_id' => $corier_order->ID,
                    'updated_at'    => date("Y-m-d H:i:s")
                ]);
                DB::table('deliveries')->where('order_id', $order->id)->update([
                    'tracking_id' => $corier_order->ID
                ]);
            } else {
                curl_close($handle);
                echo "FAILED TO CONNECT WITH RESELLER API";
                exit;
            }

            return true;
        } catch (\Throwable $th) {
            return false;
            // return $th;
        }

    }

    public function sendToDhl($order,$hubInfo)
    {
        $dateTime = new DateTime(date('Y-m-d H:i:s'), new DateTimeZone('GMT'));
        $dateTime->modify('+8 days');
        $targetTimezone = new DateTimeZone('GMT+1');
        $dateTime->setTimezone($targetTimezone);
        $plannedShippingDateAndTime = $dateTime->format('Y-m-d\TH:i:s \G\M\T+01:00'); //"2024-06-02T17:10:09 GMT+01:00";
        $courier = json_decode($order->courier_details);
        $requestBody = [
            "plannedShippingDateAndTime" => $plannedShippingDateAndTime,
            "pickup" => [
                "isRequested" => false,
                "location" => "office",
                "specialInstructions" => [
                    [
                        "value" => "No pickup required.",
                        "typeCode" => "INS"
                    ]
                ]
            ],
            "productCode" => "P",
            "localProductCode" => "P",
            "customerDetails" => [
                "shipperDetails" => [
                    "postalAddress" => [
                        "postalCode" => $hubInfo['pick_union'],
                        "cityName" => $hubInfo['pick_division'],
                        "countryCode" => "BD",
                        "addressLine1" => $hubInfo['hub_address'],
                        "countryName" => "Bangladesh"
                    ],
                    "contactInformation" => [
                        "email" => "online@aranya.com.bd",
                        "phone" => "+8801764414949",
                        "companyName" => "ARANYA CRAFTS LTD",
                        "fullName" => "Md Al-Amin"
                    ]
                ],
                "receiverDetails" => [
                    "postalAddress" => [
                        "postalCode" => "$courier->postalCode",
                        "cityName" => "$courier->cityName",
                        "countryCode" => "$courier->countryCode",
                        "addressLine1" => Str::limit($courier->addressLine1, 44),
                        "countryName" => "$courier->countryName"
                    ],
                    "contactInformation" => [
                        "email" => "$courier->email",
                        "phone" => "$courier->phone",
                        "companyName" => "Real State Ltd",
                        "fullName" => "$courier->fullName"
                    ]
                ]
            ],
            "accounts" => [
                [
                    "typeCode" => "shipper",
                    "number" => "525040187"
                ]
            ],
            "content" => [
                "isCustomsDeclarable" => true,
                "description" => "Clothing goods",
                "unitOfMeasurement" => "metric",
                "declaredValue" => ceil($order->total_price + $order->shipping_amount + $order->vat_amount),
                "declaredValueCurrency" => "USD",
                "incoterm" => "DAP",
                "exportDeclaration" => [
                    "lineItems" => [
                        [
                            "number" => 1,
                            "description" => "Clothing",
                            "quantity" => [
                                "value" => $courier->quantity,
                                "unitOfMeasurement" => "PCS"
                            ],
                            "weight" => [
                                "grossValue" => $courier->totalOrderWeight,
                                "netValue" => $courier->totalOrderWeight
                            ],
                            "manufacturerCountry" => "BD",
                            "price" => ceil($order->total_price + $order->shipping_amount + $order->vat_amount),
                            "commodityCodes" => [
                                [
                                    "typeCode" => "outbound",
                                    "value" => "84713000"
                                ]
                            ]
                        ]
                    ],
                    "invoice" => [
                        "number" => $order->order_id,
                        "date" =>  date('Y-m-d') //"2024-06-01"
                    ]
                ],
                "packages" => [
                    [
                        "weight" => $courier->totalOrderWeight,
                        "dimensions" => [
                            "length" => 20,
                            "width" => 15,
                            "height" => 10
                        ]
                    ]
                ]
            ],
            "valueAddedServices" => [
                [
                    "serviceCode" => "II",
                    "value" => round($courier->shippingCost),
                    "currency" => "$courier->currency"
                ]
            ]
        ];

        $jsonPayload = json_encode($requestBody);
       // return $jsonPayload;

        $curl = curl_init();
        $messageReference = substr(md5(uniqid()), 0, 36);
        $header = [
            "Authorization: Basic YXBONmxVN21OMmlYOXM6U145elEhM2FGXjBtSUAzdg==",
            "Message-Reference: $messageReference",
            "Message-Reference-Date: " . gmdate('D, d M Y H:i:s \G\M\T'),
            "Plugin-Name: MyShippingPlugin",
            "Plugin-Version: 1.0",
            "Shipping-System-Platform-Name: MyShippingSystem",
            "Shipping-System-Platform-Version: 2.5",
            "Webstore-Platform-Name: MyWebstore",
            "Webstore-Platform-Version: 3.0",
            "content-type: application/json"
        ];
        curl_setopt_array($curl, [
            CURLOPT_URL => "https://express.api.dhl.com/mydhlapi/shipments",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => $jsonPayload,
            CURLOPT_HTTPHEADER => $header
        ]);

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            // Decode JSON response
            $responseDecoded = json_decode($response, true);

            // Check if there is any response error
            if (isset($responseDecoded['error'])) {
                echo "Error: " . $responseDecoded['error']['message'];
            } else {
                // Handle success
                DB::table('orders')->where('id', $order->id)->update([
                    'tracking_id' => $responseDecoded['shipmentTrackingNumber'],
                    'shippment_info' => $response,
                    'updated_at'    => date("Y-m-d H:i:s")
                ]);
                DB::table('deliveries')->where('order_id', $order->id)->update([
                    'tracking_id' => $responseDecoded['shipmentTrackingNumber']
                ]);
                return true;
                // echo "<pre>";
                // print_r($responseDecoded);
                // echo "Shipment created successfully, tracking number: " . $responseDecoded['shipmentTrackingNumber'];
            }
        }
    }

    public function sendToDhlMenual($order_id)
    {
        $dateTime = new DateTime(date('Y-m-d H:i:s'), new DateTimeZone('GMT'));
        $dateTime->modify('+8 days');
        $targetTimezone = new DateTimeZone('GMT+1');
        $dateTime->setTimezone($targetTimezone);
        $plannedShippingDateAndTime = $dateTime->format('Y-m-d\TH:i:s \G\M\T+01:00'); //"2024-06-02T17:10:09 GMT+01:00";
	    $order = Order::find($order_id);
        $courier = json_decode($order->courier_details);
        $requestBody = [
            "plannedShippingDateAndTime" => $plannedShippingDateAndTime,
            "pickup" => [
                "isRequested" => false,
                "location" => "office",
                "specialInstructions" => [
                    [
                        "value" => "No pickup required.",
                        "typeCode" => "INS"
                    ]
                ]
            ],
            "productCode" => "P",
            "localProductCode" => "P",
            "customerDetails" => [
                "shipperDetails" => [
                    "postalAddress" => [
                        "postalCode" => '1213',
                        "cityName" => 'Dhaka',
                        "countryCode" => "BD",
                        "addressLine1" => 'Block K, House no: 28',
                        "countryName" => "Bangladesh"
                    ],
                    "contactInformation" => [
                        "email" => "online@aranya.com.bd",
                        "phone" => "+8801764414949",
                        "companyName" => "ARANYA CRAFTS LTD",
                        "fullName" => "Md Al-Amin"
                    ]
                ],
                "receiverDetails" => [
                    "postalAddress" => [
                        "postalCode" => "$courier->postalCode",
                        "cityName" => "$courier->cityName",
                        "countryCode" => "$courier->countryCode",
                        "addressLine1" => "$courier->addressLine1",
                        "countryName" => "$courier->countryName"
                    ],
                    "contactInformation" => [
                        "email" => "$courier->email",
                        "phone" => "$courier->phone",
                        "companyName" => "Real State Ltd",
                        "fullName" => "$courier->fullName"
                    ]
                ]
            ],
            "accounts" => [
                [
                    "typeCode" => "shipper",
                    "number" => "525040187"
                ]
            ],
            "content" => [
                "isCustomsDeclarable" => true,
                "description" => "Clothing goods",
                "unitOfMeasurement" => "metric",
                "declaredValue" => ceil($order->total_price + $order->shipping_amount + $order->vat_amount),
                "declaredValueCurrency" => "USD",
                "incoterm" => "DAP",
                "exportDeclaration" => [
                    "lineItems" => [
                        [
                            "number" => 1,
                            "description" => "Clothing",
                            "quantity" => [
                                "value" => $courier->quantity,
                                "unitOfMeasurement" => "PCS"
                            ],
                            "weight" => [
                                "grossValue" => $courier->totalOrderWeight,
                                "netValue" => $courier->totalOrderWeight
                            ],
                            "manufacturerCountry" => "BD",
                            "price" => ceil($order->total_price + $order->shipping_amount + $order->vat_amount),
                            "commodityCodes" => [
                                [
                                    "typeCode" => "outbound",
                                    "value" => "84713000"
                                ]
                            ]
                        ]
                    ],
                    "invoice" => [
                        "number" => $order->order_id,
                        "date" =>  date('Y-m-d') //"2024-06-01"
                    ]
                ],
                "packages" => [
                    [
                        "weight" => $courier->totalOrderWeight,
                        "dimensions" => [
                            "length" => 60,
                            "width" => 30,
                            "height" => 15
                        ]
                    ]
                ]
            ],
            "valueAddedServices" => [
                [
                    "serviceCode" => "II",
                    "value" => round($courier->shippingCost),
                    "currency" => "$courier->currency"
                ]
            ]
        ];

        $jsonPayload = json_encode($requestBody);

        $curl = curl_init();
        $messageReference = substr(md5(uniqid()), 0, 36);
        $header = [
            "Authorization: Basic YXBONmxVN21OMmlYOXM6U145elEhM2FGXjBtSUAzdg==",
            "Message-Reference: $messageReference",
            "Message-Reference-Date: " . gmdate('D, d M Y H:i:s \G\M\T'),
            "Plugin-Name: MyShippingPlugin",
            "Plugin-Version: 1.0",
            "Shipping-System-Platform-Name: MyShippingSystem",
            "Shipping-System-Platform-Version: 2.5",
            "Webstore-Platform-Name: MyWebstore",
            "Webstore-Platform-Version: 3.0",
            "content-type: application/json"
        ];
        curl_setopt_array($curl, [
            CURLOPT_URL => "https://express.api.dhl.com/mydhlapi/shipments",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => $jsonPayload,
            CURLOPT_HTTPHEADER => $header
        ]);

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            echo "cURL Error #:" . $err;
        } else {
            // Decode JSON response
            $responseDecoded = json_decode($response, true);
            // Check if there is any response error
            if (isset($responseDecoded['error'])) {
                echo "Error: " . $responseDecoded['error']['message'];
            } else {

                echo "<pre>";
                print_r($responseDecoded);
                // echo "Shipment created successfully, tracking number: " . $responseDecoded['shipmentTrackingNumber'];
            }
        }
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
