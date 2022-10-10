@extends('layouts.admin_layout.admin_layout')
@section('content')

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- content -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Episodes</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/episode/'.$series->id) }}">Manage Episode</a>
                        </li>
                        <li class="breadcrumb-item active">Edit Episode</li>
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
                    <h3 class="card-title">Edit Episode for {{$series->series_name}}({{$episode->seasons->season_name}})
                    </h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>

                <form name="episodeForm" id="episodeForm"
                    action="{{ url('admin/episode-update/'.$episode->id.'/'.$series->id) }}" method="post"
                    enctype="multipart/form-data">@csrf

                    <input type="hidden" name="old_thumb" value="{{$episode->image}}">
                    <input type="hidden" name="old_banner_image" value="{{$episode->banner_image}}">
                    <input type="hidden" name="old_video" value="{{$episode->video_upload}}">

                    <div class="card-body">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Seasons</label>
                                    <select name="season_id" id="season_id"
                                        class="form-control select2 @error('season_id') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option disabled selected value>Choose Season</option>
                                        @foreach($series->seasons as $season)
                                        <option value="{{$season->id}}" <?php if ($season->id == $episode->season_id) {
                                                                            echo "selected";
                                                                        } ?>>{{$season->season_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('season_id')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>

                                <!--  -->

                                <div class="form-group col-md-6">
                                    <label for="name">Episode Name</label>
                                    <input type="text" class="form-control @error('name') is-invalid @enderror"
                                        name="name" id="name" value="{{ $episode->name }}"
                                        placeholder="Enter Episode Name">
                                    @error('name')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>

                                <!-- -->

                                <div class="form-group col-md-6">
                                    <label>Url Type</label>
                                    <select name="url_type" id="url_type"
                                        class="form-control select2 @error('url_type') is-invalid @enderror"
                                        value="{{ old('url_type') }}" style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($urltype as $url)
                                        <option value="{{$url->id}}" <?php if ($url->id == $episode->url_type) {
                                                                            echo "selected";
                                                                        } ?>>{{$url->type_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('url_type')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>

                                <!--  -->

                                <div class="form-group col-md-6" id='url'>
                                    <label for="url">Base Url</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control @error('url') is-invalid @enderror"
                                            id="url" name="url" value="{{ $episode->url }}"
                                            placeholder=" https://www.youtube.com/watch?v=II2EO3">
                                        @error('url')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <!--  -->
                                <!--  -->

                                <div class="form-group col-md-6" style="display: none;" id="upload_video">
                                    <label for="video_upload">Video Upload</label>
                                    <div class="input-group">
                                        <input type="file"
                                            class="form-control @error('video_upload') is-invalid @enderror"
                                            id="video_upload" name="video_upload" value="{{ old('video_upload') }}">
                                        @error('video_upload')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <br>
                                    <div>
                                        <video width="520" height="220" preload="metadata" controls>
                                            <source src="{{asset('images/'.$episode->video_upload)}}" type="video/mp4">
                                        </video>

                                    </div>
                                </div>

                                <!-- multiple quality url -->
                                <br>    
                                <div class="row add_input_fields col-12" id="urlQuality">
                                    <div class="form-group col-md-6">
                                        <label>Quality</label>
                                        @if(count($episode->urls) > 0)
                                            @foreach($episode->urls as $url)
                                            &nbsp;
                                            <input type="text" name="quality[]" class="form-control" placeholder="Quality" value="{{ $url->quality}}" style="width:521px;">
                                            @endforeach
                                            @else
                                            <input type="text" name="quality[]" class="form-control" placeholder="Quality" style="width:521px;">
                                        @endif
                                    </div>
                                    <div class="form-group col-md-5" style="margin-left:15px;">
                                        <label>Url</label>
                                        @if(count($episode->urls) > 0)
                                            @foreach($episode->urls as $url)
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
                                <div class="form-group col-md-12">
                                    <label>Unlock Content*</label>
                                    <select name="watch_ads" id="watch_ads"
                                        class="form-control select2 @error('watch_ads') is-invalid @enderror"
                                        style="width: 100%;">
                                        <option value='free' <?php if ($episode->subscription == 'free') {
                                                                    echo "selected";
                                                                } ?>>Free</option>
                                        <option value='yes' <?php if ($episode->subscription == 'yes') {
                                                                echo "selected";
                                                            } ?>>Watch with Ads</option>
                                        <option value='paid' <?php if ($episode->subscription == 'paid') {
                                                                    echo "selected";
                                                                } ?>>Subscription</option>
                                        <option value='rent' <?php if ($episode->subscription == 'rent') {
                                                                    echo "selected";
                                                                } ?>>Rent</option>
                                    </select>
                                    @error('watch_ads')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                                <!--  -->
                                
                                <div class="form-group col-md-12" style="display: none;" id='content'>
                                    <label>Monetization</label>
                                    <select name="content_name" id="content_name" class="form-control select2"
                                            style="width: 100%;">
                                        <option disabled selected value>Choose</option>
                                        @foreach($contents as $content)

                                        <option value="{{$content->id}}" <?php if ($content->id == $episode->content_id) {
                                                                echo "selected";} ?>>{{$content->prdct_name}}</option>

                                        @endforeach
                                    </select>
                                </div>
                                
                                <!--  -->
                                <div class="form-group col-md-6">
                                    <label for="image">Thumbnail</label>
                                    <div class="input-group">
                                        <input type="file" id="image" name="image"
                                            class="dropify @error('image') is-invalid @enderror"
                                            data-allowed-formats="portrait square"
                                            data-default-file="{{asset('images/'.$episode->image)}}">
                                        @error('image')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <!--  -->
                                <div class="form-group col-md-6">
                                    <label for="banner_image">Poster</label>
                                    <div class="input-group">
                                        <input type="file" id="banner_image" name="banner_image"
                                            class="dropify @error('banner_image') is-invalid @enderror"
                                            data-allowed-formats="landscape square"
                                            data-default-file="{{asset('images/'.$episode->banner_image)}}">
                                        @error('banner_image')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>

                                <br>
                                <div class="col-md-12">
                                    <span class="badge badge-primary">Optional:</span>
                                </div>

                                
                                <div class="form-group col-md-6">
                                    <label for="token">Token</label>
                                    <input type="text" class="form-control" name="token" id="token" value="{{ $episode->token }}" placeholder="Enter Token">
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
                                                value="{{ $episode->user_agent }}" placeholder="Enter User Agent">
                                </div>
                                 
                                    <!-- -->

                                <div class="form-group col-md-12">
                                    <label for="description">
                                            Description
                                    </label>
                                    <textarea class="textarea" placeholder="Place some text here" name="description"
                                            required
                                            style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                                            {{ $episode->description }}
                                    </textarea>
                                </div>

                                <div class="form-group">
                                    <input type="hidden" class="form-control" id="series_id" name="series_id"
                                        value="{{ $episode->series_id }}">
                                </div>
                            </div>
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


<script>
    $(document).ready(function(){
        var max_fields = 10;
        var wrapper = $(".add_input_fields"); //Fields wrapper
        var add_button = $(".add_input_fields_button"); //Add button ID
        var x = 1; //initlal text box count
        $(add_button).click(function(e){
            e.preventDefault();
            if(x < max_fields){
                x++;
                $(wrapper).append(
                    "<div class='row add_input_fields col-md-12 add_fields' style='margin-left:288px'><div class='form-group col-md-3'><input type='text' value name='quality[]' class='form-control' placeholder='Quality'></div><div class='form-group col-md-4'><input type='text' style='margin-left:11px' name='urls[]' class='form-control' placeholder='Url'></div><a href='#' class='remove_field'> <i class='fas fa-times'></i></a></div>"
                    );
                }
            });
            
        $(wrapper).on("click",".remove_field", function(e){ //user click on remove text
            e.preventDefault(); 
            $(this).parent('div').remove();
            x--;
        });
    });
</script>
@endsection