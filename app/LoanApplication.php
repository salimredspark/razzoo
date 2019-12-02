<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LoanApplication extends Model
{
    protected $table = 'loan_application';
    protected $primaryKey = 'id';

    protected  $fillable = array('id');
    
}
