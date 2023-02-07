<?php

use App\Http\AllStatic;

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

    function uniqueString() {
        $letter = 'abcdefghijklmnopqrstuvwxyz0987654321';
        return substr(str_shuffle(strtoupper($letter)), 0, 6);
    }

    function deliveryPosition($status){
        $text = "";
        switch ($status) {
            case 1:
                # code...
                $text = "Processig";
                break;
            case 2:
                # code...
                $text = "On Delivery";
                break;
            case 3:
                # code...
                $text = "Delivered";
                break;
            
            default:
                $text = "Pending";
                break;
        }
        return $text;
    }

?>