<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->string('category_name');
            $table->string('slug')->nullable();
            $table->string('description')->nullable();
            $table->string('parent_category')->nullable();
            $table->string('category_image_one')->nullable();
            $table->string('category_image_two')->nullable();
            $table->string('category_image_three')->nullable();
            $table->string('category_video')->nullable();
            $table->tinyInteger('precedence')->default(0)->comment("Set precedency");
            $table->tinyInteger('status')->default(1)->comment("0 for down the category");
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
