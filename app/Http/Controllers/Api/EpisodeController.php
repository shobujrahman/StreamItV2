<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Item;
use App\Season;
use App\Series;
use App\Star;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class EpisodeController extends Controller
{
     public function allEpisode (){
        
        
        $episodes = DB::table('items')
                                 ->leftJoin('series','items.series_id', 'series.id')
                                 ->leftJoin('url_types','items.url_type', 'url_types.id')
                                  ->leftJoin('contents','items.content_id', 'contents.id')
                                 ->select('items.*','url_types.type_name','contents.prdct_price',
                'contents.prdct_key')
                            ->where('content_type','=','series')
                            ->orderBy('id', 'DESC')
                            ->get();

         return response()->json([
            'success' => true,
            'data' => $episodes
        ]);
    }

    public function episodeBySeasonId($id){
        // $series = Series::find($id);
        // $episodeBySeason = Item::where('season_id',$id)->orderBy('id','desc')->get();

        //get specific season
        $episodeBySeason = DB::table('items')
                                 ->leftJoin('series','items.series_id', 'series.id')
                                 ->leftJoin('url_types','items.url_type', 'url_types.id')
                                  ->leftJoin('contents','items.content_id', 'contents.id')
                                 ->select('items.*','url_types.type_name','contents.prdct_price',
                'contents.prdct_key')
                            ->where('content_type','=','series')
                            ->where('items.season_id','=',$id)
                            ->orderBy('id', 'DESC')
                            ->get();

        
       $season = Season::with(['content'])->where('id',$id)
                            ->first();
       
        $series =Series::with(['actors'])
                            ->where('id',$season->series_id)
                            ->first();
        // $star= Star::all();
        
        if(!isset($episodeBySeason) ){
                        return response()->json([
                            'message'=>' Not Exist',
                            'Status'=>404]);
                    } 
                    else if (isset($episodeBySeason)) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            
                            'season_id'=> $season->id,
                            'season_name'=> $season->season_name,
                            'seasons_seriesId'=> $season->series_id,
                            'seasons_order'=> $season->order,
                            'subscription'=> $season->subscription,
                            'content_id'=> $season->content_id,
                            'content'=> $season->content,

                            'series'=> $series,
                            'data' => $episodeBySeason,
                            // 'actors' => $star,
                        //    $series
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'nothing has'
                        ], 500);
                    }
    }

    public function singleEpisode($id){
       
        $episodes = Item::with(['series'])
                            // ->where('content_type','=','series')
                            ->where('id','=',$id)
                            ->orderBy('id', 'DESC')
                            ->get();
        if(!isset($episodes) ){
                        return response()->json([
                            'message'=>' Not Exist',
                            'Status'=>404]);
                    } 
                    else if (isset($episodes)) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            'data' => $episodes,
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'nothing has'
                        ], 500);
                    }
    }



    public function viewcount($id){
        
        $episodes = Item::find($id);
        // Increment the post's view count by one
         Item::where('items.id', '=', $id)
            ->update(['view_count'      => $episodes->view_count + 1 ]);
    
            if($episodes){
                return response()->json(['message'=>'Count Saved Successfully'], 200);
            }else{
                return response()->json(['message'=>'Count could not be saved'], 404);
            }
        }
}