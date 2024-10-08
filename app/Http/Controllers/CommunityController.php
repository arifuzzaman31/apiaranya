<?php
namespace App\Http\Controllers;

use App\Models\Community;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CommunityController extends Controller
{
    public function editCommunityPage($id)
    {
        $data = DB::table('communities')->where('id',$id)->first();
        return view('pages.story.edit_community',['community' => $data]);
    }
    public function getProductByCommunity($id)
    {
        $data = Community::with(['product.category:id,category_name,slug',
            'product.subcategory:id,category_name,slug','product.inventory' => function($q){
           return $q->take(1);
        }])
                ->where('id',$id)->first();
        return $data;

    }
    public function getCommunity(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $data = Community::latest();
        if($noPagination != ''){
            $data = $data->get();
        } else {
            $data = $data->paginate(20);
        }
        return $data;
    }
    public function updateCommunity(Request $request)
    {
        try {
            DB::table('communities')->where('id',$request->id)->update([
                'title' => $request->title,
                'slug' => $request->title,
                'fabric_id' => $request->fabric_id,
                'short_description' => $request->short_description,
                'description' => $request->description,
                'feature_image' => $request->feature_image,
                'detail_image' => $request->detail_image,
                'district_name' => $request->district_name,
                'pr_imgs' => json_encode($request->pr_imgs),
                'status' => $request->status
            ]);
            return response()->json(['status' => 'success', 'message' => 'Community Updated Successfully!']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}
