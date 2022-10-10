<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\TvCategory;
use App\Settings;

class TvCategoryController extends Controller
{
    public function index(){

        
         return response()->json([
                 'success' => true,
                 'message' => 200,
                 'data' =>  $tvcategories = TvCategory::orderBy('id', 'DESC')->get()
        
        ]);
    }

     public function show($id)
    {
        
           
           $tvcategories = TvCategory::where('id',$id)->first();
                    if(!$tvcategories){
                        return response()->json([
                            'message'=>'Category Not exist',
                            'Status'=>404]);
                    } else if ($tvcategories) {
                        return response()->json([
                            'success' => true,
                            'message' => 'ok',
                            'data' => array($tvcategories),
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'Sorry, Category could not be Shown'
                        ], 500);
                    }

        
    }
}