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

    public static function fileUrl($id)
    {
        if ($id) {
            $obj = LoanApplicationApiResponse::find($id);
            if ($obj) {
                $pdfname = 'bank_statement.pdf';

                $rootPath = '/storage/loan_application/' . $obj->application_id . "/";
                $dirPath = public_path() . $rootPath;
                if (!file_exists($dirPath . $pdfname)) {
                    File::makeDirectory($dirPath, 0777, true, true);
                }

                //create sub folder
                $rootPath_sub = $dirPath . "bank_statement/";
                if (!file_exists($rootPath_sub . $pdfname)) {
                    File::makeDirectory($rootPath_sub, 0777, true, true);
                }

                $api_response = json_decode($obj->api_response, true);
                
                $pdf = PDF::loadView('voyager::bankpdf', ['data' => $api_response]);
                $pdf->save($rootPath_sub . $pdfname);                

                $uploadUrl = url('/') . $rootPath . 'bank_statement/' . $pdfname;
                return $uploadUrl;
            }
        }
        return '#';
    }
}
