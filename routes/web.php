<?php

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

Route::get('/', 'HomeController@index');
Route::get('/a', function () {
    return view('a');
});


Route::get('post/create', 'PostController@create');
Route::post('post/store', 'PostController@store');

Route::post('user/login', 'Admin\LoginController@login');
Route::post('user/logout', 'Admin\LoginController@logout');
Route::get('user/info', 'Admin\LoginController@info');









Route::get('zhibo/index', 'Zhibo\IndexController@index');
Route::get('zhibo/ad', 'Zhibo\IndexController@ad');