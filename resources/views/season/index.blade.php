@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Manage Seasons</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Seasons</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <x-alert />
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Seasons For {{$series->series_name}}</h3>
                       
                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" style="max-width: 150px; float:right; display:inline-block;">
                            <i class="fas fa-plus-circle">Add</i>
                            
                        </button>
                        
                        <button type="button" class="btn btn-success mr-3" style="max-width: 150px; float:right; display:inline-block;">
                            <a href="{{url('admin/series')}}" style="color: #fff; background-color: transparent; text-decoration: none;">
                            <i class="fas fa-arrow-circle-left"> </i>
                                Back
                            </a>
                        </button>

                            <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header bg-primary">
                                        <h5 class="modal-title" id="exampleModalLongTitle">{{$series->series_name}}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form onsubmit="return validateForm()" name="seasonForm" id="seasonForm"  action="{{ url('admin/seasons-submit/'.$series->id) }}"   method="post" enctype="multipart/form-data">@csrf
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <label for="season_name">Season Name</label>
                                                    <input type="text" class="form-control @error('season_name') is-invalid @enderror" id="season_name" name="season_name" value="{{ old('season_name') }}" placeholder="Enter Category Name" >
                                                </div>

                                                <div class="form-group">
                                                    <label for="order">Order</label>
                                                    <input type="number" class="form-control @error('order') is-invalid @enderror" id="order" name="order" max="100" placeholder="Enter order" >
                                                </div>

                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" id="series_id" name="series_id" value="{{ old('series_id ') }}"  >
                                                </div>
                                            </div>
                                                    
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-primary" id="formSubmit">Create</button>
                                                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                            </div>
                                        </form>
                                    </div>
                                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body" style="overflow-x:auto;">

                        <table id="story" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sl.No</th>
                                    <th>Name</th>
                                    <th>Order</th>
                                    <th>Series</th>
                                    <th style="width:13%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($seasons as $season)
                                <tr>

                                    <td>{{ $no++ }}</td>
                                    <td>{{$season->season_name}}</td>
                                    <td>{{$season->order}}</td>
                                    <td>{{$season->series->series_name}} </td>
                                    <td>
                                        
                                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter{{$season->id}}">
                                            <i class="fas fa-pen-fancy"></i>
                                        </button>

                                            <!-- Modal -->
                                        <div class="modal fade" id="exampleModalCenter{{$season->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header bg-primary">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">{{$season->series->series_name}}</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form  name="seasonForm" id="seasonForm"  action="{{ url('admin/seasons-update/'.$season->id) }}"   method="post" enctype="multipart/form-data">@csrf
                                                            <div class="card-body">
                                                                <div class="form-group">
                                                                    <label for="season_name">Season Name</label>
                                                                    <input type="text" required class="form-control" id="season_name" name="season_name" value="{{$season->season_name}}" placeholder="Enter Category Name" >
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="order">Order</label>
                                                                    <input type="number" class="form-control" required id="order" name="order" max="100" placeholder="Enter order" value="{{$season->order}}">
                                                                </div>

                                                                <div class="form-group">
                                                                    <input type="hidden" class="form-control" id="series_id" name="series_id" value="{{$season->series_id}}">
                                                                </div>
                                                            </div>
                                                                    
                                                            <div class="modal-footer">
                                                                <button type="submit" class="btn btn-primary">Update</button>
                                                                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                                
                                                </div>
                                            </div>
                                        </div>
                                  
                                        &nbsp; &nbsp;
                                        <button type="button" class="btn btn-danger">
                                            <i class="fas fa-trash-alt"></i>
                                            <a href="{{url('admin/seasons-delete/'.$season->id)}}" onclick="return confirm('Are you sure want to delete this News?')">
                                
                                            </a>
                                        </button>
                                        
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









<script type="text/javascript">

function validateForm() {
  let x = document.forms["seasonForm"]["season_name"].value;
  let y = document.forms["seasonForm"]["order"].value;
  if (x == "") {
    alert("Name must be filled out");
    
    return false;
  }
  else if (y == "") {
    alert("order must be filled out");
    return false;
  }
  
}



</script>


@endsection