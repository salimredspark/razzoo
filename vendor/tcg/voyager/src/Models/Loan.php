<?php

namespace TCG\Voyager\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;

class Loan extends Model
{
    protected $table = 'loan_application';
    protected $primaryKey = 'id';
    protected $guarded = [];

    public $timestamps = false;

    public function files()
    {
        return $this->belongsTo(Voyager::modelClass('LoanApplicationBusinessFiles'))
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
}