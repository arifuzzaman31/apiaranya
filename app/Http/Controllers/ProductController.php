<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use App\Http\Resources\ProductResource;
use App\Imports\ProductImport;
use App\Models\CampaignProduct;
use App\Models\Product;
use App\Models\ProductColour;
use App\Models\ProductFabric;
use App\Models\ProductSize;
use App\Models\Inventory;
use App\Models\Discount;
use App\Models\CategoryFabric;
use App\Models\ProductTag;
use Illuminate\Http\Request;
use App\Traits\ProductTrait;
use DB,Str,Excel;

class ProductController extends Controller
{
    use ProductTrait;
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
        $attrs = [
            'vendor' => $this->getVendor(),
            'artist' => $this->getArtist(),
            'brand' => $this->getBrand(),
            'care' => $this->getCare(),
            'consignment' => $this->getConsignment(),
            'designer' => $this->getDesigner(),
            'embellish' => $this->getEmbellishment(),
            'fabric' => $this->getFabric(),
            'fit' => $this->getFit(),
            'ingredient' => $this->getIngredient(),
            'making' => $this->getMaking(),
            'season' => $this->getSeason(),
            'size' => $this->getSize(),
            'colour' => $this->getColour(),
            'variety' => $this->getVariety(),
            'tax' => $this->getTax()
        ];
        return view('pages.product.create_product',$attrs);
    }

    public function getProduct(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $discount   = $request->get('discount');
        $keyword   = $request->get('keyword');
        $category   = $request->get('category');
        $subcategory   = $request->get('subcategory');
        $camp_id   = $request->get('camp_id');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $product = Product::with(['vat','category:id,category_name','subcategory','inventory:id,product_id,stock,sku','product_size','product_colour','discount']);

        if($camp_id != ''){
            $product = $product->join('campaign_products','products.id','campaign_products.product_id')
                ->where('campaign_id',$camp_id);

            if($noPagination != ''){
                $product = $product->get();
            } else {
                $product = $product->paginate($dataQty);
            }
            return $product;
        }

        if($discount != ''){
            $product = $product->where('is_discount',0);
        }

        if($category != '' ){
            $product = $product->where('category_id',$category);
            if($subcategory != ''){
                $product = $product->where('sub_category_id',$subcategory);
            }
        }

        if($keyword != ''){
            $product = $product->where('product_name','like','%'.$keyword.'%');
            $product = $product->orWhere('sku','like','%'.$keyword.'%');
        }
        if($noPagination != ''){
            $product = $product->latest()->get();
        } else {
            $product = $product->latest()->paginate($dataQty);
        }
        return $product;
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
            $product->sub_category_id     = $request->sub_category;
            $product->vat_tax_id          = $request->vat['value'];
            $product->description         = $request->description;
            $product->lead_time           = $request->lead_time;
            $product->product_image       = $request->product_image_one;
            $product->image_one           = $request->product_image_one;
            $product->image_two           = $request->product_image_two;
            $product->image_three         = $request->product_image_three;
            $product->image_four          = $request->product_image_four;
            $product->image_five          = $request->image_five;
            $product->cost                = $request->cost;
            $product->mrp_price           = $request->price;
            $product->dimension           = $request->dimension;
            $product->weight              = $request->weight;
            $product->design_code         = $request->design_code;
            $product->status              =  AllStatic::$active;
            $product->save();

            $colorIds = array_column($request->attrqty, 'colour_id');
            $sizeIds = array_filter(array_column($request->attrqty, 'size_id'));
            
            if($request->is_color && !empty($colorIds)){
                $cid = array_unique(array_merge(...$colorIds), SORT_REGULAR);
                $product->product_colour()->attach($cid);
            
            }
            
            if($request->is_size && !empty($sizeIds)){
               
                $product->product_size()->attach($sizeIds);
            }

            if($request->is_fabric && $request->selectfabrics){

                $product->product_fabric()->attach($request->selectfabrics);

                $cid = $request->sub_category != '' ? $request->sub_category : $request->category;

                foreach($request->selectfabrics as $subcat){
                    $chk = CategoryFabric::where(
                        ['category_id' =>  $cid,'fabric_id' => $subcat]
                        )->first();

                    if(empty($chk)){
                        CategoryFabric::create([
                            'category_id' => $cid,
                            'fabric_id' => $subcat
                        ]);
                    }
                }
            }
            
            if($request->color_size && $request->attrqty && !empty($request->attrqty)){

                // $product->inventory()->attach($product->id,['colour_id' => $colorIds, 'size_id' => $sizeIds]);
                foreach($request->attrqty as $value){
                    if($value['qty'] != '' && $value['sku'] != ''){
                        foreach($value['colour_id'] as $sizestock)
                        {
                            $stock              = new Inventory();
                            $stock->product_id  = $product->id;
                            $stock->colour_id   = $sizestock;
                            $stock->size_id     = $value['size_id'];
                            $stock->sku         = $value['sku'];
                            $stock->stock       = $value['qty'];
                            $stock->warning_amount = $request->warning_amount ? $request->warning_amount : 10;
                            $stock->warehouse   = $request->warehouse;
                            $stock->save();
                        }
                    }
                    // return $value['colour_id'];
                }
            
            } else {
                $stock  = new Inventory();
                $stock->product_id  = $product->id;
                $stock->stock       = $request->stock;
                $stock->sku       = $request->sku;
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

            if(!empty($request->vendor)){
               
                $product->product_vendor()->attach($request->vendor);
            }
            if(!empty($request->brand)){
               
                $product->product_brand()->attach($request->brand);
            }
            if(!empty($request->designer)){
               
                $product->product_designer()->attach($request->designer);
            }
            if(!empty($request->embellishment)){
               
                $product->product_embellishment()->attach($request->embellishment);
            }
            if(!empty($request->making)){
               
                $product->product_making()->attach($request->making);
            }
            if(!empty($request->season)){
               
                $product->product_season()->attach($request->season);
            }
            if(!empty($request->variety)){
               
                $product->product_variety()->attach($request->variety);
            }
            if(!empty($request->fit)){
               
                $product->product_fit()->attach($request->fit);
            }
            if(!empty($request->artist)){
               
                $product->product_artist()->attach($request->artist);
            }
            if(!empty($request->consignment)){
               
                $product->product_consignment()->attach($request->consignment);
            }
            if(!empty($request->ingredients)){
               
                $product->product_ingredient()->attach($request->ingredients);
            }
            if(!empty($request->care)){
               
                $product->product_care()->attach($request->care);
            }

            if(!empty($request->tages)){
               
                $str = implode(',', $request->tages);
               
                ProductTag::create([
                    'product_id' => $product->id,
                    'keyword_name' => json_encode($str)
                ]);
            }

            DB::commit();
            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Added Successfully!']);
        } catch (\Throwable $th) {
            DB::rollback();
            return $th;
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
        return Product::with(['category:id,category_name','subcategory','inventory','product_colour','product_size','discount'])
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
        $products = Product::with(['category:id,category_name','subcategory','inventory','product_colour','product_size','product_fabric','discount'])
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


    public function bulkUpload(Request $request)
    {
        $this->validate($request, [
            'file'   => 'required|mimes:xls,xlsx'
        ]);

        $path = $request->file('file')->getRealPath();
        // return $data = Excel::load($path, function($reader) {})->get();
        Excel::import(new ProductImport, $path);
        // $data = Excel::toCollection(new ProductImport,$request->file('file'));
        // $data = Excel::toArray(new ProductImport,$request->file('file'));
        // $data = array_filter($data->toArray(),function ($number) {
        //     return $number[0] !== null;
        // });
        // return count($data[0]);
        return $this->successMessage('Excel Data Imported successfully.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        try {
            DB::beginTransaction();
            Inventory::where('product_id',$product->id)->delete();
            Discount::where('product_id',$product->id)->delete();
            ProductTag::where('product_id',$product->id)->delete();
            $product->product_colour()->detach();
            $product->product_fabric()->detach();
            $product->product_size()->detach();
            $product->product_vendor()->detach();
            $product->product_brand()->detach();
            $product->product_designer()->detach();
            $product->product_embellishment()->detach();
            $product->product_making()->detach();
            $product->product_season()->detach();
            $product->product_variety()->detach();
            $product->product_fit()->detach();
            $product->product_artist()->detach();
            $product->product_consignment()->detach();
            $product->product_ingredient()->detach();
            $product->product_care()->detach();
            $product->campaign()->detach();
            $product->delete();

            DB::commit();
            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Deleted Successfully!']);
        } catch (\Throwable $th) {
            DB::rollback();
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}
