<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class gejalaPasien extends Model
{
    use HasFactory;
    protected $table = "gejala_pasien";
    protected $primaryKey = "id";
    protected $fillable = [
        'id','id_pasien', 'id_gejala'
    ];

    public function pasien()
    {
        return $this->hasOne(datapasien::class,'id','id_pasien');
    }

    public function gejala()
    {
        return $this->hasOne(gejala::class,'id','id_gejala');
    }
}
