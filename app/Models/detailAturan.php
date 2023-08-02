<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class detailAturan extends Model
{
    use HasFactory;
    protected $table = "detail_aturans";
    protected $primaryKey = "id";
    protected $fillable =[
        'id_aturan', 'aksiaturan', 'resiko', 'keterangan','dari_umur','sampai_umur'
    ];
}
