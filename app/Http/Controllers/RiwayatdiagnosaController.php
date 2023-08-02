<?php

namespace App\Http\Controllers;

use App\Models\riwayatdiagnosa;
use Illuminate\Http\Request;

class RiwayatdiagnosaController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $Datapenyakit = penyakit::where('nama','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
        $Datapenyakit = penyakit::paginate(10);
        }
        return view('admin.data-penyakit',compact('Datapenyakit'));
    }
}
