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
                        <li class="breadcrumb-item"><a href="{{ url('admin/slider') }}"> Slider</a></li>
                        <li class="breadcrumb-item active">Edit Slider</li>
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
                    <h3 class="card-title">Edit Slider</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i></button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove"><i
                                class="fas fa-remove"></i></button>
                    </div>
                </div>
                <!-- /.card-header -->
                <form name="sliderForm" id="sliderForm" action="{{ url('admin/slideupdate/'.$slideEdit->id) }}"
                    method="post" enctype="multipart/form-data">@csrf

                    <input type="hidden" name="old_image" value="{{$slideEdit->image}}">

                    <div class="card-body">
                        <!-- 1st row -->
                        <div class="row">
                            <div class="col-md-12">


                                <div class="form-group">
                                    <label for="sname">Slider Name</label>
                                    <input type="text" class="form-control" name="sname" id="sname" value="{{$slideEdit->sname}}"
                                        placeholder="Enter Name">
                                </div>

                                <div class="form-group">
                                    <label for="image">Slider Image</label>
                                    <div class="input-group">
                                        <input type="file" class="form-control" id="image" name="image">
                                    </div>

                                    <br>
                                        <div>
                                            <img style="width:150px; height:150px;"
                                                src="{{asset('images/'.$slideEdit->image)}}">
                                        </div>
                                </div>

                                <div class="form-group">
                                    <label>Slider Type</label>
                                    <select  id="type" name="slider_type" class="form-control select2"
                                        style="width: 100%;">
                                        <option disabled selected value>Select an --option</option>
                                        <option value="tvChannel" <?php if($slideEdit->slider_type=='tvChannel'){
                                        echo "selected";
                                    } ?>>Tv Channel</option>
                                        <option value="video"  <?php if($slideEdit->slider_type=='video'){
                                        echo "selected";
                                    } ?>>Video</option>
                                       
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
                                        <option value="{{$item->id}}" <?php if($item->id==$slideEdit->item_id){
                                        echo "selected";
                                    } ?>>{{$item->name}}</option>
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
                                        <option value="{{$item->id}}" <?php if($item->id==$slideEdit->item_id){
                                        echo "selected";
                                    } ?>>{{$item->name}}</option>
                                        @endif
                                        @endforeach
                                    </select>
                                </div>
                                <!--  -->
                            </div>
                        </div>
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