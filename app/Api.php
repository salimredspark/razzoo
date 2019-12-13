<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Api extends Model
{
    protected $table = 'loan_application_api_response';
    protected $primaryKey = 'id';
    
    public $fillable = ['application_id', 'api_name', 'api_response'];
    public $timestamps = false;
}
