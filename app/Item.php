<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    protected $guarded = [];

    public function series(){
        return $this->belongsTo(Series::class,'series_id');
    }

    public function seasons(){
        return $this->belongsTo(Season::class,'season_id');
    }

    public function urlType(){
        return $this->belongsTo(UrlType::class,'url_type');

    }

    public function actors(){
        return $this->belongsToMany(Star::class,'star_series','series_id','star_id');
    }

    public function urls(){
        return $this->hasMany(ItemUrl::class,'item_id')->select('id','item_id','quality','url');
    }

    public function tvcategory(){
        return $this->belongsTo(TvCategory::class,'cat_id');
    }

    public function videocategory(){
        return $this->belongsTo(VideoCategory::class,'cat_id');
    }
    
    public function country(){
        return $this->belongsTo(Country::class,'cntry_id');
    }

    public function tokenType(){
        return $this->belongsTo(TokenType::class,'token_type');
    }

    public function agentType(){
        return $this->belongsTo(UserAgentType::class,'agent_type');
    }
}
