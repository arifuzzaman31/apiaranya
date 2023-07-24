<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use App\Models\Order;
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

        return Order::with('user:id,name,phone,address')
            ->withCount([
                'order_details as invoice_sum' => function($query) {
                    $query->select(DB::raw('SUM(total_selling_price)'));
                }
            ])
                ->get();
    }

    public function makePdf()
    {
        $customPaper = array(0,0,1020,1440);
        $pdf = \PDF::loadView('pages.report.pdf.invoice_report')->setPaper($customPaper, 'portrait');
        return $pdf->download('invoice-report.pdf');
       
    }
}
