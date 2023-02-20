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
            $table->foreignId('user_id');
            $table->json('order_data')->default(new Expression('(JSON_ARRAY())'))->change();
            $table->double('total_price',8, 4);
            $table->double('vat_rate')->default(0)->comment   = "vat rate in percentage '%'";
            $table->double('vat_amount')->default(0)->comment = "value added vat amount";
            $table->integer('total_item')->default(0);
            $table->string('shipping_method')->nullable();
            $table->string('payment_method')->nullable()->comment = "0 for COD/1 for MPAY/ 2 for POS/ 3 for CCRD/4 for BOD if not set default COD";
            $table->string('transaction_id')->nullable();
            $table->double('discount')->default(0);
            $table->double('coupon_discount')->default(0);
            $table->tinyInteger('payment_status')->default(0)->comment = "0 not paid 1 = paid";
            $table->string('validation_id')->nullable();
            $table->date('order_date');
            $table->date('requested_delivery_date')->nullable();
            $table->date('payment_date')->nullable();
            $table->integer('shipping_amount')->default(0);
            $table->string('tracking_id')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->tinyInteger('is_same_address')->default(0);
            $table->tinyInteger('order_position')->default(0)->comment = "0=pending 1=process 2=OnProcess 3=Delivered";
            $table->enum('delivery_type',['home','pickup point'])->default('home')->comment = "0 for home, 1 for pickup point";
            $table->enum('percel_type',['Box','DOC'])->default('Box')->comment = "0 for Box, 1 for DOC";
            $table->integer('pickup_point_no')->nullable()->comment = "pickup point id";
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
        Schema::dropIfExists('orders');
    }
}
