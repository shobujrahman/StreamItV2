@extends('layouts.admin_layout.admin_layout')
@section('content')
  
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Story</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Edit Users</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
        <x-alert/>
            <!-- SELECT2 EXAMPLE -->
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">Edit Users</h3>

                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
                </div>
            </div>
            <!-- /.card-header -->
            <form name="storyForm" id="storyForm" action="{{ url('admin/Rupdate/'.$userEdit->id) }}" method="post" enctype="multipart/form-data">@csrf
            <div class="card-body">
                  <div class="row">
                    <div class="col-md-6">
                      <!-- /.form-group -->
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name"  value="{{$userEdit->name}}">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter email"  value="{{$userEdit->email}}">
                        </div>
                        

                      <!-- /.form-group -->
                    <div class="col-md-6">
                      <div class="form-group">
                        <label>Status</label>
                          <select class="form-control select2" name="status" id="status" style="width: 100%;">	
                            <?php if ($userEdit['status'] == 1) { ?>
                              <option value="1" selected="selected">Enabled</option>
                              <option value="0" >Disabled</option>
                            <?php } else { ?>
                              <option value="1" >Enabled</option>
                              <option value="0" selected="selected">Disabled</option>
                            <?php } ?>
						  </select>
                          
                      </div>
                    </div>
                    </div>
                    <!-- /.col -->
                  </div>
                <!-- /.row -->

            
                
            </div>
            <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Update</button>
            </div>
        </form>
        

        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>
  <!-- /.content-wrapper -->
@endsection

