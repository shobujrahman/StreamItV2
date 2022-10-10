<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ItemUrl extends Model
{
    protected $guarded = [];

    public function item(){
        return $this->belongsTo(Item::class,'item_id');
    }
}
