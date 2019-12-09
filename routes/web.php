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
Route::post('loan-save-step1', 'LoanController@saveStep1')->name('loan-save-step1');
Route::post('allow-consultants-call', 'LoanController@allowConsultantsToCall')->name('allow-consultants-call');
Route::post('loan-save-step2', 'LoanController@saveStep2')->name('loan-save-step2');
Route::post('loan-save-step3', 'LoanController@saveStep3')->name('loan-save-step3');
Route::post('loan-save-step4', 'LoanController@saveStep4')->name('loan-save-step4');
Route::post('loan-save-step5', 'LoanController@saveStep5')->name('loan-save-step5');
Route::post('ajax-upload', 'LoanController@ajaxUploadFile')->name('ajax-upload');

Route::get('thankyou', 'LoanController@thankyou')->name('thankyou');
Route::post('verifyabn', 'LoanController@verifyABN')->name('verifyabn');
Route::post('delete-uploads-files', 'LoanController@ajaxDeleteFile')->name('delete-uploads-files');

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
