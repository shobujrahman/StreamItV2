<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Item;
use App\Settings;
use App\TvCategory;
use App\UrlType;
use App\Country;
use App\TokenType;
use App\UserAgentType;
use Session;
use DB;

class TvChannelController extends Controller
{
    
    public function index(Request $request)
    {
            $settings = Settings::find(1);

            
            $items = DB::table('items')
        ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
        ->leftJoin('url_types','items.url_type', 'url_types.id')
        ->leftJoin('countries','items.cntry_id', 'countries.id')
        ->leftJoin('token_types','items.token_type', 'token_types.id')
        ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
        ->leftJoin('contents','items.content_id', 'contents.id')
        ->select('items.*', 
                'tv_categories.tv_cat_name',
                'url_types.type_name',
                'countries.country_name',
                'token_types.token_name',
                'user_agent_types.agent_name',
                'contents.prdct_price',
                'contents.prdct_key'
        )->where('content_type','channel')
        ->orderBy('id', 'DESC')->get();

         return response()->json([
                 'success' => true,
                 
                 'data' =>  $items
        ]);
    
        
    }

     public function show($id)
    {     
                $items = DB::table('items')
                    ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                    ->leftJoin('url_types','items.url_type', 'url_types.id')
                    ->leftJoin('countries','items.cntry_id', 'countries.id')
                    ->leftJoin('token_types','items.token_type', 'token_types.id')
                    ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                    ->leftJoin('contents','items.content_id', 'contents.id')
                    ->select('items.*', 
                            'tv_categories.tv_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                    )->where('items.id',$id)->first();


                if($items==null){
                        return response()->json([
                            'message'=>'Channel Not exist',
                            'Status'=>404]);
                    } 
                    else if ($items->content_type=='channel') {
                        return response()->json([
                            'success' => true,
                            'status' => 200,
                            'data' => array($items),
                        ]);
                    } 
                    else {
                        return response()->json([
                            'success' => false,
                            'message' => 'Sorry, This id is not included Channel type'
                        ]);
                    }           
    }

    public function catbyid($id)
    {
           
           $category = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
                                        ->where('cat_id',$id)
                                         ->where('content_type','channel')
                                        ->get();
                    if($category==null){
                        return response()->json([
                            'message'=>' Not Exist',
                            'Status'=>404]);
                    } else if ($category) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            'data' => $category,
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'nothing has'
                        ], 500);
                    }

        
    }


    public function cntrybyid($id)
    {
           
           $country = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
                                        ->where('cntry_id',$id)
                                        ->where('content_type','channel')
                                        ->get();
                    if($country==null){
                        return response()->json([
                            'message'=>' Not Exist',
                            'Status'=>404]);
                    } else if ($country) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            'data' => $country,
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'nothing has'
                        ], 500);
                    }

        
    }

   public function viewcount( $id){
        
    $item = Item::find($id);
    // Increment the post's view count by one
     Item::where('items.id', '=', $id)
        ->update(['view_count'      => $item->view_count + 1 ]);

        if($item){
            return response()->json(['message'=>'Count Saved Successfully'], 200);
        }else{
            return response()->json(['message'=>'Count could not be saved'], 404);
        }
    }

    

    // public function ratings(Request $request,$id){
        
    //  $channel = Item::find($id);
        
            
    //      $channel->ratings = $request->input('ratings');   

    //         $channel->update();
    //     if($channel){
    //         return response()->json(['message'=>'ratings updated Successfully'], 200);
    //     }else{
    //         return response()->json(['message'=>'Count could not be saved'], 404);
    //     }
    // }
    
}
