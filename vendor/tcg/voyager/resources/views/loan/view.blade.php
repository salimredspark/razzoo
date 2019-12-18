@extends('voyager::master')

@section('page_title', __('voyager::generic.'.('view')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
<style>
    .wizard-steps {
        padding: 10px;
        background: #fff;
    }

    .cropper-view-box {
        padding: 10px;
        outline: solid 1px #ddd;
    }

    .task-types {
        margin-top: 10px;
    }
</style>

@stop

@section('page_header')
<h1 class="page-title">
    <i class="{{ $dataType->icon }}"></i>
    {{ __('voyager::generic.'.('view')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
</h1>
@stop

@section('content')
<div class="page-content container-fluid">
    <form class="form-edit-add" role="form" action="@if(!is_null($dataTypeContent->getKey())){{ route('voyager.'.$dataType->slug.'.update', $dataTypeContent->getKey()) }}@else{{ route('voyager.'.$dataType->slug.'.store') }}@endif" method="POST" enctype="multipart/form-data" autocomplete="off">
        <!-- PUT Method if we are editing -->
        @if(isset($dataTypeContent->id))
        {{ method_field("PUT") }}
        @endif
        {{ csrf_field() }}

        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-bordered">

                    <div class="col-sm-12">
                        <form id="stepsLoanProcess" action="{{ route('loan-submit') }}" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
                            {!! csrf_field() !!}
                            <input type="hidden" name="application_id" id="application_id" value="{{ $id }}" />

                            <div class="wizard-steps">

                                <div class="row">
                                    <!--personal fields-->
                                    <div class="col-sm-6">
                                        <div class="tab1 cropper-view-box">
                                            <h4>Personal Information</h4>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <label>Firstname</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_firstname'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Lastname</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_lastname'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Email</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_email'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Mobile</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_mobile'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Business name</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['business_name'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <label>Business In State</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['business_state'] }}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="tab1 cropper-view-box">
                                            <h4>Address Detail</h4>

                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <label>Address</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_address1'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <label>Address 2</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_address2'] }}
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-3">
                                                        <label>State</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_state'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <label>City</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_city'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <label>PostalCode</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_postalcode'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <label>Country</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['customer_country'] }}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <!--industry fields-->
                                    <div class="col-sm-12">
                                        <div class="tab1 cropper-view-box">
                                            <h4>Selected Industry</h4>
                                            <div class="task-types">
                                                @if ($existLoan['customer_industry']=='Healthcare' )
                                                <div class="task-type">
                                                    <label for="1" class="task-label radGroup1">
                                                        <img src="{{ url('images/icon-healthcare.png') }}">
                                                    </label>
                                                </div>
                                                @endif
                                                @if ($existLoan['customer_industry']=='Hospitality' )
                                                <div class="task-type">
                                                    <label for="2" class="task-label radGroup1">
                                                        <img src="{{ url('images/icon-hospitality.png') }}">
                                                    </label>
                                                </div>
                                                @endif
                                                @if ($existLoan['customer_industry']=='Education' )
                                                <div class="task-type">
                                                    <label for="3" class="task-label radGroup1">
                                                        <img src="{{ url('images/icon-education.png') }}">
                                                    </label>
                                                </div>
                                                @endif

                                                @if ($existLoan['customer_industry']=='Other' )
                                                <div class="task-type">
                                                    <label for="4" class="task-label radGroup1">
                                                        <span>Other</span>
                                                    </label>
                                                </div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--industry category-->
                                <div class="row">
                                    <div class="col-sm-12">
                                        @if ($existLoan['customer_industry']=='Healthcare' )
                                        <div class="cond-section section-Healthcare">
                                            <div class="tab2 cropper-view-box">
                                                <h4>Business loan Information</h4>
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                        <label>Required Loan</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['loan_amout'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label>Main purpose of laon?</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['loan_purpose'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label>Monthly turnover?</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['business_monthly_turnover'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label>ABN/ACN number</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['abn_number'] }} - {!! $apis['abn'] !!} 
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label>DL number</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['dl_number'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label>State of Issue</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['state_issue'] }}
                                                        </div>
                                                    </div>

                                                    <div class="col-sm-4">
                                                        <label>Actively Trading</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['business_trading'] }}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <label>Accounting software</label>
                                                        <div class="form-group">
                                                            {{ $existLoan['accounting_software'] }}
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab2">
                                                    <h4>Bank Statements</h4>
                                                    <div class="form-group">
                                                        {!! $apis['bank'] !!}
                                                    </div>
                                                </div>

                                                <div class="tab2">
                                                    <h4>Uploaded Supporting Business Plans</h4>
                                                    <div class="form-group">
                                                        {!! $businessFiles !!}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @else
                                        <div class="col-sm-12">
                                            <div class="cond-section section-{{$existLoan['customer_industry'] }}">
                                                <div class="tab1 opt-hospitality cropper-view-box">
                                                    <h3 class="text-center clicked-customer">{{ $existLoan['customer_industry']}} - Our Consultants can call you? {{ $existLoan['allow_consultants_call'] }}</h3>
                                                </div>
                                            </div>
                                        </div>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
@stop

@section('javascript')
<script>
    $('document').ready(function() {
        $('.toggleswitch').bootstrapToggle();
    });
</script>
@stop