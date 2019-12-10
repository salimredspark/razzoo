<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NewsletterSubscriber extends Model
{
    protected $table = 'newsletter_subscriber';
    protected $primaryKey = 'id';

    protected  $fillable = array('id');
    
}
