<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Validator;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(getParentCategory());
        return view('pages.category.category');
    }


    public function getCategory()
    {
        return view('pages.category.category_add');
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
        return response()->json(['status' => 'success', 'message' => 'Category Added Successfully!']);
        $validator = Validator::make($request->all(), [
            'category_name' => 'required',
            'category_image' => 'nullable',
            'parent_category' => 'required',
            'video_link' => 'required',
        ]);

        try {
            if (!$validator->passes()) {
                return response()->json(['error'=>$validator->errors()->all()]);
            }
            $category = new Category();
            $category->category_name    = $request->category_name;
            $category->parent_category  = $request->parent_category;
            $category->category_video   = $request->video_link;
            $category->status           = $request->status ? 1 : 0;
            if($request->file('category_image')){
                $file = $request->file('category_image');
                $filename = time().'_'.$file->getClientOriginalName();
                $file->move('images/category',$filename);
                $category->category_image   = $filename;
            }
            $category->save();
            return response()->json(['status' => 'success', 'message' => 'Category Added Successfully!']);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['status' => 'error', 'message' => $th->getMessage()]);
            return response()->json(['status' => 'error', 'message' => 'Something went wrong!']);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
}
