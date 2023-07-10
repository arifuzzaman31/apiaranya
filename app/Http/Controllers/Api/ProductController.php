<?php

namespace App\Http\Controllers\Api;

use App\Http\AllStatic;
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
        $attrname   = $request->get('attrname');
        $attrid   = $request->get('attrid');
        $pricerange   = $request->get('range');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;

        $product = Product::with(['category:id,category_name,slug','subcategory','product_fabric',
        'product_size','product_colour','inventory:product_id,colour_id,size_id,stock,mrp,sku'])->where('status',AllStatic::$active);

        if($camp_id != ''){
            $product = $product->join('campaign_products','products.id','campaign_products.product_id')
                ->select('products.*')
                ->where('campaign_id',$camp_id);

            if($noPagination != ''){
                $product = $product->get();
            } else {
                $product = $product->paginate($dataQty);
            }
            return ProductResource::collection($product);
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

        if($attrname != '' && $attrid != ''){
            $product = $product->whereHas('product_'.$attrname, function ($q) use ($attrname,$attrid) {
                $q->where($attrname.'_id', $attrid);
            }); 
        }

        if($keyword != ''){
            $product = $product->where('product_name','like','%'.$keyword.'%');
            $product = $product->orWhere('design_code','like','%'.$keyword.'%');
        }

        if($pricerange != ''){
            $rang = explode('-',$pricerange);
            $product = $product->whereHas('inventory', function ($q) use ($rang) {
                $q->whereBetween('mrp', [$rang[0], $rang[1]]);
            });
        }

        if($tak_some != ''){
            $product = $product->latest()->take($tak_some);
        }
        
        if($noPagination != ''){
            
            $product = $product->latest()->get();
            
        } else {
            $product = $product->latest()->paginate($dataQty);
        }
        return ProductResource::collection($product);
    }

    public function getProductByCat(Request $request,$cat,$subcat = null)
    {
        try {
            //code...
            $noPagination = $request->get('no_paginate');
            $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
            $attrname   = $request->get('attrname');
            $attrid   = $request->get('attrid');
            $pricerange   = $request->get('range');
            $tak_some   = $request->get('take_some');
            
            $product = Product::with(['category:id,category_name,slug','subcategory','product_fabric',
            'product_size','product_colour','inventory:product_id,colour_id,size_id,stock,mrp,sku'])
                        ->where('category_id',$cat)
                        ->orderBy('id','desc');
                    if($subcat != '' && $subcat != null){
                        $product = $product->where('sub_category_id',$subcat);
                    }
            if($attrname != '' && $attrid != ''){
                $product = $product->whereHas('product_'.$attrname, function ($q) use ($attrname,$attrid) {
                    $q->where($attrname.'_id', $attrid);
                }); 
            }

            if($pricerange != ''){
                $rang = explode('-',$pricerange);
                $product = $product->whereHas('inventory', function ($q) use ($rang) {
                    $q->whereBetween('mrp', [$rang[0], $rang[1]]);
                });
            }

            if($noPagination != ''){
                if($tak_some != ''){
                    $product = $product->latest()->take($tak_some);
                }
                $product = $product->get();
            } else {
                $product = $product->paginate($dataQty);
            }
    
            return ProductResource::collection($product);
        } catch (\Throwable $th) {
            return $this->errorMessage();
        }
        
    }

    public function getProductById($id)
    {
        try {
            //code...
            $product = Product::with(['category:id,category_name,slug','subcategory','product_fabric','inventory:id,product_id,size_id,stock,cpu,mrp,sku',
                'product_size','product_colour','discount',
                'vat:id,tax_name,tax_percentage','product_vendor','product_brand','product_designer','product_embellishment',
                'product_making','product_season','product_variety','product_fit','product_artist','product_consignment',
                'product_ingredient','product_care'])->find($id);
            return new ProductResource($product);
        } catch (\Throwable $th) {
            return $this->errorMessage();
        }
    }
}
