@extends('layouts.admin_layout.admin_layout')
@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Add Content</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a class='warning' href="{{url('admin/dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{ url('admin/content') }}">Content</a></li>
            <li class="breadcrumb-item active">Add Content</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
    <!-- /.content-header -->
      <!-- Main content -->
      <section class="content">
      <div class="container-fluid">
        <div class="row justify-content-center mt-5">
          <!-- left column -->
          <div class="col-md-7">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add New Price</h3>
              </div>
              <br>
              <x-alert/>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="contentForm" id="contentForm"  action="{{ url('admin/content-submit') }}"   method="post" enctype="multipart/form-data">@csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="prdct_name">Price in Words</label>
                    <input type="text" class="form-control" id="prdct_name" name="prdct_name" value="{{ old('prdct_name') }}" placeholder="Enter Product Name" >
                  </div>
                  <div class="form-group">
                    <label for="prdct_price">Price in Numbers</label>
                    <input type="text" class="form-control" id="prdct_price" name="prdct_price" value="{{ old('prdct_price') }}" placeholder="Enter Product Price" >
                  </div>
                  <div class="form-group">
                    <label for="prdct_key">Product Key</label>
                    <input type="text" class="form-control" id="prdct_key" name="prdct_key" value="{{ old('prdct_key') }}" placeholder="Enter Product Key" >
                  </div>
                  
                </div>
                <!-- /.card-body -->
                

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
    
</div>
<!-- /.content-wrapper -->

@endsection