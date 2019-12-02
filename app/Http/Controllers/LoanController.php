<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class LoanController extends Controller
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
        return view('loan.index');
    }

    public function started()
    {
        return view('loan.started');
    }

    public function process()
    {
        return view('loan.process');
    }

    public function save(Request $request){

        $existAppData = User::where('email', '=', $request->email)
        ->orWhere('mobile', '=', $request->mobile)
        ->orderBy('created_at', 'DESC')
        ->get()
        ->toArray();

        if($existAppData->id){
            echo "<br> User Exist";
        }
        else
        {
            echo "<br> New User";
        }


        echo "<pre>";print_r($request->fname);echo"</pre>";
        die("all done");

        return redirect()->route('/');
    }
}