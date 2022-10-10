@extends('layouts.admin_layout.admin_layout')
@section('content')

<style>
    .dropdown-menu > a:hover {
   
    background-color: #007BFF;
    /* opacity: 0.50; */
}
</style>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Series</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Series</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row" >
            <div class="col-md-12">
                <x-alert />
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Series</h3>
                        <a href="{{ url('admin/series-create') }}" style="max-width: 150px; float:right; display:inline-block;" 
                class="btn btn-block btn-primary"><i class="fas fa-plus"></i> <strong>Add</strong> </a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="overflow-x:auto;">

                        <table id="story" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sl.No</th>
                                    <th>Name</th>
                                    <th>Seasons</th>
                                    <th>ThumbnailImage</th>
                                    <th>Category</th>
                                    <th>PosterImage</th>
                                    <th>Country</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($series as $series)
                               
                                <tr>
                                    
                                        <td>{{ $no++ }}</td>
                                       
                                        <td>{{$series->series_name}}</td>
                                        <td>
                                            <ul>
                                                @foreach($series->seasons as $season)
                                                <li>
                                                    {{$season->season_name}}
                                                </li>
                                                @endforeach
                                            </ul>
                                            
                                        </td>

                                        <td>
                                            @if(!empty($series->thumbnail_image))
                                                <img style="width: 100px; height: 100px;"  alt="no image"
                                                    src="{{asset('images/'.$series->thumbnail_image)}}"  />
                                            @else
                                                @if(!empty($series->thumbUrl))
                                                <img style="width: 100px; height: 100px;"  alt="no image"
                                                    src="{{$series->thumbUrl}}"  />
                                                @endif
                                            @endif
                                        </td>
                                        
                                        <td>
                                            <ul>
                                                @foreach($series->categories as $category)
                                                <li>
                                                    {{$category->video_cat_name}}
                                                </li>
                                                @endforeach
                                            </ul>
                                            
                                        </td>
                                        
                                        <td>
                                            @if(!empty($series->poster_image))
                                                <img style="width: 100px; height: 100px;"  alt="no image"
                                                    src="{{asset('images/'.$series->poster_image)}}"  />
                                            @else
                                            @if(!empty($series->posterUrl))
                                                <img style="width: 100px; height: 100px;"  alt="no image"
                                                    src="{{$series->posterUrl}}"  />
                                            @endif
                                            @endif
                                        </td>

                                         <td>
                                            <ul>
                                                @foreach($series->countries as $country)
                                                <li>
                                                    {{$country->country_name}}
                                                </li>
                                                @endforeach
                                            </ul>
                                            
                                        </td>

                                        <td>

                                         <div class="dropdown">
                                                <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                                   Actions
                                                </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="{{ url('admin/seasons/'.$series->id) }}">
                                                            Manage Seasons
                                                        </a>
                                                        
                                                        <a class="dropdown-item" href="{{ url('admin/episode/'.$series->id) }}">
                                                            Manage Episodes
                                                        </a>
                                                        

                                                        <a href="{{url('admin/series-edit/'.$series->id)}}" class="dropdown-item" >
                                                            <i class="fas fa-pen-fancy"></i>
                                                             Edit Series
                                                        </a>

                                                        <a href="{{url('admin/series-delete/'.$series->id)}}" onclick="return confirm('Are you sure want to delete this News?')" class="dropdown-item">
                                                            <i class="fas fa-trash-alt"></i>
                                                            Delete Series
                                                        </a>
                                                    </div>
                                                    
                                                
                                            </div>
                                            
                                            <!-- <a href="{{url('admin/video-edit/'.$series->id)}}" class="btn btn-success"
                                                role="button"><i class="material-icons option-icon">mode_edit</i></a>
                                        
                                       
                                            <a href="{{url('admin/video-delete/'.$series->id)}}"
                                                onclick="return confirm('Are you sure want to delete this News?')"
                                                class="btn btn-danger" role="button"><i
                                                    class="material-icons option-icon">delete</i></a> -->
                                        </td>
                                    
                                </tr>
                                
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection