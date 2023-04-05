<?php

use App\Http\AllStatic;

    function getParentCategory(){

        return App\Models\Category::select(['id','category_name','parent_category','slug'])->orderBy('id')->get();
        
        return array(
            '1' => 'women',
            '2' => 'men',
            '3' => 'kids',
            '4' => 'accessories',
            '5' => 'home',
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

    function paymentMethodType($status){
        $text = "";
        switch ($status) {
            case 1:
                # code...
                $text = "MPAY";
                break;
            case 2:
                # code...
                $text = "POS";
                break;
            case 3:
                # code...
                $text = "CCRD";
                break;

            case 4:
                # code...
                $text = "BOD";
                break;
            
            default:
                $text = "COD";
                break;
        }
        return $text;
    }

    function orderStatus($status){
        $text = "";
        switch ($status) {
            case 0:
                # code...
                $text = "Cancel";
                break;
            case 2:
                # code...
                $text = "On-Hold";
                break;
            
            default:
                $text = "Active";
                break;
        }
        return $text;
    }

    function myFilter($var){
        return ($var !== NULL && $var !== FALSE && $var !== "");
    }

    function rangDivider()
    {
        
    }

?>