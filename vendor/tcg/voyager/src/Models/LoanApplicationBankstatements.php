<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class LoanApplicationBankstatements extends Model
{
    protected $table = 'loan_application_bankstatements';

    protected $guarded = [];

    protected $fillable = ['application_id', 'file_name', 'file_url'];

    public static function getFileUrl($id,  $text_label = null)
    {
        $_html = '';
        if ($id) {
            $obj = LoanApplicationBankstatements::find($id);
            if ($obj) {                
                $url = url('/') . $obj->file_url;
                $_html .= '<a href="' . $url . '" target="_blank"> 2222' . $text_label . ' </a>';
            }
        }
        return $_html;
    }
}
