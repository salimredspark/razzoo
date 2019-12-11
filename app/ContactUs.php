<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContactUs extends Model
{
    protected $table = 'contactus';
    protected $primaryKey = 'id';

    //    protected  $fillable = array('id');
    public $fillable = ['name', 'email', 'message'];
}
