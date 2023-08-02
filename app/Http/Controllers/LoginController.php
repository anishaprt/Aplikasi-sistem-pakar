<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\user;
use App\Models\datapasien;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class LoginController extends Controller
{
    public function login(){
        if(Auth::check()){
            return redirect('/login');
        }
        return view('auth.login');
    }
    
    public function postlogin(Request $request){
        if(Auth::attempt($request->only('email','password'))){
            return redirect('/pasien');
        }
        return redirect ('/pasien');
    }

    public function viewregister(){
        return view('auth.register');
    }

    public function register(Request $request){
        // $nonor_urut = 'pijat';
        $count_datapasien = datapasien::orderBy('id','desc')->first();
        $id_datapasien = datapasien::create([
            'id' => $count_datapasien->id+1,
            'namapasien' => $request->namalengkap,
            'jeniskelamin' => $request->jeniskelamin == "Laki-laki" ? "L" : "P",
            'umur' => $request->umur
        ])->id;
        $lastId = user::orderBy('id','desc')->first()->id;
        $lastId = $lastId+1;

        $regis = user::create([
            'id' => $request->id,
            'namalengkap' => $request->namalengkap,
            'jeniskelamin' => $request->jeniskelamin,
            'tanggal_lahir' => $request->tanggal_lahir,
            'phone' => $request->phone,
            'email' => $request->email,
            'umur' => $request->umur,
            'alamat' => $request->alamat,
            'password' => bcrypt($lastId),
            // 'level' => $request->level,
            'level' => 'Pengguna',
            'remember_token' => Str::random(60),
            'id_pasien' => $id_datapasien,
        ]);

        if(Auth::loginUsingId($regis->id)){
            return redirect('/konsultasi');
        }
    }

    public function logout(Request $request){
        Auth::logout();
        return redirect('/');
    }
}
