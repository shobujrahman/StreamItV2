@extends('layouts.admin_layout.admin_layout')
@section('content')
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Feedback</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Feedback</li>
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
              <h3 class="card-title">Feedback</h3>
              
                <!-- <a href="{{ url('admin/tvcat-create') }}" style="max-width: 150px; float:right; display:inline-block;" 
                class="btn btn-block btn-primary"><i class="fas fa-plus"></i>Add</a> -->
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              
              <table id="category" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Sl.No</th>
                  <th>Name</th>
                  <th>Android Version</th>
                  <th>Email</th>
                  <th>Message</th>
                  <!-- <th>Actions</th> -->
                  
                </tr>
                </thead>
                <tbody>
                @foreach($feedback as $fdback)
                <tr>
                  
                  <td>{{ $no++ }}</td>
                  <td>{{$fdback->device_name}}</td>
                  <td>{{$fdback->android_version}}</td>
                  <td>{{$fdback->email}}</td>
                  <td>{{$fdback->message}}</td>
                  
                  
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
