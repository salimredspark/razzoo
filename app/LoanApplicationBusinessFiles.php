<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoanApplicationBusinessFiles extends Model
{
    protected $table = 'loan_application_business_files';
    protected $primaryKey = 'id';

    protected  $fillable = array('id');
    
}
