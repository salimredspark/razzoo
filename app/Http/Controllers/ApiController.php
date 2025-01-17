<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\LoanApplication;
use App\LoanApplicationBusinessFiles;
use App\LoanApplicationBankFiles;
use App\Pages;
use App\Api;
use Illuminate\Support\Facades\File;
use Session;
//use SoapClient;

class ApiController extends Controller
{

    public function __construct()
    {
        //$this->middleware('auth');
    }

    //verify ABN/ACN number
    public function verifyABN(Request $request)
    {
        require(base_path() . '/api/abnlib/nusoap.php');

        $response = array();
        $postdata = $request->postdata;

        $applicationId = $postdata['application_id'];
        $abn_number = $postdata['abn_number'];

        $response['application_id'] = $applicationId;
        $authenticationGuid = setting('site.ABN_GUID');

        $client = new \nusoap_client(
        'http://abr.business.gov.au/abrxmlsearch/ABRXMLSearch.asmx?WSDL',
        true
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

                    $params['api_name'] = 'abr.business.gov.au';
                    $params['api_response'] = $api_response;

                    $isSaved = $this->saveAPIResponse($applicationId, $params, $postdata);
                    $response['status'] = 'success';

                    $businessObj = $api_response['businessEntity'];
                    //echo "<pre>";print_r($businessObj);die;
                    $entityTypeCode = $businessObj['entityType']['entityTypeCode'];
                    $entityDescription = $businessObj['entityType']['entityDescription'];

                    $organisationName = $businessObj['mainName']['organisationName'];
                    $stateCode = $businessObj['mainBusinessPhysicalAddress']['stateCode'];
                    $postcode = $businessObj['mainBusinessPhysicalAddress']['postcode'];

                    $response['api_response'] = array(
                    'entityTypeCode' => $entityTypeCode,
                    'entityDescription' => $entityDescription,
                    'organisationName' => $organisationName,
                    'stateCode' => $stateCode,
                    'postcode' => $postcode,
                    'abn_number' => $abn_number,
                    );
                }
            }
        }

        return response()->json($response);
    }

    //get user bank account transactions
    public function getBankStatement(Request $request)
    {
        $response = array();
        $postdata = $request->postdata;

        $applicationId = $postdata['application_id'];
        $accounting_software = $postdata['accounting_software'];
        $bank_access_id = $postdata['bank_access_id'];

        if ($applicationId > 0  && $bank_access_id > 0) {
            $response['application_id'] = $applicationId;

            $curl = 'https://secure.uat.mogoplus.com/clovelly/collection/mogoReport';
            $providerId = 170;
            $username = 'AlectoUAT';
            $password = 'hSBfG3sU';
            $accessId = $bank_access_id; //680008546;
            $caseId = 'Test10122019';

            // Get cURL resource
            $data = array("providerId" => 170, "username" => 'AlectoUAT', "password" => 'hSBfG3sU', "accessId" => 680008546);
            $data_string = json_encode($data);

            $ch = curl_init($curl);
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($ch, CURLOPT_USERPWD, $username . ":" . $password);
            curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
            'Content-Type: application/json',
            'Content-Length: ' . strlen($data_string)
            )
            );

            $result = curl_exec($ch);
            $reportData = json_decode($result);

            if(!$reportData->errorCode){
                $params['accounting_software'] = $accounting_software;
                $params['api_name'] = 'secure.uat.mogoplus.com';
                $params['api_response'] = $reportData->mogoData->detailsList;

                $this->saveAPIResponse($applicationId, $params, $postdata);
                $response['status'] = 'success';
            }else{

                $response['status'] = 'error';
                $response['errorCode'] = $reportData->errorCode;
                $response['errorMessage'] = $reportData->errorMessage;
            }
        } else {
            $response['status'] = 'error';
            $response['errorCode'] = '404';
            $response['errorMessage'] = 'Please enter valid Access ID'; 
        }

        return response()->json($response);
    }

    public static function saveAPIResponse($application_id, $params, $postdata)
    {
        if ($application_id > 0) {

            $saveExistApiData = Api::where([['application_id', '=', $application_id], ['api_name', '=', $params['api_name']]])->first();
            if ($saveExistApiData) {

                if (isset($params['accounting_software'])) {
                    $saveExistApiData->accounting_software = $params['accounting_software'];
                }
                $saveExistApiData->api_name = $params['api_name'];
                $saveExistApiData->api_response = $params['api_response'];

                $saveExistApiData->save();
                return true;
            } else {
                $saveNewApiData = new Api($postdata);

                if (isset($params['accounting_software'])) {
                    $saveNewApiData->accounting_software = $params['accounting_software'];
                }
                $saveNewApiData->application_id = $application_id;
                $saveNewApiData->api_name = $params['api_name'];

                //$data = json_decode(json_encode($params['api_response']), true);
                $data =  (array) $params['api_response'];
                $saveNewApiData->api_response = serialize($data);

                $saveNewApiData->save();
                return true;
            }
        }
        return false;
    }

    public function documentVerify(Request $request)
    {

        // Access data
        $curl = env('cloudcheck_API_URL'); //'https://api.cloudcheck.co.nz/verify/';
        $key = env('cloudcheck_API_KEY'); //'yZrD7XBasMFKQbki';
        $secret = env('cloudcheck_API_SECRET'); //'2wL0zGgXYNn0ZUsrF56UThNqPgK75JZ';
        $nonce = rand(1111,9999);
        $timestamp = strtotime(date('Y-m-d H:i:s.u')) * 1000;
        $data = '{"details": {"address": {"suburb": "Hillsborough","street": "27 Indira Lane","postcode": "8022","city": "Christchurch"},"name": {"given": "Cooper","middle": "John","family": "Down"},"dateofbirth": "1978-01-10"},"reference": "1","consent": "Yes"}';

        // The API call path.
        $path = '/verify/';

        // Set up some dummy parameters. Sort alphabetically.
        $parameterMap = array(
        'key' => $key,
        'nonce' => $nonce,
        'timestamp' => $timestamp,
        'data' => $data
        );

        ksort($parameterMap);

        // Build the signature string from the parameters.
        $signatureString = $path;
        foreach ($parameterMap as $key => $value) {
            if ($key === 'signature') {
                continue;
            }

            $signatureString .= "$key=$value;";
        }
        $signatureHex = hash_hmac('sha256', $signatureString, $secret, false);                
        $parameterMap['signature'] = $signatureHex;

        //echo '<pre>';print_r($parameterMap);echo '</pre>';

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $curl);
        curl_setopt($ch, CURLOPT_POST, true);
        //urlencode('{"key":"yZrD7XBasMFKQbki","secret":"2wL0zGgXYNn0ZUsrF56UThNqPgK75JZ","nonce":"'.rand(1111,9999).'", "timestamp":"'.$timestamp.'"}')
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($parameterMap) );
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(                                                                          
        'Content-Type: application/x-www-form-urlencoded',        
        )                                                                       
        );
        $result = curl_exec($ch);

        $reportData = json_decode($result);

        $response = array();
        $postdata = $request->postdata;
        $application_id = $postdata['application_id'];
        $response['application_id'] = $application_id;
        $response['timestamp'] = $timestamp; 

        //echo '<pre>';print_r($reportData);echo '</pre>';

        if($reportData->verification){
            if($reportData->verification->error){
                $response['error'] = $reportData->verification->message;         
                $response['code'] = $reportData->verification->error;         
            }else{
                $response['status'] = 'success';         
                $saveExistApiData = Api::where([['application_id', '=', $application_id], ['api_name', '=', 'cloudcheck']])->first();
                if ($saveExistApiData) {                    
                    $saveExistApiData->api_name = 'cloudcheck';
                    $saveExistApiData->api_response = serialize($reportData);
                    $saveExistApiData->save();                    
                } else {
                    $saveNewApiData = new Api($postdata);                                        
                    $saveNewApiData->application_id = $application_id;
                    $saveNewApiData->api_name = 'cloudcheck';                                                            
                    $saveNewApiData->api_response = serialize($reportData);
                    $saveNewApiData->save();                    
                }
            }
        }
        return response()->json($response);                    
    }

    public function validReCaptcha(Request $request){
        $recaptcha = $request->recaptcha;
        $response = array();
        if($recaptcha){
            $url = env('GOOGLE_RECAPCTHA_URL'); //'https://www.google.com/recaptcha/api/siteverify';
            $data = [
            'secret' => env('GOOGLE_RECAPCTHA_SECRET_KEY'),
            'response'=> request('recaptcha')
            ];

            $options= [
            'http' => [
            'header' =>  "Content-type: application/x-www-form-urlencoded\r\n",
            'method' =>  "POST",
            'content' =>  http_build_query($data),                
            ]
            ];

            $context = stream_context_create($options);
            $result = file_get_contents($url, false, $context);
            $resultjson = json_decode($result, true);
            
            if($resultjson['success']){
                $response['status'] = 'success';
                $response['returnobj'] = $resultjson;                
            }elseif($resultjson['error-codes'][0]){
                $response['status'] = 'error';
                $response['returnobj'] = $resultjson['error-codes'][0];
            }else{
                $response['status'] = 'error';
                $response['returnobj'] = '';
            }
            return response()->json($response);
        }

        $response['status'] = 'error';        
        return response()->json($response);        
    }
}
