<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\LoanApplication;

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

    public function save(Request $request)
    {

        $existAppData = LoanApplication::where('customer_email', '=', "$request->customer_email")
            ->orWhere('customer_mobile', '=', "$request->customer_mobile")
            ->orderBy('created_at', 'DESC')
            ->get()
            ->toArray();

        if ($existAppData) {
            echo "<br> User Exist";
        } else {
            echo "<br> New User";

            $saveApplication = new LoanApplication($request->all());

            $saveApplication->customer_firstname =  $request->customer_firstname;
            $saveApplication->customer_lastname =  $request->customer_lastname;
            $saveApplication->customer_email =  $request->customer_email;
            $saveApplication->customer_mobile =  $request->customer_mobile;
            $saveApplication->customer_industry =  $request->customer_industry;
            $saveApplication->loan_amout =  $request->loan_amout;
            $saveApplication->loan_purpose =  $request->loan_purpose;
            $saveApplication->abn_number =  $request->abn_number;
            $saveApplication->dl_number =  $request->dl_number;

            $saveApplication->state_issue =  $request->state_issue;

            $saveApplication->business_trading =  $request->business_trading;

            $saveApplication->business_monthly_turnover =  $request->business_monthly_turnover;

            $saveApplication->business_name =  $request->business_name;
            $saveApplication->business_state =  $request->business_state;
            $saveApplication->accounting_software =  $request->accounting_software;

            $saveApplication->created_at =  strtotime(date('Y-m-d h:i:s'));
            $saveApplication->updated_at =  strtotime(date('Y-m-d h:i:s'));
            $saveApplication->save();



            if ($saveApplication->id) {
                //file information
                $file = $request->file('group_file');
                $filename = $file->getClientOriginalName();
                $extension = $file->getClientOriginalExtension();
                $fileTmpPath = $file->getRealPath();
                $fileSize = $file->getSize();
                $fileMimeType = $file->getMimeType();

                //Move Uploaded File
                $location = 'uploads'; //public/uploads
                $file->move($location, $filename);
                $filepath = public_path($location . "/" . $filename);
            }
        }

        echo "<pre>";
        print_r($request->fname);
        echo "</pre>";
        die("all done");

        return redirect()->route('/');
    }
}
