<?php

use Illuminate\Support\Facades\Route;

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
/*
Route::get('/', function () {
    return view('MyWork.index');
});
*/
Route::get('/', 'MyworkController@index')->name('MyWork.index');
/*Auth::routes();*/

Route::get('MyWorks', 'MyworkController@index')->name('MyWork.index');
Route::get('create', 'MyworkController@create')->name('create.MyWork');
Route::post('store', 'MyworkController@Store')->name('MyWork.store');
Route::get('show/project/{id}', 'MyworkController@Show');
Route::get('edit/project/{id}', 'MyworkController@Edit');
Route::post('update/project/{id}', 'MyworkController@Update');
Route::get('delete/project/{id}', 'MyworkController@Delete');
