@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Videos</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Videos</li>
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
                        <h3 class="card-title">Videos</h3>
                        <a href="{{ url('admin/video-create') }}" style="max-width: 150px; float:right; display:inline-block;" 
                class="btn btn-block btn-primary"><i class="fas fa-plus"></i><strong>Add</strong> </a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="overflow-x:auto;">

                        <table id="story" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sl.No</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Video Category</th>
                                    <th>BannerImage</th>
                                    <th style="max-width: 2rem;">Url</th>
                                    <th>Url Type</th>
                                    <th>Country</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($videos as $video)
                                @if($video->content_type=='video')
                                <tr>
                                    
                                        <td>{{ $no++ }}</td>
                                        <td>{{$video->name}}</td>
                                        <td>
                                            @if(!empty($video->image))
                                            <img style="width: 60px; height: 60px;"  alt="no image"
                                                src="{{asset('images/'.$video->image)}}"  />
                                            @endif
                                        </td>
                                        <td>{{$video->video_cat_name}}</td>
                                        <td>
                                        @if(!empty($video->banner_image))
                                        <img style="width: 60px; height: 60px;"  alt="image"
                                            src="{{asset('images/'.$video->banner_image)}}"  />
                                        @endif
                                    </td>
                                        <!-- <td>
                                        @if(!empty($video->url))
                                            {{$video->url}}
                                            @else
                                            <?php echo " no url "?>
                                            @endif
                                        </td> -->
                                        <td><h5 style="width:15rem;">

                                            @if(!empty($video->url))
                                                {{$video->url}}
                                                @else
                                                <?php echo " no url "?>
                                                @endif
                                        </h5>
                                        </td>
                                        <td>{{$video->type_name}}</td>
                                         <td>{{$video->country_name}}</td>

                                        <td>
                                            <a href="{{url('admin/video-edit/'.$video->id)}}" class="btn btn-success"
                                                role="button"><i class="material-icons option-icon">mode_edit</i></a>
                                            <!-- &nbsp;  -->
                                            <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModalCenter_{{$video->id}}">
                                            <i class="material-icons option-icon">launch</i>
                                        </button>
                                        <div class="modal fade" id="exampleModalCenter_{{$video->id}}" tabindex="-1"
                                            role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">Channels</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <br>
                                                        <h3>Chanel Name:- </h3>
                                                        <h5>{{$video->name}}</h5>
                                                        <br>
                                                        <h3>Image:- </h3>
                                                            @if(!empty($video->image))
                                                            <img style="width: 60px; height: 60px;"  alt="image"
                                                                src="{{asset($video->image)}}"  />
                                                            @endif
                                                        <br>
                                                        <br>
                                                        <h3>Chanel Category:- </h3>
                                                        <h5>{{$video->video_cat_name}}</h5>
                                                        <br>
                                                            <h3>Banner Image:- </h3>
                                                            @if(!empty($video->banner_image))
                                                                <img style="width: 60px; height: 60px;"  alt="image"
                                                                src="{{asset($video->banner_image)}}"  />
                                                            @endif
                                                            <br>
                                                        <br>
                                                        <h3>Url:- </h3>
                                                        <h5>{{$video->url}}</h5>
                                                        <br>
                                                        <h3>Type:- </h3>
                                                        <h5>{{$video->type_name}}</h5>
                                                        <br>
                                                        <h3>Country:- </h3>
                                                        <h5>{{$video->country_name}}</h5>
                                                        <br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary"
                                                            data-dismiss="modal">Close</button>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                            <a href="{{url('admin/video-delete/'.$video->id)}}"
                                                onclick="return confirm('Are you sure want to delete this News?')"
                                                class="btn btn-danger" role="button"><i
                                                    class="material-icons option-icon">delete</i></a>
                                        </td>
                                    
                                </tr>
                                @endif
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