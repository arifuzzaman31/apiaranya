<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use Illuminate\Http\Request;
use App\Models\Campaign;
use App\Models\Discount;
use App\Models\Inventory;
use App\Models\Product;
use App\Services\MailchimpService;
use DB,Str;

class CampaignController extends Controller
{
    public $fieldname = 'Campaign';

    public function index()
    {
        return view('pages.campaign.campaign');
    }

    public function create()
    {
        return view('pages.campaign.create_campaign');
    }

    public function update(Request $request,$id)
    {
        $request->validate([
            'campaign_name' => 'required',
            'start_at' => 'required',
            'expire_at' => 'required|date|after:start_at'
        ]);
        try{
            $camp = Campaign::find($id);
            $camp->campaign_name = $request->campaign_name;
            $camp->slug = Str::slug($request->campaign_name);
            $camp->campaign_banner_default = $request->campaign_banner;
            $camp->campaign_meta_image = $request->campaign_meta_image;
            $camp->campaign_start_date = $request->start_at;
            $camp->campaign_expire_date = $request->expire_at;
            $camp->status = $request->status == 1 ? 1 : 0;
            $camp->save();
         return response()->json(['status' => 'success', 'message' => $this->fieldname.' Updated Successfully!']);
    }catch (\Throwable $th) {
        return response()->json(['status' => 'error', 'message' => $th]);
    }

    }

    public function storeProductSkuDiscount(Request $request)
    {
        try {
            // return response()->json($request->all());
            foreach ($request->product_sku as $value) {
                $discStatus = $value['discount_type'] == 'remove' ? 0 : 1;
                if($value['discount_type'] == 'remove'){
                    Discount::where('disc_sku',$value['sku'])->delete();
                } else {
                    Discount::updateOrCreate([
                         'product_id'=> $request->id,
                         'disc_sku' =>  $value['sku']
                     ],[
                         'discount_amount' => $value['discount'] ?? 0,
                         'discount_type'   => $value['discount_type'],
                         'type'            => $value['type'],
                         'max_amount'      => $value['discount_type'] == 'percentage' ? $value['max_amount'] : NULL,
                         'status'          => AllStatic::$active
                     ]);
                }
                Inventory::where('sku',$value['sku'])->update([
                    'disc_status' => $discStatus
                ]);
            }
            return response()->json(['status' => 'success', 'message' => 'Discount affected Successfully!']);
        } catch (\Throwable $th) {
            return $th;
            return response()->json(['status' => 'error', 'message' => $th]);
        }
    }

    public function getCampProduct($id)
    {
        $camp = Campaign::find($id);
        return view('pages.campaign.campaign_product',['campaigndata' => $camp]);
    }

    public function getProductByCampId(Request $request,$camp_id)
    {
        $noPagination = $request->get('no_paginate');
        $keyword   = $request->get('keyword');
        $category   = $request->get('category');
        $subcategory   = $request->get('subcategory');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;

        $product = Product::join('campaign_products', 'products.id', '=', 'campaign_products.product_id')
        ->where('campaign_products.campaign_id', $camp_id)
        // ->where('products.id', 'campaign_products.product_id')
        ->with(['campaign','vat', 'category:id,category_name',
        'subcategory', 'inventory.discount', 'product_size', 'product_colour'])
        ->select(['products.*','campaign_products.campaign_id']);


        // $allCompanies = Products::with(['company' => function($q) {
        //     $q->where('visible', 0);
        // }])


        // $product = $campaign->product;

        if ($keyword != '') {
            $product = $product->whereHas('inventory', function ($q) use ($keyword) {
                $q->where('sku', 'like', '%' . $keyword . '%');
            });
            $product = $product->orWhere('product_name', 'like', '%' . $keyword . '%');
            $product = $product->orWhere('design_code', 'like', '%' . $keyword . '%');
        }

        $product = $product->paginate($dataQty);
        return $product;
    }

    public function getCampaing(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $status = $request->get('status');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 10;
        $campaign = Campaign::orderBy('id','desc');
        if($status != ''){
            $campaign = $campaign->where('status',AllStatic::$active);
        }
        if($noPagination != ''){
            $campaign = $campaign->get();
        } else {
            $campaign = $campaign->paginate($dataQty);
        }
        return response()->json($campaign);
    }

