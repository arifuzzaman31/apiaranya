<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id');
            $table->foreignId('product_id');
            $table->integer('category_id');
            $table->foreignId('sub_category_id');
            $table->foreignId('colour_id')->nullable()->default(0);
            $table->foreignId('size_id')->nullable()->default(0);
            $table->foreignId('fabric_id')->nullable()->default(0);
            $table->foreignId('user_id')->comment = "customer_id";
            $table->integer('quantity');
            $table->double('selling_price',8,4);
            $table->double('buying_price',8,4);
            $table->double('total_buying_price',8,4);
            $table->double('total_selling_price',8,4);
            $table->double('unit_discount')->default(0);
            $table->double('total_discount')->default(0);
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('order_details');
    }
}
