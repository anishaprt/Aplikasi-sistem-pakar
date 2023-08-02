<?php

namespace App\Http\Controllers;

use App\Models\aturan;
use App\Models\penyakit;
use Illuminate\Http\Request;

class AturanController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $Dataaturan = aturan::
            where('namaaturan','LIKE','%' .$request->search.'%')
            ->orWhere('kondisi','LIKE','%' .$request->search.'%')
            ->orWhere('aksiaturan','LIKE','%' .$request->search.'%')
            ->paginate(10);
        }else{
        $Dataaturan = aturan::paginate(10);
        }
        return view('admin.aturan',compact('Dataaturan'));
    }

    public function tambahdataaturan(){
        $data['penyakit'] = penyakit::all();
        return view('admin.tambah-data-aturan',compact('data'));
    }

    public function store(Request $request){
        aturan::create([
            'namaaturan'=>$request->namaaturan,
            'kondisi'=>$request->kondisi,
            'aksiaturan'=>$request->aksiaturan,
            'penyakit_id'=>$request->penyakit,
        ]);

        return redirect('aturan');
    }

    public function edit($id){
        $Dataaturan= aturan::find($id);
        return view('admin.edit-data-aturan', compact('Dataaturan'));
    }

    public function update(Request $request, $id){
        $Dataaturan= gejala::find($id);
        $Dataaturan->update($request->all());
        return redirect('aturan');
    }
    public function delete($id){
        $Dataaturan=aturan::find($id);
        $Dataaturan->delete();
        return back()->with('info', 'Data Berhasil Dihapus');
    }
}
