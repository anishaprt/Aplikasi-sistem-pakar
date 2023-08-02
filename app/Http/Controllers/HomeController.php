<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\datapasien;
use App\Models\gejala;
use App\Models\penyakit;
use App\Models\solusi;

class HomeController extends Controller
{
    public function index (){
        return view ('layouts.master');
    }
}