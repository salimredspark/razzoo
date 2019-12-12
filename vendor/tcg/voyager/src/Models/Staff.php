<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class Staff extends Model
{
    protected $table = 'staff';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public $timestamps = false;   
}
