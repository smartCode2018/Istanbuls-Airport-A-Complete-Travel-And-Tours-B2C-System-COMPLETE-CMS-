<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTouristPassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tourist_passes', function (Blueprint $table) {
            $table->id();
            $table->string('firstname'); 
            $table->string('lastname');
            $table->string('email');
            $table->string('pass_type');
            $table->string('phone');
            $table->string('nationality');
            $table->string('request_date');
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
        Schema::dropIfExists('tourist_passes');
    }
}
