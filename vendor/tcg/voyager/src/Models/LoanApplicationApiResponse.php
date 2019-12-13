<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class LoanApplicationApiResponse extends Model
{
    protected $table = 'loan_application_api_response';

    protected $guarded = [];

    protected $fillable = ['application_id', 'api_name', 'api_response'];

    public static function fileUrl($id)
    {
        if ($id) {
            $obj = LoanApplicationBankstatements::find($id);
            if ($obj)
                return url('/') . $obj->file_url;
        }
        return '#';
    }
}
