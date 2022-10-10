<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reguser extends Model
{
    protected $fillable = [
        'user_type', 
        'name',
        'email',
        'password',
        'confirm_code',
        'status',
        'image',
    ];
}
