<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use App\Models\Inventory;
use App\Models\Order;
use App\Models\User;
use App\Models\OrderDetails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReportController extends Controller
{
    public function stockReport(Request $request)
    {
        // return $request->from;
        $data = Inventory::with('product.category','product.subcategory','product.product_brand')
                ->paginate(10);
                // if($request->from != '' && $request->to != ''){
                //     $data = $data->whereBetween('created_at', [$request->from,$request->to]);
                // }
        return response()->json($data);
    }

    public function paymentReport(Request $request)
    {
        $data = DB::table('orders')
            ->selectRaw('IFNULL(payment_method_name, "COD") as gatewayname, sum(total_price) as paid_total')
            ->groupBy('payment_method_name')
                 ->paginate(10);
        return response()->json($data);
    }

    public function individualCustomerReport(Request $request)
    {
        $byposition   = $request->get('byposition');
        $paymentStatus   = $request->get('payment_status');
        $from   = $request->get('from');
        $to   = $request->get('to');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;

        $order = Order::with('user:id,name,phone,address,email')
            ->withCount([
                'order_details as invoice_sum' => function($query) {
                    $query->select(DB::raw('SUM(total_selling_price)'));
                },
                'order_details as refund_count' => function($query) {
                    $query->select(DB::raw('COUNT(is_refunded)'))->where('is_refunded',AllStatic::$active);
                },
                'order_details as refunded_amount' => function($query) {
                    $query->select(DB::raw('SUM(total_selling_price)'))->where('is_refunded',AllStatic::$active);
                }
            ]);

            if($byposition != ''){
                $order = $order->where('order_position',$byposition);
            }

            if($paymentStatus != ''){
                $order = $order->where('payment_status',$paymentStatus);
            }
            
            if($from != '' && $to != ''){
                $order = $order->whereBetween('order_date',[$from,$to]);
            }
            $order = $order->paginate($dataQty);
        return response()->json($order);
    }

    public function customerRefundReport(Request $request)
    {
        $from   = $request->get('from');
        $to   = $request->get('to');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;

        $order = OrderDetails::with(['user:id,name,phone,address,email','order:id,order_date,total_price,payment_via,payment_method_name'])
                ->where('is_claim_refund',AllStatic::$active)->latest();

            if($from != '' && $to != ''){
                $order = $order->whereBetween('refund_claim_date',[$from,$to]);
            }
            $order = $order->paginate($dataQty);
        return response()->json($order);
    }

    public function customerLifetimeReport(Request $request)
    {
        $from   = $request->get('from');
        $to   = $request->get('to');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;

        $user = User::withCount([
            'order_details as total_spent_amount' => function($query) {
                $query->select(DB::raw('SUM(total_selling_price)'))->where('is_refunded',AllStatic::$inactive);
            },
            'order_details as cancel_count' => function($query) {
                $query->select(DB::raw('COUNT(is_claim_refund)'))->where('is_claim_refund',AllStatic::$active);
            },
            'order_details as refund_count' => function($query) {
                $query->select(DB::raw('COUNT(is_refunded)'))->where('is_refunded',AllStatic::$active);
            },
            'order_details as refunded_amount' => function($query) {
                $query->select(DB::raw('SUM(total_selling_price)'))->where('is_refunded',AllStatic::$active);
            },
            'order_details as count_order' => function($query) {
                $query->select(DB::raw('COUNT(*)'));
            }
        ])->having('count_order', '>', 0);
        if($from != '' && $to != ''){
            $user = $user->whereBetween('created_at',[$from,$to]);
        }
            
        $user = $user->paginate($dataQty);
        return response()->json($user);
    }

    public function makePdf()
    {
        $customPaper = array(0,0,1020,1440);
        $pdf = \PDF::loadView('pages.report.pdf.invoice_report')->setPaper($customPaper, 'portrait');
        return $pdf->download('invoice-report.pdf');
       
    }
}
