<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $takeen = $request->get('take');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 2;
        $product = Product::with(['category:id,category_name','inventory:id,product_id,stock'])->orderBy('id','desc');
        if($noPagination != ''){
            if($takeen){
                $product = $product->take($takeen);
            }
            $product = $product->get();
        } else {
            $product = $product->paginate($dataQty);
        }
        return response()->json($product);
    }
}
