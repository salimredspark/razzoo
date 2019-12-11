<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class Pages extends Model
{
    use Translatable,
        Resizable;

    protected $table = 'pages';
    protected $translatable = ['title', 'slug', 'body'];
    protected $guarded = [];

    public function save(array $options = [])
    {
        parent::save();
    }
}
