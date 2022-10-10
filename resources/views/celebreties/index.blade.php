@extends('layouts.admin_layout.admin_layout')
@section('content')
  
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Manage Stars</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{url('admin/dashboard')}}">Home</a></li>
              <li class="breadcrumb-item active">Stars</li>
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
                <h3 class="card-title">Stars</h3>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter" style="max-width: 150px; float:right; display:inline-block;">
                    <i class="fas fa-plus-circle">Add</i>
                            
                </button>
                        
                <button type="button" class="btn btn-success mr-3" style="max-width: 150px; float:right; display:inline-block;">
                            
                    <a href="{{url('admin/series')}}" style="color: #fff; background-color: transparent; text-decoration: none;"><i class="fas fa-arrow-circle-left"> </i>
                        Back
                    </a>
                </button>

                            <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header bg-primary">
                                <h5 class="modal-title" id="exampleModalLongTitle">Add Star</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <form onsubmit="return validateForm()" name="starForm" id="starForm"  action="{{ url('admin/star-submit') }}"   method="post" enctype="multipart/form-data">@csrf
                                     
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="star_name">Star Name</label>
                                            <input type="text" class="form-control @error('star_name') is-invalid @enderror" id="star_name" name="star_name" value="{{ old('star_name') }}" placeholder="Enter Star Name" required >
                                        </div>

                                        <div class="form-group">
                                            <label>Star Type</label>
                                            <select name="star_type" id="star_type" class="form-control select2" style="width: 100%;" required>
                                                <option disabled selected value>Choose an --option</option>
                                                <option value="actor">Actor</option>
                                                <option value="director">Director</option>
                                                <option value="writer">Writer</option>       
                                            </select>
                                        </div>
                                                
                                                
                                        <div class="form-group">
                                            <label for="photo"> Photo</label>
                                            <div class="input-group">
                                                <input type="file" id="photo" name="photo" data-default-file="" class="dropify"> 
                                            </div>
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
            <div class="card-body">
              
              <table id="category" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>Sl.No</th>
                  <th>Photo</th>
                  <th>Star Name</th>
                  <th>Star Type</th>
                  <th>Actions</th>
                  
                </tr>
                </thead>
                <tbody>
                @foreach($star as $star)
                <tr>
                  
                    <td>{{ $no++ }}</td>
                    <td>   
                        @if(!empty($star->photo))
                            <img class="rounded-circle" style="width: 100px; height: 100px;" src="{{asset('images/'.$star->photo)}}"/>
                        @endif
                    </td>
                    <td>{{$star->star_name}}</td>
                    <td>{{$star->star_type}}</td>
                    
                  
                    <td>
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModalCenter{{$star->id}}">
                            <i class="fas fa-pen-fancy"></i>
                        </button>

                                            <!-- Modal -->
                        <div class="modal fade" id="exampleModalCenter{{$star->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header bg-primary">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Edit {{$star->star_name}}</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form  name="starForm" id="starForm"  action="{{ url('admin/star-update/'.$star->id) }}"   method="post" enctype="multipart/form-data">@csrf
                                            <input type="hidden" name="old_photo" value="{{'images/'.$star->photo}}">     
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <label for="star_name">Star Name</label>
                                                    <input type="text" class="form-control @error('star_name') is-invalid @enderror" id="star_name" name="star_name" value="{{$star->star_name}}" placeholder="Enter Star Name" >
                                                </div>

                                                <div class="form-group">
                                                    <label>Star Type</label>
                                                    <select name="star_type" id="star_type" class="form-control select2"
                                                        style="width: 100%;">
                                                        <option disabled selected value>Choose an --option</option>
                                                        <option value="actor" <?php if($star->star_type=='actor'){echo "selected";} ?>>Actor</option>
                                                        <option value="director" <?php if($star->star_type=='director'){echo "selected";} ?>>Director</option>
                                                        <option value="writer" <?php if($star->star_type=='writer'){echo "selected";}?>>Writer</option>
                                                        
                                                    </select>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label for="photo"> Photo </label>
                                                    <div class="input-group">
                                                        <input type="file" id="photo" name="photo" class="dropify"  data-default-file="{{asset('images/'.$star->photo)}}"> 
                                                    </div>
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
                            <a href="{{url('admin/star-delete/'.$star->id)}}" onclick="return confirm('Are you sure want to delete this News?')"></a>
                        </button>
                    </td>                  
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
