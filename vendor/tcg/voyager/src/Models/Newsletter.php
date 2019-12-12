<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class Newsletter extends Model
{
    protected $table = 'newsletter_subscriber';

    protected $guarded = [];

    public $timestamps = false;       
       
}
