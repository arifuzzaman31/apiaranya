<?php

namespace App\Http\Controllers;

use App\Exports\AttributeExport;
use App\Models\AttributeValue;
use App\Models\ShippingConfig;
use App\Models\Page;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Traits\ProductTrait;
use DB,Str;

class PagesController extends Controller
{
    use ProductTrait;
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
    public function exportAllAttr()
    {
        // return $this->getBrand()->toArray();
        $plate = [
            // 'category' => DB::table('categories')->select('id', 'category_name', 'parent_category', 'status')->get()->toArray(),
            'brand'    => DB::table('brands')->select('id', 'brand_name', 'status')->get()->toArray(),
            'artist'  => DB::table('artists')->select('id', 'artist_name', 'status')->get()->toArray(),
            'care'    => DB::table('cares')->select('id', 'care_name', 'status')->get()->toArray(),
            'color'    => DB::table('colours')->select('id', 'color_name', 'status')->get()->toArray(),
            'consignment'    => DB::table('consignments')->select('id', 'consignment_name', 'status')->get()->toArray(),
            'designer'    => DB::table('designers')->select('id', 'designer_name', 'status')->get()->toArray(),
            'embellishment'    => DB::table('embellishments')->select('id', 'embellishment_name', 'status')->get()->toArray(),
            'fabric'    => DB::table('fabrics')->select('id', 'fabric_name', 'status')->get()->toArray(),
            'fit'    => DB::table('fits')->select('id', 'fit_name', 'status')->get()->toArray(),
            'ingredient'    => DB::table('ingredients')->select('id', 'ingredient_name', 'status')->get()->toArray(),
            'making'    => DB::table('makings')->select('id', 'making_name', 'status')->get()->toArray(),
            'season'    => DB::table('seasons')->select('id', 'season_name', 'status')->get()->toArray(),
            'size'    => DB::table('sizes')->select('id', 'size_name', 'status')->get()->toArray(),
            'variety'    => DB::table('varieties')->select('id', 'variety_name', 'status')->get()->toArray(),
            'vendor'    => DB::table('vendors')->select('id', 'vendor_name', 'status')->get()->toArray(),
            'tax'    => DB::table('vat_taxes')->select('id', 'tax_percentage as tax_name')->get()->toArray(),
        ];

        $export = new AttributeExport($plate);
        return Excel::download($export, 'attribute-list.xlsx');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function getShipping()
    {
        return view('pages.page.shipping');
    }

    public function storeShippingCharge(Request $request)
    {
        $request->validate([
            'country_name'  => 'required|unique:shipping_configs,country_name,'.$request->id
        ]);

        $cntry = explode("code",$request->country_name);

         $data = ['amount' => 0];

        // if(trim($cntry[0]) == 'Bangladesh'){
        //     $data = [
        //         'inside_city'   => [
        //             'pathao'    => $request->inside_city_pathao,
        //             'e_courier' => $request->inside_city_e_courier
        //         ],
        //         'outside_city'  => [
        //             'pathao'    => $request->outside_city_pathao,
        //             'e_courier' => $request->outside_city_e_courier
        //         ],
        //     ];
        // } else {
        //     $data = ['amount' => $request->amount];
        // }


        try {
            ShippingConfig::updateOrCreate([
                'id'    =>  $request->id
            ],[
                'country_name'  => trim($cntry[0]),
                'country_code'  => trim($cntry[1]),
                'shipping_charge' => json_encode($data),
                'status'    => $request->status ? 1 : 0
            ]);

            return $this->successMessage("Shipping Charge Added!");
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    public function deleteShipping($id)
    {
        try {
            DB::table('shipping_configs')->where('id',$id)->delete();
            return $this->successMessage("Shipping Charge Added!");
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    public function getShippingData(Request $request)
    {
        $dataQty = $request->get('per_page') ? $request->get('per_page') : 12;
        $keyword   = $request->get('keyword');
        $shipp = DB::table('shipping_configs')->orderBy('country_name','asc');
        if($keyword != ''){
            $shipp = $shipp->where('country_name','like','%'.$keyword.'%');
        }

        return $shipp->paginate($dataQty);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\AttributeValue  $attributeValue
     * @return \Illuminate\Http\Response
     */
    public function getInformation()
    {
        $cont = DB::table('informations')->get();
        return view('pages.page.information',['content' => $cont]);
    }


    public function storeInformation(Request $request)
    {
        try {
            DB::table('informations')
                ->updateOrInsert(
                    ['id'    =>  $request->id],
                    [
                        'title'    => $request->title,
                        'slug'     => Str::slug($request->title),
                        'back_link'  => config('app.front_url').Str::slug($request->title),
                        'content'  => $request->content,
                        'status'   => $request->status,
                        'created_at' => now()
                    ]
                );

            return response()->json([
                'status' => 'success',
                'message' => 'Information Added Successfully!'
            ], 200);

        } catch (\Throwable $th) {
            return $this->errorMessage();
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\AttributeValue  $attributeValue
     * @return \Illuminate\Http\Response
     */
    public function deleteInformation($id)
    {
        try {
            DB::table('informations')->where('id',$id)->delete();
            return $this->successMessage('Information Deleted Successfully!');
        } catch (\Throwable $th) {
            return $this->errorMessage();
        }
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
