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
    return view('welcome');
});
*/
Route::get('/', 'MyworkController@index')->name('MyWork.index');

Route::get('home', 'HomeController@index')->name('home');
Auth::routes();
Route::get('MyWorks', 'MyworkController@index')->name('MyWork.index');
Route::get('tags', 'MyworkController@all_tags')->name('tags.all');

Route::get('create', 'MyworkController@create')->name('create.MyWork')->middleware('auth');
Route::get('create_tag', 'MyworkController@create_tag')->name('create.tag')->middleware('auth');

Route::post('store', 'MyworkController@Store')->name('MyWork.store')->middleware('auth');
Route::post('store_tag', 'MyworkController@store_tag')->name('tag.store')->middleware('auth');

Route::get('show/project/{id}', 'MyworkController@Show');

Route::get('edit/project/{id}', 'MyworkController@Edit')->middleware('auth');
Route::get('edit/tag/{id}', 'MyworkController@edit_tag')->name('edit.tag')->middleware('auth');

Route::post('update/project/{id}', 'MyworkController@Update')->middleware('auth');
Route::post('update/tag/{id}', 'MyworkController@Update_tag')->name('tag.update')->middleware('auth');

Route::get('delete/project/{id}', 'MyworkController@Delete')->middleware('auth');
Route::get('delete/tag/{id}', 'MyworkController@Delete_tag')->name('tag.delete')->middleware('auth');
