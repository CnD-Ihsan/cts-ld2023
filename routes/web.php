<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;

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

Route::get('/', function () {
    return view('index');
});

Route::group(([
    'controller' => Controller::class,
]), function(){
    //Index Page Route
    Route::get('/','index')->name('index');
    Route::get('/list','list')->name('list');
    Route::get('/reset','reset')->name('reset');
});
