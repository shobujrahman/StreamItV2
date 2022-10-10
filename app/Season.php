<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Season extends Model
{
    protected $guarded = [];

    public function content(){
        return $this->belongsTo(Content::class,'content_id');
    }
    
    public function series(){
        return $this->belongsTo(Series::class,'series_id');
    }

    public function episodes(){
        return $this->hasMany(Item::class,'season_id')
            ->leftJoin('url_types','items.url_type','=','url_types.id')
            ->leftJoin('contents','items.content_id', 'contents.id')
            ->select('items.*','url_types.type_name','contents.prdct_price',
                'contents.prdct_key');
    }
}