<?php

namespace App\Http\Controllers;

use Auth;
use Pdf;
use App\Models\user;
use App\Models\datapasien;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class LoginIdController extends Controller
{
    public function login(){
        if(Auth::check()){
            if(Auth::user()->level == 'Admin'){
                return redirect('/logout');
            }
        }
        return view('auth.loginId');
    }
    
    public function postlogin(Request $request){
        $data = user::where('id_pasien',$request->only('id'))->first();
        if(Auth::loginUsingId($data->id)){
            if(auth()->user()->level == "Pengguna"){
                return redirect('/konsultasi');
            }
            return redirect('/beranda');
        }
        return redirect ('/loginId');
    }

    public function print()
    {
        $data = auth()->user();
        $pdf = PDF::loadView('print.pdf', compact('data'));

        return $pdf->stream('Kartu pasien.pdf');
    }
}
