@extends('layouts.admin_layout.admin_layout')
@section('content')
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Video Categories</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Video Category</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <x-alert/>
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Video Category</h3>
                
                <a href="{{ url('admin/vdoCat-create') }}" style="max-width: 150px; float:right; display:inline-block;" 
                class="btn btn-block btn-primary"><i class="fas fa-plus"></i>Add</a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              
              <table id="category" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Sl.No</th>
                  <th>Video Cat Name</th>
                  <th>Video Cat Image</th>
                  <th>Actions</th>
                  
                </tr>
                </thead>
                <tbody>
                @foreach($videocategory as $vdocat)
                <tr>
                  
                  <td>{{ $no++ }}</td>
                  <td>{{$vdocat->video_cat_name}}</td>
                  <td>
                    
                  @if(!empty($vdocat->video_cat_image))
                    <img style="width: 60px; height: 60px;" src="{{asset('images/'.$vdocat->video_cat_image)}}"/>
                  @endif
                  </td>
                  <td>
                    <a href="{{url('admin/vdoCat-edit/'.$vdocat->id)}}" class="btn btn-success" role="button"><i class="material-icons option-icon">mode_edit</i></a>
                    &nbsp; &nbsp;
                    <a href="{{url('admin/vdoCat-delete/'.$vdocat->id)}}" class="btn btn-danger" role="button" onclick="return confirm('Are you sure want to delete this News?')" >
									                <i class="material-icons option-icon">delete</i></a>
                  </td>
                  
                </tr>
                @endforeach

                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- /.content-wrapper -->
  @endsection
