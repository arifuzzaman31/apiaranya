<?php

namespace App\Exports;

use App\Models\Product;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;

class AddProduct implements FromView
{
   /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        $product = Product::with(['product_brand','inventory'])->get();

        return view('pages.product.excel.product',['products' => $product]);
    }
}
