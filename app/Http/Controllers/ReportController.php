<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use App\Models\Order;
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
}
