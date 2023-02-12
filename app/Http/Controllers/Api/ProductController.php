<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\ProductResource;
use App\Models\CampaignProduct;
use App\Models\Product;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $byProduct = $request->get('by_product');
        $discount   = $request->get('discount');
        $keyword   = $request->get('keyword');
        $tak_some   = $request->get('take_some');
        $q_category   = $request->get('category');
        $q_sub_category   = $request->get('sub_category');
        $camp_id   = $request->get('camp_id');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $product = Product::with(['category:id,category_name','inventory:id,product_id,stock','product_size','product_colour'])
                    ->orderBy('id','desc');

        if($camp_id != ''){
            $camp_prod = CampaignProduct::where('campaign_id',$camp_id)->pluck('product_id');
            $product = $product->whereIn('id',$camp_prod);
        }

        if($q_category != ''){
            if($q_sub_category != ''){
                $product =  $product->where(['category_id' => $q_category, 'sub_category_id' => $q_sub_category]);
            }else{
                $product =  $product->where('category_id',$q_category);
            }
        }

        if($discount != ''){
            $product = $product->where('is_discount',0);
        }

        if($keyword != ''){
            $product = $product->where('product_name','like','%'.$keyword.'%');
            $product = $product->orWhere('sku','like','%'.$keyword.'%');
        }

        if($tak_some != ''){
            $product = $product->latest()->take($tak_some);
        }
        
        if($noPagination != ''){
            if($byProduct != ''){
                $product = Product::where('id',$byProduct)->with(['category:id,category_name','inventory:id,product_id,stock','product_size','product_colour'])->first();
                return response()->json($product);
            } else {

                $product = $product->get();
            }
        } else {
            $product = $product->paginate($dataQty);
        }
        return ProductResource::collection($product);
    }

    public function getProductByCat(Request $request,$cat,$subcat = null)
    {
        $noPagination = $request->get('no_paginate');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $product = Product::with(['category:id,category_name','inventory:id,product_id,stock','product_size','product_colour'])
                    ->where('category_id',$cat)
                    ->orderBy('id','desc');
                if($subcat != '' && $subcat != null){
                    $product = $product->where('sub_category_id',$subcat);
                }
        if($noPagination != ''){
            $product = $product->get();
        } else {
            $product = $product->paginate($dataQty);
        }

        return ProductResource::collection($product);
        
    }
}
