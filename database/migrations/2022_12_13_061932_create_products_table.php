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
            $table->foreignId('category_id');
            $table->foreignId('sub_category_id')->nullable();
            $table->foreignId('vat_tax_id')->nullable();
            $table->string('lead_time')->nullable();
            $table->string('product_image');
            $table->string('image_one')->nullable();
            $table->string('image_two')->nullable();
            $table->string('image_three')->nullable();
            $table->string('image_four')->nullable();
            $table->string('image_five')->nullable();
            $table->string('dimension')->nullable();
            $table->string('flat_colour')->nullable();
            $table->string('country_of_origin')->nullable();
            $table->string('weight')->nullable();
            $table->string('design_code')->nullable();
            $table->longText('description')->nullable();
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
