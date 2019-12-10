<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoanApplicationBankFiles extends Model
{
    protected $table = 'loan_application_bankstatements';
    protected $primaryKey = 'id';

    protected  $fillable = array('id');
    
}
