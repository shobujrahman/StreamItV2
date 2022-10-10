<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $guarded = [];

    public function season(){
        return $this->hasMany(Season::class,'content_id')
        ->leftJoin('contents','seasons.content_id', 'contents.id')
            ->select('seasons.*','contents.prdct_price',
                'contents.prdct_key');
    }
}