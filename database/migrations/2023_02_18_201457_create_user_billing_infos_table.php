<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserBillingInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_billing_infos', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id');
            $table->foreignId('order_id');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('country');
            $table->string('city')->nullable();
            $table->string('thana')->nullable();
            $table->string('area')->nullable();
            $table->string('email');
            $table->string('phone');
            $table->text('apartment')->nullable();
            $table->string('post_code')->nullable();
            $table->string('street_address');
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
        Schema::dropIfExists('user_billing_infos');
    }
}
