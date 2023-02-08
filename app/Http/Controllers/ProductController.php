<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductResource;
use App\Models\CampaignProduct;
use App\Models\Product;
use App\Models\ProductColour;
use App\Models\ProductFabric;
use App\Models\ProductSize;
use App\Models\Inventory;
use App\Models\Discount;
use Illuminate\Http\Request;
use DB;

class ProductController extends Controller
{
    public $fieldname = 'Product';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.product.product');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.product.create_product');
    }

    public function getProduct(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $discount   = $request->get('discount');
        $keyword   = $request->get('keyword');
        $camp_id   = $request->get('camp_id');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 2;
        $product = Product::with(['category:id,category_name','inventory:id,product_id,stock','product_size','product_colour'])
                    ->orderBy('id','desc');

        if($camp_id != ''){
            $camp_prod = CampaignProduct::where('campaign_id',$camp_id)->pluck('product_id');
            $product = $product->whereIn('id',$camp_prod);
        }

        if($discount != ''){
            $product = $product->where('is_discount',0);
        }

        if($keyword != ''){
            $product = $product->where('product_name','like','%'.$keyword.'%');
            $product = $product->orWhere('sku','like','%'.$keyword.'%');
        }
        if($noPagination != ''){
            $product = $product->get();
        } else {
            $product = $product->paginate($dataQty);
        }
        return ProductResource::collection($product);
    }

    public function getProductBySearch(Request $request)
    {
        $product = Product::orderBy('id','desc');
        if($request->keyword != ''){
            $product = $product->where('product_name','like','%'.$request->keyword.'%');
        }else{
            $product = $product->latest(20);
        }
        $product = $product->get();
        return response()->json($product);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return response()->json($request->all());
        $request->validate([
            'product_name' => 'required',
            'category' => 'required',
            'sub_category' => 'required',
            'sku' => 'required',
            'price' => 'required',
            'stock' => 'required',
            'weight' => 'required',
            'design_code' => 'required'
        ]);
        
        DB::beginTransaction();
        try {

            $product = new Product();
            $product->product_name        = $request->product_name;
            $product->category_id         = $request->category;
            $product->sub_category_id     = $request->sub_category;
            $product->description         = $request->description;
            $product->sku                 = $request->sku;
            $product->product_image       = $request->image1_1 ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvOu_xVVRCcdwutaWwCQ0Jp0zsPv4v1liyQ&usqp=CAU';
            $product->image_one           = $request->image_one;
            $product->image_two           = $request->image_two;
            $product->image_three         = $request->image_three;
            $product->image_four          = $request->image_four;
            $product->image_five          = $request->image_five;
            $product->cost                = $request->cost;
            $product->mrp_price           = $request->price;
            $product->dimension           = $request->dimention;
            $product->weight              = $request->weight;
            $product->care                = $request->care;
            $product->design_code         = $request->design_code;
            $product->country_of_origin   = $request->care;
            $product->status              = $request->status ? 1 : 0;
            $product->save();

            if($request->is_color && !empty($request->selectcolours)){
                foreach($request->selectcolours as $value)
                { 
                    $pc             = new ProductColour();
                    $pc->product_id = $product->id;
                    $pc->colour_id  = $value;
                    $pc->save();
                }
            }

            if($request->is_size && !empty($request->selectsize)){
                foreach($request->selectsize as $value)
                { 
                    $ps             = new ProductSize();
                    $ps->product_id = $product->id;
                    $ps->size_id    = $value;
                    $ps->save();
                }
            }

            if($request->is_fabric && !empty($request->selectfabrics)){
                foreach($request->selectfabrics as $value)
                { 
                    $pf             = new ProductFabric();
                    $pf->product_id = $product->id;
                    $pf->fabric_id  = $value;
                    $pf->save();
                }
            }
            
            if($request->stock){
               
                $stock              = new Inventory();
                $stock->product_id  = $product->id;
                $stock->stock       = $request->stock;
                $stock->warning_amount = $request->warning_amount ? $request->warning_amount : 10;
                $stock->warehouse   = $request->warehouse;
                $stock->save();
            
            }
            
            if($request->is_discount){
                $disc                  = new Discount();
                $disc->product_id      = $product->id;
                $disc->discount_amount = $request->discount_amount;
                $disc->discount_type   = $request->discount_type;
                $disc->max_amount      = $request->max_amount;
                $disc->status = 1;
                $disc->save();
            }
            DB::commit();
            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Added Successfully!']);
        } catch (\Throwable $th) {
            DB::rollback();
            return response()->json(['status' => 'error', 'message' => $th->getMessage()]);
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
            return $th;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return Product::with(['category:id,category_name','inventory:id,product_id,stock','product_colour','product_size'])
            ->find($product->id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        return view('pages.product.edit',['product' => $product]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
        return response()->json(['status' => 'success', 'message' => $this->fieldname.' Deleted Successfully!']);
        return response()->json($product->inventory);
        try {
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}
