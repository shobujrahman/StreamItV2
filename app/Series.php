<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Series extends Model
{
    protected $guarded = [];
    
    public function categories(){
        return $this->belongsToMany(VideoCategory::class,'category_series','series_id','category_id');
    }

    public function actors(){
        return $this->belongsToMany(Star::class,'star_series','series_id','star_id');
    }
    
    public function countries(){
        return $this->belongsToMany(Country::class,'country_series','series_id','country_id');
    }

    public function seasons(){
        return $this->hasMany(Season::class,'series_id');
    }

    public function episodes(){
        return $this->hasMany(Item::class,'series_id','season_id');
    }
}
