@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Channel</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Tv Channels</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <x-alert />
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Tv Channels</h3>
                        <a href="{{ url('admin/channel-create') }}"
                            style="max-width: 150px; float:right; display:inline-block;"
                            class="btn btn-block btn-primary"><i class="fas fa-plus"></i>Add</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="overflow-x:auto;">

                        <table id="story" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sl.No</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Tv Category</th>
                                    <th>BannerImage</th>
                                    <th style="width:2rem;">Url</th>
                                    <th>Url Type</th>
                                    <th>Country</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($items as $item)
                                @if($item->content_type=='channel')
                                <tr>
                                    
                                    <td>{{ $no++ }}</td>
                                    <td>{{$item->name}}</td>
                                    <td>
                                        @if(!empty($item->image))
                                        <img style="width: 60px; height: 60px;"  alt="image"
                                            src="{{asset('images/'.$item->image)}}"  />
                                        @endif
                                    </td>
                                    <td>{{$item->tv_cat_name}}</td>
                                    <td>
                                        @if(!empty($item->banner_image))
                                        <img style="width: 60px; height: 60px;"  alt="image"
                                            src="{{asset('images/'.$item->banner_image)}}"  />
                                        @endif
                                    </td>
                                    <td><h5 style="width:15rem;">
                                    @if(!empty($item->url))
                                        {{$item->url}}
                                        @else
                                        <?php echo " no url "?>
                                        @endif
                                    </h5>
                                    </td>
                                    <td>{{$item->type_name}}</td>
                                    <td>{{$item->country_name}}</td>
                                    
                                   


                                    <td>
                                        <a href="{{url('admin/channel-edit/'.$item->id)}}" class="btn btn-success"
                                            role="button"><i class="material-icons option-icon">mode_edit</i></a>
                                        <!-- &nbsp; &nbsp; -->
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModalCenter_{{$item->id}}">
                                            <i class="material-icons option-icon">launch</i>
                                        </button>
                                        <div class="modal fade" id="exampleModalCenter_{{$item->id}}" tabindex="-1"
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
                                                        <h3>Channel Name:- </h3>
                                                        <h5>{{$item->name}}</h5>
                                                        <br>
                                                        <h3>Image:- </h3>
                                                            @if(!empty($item->image))
                                                            <img style="width: 60px; height: 60px;"  alt="image"
                                                                src="{{asset($item->image)}}"  />
                                                            @endif
                                                        <br>
                                                        <br>
                                                        <h3>Channel Category:- </h3>
                                                        <h5>{{$item->tv_cat_name}}</h5>
                                                        <br>
                                                            <h3>Banner Image:- </h3>
                                                            @if(!empty($item->banner_image))
                                                                <img style="width: 60px; height: 60px;"  alt="image"
                                                                src="{{asset($item->banner_image)}}"  />
                                                            @endif
                                                            <br>
                                                        <br>
                                                        <h3>Url:- </h3>
                                                        <h5>{{$item->url}}</h5>
                                                        <br>
                                                        <h3>Type:- </h3>
                                                        <h5>{{$item->type_name}}</h5>
                                                        <br>
                                                        <h3>Country:- </h3>
                                                        <h5>{{$item->country_name}}</h5>
                                                        <br>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary"
                                                            data-dismiss="modal">Close</button>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a href="{{url('admin/channel-delete/'.$item->id)}}"
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