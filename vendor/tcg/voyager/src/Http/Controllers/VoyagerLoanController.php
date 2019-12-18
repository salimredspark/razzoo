<?php

namespace TCG\Voyager\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Loan;
use TCG\Voyager\Models\LoanApplicationApiResponse;
use TCG\Voyager\Models\LoanApplicationBusinessFiles;

class VoyagerLoanController extends VoyagerBaseController
{
    public function update_bk(Request $request, $id)
    {
        die("Update me");
    }

    public function edit_bk(Request $request, $id)
    {
        $dataType = Voyager::model('DataType')->where('slug', '=', 'loan')->first();
        $existLoan = Loan::find($id);
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses($model))) {
                $model = $model->withTrashed();
            }
            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope' . ucfirst($dataType->scope))) {
                $model = $model->{$dataType->scope}();
            }
            $dataTypeContent = call_user_func([$model, 'findOrFail'], $id);
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }

        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $apis = LoanApplicationApiResponse::getAPIResponsInPdf($id, '', true);

        $businessFiles = LoanApplicationBusinessFiles::getAllApplicationFileUrl($id);

        return Voyager::view("voyager::loan.edit-add", compact('dataType', 'dataTypeContent', 'isModelTranslatable', 'id', 'existLoan', 'apis', 'businessFiles'));
    }

    public function show(Request $request, $id)
    {
        $dataType = Voyager::model('DataType')->where('slug', '=', 'loan')->first();
        $existLoan = Loan::find($id);
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            // Use withTrashed() if model uses SoftDeletes and if toggle is selected
            if ($model && in_array(SoftDeletes::class, class_uses($model))) {
                $model = $model->withTrashed();
            }
            if ($dataType->scope && $dataType->scope != '' && method_exists($model, 'scope' . ucfirst($dataType->scope))) {
                $model = $model->{$dataType->scope}();
            }
            $dataTypeContent = call_user_func([$model, 'findOrFail'], $id);
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }

        $isModelTranslatable = is_bread_translatable($dataTypeContent);

        $apis = LoanApplicationApiResponse::getAPIResponsInPdf($id, '', true);

        $businessFiles = LoanApplicationBusinessFiles::getAllApplicationFileUrl($id);

        return Voyager::view("voyager::loan.view", compact('dataType', 'dataTypeContent', 'isModelTranslatable', 'id', 'existLoan', 'apis', 'businessFiles'));
    }
}
