<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Slider;
use App\Item;
use DB;
use Illuminate\Support\Facades\DB as FacadesDB;

class SliderController extends Controller
{
     public function index(){
        
        
         return response()->json([
                 'success' => true,
                 
                 'data' =>   $sliders = FacadesDB::table('sliders')
        ->leftJoin('items','sliders.item_id', 'items.id')
        ->select('sliders.*', 'items.name')
        ->orderBy('id', 'DESC')->get()
        
        ]);
             
    }

    public function show( $id)
    {
           
        
           $sliders = FacadesDB::table('sliders')
        ->leftJoin('items','sliders.item_id', 'items.id')
        ->select('sliders.*', 'items.name')
        ->where('sliders.id',$id)->first();

                    if( $sliders==null){
                        return response()->json([
                            'message'=>'Slider Not Exist',
                            'Status'=>404]);
                    } else if ($sliders) {
                        return response()->json([
                            'success' => true,
                            'message' => 200,
                            'data' => array($sliders)
                        ]);
                        
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'Sorry, Slider could not be Shown'
                        ], 500);
                    }

        
    }
}