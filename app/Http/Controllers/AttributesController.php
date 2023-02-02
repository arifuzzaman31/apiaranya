<?php

namespace App\Http\Controllers;

use App\Models\Attributes;
use Attribute;
use Illuminate\Http\Request;
use Validator;

class AttributesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pages.attribute.attribute');
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

    public function getAttrData(Request $request)
    {
        $draw = $request->get('draw');
        $start = $request->get('start');
        $rowPerPage = $request->get('length');

        $orderArray = $request->get('order');
        $columnNameArray = $request->get('columns');
        $seachArray = $request->get('search');
        $columnIndex = $orderArray[0]['column'];
        $columnName = $columnNameArray[$columnIndex]['data'];
        $columnSortOrder = $orderArray[$columnIndex]['dir'];
        $searchValue = $seachArray['value'];
        
        $attribute = \DB::table('attributes');
        
        $total = $attribute->count();

        $totalFilter = \DB::table('attributes');
        if(!empty($searchValue)){
            $totalFilter = $totalFilter->where('name','like','%'.$searchValue.'%');
            $totalFilter = $totalFilter->where('description','like','%'.$searchValue.'%');
            $totalFilter = $totalFilter->orWhere('status','like','%'.$searchValue.'%');
        }

        $totalFilter = $totalFilter->count();

        $arrData = \DB::table('attributes');
        $arrData = $arrData->skip($start)->take($rowPerPage);
        $arrData = $arrData->orderBy($columnName,$columnSortOrder);
        if(!empty($searchValue)){
            $arrData = $arrData->where('name','like','%'.$searchValue.'%');
            $arrData = $arrData->where('description','like','%'.$searchValue.'%');
            $arrData = $arrData->orWhere('status','like','%'.$searchValue.'%');
        }
        $arrData = $arrData->get();
        // $arrData = $arrData->toSql();

        $response = array(
            "draw"  => intVal($draw),
            "recordsTotal"  => $total,
            "recordsFiltered"  => $totalFilter,
            "data" => $arrData
        );
        return response()->json($response);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'attribute_name' => 'required',
            'country_of_origin' => 'required'
        ]);

        try {
            if (!$validator->passes()) {
                return response()->json(['error'=>$validator->errors()->all()]);
            }
            $attr = new Attributes();
            $attr->name                = $request->attribute_name;
            $attr->description         = $request->description;
            $attr->country_of_origin   = $request->country_of_origin;
            $attr->status              = $request->status ? 1 : 0;
            $attr->save();
            return response()->json(['status' => 'success', 'message' => 'Attribute Added Successfully!']);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['status' => 'error', 'message' => $th->getMessage()]);
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
            return $th;
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Attributes  $attributes
     * @return \Illuminate\Http\Response
     */
    public function show(Attributes $attributes)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Attributes  $attributes
     * @return \Illuminate\Http\Response
     */
    public function edit(Attributes $attributes)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Attributes  $attributes
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id, Attributes $attributes)
    {
        $validator = Validator::make($request->all(), [
            'attribute_name' => 'required',
            'country_of_origin' => 'required'
        ]);

        try {
            if (!$validator->passes()) {
                return response()->json(['error'=>$validator->errors()->all()]);
            }
            $attr = $attributes->find($id);
            $attr->name = $request->attribute_name;
            $attr->description = $request->description;
            $attr->country_of_origin = $request->country_of_origin;
            $attr->status              = $request->status ? 1 : 0;
            $attr->update();
            return response()->json(['status' => 'success', 'message' => 'Attribute Updated Successfully!']);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['status' => 'error', 'message' => $th->getMessage()]);
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
            return $th;
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Attributes  $attributes
     * @return \Illuminate\Http\Response
     */
    public function destroy(Attributes $attributes,$id)
    {
        try {
            $attr = $attributes->find($id);
            $attr->delete();
            return response()->json(['status' => 'success', 'message' => 'Attribute Deleted Successfully!']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' => $th->getMessage()]);
        }
        return response()->json(['data' => $id]);
    }
}
