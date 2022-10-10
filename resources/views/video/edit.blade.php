@extends('layouts.admin_layout.admin_layout')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Videos</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/video-index') }}">Edit Video</a></li>
                        <li class="breadcrumb-item active">Edit Video</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">Edit Video</h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>

                <form name="editVideoForm" id="editVideoForm" action="{{ url('admin/video-update/'.$itemdata->id) }}"
                    method="post" enctype="multipart/form-data">@csrf
                    <input type="hidden" name="old_image" value="{{$itemdata->image}}">
                    <input type="hidden" name="old_banner_image" value="{{$itemdata->banner_image}}">
                    <div class="card-body">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="form-group col-md-6">
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

                                <!--  -->

                                <div class="form-group col-md-6">
                                    <label> Category*</label>
                                    <select name="video_cat_name" id="video_cat_name"
                                        class="form-control select2 @error('video_cat_name') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($vdocategories as $vdo)
                                        <option value="{{$vdo->id}}" <?php if($vdo->id==$itemdata->cat_id){
                                        echo "selected";
                                    } ?>>{{$vdo->video_cat_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('video_cat_name')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>

                                <!--  -->

                                <div class="form-group col-md-6">
                                    <label for="name">Title*</label>
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        name="name" id="name" value="{{$itemdata->name}}"
                                        placeholder="Enter Video Name">
                                </div>

                                <!-- -->

                                <div class="form-group col-md-6">
                                    <label>Url Type</label>
                                    <select name="url_type" id="url_type"
                                        class="form-control select2 @error('url_type') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($urltype as $url)
                                        <option value="{{$url->id}}" <?php if($url->id==$itemdata->url_type){
                                        echo "selected";
                                    } ?>>{{$url->type_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('url_type')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>

                                <!--  -->

                                <div class="form-group col-md-6" id="url">
                                    <label for="url">Url*</label>
                                    <input type="text" class="form-control @error('url') is-invalid @enderror" id="url"
                                        name="url" value="{{$itemdata->url}}" placeholder="Please Enter Your Url">
                                </div>

                                <!--  -->

                                <div class="form-group col-md-6">
                                    <label>Country*</label>
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

                                <!--  -->
                                <!-- multiple quality url -->
                                <br>

                                <div class="row add_input_fields col-12" id="urlQuality">
                                    <div class="form-group col-md-6">
                                        <label>Quality</label>
                                        @if(count($itemdata->urls) > 0)
                                        @foreach($itemdata->urls as $url)
                                        &nbsp;
                                        <input type="text" name="quality[]" class="form-control" placeholder="Quality"
                                            value="{{ $url->quality}}" style="width:465px;">
                                        @endforeach
                                        @else
                                        <input type="text" name="quality[]" class="form-control" placeholder="Quality"
                                            style="width:465px;">
                                        @endif
                                    </div>
                                    <div class="form-group col-md-5" style="margin-left:7px;">
                                        <label>Url</label>
                                        @if(count($itemdata->urls) > 0)
                                        @foreach($itemdata->urls as $url)
                                        &nbsp;
                                        <input type="text" name="urls[]" class="form-control" placeholder="Url"
                                            value="{{ $url->url }}" style="width: 411px;">
                                        @endforeach
                                        @else
                                        <input type="text" name="urls[]" class="form-control" placeholder="Url"
                                            style="width:411px;">
                                        @endif
                                    </div>


                                    <button type="button" class="add_input_fields_button"
                                        style="height: fit-content;margin-top: 34px;margin-left: 39px;"> <i
                                            class="fa fa-plus"></i> </button>

                                </div>

                                <br>
                                <!-- multiple quality url -->
                                <!--  -->
                                <div class="form-group col-md-12">
                                    <label>Unlock Content*</label>
                                    <select name="watch_ads" id="watch_ads"
                                        class="form-control select2 @error('watch_ads') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
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
                                <!--  -->
                                <div class="form-group col-md-6">
                                    <label for="image">Thumbnail Image*</label>
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
                                <!--  -->
                                <div class="form-group col-md-6">
                                    <label for="banner_image"> Poster Image*</label>
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
                                <!--  -->
                                <div class="form-group col-md-6" style="display: none;" id='content'>
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
                        <div class="col-md-12">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label for="token">Token</label>
                                    <input type="text" class="form-control" name="token" id="token"
                                        value="{{$itemdata->token}}" placeholder="Enter Token">
                                </div>

                                <!-- -->
                                <div class="col-md-6">
                                    <label>Token Hints</label>
                                    <div class="form-group border rounded p-2">
                                        <p>
                                            Token type should be Json type.
                                            Token field name shoud be token(Ex:{token:"asdfgh"}).
                                        </p>
                                    </div>
                                </div>
                                <!--  -->

                                <div class="form-group col-md-6">
                                    <label for="user_agent">User Agent</label>
                                    <input type="text" class="form-control" name="user_agent" id="user_agent"
                                        value="{{$itemdata->user_agent}}" placeholder="Enter User Agent">
                                </div>
                                <!-- -->


                                <!-- description -->
                                <br>

                                <div class="form-group col-md-6">
                                    <label for="description">
                                        Description
                                    </label>
                                    <textarea class="textarea" placeholder="Place some text here" name="description"
                                        required
                                        style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                                    {{$itemdata->description}}
                                </textarea>
                                </div>
                                <!-- /.description -->
                            </div>
                        </div>

                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                </form>
            </div>
        </div>
    </section>
</div>
@endsection