<?php

use App\Helpers\ResponseHelper;
use App\Http\Controllers\api\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\UnauthorizedException;
use Symfony\Component\HttpKernel\Profiler\Profile;

// Route::get('test', function () {
//     return ResponseHelper::fail('Page Not Found');
// });

// 200 ok
// 422 validate
// 401 unauthorized
// 404 not found
// 500 internal server
// 504 gateway timeout

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware(['auth:api'])->group(function(){
    Route::post('logout', [AuthController::class, 'logout']);
    
    // Profile
    Route::get('profile', [ProfileController::class, 'index']);
    
    // Category
    Route::get('categories', [CategoryController::class, 'all']);

    //Post
    Route::post('post', [PostController::class, 'create']);

});