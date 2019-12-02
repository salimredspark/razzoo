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
#homepage url
Route::get('/', function () {
    return view('home');
});

#admin panel url
Route::group(['prefix' => '/admin'], function () {
    Voyager::routes();
});

Route::get('loan-started', 'LoanController@started')->name('loan-started');
Route::get('loan-process', 'LoanController@process')->name('loan-process');
Route::post('loan-submit', 'LoanController@save')->name('loan-submit');

/*
#manage companies
Route::get('companies', 'CompaniesController@index')->name('companies-list');
Route::get('companies/create', 'CompaniesController@create')->name('companies-create');
Route::get('companies/update/{id}', 'CompaniesController@update')->name('companies-update');
Route::delete('companies/destroy', 'CompaniesController@destroy')->name('companies-delete');
Route::get('companies/deleteall', 'CompaniesController@deleteall')->name('companies-deleteall');
Route::post('companies/store', 'CompaniesController@store')->name('companies-store');
Route::get('companies/filter/{tag}', 'CompaniesController@index')->name('companies-filter');
Route::get('companies/company/{id}', 'CompaniesController@index')->name('companies-company')
*/
