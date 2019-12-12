<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\LoanApplication;
use App\LoanApplicationBusinessFiles;
use App\LoanApplicationBankFiles;
use Illuminate\Support\Facades\File;
use Session;
use SoapClient;

class LoanController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index()
    {
        return view('loan.index');
    }

    public function started()
    {
        return view('loan.started');
    }

    public function process(Request $request)
    {
        $appid = Session::get('fb_loan_application_id');
        $existLoan['customer_firstname'] = '';
        $existLoan['customer_lastname'] = '';
        $existLoan['customer_email'] = '';
        $existLoan['customer_mobile'] = '';

        if ($appid > 0) {
            $existLoan = LoanApplication::find($appid);
        }

        return view('loan.process', ['application_id' => $appid, 'existLoan' => $existLoan]);
    }

    public function save(Request $request)
    {
        Session::put('application_id', $request->application_id);
        //return redirect()->route('thankyou')->with('success', 'Loan Application Submitted');
        return redirect()->route('thankyou');
    }

    //step 1
    public function saveStep1(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $application_id = $postdata['application_id'];

        if ($application_id > 0) {
            $saveExistAppData = LoanApplication::find($application_id); //where([['id', '=', $application_id]])->first();
        } else {
            $saveExistAppData = LoanApplication::where([['customer_email', '=', $postdata['customer_email']], ['customer_mobile', '=', $postdata['customer_mobile']]])->first();
        }

        if ($saveExistAppData) {
            $applicationId = $saveExistAppData->id;
            $saveExistAppData->customer_firstname =  $postdata['customer_firstname'];
            $saveExistAppData->customer_lastname =  $postdata['customer_lastname'];
            $saveExistAppData->customer_email =  $postdata['customer_email'];
            $saveExistAppData->customer_mobile =  $postdata['customer_mobile'];
            $saveExistAppData->ip_address =  User::getClientIPAddress();
            $saveExistAppData->loan_status = 'Pending';

            $saveExistAppData->updated_at =  strtotime(date('Y-m-d h:i:s'));
            $saveExistAppData->save();
        } else {
            $saveApplication = new LoanApplication($postdata);
            $saveApplication->customer_firstname =  $postdata['customer_firstname'];
            $saveApplication->customer_lastname =  $postdata['customer_lastname'];
            $saveApplication->customer_email =  $postdata['customer_email'];
            $saveApplication->customer_mobile =  $postdata['customer_mobile'];
            $saveApplication->ip_address =   User::getClientIPAddress();
            $saveApplication->loan_status = 'Pending';

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

    //step 2
    public function saveStep2(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {
            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->customer_address1 = $postdata['customer_address1'];
                $saveExistAppData->customer_address2 = $postdata['customer_address2'];
                $saveExistAppData->customer_state = $postdata['customer_state'];
                $saveExistAppData->customer_city = $postdata['customer_city'];
                $saveExistAppData->customer_postalcode = $postdata['customer_postalcode'];
                $saveExistAppData->customer_country = $postdata['customer_country'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }

            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    //step 3
    public function saveStep3(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->customer_industry = $postdata['customer_industry'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }

            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    //step 4
    public function saveStep4(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->loan_amout = $postdata['loan_amout'];
                $saveExistAppData->loan_purpose = $postdata['loan_purpose'];
                $saveExistAppData->abn_number = $postdata['abn_number'];
                $saveExistAppData->dl_number = $postdata['dl_number'];
                $saveExistAppData->state_issue = $postdata['state_issue'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }

            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    //step 5
    public function saveStep5(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->business_trading = $postdata['business_trading'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }

            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    //step 6
    public function saveStep6(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->business_monthly_turnover = $postdata['business_monthly_turnover'];
                $saveExistAppData->business_name = $postdata['business_name'];
                $saveExistAppData->business_state = $postdata['business_state'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }
            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    //step 7
    public function saveStep7(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->accounting_software = $postdata['accounting_software'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }

            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function allowConsultantsToCall(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        if ($postdata['application_id'] > 0) {

            $applicationId = $postdata['application_id'];

            $saveExistAppData = LoanApplication::find($applicationId);
            if ($saveExistAppData) {
                $saveExistAppData->allow_consultants_call = $postdata['customer_ans'];
                $saveExistAppData->save();
                $status = 'success';
            } else {
                $status = 'notexist';
            }

            $response = array(
                'status' => $status,
                'application_id' => $applicationId,
            );
            return response()->json($response);
        }
    }

    public function ajaxUploadBusinessFile(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $applicationId = $request['application_id'];

        $fileoutput = '';
        $files = $request->file('supporting_business_plan');

        if ($request->hasFile('supporting_business_plan')) {

            //first delete all uploaded files
            //LoanApplicationBusinessFiles::where([['application_id', '=', $applicationId]])->delete();

            foreach ($files as $file) {
                //$file = $request->file('supporting_business_plan');
                $name = $file->getClientOriginalName(); // . '.' . $file->getClientOriginalExtension();

                $rootPath = '/storage/loan_application/' . $applicationId . "/";
                $uploadPath = public_path() . $rootPath;
                if (!file_exists($rootPath . $name)) {
                    File::makeDirectory($uploadPath, 0777, true, true);
                }

                //create sub folder
                $uploadPath = $uploadPath . "business_plan/";
                if (!file_exists($uploadPath . $name)) {
                    File::makeDirectory($uploadPath, 0777, true, true);
                }

                $file->move($uploadPath, $name);

                $rootPath .= 'business_plan/' . $name;
                $saveFilesData = new LoanApplicationBusinessFiles($request->all());
                $saveFilesData->application_id = $applicationId;
                $saveFilesData->file_name = $name;
                $saveFilesData->file_url = $rootPath;
                $saveFilesData->save();

                $uploadUrl = url('/') . $rootPath;
                $fileoutput .= '<li id="upload-image-' . $saveFilesData->id . '"><img src="' . $uploadUrl . '" width="50" /> <span>X</span></li>';
            }
        }

        $response = array(
            'status' => 'success',
            'application_id' => $applicationId,
            'upload_path' => $fileoutput,
        );
        return response()->json($response);
    }

    public function ajaxUploadlBankFile(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $applicationId = $request['application_id'];

        $fileoutput = '';
        $files = $request->file('supporting_bank_file');

        if ($request->hasFile('supporting_bank_file')) {

            //first delete all uploaded files
            //LoanApplicationBankFiles::where([['application_id', '=', $applicationId]])->delete();

            foreach ($files as $file) {
                $name = $file->getClientOriginalName(); // . '.' . $file->getClientOriginalExtension();

                $rootPath = '/storage/loan_application/' . $applicationId . "/";
                $uploadPath = public_path() . $rootPath;

                if (!file_exists($rootPath . $name)) {
                    File::makeDirectory($uploadPath, 0777, true, true);
                }

                //create sub folder
                $uploadPath = $uploadPath . "bank_statement/";
                if (!file_exists($uploadPath . $name)) {
                    File::makeDirectory($uploadPath, 0777, true, true);
                }

                $file->move($uploadPath, $name);

                $rootPath .= 'bank_statement/' . $name;
                $saveFilesData = new LoanApplicationBankFiles($request->all());
                $saveFilesData->application_id = $applicationId;
                $saveFilesData->file_name = $name;
                $saveFilesData->file_url = $rootPath;
                $saveFilesData->save();

                $uploadUrl = url('/') . $rootPath;
                $fileoutput .= '<li id="upload-bank-image-' . $saveFilesData->id . '"><img src="' . $uploadUrl . '" width="50" /> <span>X</span></li>';
            }
        }

        $response = array(
            'status' => 'success',
            'application_id' => $applicationId,
            'upload_path' => $fileoutput,
        );
        return response()->json($response);
    }

    //delete business file
    public function ajaxDeleteFile(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $file_id = $postdata['file_id'];
        $applicationId = $postdata['application_id'];

        LoanApplicationBusinessFiles::find($file_id)->delete();

        $response = array(
            'status' => 'success',
            'application_id' => $applicationId,
            'file_id' => $file_id,
        );
        return response()->json($response);
    }

    //delete bank files
    public function ajaxDeleteBankFile(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $file_id = $postdata['file_id'];
        $applicationId = $postdata['application_id'];

        LoanApplicationBankFiles::find($file_id)->delete();

        $response = array(
            'status' => 'success',
            'application_id' => $applicationId,
            'file_id' => $file_id,
        );
        return response()->json($response);
    }

    public function thankyou()
    {

        $application_id = Session::get('application_id');
        return view('loan.thankyou', ['application_id' => $application_id]);
    }

    public function verifyABN(Request $request)
    {
        require(base_path() . '/api/abnlib/nusoap.php');

        $response = array();
        $postdata = $request->postdata;

        $applicationId = $postdata['application_id'];
        $abn_number = $postdata['abn_number'];

        $response['application_id'] = $applicationId;

        $proxyhost = env('ABN_HOST');
        $proxyport = env('ABN_PORT');
        $proxyusername = env('ABN_USERNAME');
        $proxypassword = env('ABN_PASSWORD');
        $authenticationGuid = env('ABN_GUID');

        $client = new \SoapClient(
            'http://abr.business.gov.au/abrxmlsearch/ABRXMLSearch.asmx?WSDL',
            true,
            $proxyhost,
            $proxyport,
            $proxyusername,
            $proxypassword
        );
        $err = $client->getError();
        if ($err) {
            $response['error'] = 'Constructor error: ' . $err;
        }

        // Doc/lit parameters get wrapped
        $param = array(
            'searchString' => $abn_number,
            'includeHistoricalDetails' => 'N',
            'authenticationGuid' => $authenticationGuid
        );
        $result = $client->call('ABRSearchByABN', array('parameters' => $param), '', '', false, true);

        // Check for a fault
        if ($client->fault) {
            $response['error'] = $result;
        } else {
            // Check for errors
            $err = $client->getError();
            if ($err) {
                $response['error'] = $err;
            } else {
                $api_response = $result['ABRPayloadSearchResults']['response'];
                if (isset($api_response['exception'])) {
                    $response['error'] = $api_response['exception']['exceptionDescription'];
                } else {
                    $response['api_response'] = $api_response;
                    $response['status'] = 'success';
                }
            }
        }

        /*$response = array(
            'status' => 'success',
            'application_id' => $applicationId,
        );
        */

        return response()->json($response);
    }
}
