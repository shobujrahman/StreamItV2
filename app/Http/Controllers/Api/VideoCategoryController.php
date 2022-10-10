<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\VideoCategory;

class VideoCategoryController extends Controller
{
    public function index(){

         return response()->json([
                 'success' => true,
                 'message' => 200,
                 'data' =>  $videocategory = VideoCategory::orderBy('id', 'DESC')->get()
        
        ]);
    }

     public function show($id)
    {
           
           $videocategory = VideoCategory::where('id',$id)->first();
                    if(!$videocategory){
                        return response()->json([
                            'message'=>'Category Not exist',
                            'Status'=>404]);
                    } else if ($id) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            'data' => array($videocategory)
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'Sorry, Category could not be Shown'
                        ], 500);
                    }

        
    }
}
