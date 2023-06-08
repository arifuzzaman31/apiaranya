<?php

namespace App\Exports;
use App\Models\Product;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
// use Maatwebsite\Excel\Concerns\WithEvents;
// use Maatwebsite\Excel\Events\AfterSheet;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithMapping;

class AddProduct implements FromCollection, WithHeadings, ShouldAutoSize
{
    public function collection()
    {
        return Product::with(['category:id,category_name','subcategory','inventory:stock,mrp,sku'])->get();
    }

    public function headings(): array
    {
        return [
            'id',
            'title',
            'description',
            'availability',
            'condition',
            'price',
            'link',
            'image_link',
            'brand',
            'google_product_category',
            'fb_product_category',
            'quantity_to_sell_on_facebook',
            'sale_price',
            'sale_price_effective_date',
            'item_group_id',
            'gender',
            'color',
            'size',
            'age_group',
            'material',
            'pattern',
            'shipping',
            'shipping_weight',
            'style[0]'
            // Add more column headings as needed
        ];
    }

    public function map($rows): array
    {
        return [
            $rows->id,
            $rows->product_name,
            $rows->description,
            'in stock',
            'new',
            $rows->inventory[0]->price .' BDT',
            $rows->image_one,
            $rows->image_one,
            $rows->brand->brand_name,
            $rows->subcategory->id != 0 ? $rows->category->category_name.'>'.$rows->subcategory->category_name : $rows->category->category_name,
            $rows->subcategory->id != 0 ? $rows->category->category_name.'>'.$rows->subcategory->category_name : $rows->category->category_name,
            $rows->inventory[0]->stock,
            $rows->inventory[0]->mrp,
            '',
            '',
            '',
            $rows->flat_colour,
            '',
            '',
            '',
            '',
            $rows->weight
        ];
    }

    // public function registerEvents(): array
    // {
    //     return [
    //         AfterSheet::class => function(AfterSheet $event) {
    //             // Add your code to add a new row here
    //             $event->sheet->append(['4564','testing data','test1', 'test2','new','in stock','5456 MRP','link1','link2']);
    //         },
    //     ];
    // }
}
