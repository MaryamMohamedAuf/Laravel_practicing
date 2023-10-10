<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\authController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [authController::class,"login"]);

Route::get("/register",[authController::class,"register"]);

Route::post("/postregister",[authController::class,"postregister"]);
 
Route::get("/login",[authController::class,"login"])->name('login');

//Route::post("/postlogin",[authController::class,"postlogin"]);

Route::match(['get','post'],"/postlogin",[authController::class,"postlogin"]);

Route::get("/logout",[authController::class,"logout"])->name('logout');

Route::get("/show",[authController::class,"show"]);
