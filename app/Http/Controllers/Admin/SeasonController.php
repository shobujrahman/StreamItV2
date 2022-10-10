<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Season;
use App\Series;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SeasonController extends Controller
{
    public function index($id){
        $series = Series::find($id);
        $seasons = Season::with(['series','episodes'])->where('series_id',$id)->get();
       
        return view('season.index',compact('seasons','series'))->with('no', 1);
    }
    

    public function store(Request $request, $id){

        $series = Series::find($id);
        $season = new Season;

        $season->season_name = $request->season_name;
        $season->order = $request->order;
        $season->series_id = $request->route('id');
        
        $season->save();

        // dd($season);
        

         if($season)
                {
                    $notification=array(
                        'message'=>'Successfully  added',
                        'alert-type'=>'success'
                    );
                    return redirect('admin/seasons/'.$series->id)->with($notification);
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
            
            $season = Season::find($id);
            
            
            $season->season_name = $request->season_name;
            $season->order = $request->order;
            $season->series_id  = $request->series_id ;
            
// dd($season);
           $season->update();

            

            if($season)
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
