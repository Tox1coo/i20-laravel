<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\DB;

class homeController extends Controller
{
    public function home() {
        return view('home');
    }
}