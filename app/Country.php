<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $guarded = [];

    public function series(){
        return $this->belongsToMany(Series::class,'country_series','series_id','country_id');
    }
}
