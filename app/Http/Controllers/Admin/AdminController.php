<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Admin;
use Auth;
use DB;
use Illuminate\Support\Facades\DB as FacadesDB;
use Illuminate\Support\Facades\Session as FacadesSession;
use Session;

class AdminController extends Controller
{
    public function dashboard(){
        FacadesSession::put('page','dashboard');
        //dynamic counts
        $adminCount = FacadesDB::table('admins')->count();
        $adCount = FacadesDB::table('settings')->count();
        $contentCount = FacadesDB::table('contents')->count();
        $countryCount = FacadesDB::table('countries')->count();
        $feedbackCount = FacadesDB::table('feedback')->count();
        $itemCount = FacadesDB::table('items')->count();
        $notifiCount = FacadesDB::table('notifications')->count();
        $reportCount = FacadesDB::table('reports')->count();
        $settingsCount = FacadesDB::table('settings')->count();
        $sliderCount = FacadesDB::table('sliders')->count();
        $tvCount = FacadesDB::table('tv_categories')->count();
        $videoCount = FacadesDB::table('video_categories')->count();
        // $adminCount = DB::table('admins')->count();
        
        // dd($count);
        return view('admin.admin_dashboard',compact('adminCount','adCount','contentCount','countryCount','feedbackCount','itemCount','notifiCount','reportCount','settingsCount','sliderCount','tvCount','videoCount'));
    }

    //data insert on database table
    public function login(Request $request){
        $data = [
            'userName' =>'Abdur Rahman',
            'email' =>'admin@admins',
            'full_name' =>'ProRahman',
            'user_role' =>'super_admin',
            'password' =>'admin',
        ];
        // Admin::create($data);
        $admin = Admin::all();

        
        //to signin admin and to go dashboard after post
        if($request->isMethod('post')){
            $data = $request->all();
            // dd($data); 

            //validation for admin login
        $rules = [
            'email'=> 'required|email|max:255',
            'password'=>'required',
        ];
        $message = [
            'email.max' => 'Enter a valid email address. ',
            'email.required' => 'Required email. ',
            'password.required' => 'Required a valid password. ',
        ];
        $validator = Validator::make($request->all(), $rules, $message);
        if ($validator->fails()) {
            return redirect()->back()
                        ->withErrors($validator)
                        ->withInput();
        }


            if(Auth::guard('admin')->attempt(['email'=>$data['email'], 'password'=>$data['password']])){
                return redirect('admin/dashboard');
            }else{
                return redirect()->back()->with('error', 'Invalid Email or Password');
            }
        }    //end of admin loginpost 
        return view('admin.admin_login');
    }

    //logout 
    public function logout(){
        Auth::guard('admin')->logout();
        return redirect('/admin');
    }
}
