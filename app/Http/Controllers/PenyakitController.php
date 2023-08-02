<?php

namespace App\Http\Controllers;

use App\Models\penyakit;
use Illuminate\Http\Request;

class PenyakitController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $Datapenyakit = penyakit::where('nama','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
        $Datapenyakit = penyakit::paginate(10);
        }
        return view('admin.data-penyakit',compact('Datapenyakit'));
    }

    public function tambahdatapenyakit(){
        return view('admin.tambah-data-penyakit');
    }

    public function store(Request $request){
        penyakit::create([
            'kodepenyakit'=>'P'.(penyakit::count()+1),
            'nama'=>$request->nama,
            'deskripsi'=>$request->deskripsi,
            'jeniskelamin'=>$request->jeniskelamin,
            'dari_umur'=>$request->dari_umur,
            'sampai_umur'=>$request->sampai_umur,
        ]);

        return redirect('penyakit');
    }

    public function edit($id){
        $Datapenyakit = penyakit::find($id);
        return view('admin.edit-data-penyakit', compact('Datapenyakit'));
    }

    public function update(Request $request, $id){
        $Datapenyakit= penyakit::find($id);
        $Datapenyakit->update($request->all());
        return redirect('penyakit');
    }
    public function delete($id){
        $Datapenyakit=penyakit::find($id);
        $Datapenyakit->delete();
        return back()->with('info', 'Data Berhasil Dihapus');
    }
}
