<?php

namespace Database\Seeders;

use App\Models\Admin;
use App\Models\Page;
use App\Models\Permission;
use App\Models\Role;
use App\Models\RolePermission;
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
        \DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        Admin::query()->truncate();
        Page::query()->truncate();
        Role::query()->truncate();
        RolePermission::query()->truncate();
        Permission::query()->truncate();

        $this->call([
            CategorySeeder::class,
            PermissionSeeder::class,
        ]);

        $role = Role::create([
            'role_name' => 'Super Admin',
            'status' => 1
        ]);
        // $role = Role::find(1);
        $role->role_permission()->attach(Permission::all()->pluck('id'));

        Admin::create([
            "name" => "Aranya",
            "email" => "admin@admin.com",
            "password" => bcrypt("123"),
            "role_id"   => 1
        ]);
        \DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
