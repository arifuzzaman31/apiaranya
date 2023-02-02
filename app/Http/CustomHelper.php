<?php


    function getParentCategory(){

        return App\Models\Category::select(['id','category_name','parent_category'])->orderBy('id')->get();
        
        return array(
            '1' => 'women',
            '2' => 'men',
            '3' => 'kids',
            '4' => 'accessories',
            '5' => 'home furnishings',
            '6' => 'beauty',
            '7' => 'food'
        );
    }





?>