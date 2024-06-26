<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePickuphubsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pickuphubs', function (Blueprint $table) {
            $table->id();
            $table->string('hub_name');
            $table->string('hub_code')->nullable();
            $table->string('slug')->nullable();
            $table->string('contact_person')->nullable();
            $table->string('pick_division')->nullable();
            $table->string('email')->nullable();
            $table->string('pick_district')->nullable();
            $table->string('pick_thana')->nullable();
            $table->string('pick_union')->nullable();
            $table->string('pick_mobile')->nullable();
            $table->string('type')->comment("store or warehouse");
            $table->text('hub_address');
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
        Schema::dropIfExists('pickuphubs');
    }
}