    public function store(Request $request)
    {
        $request->validate([
            'campaign_name' => 'required',
            'start_at' => 'required',
            'expire_at' => 'required|date|after:start_at'
        ]);

        try{
            $camp = new Campaign();
            $camp->campaign_name = $request->campaign_name;
            $camp->slug = Str::slug($request->campaign_name);
            $camp->campaign_banner_default = $request->campaign_banner;
            $camp->campaign_meta_image = $request->campaign_meta_image;
            $camp->campaign_start_date = $request->start_at;
            $camp->campaign_expire_date = $request->expire_at;
            $camp->status = AllStatic::$active;
            $camp->save();

            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Created Successfully!']);
        }catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' => $th]);
        }
    }
    public function storeAddtoCamp(Request $request)
    {
        $request->validate([
            'campaign' => 'required',
            'type' => 'required',
            // 'product' => 'required|array|min:1'
        ]);

        try{
            DB::beginTransaction();
            if($request->type == 'campaign'){
                $camp = Campaign::find($request->campaign);
                $camp->product()->syncWithoutDetaching($request->product);
            }else{
                $sect = DB::table('pages')->where('id',$request->campaign);
                $gt = $sect->first();
                // $ids = $gt->product_id != NULL ? array_merge(json_decode($gt->product_id),$request->product) : $request->product;
                // return $ids;
                $ids = [];
                $categoryIds = array_unique(array_column($request->categories, 'categoryId'));
                $subcategoryIds = array_unique(array_column($request->categories, 'subcategoryId'));
                if(!empty($categoryIds)){
                    foreach ($categoryIds as $key => $categoryId) {
                        $query = Product::where('category_id', $categoryId);
                        if (!empty($subcategoryIds)) {
                            if(!empty($subcategoryIds[$key])){
                                $query = $query->where('sub_category_id', $subcategoryIds[$key]);
                            }
                        }
                        $productIds = $query->latest()->take(10)->pluck('id')->toArray();
                        $ids = array_merge($ids, $productIds);
                    }
                    $sorted = collect($ids)->shuffle()->toArray();
                }
                // return $sorted;
                $sect->update([
                    'product_id' => json_encode(array_values(array_unique($sorted)))
                ]);
            }
            // $camp->product()->sync($request->product);
            // $camp->save();
            DB::commit();
            return response()->json(['status' => 'success', 'message' => 'Product Added to '.$request->type]);
        }catch (\Throwable $th) {
            DB::rollback();
            return $th;
            return response()->json(['status' => 'error', 'message' => $th]);
        }
    }

    public function removeCampProduct(Request $request)
    {
        try {
            DB::beginTransaction();
            Discount::where('type','campaign')
            ->whereIn('product_id',$request->product)->delete();
            $camp = Campaign::find($request->camp_id);
            $camp->product()->detach($request->product);
            DB::commit();
            return $this->successMessage("Product Has been removed!");
        } catch (\Throwable $th) {
            //throw $th;
            DB::rollback();
            return $this->errorMessage();
        }
    }

    public function destroy(Campaign $campaign)
    {
        try {
            DB::beginTransaction();
            Discount::where('type','campaign')
            ->whereIn('product_id',$campaign->product()->pluck('product_id')->toArray())->delete();
            $campaign->product()->detach();
            $campaign->product()->pluck('product_id')->toArray();
            $campaign->delete();
            //code...
            DB::commit();
            return $this->successMessage("Campaign removed with Prodcut!");
        } catch (\Throwable $th) {
            DB::rollback();
            return $this->errorMessage();
            //throw $th;
        }
    }

    public function sendToMailChimp($campId = '')
    {
        $inv = Inventory::all()->toArray();
        $chunks = array_chunk($inv, 100);
        foreach($chunks as $chunk)
        {
            foreach($chunk as $v)
            {
                Discount::insert([
                    'product_id'       => $v['product_id'],
                    'disc_sku'         => $v['sku'],
                    'discount_amount'  => 15,
                    'discount_type'    => 'percentage',
                    'type'             => 'campaign',
                    'max_amount'       => NULL,
                    'status'           => 1
                ]);
            }
            // Update the inventory items in the current chunk
            $product_ids = array_column($chunk, 'product_id');
            Inventory::whereIn('product_id', $product_ids)->update([
                'disc_status' => 1
            ]);
        }
        return $this->successMessage("Discount added to Prodcut!");
        $productsData = Product::with(['category:id,category_name,slug','subcategory:id,category_name,slug','inventory','campaign'])
    		->whereDoesntHave('campaign')
    		->orWhereHas('campaign', function($q) use ($campId) {
        	$q->where('campaign_id', '!=', $campId);
    	})
	->skip(350)->take(50)
	->get();
        //return $productsData;
        //$response = $this->createProductsData($productsData);
	$responses = [];
	foreach ($productsData as $productData) {
            $link = config('app.front_url').'products/'.($productData->subcategory->slug ?? $productData->category->slug).'/'.$productData->id;
            $data = [
                    'id' => $productData->id.uniqueString(),
                    'title' => $productData->product_name,
                    'description' => strip_tags($productData->description),
                    'vendor' => 'Aranya',
                    'image_url' => $productData->product_image,
                    'variants' => [
                        [
                            'id' => optional($productData->inventory->first())->id.uniqueString(),
                            'title' => $productData->product_name,
                            'price' => (int)optional($productData->inventory->first())->mrp,
                            'inventory_quantity' => optional($productData->inventory->first())->stock,
                            "url" => $link,
                            'sku' => optional($productData->inventory->first())->sku,
                            "image_url" => $productData->product_image
                        ],
                    ],
                    'url' => $link,
                    'type' =>  $productData->category->category_name,
                    'published_at_foreign' =>  date('Y-m-d H:i:s'),
            ];
            //$responses[] = $data;
            $responses[] = $this->createProduct($data);
		//$url = "https://us6.api.mailchimp.com/3.0/ecommerce/stores/e8c8bcc5-6471-4db7-af94-b120000384c5/products";
        	//$resp = Http::withBasicAuth('anystring', "93fbcecc0f8502731ac2c8f62c5a4b96-us6")->post($url, $data);
		//$responses[] = $resp;
        }
	return response()->json($responses);

    }
}
