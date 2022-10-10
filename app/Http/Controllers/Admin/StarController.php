<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Star;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class StarController extends Controller
{
    public function allStar(){
        Session::put('page','star');
        $star = Star::orderBy('id','desc')->get();
        
        return view('celebreties.index',compact('star'))->with('no',1);
    }

    public function store(Request $request){

        $star= new Star;

        $imageName = time().'.'.$request->photo->extension();
        $request->photo->move(public_path('images/'),$imageName);
    
        // $star->photo = env('URL').'images/'.$imageName;
        $star->photo = $imageName;
      

        $star->star_name = $request->star_name;
        $star->star_type = $request->star_type;

        $star->save();

        if($star)
        {
            $notification=array(
                'message'=>'Successfully  added',
                'alert-type'=>'success'
            );
            return redirect('admin/star')->with($notification);
        }
        else
        {
            $notification=array(
                'message'=>'Something went wrong',
                'alert-type'=>'error'
            );
            return redirect()->back()->with($notification);
        } 


    }


     public function update(Request $request,  $id){
            
            $star = Star::find($id);

           
            $old_photo = $request->input('old_photo');

            if($request->photo){
                $imageName = time().'.'.$request->photo->extension();
                $request->photo->move(public_path('images/'),$imageName);
                // $star->photo = env('URL').'images/'.$imageName;
                $star->photo = $imageName;
                    
                    
                    $path1 = public_path('images/'.$old_photo);
                    if(file_exists($path1)){
                        @unlink($path1);
                    }
                //  $star->update();
                }else{

                    $star->star_name = $request->star_name;
                    $star->star_type = $request->star_type;
                }
            
           

            $star->update();

           

            if($star)
            {
                $notification=array(
                    'message'=>'Successfully  Updated',
                    'alert-type'=>'success'
                );
                // return redirect('admin/seasons/'.$series->id)->with($notification);
                return redirect()->back()->with($notification);
            }
            else
            {
                $notification=array(
                    'message'=>'Something went wrong',
                    'alert-type'=>'error'
                );
                return redirect()->back()->with($notification);
            } 
                
    }
}
