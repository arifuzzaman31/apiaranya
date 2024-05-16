<?php

namespace App\Http\Controllers;

use App\Models\ColorStory;
use Illuminate\Http\Request;

class ColorStoryController extends Controller
{
    public function getColorStories()
    {
        return ColorStory::latest()->paginate(12);
    }

    public function getColorStoryPage()
    {
        // return getColors();
        return view('pages.story.create_color_story',['allColors' => getColors()]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required'
        ]);

        try {
            $colorStory = new ColorStory();
            $colorStory->title = $request->title;
            $colorStory->slug = \Str::slug($request->title);
            $colorStory->feature_image = $request->feature_image;
            $colorStory->bg_image = $request->bg_image;
            $colorStory->pr_imgs = json_encode($request->pr_imgs);
            $colorStory->short_description = $request->short_description;
            $colorStory->description = $request->description;
            $colorStory->color_id = $request->color_id;
            $colorStory->status = $request->status == true ? 1 : 0;
            $colorStory->save();

            return response()->json(['status' => 'success', 'message' => 'Color-Story Added Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
    public function update(Request $request)
    {
        $request->validate([
            'title' => 'required'
        ]);

        try {
            $colorStory = ColorStory::find($request->id);
            $colorStory->title = $request->title;
            $colorStory->slug = \Str::slug($request->title);
            $colorStory->banner_image = $request->banner_image;
            $colorStory->short_description = $request->short_description;
            $colorStory->description = $request->description;
            $colorStory->status = $request->status;
            $colorStory->update();

            return response()->json(['status' => 'success', 'message' => 'Blog Updated Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    public function edit($id)
    {
        $colorStory = ColorStory::find($id);
        return view('pages.story.edit_color_story',['colorStory' => $colorStory,'allColors' => getColors()]);
    }
}
