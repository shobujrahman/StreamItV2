<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Feedback;

class FeedbackController extends Controller
{

	public function index(){

        $feedback = Feedback::orderBy('id', 'DESC')->get();
         return response()->json([
                 'success' => true,
                 'message' => 200,
                 'data' =>  $feedback 
        
        ]);
    }
    
    public function feedback(Request $request){
        $validator = Validator::make($request->all(),[
            'device_name'=>'required',
            'android_version'=>'required',
            'message'=>'required',
            'email'=>'required',
        ]);

        if ($validator->fails()){
            return response()->json(['message'=>'require all the details'], 404);
        }

        $saved = Feedback::create($request->all());
        if($saved){
            return response()->json(['message'=>'Feedback Saved Successfully'], 200);
        }else{
            return response()->json(['message'=>'Feedback could not be saved'], 404);
        }
    }
}
