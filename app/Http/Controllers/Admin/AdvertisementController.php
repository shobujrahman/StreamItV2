<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Settings;
use Illuminate\Support\Facades\Session as FacadesSession;


class AdvertisementController extends Controller
{
    public function index(){
        FacadesSession::put('page','ads');
        return view('settings.advertisement')->with('settings',Settings::first());
    }

    //Update advertise Details
    // public function update(Request $request){
    //     $ads = Advertisement::first();

    //     $ads->admob_inter = $request->input('admob_inter');
    //     $ads->admob_native = $request->input('admob_native');
    //     $ads->admob_banner = $request->input('admob_banner');
    //     $ads->admob_reward = $request->input('admob_reward');
    //     $ads->fb_inter = $request->input('fb_inter');
    //     $ads->fb_native = $request->input('fb_native');
    //     $ads->fb_banner = $request->input('fb_banner');
    //     $ads->fb_reward = $request->input('fb_reward');
    //     $ads->startapp_appId = $request->input('startapp_appId');   
    //     $ads->industrial_interval = $request->input('industrial_interval');
    //     $ads->native_ads = $request->input('native_ads');
    //     $ads->ad_types = $request->input('ads_type');


    //     $ads->unity_appId_gameId = $request->input('unity_appId_gameId');
    //     $ads->iron_appKey = $request->input('iron_appKey');
    //     $ads->appnext_placementId = $request->input('appnext_placementId');
        
        

    //     // dd($ads);
    //     $ads->save();
    //     return redirect()->back()->with('message', 'Details Updated!');
    // }

    public function update(Request $request){
        $settings = Settings::first();

        $settings->admobPublisherId = $request->input('admobPublisherId');
        $settings->admobAppId = $request->input('admobAppId');
        $settings->admob_inter = $request->input('admob_inter');
        $settings->admob_native = $request->input('admob_native');
        $settings->admob_banner = $request->input('admob_banner');
        $settings->admob_reward = $request->input('admob_reward');
        //fbsettings
        $settings->fbPublisherId = $request->input('fbPublisherId');
        $settings->fb_app_id = $request->input('fb_app_id');
        $settings->fb_inter = $request->input('fb_inter');
        $settings->fb_native = $request->input('fb_native');
        $settings->fb_banner = $request->input('fb_banner');
        $settings->fb_reward = $request->input('fb_reward');
        //unity
        $settings->unity_appId_gameId = $request->input('unity_appId_gameId');
        //ironsource
        $settings->iron_source_appKey = $request->input('iron_source_appKey');
        //appnext
        $settings->appnext_placementId = $request->input('appnext_placementId');
        //startapp
        $settings->startapp_appId = $request->input('startapp_appId');
        //interstitial
        $settings->interstitial_interval = $request->input('interstitial_interval');
        //nativeAds
        $settings->native_ads_interval = $request->input('native_ads_interval');
        $settings->ad_type = $request->input('ad_type');
        
        $settings->update();

        if($settings)
        {
            $notification=array(
                'message'=>'Successfully updated',
                'alert-type'=>'success'
            );
            return redirect()->back()->with($notification);
        }
        else
        {
            $notification=array(
                'message'=>'Something went wrong',
                'alert-type'=>'error'
            );
            return redirect()->back()->with($notification);
        }
       
        // return redirect()->back()->with('message', 'Settings Updated!');
    }
}
