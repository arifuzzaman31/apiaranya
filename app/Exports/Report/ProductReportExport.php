<?php

namespace App\Exports\Report;

use App\Models\Product;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Illuminate\Contracts\View\View;

class ProductReportExport implements  FromView,WithStyles
{
    protected $category,$subcategory;

    public function __construct($category,$subcategory) {
        $this->category = $category;
        $this->subcategory = $subcategory;
    }

    /**
    * @return \Illuminate\Support\Collection
    */
    public function view(): View
    {
        $data = Product::withCount(['order_details'  => function($q){
            $q->where('is_refunded',0);
        }])
        ->with(['category:id,category_name','order_details.order:id,order_id','subcategory:id,category_name','order_details' => function($q){
            $q->with('user')->where('is_refunded',0);
        }]);
        // if($this->category != '' ){
        //     $data = $data->where(function ($q) use ($this->category,$this->subcategory) {
        //         $q->where('category_id',$this->category)
        //         ->where('sub_category_id',$this->subcategory);

        //     })
        // }
        $data = $data->get();

        return view('pages.report.excel.product_report',['productdata' => $data]);
    }

    public function styles(Worksheet $sheet)
    {
        return [
            // Style the first row as bold text.
            1 => [
                'font'      => ['bold' => true, 'size' => 13, 'color' => ['argb' => 'FFFF9900']],
                'fill'      => [
                    'fillType' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID,
                    'color'    => ['rgb' => 'f3f7f0'],
                ],
                'alignment' => [
                    'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                    'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::VERTICAL_CENTER,
                ],
                'borders' => [
                    'allBorders' => [
                        'borderStyle' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        'color' => ['rgb' => 'E1E1E1'],
                    ],
                ],
            ],
        ];
    }
}
