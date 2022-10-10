<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Content;
use Illuminate\Support\Facades\Session as FacadesSession;
use Session;

class ContentController extends Controller
{
    public function index(){
        FacadesSession::put('page','content');
        $contents = Content::orderBy('id', 'DESC')->get();
        return view('content.index',compact('contents'))->with('no', 1);
    }

    public function create(){
        return view('content.create');
    }

    public function store(Request $request){

        //Content Validations
            $rules = [
                
                'prdct_name' => 'required|max:55',
                'prdct_price' => 'required',  
                'prdct_key' => 'required',  
            ];
            
            $this->validate($request, $rules);

        $content= new Content;
    
        $content->prdct_name = $request->input('prdct_name');
        $content->prdct_price = $request->input('prdct_price');
        $content->prdct_key = $request->input('prdct_key');

        $content->save();
        return redirect('admin/content')->with('message','Content Added Successfully!');
    }

    public function edit($id){
        $contentdata = Content::find($id);
        return view('content.edit',compact('contentdata'));
    }

    public function update(Request $request, $id){

        //Tv channel Category Validations
            $rules = [
                
                'prdct_name' => 'required|max:55',
                'prdct_price' => 'required',  
                'prdct_key' => 'required',  
            ];
            
            $this->validate($request, $rules);

            $content = Content::find($id);

            $content->prdct_name = $request->input('prdct_name');
            $content->prdct_price = $request->input('prdct_price');
            $content->prdct_key = $request->input('prdct_key');
            $content->update();

             return redirect('admin/content')->with('message','Content updated Successfully!');
                
    }

    public function destroy($id){
         $data = Content::find($id);
         $data->delete();
         return redirect()->back()->with('message', 'Content has been deleted.');
    }
}
