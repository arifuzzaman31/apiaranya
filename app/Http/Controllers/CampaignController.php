<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use Illuminate\Http\Request;
use App\Models\Campaign;

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
            'expire_at' => 'required|date|after:start_at',
            'campaign_banner' => 'required',
        ]);

        try{
            $camp = new Campaign();
            $camp->campaign_name = $request->campaign_name;
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
}
