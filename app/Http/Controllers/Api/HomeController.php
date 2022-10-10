<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Item;
use App\VideoCategory;
use App\TvCategory;
use App\Country;
use App\Series;
use DB;
use Illuminate\Support\Facades\DB as FacadesDB;

class HomeController extends Controller
{
        public function index(){

        //recent added
        $item = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
            ->orderBy('id', 'DESC')->get();

            //all videos
            $videos = FacadesDB::table('items')
                    ->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                    ->leftJoin('url_types','items.url_type', 'url_types.id')
                    ->leftJoin('countries','items.cntry_id', 'countries.id')
                    ->leftJoin('token_types','items.token_type', 'token_types.id')
                    ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                    ->leftJoin('contents','items.content_id', 'contents.id')
                    ->leftJoin('series','items.series_id', 'series.id')
                    ->leftJoin('seasons','items.season_id', 'seasons.id')
                    ->select('items.*', 
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key',
                            'series.series_name',
                            'seasons.season_name',
                    )->where('content_type','video')
                //     ->orWhere('content_type','series')
                    ->orderBy('id', 'DESC')->limit(10)->get();

            //All channel
            $channels = FacadesDB::table('items')
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
                    ->orderBy('id', 'DESC')->limit(10)->get();
            
            //videocategory
                    $videocategory = VideoCategory::orderBy('id', 'DESC')->limit(10)->get();
            
            //channelcategory
                    $tvcategories = TvCategory::orderBy('id', 'DESC')->limit(10)->get();

            //country
                    $countries = Country::orderBy('id', 'DESC')->limit(10)->get();

            //randomItems
                    $randomItem = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
                                ->inRandomOrder()->limit(10)->get();
            
            //premiumItems
                    $premiumItems = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
                                ->where('subscription','paid')
                                ->orWhere('subscription','rent')
                                ->limit(10)
                                ->get();


            //mostViewed
                    $mostViewed = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
                                ->orderBy('view_count','DESC')->limit(10)->get();

            //trending
                    $trending = Item::select('items.*', 
                            'tv_categories.tv_cat_name',
                            'video_categories.video_cat_name',
                            'url_types.type_name',
                            'countries.country_name',
                            'token_types.token_name',
                            'user_agent_types.agent_name',
                            'contents.prdct_price',
                            'contents.prdct_key'
                            )->leftJoin('video_categories','items.cat_id', 'video_categories.id')
                            ->leftJoin('tv_categories','items.cat_id', 'tv_categories.id')
                                ->leftJoin('url_types','items.url_type', 'url_types.id')
                                ->leftJoin('countries','items.cntry_id', 'countries.id')
                                ->leftJoin('token_types','items.token_type', 'token_types.id')
                                ->leftJoin('user_agent_types','items.agent_type', 'user_agent_types.id')
                                ->leftJoin('contents','items.content_id', 'contents.id')
                                ->orderBy('view_count','DESC')
                                ->orderBy('id','DESC')->limit(10)->get();

                //slider
                $sliders = FacadesDB::table('sliders')
                                ->leftJoin('items','sliders.item_id', 'items.id')
                                ->select('sliders.*', 'items.name')
                                ->orderBy('id', 'DESC')->limit(10)->get();


                $series = Series::orderBy('id','desc')->limit(10)->get();

                return response()->json([
            		'message' => 'success',
                        'RecentAdded' => $videos, 
                        'Videos' => $videos, 
                        'Channels' => $channels, 
                        'VideoCategory' => $videocategory, 
                        'channelCategory' => $tvcategories, 
                        'country' => $countries, 
                        'RandomItems' => $randomItem, 
                        'premiumItems' => $premiumItems, 
                        'mostViewed' => $videos, 
                        'trending' => $videos,
                        'slider' => $sliders,  
                        'series' => $series,  
                ]);
        }
}