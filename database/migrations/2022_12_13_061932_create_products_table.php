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
            $table->string('slug');
            $table->integer('category_id');
            $table->integer('sub_category_id')->nullable();
            $table->string('description')->nullable();
            $table->string('vandor')->nullable();
            $table->string('brand')->nullable();
            $table->string('designer')->nullable();
            $table->string('embellishment')->nullable();
            $table->string('making')->nullable();
            $table->string('lead_time')->nullable();
            $table->string('season')->nullable();
            $table->string('variety')->nullable();
            $table->string('fit')->nullable();
            $table->string('artist_name')->nullable();
            $table->string('ingredients')->nullable();
            $table->string('consignment')->nullable();
            $table->string('product_image');
            $table->string('image_one')->nullable();
            $table->string('image_two')->nullable();
            $table->string('image_three')->nullable();
            $table->string('image_four')->nullable();
            $table->string('image_five')->nullable();
            $table->integer('cost')->nullable();
            $table->integer('mrp_price');
            $table->string('dimension')->nullable();
            $table->string('country_of_origin')->nullable();
            $table->string('weight')->nullable();
            $table->string('care')->nullable();
            $table->string('design_code')->nullable();
            $table->tinyInteger('status')->default(1)->comment("0 for down the product");
            $table->tinyInteger('is_discount')->default(0);
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
