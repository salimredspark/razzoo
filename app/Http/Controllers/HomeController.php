<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Newsletter;
use App\NewsletterSubscriber;
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
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
                $r = 'sucess';
            } else {
                $r = 'exist';
            }
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
}
