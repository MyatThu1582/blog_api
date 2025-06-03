<?php

namespace App\Http\Controllers;

use App\Helpers\ResponseHelper;
use App\Http\Resources\CategoryResource;
use App\Models\category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function all(){
        $categories = category::orderBy('name')->get();

        return ResponseHelper::success(CategoryResource::collection($categories));
    }
}
