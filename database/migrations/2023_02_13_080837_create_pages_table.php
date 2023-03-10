<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pages', function (Blueprint $table) {
            $table->id();
            $table->string('page_name');
            $table->string('page_type')->nullable();
            $table->string('image_one')->nullable();
            $table->string('back_url_one')->nullable();
            $table->string('image_two')->nullable();
            $table->string('back_url_two')->nullable();
            $table->string('image_three')->nullable();
            $table->string('back_url_three')->nullable();
            $table->string('image_four')->nullable();
            $table->string('back_url_four')->nullable();
            $table->string('image_five')->nullable();
            $table->string('back_url_five')->nullable();
            $table->string('image_six')->nullable();
            $table->string('back_url_six')->nullable();
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('pages');
    }
}
