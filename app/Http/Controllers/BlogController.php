<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function getBlogs(Request $request)
    {
        $noPagination = $request->get('no_paginate');
        $limit = $request->get('taken');
        $data = Blog::latest();
        if($noPagination != ''){
            if($limit != ''){
                $data = $data->take($limit);
            }
            $data = $data->get();
        } else {
            $data = $data->paginate(12);
        }
        return $data;
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required'
        ]);

        try {
            $blog = new Blog();
            $blog->title = $request->title;
            $blog->slug = \Str::slug($request->title);
            $blog->banner_image = $request->banner_image;
            $blog->short_description = $request->short_description;
            $blog->description = $request->description;
            $blog->status = $request->status == true ? 1 : 0;
            $blog->save();

            return response()->json(['status' => 'success', 'message' => 'Blog Added Successfully !']);
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
            $blog = Blog::find($request->id);
            $blog->title = $request->title;
            $blog->slug = \Str::slug($request->title);
            $blog->banner_image = $request->banner_image;
            $blog->short_description = $request->short_description;
            $blog->description = $request->description;
            $blog->status = $request->status == true ? 1 : 0;
            $blog->update();

            return response()->json(['status' => 'success', 'message' => 'Blog Updated Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }

    public function edit($id)
    {
        $blog = Blog::find($id);
        return view('pages.story.edit_blog',['blogs' => $blog]);
    }
    public function destroy($id)
    {
        try{
            Blog::find($id)->delete();
            return response()->json(['status' => 'success', 'message' => 'Blog Deleted Successfully !']);
        } catch (\Throwable $th) {
            return response()->json(['status' => 'error', 'message' =>  $th->getMessage()]);
        }
    }
}
