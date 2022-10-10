@extends('layouts.admin_layout.admin_layout')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">Dashboard</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!--  -->
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-danger">
                        <div class="inner">

                            <h3>
                                {{$tvCount}}
                            </h3>


                            <p>Tv Category</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-tv"></i>
                        </div>
                        <a href="{{ url('admin/tvcat-index') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>{{$videoCount}}</h3>

                            <p>Video Category</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-video"></i>
                        </div>
                        <a href="{{ url('admin/vdoCat-index') }}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-light">
                        <div class="inner">
                            <h3>{{$itemCount}}</h3>

                            <p>Tv Channels</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-tv"></i>
                        </div>
                        <a href="{{ url('admin/channel-index') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-secondary">
                        <div class="inner">
                            <h3>{{$itemCount}}</h3>

                            <p>Manage Video</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-video"></i>
                        </div>
                        <a href="{{ url('admin/video-index') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3> {{$countryCount}} </h3>

                            <p>Country</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-globe"></i>
                        </div>
                        <a href="{{ url('admin/country-index') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-dark">
                        <div class="inner">
                            <h3>{{$notifiCount}}</h3>

                            <p>Notifications</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-bell"></i>
                        </div>
                        <a href="{{ url('admin/notifications') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-primary">
                        <div class="inner">
                            <h3>{{$sliderCount}}</h3>

                            <p>Slider</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-film"></i>
                        </div>
                        <a href="{{ url('admin/slider') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-dark">
                        <div class="inner">
                            <h3>{{$contentCount}}</h3>

                            <p>Manage Price</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-film"></i>
                        </div>
                        <a href="{{ url('admin/content') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-light">
                        <div class="inner">
                            <h3>{{$adminCount}}</h3>

                            <p>Administrator</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-user-friends"></i>
                        </div>
                        <a href="{{ url('admin/Aindex') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>{{$adCount}}</h3>

                            <p>Advertisement</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-ad"></i>
                        </div>
                        <a href="{{ url('admin/advertisement') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-danger">
                        <div class="inner">
                            <h3>{{$settingsCount}}</h3>

                            <p>Settings</p>
                        </div>
                        <div class="icon">
                            <i class="small material-icons">settings</i>
                        </div>
                        <a href="{{ url('admin/settings') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>{{$feedbackCount}}</h3>

                            <p>Feedback</p>
                        </div>
                        <div class="icon">
                            <i class="fas fa-comment"></i>
                        </div>
                        <a href="{{ url('admin/feedback') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bg-primary">
                        <div class="inner">
                            <h3>{{$reportCount}}</h3>

                            <p>Reports</p>
                        </div>
                        <div class="icon">
                            <i class="nav-icon fas fa-clipboard-list"></i>
                        </div>
                        <a href="{{ url('admin/report') }}" class="small-box-footer">More info <i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!--  -->
            </div>
        </div>
    </section>
</div>
@endsection