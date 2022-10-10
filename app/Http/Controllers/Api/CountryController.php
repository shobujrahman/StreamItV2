<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Country;

class CountryController extends Controller
{
    public function index(){

         return response()->json([
                 'success' => true,
                 'message' => 200,
                 'data' =>  $countries = Country::orderBy('id', 'DESC')->get()
        
        ]);
    }

     public function show($id)
    {
           
           $countries = Country::where('id',$id)->first();
                    if($countries==null){
                        return response()->json([
                            'message'=>'Country Not exist',
                            'Status'=>404]);
                    } else if ($countries) {
                        return response()->json([
                            'success' => true,
                            'message' => 200,
                            'data' => array($countries),
                        ]);
                    } else {
                        return response()->json([
                            'success' => false,
                            'message' => 'Sorry, Country could not be Shown'
                        ], 500);
                    }

        
    }
}
