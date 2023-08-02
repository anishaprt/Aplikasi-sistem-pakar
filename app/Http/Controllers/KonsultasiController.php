<?php

namespace App\Http\Controllers;

use App\Models\gejala;
use App\Models\aturan;
use App\Models\detailAturan;
use App\Models\solusi;
use App\Models\gejalaPasien;
use App\Models\riwayatdiagnosa;
use Illuminate\Http\Request;

class KonsultasiController extends Controller
{
    public function index(){
        $data['gejala'] = gejala::where('jeniskelamin',auth()->user()->jeniskelamin)->orWhere('jeniskelamin','Unisex')->where('dari_umur','<=',auth()->user()->umur)->where('sampai_umur','>=',auth()->user()->umur)->get();
        $data['gejalapasien'] = gejalaPasien::where('id_pasien',auth()->user()->id_pasien)->get();
        return view('pengguna.konsultasi',compact('data'));
    }

    public function diagnosa(Request $request){
        $data['gejala'] = gejala::where('jeniskelamin',auth()->user()->jeniskelamin)->orWhere('jeniskelamin','Unisex')->where('dari_umur','<=',auth()->user()->umur)->where('sampai_umur','>=',auth()->user()->umur)->get();
        if(count($request->gejala) == 0){
            return redirect('konsultasi')->withErrors(['msg' => 'Pilih Gejala Terlebih Dahulu']);
        }
        $data['kode_gejala_checked'] = [];
        $data['name_gejala_checked'] = [];
        $data['id_pasien'] = auth()->user()->id_pasien;

        foreach ($data['gejala'] as $index => $row ):
            foreach ($request->gejala as $row2 ):
                if($row2 == $row->id):
                    $data['kode_gejala_checked'][] = $row->kodegejala;
                    $data['name_gejala_checked'][] = $row->kondisi;
                endif;
            endforeach;
        endforeach;

        // Perhitungan //
        $data['aturan'] = aturan::all();
        $data['hasil_rumus'] = [];
        $data['id_hasil_rumus'] = [];

        foreach ($data['aturan'] as $val_aturan) {
            $gejala_sama = 0;
            $gejala_aturan = explode(',',$val_aturan['kondisi']);
            $gejala_aturan_total = count($gejala_aturan);

            foreach($gejala_aturan as $val_gejala_aturan):
                foreach($data['kode_gejala_checked'] as $val_gejala_checked){
                    if($val_gejala_aturan == $val_gejala_checked):
                        $gejala_sama++;
                    endif;
                }
            endforeach;

            $data['hasil_rumus'][] = number_format((float)$gejala_sama/$gejala_aturan_total*100, 2, '.', '');
            $data['id_hasil_rumus'][] = $val_aturan->id;

        }

        $aturan_higgest_value = max($data['hasil_rumus']);
        $id_aturan_higgest_value = $data['id_hasil_rumus'][array_search($aturan_higgest_value, $data['hasil_rumus'])];
        
        $data['result_aturan'] = aturan::where('id',$id_aturan_higgest_value)->first();
        $data['result_detail_aturan'] = detailAturan::where('id_aturan',$data['result_aturan']->id)->where('dari_umur','<=',auth()->user()->umur)->where('sampai_umur','>=',auth()->user()->umur)->first();

        $data['solusi'] = [];

        // dd($data);
        if(!isset($data['result_detail_aturan']->aksiaturan)){
            return redirect('konsultasi')->withErrors(['msg' => 'Penyakit Tidak Ditemukan']);
        }

        foreach (explode(',',$data['result_detail_aturan']->aksiaturan) as $value) {
            $value = str_replace(" ",'',$value);
            $get_solusi = solusi::whereIn('jeniskelamin',[auth()->user()->jeniskelamin,'Unisex'])->where('kodesolusi',$value)->where('dari_umur','<=',auth()->user()->umur)->where('sampai_umur','>=',auth()->user()->umur)->first();

            $data['solusi'][] = $get_solusi ? $get_solusi->solusi : '';
        }

        $data['nama_penyakit'] = $data['result_aturan']->penyakit->nama;
        $data['deskripsi_penyakit'] = $data['result_aturan']->penyakit->deskripsi;
        $data['resiko'] = $data['result_detail_aturan']->resiko;
        $data['keterangan'] = $data['result_detail_aturan']->keterangan;

        if(!isset($data['result_aturan']->penyakit->id)){
            return redirect('konsultasi')->withErrors(['msg' => 'Penyakit Tidak Ditemukan']);
        }

        riwayatdiagnosa::create([
            'pasien_id' => auth()->user()->id_pasien,
            'penyakit_id' => $data['result_aturan']->penyakit->id,
            'resiko' => $data['result_detail_aturan']->resiko,
            'keterangan' => $data['result_detail_aturan']->keterangan,
            'solusi' => implode("--",$data['solusi']),
            'gejala' => implode("--",$data['kode_gejala_checked']),
        ]);

        $data['solusi'] = [];

        foreach (explode(',',$data['result_detail_aturan']->aksiaturan) as $value) {
            $value = str_replace(" ",'',$value);
            $get_solusi = solusi::whereIn('jeniskelamin',[auth()->user()->jeniskelamin,'Unisex'])->where('kodesolusi',$value)->where('dari_umur','<=',auth()->user()->umur)->where('sampai_umur','>=',auth()->user()->umur)->first();

            $data['solusi'][] = $get_solusi ? $get_solusi : '';
        }

        return view('pengguna.diagnosa',compact('data'));
    }

    public function riwayat_diagnosa(){
        $data['riwayatdiagnosa'] = riwayatdiagnosa::where('pasien_id',auth()->user()->id_pasien)->orderBy('id','desc')->get();
        return view('pengguna.riwayat-diagnosa',compact('data'));
    }

    public function detail_riwayat_diagnosa($id){
        $data['riwayatdiagnosa'] = riwayatdiagnosa::where('id',$id)->first();
        $data['gejala'] = [];
        $data['solusi'] = [];

        $data['riwayatdiagnosa']->gejala = explode('--',$data['riwayatdiagnosa']->gejala);
        foreach ($data['riwayatdiagnosa']->gejala as $riwayat) {
            $data['gejala'][] = gejala::where('kodegejala',$riwayat)->first();
        }

        $data['riwayatdiagnosa']->gejala = explode('--',$data['riwayatdiagnosa']->solusi);
        foreach ($data['riwayatdiagnosa']->gejala as $riwayat) {
            $data['solusi'][] = solusi::where('solusi',$riwayat)->first();
        }


        return view('pengguna.riwayat-diagnosa-detail',compact('data'));
    }

    public function store(Request $request){
        $action = [];
        if($request->action == 'add'){
            $action = gejalaPasien::create([
                'id_pasien' => $request->id_pasien,
                'id_gejala' => $request->id_gejala
            ]);
        }else if($request->action == 'remove'){
            $action = gejalaPasien::where([
                'id_pasien' => $request->id_pasien,
                'id_gejala' => $request->id_gejala
            ])->delete();
        }
        return response()->json($action);
    }
}
