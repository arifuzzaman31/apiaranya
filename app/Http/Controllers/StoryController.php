<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StoryController extends Controller
{
    public function index()
    {
        $story = DB::table('stories')->first();
        return view('pages.story.home',['story' => $story]);
    }

    public function getStoryData()
    {
        return DB::table('stories')->where('use_for','home')->first();
    }

    public function getAboutData()
    {
        return DB::table('about_us')->first();
    }
    public function updateHomeData(Request $request)
    {
        try {
            DB::table('stories')->where('use_for','home')->update([
                'banner_link' => $request->banner_link
            ]);
            return response()->json(['status' => 'success', 'message' => 'Story Home Updated Successfully!']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    public function updateAboutData(Request $request)
    {
        try {
            DB::table('about_us')->update([
                'title' => $request->title,
                'slug' => \Str::slug($request->title),
                'feature_image' => $request->feature_image,
                'description' => $request->description
            ]);
            return response()->json(['status' => 'success', 'message' => 'About Updated Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

}
