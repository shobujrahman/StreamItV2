<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Country;
use Illuminate\Support\Facades\Session as FacadesSession;
use Session;

class CountryController extends Controller
{
    public function index()
    {
        FacadesSession::put('page','country');
        $countries = Country::orderBy('id', 'DESC')->get();
        return view('country.index',compact('countries'))->with('no', 1);
    }

    public function create(){
        return view('country.create');
    }

    public function store(Request $request){

        //Tv channel Category Validations
            $rules = [
                
                'country_name' => 'required|max:55',
                'country_image' => 'required',  
            ];
            
            $this->validate($request, $rules);

        $country= new Country;
        
        
        $imageName = time().'.'.$request->country_image->extension();  
        $path = $request->country_image->move(public_path('images/'), $imageName);

        $country->country_image = $imageName;
        // $country->country_image = env('URL').'images/'.$imageName;
        $country->country_name = $request->input('country_name');

        $country->save();
        return redirect('admin/country-index')->with('message','Country Added Successfully!');
    }

    public function edit($id){
        $countrydata = Country::find($id);
        return view('country.edit',compact('countrydata'));
    }

    public function update(Request $request,  $id){

        //Tv channel Category Validations
            $rules = [
                
                'country_name' => 'required|max:55'
            ];
            
            $this->validate($request, $rules);

            $country = Country::find($id);
        
            //get old img
            $old_img = $request->input('old_image');
            
           
            if($request->country_image){
                 $imageName = time().'.'.$request->country_image->extension();  
                    $request->country_image->move(public_path('images/'), $imageName);

                    $country->country_image =$imageName;
                // delete previous image
                // $delete = unlink(public_path('images/') . "$old_img");
                 $path= public_path('images/'.$old_img);
                if(file_exists($path)){
                    @unlink($path);
                }
                $country->country_name = $request->input('country_name');
                $country->update();
            }else{
                $country->country_name = $request->input('country_name');
                $country->update();
            }
            
            return redirect('admin/country-index')->with('message','Country updated successfully!');
                
    }

    public function destroy($id){
         $data = Country::find($id);
        //  $image = unlink(public_path('images/'). $data->country_image);
        
        if (file_exists(public_path($data->country_image))) {
            @unlink(public_path($data->country_image));
        }
        $data->delete();
         return redirect()->back()->with('message', 'Country has been deleted.');
    }
}
