<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Settings;

class SettingsController extends Controller
{
    // public function index(){
    //     return response()->json([
    //         'success' => true,
    //         'data' => Settings::first(),
    //     ]);
    // }

    // public function update(Request $request)
    // {
    //     $setting = Settings::first();

        
    //     $setting->update($request->all());
    //     return response()->json([
    //         'message'=>'Ads updated successfully!',
    //         'Status'=>200 
    //     ]);
    // }

    public function index(){
        $settings = Settings::first([
            'firebasekey',
            'email',
            'version',
            'privacypolicy',
	    'onesignal'
        ]);
        return response()->json([
            'success' => true,
            'data' => $settings
        ]);
    } 
}
