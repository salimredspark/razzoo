@extends('layouts.app')

@section('content')
<section class="content-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form id="stepsLoanProcess" action="{{ route('loan-submit') }}" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
                    {!! csrf_field() !!}
                    <input type="hidden" name="application_id" id="application_id" value="{{ $application_id }}" />
                    <div class="wizard-steps">
                        <div class="tab">
                            <h3 class="text-center">Eligibility Criteria</h3>
                            <ul class="eligibility">
                                <li>Valid ABN/ACN registered for minimum 6 Months</li>
                                <li>Business registered for GST</li>
                                <li>Valid Business Visa / PR / Citizenship</li>
                            </ul>
                        </div>

                        <!--personal fields-->
                        <div class="tab">
                            <h3 class="text-center">Great, tell us about yourself</h3>
                            <div class="text-center">
                                <div class="signup-facebook">
                                    <a href="{{ url('auth/facebook') }}"><span><i class="fa fa-facebook" aria-hidden="true"></i></span> Signup with Facebook</a>
                                </div>
                            </div>
                            <div class="or">
                                <span>OR</span>
                            </div>
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
                        <div class="tab">
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

                        <div class="tab">
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

                        <div class="cond-section section-Healthcare">
                            <div class="tab ">
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

                            <div class="tab">
                                <span class="tick"><img src="{{ url('images/icon-tick.png') }}" class="img-fluid" alt=""></span>
                                <h3 class="text-center text-success">Congratulations, <br>you are eligible for Razzoo Loan!</h3>
                                <h4 class="text-center">Your loan will be approved within 24 hours on sucessful submission of documents.</h4>
                                <p class="text-center text-primary">Please click next and tell us more about your business.</p>
                            </div>

                            <div class="tab">
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

                            <div class="tab">
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

                            <div class="tab">
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

                            <div class="tab">
                                <div class="form-group">
                                    <div class="form-group files">
                                        <input type="file" class="form-control" multiple name="group_file">
                                    </div>
                                </div>
                            </div>

                            <div class="tab">
                                <div class="form-group">
                                    <div class="form-group files files1">
                                        <input type="file" class="form-control" multiple name="supporting_business_plan[]" id="supporting_business_plan">
                                    </div>
                                    <div id="uploaded_business_files">
                                        <ul></ul>
                                    </div>
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

                                        <div class="response-from-customer" style="display:none;">
                                            <div class="resp-yes" style="display:none;">
                                                <h2 class="text-center">Thank you for your interest. One of our consultant will contact your shortly.</h2>
                                            </div>

                                            <div class="resp-no" style="display:none;">
                                                <h2 class="text-center"> Thank you for Visiting our website.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="cond-section section-Education">
                            <div class="tab opt-education">
                                <h3 class="text-center clicked-customer">Education - Do you want one of our Consultants to call you?</h3>
                                <div class="row">
                                    <div class="col-sm-12">

                                        <div class="action-buttons clicked-customer text-center">
                                            <button type="button" class="btn-primary interest-yesno" style="display: inline-block;">No</button>
                                            <button type="button" class="btn-primary interest-yesno">Yes</button>
                                        </div>

                                        <div class="response-from-customer" style="display:none;">
                                            <div class="resp-yes" style="display:none;">
                                                <h2 class="text-center">Thank you for your interest. One of our consultant will contact your shortly.</h2>
                                            </div>

                                            <div class="resp-no" style="display:none;">
                                                <h2 class="text-center"> Thank you for Visiting our website.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="cond-section section-Other">
                            <div class="tab opt-other">
                                <h3 class="text-center clicked-customer">Other - Do you want one of our Consultants to call you?</h3>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="action-buttons clicked-customer text-center">
                                            <button type="button" class="btn-primary interest-yesno" style="display: inline-block;">No</button>
                                            <button type="button" class="btn-primary interest-yesno">Yes</button>
                                        </div>


                                        <div class="response-from-customer" style="display:none;">
                                            <div class="resp-yes" style="display:none;">
                                                <h2 class="text-center">Thank you for your interest. One of our consultant will contact your shortly.</h2>
                                            </div>

                                            <div class="resp-no" style="display:none;">
                                                <h2 class="text-center"> Thank you for Visiting our website.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="action-buttons wizard-action-buttons text-center">
                        <button type="button" class="previous btn-warning">Previous</button>
                        <button type="button" class="next btn-primary">Next</button>
                        <button type="button" class="submit btn-success">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script src="https://maps.google.com/maps/api/js?key=AIzaSyDjJTAWtjK-xAQSCZc7xfE_NykXYuHgQdQ&libraries=places,drawing"></script>
