@extends('voyager::master')

@section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular'))

@section('css')
<meta name="csrf-token" content="{{ csrf_token() }}">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{{ asset('styles/font-awesome.min.css') }}">

<link rel="stylesheet" type="text/css" href="{{ asset('styles/theme.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('styles/responsive.css') }}">
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
                                <!--personal fields-->
                                <div class="tab1">
                                    <h3 class="text-center">Great, tell us about yourself</h3>
                                    <div class="form-group">
                                        <label>What do people call you?</label>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="First Name" name="customer_firstname" value="{{ $existLoan['customer_firstname'] }}">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Last Name" name="customer_lastname" value="{{ $existLoan['customer_lastname'] }}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>How can we reach you?</label>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Email Address" name="customer_email" value="{{ $existLoan['customer_email'] }}">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Mobile Number" name="customer_mobile" value="{{ $existLoan['customer_mobile'] }}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--address fields-->
                                <div class="tab2">
                                    <h3 class="text-center">Address Proof</h3>

                                    <div class="form-group">
                                        <label>Your Address</label>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Address" name="customer_address" id="customer_address" value="">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Address 2" name="customer_address2" id="customer_address2" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="State" name="customer_state" id="customer_state" value="">
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="City" name="customer_city" id="customer_city" value="">
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Postal Code" name="customer_postalcode" id="customer_postalcode" value="">
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Country" name="customer_country" id="customer_country" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="auto-complete-address" style="width: 550px; height: 400px;display:none"></div>
                                </div>

                                <!--industry fields-->
                                <div class="tab3">
                                    <h3 class="text-center">Which industry are you in?</h3>
                                    <div class="task-types">
                                        <div class="task-type">
                                            <input name="customer_industry" id="1" class="task-radio radio-industry" value="Healthcare" type="radio">
                                            <label for="1" class="task-label radGroup1">
                                                <img src="{{ url('images/icon-healthcare.png') }}">
                                            </label>
                                        </div>
                                        <div class="task-type">
                                            <input name="customer_industry" id="2" class="task-radio radio-industry" value="Hospitality" type="radio">
                                            <label for="2" class="task-label radGroup1">
                                                <img src="{{ url('images/icon-hospitality.png') }}">
                                            </label>
                                        </div>
                                        <div class="task-type">
                                            <input name="customer_industry" id="3" class="task-radio radio-industry" value="Education" type="radio">
                                            <label for="3" class="task-label radGroup1">
                                                <img src="{{ url('images/icon-education.png') }}">
                                            </label>
                                        </div>
                                        <div class="task-type">
                                            <input name="customer_industry" id="4" class="task-radio radio-industry" value="Other" type="radio">
                                            <label for="4" class="task-label radGroup1">
                                                <span>Other</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>

                                <!--industry category-->
                                <div class="cond-section section-Healthcare">
                                    <div class="tab2">
                                        <h3 class="text-center">Let's find you a business loan</h3>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>How much loan do you need?</label>
                                                    <select class="form-control custom-select" name="loan_amout" id="loan_amout">
                                                        <option value="Less than $5,000">Less than $5,000</option>
                                                        <option value="$5,000 - $10,000">$5,000 - $10,000</option>
                                                        <option value="$10,000 - $20,000">$10,000 - $20,000</option>
                                                        <option value="$20,000 - $40,000">$20,000 - $40,000</option>
                                                        <option value="More than $50,000">More than $50,000</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>What is the main purpose of laon?</label>
                                                    <select class="form-control custom-select" name="loan_purpose" id="loan_purpose">
                                                        <option value="Marketing">Marketing</option>
                                                        <option value="Inventory">Inventory</option>
                                                        <option value="Buying Equipment">Buying Equipment</option>
                                                        <option value="Working Capital">Working Capital</option>
                                                        <option value="Business Expansion">Business Expansion</option>
                                                        <option value="Hiring">Hiring</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Please enter your ABN/ACN number</label>
                                                    <input type="text" class="form-control" name="abn_number" id="abn_number" placeholder="ABN(11 Digits) or ACN(9 Digits)">
                                                    <span class="api_process"></span>
                                                    <input type="text" id="abn_number_valid" name="abn_number_valid" value="" readonly />
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Please enter your DL number</label>
                                                    <input type="text" class="form-control" placeholder="DL number" name="dl_number">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>State of Issue</label>
                                                    <input type="text" class="form-control" placeholder="" name="state_issue">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab2">
                                        <h3 class="text-center">How long have you been actively trading?</h3>
                                        <ul class="radio-option">
                                            <li>
                                                <input name="business_trading" id="5" class="css-radio" type="radio" value="Less than 12 months">
                                                <label for="5" class="css-label radGroup1">Less than 12 months</label>
                                            </li>
                                            <li>
                                                <input name="business_trading" id="6" class="css-radio" type="radio" value="1 - 2 Years">
                                                <label for="6" class="css-label radGroup1">1 - 2 Years</label>
                                            </li>
                                            <li>
                                                <input name="business_trading" id="7" class="css-radio" type="radio" value="2 - 5 Years">
                                                <label for="7" class="css-label radGroup1">2 - 5 Years</label>
                                            </li>
                                            <li>
                                                <input name="business_trading" id="8" class="css-radio" type="radio" value="5 + Years">
                                                <label for="8" class="css-label radGroup1">5 + Years</label>
                                            </li>

                                        </ul>
                                    </div>

                                    <div class="tab2">
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>What is your average monthly turnover?</label>
                                                    <input type="text" class="form-control" placeholder="$0.00" name="business_monthly_turnover">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>What is your business name?</label>
                                                    <input type="text" class="form-control" placeholder="Business Name" name="business_name">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Which state are you in?</label>
                                                    <input type="text" class="form-control" placeholder="e.g., NSW" name="business_state">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab2">
                                        <h3 class="text-center">Accounting software you use?</h3>
                                        <div class="form-group">
                                            <ul class="radio-option">
                                                <li>
                                                    <input name="accounting_software" id="9" class="css-radio" value="MYOB" type="radio">
                                                    <label for="9" class="css-label radGroup1">MYOB</label>
                                                </li>
                                                <li>
                                                    <input name="accounting_software" id="10" class="css-radio" value="XERO" type="radio">
                                                    <label for="10" class="css-label radGroup1">XERO</label>
                                                </li>
                                                <li>
                                                    <input name="accounting_software" id="11" class="css-radio" value="OTHER" type="radio">
                                                    <label for="11" class="css-label radGroup1">OTHER</label>
                                                </li>
                                            </ul>

                                        </div>
                                    </div>

                                    <div class="tab2">
                                        <h3 class="text-center">Bank Statements</h3>
                                        <div class="form-group">                                                                                       
                                            [Bank Statment Here]
                                        </div>
                                    </div>

                                    <div class="tab2">
                                        <h3 class="text-center">Supporting Business Plans</h3>
                                        <div class="form-group">                                           
                                            <label>Uploaded Docs</label>
                                            [Images Here]
                                        </div>
                                    </div>
                                </div>

                                <div class="cond-section section-Hospitality">
                                    <div class="tab opt-hospitality">
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
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary pull-right save">
            {{ __('voyager::generic.save') }}
        </button>
    </form>

    <iframe id="form_target" name="form_target" style="display:none"></iframe>
    <form id="my_form" action="{{ route('voyager.upload') }}" target="form_target" method="post" enctype="multipart/form-data" style="width:0px;height:0;overflow:hidden">
        {{ csrf_field() }}
        <input name="image" id="upload_file" type="file" onchange="$('#my_form').submit();this.value='';">
        <input type="hidden" name="type_slug" id="type_slug" value="{{ $dataType->slug }}">
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