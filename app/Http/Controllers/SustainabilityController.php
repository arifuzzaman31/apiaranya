<?php

namespace App\Http\Controllers;

use App\Models\Sustainability;
use Illuminate\Http\Request;

class SustainabilityController extends Controller
{
    public function getSustainData(Request $request)
    {
        return Sustainability::latest()->paginate(12);
    }
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required'
        ]);

        try {
            $sustain = new Sustainability();
            $sustain->title = $request->title;
            $sustain->slug = \Str::slug($request->title);
            $sustain->feature_image = $request->feature_image;
            $sustain->description = $request->description;
            $sustain->status = $request->status == true ? 1 : 0;
            $sustain->save();

            return response()->json(['status' => 'success', 'message' => 'Sustainability Added Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
    public function update(Request $request)
    {
        // return $request->all();
        $request->validate([
            'title' => 'required'
        ]);

        try {
            $sustain = Sustainability::find($request->id);
            $sustain->title = $request->title;
            $sustain->slug = \Str::slug($request->title);
            $sustain->feature_image = $request->feature_image;
            $sustain->description = $request->description;
            $sustain->status = $request->status == true ? 1 : 0;
            $sustain->update();

            return response()->json(['status' => 'success', 'message' => 'Sustainability Updated Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    public function edit($id)
    {
        $sustain = Sustainability::find($id);
        return view('pages.story.edit_sustain',['sustainability' => $sustain]);
    }
    public function destroy($id)
    {
        try{
            Sustainability::find($id)->delete();
            return response()->json(['status' => 'success', 'message' => 'Sustainability Deleted Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}
