<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\Page;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Admin::query()->truncate(); 
        Page::query()->truncate();
        $this->call([
            CategorySeeder::class
        ]);
    
        Admin::create([
            "name" => "Aranya",
            "email" => "admin@admin.com",
            "password" => bcrypt("123")
        ]);

        Page::create([
            'page_name' => 'home', 
            'page_type' => 'home', 
            'image_one' => '', 
            'back_url_one' => '', 
            'image_two' => '', 
            'back_url_two' => '', 
            'image_three' => '', 
            'back_url_three' => '', 
            'image_four' => '', 
            'back_url_four' => '', 
            'image_five' => '', 
            'back_url_five' => '', 
            'image_six' => '', 
            'back_url_six' => '', 
            'status' => 1
        ]);
    }
}
