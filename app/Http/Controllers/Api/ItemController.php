<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Item;

class ItemController extends Controller
{
	public function index(){
        $item = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                               
            ->orderBy('id', 'DESC')->with(['urls'])->get();

        // $item = Item::with(['tvcategory','urlType','videocategory','country','tokenType','agentType','urls'])->get();

        return response()->json(['data' => $item]);
    }
	
    public function search($query)
    {
         $item = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
            ->where('name', "like", "%" . $query . "%")
            ->get();

        return response()->json(['data' => $item]);
    }


    public function urlsByItem($itemId)
    {
        $urls = Item::with('urls')->select('id')->find($itemId);

        if(!$urls){
            return response()->json([
                'success' => false,
                'message' => 'url not found',
            ]);
        }
        return response()->json([
            'success' => true,
            'data' => $urls
        ]);
        
    }
}
