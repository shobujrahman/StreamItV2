@extends('layouts.admin_layout.admin_layout')
@section('content')

  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Categories</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Registered Users</li>
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
              <h3 class="card-title">Manage Categorye</h3>
                
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="category" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>id</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Profile</th>
                  <th>Status</th>
                  <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                @foreach($regusers as $reguser)
                <tr>
                  <td>{{$reguser->id}}</td>
                  <td>{{$reguser->name}}</td>
                  <td>{{$reguser->email}}</td>
                  <td>{{$reguser->image}}</td>
                  <td>
                    {{$reguser->status}}
              
                  </td>
                  <td>
                    <a href="{{url('admin/Redit/'.$reguser->id)}}"><i class="material-icons option-icon">mode_edit</i></a>
                    &nbsp; &nbsp;
                    
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
