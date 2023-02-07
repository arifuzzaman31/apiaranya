<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Category::query()->truncate();

        DB::insert("INSERT INTO `categories` (`id`,`category_name`, `description`, `parent_category`, `category_image_one`,`category_image_two`, `category_image_three`, `category_video`,`precedence`) VALUES
            (1,'Women',null,0,null,null,null,null,1),
            (2,'Men',null,0,null,null,null,null,2),
            (3,'Kids',null,0,null,null,null,null,3),
            (4,'Home Furnishings',null,0,null,null,null,null,4),
            (5,'Beauty Collection',null,0,null,null,null,null,5),
            (6,'Accessories',null,0,null,null,null,null,6),
            (7,'Saree',null,1,null,null,null,null,1),
            (7,'Salwar Kameez',null,1,null,null,null,null,2),
            (7,'Kurti & Fatua',null,1,null,null,null,null,3),
            (7,'Tops & Shirts',null,1,null,null,null,null,4),
            (7,'Kimono',null,1,null,null,null,null,5),
            (7,'Kaftan',null,1,null,null,null,null,6),
            (8,'Panjabi',null,2,null,null,null,null,1),
            (9,'Vest',null,0,null,null,null,null,2)
        ");
    }
}
