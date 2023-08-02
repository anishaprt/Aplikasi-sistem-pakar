<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class aturan extends Model
{
    use HasFactory;
    protected $table = "aturans";
    protected $primaryKey = "id";
    protected $fillable =[
        'id', 'namaaturan', 'kondisi', 'penyakit_id'
    ];

    public function penyakit()
    {
        return $this->hasOne(penyakit::class,'id','penyakit_id');
    }
}
