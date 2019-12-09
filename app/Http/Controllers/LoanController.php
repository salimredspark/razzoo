<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\LoanApplication;
use App\LoanApplicationBusinessFiles;
use Illuminate\Support\Facades\File;
use Session;
use SoapClient;

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

        $saveExistAppData = LoanApplication::where([['customer_email', '=', $postdata['customer_email']], ['customer_mobile', '=', $postdata['customer_mobile']]])->first();
        if ($saveExistAppData) {
            $applicationId = $saveExistAppData->id;
            $saveExistAppData->customer_firstname =  $postdata['customer_firstname'];
            $saveExistAppData->customer_lastname =  $postdata['customer_lastname'];
            $saveExistAppData->customer_email =  $postdata['customer_email'];
            $saveExistAppData->customer_mobile =  $postdata['customer_mobile'];
            $saveExistAppData->ip_address = $this->getClientIPAddress();
            $saveExistAppData->loan_status = 'Pending';

            $saveExistAppData->updated_at =  strtotime(date('Y-m-d h:i:s'));
            $saveExistAppData->save();
        } else {
            $saveApplication = new LoanApplication($postdata);
            $saveApplication->customer_firstname =  $postdata['customer_firstname'];
            $saveApplication->customer_lastname =  $postdata['customer_lastname'];
            $saveApplication->customer_email =  $postdata['customer_email'];
            $saveApplication->customer_mobile =  $postdata['customer_mobile'];
            $saveApplication->ip_address =  $this->getClientIPAddress();
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
            $saveExistAppData->customer_address1 = $postdata['customer_address1'];
            $saveExistAppData->customer_address2 = $postdata['customer_address2'];
            $saveExistAppData->customer_state = $postdata['customer_state'];
            $saveExistAppData->customer_city = $postdata['customer_city'];
            $saveExistAppData->customer_postalcode = $postdata['customer_postalcode'];
            $saveExistAppData->customer_country = $postdata['customer_country'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
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
            $saveExistAppData->customer_industry = $postdata['customer_industry'];
            $saveExistAppData->save();

            $response = array(
                'status' => 'success',
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

    //step 5
    public function saveStep5(Request $request)
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

    //step 6
    public function saveStep6(Request $request)
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

    //step 7
    public function saveStep7(Request $request)
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

    public function ajaxUploadFile(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;
        $applicationId = $request['application_id'];

        $fileoutput = '';
        $files = $request->file('supporting_business_plan');

        if ($request->hasFile('supporting_business_plan')) {
            foreach ($files as $file) {
                //$file = $request->file('supporting_business_plan');
                $name = $file->getClientOriginalName() . '.' . $file->getClientOriginalExtension();

                $rootPath = '/storage/loan_application/' . $applicationId . "/";
                $uploadPath = public_path() . $rootPath;

                if (!file_exists($rootPath . $name)) {
                    File::makeDirectory($uploadPath, 0777, true, true);
                }

                $file->move($uploadPath, $name);

                $saveFilesData = new LoanApplicationBusinessFiles($request->all());
                $saveFilesData->application_id = $applicationId;
                $saveFilesData->file_name = $name;
                $saveFilesData->file_url = $rootPath;
                $saveFilesData->save();

                $uploadUrl = url('/') . $rootPath . $name;
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

    public function thankyou()
    {

        $application_id = Session::get('application_id');
        return view('loan.thankyou', ['application_id' => $application_id]);
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

    public function verifyABN(Request $request)
    {
        require(base_path() . '\api\abnlib\nusoap.php');

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
