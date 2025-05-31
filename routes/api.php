<?php

use App\Helpers\ResponseHelper;
use App\Http\Controllers\api\AuthController;
use Illuminate\Support\Facades\Route;
use Illuminate\Validation\UnauthorizedException;

// Route::get('test', function () {
//     return ResponseHelper::fail('Page Not Found');
// });
// 200 ok
// 422 validate
// 401 unauthorized
// 404 not found
// 500 internal server
// 504 gateway timeout

Route::get('register', [AuthController::class, 'register']);