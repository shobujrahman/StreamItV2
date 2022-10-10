@extends('layouts.admin_layout.admin_layout')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Video Category</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{ url('admin/vdoCat-index') }}">Video Category</a></li>
            <li class="breadcrumb-item active">Add Category</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
    
      <section class="content">
      <div class="container-fluid">
        <div class="row justify-content-center mt-5">
          <div class="col-md-6">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Video Category</h3>
              </div>
              <br>
              <!-- <x-alert/> -->
              
              <form name="categoryForm" id="categoryForm"  action="{{ url('admin/vdoCat-submit') }}"   method="post" enctype="multipart/form-data">@csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="video_cat_name">Title*</label>
                        <input type="text" class="form-control @error('video_cat_name') is-invalid @enderror" id="video_cat_name" name="video_cat_name" value="{{ old('video_cat_name') }}" placeholder="Enter Category Name" >
                    </div>
                  
                  
                    <div class="form-group">
                        <label for="video_cat_image">Image*</label>
                        <div class="input-group">
                          <input type="file" id="video_cat_image" name="video_cat_image" class="dropify @error('video_cat_image') is-invalid @enderror"  > 
                          @error('video_cat_image')
                            <p class="alert-danger">{{ $message }}</p>
                          @enderror
                        </div>
                    </div>
                  
                </div>
                
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>

              </form>
            </div>
        </div>
      </div>
    </section>    
</div>
@endsection