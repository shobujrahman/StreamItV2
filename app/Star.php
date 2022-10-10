<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Star extends Model
{
    protected $guarded = [];

    public function series()
    {
        return $this->belongsTo(Series::class,'category_series','series_id','category_id');
    }


     public function item(){
        return $this->belongsToMany(Item::class,'star_series','series_id','star_id');
    }
}
