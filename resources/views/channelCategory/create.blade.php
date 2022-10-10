@extends('layouts.admin_layout.admin_layout')
@section('content')

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
              <h3 class="card-title">Add New Category</h3>
            </div>
              <br>
            <form name="categoryForm" id="categoryForm"  action="{{ url('admin/tvcat-submit') }}"   method="post" enctype="multipart/form-data">@csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="tv_cat_name">Title*</label>
                  <input type="text" class="form-control @error('tv_cat_name') is-invalid @enderror" id="tv_cat_name" name="tv_cat_name" value="{{ old('tv_cat_name') }}" placeholder="Enter Category Name" >
                </div>
                  
                <div class="form-group">
                  <label for="tv_cat_image">Image*</label>
                  <div class="input-group">
                    <input type="file" id="tv_cat_image" name="tv_cat_image"  class="dropify @error('tv_cat_image') is-invalid @enderror"> 
                    @error('tv_cat_image')
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
    </div>
  </section>
</div>

@endsection