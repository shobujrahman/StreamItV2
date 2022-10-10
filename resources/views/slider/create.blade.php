@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Add Slider</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{ url('admin/slider') }}"> Slider</a></li>
                        <li class="breadcrumb-item active">Add Slider</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <x-alert />
            <!-- SELECT2 EXAMPLE -->
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title">Add Slider</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>
                <!-- /.card-header -->
                <form name="sliderForm" id="sliderForm" action="{{ url('admin/slidesubmit') }}" method="post"
                    enctype="multipart/form-data">@csrf
                    <div class="card-body">
                        <!-- 1st row -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="sname">Slider Name</label>
                                    <input type="text" class="form-control" name="sname" id="sname" value="{{ old('sname') }}"
                                        placeholder="Enter Name">
                                </div>

                                <!-- -->
                                <div class="form-group">
                                    <label for="image">Slider Image</label>
                                    <div class="input-group">
                                        <input type="file" class="form-control" id="image" name="image">
                                    </div>
                                </div>
                                <!-- -->
                                <div class="form-group">
                                    <label>Slider Type</label>
                                    <select  id="type" name="slider_type" class="form-control select2"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        <option value="tvChannel">Tv Channel</option>
                                        <option value="video">Video</option>
                                       
                                    </select>
                                </div>
                                <!--  -->
                                <div class="form-group" style="display: none;"  id='channel'>
                                    <label>Tv Channel Items</label>
                                    <select name="chnl_name" id="chnl_name" class="form-control select2"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($items as $item)
                                        @if($item->content_type=='channel')
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                <!--  -->
                                <div class="form-group" style="display: none;"  id='video'>
                                    <label>Video Items</label>
                                    <select name="video_name" id="video_name" class="form-control select2"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        @foreach($items as $item)
                                        @if($item->content_type=='video')
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                <!--  -->
                                
                            </div>
                        </div>
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-primary">Publish</button>
                    </div>

                </form>

            </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
@endsection