<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Series;
use Illuminate\Http\Request;

class SeriesController extends Controller
{
    public function allSeries(){
        
        $series = Series::with(['categories','seasons'])->orderBy('id','desc')->get();
    
        return response()->json([
            'success' => true,
            'data' => $series
        ]);
    }
}
