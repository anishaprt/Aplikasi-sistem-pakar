<?php

namespace App\Http\Controllers;

use App\Models\gejala;
use Illuminate\Http\Request;

class GejalaController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $Datagejala = gejala::where('kondisi','LIKE','%' .$request->search.'%')->orWhere('kodegejala','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
        $Datagejala = gejala::paginate(10);
        }
        return view('admin.data-gejala-penyakit',compact('Datagejala'));
    }

    public function tambahdatagejala(){
        return view('admin.tambah-data-gejala-penyakit');
    }

    public function store(Request $request){
        gejala::create([
            'kodegejala'=>'G'.(gejala::count()+1),
            'kondisi'=>$request->kondisi,
            'jeniskelamin'=>$request->jeniskelamin,
            'dari_umur'=>$request->dari_umur,
            'sampai_umur'=>$request->sampai_umur,
        ]);

        return redirect('gejala');
    }

    public function edit($id){
        $Datagejala= gejala::find($id);
        return view('admin.edit-data-gejala', compact('Datagejala'));
    }

    public function update(Request $request, $id){
        $Datagejala= gejala::find($id);
        $Datagejala->update($request->all());
        return redirect('gejala');
    }
    public function delete($id){
        $Datagejala=gejala::find($id);
        $Datagejala->delete();
        return back()->with('info', 'Data Berhasil Dihapus');
    }
}