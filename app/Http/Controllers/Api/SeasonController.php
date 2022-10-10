<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Season;
use App\Series;
use Illuminate\Http\Request;

class SeasonController extends Controller
{
    public function allSeason(){
        // $series = Series::find($id);
        $seasons = Season::with(['content','series','episodes'])->get();
        return response()->json([
            'success' => true,
            'data' => $seasons
        ]);
    }


    public function seasonBySeriesId($id){
        $series = Series::find($id);
        $seasonBySeries = Season::with(['content','episodes'])->where('series_id',$id)->get();

        // $season = Season::all();
       
        $series =Series::with(['actors'])
                            ->where('id',$id)
                            ->first();
        
        if(!isset($seasonBySeries) ){
                        return response()->json([
                            'message'=>' Not Exist',
                            'Status'=>404]);
                    } 
                    else if (isset($seasonBySeries)) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            'series'=> $series,
                            'data' => $seasonBySeries,
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'nothing has'
                        ], 500);
                    }
    }

    
}