@extends('layouts.admin_layout.admin_layout')
@section('content')


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Episodes for__{{$series->series_name}}</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Episodes</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <section class="content">
        <div  class="d-flex justify-content-center">
            <div class="form-group">
                <label>FilterBySeason</label>
                <form class="form-inline" action="">
                    <select name="season_id" id="season_id" class="form-control select2 " >
                                
                        <option selected value>All Season</option>
                                    
                        @foreach($season as $key)
                        <option value="{{$key->id}}" {{ $key->id == $selected_id['season_id'] ? 'selected' : '' }}>{{$key->season_name}}</a></option>
                        @endforeach
                                    
                                
                    </select> 
                    <button type='submit'  class="btn btn-primary">Filter</button>
                </form>
            </div>
        </div>                   
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <x-alert />
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title text-bold"></h3>
                        
                            <button type="button" class="btn btn-primary mr-3" style="max-width: 150px; float:right; display:inline-block;">
                                <a href="{{ url('admin/episode-create/'.$series->id) }}" style="color: #fff; background-color: transparent; text-decoration: none;">
                                <i class="fas fa-plus"> </i>
                                    Add    
                                </a>
                           </button>

                            <button type="button" class="btn btn-success mr-3" style="max-width: 150px; float:right; display:inline-block;">
                                <i class="fas fa-arrow-circle-left"> </i>
                                <a href="{{url('admin/series')}}" style="color: #fff; background-color: transparent; text-decoration: none;">
                                    Back
                                </a>
                            </button>
                    </div>
                    
                    <!-- /.card-header -->
                    <div class="card-body" style="overflow-x:auto;">

                        <table id="story" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sl.No</th>
                                    <th>Thumbnail</th>
                                    <th>Name</th>
                                    <th>Poster</th>
                                    <th>Series</th>
                                    <th>Season</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($episodes as $episode)
                                @if($episode->content_type=='series')
                                <tr>

                                    <td>{{ $no++ }}</td>
                                    
                                    <td>
                                        @if(!empty($episode->image))
                                        <img style="width: 100px; height: 100px;"  alt="no image" src="{{asset('images/'.$episode->image)}}"  />
                                        @endif
                                    </td>
                                    <td>{{$episode->name}}</td>
                                    <td>
                                        @if(!empty($episode->banner_image))
                                        <img style="width: 100px; height: 100px;"  alt="no image" src="{{asset('images/'.$episode->banner_image)}}"  />
                                        @endif
                                    </td>
                                    <td>{{$episode->series->series_name}}</td>
                                    <td>{{$episode->seasons->season_name}}</td>

                                    <td>
                                        <a href="{{url('admin/episode-edit/'.$episode->id.'/'.$series->id)}}" class="btn btn-success"
                                            role="button"><i class="material-icons option-icon">mode_edit</i></a>
                                        &nbsp; &nbsp;
                                        <a href="{{url('admin/episode-delete/'.$episode->id)}}"
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