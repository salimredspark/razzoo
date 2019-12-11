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
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required',
            'contact_agree_terms' => 'required',
            'g-recaptcha-response' => 'required|captcha'
        ]);

        ContactUS::create($request->all());


        Mail::send(
            'email',
            array(
                'name' => $request->get('name'),
                'email' => $request->get('email'),
                'user_message' => $request->get('message')
            ),
            function ($message) {
                $message->from('saquib.gt@gmail.com');
                $message->to('saquib.rizwan@cloudways.com', 'Admin')->subject('Cloudways Feedback');
            }
        );

        return back()->with('success', 'Thanks for contacting us!');

        //return redirect()->route('thank-you-for-contactus')->with('success', 'Form Submitted');
    }

    public function submitContactusForm(Request $request)
    {
        $saveApplication = new Contactus($request);

        $contact_agree_terms =  $request['contact_agree_terms'];

        $saveApplication->contact_name =  $request['contact_name'];
        $saveApplication->contact_email =  $request['contact_email'];
        $saveApplication->contact_message =  $request['contact_message'];
        $saveApplication->ip_address =   User::getClientIPAddress();

        $saveApplication->created_at =  strtotime(date('Y-m-d h:i:s'));
        $saveApplication->updated_at =  strtotime(date('Y-m-d h:i:s'));
        $saveApplication->save();

        Session::set('contact_name', $request['contact_name']);

        return redirect()->route('thank-you-for-contactus')->with('success', 'Form Submitted');
    }

    public function thankyou()
    {
        $contact_name = Session::get('contact_name');
        return view('contact.thankyou', ['contact_name' => $contact_name]);
    }
}
