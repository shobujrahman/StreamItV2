<?php

use Illuminate\Support\Facades\Route;
// use Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();


Route::prefix('/admin')->namespace('Admin')->group(function(){
    //All the admin route will be define here:-

    Route::match(['get','post'],'/','AdminController@login' );

    Route::group(['middleware'=>['admin']],function(){

        Route::get('dashboard','AdminController@dashboard');
        Route::get('logout','AdminController@logout');

        //Tv Channel Route
        Route::get('channel-index', 'TvChannelController@index');
        Route::get('channel-create', 'TvChannelController@create');
        Route::post('channel-submit', 'TvChannelController@store');
        Route::get('channel-edit/{id}', 'TvChannelController@edit');
        Route::post('channel-update/{id}', 'TvChannelController@update');
        Route::get('channel-delete/{id}', 'TvChannelController@destroy');
        
        //Tv Ctaegory Route
        Route::get('tvcat-index','TvCategoryController@index');
        Route::get('tvcat-create', 'TvCategoryController@create');
        Route::post('tvcat-submit', 'TvCategoryController@store');
        Route::get('tvcat-edit/{id}', 'TvCategoryController@edit');
        Route::post('tvcat-update/{id}', 'TvCategoryController@update');
        Route::get('tvcat-delete/{id}', 'TvCategoryController@destroy');

        //Video Route
        Route::get('video-index', 'VideoController@index');
        Route::get('video-create', 'VideoController@create');
        Route::post('video-submit', 'VideoController@store');
        Route::get('video-edit/{id}', 'VideoController@edit');
        Route::post('video-update/{id}', 'VideoController@update');
        Route::get('video-delete/{id}', 'VideoController@destroy');

        //Video Category Route
        Route::get('vdoCat-index', 'VideoCategoryController@index');
        Route::get('vdoCat-create', 'VideoCategoryController@create');
        Route::post('vdoCat-submit', 'VideoCategoryController@store');
        Route::get('vdoCat-edit/{id}', 'VideoCategoryController@edit');
        Route::post('vdoCat-update/{id}', 'VideoCategoryController@update');
        Route::get('vdoCat-delete/{id}', 'VideoCategoryController@destroy');

        //country Route
        Route::get('country-index', 'CountryController@index');
        Route::get('country-create', 'CountryController@create');
        Route::post('country-submit', 'CountryController@store');
        Route::get('country-edit/{id}', 'CountryController@edit');
        Route::post('country-update/{id}', 'CountryController@update');
        Route::get('country-delete/{id}', 'CountryController@destroy');
        
        //Registered Users Routes
        Route::get('Rindex','RegUserController@index');
        Route::get('Redit/{id}', 'RegUserController@edit');
        Route::post('Rupdate/{id}', 'RegUserController@update');
        
        //Administrator Route
        Route::get('Aindex', 'AdministratorController@index');
        Route::get('Acreate', 'AdministratorController@create');
        Route::post('Asubmit', 'AdministratorController@store');
        Route::get('Aedit/{id}', 'AdministratorController@edit');
        Route::post('Aupdate/{id}', 'AdministratorController@update');
        Route::get('Adelete/{id}', 'AdministratorController@destroy');
        

        //Notification Route
        Route::get('notifications','NotificationController@index');
        Route::post('notifications/send','NotificationController@send');

        //slider route
        Route::get('slider','SliderController@index');
        Route::get('slidecreate','SliderController@create');
        Route::post('slidesubmit', 'SliderController@store');
        Route::get('slideedit/{id}', 'SliderController@edit');
        Route::post('slideupdate/{id}', 'SliderController@update');
        Route::get('slidedelete/{id}', 'SliderController@destroy');

		//Ads Route
        Route::get('advertisement','AdvertisementController@index');
        Route::post('advertisement/update','AdvertisementController@update');

        //Settings Route
        Route::get('settings','SettingsController@index');
        Route::post('settings/update','SettingsController@update');

        //feedback route
         Route::get('feedback','FeedbackController@index');

        //feedback route
         Route::get('report','ReportController@index');

          //Content route
        Route::get('content', 'ContentController@index');
        Route::get('content-create', 'ContentController@create');
        Route::post('content-submit', 'ContentController@store');
        Route::get('content-edit/{id}', 'ContentController@edit');
        Route::post('content-update/{id}', 'ContentController@update');
        Route::get('content-delete/{id}', 'ContentController@destroy');


        //series route
        Route::get('series', 'SeriesController@index');
        Route::get('series-create', 'SeriesController@create');
        Route::post('series-submit', 'SeriesController@store');
        Route::get('series-edit/{id}', 'SeriesController@edit');
        Route::post('series-update/{id}', 'SeriesController@update');
        Route::get('series-delete/{id}', 'SeriesController@destroy');

        //seasons route
        Route::get('seasons/{id}', 'SeasonController@index');
        Route::get('seasons-create', 'SeasonController@create');
        Route::post('seasons-submit/{id}', 'SeasonController@store');
        Route::get('seasons-edit/{id}', 'SeasonController@edit');
        Route::post('seasons-update/{id}', 'SeasonController@update');
        Route::get('seasons-delete/{id}', 'SeasonController@destroy');

        //seasons route
        Route::get('episode/{id}', 'EpisodeController@allEpisode');
        Route::get('episode-create/{id}', 'EpisodeController@create');
        Route::post('episode-submit/{id}', 'EpisodeController@store');
        Route::get('episode-edit/{id}/{sid}', 'EpisodeController@edit');
        Route::post('episode-update/{id}/{sid}', 'EpisodeController@update');
        Route::get('episode-delete/{id}', 'EpisodeController@destroy');
        // Route::get('episode/{id}/filter', 'EpisodeController@filterBySeason');

        //star route
        Route::get('star', 'StarController@allStar');
        Route::get('star-create', 'StarController@create');
        Route::post('star-submit', 'StarController@store');
        Route::get('star-edit/{id}', 'StarController@edit');
        Route::post('star-update/{id}', 'StarController@update');
        Route::get('star-delete/{id}', 'StarController@destroy');

    });
});