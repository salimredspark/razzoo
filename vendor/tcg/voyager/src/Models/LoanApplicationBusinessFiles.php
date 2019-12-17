<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class LoanApplicationBusinessFiles extends Model
{
    protected $table = 'loan_application_business_files';

    protected $guarded = [];

    protected $fillable = ['application_id', 'file_name', 'file_url'];

    public function files()
    {
        return $this->hasMany(Voyager::modelClass('Loan'))
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }

    public static function getFileUrl($id, $text_label)
    {
        $_html = '';
        if ($id) {
            $obj = LoanApplicationBusinessFiles::find($id);
            if ($obj) {                
                $url = url('/') . $obj->file_url;
                $_html .= '<li><a href="' . $url . '" target="_blank"> ' . $text_label . ' </a></li>';
            }
        }
        return $_html;
    }
}
