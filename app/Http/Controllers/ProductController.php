<?php

namespace App\Http\Controllers;

use App\Exports\StockExport;
use App\Http\AllStatic;
use App\Imports\ProductImport;
use App\Models\Product;
use App\Models\Inventory;
use App\Models\Discount;
use App\Exports\AddProduct;
use App\Models\CategoryFabric;
use App\Models\ProductTag;
use Illuminate\Http\Request;
use App\Traits\ProductTrait;
use DB,Str,Excel;

class ProductController extends Controller
{
    use ProductTrait;
    public $fieldname = 'Product';

    public function testa(){
        return Excel::download(new AddProduct, 'filename.csv', \Maatwebsite\Excel\Excel::CSV);

        // $path = public_path('newdata.xlsx');
        // $data = \Excel::import($path)->get();
        // unset($data[0][0]);
        // dd($data);

        // $sheet = Excel::store($this,'newdata.xlsx');
        // $this->appendRow([
        //                 '4564','testing data','test1', 'test2','new','in stock','5456 MRP','link1','link2'
        //             ]);
        return "done";
        // Excel::import($path,  function ($reader) {
        //     // return $reader;
        //     $reader->sheet('Sheet1', function($sheet) {
        //         $sheet->appendRow([
        //             '4564','testing data','test1', 'test2','new','in stock','5456 MRP','link1','link2'
        //         ]);
        //     });
        // })->export('xlsx');
    }

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
    public function attrForProd()
    {
        return [
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
            'tax' => $this->getTax(),
            'flat_colour' => $this->flatColour()
        ];
    }

