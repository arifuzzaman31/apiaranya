<?php

namespace App\Http\Controllers\Api;

use App\Http\AllStatic;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Product;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{
    public function homeImageData()
    {
        $data = Page::where('status',AllStatic::$active)->get();
        $newarr = [];
        $names = $data->map(function($item) use($newarr){
            if($item->product_id){
                $prod = Product::with('inventory.discount')->whereIn('id',json_decode($item->product_id))->get();
                $item['product'] = $prod;
            } else {
                $item['product'] = [];
            }
            return $newarr[] = $item;
         });
        return response()->json($names);
    }

    public function getInfo($slug = '')
    {
        $data = DB::table('informations')->where('status',AllStatic::$active)->orderBy('id');
            if($slug != ''){
                $data = $data->where('slug',$slug)->first();
            } else {
                $data = $data->get();
            }

        return response()->json($data);
    }
}
