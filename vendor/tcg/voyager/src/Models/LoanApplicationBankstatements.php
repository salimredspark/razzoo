<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class LoanApplicationBankstatements extends Model
{
    protected $table = 'loan_application_bankstatements';

    protected $guarded = [];

    protected $fillable = ['application_id', 'file_name', 'file_url'];
    
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
