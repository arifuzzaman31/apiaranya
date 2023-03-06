<?php

namespace App\Traits;
use App\Models\Artist;

trait ProductTrait {

   public function getArtist($data = [])
   {
       $noPagination = in_array('no_paginate',$data);
       $per_page = in_array('per_page',$data);
       $take_only = in_array('take_only',$data);
    
        $dataQty = $per_page ? $data['per_page'] : 10;
        $artist = Artist::orderBy('id','desc');
        if($noPagination != false){
            if ($take_only != false) {
                $artist->take($data['take_only']);
            }
            $artist = $artist->get();
        } else {
            $artist = $artist->paginate($dataQty);
        }
        return response()->json($artist);
   }

}