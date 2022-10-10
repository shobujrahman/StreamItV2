@extends('layouts.admin_layout.admin_layout')
@section('content')
  
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Settings</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
                    <li class="breadcrumb-item active">Settings</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <div class="col-md-3 m-auto ml-50">
        <br>
        <div class=" d-flex justify-content-center">
            <a href="{{ url('admin/settings') }}" class="btn btn-tab-movie-active col-md-12 bg-gradient-primary"><i class="nav-icon fas fa-cog"></i> Settings</a>
            <a href="{{ url('admin/advertisement') }}" class="btn btn-tab-movie col-md-12 bg-gradient-primary ml-2"><i class="nav-icon fas fa-ad"></i> Ads Settings</a>
            
        </div>
    </div>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row justify-content-center">
                

                <div class="col-md-12">
                    <div class="card" style="margin-top:25px">
                        <div class="card-header p-2 bg-gradient-primary">
                            <h3 class="card-title"><i class="nav-icon fas fa-cog"></i> Settings</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-remove"></i></button>
                            </div>
                        </div>
                        <div class="card-body ml-5 col-md-11">
                            <form name="settingsForm" id="settingsForm" action="{{ url('admin/settings/update') }}" method="post" enctype="multipart/form-data">@csrf
                                <div class="panel-body">
                                    <h4><label class="panel-title">Notifications settings</label></h4><br>
                                    <div class="form-group label-floating">
                                        <h5><label class="control-label">Firebase server key : </label></h5>
                                        <input type="text" id="firebasekey" name="firebasekey" required class="form-control" value="{{$settings->firebasekey}}">
                                        <span class="validate-input"></span>
                                    </div>

                                    <div class="form-group label-floating">
                                        <h5><label class="control-label">OneSignal server key : </label></h5>
                                        <input type="text" id="onesignal" name="onesignal" class="form-control" value="{{$settings->onesignal}}">
                                        <span class="validate-input"></span>
                                    </div>
                                </div>


                                <div class="panel-body">
                                    <h4><label class="panel-title">Privacy Policy</label></h4><br>
                                    <div class="form-group label-floating">
                                        <textarea class="textarea" placeholder="Place some text here" name="privacypolicy" id="privacypolicy" required style="width: 100%; height: 200px; font-size: 14px; line-height: 30px; border: 1px solid #dddddd; padding: 10px;">
                                            {{$settings->privacypolicy}}
                                        </textarea>
                                        <span class="validate-input"></span>
                                    </div>
                                </div>  
                                


                                <div class="panel-body">
                                    <h4><label class="panel-title">Contact & Version Settings</label></h4><br>
                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h5 ><label class="control-label">Contact Email</label></h5>
                                        <input type="email" id="email" name="email"  class="form-control" value="{{$settings->email}}">
                                    </div>
                                    <span class="validate-input"></span><br>

                                    <div class="form-group label-floating is-empty" style="padding: 0px;margin: 0px;">
                                        <h5 ><label class="control-label">App Versions</label></h5>
                                        <input type="text" id="version" name="version"  class="form-control" value="{{$settings->version}}">
                                    </div>
                                    <span class="validate-input"></span><br>
                                   
                                </div> 
                                <div class="card-footer">
                                    <button type="submit"  class="btn btn-outline-info">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- 
<script type="text/javascript">
    function generateToken() {

         var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

         var length = 12
         var result = ' ';
         var charactersLength = characters.length;
         for (let i = 0; i < length; i++) {
             result += characters.charAt(Math.floor(Math.random() * charactersLength));
         }

         document.getElementById("generateBox").value = result;

     }

     function copyToken() {


         $('#modal-default').modal('hide');
         $('#exampleModal').modal('show');
     }

     function applyToken() {
         var generateBox = document.getElementById("generateBox")
         var tokenBox = document.getElementById("tokenBox")
         var result = generateBox.value;

         document.getElementById("tokenBox").value = generateBox.value;
         generateBox.value = ""
         $('#exampleModal').modal('hide');
}
</script> -->
  @endsection


            