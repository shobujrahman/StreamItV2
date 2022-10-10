@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Slider</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Manage Slider</li>
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
                        <h3 class="card-title">Manage Slider</h3>
                        <a href="{{ url('admin/slidecreate') }}"
                            style="max-width: 150px; float:right; display:inline-block;"
                            class="btn btn-block btn-primary"><i class="fas fa-plus"></i>Add</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">

                        <table id="story" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Sl.No</th>
                                    <th>Name</th>
                                    <th>Channel Item</th>
                                    <th>Video Item</th>
                                    <th>Image</th>
                                    <th>Type</th>
                                    <th style="width:180px;">Action</th>
                                </tr>
                            </thead>
                            @foreach($sliders as $slider)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{$slider->sname}}</td>
                                
                                <td>
                                        @if($slider->slider_type=='tvChannel')
                                        {{$slider->name}}
                                        @else
                                        <?php echo " No Item "?>
                                        @endif
                                </td>
                                
                                <td>
                                        @if($slider->slider_type=='video')
                                        {{$slider->name}}
                                        @else
                                        <?php echo " No Item "?>
                                        @endif
                                </td>
                                
                                <td>
                                    @if(!empty($slider->image))
                                    <img style="width: 50px; height: 50px;"
                                        src="{{asset('images/'.$slider->image)}}" />
                                    @endif
                                </td>
                                <td> {{$slider->slider_type}}</td>
                                <td>

                                    <a href="{{url('admin/slideedit/'.$slider->id)}}" class="btn btn-success"
                                        role="button"><i class="material-icons option-icon">mode_edit</i></a>
                                    
                                    <a href="{{url('admin/slidedelete/'.$slider->id)}}" class="btn btn-danger"
                                        role="button"
                                        onclick="return confirm('Are you sure want to delete this Slider?')"><i
                                            class="material-icons option-icon">delete</i></a>
                                </td>
                            </tr>

                            @endforeach

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