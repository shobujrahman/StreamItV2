@extends('layouts.admin_layout.admin_layout')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit Series</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/series') }}">Manage Series</a></li>
                        <li class="breadcrumb-item active">Edit Series</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>


    <section class="content">
        <div class="container-fluid">

            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">{{$series->series_name}}</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>

                <form name="seriesForm" id="seriesForm" action="{{ url('admin/series-update/'.$series->id) }}"
                    method="post" enctype="multipart/form-data">@csrf

                    <input type="hidden" name="old_thumb" value="{{$series->thumbnail_image}}">
                    <input type="hidden" name="old_poster" value="{{$series->poster_image}}">

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="series_name">Title</label>
                                    <input type="text" class="form-control @error('series_name') is-invalid @enderror"
                                        name="series_name" id="series_name" value="{{ $series->series_name }}"
                                        placeholder="Enter Title">
                                </div>
                            </div>
                            
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="star">Actor</label>
                                    <select name="star_id_actor[]" id="star_id_actor"
                                        class="form-control select2 @error('star_id_actor') is-invalid @enderror"
                                        multiple="" style="width: 100%;">
                                        @foreach($actor as $actor)
                                        <option value="{{$actor->id}}" 
                                            @foreach($series->actors as $actorlist)
                                                {{$actorlist->pivot->star_id == $actor->id ? 'selected': ''}}   
                                            @endforeach>{{$actor->star_name}}</option>
                                        @endforeach
                                        
                                    </select>
                                    @error('star_id_actor')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Writer</label>
                                    <select name="star_id_writer[]" id="star_id_writer"
                                        class="form-control select2 @error('star_id_writer') is-invalid @enderror"
                                        multiple="multiple" style="width: 100%;">
                                       
                                        @foreach($writer as $writer)
                                        <option value="{{$writer->id}}" 
                                            @foreach($series->actors as $writerlist)
                                                {{$writerlist->pivot->star_id == $writer->id ? 'selected': ''}}   
                                            @endforeach>{{$writer->star_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('star_id_writer')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Director</label>
                                    <select name="star_id_director[]" id="star_id_director"
                                        class="form-control select2 @error('star_id_director') is-invalid @enderror"
                                        multiple="multiple" style="width: 100%;">
                                        @foreach($director as $director)
                                        <option value="{{$director->id}}" 
                                            @foreach($series->actors as $directorlist)
                                                {{$directorlist->pivot->star_id == $director->id ? 'selected': ''}}   
                                            @endforeach>{{$director->star_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('star_id_director')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!-- -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Category</label>
                                    <select class="form-control select2 @error('cat_id') is-invalid @enderror"
                                        name="cat_id[]" id="cat_id" multiple="" tabindex="-1" aria-hidden="true"
                                        data-parsley-multiple="cat_id[]">
                                        @foreach($category as $cat)
                                        <option value="{{$cat->id}}" 
                                            @foreach($series->categories as $categorylist)
                                                {{$categorylist->pivot->category_id == $cat->id ? 'selected': ''}}   
                                            @endforeach>{{$cat->video_cat_name}}</option>
                                        @endforeach
                                        
                                    </select>
                                    @error('cat_id')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Country</label>
                                    <select class="form-control select2 @error('country_id') is-invalid @enderror"
                                        name="country_id[]" id="country_id" multiple="" tabindex="-1" aria-hidden="true"
                                        data-parsley-multiple="country_id[]" style="width: 100%;">
                                        @foreach($country as $country)
                                        <option value="{{$country->id}}"
                                            @foreach($series->countries as $countrylist)
                                                {{$countrylist->pivot->country_id == $country->id ? 'selected': ''}}   
                                            @endforeach>{{$country->country_name}}</option>
                                        @endforeach
                                        
                                    </select>
                                    @error('country_id')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="release_date">Release Date</label>
                                    <div class="input-group">
                                        <input type="date"
                                            class="form-control @error('release_date') is-invalid @enderror"
                                            id="release_date" name="release_date" value="{{ $series->release_date }}">

                                    </div>
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="imgType"> Image Type</label>
                                    <select class="form-control select2 @error('imgType') is-invalid @enderror"
                                        name="imgType" id="imgType" style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        <option value="file" <?php if($series->imgType=="file"){
                                            echo "selected";
                                        } ?>>File</option>
                                        <option value="link" <?php if($series->imgType=="link"){
                                            echo "selected";
                                        } ?>>Link</option>
                                    </select>
                                    @error('imgType')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            
                        </div>
                        
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-md-6" id="thum">
                                <div class="form-group">
                                    <label for="thumbnail_image">Thumbnail</label>
                                    <div class="input-group">
                                        <input type="file" id="thumbnail_image" name="thumbnail_image" class="dropify"
                                            data-allowed-formats="portrait square"
                                            data-default-file="{{asset('images/'.$series->thumbnail_image)}}">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" id="post">
                                <div class="form-group">
                                    <label for="poster_image"> Poster</label>
                                    <div class="input-group">
                                        <input type="file" id="poster_image" name="poster_image" class="dropify"
                                            data-allowed-formats="landscape"
                                            data-default-file="{{asset('images/'.$series->poster_image)}}">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" style="display:none;" id="thumdiv">
                                <div class="form-group">
                                    <label for="thumbUrl">Thumbnail Url </label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="thumbUrl" name="thumbUrl"
                                            value="{{$series->thumbUrl}}" placeholder="">
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-6" style="display:none;" id="postdiv">
                                <div class="form-group">
                                    <label for="posterUrl">Poster Url </label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="posterUrl" name="posterUrl"
                                            value="{{$series->posterUrl}}" placeholder="">
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-6 text-center">
                                <img src="" id="thumb" class="img-thumbnail" name="thumbnail_image"
                                    style="height: 200px; display:none;">
                            </div>
                            <div class="col-md-6 text-center">
                                <img src="" id="poster" class="img-thumbnail" name="poster_image"
                                    style="height: 200px; display:none;">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="description">
                                Description
                            </label>

                            <textarea class="textarea" placeholder="Place some text here" name="description"
                                style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                                {{$series->description}}
                            </textarea>
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




<script>
    var button = document.querySelector('.button');
    var inputValue = document.querySelector('.inputValue');


    button.addEventListener('click', function() {
        //   fetch('https://api.openweathermap.org/data/2.5/weather?q='+inputValue.value+'&appid=e6620ecd30405d690e59d2a3ec7ade42')
        fetch('https://api.themoviedb.org/3/tv/' + inputValue.value + '?api_key=ac0bfd74754b468bb9116ef77a40392f')
            .then(response => response.json())
            .then(data => {
                var nameValue = data['id'];
                var descValue = data['name'];
                var tempValue = data['first_air_date'];
                var overviewValue = data['overview'];
                var poster = 'https://image.tmdb.org/t/p/w185/' + data.backdrop_path;
                var thumbnail = 'https://image.tmdb.org/t/p/w780/' + data.poster_path;


                document.getElementById('series_name').value = descValue;
                document.getElementById('release_date').value = tempValue;
                document.getElementById("description").innerHTML = overviewValue;
                document.getElementById("posterUrl").value = poster;
                document.getElementById("thumbUrl").value = thumbnail;
                document.getElementById("poster").src = poster;
                document.getElementById("thumb").src = thumbnail;


                return fetch('https://api.themoviedb.org/3/tv/' + inputValue.value + '/credits' + '?api_key=ac0bfd74754b468bb9116ef77a40392f')
            })
            .then(response => response.json())
            .then(data => {
                
                var crew = data['crew'];
                var cast = data['cast'];

            
                $.each(crew, function (index, value) {
                    
                    if(value.known_for_department == 'Directing'){
                        $('#star_id_director').append('<option value="' + value.name + '" selected>' + value.name + 
                        '</option>');
                    }
                    else if(value.known_for_department == 'Writing'){
                        $('#star_id_writer').append('<option value="' + value.name + '" selected>' + value.name + 
                        '</option>');
                    }
                });

                $.each(cast, function (index, value) {
                    
                    if(value.known_for_department == 'Acting'){
                        $('#star_id_actor').append('<option value="' + value.name + '" selected>' + value.name + 
                        '</option>');
                    }
                
                });
                
            })
            .catch(err => alert('wrong city'))
    })
</script>
@endsection


