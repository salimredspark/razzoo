@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{{ asset('styles/font-awesome.min.css') }}">

<link rel="stylesheet" type="text/css" href="{{ asset('styles/theme.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('styles/responsive.css') }}">
<style>
    .wizard-steps {
        padding: 10px;
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
    {{ __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular') }}
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
                                    <div class="col-sm-12">
                                        <div class="tab1 cropper-view-box">
                                            <h3 class="text-center">Personal Information</h3>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <label>Firstname</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="First Name" name="customer_firstname" value="{{ $existLoan['customer_firstname'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Lastname</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Last Name" name="customer_lastname" value="{{ $existLoan['customer_lastname'] }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <label>Email</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Email Address" name="customer_email" value="{{ $existLoan['customer_email'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Mobile</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Mobile Number" name="customer_mobile" value="{{ $existLoan['customer_mobile'] }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <h3 class="text-center">Address Detail</h3>

                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <label>Address</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Address" name="customer_address" id="customer_address" value="{{ $existLoan['customer_address1'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <label>Address 2</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Address 2" name="customer_address2" id="customer_address2" value="{{ $existLoan['customer_address2'] }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <label>State</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="State" name="customer_state" id="customer_state" value="{{ $existLoan['customer_state'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>City</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="City" name="customer_city" id="customer_city" value="{{ $existLoan['customer_city'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>PostalCode</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Postal Code" name="customer_postalcode" id="customer_postalcode" value="{{ $existLoan['customer_postalcode'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <label>Country</label>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="Country" name="customer_country" id="customer_country" value="{{ $existLoan['customer_country'] }}">
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
                                            <h3 class="text-center">Selected Industry</h3>
                                            <div class="task-types">
                                                <div class="task-type">
                                                    <input name="customer_industry" id="1" class="task-radio radio-industry" value="Healthcare" type="radio" @php if ($existLoan['customer_industry']=='Healthcare' ){ echo "checked" ; } @endphp>
                                                    <label for="1" class="task-label radGroup1">
                                                        <img src="{{ url('images/icon-healthcare.png') }}">
                                                    </label>
                                                </div>
                                                <div class="task-type">
                                                    <input name="customer_industry" id="2" class="task-radio radio-industry" value="Hospitality" type="radio" @php if ($existLoan['customer_industry']=='Hospitality' ){ echo "checked" ; } @endphp>
                                                    <label for="2" class="task-label radGroup1">
                                                        <img src="{{ url('images/icon-hospitality.png') }}">
                                                    </label>
                                                </div>
                                                <div class="task-type">
                                                    <input name="customer_industry" id="3" class="task-radio radio-industry" value="Education" type="radio" @php if ($existLoan['customer_industry']=='Education' ){ echo "checked" ; } @endphp>
                                                    <label for="3" class="task-label radGroup1">
                                                        <img src="{{ url('images/icon-education.png') }}">
                                                    </label>
                                                </div>
                                                <div class="task-type">
                                                    <input name="customer_industry" id="4" class="task-radio radio-industry" value="Other" type="radio" @php if ($existLoan['customer_industry']=='Other' ){ echo "checked" ; } @endphp>
                                                    <label for="4" class="task-label radGroup1">
                                                        <span>Other</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <!--industry category-->
                                    <div class="col-sm-12">
                                        <div class="cond-section section-Healthcare">
                                            <div class="tab2 cropper-view-box">
                                                <h3 class="text-center">Business loan Information</h3>
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Required Loan</label>
                                                            <select class="form-control custom-select" name="loan_amout" id="loan_amout">
                                                                <option value="Less than $5,000" @php if ($existLoan['loan_amout']=='Less than $5,000' ){ echo "selected" ; } @endphp>Less than $5,000</option>
                                                                <option value="$5,000 - $10,000" @php if ($existLoan['loan_amout']=='$5,000 - $10,000' ){ echo "selected" ; } @endphp>$5,000 - $10,000</option>
                                                                <option value="$10,000 - $20,000" @php if ($existLoan['loan_amout']=='$10,000 - $20,000' ){ echo "selected" ; } @endphp>$10,000 - $20,000</option>
                                                                <option value="$20,000 - $40,000" @php if ($existLoan['loan_amout']=='$20,000 - $40,000' ){ echo "selected" ; } @endphp>$20,000 - $40,000</option>
                                                                <option value="More than $50,000" @php if ($existLoan['loan_amout']=='More than $50,000 ' ){ echo "selected" ; } @endphp>More than $50,000</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <label>Main purpose of laon?</label>
                                                            <select class="form-control custom-select" name="loan_purpose" id="loan_purpose">
                                                                <option value="Marketing" @php if ($existLoan['loan_purpose']=='Marketing' ){ echo "selected" ; } @endphp>Marketing</option>
                                                                <option value="Inventory" @php if ($existLoan['loan_purpose']=='Inventory' ){ echo "selected" ; } @endphp>Inventory</option>
                                                                <option value="Buying Equipment" @php if ($existLoan['loan_purpose']=='Buying Equipment' ){ echo "selected" ; } @endphp>Buying Equipment</option>
                                                                <option value="Working Capital" @php if ($existLoan['loan_purpose']=='Working Capital' ){ echo "selected" ; } @endphp>Working Capital</option>
                                                                <option value="Business Expansion" @php if ($existLoan['loan_purpose']=='Business Expansion' ){ echo "selected" ; } @endphp>Business Expansion</option>
                                                                <option value="Hiring" @php if ($existLoan['loan_purpose']=='Hiring' ){ echo "selected" ; } @endphp>Hiring</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>ABN/ACN number</label>
                                                            <input type="text" class="form-control" name="abn_number" id="abn_number" placeholder="ABN(11 Digits) or ACN(9 Digits)" value="{{ $existLoan['abn_number'] }}">
                                                            {!! $apis['abn'] !!}
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>DL number</label>
                                                            <input type="text" class="form-control" placeholder="DL number" name="dl_number" value="{{ $existLoan['dl_number'] }}">
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label>State of Issue</label>
                                                            <input type="text" class="form-control" placeholder="" name="state_issue" value="{{ $existLoan['state_issue'] }}">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab2 ">
                                                    <h3 class="text-center">Actively trading?</h3>
                                                    <ul class="radio-option">
                                                        <li>
                                                            <input name="business_trading" id="5" class="css-radio" type="radio" value="Less than 12 months" @php if ($existLoan['business_trading']=='Less than 12 months' ){ echo "checked" ; } @endphp>
                                                            <label for="5" class="css-label radGroup1">Less than 12 months</label>
                                                        </li>
                                                        <li>
                                                            <input name="business_trading" id="6" class="css-radio" type="radio" value="1 - 2 Years" @php if ($existLoan['business_trading']=='1 - 2 Years' ){ echo "checked" ; } @endphp>
                                                            <label for="6" class="css-label radGroup1">1 - 2 Years</label>
                                                        </li>
                                                        <li>
                                                            <input name="business_trading" id="7" class="css-radio" type="radio" value="2 - 5 Years" @php if ($existLoan['business_trading']=='2 - 5 Years' ){ echo "checked" ; } @endphp>
                                                            <label for="7" class="css-label radGroup1">2 - 5 Years</label>
                                                        </li>
                                                        <li>
                                                            <input name="business_trading" id="8" class="css-radio" type="radio" value="5 + Years" @php if ($existLoan['business_trading']=='5 + Years' ){ echo "checked" ; } @endphp>
                                                            <label for="8" class="css-label radGroup1">5 + Years</label>
                                                        </li>

                                                    </ul>
                                                </div>

                                                <div class="tab2">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <div class="form-group">
                                                                <label>Monthly turnover?</label>
                                                                <input type="text" class="form-control" placeholder="$0.00" name="business_monthly_turnover" value="{{ $existLoan['business_monthly_turnover'] }}">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                <label>Business name</label>
                                                                <input type="text" class="form-control" placeholder="Business Name" name="business_name" value="{{ $existLoan['business_name'] }}">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <div class="form-group">
                                                                <label>In State</label>
                                                                <input type="text" class="form-control" placeholder="e.g., NSW" name="business_state" value="{{ $existLoan['business_state'] }}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="tab2">
                                                    <h3 class="text-center">Accounting software used</h3>
                                                    <div class="form-group">
                                                        <ul class="radio-option">
                                                            <li>
                                                                <input name="accounting_software" id="9" class="css-radio" value="MYOB" type="radio" @php if ($existLoan['accounting_software']=='MYOB' ){ echo "checked" ; } @endphp>
                                                                <label for="9" class="css-label radGroup1">MYOB</label>
                                                            </li>
                                                            <li>
                                                                <input name="accounting_software" id="10" class="css-radio" value="XERO" type="radio" @php if ($existLoan['accounting_software']=='XERO' ){ echo "checked" ; } @endphp>
                                                                <label for="10" class="css-label radGroup1">XERO</label>
                                                            </li>
                                                            <li>
                                                                <input name="accounting_software" id="11" class="css-radio" value="OTHER" type="radio" @php if ($existLoan['accounting_software']=='OTHER' ){ echo "checked" ; } @endphp>
                                                                <label for="11" class="css-label radGroup1">OTHER</label>
                                                            </li>
                                                        </ul>

                                                    </div>
                                                </div>

                                                <div class="tab2">
                                                    <h3 class="text-center">Bank Statements</h3>
                                                    <div class="form-group">
                                                        {!! $apis['bank'] !!}
                                                    </div>
                                                </div>

                                                <div class="tab2">
                                                    <h3 class="text-center">Uploaded Supporting Business Plans</h3>
                                                    <div class="form-group">
                                                        {!! $businessFiles !!}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="cond-section section-Hospitality">
                                            <div class="tab opt-hospitality cropper-view-box">
                                                <h3 class="text-center clicked-customer">Hospitality - Do you want one of our Consultants to call you?</h3>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="action-buttons clicked-customer text-center">
                                                            <button type="button" class="btn-error interest-yesno" style="display: inline-block;">No</button>
                                                            <button type="button" class="btn-primary interest-yesno">Yes</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary pull-right save">
            {{ __('voyager::generic.save') }}
        </button>
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