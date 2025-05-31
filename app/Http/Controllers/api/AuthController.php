<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function register(Request $request){
        $request->validate(
    [
            'name' => 'required|string|max:100',
            'email' => 'required|email',
            'password' => 'required|min:8|max:20'
            ]
            );
    }
}
