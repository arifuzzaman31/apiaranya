<?php

namespace Database\Seeders;

use App\Models\Admin;
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
        $this->call([
            CategorySeeder::class
        ]);
    
        Admin::create([
            "name" => "Aranya",
            "email" => "admin@admin.com",
            "password" => bcrypt("123")
        ]);
    }
}
