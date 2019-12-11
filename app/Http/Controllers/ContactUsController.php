<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\ContactUs;
use App\User;
use Mail;
use Session;

class ContactUsController  extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function contactUS()
    {
        return view('contact.index');
    }

    public function contactUSPost(Request $request)
    {

        $this->validate($request, [
            'contact_name' => 'required',
            'contact_email' => 'required|email',
            'contact_message' => 'required',
            'contact_agree_terms' => 'required',
            'g-recaptcha-response' => 'required|captcha'
        ]);


        $saveApplication = new ContactUs($request->all());

        $saveApplication->contact_name =  $request->get('contact_name');
        $saveApplication->contact_email =  $request->get('contact_email');
        $saveApplication->contact_message =  $request->get('contact_message');
        $saveApplication->ip_address =   User::getClientIPAddress();

        $saveApplication->created_at =  strtotime(date('Y-m-d h:i:s'));
        $saveApplication->updated_at =  strtotime(date('Y-m-d h:i:s'));
        $saveApplication->save();

        Session::put('contact_name', $request->get('contact_name'));


       /* Mail::send(
            'email',
            array(
                'name' => $request->get('contact_name'),
                'email' => $request->get('contact_email'),
                'user_message' => $request->get('contact_message')
            ),
            function ($message) {
                $message->from('contact@razzoo.com');
                $message->to('salim@redsparkinfo.co.in', 'Razzoo')->subject('Contact Us');
            }
        );
        */

        //return back()->with('success', 'Thanks for contacting us!');
        return redirect()->route('thank-you-for-contactus'); //->with('success', 'Form Submitted');
    }

    public function thankyou()
    {
        $contact_name = Session::get('contact_name');
        return view('contact.thankyou', ['contact_name' => $contact_name]);
    }
}
