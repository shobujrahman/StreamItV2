<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Report;
use DB;
use Session;

class ReportController extends Controller
{
     public function index(){
        session::put('page','report');
         $reports = DB::table('reports')
        ->leftJoin('items','reports.item_id', 'items.id')
        ->select('reports.*', 
                'items.name',
        )->orderBy('id', 'DESC')->get();
        return view('admin.report_index',compact('reports'))->with('no', 1);
    }
}
