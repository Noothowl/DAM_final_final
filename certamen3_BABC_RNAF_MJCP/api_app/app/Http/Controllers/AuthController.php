<?php

namespace App\Http\Controllers;

use App\Http\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;//nos permite chequear las credenciales con el método Auth

class AuthController extends Controller
{

    public function login(Request $request){
        $credenciales = $request->only('email','password');
        if(!Auth::attempt($credenciales)){
            return response(['message'=>'FAIL']);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;
        return response([
            'user'=>Auth::user(),
            'access_token'=>$accessToken,
        ]);
    }

}
