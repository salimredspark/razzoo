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
            $obj = LoanApplicationApiResponse::where([['application_id', '=', $id], ['api_name', '=', 'secure.uat.mogoplus.com']])->first();

            if ($obj) {
                $public = public_path();
                $rootPath = '/storage/loan_application/' . $obj->application_id . "/";
                $dirPath =  $public . $rootPath;
                $uploadDir = 'bank_statement/';
                $pdfname = 'bank_statement.pdf';

                $filepath = $dirPath . $uploadDir . $pdfname;
               // if (!file_exists($filepath)) {

                    //create application_id folder
                    if (!file_exists($dirPath . $pdfname)) {
                        File::makeDirectory($dirPath, 0777, true, true);
                    }

                    //create sub folder
                    $rootPath_sub = $dirPath . $uploadDir;
                    if (!file_exists($rootPath_sub . $pdfname)) {
                        File::makeDirectory($rootPath_sub, 0777, true, true);
                    }

                    $_data = unserialize($obj->api_response);
                    $pdf = PDF::loadView('voyager::bankpdf', ['transactions' => $_data[0]->transactions , 'data' => $_data[0]]);
                    $pdf->save($rootPath_sub . $pdfname);
              //  }

                $uploadUrl = url('/') . $rootPath . $uploadDir . $pdfname.'?rand='.microtime();
                return $uploadUrl;
            }
        }
        return '#';
    }
}
