<?php

namespace TCG\Voyager\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;

class VoyagerLoanController extends VoyagerBaseController
{
    public function update(Request $request, $id)
    {
        $slug = $this->getSlug($request);
        die("dsdsds");

    }
}
