@extends('layouts.admin_layout.admin_layout')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Tv Category</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/tvcat-index') }}">Tv Category</a></li>
                        <li class="breadcrumb-item active">Edit Category</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-header -->
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Edit Category</h3>
                        </div>
                        <br>
        
                        <form name="tvcategoryForm" id="tvcategoryForm" action="{{ url('admin/tvcat-update/'.$channeldata->id) }}" method="post" enctype="multipart/form-data">@csrf

                            <input type="hidden" name="old_image" value="{{$channeldata->tv_cat_image}}">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="tv_cat_name">Title*</label>
                                    <input type="text" class="form-control @error('tv_cat_name') is-invalid @enderror" id="tv_cat_name" name="tv_cat_name" value="{{$channeldata->tv_cat_name}}" placeholder="Enter Tv Category Name">
                                </div>
                                
                                <div class="form-group">
                                    <label for="tv_cat_image">Image*</label>
                                    <div class="input-group">
                                    <input type="file" id="tv_cat_image" name="tv_cat_image"  class="dropify @error('tv_cat_image') is-invalid @enderror" data-default-file="{{asset('images/'.$channeldata->tv_cat_image)}}">
                                    @error('tv_cat_image')
                                        <p class="alert-danger">{{ $message }}</p>
                                    @enderror 
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection