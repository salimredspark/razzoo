<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\LoanApplication;
use App\LoanApplicationBusinessFiles;
use Illuminate\Support\Facades\File;
use Session;

class LoanController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
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
        
        /*
        $saveExistAppData = LoanApplication::where([['customer_email', '=', $postdata['customer_email']], ['customer_mobile', '=', $postdata['customer_mobile']]])->first();
        if ($saveExistAppData) {
            $applicationId = $saveExistAppData->id;
            $saveExistAppData->customer_firstname =  $postdata['customer_firstname'];
            $saveExistAppData->customer_lastname =  $postdata['customer_lastname'];
            $saveExistAppData->customer_email =  $postdata['customer_email'];
            $saveExistAppData->customer_mobile =  $postdata['customer_mobile'];
            $saveExistAppData->customer_industry =  $postdata['customer_industry'];
            $saveExistAppData->ip_address = $this->getClientIPAddress();

            $saveExistAppData->updated_at =  strtotime(date('Y-m-d h:i:s'));
            $saveExistAppData->save();
        } else {
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
            $saveApplication->ip_address =  $this->getClientIPAddress();

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
        */
        
        Session::put('application_id', $request->application_id);
        //return redirect()->route('thankyou')->with('success', 'Loan Application Submitted');
        return redirect()->route('thankyou');
    }

    public function saveStep1(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        $saveExistAppData = LoanApplication::where([['customer_email', '=', $postdata['customer_email']], ['customer_mobile', '=', $postdata['customer_mobile']]])->first();
        if ($saveExistAppData) {
            $applicationId = $saveExistAppData->id;
            $saveExistAppData->customer_firstname =  $postdata['customer_firstname'];
            $saveExistAppData->customer_lastname =  $postdata['customer_lastname'];
            $saveExistAppData->customer_email =  $postdata['customer_email'];
            $saveExistAppData->customer_mobile =  $postdata['customer_mobile'];
            $saveExistAppData->customer_industry =  $postdata['customer_industry'];
            $saveExistAppData->ip_address = $this->getClientIPAddress();

            $saveExistAppData->updated_at =  strtotime(date('Y-m-d h:i:s'));
            $saveExistAppData->save();
        } else {
            $saveApplication = new LoanApplication($postdata);
            $saveApplication->customer_firstname =  $postdata['customer_firstname'];
            $saveApplication->customer_lastname =  $postdata['customer_lastname'];
            $saveApplication->customer_email =  $postdata['customer_email'];
            $saveApplication->customer_mobile =  $postdata['customer_mobile'];
            $saveApplication->customer_industry =  $postdata['customer_industry'];
            $saveApplication->ip_address =  $this->getClientIPAddress();

            $saveApplication->created_at =  strtotime(date('Y-m-d h:i:s'));
            $saveApplication->updated_at =  strtotime(date('Y-m-d h:i:s'));
            $saveApplication->save();

            $applicationId = $saveApplication->id;
        }

        $response = array(
            'status' => 'success',
            'application_id' => $applicationId,
        );
        return response()->json($response);
    }

    public function allowConsultantsToCall(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            $saveExistAppData->allow_consultants_call = $postdata['customer_ans'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function saveStep2(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            $saveExistAppData->loan_amout = $postdata['loan_amout'];
            $saveExistAppData->loan_purpose = $postdata['loan_purpose'];
            $saveExistAppData->abn_number = $postdata['abn_number'];
            $saveExistAppData->dl_number = $postdata['dl_number'];
            $saveExistAppData->state_issue = $postdata['state_issue'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function saveStep3(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            $saveExistAppData->business_trading = $postdata['business_trading'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function saveStep4(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            $saveExistAppData->business_monthly_turnover = $postdata['business_monthly_turnover'];
            $saveExistAppData->business_name = $postdata['business_name'];
            $saveExistAppData->business_state = $postdata['business_state'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function saveStep5(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            $saveExistAppData->accounting_software = $postdata['accounting_software'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function ajaxUploadFile(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $applicationId = $request['application_id'];
        
        if ($request->hasFile('supporting_business_plan')) {
            $file = $request->file('supporting_business_plan');
            $name = $file->getClientOriginalName() . '.' . $file->getClientOriginalExtension();

            $rootPath = '/uploads/loan_application/' . $applicationId . "/";
            $uploadPath = public_path() . $rootPath;

            if (!file_exists($rootPath.$name)) {
                File::makeDirectory($uploadPath, 0777, true, true);
            }

            $file->move($uploadPath, $name);

            $saveFilesData = new LoanApplicationBusinessFiles($request->all());
            $saveFilesData->application_id = $applicationId;
            $saveFilesData->file_name = $name;
            $saveFilesData->file_url = $rootPath;
            $saveFilesData->save();
        }

        $response = array(
            'status' => 'success',
            'application_id' => $applicationId,
            'upload_path' => '<img src="' . $uploadPath . '" width="50" />',
        );
        return response()->json($response);
    }

    public function thankyou(){

        $application_id = Session::get('application_id');
        return view('loan.thankyou', ['application_id'=>$application_id]);
    }

    public function getClientIPAddress()
    {
        //return \Request::getClientIp(true);
        $ipaddress = '';
        if (isset($_SERVER['HTTP_CLIENT_IP']))
            $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
        else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_X_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
        else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
            $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
        else if (isset($_SERVER['HTTP_FORWARDED']))
            $ipaddress = $_SERVER['HTTP_FORWARDED'];
        else if (isset($_SERVER['REMOTE_ADDR']))
            $ipaddress = $_SERVER['REMOTE_ADDR'];
        else
            $ipaddress = 'UNKNOWN';
        return $ipaddress;
    }
}