    public function create()
    {
        return view('pages.product.create_product',$this->attrForProd());
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
        $product = Product::with(['vat','category:id,category_name','subcategory','inventory','product_size','product_colour','discount']);

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
            $product = $product->whereHas('inventory', function ($q) use ($keyword) {
                $q->where('sku','like','%'.$keyword.'%');
            }); 
            $product = $product->orWhere('product_name','like','%'.$keyword.'%');
            $product = $product->orWhere('design_code','like','%'.$keyword.'%');
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
            //'weight' => 'required',
            'design_code' => 'required'
        ]);

        DB::beginTransaction();
        try {
            $product = new Product();
            $product->product_name        = $request->product_name;
            $product->slug                = Str::slug($request->product_name);
            $product->category_id         = $request->category;
            $product->sub_category_id     = $request->sub_category ? $request->sub_category : 0;
            $product->vat_tax_id          = $request->vat;
            $product->description         = $request->description;
            $product->lead_time           = $request->lead_time;
            $product->flat_colour         = implode(",",$request->flat_colour);
            $product->product_image       = $request->product_image_one;
            $product->image_one           = $request->product_image_one;
            $product->image_two           = $request->product_image_two;
            $product->image_three         = $request->product_image_three;
            $product->image_four          = $request->product_image_four;
            $product->image_five          = $request->image_five;
            $product->height              = $request->height;
            $product->width               = $request->width;
            $product->length              = $request->length;
            $product->unit                = $request->unit;
            $product->weight              = $request->weight;
            $product->has_variation       = $request->has_variation == true ? 1 : 0;
            $product->design_code         = $request->design_code;
            $product->status              =  AllStatic::$active;
            $product->save();

            $colorIds = array_filter(array_column($request->attrqty, 'colour_id'));
            $sizeIds = array_filter(array_column($request->attrqty, 'size_id'));
            
            if($request->is_color && !empty($colorIds)){
                $cid = array_unique($colorIds);
                $product->product_colour()->attach($cid);
            }
            
            if($request->is_size && !empty($sizeIds)){
               
                $product->product_size()->attach(array_unique($sizeIds));
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
            
            if($request->attrqty && !empty($request->attrqty)){
                foreach($request->attrqty as $value){
                    if($value['qty'] != '' && $value['sku'] != '' && $value['cpu'] != '' && $value['mrp'] != ''){
                        DB::table('inventories')
                            ->insert([
                                'product_id' => $product->id,
                                'size_id' => $value['size_id'] != '' ? $value['size_id'] : 0,
                                'colour_id' => $value['colour_id'] != '' ? $value['colour_id'] : 0,
                                'sku' => $value['sku'],
                                'stock' => $value['qty'],
                                'cpu' => $value['cpu'],
                                'mrp' => $value['mrp'],
                                'warning_amount' => 10
                        ]);  
                    }
                }
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
                    'keyword_name' => $str
                ]);
            }
            DB::commit();
            return $this->successMessage($this->fieldname.' Added Successfully!');
        } catch (\Throwable $th) {
            DB::rollback();
            return $th;
            return $this->errorMessage('Something went wrong!');
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
        return Product::with(['category:id,category_name','subcategory:id,category_name','inventory.colour','inventory.size',
        'vat:id,tax_name,tax_percentage',
        'tag:id,keyword_name','product_fabric:id,fabric_code,fabric_name','product_vendor:id,vendor_name',
        'product_brand:id,brand_name','product_designer:id,designer_name,designer_sort_name','product_embellishment:id,embellishment_name',
        'product_making:id,making_name','product_season:id,season_name','product_variety:id,variety_name','product_fit:id,fit_name',
        'product_artist:id,artist_name','product_consignment:id,consignment_name','product_ingredient:id,ingredient_name',
        'product_care:id,care_name'])
            ->find($product->id);
    }

    public function exportProductStock()
    {
        return Excel::download(new StockExport(),'stock_list.xlsx');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $products = Product::with(['product_vendor:id','product_brand:id','product_designer:id','product_making:id','product_season:id',
                    'product_embellishment:id','inventory','product_size','product_colour','discount','product_fabric:id',
                    'product_variety:id','product_fit:id','product_artist:id','product_consignment:id','product_ingredient:id','product_care:id','tag'
                    ])
        ->find($product->id);
        return view('pages.product.edit',['product' => $products,'attrs' => json_encode($this->attrForProd())]);
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
        // return $request->attrqty;
        $request->validate([
            'product_name' => 'required',
            'category' => 'required',
            'design_code' => 'required'
        ]);
        DB::beginTransaction();
        try {
            $product->product_name        = $request->product_name;
            $product->slug                = Str::slug($request->product_name);
            $product->category_id         = $request->category;
            $product->sub_category_id     = $request->sub_category ? $request->sub_category : 0;
            $product->vat_tax_id          = $request->vat;
            $product->description         = $request->description;
            $product->lead_time           = $request->lead_time;
            if($request->product_image_one != ''){
                $product->product_image   = $request->product_image_one;
                $product->image_one       = $request->product_image_one;
            }
            if($request->product_image_two != ''){
                $product->image_two       = $request->product_image_two;
            }
            if($request->product_image_three != ''){
                $product->image_three     = $request->product_image_three;
            }
            if($request->product_image_four != ''){
                $product->image_four      = $request->product_image_four;
            }
            if($request->image_five != ''){
                $product->image_five      = $request->image_five;
            }
            $product->height              = $request->height;
            $product->width               = $request->width;
            $product->length              = $request->length;
            $product->unit                = $request->unit;
            $product->flat_colour         = implode(",",$request->flat_colour);
            $product->weight              = $request->weight;
            $product->design_code         = $request->design_code;
            $product->status              =  AllStatic::$active;
            $product->update();

            $colorIds = array_column($request->attrqty, 'colour_id');
            $sizeIds = array_filter(array_column($request->attrqty, 'size_id'));
            
            if($request->is_color && !empty($colorIds)){
                $cid = array_unique(array_merge(...$colorIds), SORT_REGULAR);
                $product->product_colour()->sync($cid);
            }
            
            if($request->is_size && !empty($sizeIds)){
               
                $product->product_size()->sync($sizeIds);
            }

            if($request->is_fabric && !empty($request->fabrics)){

                $product->product_fabric()->sync($request->fabrics);

                $cid = $request->sub_category != '' ? $request->sub_category : $request->category;

                foreach($request->fabrics as $subcat){
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
            
            if($request->attrqty && !empty($request->attrqty)){
                DB::table('inventories')->where('product_id',$product->id)->delete();
                foreach($request->attrqty as $value){
                    if($value['qty'] != '' && $value['sku'] != '' && $value['cpu'] != '' && $value['mrp'] != ''){
                        if(!empty($value['colour_id'])){
                            foreach($value['colour_id'] as $sizestock)
                            {
                                DB::table('inventories')
                                    ->insert([
                                        'product_id' => $product->id,
                                        'size_id' => $value['size_id'] ? $value['size_id'] : 0,
                                        'colour_id' => $sizestock ? $sizestock : 0,
                                        'sku' => $value['sku'],
                                        'stock' => $value['qty'],
                                        'cpu' => $value['cpu'],
                                        'mrp' => $value['mrp'],
                                        'warning_amount' => 10
                                ]);
                            }
                        } else {
                            $stock  = new Inventory();
                            $stock->product_id  = $product->id;
                            $stock->stock       = $value['qty'];
                            $stock->size_id     = $value['size_id'] ? $value['size_id'] : 0;
                            $stock->colour_id   =  0;
                            $stock->sku       = $value['sku'];
                            $stock->cpu       = $value['cpu'];
                            $stock->mrp       = $value['mrp'];
                            $stock->save();
                        }
                    }
              
                }
            
            }

            if(!empty($request->vendor)){
               
                $product->product_vendor()->sync($request->vendor);
            }
            if(!empty($request->brand)){
               
                $product->product_brand()->sync($request->brand);
            }
            if(!empty($request->designer)){
               
                $product->product_designer()->sync($request->designer);
            }
            if(!empty($request->embellishment)){
               
                $product->product_embellishment()->sync($request->embellishment);
            }
            if(!empty($request->making)){
               
                $product->product_making()->sync($request->making);
            }
            if(!empty($request->season)){
               
                $product->product_season()->sync($request->season);
            }
            if(!empty($request->variety)){
               
                $product->product_variety()->sync($request->variety);
            }
            if(!empty($request->fit)){
               
                $product->product_fit()->sync($request->fit);
            }
            if(!empty($request->artist)){
               
                $product->product_artist()->sync($request->artist);
            }
            if(!empty($request->consignment)){
               
                $product->product_consignment()->sync($request->consignment);
            }
            if(!empty($request->ingredients)){
               
                $product->product_ingredient()->sync($request->ingredients);
            }
            if(!empty($request->care)){
               
                $product->product_care()->sync($request->care);
            }

            if(!empty($request->tags)){
               
                $str = implode(',', $request->tags);

                DB::table('product_tags')
                ->updateOrInsert(
                    ['product_id' => $product->id],
                    ['keyword_name' => $str]
                );
            }

            DB::commit();
            return $this->successMessage($this->fieldname.' Successfully Updated!');
        } catch (\Throwable $th) {
            DB::rollback();
            return $th;
            return $this->errorMessage('Something went wrong!');
            //throw $th;
        }
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
        return $this->successMessage('Excel Data Imported Successfully.');
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