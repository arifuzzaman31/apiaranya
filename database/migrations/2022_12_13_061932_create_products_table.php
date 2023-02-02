<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_name');
            $table->integer('category_id');
            $table->integer('sub_category_id')->nullable();
            $table->integer('sku')->nullable();
            $table->string('description')->nullable();
            $table->string('product_image');
            $table->string('image_one')->nullable();
            $table->string('image_two')->nullable();
            $table->string('product_three')->nullable();
            $table->string('product_four')->nullable();
            $table->string('product_five')->nullable();
            $table->integer('cost')->nullable();
            $table->integer('mrp_price');
            $table->string('dimension')->nullable();
            $table->string('country_of_origin')->nullable();
            $table->string('weight')->nullable();
            $table->string('care')->nullable();
            $table->string('design_code')->nullable();
            $table->tinyInteger('status')->default(1)->comment("0 for down the product");
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
        Schema::dropIfExists('products');
    }
}
