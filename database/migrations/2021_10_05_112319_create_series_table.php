<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSeriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('series', function (Blueprint $table) {
            $table->id();
            $table->string('series_name');

            // $table->bigInteger('cat_id')->unsigned();
            // $table->foreign('cat_id')->references('id')
            // ->on('video_categories');

            // $table->bigInteger('country_id')->unsigned();
            // $table->foreign('country_id')->references('id')
            // ->on('countries');

            $table->string('thumbnail_image');
            $table->string('poster_image');
            $table->string('trailer');
            // $table->string('link_quality_type');
            $table->text('description');
            $table->date('release_date');

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
        Schema::dropIfExists('series');
    }
}
