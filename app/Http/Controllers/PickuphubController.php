<?php

namespace App\Http\Controllers;

use App\Http\AllStatic;
use App\Models\Pickuphub;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PickuphubController extends Controller
{
    public $fieldname = 'Pickup Point';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(config('app.ecorier_mode') == 'production'){
            $api_url = 'https://backoffice.ecourier.com.bd/api/city-list';

        }else {
            $api_url = 'https://staging.ecourier.com.bd/api/city-list';
        }
            $headers = [
                    'Content-Type: application/json',
                    'API-KEY: frz3',
                    'API-SECRET: 4vqsZ',
                    'USER-ID: H7546'
                ];

                $handle = curl_init();
                curl_setopt($handle, CURLOPT_URL, $api_url);
                curl_setopt($handle, CURLOPT_TIMEOUT, 30);
                curl_setopt($handle, CURLOPT_HTTPHEADER, $headers);
                curl_setopt($handle, CURLOPT_CONNECTTIMEOUT, 30);
                curl_setopt($handle, CURLOPT_POST, true);
                curl_setopt($handle, CURLOPT_RETURNTRANSFER, true);
                curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, true); // Set to false if testing on local PC
                curl_setopt($handle, CURLOPT_FOLLOWLOCATION, true); // Follow redirects

            $content = curl_exec($handle);
            $code = curl_getinfo($handle, CURLINFO_HTTP_CODE);

            if($code == 200) {
                $hubData = json_decode($content,true );
                curl_close($handle);
            }
            // return $hubData;
        return view('pages.pickuphub.pickuphub',['districtlist' => json_encode($hubData)]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $status = $request->get('status');
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 10;
        $pickup = Pickuphub::orderBy('id','desc');
        if($status != ''){
            $pickup = $pickup->where('status',AllStatic::$active);
        }
        if($noPagination != ''){
            $pickup = $pickup->get();
        } else {
            $pickup = $pickup->paginate($dataQty);
        }
        return response()->json($pickup);
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
            'hub_name' => 'required',
            'hub_address' => 'required',
            'type' => 'required'
        ]);

        try {
            $dt = explode('-',$request->pick_thana);
            $hub = new Pickuphub();
            $hub->hub_name = $request->hub_name;
            $hub->slug = Str::slug($request->hub_name);
            $hub->hub_code = $dt[1];
            $hub->contact_person = $request->contact_person;
            $hub->pick_division = $request->pick_division;
            $hub->pick_district = $request->pick_district;
            $hub->pick_thana = $dt[0];
            $hub->pick_union = $request->pick_union;
            $hub->pick_mobile = $request->pick_mobile;
            $hub->type = $request->type;
            $hub->hub_address = $request->hub_address;
            $hub->status = $request->status;
            $hub->save();

            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Added Successfully !']);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pickuphub  $brand
     * @return \Illuminate\Http\Response
     */
    public function show(Pickuphub $pickuphub)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Brand  $brand
     * @return \Illuminate\Http\Response
     */
    public function edit(Pickuphub $pickuphub)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Brand  $brand
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        $request->validate([
            'hub_name' => 'required',
            'hub_address' => 'required',
            'type' => 'required'
        ]);

        try {
            $dt = explode('-',$request->pick_thana);
            $updata = Pickuphub::find($id);
            $updata->hub_name = $request->hub_name;
            $updata->slug = Str::slug($request->hub_name);
            $updata->hub_code = $dt[1];
            $updata->contact_person = $request->contact_person;
            $updata->pick_division = $request->pick_division;
            $updata->pick_district = $request->pick_district;
            $updata->pick_thana = $dt[0];
            $updata->pick_union = $request->pick_union;
            $updata->pick_mobile = $request->pick_mobile;
            $updata->type = $request->type;
            $updata->email = $request->email;
            $updata->hub_address = $request->hub_address;
            $updata->status = $request->status;
            $updata->update();

            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Updated Successfull!']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
            //throw $th;
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Brand  $brand
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            Pickuphub::find($id)->delete();
            return response()->json(['status' => 'success', 'message' => $this->fieldname.' Deleted Successfully!']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}
