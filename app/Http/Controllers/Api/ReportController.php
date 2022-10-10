<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Item;
use App\Report;
use DB;

class ReportController extends Controller
{

    public function index()
    {

        $reports = DB::table('reports')
        ->leftJoin('items','reports.item_id', 'items.id')
        ->select('reports.*', 
                'items.name',
        )->orderBy('id', 'DESC')->get();
        
        

        return response()->json([
                 'success' => true,
                 
                 'data' =>  $reports
        ]);
    }

    public function store(Request $request){
        $itemsdata = Item::all();

        $validator = Validator::make($request->all(),[
            'item_id'=>'required',
            'message'=>'required',
        ]);

        if ($validator->fails()){
            return response()->json(['message'=>'require all the details'], 404);
        }

        $reports = Report::create($request->all());
        if($reports){
            return response()->json(['message'=>'Report Saved Successfully'], 200);
        }else{
            return response()->json(['message'=>'Report could not be saved'], 404);
        }
    
    }
}
