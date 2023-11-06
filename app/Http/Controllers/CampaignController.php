<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use Illuminate\Http\Request;
use App\Models\Campaign;
use App\Models\Discount;
use App\Models\Inventory;
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
                // return $value['sku'];
                Discount::updateOrCreate([
                     'product_id'=> $request->id,
                     'disc_sku' =>  $value['sku']
                 ],[
                     'discount_amount' => $value['discount'],
                     'discount_type'   => $value['discount_type'],
                     'type'            => $value['type'],
                     'max_amount'      => $value['discount_type'] == 'percentage' ? $value['max_amount'] : NULL,
                     'status'          => AllStatic::$active
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
            // 'discount_type' => 'required',
            // 'discount_amount' => 'required',
            'product' => 'required|array|min:1'
        ]);

        try{
            DB::beginTransaction();

            // if(!empty($request->product)){
                // foreach($request->product as $value){
                    Discount::updateOrCreate(
                        ['product_id' => 'Oakland', 'type' => 'San Diego'],
                        [
                            'discount_amount' => $request->discount_amount,'discount_type' => $request->discount_type,
                            'max_amount' => 'Oakland','status' => AllStatic::$active
                        ]
                    );
                //     $disc = new Discount();
                //     $disc->product_id  =  $value;
                //     $disc->discount_amount  =  $request->discount_amount;
                //     $disc->discount_type  =   $request->discount_type;
                //     $disc->type  =   $request->type;
                //     $disc->max_amount  =   $request->max_amount;
                //     $disc->status = AllStatic::$active;
                //     $disc->save();
                // }
            // }

            $camp = Campaign::find($request->campaign);
            $camp->product()->syncWithoutDetaching($request->product);
            // $camp->product()->sync($request->product);
            // $camp->save();

            DB::commit();
            return response()->json(['status' => 'success', 'message' => 'Product Has Added to Campaign!']);
        }catch (\Throwable $th) {
            DB::rollback();
            // return $th;
            return response()->json(['status' => 'error', 'message' => $th]);
        }
    }

    public function removeCampProduct(Request $request)
    {
        try {
            // return $request->product;
            //code...
            $camp = Campaign::find($request->camp_id);
            $camp->product()->detach($request->product);
            return $this->successMessage("Prodcut Has been removed!");
        } catch (\Throwable $th) {
            //throw $th;
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
}
