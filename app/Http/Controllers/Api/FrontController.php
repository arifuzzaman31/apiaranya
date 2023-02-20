<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\AllStatic;
use App\Models\Campaign;
use App\Http\Resources\CampaignResource;

class FrontController extends Controller
{
    public function getCampaing(Request $request)
    {
        $status = $request->get('status');
        $campaign = Campaign::where('campaign_expire_date','>=',date('Y-m-d'))->orderBy('id','desc');
        if($status != ''){
            $campaign = $campaign->where('status',AllStatic::$active);
        } 
        $campaign = $campaign->get();
        
        return CampaignResource::collection($campaign);
    }

}
