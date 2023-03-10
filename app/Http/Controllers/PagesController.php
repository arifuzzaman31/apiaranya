<?php

namespace App\Http\Controllers;

use App\Models\AttributeValue;
use App\Models\Page;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function homePage()
    {
        return view('pages.page.homepage');
    }

    public function homeImageUpdate(Request $request)
    {
        // return response()->json($request->all());
        try {
            $hp = Page::where('page_name','home')->first();
            switch ($request->imagenumb) {
                case 'one':
                        if($request->imageuri) $hp->image_one = $request->imageuri;
                        if($request->subcategory != ''){
                            $hp->back_url_one = $request->subcategory;
                        } else {
                            $hp->back_url_one = $request->categoryname;
                        }
                    break;
                case 'two':
                        if($request->imageuri) $hp->image_two = $request->imageuri;
                        if($request->subcategory != ''){
                            $hp->back_url_two = $request->subcategory;
                        } else {
                            $hp->back_url_two = $request->categoryname;
                        }
                    break;
                case 'three':
                        if($request->imageuri) $hp->image_three = $request->imageuri;
                        if($request->subcategory != ''){
                            $hp->back_url_three = $request->subcategory;
                        } else {
                            $hp->back_url_three = $request->categoryname;
                        }
                    break;
                case 'four':
                        if($request->imageuri) $hp->image_four = $request->imageuri;
                        if($request->subcategory != ''){
                            $hp->back_url_four = $request->subcategory;
                        } else {
                            $hp->back_url_four = $request->categoryname;
                        }
                    break;
                case 'five':
                        if($request->imageuri) $hp->image_five = $request->imageuri;
                        if($request->subcategory != ''){
                            $hp->back_url_five = $request->subcategory;
                        } else {
                            $hp->back_url_five = $request->categoryname;
                        }
                    break;
                case 'six':
                        if($request->imageuri) $hp->image_six = $request->imageuri;
                        if($request->subcategory != ''){
                            $hp->back_url_six = $request->subcategory;
                        } else {
                            $hp->back_url_six = $request->categoryname;
                        }
                    break;
                
                default:
                    # code...
                    return false;
                    break;
            }

            $hp->update();
            return response()->json(['status' => 'success', 'message' => 'Home Page Updated Successfully!']);
        } catch (\Throwable $th) {
            //throw $th;
        }
    }

    public function homeImageData()
    {
        $data = Page::where('page_name','home')->first();
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AttributeValue  $attributeValue
     * @return \Illuminate\Http\Response
     */
    public function show(AttributeValue $attributeValue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\AttributeValue  $attributeValue
     * @return \Illuminate\Http\Response
     */
    public function edit(AttributeValue $attributeValue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AttributeValue  $attributeValue
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, AttributeValue $attributeValue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\AttributeValue  $attributeValue
     * @return \Illuminate\Http\Response
     */
    public function destroy(AttributeValue $attributeValue)
    {
        //
    }
}
