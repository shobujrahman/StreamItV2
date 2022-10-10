@extends('layouts.admin_layout.admin_layout')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Series</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/series') }}">Manage Series</a></li>
                        <li class="breadcrumb-item active">Add Series</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>


    <section class="content">
        <div class="container-fluid">
            <!-- <x-alert /> -->
            <div class="panel-heading d-flex justify-content-center">
                <h3 class="panel-title">Import TV-Series From TMDb</h3>
            </div>
            <div class="row justify-content-center">
                <div class="input col-md-6">
                    <div class="input-group">
                        <input type="text" class="inputValue form-control" placeholder="Enter TMDB ID- ####">

                        <button type="submit" class="button btn btn-primary " id="button">Fetch</button>
                    </div>
                    <small class="form-text text-muted" id=""> </a> Get TMDb ID from here: <a
                            href="https://www.themoviedb.org/tv/" target="_blank">TheMovieDB.org.</a> </small>
                    <br>
                </div>
            </div>

            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">Add Series</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>


                <form name="seriesForm" id="seriesForm" action="{{ url('admin/series-submit') }}" method="post"
                    enctype="multipart/form-data">@csrf
                    <div class="card-body">

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group temp">
                                    <label for="series_name">Title</label>
                                    <input type="text" class="form-control @error('series_name') is-invalid @enderror"
                                        name="series_name" id="series_name" value="{{ old('series_name') }}"
                                        placeholder="Enter Title">
                                </div>
                            </div>
                            <!-- -->
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="star">Actor</label>
                                    <select name="star_id_actor[]" id="star_id_actor"
                                        class="form-control select2 @error('star_id_actor') is-invalid @enderror"
                                        multiple="" style="width: 100%;">
                                        <!-- <option disabled selected value>Select an --option</option> -->

                                        @foreach($actor as $actor)
                                        <option value="{{$actor->id}}">{{$actor->star_name}}</option>
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
                                        <!-- <option disabled selected value>Select an --option</option>     -->

                                        @foreach($writer as $writer)
                                        <option value="{{$writer->id}}">{{$writer->star_name}}</option>
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
                                        <!-- <option disabled selected value>Select an --option</option>     -->
                                        @foreach($director as $director)
                                        <option value="{{$director->id}}">{{$director->star_name}}</option>
                                        @endforeach
                                    </select>
                                    @error('star_id_director')
                                    <p class="alert-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="cat_id"> Category</label>
                                    <select class="form-control select2 @error('cat_id') is-invalid @enderror"
                                        name="cat_id[]" id="cat_id" multiple="" tabindex="-1" aria-hidden="true"
                                        data-parsley-multiple="cat_id[]">
                                        <!-- <option value=""></option> -->
                                        @foreach($category as $category)
                                        <option value="{{$category->id}}">{{$category->video_cat_name}}</option>
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
                                        <!-- <option disabled selected value>Select an --option</option> -->
                                        @foreach($country as $country)
                                        <option value="{{$country->id}}">{{$country->country_name}}</option>
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
                                            id="release_date" name="release_date" value="{{ old('release_date') }}">
                                    </div>
                                </div>
                            </div>
                            <!--  -->
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label> Image Type</label>
                                    <select class="form-control select2 @error('imgType') is-invalid @enderror"
                                        name="imgType" id="imgType" style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        <option value="file">File</option>
                                        <option value="link">Link</option>
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
                                            data-allowed-formats="portrait square">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6" id="post">
                                <div class="form-group">
                                    <label for="poster_image"> Poster</label>
                                    <div class="input-group">
                                        <input type="file" id="poster_image" name="poster_image" class="dropify"
                                            data-allowed-formats="landscape">
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-6" style="display:none;" id="thumdiv">
                                <div class="form-group">
                                    <label for="thumbUrl">Thumbnail Url </label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="thumbUrl" name="thumbUrl"
                                            value="{{ old('thumbUrl') }}" placeholder="">
                                    </div>
                                </div>
                            </div>



                            <div class="col-md-6" style="display:none;" id="postdiv">
                                <div class="form-group">
                                    <label for="posterUrl">Poster Url </label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="posterUrl" name="posterUrl"
                                            value="{{ old('posterUrl') }}" placeholder="">
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
                        <br>

                        <div class="form-group">
                            <label for="description">
                                Description
                            </label>
                            <textarea class="textarea" name="description"
                                style="width: 100%; height: 200%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">

                                <!-- <div  contenteditable="true" style="height: 200px;"> -->
                                    <p id="description"> {{Request::old('description')}}</p>
                                <!-- </div> -->
                                    
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