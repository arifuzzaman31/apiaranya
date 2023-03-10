<?php

namespace App\Imports;

use App\Models\Inventory;
use App\Models\Product;
use App\Models\ProductTag;
use App\Models\CategoryFabric;
use App\Models\ProductSize;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToCollection;
use Str;

class ProductImport implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
        unset($rows[0]);
      //   return count($rows);
        $data = array_filter($rows->toArray(),function ($number) {
                 return $number[0] !== null;
             });
        foreach($data as $row)
        {
            $ch = Product::where('design_code',$row[1])->first();
            if($ch){
                  $this->putCombAttr($row,$ch);
                  if($row[12] != ''){
         
                      $chksiz = ProductSize::where(
                        ['product_id' =>  $ch->id,'size_id' => $row[12]]
                        )->first();

                     if(empty($chksiz)){
                        ProductSize::create(
                              ['product_id' =>  $ch->id,'size_id' => $row[12]]
                           );
                     }
                  }

            } else {

               if($row[25] != ''){
               try {
                  DB::beginTransaction();
                  $imglink = 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/';
                  $product = Product::create([
                      'product_name' => $row[2], 
                      'slug' => Str::slug($row[2]), 
                      'category_id' => (int) $row[5], 
                      'sub_category_id' => (int)$row[6], 
                      'vat_tax_id' => $row[34], //not found
                      'lead_time' => $row[15], 
                      'product_image' => $imglink.$row[1].'/'.$row[25].'.png', 
                      'image_one' => $imglink.$row[1].'/'.$row[25].'.png',
                      'image_two' => $row[26] !='' ? $imglink.$row[1].'/'.$row[26].'.png' : '', 
                      'image_three' => $row[27] !='' ? $imglink.$row[1].'/'.$row[27].'.png' : '', 
                      'image_four' => $row[28] !='' ? $imglink.$row[1].'/'.$row[28].'.png' : '', 
                      'image_five' => $row[29] !='' ? $imglink.$row[1].'/'.$row[29].'.png' : '', 
                      'cost'      => (float)$row[22], 
                      'mrp_price' => (float)$row[23], 
                      'dimension' => $row[30], 
                      // 'country_of_origin' => $row[0], 
                      'weight' => $row[31], 
                      'design_code' => $row[1], 
                      'description' => $row[3], 
                      'status' => 1, 
                      'is_discount' => 0
                  ]);
      
                  if(!empty($row[19])){ 
                     $pc = explode(",",$row[19]);
                     $product->product_colour()->attach($pc);
                     
                     $this->putCombAttr($row,$product);
                  }
                  
                  if(!empty($row[12])){
                     $ps = explode(",",$row[12]);
                      $product->product_size()->attach($ps);
                  }
      
                  if(!empty($row[11])){
                     $pb = explode(",",$row[11]);
                     $product->product_fabric()->attach($pb);
      
                     $cid = (int)$row[6] != '' ? (int)$row[6] : (int) $row[5];
      
                      foreach($pb as $fab){
                          $chk = CategoryFabric::where(
                              ['category_id' =>  $cid,'fabric_id' => $fab]
                              )->first();
      
                          if(empty($chk)){
                              CategoryFabric::create([
                                  'category_id' => $cid,
                                  'fabric_id' => $fab
                              ]);
                          }
                      }
                  }
                  if(!empty($row[4])){
                     $pv = explode(",",$row[4]);
                     $product->product_vendor()->attach($pv);
                  }
                  if(!empty($row[7])){
                     $pbr = explode(",",$row[7]);
                     $product->product_brand()->attach($pbr);
                  }
                  if(!empty($row[9])){
                     $pd = explode(",",$row[9]);
                     $product->product_designer()->attach($pd);
                  }
                  if(!empty($row[10])){
                     $pem = explode(",",$row[10]);
                     $product->product_embellishment()->attach($pem);
                  }
                  if(!empty($row[14])){
                     $pmk = explode(",",$row[14]);
                     $product->product_making()->attach($pmk);
                  }
                  if(!empty($row[16])){
                     $pse = explode(",",$row[16]);
                     $product->product_season()->attach($pse);
                  }
                  if(!empty($row[17])){
                     $pva = explode(",",$row[17]);
                     $product->product_variety()->attach($pva);
                  }
                  if(!empty($row[18])){
                     $pf = explode(",",$row[18]);
                     $product->product_fit()->attach($pf);
                  }
                  if(!empty($row[20])){
                     $par = explode(",",$row[20]);
                     $product->product_artist()->attach($par);
                  }
                  if(!empty($row[21])){
                     $pco = explode(",",$row[21]);
                     $product->product_consignment()->attach($pco);
                  }
                  if(!empty($row[13])){
                     $pin = explode(",",$row[13]);
                     $product->product_ingredient()->attach($pin);
                  }
                  if(!empty($row[32])){
                     $pca = explode(",",$row[32]);
                     $product->product_care()->attach($pca);
                  }
      
                  if(!empty($row[33])){
      
                      ProductTag::create([
                          'product_id' => $product->id,
                          'keyword_name' => $row[33]
                      ]);
                  }
      
                  DB::commit();
               } catch (\Throwable $th) {
                  //throw $th;
                  DB::rollBack();
                  // return $th;
      
               }
            }
            }
         // dd($row[2]);
            

        }
    }

    public function putCombAttr($row,$ch)
    {
      $pc = explode(",",$row[19]);
      if(!empty($pc)){
         foreach($pc as $vl)
         {
            Inventory::create([
               'product_id'  => $ch->id,
               'colour_id'   => $vl ? $vl : 0,
               'size_id'     => $row[12] ? $row[12] : 0,
               'sku'         => $row[0],
               'stock'       => (int)$row[24]
            ]);
         }

      } else {
         Inventory::create([
            'product_id'  => $ch->id,
            'colour_id'   => 0,
            'size_id'     => $row[12] ? $row[12] : 0,
            'sku'         => $row[0],
            'stock'       => (int)$row[24]
         ]);
            
      }
    }
}
