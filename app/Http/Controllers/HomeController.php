<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Newsletter;
use App\NewsletterSubscriber;
use App\User;
use App\Staff;

class HomeController extends Controller
{
    public function __construct()
    {
        // $this->middleware('auth');
    }

    public function index()
    {
        $staff = Staff::all();
        return view('home', ['staff' => $staff]);
    }

    public function ajaxSubscribe(Request $request)
    {
        //more help https://github.com/spatie/laravel-newsletter


        $response = array();
        $postdata = $request->postdata;
        $email = $postdata['email'];

        $r = 'error';
        if ($email) {
            //merge in mailchimp
            // $r =  Newsletter::subscribe($email);

            //save in database
            //$isExist = NewsletterSubscriber::find('email', '=', $email);
            $isExist = NewsletterSubscriber::where([['email', '=', $email]])->first();
            if (!$isExist) {
                $saveSubscriber = new NewsletterSubscriber($postdata);
                $saveSubscriber->email =  $email;
                $saveSubscriber->ip_address =  User::getClientIPAddress();

                $saveSubscriber->created_at =  strtotime(date('Y-m-d h:i:s'));
                $saveSubscriber->updated_at =  strtotime(date('Y-m-d h:i:s'));
                $saveSubscriber->save();
                $r = 'success';
            } else {
                $r = 'exist';
            }
        } else {
            $r = 'invalid';
        }

        $response = array(
        'status' => $r,
        'email' => $email
        );
        return response()->json($response);

        //Newsletter::unsubscribe('the.luggage@discworld.com');
        //Newsletter::subscribe('rincewind@discworld.com', ['firstName'=>'Rince', 'lastName'=>'Wind']);
        //Newsletter::subscribeOrUpdate('rincewind@discworld.com', ['firstName'=>'Foo', 'lastname'=>'Bar']);
    }

    public function myCaptcha(){
        return view('myCaptcha');
    }           
    
    public function myCaptchaPost(Request $request){

        request()->validate([
        'email' => 'required|email',
        'password' => 'required',   
        'captcha' => 'required|captcha'
        ],
        ['captcha.captcha'=>'Invalid captcha code.']);
        dd("You are here :) .");
    }
    
    public function refreshCaptcha(){
        return response()->json(['captcha'=> captcha_img()]);
    }
}