<script type="text/javascript" src="{{ asset('js/locationpicker.jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/jquery.validate.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/multi-form.js?v2') }}"></script>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function(event) {
        $(document).ready(function() {
            var CSRF_TOKEN = false;
            var step2 = false;
            var val = {
                // Specify validation rules
                rules: {
                    customer_firstname: "required",
                    customer_lastname: "required",
                    customer_email: {
                        required: true,
                        email: true
                    },
                    //step 1
                    customer_mobile: {
                        required: true,
                        minlength: 10,
                        maxlength: 10,
                        digits: true,
                        callback: function() {
                            //calling ajax request for step 1
                            exporturl = "{{ route('loan-save-step1') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

                            //save to database
                            fname = $("input[name='customer_firstname']").val();
                            lname = $("input[name='customer_lastname']").val();
                            email = $("input[name='customer_email']").val();
                            mobile = $("input[name='customer_mobile']").val();

                            $.ajax({
                                type: 'POST',
                                cache: false,
                                dataType: 'json',
                                url: exporturl,
                                data: {
                                    postdata: {
                                        customer_firstname: fname,
                                        customer_lastname: lname,
                                        customer_email: email,
                                        customer_mobile: mobile,
                                    },
                                    _token: CSRF_TOKEN
                                },
                                success: function(data) {
                                    if (data.status == 'success') {
                                        console.log("Step 1 Saved");
                                        if (data.application_id) {
                                            $("#application_id").val(data.application_id);
                                        }
                                    } else {
                                        console.log("Step 1 Error Data: " + data);
                                    }
                                },
                                error: function(xhr) {
                                    console.log("Step 1 Error: Something went wrong!");
                                }
                            });
                        }
                    },
                    customer_address: {
                        required: true,
                        minlength: 10,
                    },
                    customer_state: {
                        required: true,
                    },
                    customer_city: {
                        required: true,
                    },
                    //step 2
                    customer_postalcode: {
                        required: true,
                        callback: function() {
                            //calling ajax request for step 2
                            exporturl = "{{ route('loan-save-step2') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            application_id = $("input[name='application_id']").val();

                            //save to database
                            cust_add1 = $("input[name='customer_address']").val();
                            cust_add2 = $("input[name='customer_address2']").val();
                            cust_state = $("input[name='customer_state']").val();
                            cust_city = $("input[name='customer_city']").val();
                            cust_postalcode = $("input[name='customer_postalcode']").val();
                            cust_country = $("input[name='customer_country']").val();

                            $.ajax({
                                type: 'POST',
                                cache: false,
                                dataType: 'json',
                                url: exporturl,
                                data: {
                                    postdata: {
                                        customer_address1: cust_add1,
                                        customer_address2: cust_add2,
                                        customer_state: cust_state,
                                        customer_city: cust_city,
                                        customer_postalcode: cust_postalcode,
                                        customer_country: cust_country,
                                        application_id: application_id,
                                    },
                                    _token: CSRF_TOKEN
                                },
                                success: function(data) {
                                    if (data.status == 'success') {
                                        console.log("Step 2 Saved");
                                        if (data.application_id) {
                                            $("#application_id").val(data.application_id);
                                        }
                                    } else {
                                        console.log("Step 2 Error Data: " + data);
                                    }
                                },
                                error: function(xhr) {
                                    console.log("Step 2 Error: Something went wrong!");
                                }
                            });
                        }
                    },
                    //step 3
                    customer_industry: {
                        required: true,
                        callback: function() {
                            $(".cond-section").hide();

                            var radioValue = $("input[name='customer_industry']:checked").val();
                            var createDiv = ".section-" + radioValue;
                            $(createDiv).show();

                            if (radioValue != 'Healthcare') {
                                var createDivTab = createDiv + " .tab";
                                $(createDivTab).show();

                                $(".wizard-action-buttons").hide();
                            }

                            exporturl = "{{ route('loan-save-step3') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            application_id = $("input[name='application_id']").val();
                            cusIndst = radioValue;

                            $.ajax({
                                type: 'POST',
                                cache: false,
                                dataType: 'json',
                                url: exporturl,
                                data: {
                                    postdata: {
                                        customer_industry: cusIndst,
                                        application_id: application_id,
                                    },
                                    _token: CSRF_TOKEN
                                },
                                success: function(data) {
                                    if (data.status == 'success') {
                                        console.log("Step 3 Saved");
                                        if (data.application_id) {
                                            $("#application_id").val(data.application_id);
                                        }
                                    } else {
                                        console.log("Step 3 Error Data: " + data);
                                    }
                                },
                                error: function(xhr) {
                                    console.log("Step 3 Error: Something went wrong!");
                                }
                            });

                        }
                    },
                    abn_number_valid: "required",
                    abn_number: {
                        required: true,
                        minlength: 9,
                        maxlength: 11,
                        digits: true,
                        callback: function() {
                            $("#abn_number_valid").val('');
                            exporturl = "{{ route('verifyabn') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            application_id = $("input[name='application_id']").val();

                            //check to database
                            abn_number = $("input[name='abn_number']").val();
                            if (abn_number != '') {
                                $(".api_process").html("Please wait....");
                                $.ajax({
                                    type: 'POST',
                                    cache: false,
                                    dataType: 'json',
                                    url: exporturl,
                                    data: {
                                        postdata: {
                                            abn_number: abn_number,
                                            application_id: application_id
                                        },
                                        _token: CSRF_TOKEN
                                    },
                                    success: function(data) {
                                        if (data.status == 'success') {
                                            console.log("ABC True");
                                            $(".api_process").html("");        
                                            $("#abn_number_valid").val('valid');
                                        } else {
                                            $(".api_process").html(data.error);                                            
                                            console.log("API Result: " + data.error);
                                        }
                                    },
                                    error: function(xhr) {
                                        console.log("ABC False");
                                        $("button.next").hide();
                                    }
                                });
                            }
                        },
                    },
                    dl_number: {
                        required: true,
                        minlength: 8,
                        maxlength: 10,
                        digits: true,
                    },
                    //step 4
                    state_issue: {
                        required: true,
                        callback: function() {

                            exporturl = "{{ route('loan-save-step4') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            application_id = $("input[name='application_id']").val();

                            //save to database
                            loan_amout = $("#loan_amout").val();
                            loan_purpose = $("#loan_purpose").val();
                            abn_number = $("input[name='abn_number']").val();
                            dl_number = $("input[name='dl_number']").val();
                            state_issue = $("input[name='state_issue']").val();

                            $.ajax({
                                type: 'POST',
                                cache: false,
                                dataType: 'json',
                                url: exporturl,
                                data: {
                                    postdata: {
                                        loan_amout: loan_amout,
                                        loan_purpose: loan_purpose,
                                        abn_number: abn_number,
                                        dl_number: dl_number,
                                        state_issue: state_issue,
                                        application_id: application_id
                                    },
                                    _token: CSRF_TOKEN
                                },
                                success: function(data) {
                                    if (data.status == 'success') {} else {
                                        console.log("Step 4 Error Data: " + data);
                                        if (data.application_id) {
                                            $("#application_id").val(data.application_id);
                                        }
                                    }
                                },
                                error: function(xhr) {
                                    console.log("Step 4 Error: Something went wrong!");
                                }
                            });
                        }
                    },
                    //step 5
                    business_trading: {
                        required: true,
                        callback: function() {

                            exporturl = "{{ route('loan-save-step5') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            business_trading = $("input[name='business_trading']").val();
                            application_id = $("input[name='application_id']").val();

                            if (application_id > 0) {
                                $.ajax({
                                    type: 'POST',
                                    cache: false,
                                    dataType: 'json',
                                    url: exporturl,
                                    data: {
                                        postdata: {
                                            business_trading: business_trading,
                                            application_id: application_id,
                                        },
                                        _token: CSRF_TOKEN
                                    },
                                    success: function(data) {
                                        if (data.status == 'success') {
                                            console.log("Step 5 Saved");
                                            if (data.application_id) {
                                                $("#application_id").val(data.application_id);
                                            }
                                        } else {
                                            console.log("Step 5 Error Data: " + data);
                                        }
                                    },
                                    error: function(xhr) {
                                        console.log("Step 5 Ajax Error: Something went wrong!");
                                    }
                                });
                            } else {
                                console.log("Step 5 Error: Application Id does not exist");
                            }
                        },
                    },
                    business_monthly_turnover: "required",
                    business_name: "required",
                    //step 6
                    business_state: {
                        required: true,
                        callback: function() {

                            exporturl = "{{ route('loan-save-step6') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            business_monthly_turnover = $("input[name='business_monthly_turnover']").val();
                            business_name = $("input[name='business_name']").val();
                            business_state = $("input[name='business_state']").val();
                            application_id = $("input[name='application_id']").val();

                            if (application_id > 0) {
                                $.ajax({
                                    type: 'POST',
                                    cache: false,
                                    dataType: 'json',
                                    url: exporturl,
                                    data: {
                                        postdata: {
                                            business_monthly_turnover: business_monthly_turnover,
                                            business_name: business_name,
                                            business_state: business_state,
                                            application_id: application_id,
                                        },
                                        _token: CSRF_TOKEN
                                    },
                                    success: function(data) {
                                        if (data.status == 'success') {
                                            console.log("Step 6 Saved");
                                            if (data.application_id) {
                                                $("#application_id").val(data.application_id);
                                            }
                                        } else {
                                            console.log("Step 6 Error Data: " + data);
                                        }
                                    },
                                    error: function(xhr) {
                                        console.log("Step 6 Ajax Error: Something went wrong!");
                                    }
                                });
                            } else {
                                console.log("Step 6 Error: Application Id does not exist");
                            }
                        },
                    },
                    //step 7
                    accounting_software: {
                        required: true,
                        callback: function() {

                            exporturl = "{{ route('loan-save-step7') }}";
                            CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                            accounting_software = $("input[name='accounting_software']").val();
                            application_id = $("input[name='application_id']").val();

                            if (application_id > 0) {
                                $.ajax({
                                    type: 'POST',
                                    cache: false,
                                    dataType: 'json',
                                    url: exporturl,
                                    data: {
                                        postdata: {
                                            accounting_software: accounting_software,
                                            application_id: application_id,
                                        },
                                        _token: CSRF_TOKEN
                                    },
                                    success: function(data) {
                                        if (data.status == 'success') {
                                            console.log("Step 7 Saved");
                                            if (data.application_id) {
                                                $("#application_id").val(data.application_id);
                                            }
                                        } else {
                                            console.log("Step 7 Error Data: " + data);
                                        }
                                    },
                                    error: function(xhr) {
                                        console.log("Step 7 Ajax Error: Something went wrong!");
                                    }
                                });
                            } else {
                                console.log("Step 7 Error: Application Id does not exist");
                            }
                        },
                    },
                    supporting_business_plan: {
                        required: true,
                        callback: function() {
                            $(".next").hide();
                            $(".submit").show();
                        },
                    },
                },

                // Specify validation error messages
                messages: {
                    customer_firstname: "First name is required",
                    customer_lastname: "Last name is required",
                    customer_email: {
                        required: "Email is required",
                        email: "Please enter a valid e-mail",
                    },
                    customer_mobile: {
                        required: "Phone number is requied",
                        minlength: "Please enter 10 digit mobile number",
                        maxlength: "Please enter 10 digit mobile number",
                        digits: "Only numbers are allowed in this field"
                    },
                    customer_industry: "Please selecy Industry name",
                    abn_number: {
                        required: "ABN/ACN number is required",
                        digits: "Only numbers are allowed in this field"
                    },
                    abn_number_valid: {
                        required: "Valid ABN/ACN number is required",
                    },
                    dl_number: "DL number is required",
                    state_issue: "Please enter state of issue",
                    business_trading: "Please selecy trading time",
                    business_monthly_turnover: "Please enter monthly turnover",
                    business_name: "Please enter current credit profile",
                    business_state: "Please enter state name",
                    accounting_software: "Please select accounting software",
                    supporting_business_plan: "Please upload business plan",
                    customer_address: "Please enter your address",
                    customer_state: "State is required",
                    customer_city: "City is required",
                    customer_postalcode: "Postal code is required",
                }
            }

            $("#stepsLoanProcess").multiStepForm({
                // defaultStep:0,
                beforeSubmit: function(form, submit) {
                    console.log("called before submiting the form");
                },
                validations: val,
            }).navigateTo(0);

            //opt-hospitality 
            $(".opt-hospitality .interest-yesno").click(function() {
                $(".clicked-customer").hide();
                $(".opt-hospitality .response-from-customer").show();

                var clickedVal = $(this).text();
                if (clickedVal == 'Yes') {
                    $(".opt-hospitality .response-from-customer .resp-no").hide();
                    $(".opt-hospitality .response-from-customer .resp-yes").show();
                } else {
                    $(".opt-hospitality .response-from-customer .resp-yes").hide();
                    $(".opt-hospitality .response-from-customer .resp-no").show();
                }

                allowConsultantsToCall(clickedVal);
            })

            //opt-education
            $(".opt-education .interest-yesno").click(function() {
                $(".clicked-customer").hide();
                $(".opt-education .response-from-customer").show();

                var clickedVal = $(this).text();
                if (clickedVal == 'Yes') {
                    $(".opt-education .response-from-customer .resp-no").hide();
                    $(".opt-education .response-from-customer .resp-yes").show();
                } else {
                    $(".opt-education .response-from-customer .resp-yes").hide();
                    $(".opt-education .response-from-customer .resp-no").show();
                }

                allowConsultantsToCall(clickedVal);
            })

            //opt-other
            $(".opt-other .interest-yesno").click(function() {
                $(".clicked-customer").hide();
                $(".opt-other .response-from-customer").show();

                var clickedVal = $(this).text();
                if (clickedVal == 'Yes') {
                    $(".opt-other .response-from-customer .resp-no").hide();
                    $(".opt-other .response-from-customer .resp-yes").show();
                } else {
                    $(".opt-other .response-from-customer .resp-yes").hide();
                    $(".opt-other .response-from-customer .resp-no").show();
                }

                allowConsultantsToCall(clickedVal);
            })

            //upload business plan file
            $("#supporting_business_plan").on('change', function(event) {
                //event.preventDefault();

                var form = $('#stepsLoanProcess')[0];
                var formData = new FormData(form);

                //calling ajax request for upload files
                exporturl = "{{ route('ajax-upload') }}";
                CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                application_id = $("input[name='application_id']").val();

                formData.append("_token", CSRF_TOKEN);
                formData.append("application_id", application_id);

                if (application_id > 0) {
                    $.ajax({
                        type: "POST",
                        enctype: 'multipart/form-data',
                        url: exporturl,
                        data: formData,
                        processData: false,
                        contentType: false,
                        cache: false,
                        timeout: 600000,
                        success: function(result) {
                            $("#uploaded_business_files ul").append(result.upload_path);
                            //console.log("File: " + result.upload_path);
                        },
                        error: function(data) {
                            console.log("ajax upload: " + data.responseText);
                        }
                    });
                }
            })

            //$("#uploaded_business_files span").on('click', function(event) {
            $(document).on("click", '#uploaded_business_files span', function(event) {

                var cmf = confirm("Are you sure you want to delete?");

                if (!cmf) return false;

                var getUploadId = $(this).parent().attr("id");
                getUploadId = getUploadId.replace("upload-image-", "");

                if (getUploadId > 0) {
                    exporturl = "{{ route('delete-uploads-files') }}";
                    CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                    application_id = $("input[name='application_id']").val();

                    $.ajax({
                        type: 'POST',
                        cache: false,
                        dataType: 'json',
                        url: exporturl,
                        data: {
                            postdata: {
                                file_id: getUploadId,
                                application_id: application_id,
                            },
                            _token: CSRF_TOKEN
                        },
                        success: function(data) {
                            if (data.status == 'success') {
                                var createDivId = "#upload-image-" + data.file_id;
                                $(createDivId).remove();
                            } else {
                                console.log("Del File Error Data: " + data);
                            }
                        },
                        error: function(xhr) {
                            console.log("Del File Error: Something went wrong!");
                        }
                    });
                }

            });

            //autocomplete adress
            $('#auto-complete-address').locationpicker({
                location: {
                    latitude: '',
                    longitude: '',
                },
                radius: 300,
                inputBinding: {
                    latitudeInput: $('#customer_postalcode'),
                    longitudeInput: $('#pcustomer_city'),
                    locationNameInput: $('#customer_address')
                },
                enableAutocomplete: true,
                onchanged: function(currentLocation, radius, isMarkerDropped) {
                    var addressComponents = $(this).locationpicker('map').location.addressComponents;
                    updateControlsDigitalPickup(addressComponents);
                },
                oninitialized: function(component) {
                    var addressComponents = $(component).locationpicker('map').location.addressComponents;
                    updateControlsDigitalPickup(addressComponents);
                }
            });

            function updateControlsDigitalPickup(addressComponents) {

                //console.log("Address: " + JSON.stringify(addressComponents));

                $('#customer_address2').val(addressComponents.addressLine1);
                $('#customer_state').val(addressComponents.stateOrProvince);
                $('#customer_city').val(addressComponents.city);
                $('#customer_postalcode').val(addressComponents.postalCode);
                $('#customer_country').val(addressComponents.country);
            }

            //is customer allow to call
            function allowConsultantsToCall(customer_ans) {
                //calling ajax request for other category            
                exporturl = "{{ route('allow-consultants-call') }}";
                CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                application_id = $("input[name='application_id']").val();

                if (application_id > 0) {
                    $.ajax({
                        type: 'POST',
                        cache: false,
                        dataType: 'json',
                        url: exporturl,
                        data: {
                            postdata: {
                                customer_ans: customer_ans,
                                application_id: application_id,
                            },
                            _token: CSRF_TOKEN
                        },
                        success: function(data) {
                            if (data.status == 'success') {
                                //console.log("Sucess Data: " + data);
                            } else {
                                console.log("Error Data: " + data);
                            }
                        },
                        error: function(xhr) {
                            console.log("Ajax Error: Something went wrong!");
                        }
                    });
                } else {
                    console.log("Error: Application Id does not exist");
                }
            }
        });
    });
</script>
@endsection