<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class solusi extends Model
{
    use HasFactory;
    protected $table = "solusi_1";
    protected $primaryKey = "id";
    protected $fillable =[
        'id','kodesolusi', 'solusi', 'deskripsi','foto','jeniskelamin','dari_umur','sampai_umur'
    ];
}
