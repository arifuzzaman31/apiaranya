<?php

namespace App\Exports;

use App\Models\Inventory;
use Maatwebsite\Excel\Concerns\FromCollection;

class ProductExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $product = Inventory::with('product.category:id,category_name','product.subcategory:id,category_name',
        'product.product_brand:id,brand_name','product.product_fabric:id,fabric_name','colour:id,color_name',
        'product.product_size:id,size_name','product.product_designer:id,designer_name','product.product_embellishment:id,embellishment_name',
        'product.product_making:id,making_name','product.product_season:id,season_name','product.product_variety:id,variety_name',
        'product.product_fit:id,fit_name','product.product_artist:id,artist_name','product.product_consignment:id,consignment_name',
        'product.product_ingredient:id,ingredient_name')->take(8)->get();

        return view('pages.order.excel.order_excel',['products' => $product]);
    }
}
