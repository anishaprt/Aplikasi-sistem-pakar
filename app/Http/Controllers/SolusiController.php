<?php

namespace App\Http\Controllers;

use App\Models\solusi;
use Illuminate\Http\Request;
use Storage;

class SolusiController extends Controller
{
    public function index(Request $request){
        if($request->has('search')){
            $Datasolusi = solusi::where('solusi','LIKE','%' .$request->search.'%')->paginate(10);
        }else{
        $Datasolusi = solusi::paginate(10);
        }
        return view('admin.data-solusi',compact('Datasolusi'));
    }

    public function tambahdatasolusi(){
        return view('admin.tambah-data-solusi');
    }

    public function store(Request $request){
        $foto = $request->file('foto');
        $path = $foto->store('public/foto');
        $fileName = Storage::url($path);

        solusi::create([
            'kodesolusi'=>'S'.(solusi::count()+1),
            'jeniskelamin'=>$request->jeniskelamin,
            'dari_umur'=>$request->dari_umur,
            'sampai_umur'=>$request->sampai_umur,
            'solusi'=>$request->solusi,
            'deskripsi'=>$request->deskripsi,
            'foto'=>$fileName,
        ]);

        return redirect('solusi');
    }

    public function edit($id){
        $Datasolusi = solusi::find($id);
        return view('admin.edit-data-solusi', compact('Datasolusi'));
    }

    public function update(Request $request, $id){
        $foto = $request->file('foto');
        $path = $foto->store('public/foto');
        $fileName = Storage::url($path);

        $data = $request->all();
        $data['foto'] = $fileName;

        $Datasolusi = solusi::find($id);
        $Datasolusi->update($data);
        return redirect('solusi');
    }
    public function delete($id){
        $Datasolusi=solusi::find($id);
        $Datasolusi->delete();
        return back()->with('info', 'Data Berhasil Dihapus');
    }
}
