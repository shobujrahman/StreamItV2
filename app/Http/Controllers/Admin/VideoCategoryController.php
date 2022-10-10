<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\VideoCategory;
use Illuminate\Support\Facades\Session as FacadesSession;
use Session;

class VideoCategoryController extends Controller
{
    public function index(){
    FacadesSession::put('page','vdocat');

       $videocategory = VideoCategory::orderBy('id', 'DESC')->get();
        return view('videoCategory.index',compact('videocategory'))->with('no', 1);;
    }

    public function create(){
        return view('videoCategory.create');
    }

    public function store(Request $request){

        //Video Category Validations
            $rules = [
                
                'video_cat_name' => 'required|max:55',
                'video_cat_image' => 'required',  
            ];
            
            $this->validate($request, $rules);

        $vdocategory= new VideoCategory;
        
        
        $imageName = time().'.'.$request->video_cat_image->extension();  
        $request->video_cat_image->move(public_path('images/'), $imageName);
        // $vdocategory->video_cat_image = env('URL').'images/'.$imageName;
        $vdocategory->video_cat_image = $imageName;
        $vdocategory->video_cat_name = $request->input('video_cat_name');

        $vdocategory->save();

        return redirect('admin/vdoCat-index')->with('message','Category Added Successfully!');
    }

    public function edit($id){
        $videodata = VideoCategory::find($id);
        return view('videoCategory.edit',compact('videodata'));
    }

    public function update(Request $request,  $id){

         //Video Category Validations
            $rules = [
                
                'video_cat_name' => 'required|max:55'
            ];
            
            $this->validate($request, $rules);
            $vdocategory = VideoCategory::find($id);
        
            //get old img
            $old_img = $request->input('old_image');
            
           
            if($request->video_cat_image){
                $imageName = time().'.'.$request->video_cat_image->extension();  
                $request->video_cat_image->move(public_path('images/'), $imageName);
                $vdocategory->video_cat_image = $imageName;
                // $vdocategory->video_cat_image = env('URL').'images/'.$imageName;
                
                // delete previous image
                // $delete = unlink(public_path('images/') . "$old_img");
                 $path= public_path('images/'.$old_img);
                if(file_exists($path)){
                    @unlink($path);
                }
                $vdocategory->video_cat_name = $request->input('video_cat_name');
                $vdocategory->update();
            }else{
                $vdocategory->video_cat_name = $request->input('video_cat_name');
                $vdocategory->update();
            }
            
            return redirect('admin/vdoCat-index')->with('message','Category updated successfully!');
                
    }

    public function destroy($id){
         $data = VideoCategory::find($id);
        //  $image = unlink(public_path('images/'). $data->video_cat_image);
        if (file_exists(public_path($data->video_cat_image))) {
            @unlink(public_path($data->video_cat_image));
        }
         $data->delete();
        return redirect()->back()->with('message', 'Category has been deleted.');
    }
}
