<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use App\Http\Resources\ProductResource;
use App\Models\CampaignProduct;
use App\Models\Product;
use App\Models\ProductColour;
use App\Models\ProductFabric;
use App\Models\ProductSize;
use App\Models\Inventory;
use App\Models\Discount;
use Illuminate\Http\Request;
use DB,Str;

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
        $product = Product::with(['category:id,category_name','subcategory','inventory:id,product_id,stock','product_size','product_colour','discount'])
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
            $product = $product->latest()->take(20);
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
        
        $request->validate([
            'product_name' => 'required',
            'category' => 'required',
            'sku' => 'required',
            'stock' => 'required_if:color_size,false',
            'price' => 'required',
            'weight' => 'required',
            'design_code' => 'required'
        ]);
        
        DB::beginTransaction();
        try {

            $product = new Product();
            $product->product_name        = $request->product_name;
            $product->slug                = Str::slug($request->product_name);
            $product->category_id         = $request->category;
            $product->sku         = $request->sku;
            $product->sub_category_id     = $request->sub_category;
            $product->description         = $request->description;
            $product->vandor                 = $request->vandor;
            $product->brand                 = $request->brand;
            $product->designer                 = $request->designer;
            $product->embellishment                 = $request->embellishment;
            $product->making                 = $request->making;
            $product->lead_time                 = $request->lead_time;
            $product->season                 = $request->season;
            $product->variety                 = $request->variety;
            $product->fit                 = $request->fit;
            $product->artist_name                 = $request->artist_name;
            $product->ingredients                 = $request->ingredients;
            $product->consignment                 = $request->consignment;
            $product->product_image       = $request->product_image_one;
            $product->image_one           = $request->product_image_one;
            $product->image_two           = $request->product_image_two;
            $product->image_three         = $request->product_image_three;
            $product->image_four  = $request->product_image_four;
            $product->image_five          = $request->image_five;
            $product->cost                = $request->cost;
            $product->mrp_price           = $request->price;
            $product->dimension           = $request->dimention;
            $product->weight              = $request->weight;
            $product->care                = $request->care;
            $product->design_code         = $request->design_code;
            $product->country_of_origin   = $request->care;
            $product->status              =  AllStatic::$active;
            $product->save();

            $colorIds = array_column($request->attrqty, 'colour_id');
            $sizeIds = array_column($request->attrqty, 'size_id');
           
            if($request->is_color && !myFilter($colorIds)){

                $product->product_colour()->attach($colorIds);
            }
            
            if($request->is_size && !myFilter($sizeIds)){
               
                $product->product_size()->attach($sizeIds);
            }

            if($request->is_fabric && $request->selectfabrics){

                    $product->product_fabric()->attach($request->selectfabrics);
                
            }
            
            if($request->color_size && $request->attrqty && !empty($request->attrqty)){

                // $product->inventory()->attach($product->id,['colour_id' => $colorIds, 'size_id' => $sizeIds]);
                foreach($request->attrqty as $value){
                    if($value['qty'] != ''){
                        $stock              = new Inventory();
                        $stock->product_id  = $product->id;
                        $stock->colour_id  = $value['colour_id'];
                        $stock->size_id  = $value['size_id'];
                        $stock->stock       = $value['qty'];
                        $stock->warning_amount = $request->warning_amount ? $request->warning_amount : 10;
                        $stock->warehouse   = $request->warehouse;
                        $stock->save();
                    }
                    // return $value['colour_id'];
                }
            
            } else {
                $stock  = new Inventory();
                $stock->product_id  = $product->id;
                $stock->stock       = $request->stock;
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
            return response()->json($th->getMessage());
            return response()->json(['status' => 'error', 'message' => $th]);
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
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
        return Product::with(['category:id,category_name','subcategory','inventory:id,product_id,stock','product_colour','product_size','discount'])
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
        $products = Product::with(['category:id,category_name','subcategory','inventory:id,product_id,stock','product_colour','product_size','product_fabric','discount'])
        ->find($product->id);
        return view('pages.product.edit',['product' => $products]);
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
