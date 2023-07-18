<?php

namespace App\Http\Controllers;

use App\Models\Inventory;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function stockReport(Request $request)
    {
        $data = Inventory::with('product.category','product.subcategory','product.product_brand')
                 ->paginate(10);
        return response()->json($data);
    }
}
