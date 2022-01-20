<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEvisasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('evisas', function (Blueprint $table) {
            $table->id();
            $table->string('firstname');
            $table->string('lastname');
            $table->string('country_of_birth');
            $table->string('place_of_birth');
            $table->date('dob');
            $table->string('gender');
            $table->string('mother_name');
            $table->string('father_name');
            $table->string('passport_number');
            $table->date('passport_issue_date');
            $table->string('passport_exp_date');
            $table->string('phone');
            $table->string('email');
            $table->string('address');
            $table->string('zipcode');
            
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
        Schema::dropIfExists('evisas');
    }
}
