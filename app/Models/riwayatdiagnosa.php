<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class riwayatdiagnosa extends Model
{
    use HasFactory;
    protected $table = "riwayat_diagnosa";
    protected $primaryKey = "id";
    protected $fillable =[
        'id','pasien_id', 'penyakit_id', 'gejala', 'solusi', 'resiko', 'keterangan'
    ];

    public function pasien(){
        return $this->hasOne(pasien::class,'id','pasien_id');
    }

    public function penyakit(){
        return $this->hasOne(penyakit::class,'id','penyakit_id');
    }
}
