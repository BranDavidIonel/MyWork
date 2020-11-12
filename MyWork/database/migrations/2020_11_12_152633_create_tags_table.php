<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTagsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tags', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('image');
            $table->timestamps();
        });
        Schema::create('myproject_tag', function (Blueprint $table) {
            $table->BigIncrements('id');
            $table->unsignedBigInteger('myproject_id');
            $table->unsignedBigInteger('tag_id');
            $table->timestamps();
            //$table->unique('article_id','tag_id');
            $table->foreign('myproject_id')->references('id')->on('myprojects')->onDelete('cascade');
            $table->foreign('tag_id')->references('id')->on('tags')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tags');
        Schema::dropIfExists('myproject_tag');
    }
}
