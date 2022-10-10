<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Reguser;
use Session;

class RegUserController extends Controller
{
    public function index()
    {
        session::put('page','regUser');
        $regusers = Reguser::orderBy('id', 'DESC')->get();
        return view('admin.Rindex',compact('regusers'));
    }

    public function edit(Reguser $Reguser, $id)
    {
        $userEdit = Reguser::find($id);
        return view('admin.Redit',compact('userEdit'));
    }

    public function update(Request $request, $id){

            $reguser = Reguser::find($id);
        
            $reguser->status = $request->input('status');
            
            $reguser->save();
            return redirect('admin/Rindex')->with('message', 'User updated successfully!');
    }
}
