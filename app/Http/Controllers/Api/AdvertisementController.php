<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Settings;

class AdvertisementController extends Controller
{
    // public function index(){
    //     return response()->json([
    //         'success' => true,
    //         'data' => Advertisement::first(),
    //     ]);
    // }

    // public function update(Request $request)
    // {
    //     $ads = Advertisement::first();

        
    //     $ads->update($request->all());
    //     return response()->json([
    //         'message'=>'Ads updated successfully!',
    //         'Status'=>200 
    //     ]);
    // }


    public function index(){
        

        $ad = Settings::select('admobPublisherId',
		        'admobAppId',
		        'admob_inter',
		        'admob_native',
		        'admob_banner',
		        'admob_reward',
		        'fbPublisherId',
		        'fb_app_id',
		        'fb_inter',
		        'fb_native',
		        'fb_banner',
		        'fb_reward',
		        'unity_appId_gameId',
		        'iron_source_appKey',
		        'appnext_placementId',
		        'startapp_appId',
		        'interstitial_interval',
		        'native_ads_interval',
		        'ad_type')->where('id', 1)->get();

        if(!$ad){

        	return response()->json([
	            'status' => 1,
	            'data' => "no data"
        	]);

        }else{
        	return response()->json([
	            'status' => 2,
	            'data' => $ad
        	]);
        }
        
    } 
}
