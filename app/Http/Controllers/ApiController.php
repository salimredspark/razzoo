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
use SoapClient;

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

        $client = new \SoapClient(
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
                    if ($isSaved)
                        $response['status'] = 'success';
                    else
                        $response['status'] = 'db-error';
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

            $params['accounting_software'] = $accounting_software;
            $params['api_name'] = 'secure.uat.mogoplus.com';
            $params['api_response'] = $reportData->mogoData->detailsList;

            $this->saveAPIResponse($applicationId, $params, $postdata);
            $response['status'] = 'success';
        } else {
            $response['status'] = 'error';
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
            }
        }
    }
}
