<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\LoanApplicationBankstatements;
use Illuminate\Support\Facades\File;
use PDF;

class LoanApplicationApiResponse extends Model
{
    protected $table = 'loan_application_api_response';

    protected $guarded = [];

    protected $fillable = ['application_id', 'api_name', 'api_response'];

    public static function getAPIResponsInPdf($application_id, $text_label, $returnArray = false)
    {
        if ($application_id) {

            $_html = '<ul>';
            $api_array['abn'] = '' ;
            $api_array['bank'] = '' ;

            //Bank Statment
            $bankObj = LoanApplicationApiResponse::where([['application_id', '=', $application_id], ['api_name', '=', 'secure.uat.mogoplus.com']])->first();
            if ($bankObj) {
                $public = public_path();
                $rootPath = '/storage/loan_application/' . $bankObj->application_id . "/";
                $dirPath =  $public . $rootPath;
                $uploadDir = 'bank_statement/';
                $pdfname = 'Bank-Statement.pdf';

                $filepath = $dirPath . $uploadDir . $pdfname;
                if (!file_exists($filepath)) {

                    //create application_id folder
                    if (!file_exists($dirPath . $pdfname)) {
                        File::makeDirectory($dirPath, 0777, true, true);
                    }

                    //create sub folder
                    $rootPath_sub = $dirPath . $uploadDir;
                    if (!file_exists($rootPath_sub . $pdfname)) {
                        File::makeDirectory($rootPath_sub, 0777, true, true);
                    }

                    if (!empty($bankObj->api_response)) {
                        $_data = json_decode($bankObj->api_response);
                        $pdf = PDF::loadView('voyager::bankpdf', ['transactions' => $_data[0]->transactions, 'data' => $_data[0]]);
                        $pdf->save($rootPath_sub . $pdfname);
                    }
                }

                $uploadUrl = url('/') . $rootPath . $uploadDir . $pdfname . '?rand=' . microtime();
                $anchor = '<a href="' . $uploadUrl . '" target="_blank"> Bank Statement </a>';
                $_html .= '<li>' . $anchor . '</li>';
                $api_array['bank'] = $anchor;
            }

            //ABN/ACN Response
            $abnObj = LoanApplicationApiResponse::where([['application_id', '=', $application_id], ['api_name', '=', 'abr.business.gov.au']])->first();
            if ($abnObj) {
                $public = public_path();
                $rootPath = '/storage/loan_application/' . $abnObj->application_id . "/";
                $dirPath =  $public . $rootPath;
                $uploadDir = 'abn_statement/';
                $pdfname = 'ABN-Statement.pdf';

                $filepath = $dirPath . $uploadDir . $pdfname;
                if (!file_exists($filepath)) {

                    //create application_id folder
                    if (!file_exists($dirPath . $pdfname)) {
                        File::makeDirectory($dirPath, 0777, true, true);
                    }

                    //create sub folder
                    $rootPath_sub = $dirPath . $uploadDir;
                    if (!file_exists($rootPath_sub . $pdfname)) {
                        File::makeDirectory($rootPath_sub, 0777, true, true);
                    }

                    $_data = json_decode($abnObj->api_response, true);
                    $pdf = PDF::loadView('voyager::abnpdf', ['data' => $_data]);
                    $pdf->save($rootPath_sub . $pdfname);
                }

                $uploadUrl = url('/') . $rootPath . $uploadDir . $pdfname . '?rand=' . microtime();
                $anchor = '<a href="' . $uploadUrl . '" target="_blank"> ABN Report </a>';
                $_html .= '<li>' . $anchor . '</li>';
                $api_array['abn'] = $anchor;
            }

            $_html .= '</ul>';

            if ($returnArray) {
                return $api_array;
            }
            return $_html;
        }
        return '<p>No Data</p>';
    }
}
