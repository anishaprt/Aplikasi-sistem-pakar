<?php

namespace App\Http\Controllers;

use App\Models\datapasien;
use Illuminate\Http\Request;

class PasienController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
        $Datapasien = datapasien::where('id','LIKE','%' .$request->search.'%')->orWhere('namapasien','LIKE','%' .$request->search.'%')->orderBy('id','desc')->paginate(10);
        }else{
        $Datapasien = datapasien::orderBy('id','desc')->paginate(10);
        }
        return view('admin.data-pasien',compact('Datapasien'));
    }
}