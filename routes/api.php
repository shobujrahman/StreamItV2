<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/



Route::group([
    'prefix' => 'v1', 
    'namespace' => 'Api'
], function(){

        Route::resource('/admin', 'AdminController');
    
    //Tv Channel Route
    	// Route::post('/channel/ratings/{id}', 'TvChannelController@ratings');
        Route::get('/channel/catbyid/{id}', 'TvChannelController@catbyid');
        Route::get('/channel/cntrybyid/{id}', 'TvChannelController@cntrybyid');
        Route::post('/channel/{id}/viewcount','TvChannelController@viewcount');

        Route::get('/channel', 'TvChannelController@index');
        Route::get('/channel/channel-show/{id}', 'TvChannelController@show');
        
    //Tv Ctaegory Route
        Route::get('/tvcategory','TvCategoryController@index');
        Route::get('/tvcategory/tvcat-show/{id}', 'TvCategoryController@show');
       

    //Video Route
        // Route::post('/video/ratings/{id}','VideoController@ratings');
        Route::get('/video/catbyid/{id}', 'VideoController@catbyid');
        Route::get('/video/cntrybyid/{id}', 'VideoController@cntrybyid');
        Route::post('/video/{id}/viewcount','VideoController@viewcount');
        
        Route::get('/video', 'VideoController@index');
        Route::get('/video/video-show/{id}', 'VideoController@show');
	    Route::get('/test', 'VideoController@test');

    //Video Category Route
        Route::get('/vdoCategory', 'VideoCategoryController@index');
        Route::get('/vdoCategory/vdoCat-show/{id}', 'VideoCategoryController@show');
        

    //country Route
        Route::get('/country', 'CountryController@index');
        Route::get('/country/country-show/{id}', 'CountryController@show');
        

    //slider route
        Route::get('/slider', 'SliderController@index');
        Route::get('/slider/slider-show/{id}', 'SliderController@show');

    //Ads Route
        // Route::get('/advertisement','AdvertisementController@index');
        // Route::put('/advertisement/update','AdvertisementController@update');

    //Settings Route
        // Route::get('/settings','SettingsController@index');
        // Route::put('/settings/update','SettingsController@update');

    //notification 
        Route::post('/store-token','DeviceController@StoreToken'); // device controller

    //feedback
        Route::post('/feedback','FeedbackController@feedback'); // feedback controller
        Route::get('/feedback/all','FeedbackController@index'); // feedback controller

    //Items Search Route
        Route::get('/item', 'ItemController@index');
        Route::get('/item/urlsByItem/{itemId}', 'ItemController@urlsByItem');
    	Route::get('/item/search={query}', 'ItemController@search');

    //report route
	    Route::get('/report', 'ReportController@index');  //report controller
	    Route::post('/report/store', 'ReportController@store');

	//home route
        Route::get('/home','HomeController@index');


	//Series route
        Route::get('/series','SeriesController@allSeries');

	//Season route
        Route::get('/season','SeasonController@allSeason');
        Route::get('/season/series/{id}','SeasonController@seasonBySeriesId');

	//Episode route
  	    Route::post('/series/{id}/viewcount','EpisodeController@viewcount'); ///     /series is content type
        Route::get('/episode','EpisodeController@allEpisode');
        Route::get('/episode/season/{id}','EpisodeController@episodeBySeasonId');
        Route::get('/episode/show/{id}','EpisodeController@singleEpisode');
       

    // settings
        Route::get('settings','SettingsController@index');
    
    // Ads Settings
        Route::get('advertisement','AdvertisementController@index');
        
    //ratings
        Route::post('/addRating','RatingController@addRating');
});




   
    

    

    
    
   