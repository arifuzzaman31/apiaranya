<?php

namespace App\Imports;

use App\Models\Inventory;
use App\Models\Product;
use App\Models\ProductTag;
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
        foreach($rows as $row)
        {
            DB::beginTransaction();
            $product = Product::create([
                'product_name' => $row[2], 
                'slug' => Str::slug($row[2]), 
                'category_id' => $row[5], 
                'sub_category_id' => $row[6], 
                'vat_tax_id' => $row[0], //not found
                'lead_time' => $row[15], 
                'product_image' => $row[25], 
                'image_one' => $row[25],
                'image_two' => $row[26], 
                'image_three' => $row[27], 
                'image_four' => $row[28], 
                'image_five' => $row[29], 
                'cost'      => $row[22], 
                'mrp_price' => $row[23], 
                'dimension' => $row[30], 
                // 'country_of_origin' => $row[0], 
                'weight' => $row[31], 
                'design_code' => $row[1], 
                'description' => $row[3], 
                'status' => 1, 
                'is_discount' => 0
            ]);

            if(!empty($row[19])){
                $product->product_colour()->attach(array($row[19]));
            }
            
            if(!empty($row[12])){
               
                $product->product_size()->attach(array($row[12]));
            }

            if(!empty($row)){
               
               $product->product_fabric()->attach(array($row[11]));
            }
            if(!empty($row)){
               
               $product->product_vendor()->attach(array($row[4]));
            }
            if(!empty($row)){
               
               $product->product_brand()->attach(array($row[7]));
            }
            if(!empty($row)){
               
               $product->product_designer()->attach(array($row[9]));
            }
            if(!empty($row)){
               
               $product->product_embellishment()->attach(array($row[10]));
            }
            if(!empty($row)){
               
               $product->product_making()->attach(array($row[14]));
            }
            if(!empty($row[16])){
               
               $product->product_season()->attach(array($row[16]));
            }
            if(!empty($row[17])){
               
               $product->product_variety()->attach(array($row[17]));
            }
            if(!empty($row[18])){
               
               $product->product_fit()->attach(array($row[18]));
            }
            if(!empty($row[20])){
               
               $product->product_artist()->attach(array($row[20]));
            }
            if(!empty($row[21])){
               
               $product->product_consignment()->attach(array($row[21]));
            }
            if(!empty($row[13])){
               
               $product->product_ingredient()->attach(array($row[13]));
            }
            if(!empty($row[32])){
               
               $product->product_care()->attach(array($row[32]));
            }

            if(!empty($row[33])){

                ProductTag::create([
                    'product_id' => $product->id,
                    'keyword_name' => $row[33]
                ]);
            }

            // Inventory::create([
            //     'product_id'  = $product->id,
            //     'colour_id'   = $value['colour_id'],
            //     'size_id'     = $value['size_id'],
            //     'sku'         = $value['sku'],
            //     'stock'       = $value['qty']
            // ]);

        }
    }
}
