<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VideoCategory extends Model
{
    protected $guarded = [];


    public function series()
    {
        return $this->belongsToMany(Series::class,'category_series','series_id','category_id');
    }
}
