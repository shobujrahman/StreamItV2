@extends('layouts.admin_layout.admin_layout')
@section('content')
  
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Ads Settings</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                <li class="breadcrumb-item active">Ads Settings</li>
                </ol>
            </div>
            </div>
        </div>
    </section>

    <div class="col-md-3 m-auto ml-50">
        <br>
        <div class=" d-flex justify-content-center">
                <a href="{{ url('admin/settings') }}" class="btn btn-tab-movie-active col-md-12 bg-gradient-primary"><i class="nav-icon fas fa-cog"></i> Settings</a>
                
                <a href="{{ url('admin/advertisement') }}" class="btn btn-tab-movie col-md-12 bg-gradient-primary ml-2"><i class="nav-icon fas fa-ad"></i> Ads Settings</a>
                
        </div>
    </div>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-9">
                    <div class="card" style="margin-top:25px">
                        <div class="card-header p-2 bg-gradient-primary">
                            <h3 class="card-title"><i class="nav-icon fas fa-ad"></i> Ads Settings</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
                            </div>
                        </div>
                        <div class="card-body">
                            <form name="adsForm" id="adsForm" action="{{ url('admin/advertisement/update') }}" method="post" enctype="multipart/form-data">@csrf
                                <div class="panel-body">
                                    <label class="panel-title">AdMob Ad</label><br>
                                    <!-- <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Publisher Id</h6>
                                        <input type="text" id="admobPublisherId" name="admobPublisherId" maxlength="255" class="form-control" value="{{$settings->admobPublisherId}}">
                                    </div>
                                    <span class="validate-input"></span>&nbsp; 

                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">App Id</h6>
                                        <input type="text" id="admobAppId" name="admobAppId" maxlength="255" class="form-control" value="{{$settings->admobAppId}}">
                                    </div>
                                    <span class="validate-input"></span>&nbsp; -->

                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Inter Ad Unit</h6>
                                        <input type="text" id="admob_inter" name="admob_inter" maxlength="255" class="form-control" value="{{$settings->admob_inter}}">
                                    </div>
                                    <span class="validate-input"></span>&nbsp;

                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Native Ad Unit</h6>
                                        <input type="text" id="admob_native" name="admob_native" maxlength="255" class="form-control" value="{{$settings->admob_native}}">
                                    </div>
                                    <span class="validate-input"></span>&nbsp;

                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Banner Ad Unit</h6>
                                        <input type="text" id="admob_banner" name="admob_banner" maxlength="255" class="form-control" value="{{$settings->admob_banner}}">
                                    </div>
                                    <span class="validate-input"></span>&nbsp;

                                   <!--  <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Reward Ad Unit</h6>
                                        <input type="text" id="admob_reward" name="admob_reward" maxlength="255" class="form-control" value="{{$settings->admob_reward}}">
                                    </div> -->
                                    <!-- <span class="validate-input"></span> -->
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">Facebook Ad</label><br>
                                    <!-- <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Facebook Publisher Id</h6>
                                        <input type="text" id="fbPublisherId" name="fbPublisherId" maxlength="255" class="form-control" value="{{$settings->fbPublisherId}}">
                                    </div>
                                    <span class="validate-input"></span>

                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Facebook App Id</h6>
                                        <input type="text" id="fb_app_id" name="fb_app_id" maxlength="255" class="form-control" value="{{$settings->fb_app_id}}">
                                    </div> -->
                                    <!-- <span class="validate-input"></span> -->
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Inter Ad Unit</h6>
                                        <input type="text" id="fb_inter" name="fb_inter" maxlength="255" class="form-control" value="{{$settings->fb_inter}}">
                                    </div>
                                    <span class="validate-input"></span>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Native Ad Unit</h6>
                                        <input type="text" id="fb_native" name="fb_native" maxlength="255" class="form-control" value="{{$settings->fb_native}}">
                                    </div>
                                    <span class="validate-input"></span>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Banner Ad Unit</h6>
                                        <input type="text" id="fb_banner" name="fb_banner" maxlength="255" class="form-control" value="{{$settings->fb_banner}}">
                                    </div>
                                    <span class="validate-input"></span>
                                  <!--   <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Reward Ad Unit</h6>
                                        <input type="text" id="fb_reward" name="fb_reward" maxlength="255" class="form-control" value="{{$settings->fb_reward}}">
                                    </div>
                                    <span class="validate-input"></span> -->
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">Unity Ad</label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label ">AppID/GameId</h6>
                                        <input type="text" id="unity_appId_gameId" name="unity_appId_gameId" maxlength="255" class="form-control" value="{{$settings->unity_appId_gameId}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">Iron Source Ad</label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">App Key</h6>
                                        <input type="text" id="iron_source_appKey" name="iron_source_appKey" maxlength="255" class="form-control" value="{{$settings->iron_source_appKey}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">AppNext Ad</label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label"> Placement Id</h6>
                                        <input type="text" id="appnext_placementId" name="appnext_placementId" maxlength="255" class="form-control" value="{{$settings->appnext_placementId}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">StartApp Ad</label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Native AdMob Id</h6>
                                        <input type="text" id="startapp_appId" name="startapp_appId" maxlength="255" class="form-control" value="{{$settings->startapp_appId}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">Interstitial Ad </label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Interval Ads</h6>
                                        <input type="text" id="interstitial_interval" name="interstitial_interval" maxlength="255" class="form-control" value="{{$settings->interstitial_interval}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">Native Ad</label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h6 class="control-label">Interval Ads</h6>
                                        <input type="text" id="native_ads_interval" name="native_ads_interval" maxlength="255" class="form-control" value="{{$settings->native_ads_interval}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                </div>
                                    <!--  -->
                                <div class="panel-body">
                                    <label class="panel-title">Ads Type</label><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <label class="control-label">Choose Type</label>
                                        <select id="ad_type" name="ad_type" class="form-control">
                                            <option value="admob" <?php if($settings->ad_type=='admob'){ echo "selected";} ?> >Admob</option>
                                            <option value="facebook" <?php if($settings->ad_type=='facebook'){ echo "selected";} ?> >Facebook</option>
                                            <option value="startapp" <?php if($settings->ad_type=='startapp'){ echo "selected";} ?> >Startapp</option>
                                            <option value="ironSource" <?php if($settings->ad_type=='ironSource'){ echo "selected";} ?> >IronSource</option>
                                            <option value="appNext" <?php if($settings->ad_type=='appNext'){ echo "selected";} ?> >AppNext</option>
                                            <option value="unity" <?php if($settings->ad_type=='unity'){ echo "selected";} ?> >Unity</option>
                                            <option value="multipleAds" <?php if($settings->ad_type=='multipleAds'){ echo "selected";} ?> >Show Multiple Ads</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit"  class="btn btn-outline-info">Update</button>
                                </div> 
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection
