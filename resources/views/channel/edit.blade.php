@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Tv Channels</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/channel-index') }}">Edit Tv Channels</a></li>
                        <li class="breadcrumb-item active">Edit Channel</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <!-- <x-alert /> -->
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">Edit Channel</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>
                <!-- /.card-header -->
                <form name="editChannelForm" id="editChannelForm"
                    action="{{ url('admin/channel-update/'.$itemdata->id) }}" method="post"
                    enctype="multipart/form-data">@csrf
                    <input type="hidden" name="old_image" value="{{$itemdata->image}}">
                    <input type="hidden" name="old_banner_image" value="{{$itemdata->banner_image}}">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>Content Type</label>
                                    <select name="content_type" id="content_type"
                                        class="form-control select2 @error('content_type') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        <option value='channel' <?php if($itemdata->content_type=='channel'){
                                        echo "selected";
                                    } ?>>Channel</option>
                                        <option value='video' <?php if($itemdata->content_type=='video'){
                                        echo "selected";
                                    } ?>>Video</option>
                                    </select>
                                    @error('content_type')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>Channel Category</label>
                                    <select name="tv_cat_name" id="tv_cat_name"
                                        class="form-control select2 @error('tv_cat_name') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($tvcategories as $tv)
                                        <option value="{{$tv->id}}" <?php if($tv->id==$itemdata->cat_id){
                                        echo "selected";
                                    } ?>>{{$tv->tv_cat_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('tv_cat_name')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label for="name">Channel Name</label>
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        name="name" id="name" value="{{$itemdata->name}}">
                                </div>
                            </div>
                            <!-- -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>Url Type</label>
                                    <select name="type_name" id="type_name"
                                        class="form-control select2 @error('type_name') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($urltype as $url)
                                        <option value="{{$url->id}}" <?php if($url->id==$itemdata->url_type){
                                        echo "selected";
                                    } ?>>{{$url->type_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('type_name')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label for="url">Channel Url</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control @error('url') is-invalid @enderror"
                                            id="url" name="url" value="{{$itemdata->url}}"
                                            placeholder=" https://www.youtube.com/watch?v=II2EO3">
                                    </div>
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label>Country</label>
                                    <select name="country_name" id="country_name"
                                        class="form-control select2 @error('country_name') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($countries as $country)
                                        <option value="{{$country->id}}" <?php if($country->id==$itemdata->cntry_id){
                                        echo "selected";
                                    } ?>>{{$country->country_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('country_name')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <!-- multiple quality url -->
                            <br>    
                            <div class="row add_input_fields col-12" id="urlQuality">
                                <div class="form-group col-md-6">
                                    <label>Quality</label>
                                    @if(count($itemdata->urls) > 0)
                                        @foreach($itemdata->urls as $url)
                                        &nbsp;
                                        <input type="text" name="quality[]" class="form-control" placeholder="Quality" value="{{ $url->quality}}" style="width:521px;">
                                        @endforeach
                                        @else
                                        <input type="text" name="quality[]" class="form-control" placeholder="Quality" style="width:521px;">
                                    @endif
                                </div>
                                <div class="form-group col-md-5" style="margin-left:15px;">
                                    <label>Url</label>
                                    @if(count($itemdata->urls) > 0)
                                        @foreach($itemdata->urls as $url)
                                        &nbsp;
                                        <input type="text" name="urls[]" class="form-control" placeholder="Url" value="{{ $url->url }}" style="width:470px;">
                                        @endforeach
                                        @else
                                        <input type="text" name="urls[]" class="form-control" placeholder="Url" style="width:470px;">
                                    @endif
                                </div>
                                
                                <button type="button" class="add_input_fields_button" style="height: fit-content;margin-top: 34px;margin-left: 41px;"> <i class="fa fa-plus"></i> </button>
                
                            </div>
                            <br>                      
                                <!-- multiple quality url -->
                            <!--  -->
                            <div class="col-12 col-sm-12">
                                <div class="form-group">
                                    <label>Unlock Content </label>
                                    <select name="watch_ads" id="watch_ads"
                                        class="form-control select2 @error('watch_ads') is-invalid @enderror"
                                        style="width: 100%;">
                                        <!-- <option disabled selected value>Select an --option</option> -->
                                        <option value='free' <?php if($itemdata->subscription=='free'){
                                        echo "selected";
                                    } ?>>Free</option>
                                        <option value='yes' <?php if($itemdata->subscription=='yes'){
                                        echo "selected";
                                    } ?>>Watch With Ads</option>
                                        <option value='paid' <?php if($itemdata->subscription=='paid'){
                                        echo "selected";
                                    } ?>>Subscription</option>
                                        <option value='rent' <?php if($itemdata->subscription=='rent'){
                                        echo "selected";
                                    } ?>>Rent</option>

                                    </select>
                                    @error('watch_ads')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label for="image">Thumbnail Image</label>
                                    <div class="input-group">
                                        <input type="file" id="image" name="image"
                                            class="dropify @error('image') is-invalid @enderror"
                                            data-allowed-formats="portrait square"
                                            data-default-file="{{asset('images/'.$itemdata->image)}}">
                                        @error('image')
                                        <p class="alert-danger">{{ $message }}</p>
                                        @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label for="banner_image"> Poster Image</label>
                                    <div class="input-group">
                                        <input type="file" id="banner_image" name="banner_image"
                                            class="dropify @error('banner_image') is-invalid @enderror"
                                            data-allowed-formats="landscape"
                                            data-default-file="{{asset('images/'.$itemdata->banner_image)}}">
                                        @error('banner_image')
                                        <p class="alert-danger">{{ $message }}</p>
                                        @enderror
                                    </div>
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group" style="display: none;" id='content'>
                                    <label>Monetization</label>
                                    <select name="content_name" id="content_name" class="form-control select2"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($contents as $content)

                                        <option value="{{$content->id}}" <?php if($content->id==$itemdata->content_id){
                                        echo "selected";
                                    } ?>>{{$content->prdct_name}}</option>

                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <br>
                        <h4>Optional:</h4>
                        <div class="row">
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label for="token">Token</label>
                                    <input type="text" class="form-control" name="token" id="token"
                                        value="{{$itemdata->token}}">
                                </div>
                            </div>
                            <!-- -->
                            <div class="col-12 col-sm-6">
                                <label>Token Hints</label>
                                <div class="form-group border rounded p-2">
                                    <p>
                                        Token type should be Json type.
                                        Token field name shoud be token.
                                    </p>
                                    <span class="font-weight-bold"> Ex: fieldName -> {token:"asdfgh"} </span>
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-12 col-sm-6">
                                <div class="form-group">
                                    <label for="user_agent">User Agent</label>
                                    <input type="text" class="form-control" name="user_agent" id="user_agent"
                                        value="{{$itemdata->user_agent}}">
                                </div>
                            </div>
                            <!-- -->

                        </div>
                        <br>
                        <!--  -->
                        <div class="form-group">
                            <label for="description">
                                Description
                            </label>
                            <textarea class="textarea" placeholder="Place some text here" name="description" required
                                style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                                {{$itemdata->description}}
                            </textarea>
                        </div>
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Publish</button>
                    </div>
                </form>
            </div>
        </div>
    </section>
</div>
@endsection