<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pages extends Model
{
    protected $table = 'pages';
    protected $primaryKey = 'id';
    
    //public $fillable = ['name', 'email', 'message'];
}
