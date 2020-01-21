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
Route::get('/', 'HomeController@index', function () {
    //return view('home');
});

#admin panel url
Route::group(['prefix' => '/admin'], function () {
    Voyager::routes();
});

//Captcha
Route::post('recaptcha', 'ApiController@validReCaptcha')->name('recaptcha');

Route::get('loan-started', 'LoanController@started')->name('loan-started');
Route::get('loan-process', 'LoanController@process')->name('loan-process');
Route::post('loan-submit', 'LoanController@save')->name('loan-submit');

Route::post('loan-save-step1', 'LoanController@saveStep1')->name('loan-save-step1');
Route::post('loan-save-step2', 'LoanController@saveStep2')->name('loan-save-step2');
Route::post('loan-save-step3', 'LoanController@saveStep3')->name('loan-save-step3');
Route::post('loan-save-step4', 'LoanController@saveStep4')->name('loan-save-step4');
Route::post('loan-save-step5', 'LoanController@saveStep5')->name('loan-save-step5');
Route::post('loan-save-step6', 'LoanController@saveStep6')->name('loan-save-step6');
Route::post('loan-save-step7', 'LoanController@saveStep7')->name('loan-save-step7');

Route::post('allow-consultants-call', 'LoanController@allowConsultantsToCall')->name('allow-consultants-call');
Route::post('ajax-upload-businessplan', 'LoanController@ajaxUploadBusinessFile')->name('ajax-upload-businessplan');
Route::post('ajax-upload-bankfile', 'LoanController@ajaxUploadlBankFile')->name('ajax-upload-bankfile');

Route::get('thankyou', 'LoanController@thankyou')->name('thankyou');
Route::post('delete-uploads-files', 'LoanController@ajaxDeleteFile')->name('delete-uploads-files');
Route::post('delete-uploads-bank-files', 'LoanController@ajaxDeleteBankFile')->name('delete-uploads-bank-files');

//calling APIs
Route::post('api-verifyABN', 'ApiController@verifyABN')->name('api-verifyABN');
Route::post('api-getBankStatment', 'ApiController@getBankStatement')->name('api-getBankStatment');
//Route::post('view-statment', 'TCG\Voyager\Http\VoyagerLoanController@show')->name('view-statment');
Route::post('document-verify', 'ApiController@documentVerify')->name('document-verify');

//Newsletter Subscriber
Route::post('subscribe', 'HomeController@ajaxSubscribe')->name('subscribe');

//contact page
Route::post('contact-us', ['as'=>'contactus.store','uses'=>'ContactUsController@contactUSPost']);
Route::get('thank-you-for-contactus', 'ContactUsController@thankyou')->name('thank-you-for-contactus');

//cms pages
Route::get('{slug}', ['uses'=>'PagesController@index']);

//fixed slug
Route::get('terms', ['as'=>'terms', 'uses'=>'PagesController@index']); 
Route::get('privacy-policy', ['as'=>'privacy-policy', 'uses'=>'PagesController@index']);

//for facebook login
Route::get('facebook', function () {
    return view('facebook');
});
Route::get('auth/facebook', 'Auth\FacebookController@redirectToFacebook');
Route::get('auth/facebook/callback', 'Auth\FacebookController@handleFacebookCallback');


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
