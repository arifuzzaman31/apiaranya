<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Query\Expression;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('order_id');
            $table->foreignId('product_id');
            $table->foreignId('user_id');
            $table->json('order_data')->default(new Expression('(JSON_ARRAY())'))->change();
            $table->double('total_price',8, 2);
            $table->string('shipping_method')->nullable();
            $table->string('payment_method')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->tinyInteger('order_position')->default(0)->comment = "0=pending 1=process 2=OnProcess 3=Delivered";
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
        Schema::dropIfExists('orders');
    }
}
