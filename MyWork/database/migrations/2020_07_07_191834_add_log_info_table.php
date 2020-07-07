<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLogInfoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log_info', function (Blueprint $table) {
            $table->id();
            $table->id('id');
            $table->string('ip');
            $table->string('browser');
            $table->string('device');
            $table->string('os');
            $table->dateTime('date_time_log', 0);
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
        Schema::dropIfExists('log_info');
    }
}
