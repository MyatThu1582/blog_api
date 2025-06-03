<?php

namespace App\Http\Controllers;

use App\Helpers\ResponseHelper;
use App\Http\Resources\ProfileResource;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function index(){
        $user = auth()->user();

        $data = new ProfileResource($user); // For Single Data
        // $data = ProfileResource::collection(); Multi Data

        return ResponseHelper::success($data);
    }
}
