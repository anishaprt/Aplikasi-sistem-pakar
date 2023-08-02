<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class penyakit extends Model
{
    use HasFactory;
    protected $table = "penyakits";
    protected $primaryKey = "id";
    protected $fillable =[
        'id','kodepenyakit', 'nama', 'deskripsi','jeniskelamin','dari_umur','sampai_umur'
    ];
}
