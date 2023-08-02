<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class datapasien extends Model
{
    use HasFactory;
    protected $table = "datapasien";
    protected $primaryKey = "id";
    protected $fillable =[
        'id', 'namapasien', 'jeniskelamin', 'umur'
    ];

    public function user()
    {
        return $this->belongsTo(user::class,'id','id_pasien');
    }
}
