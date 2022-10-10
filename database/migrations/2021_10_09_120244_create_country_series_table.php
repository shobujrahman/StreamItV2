<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCountrySeriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('country_series', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('country_id');

            $table->foreign('country_id')->references('id')->on('countries');

            $table->unsignedBigInteger('series_id');

            $table->foreign('series_id')->references('id')->on('series');
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
        Schema::dropIfExists('country_series');
    }
}
