@extends('layouts.app')

@section('content')
<section class="content-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <form id="stepsLoanProcess" action="{{ route('loan-submit') }}" method="post">
                    {!! csrf_field() !!}
                    <div class="wizard-steps">
                        <div class="tab">
                            <h3 class="text-center">Eligibility Criteria</h3>
                            <ul class="eligibility">
                                <li>Valid ABN/ACN registered for minimum 6 Months</li>
                                <li>Business registered for GST</li>
                                <li>Valid Business Visa / PR / Citizenship</li>
                            </ul>
                        </div>

                        <div class="tab">
                            <h3 class="text-center">Great, tell us about yourself</h3>
                            <div class="text-center">
                                <div class="signup-facebook">
                                    <a href="#"><span><i class="fa fa-facebook" aria-hidden="true"></i></span> Signup with Facebook</a>
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
                                            <input type="text" class="form-control" placeholder="First Name" name="customer_firstname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name" name="customer_lastname">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>How can we reach you?</label>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Email Address" name="customer_email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Mobile Number" name="customer_mobile">
                                        </div>
                                    </div>
                                </div>
                            </div>
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
                                            <select class="form-control custom-select" name="loan_amout">
                                                <option>Less than $5,000</option>
                                                <option>$5,000 - $10,000</option>
                                                <option>$10,000 - $20,000</option>
                                                <option>$20,000 - $40,000</option>
                                                <option>More than $50,000</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>What is the main purpose of laon?</label>
                                            <select class="form-control custom-select" name="loan_purpose">
                                                <option>Marketing</option>
                                                <option>Inventory</option>
                                                <option>Buying Equipment</option>
                                                <option>Working Capital</option>
                                                <option>Business Expansion</option>
                                                <option>Hiring</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Please enter your ABN/ACN number</label>
                                            <input type="text" class="form-control" name="abn_number" placeholder="ABN(11 Digits) or ACN(9 Digits)">
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
                                        <input type="file" class="form-control" multiple name="group_file_new">
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

<script type="text/javascript" src="{{ asset('js/jquery.validate.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/multi-form.js?v2') }}"></script>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function(event) {
        $(document).ready(function() {
            var CSRF_TOKEN = false;
            var val = {
                // Specify validation rules
                rules: {
                    customer_firstname: "required",
                    customer_lastname: "required",
                    customer_email: {
                        required: true,
                        email: true
                    },
                    customer_mobile: {
                        required: true,
                        minlength: 10,
                        maxlength: 10,
                        digits: true
                    },
                    customer_industry: {
                        required: true,
                        callback: function() {
                            $(".cond-section").hide();

                            var radioValue = $("input[name='customer_industry']:checked").val();
                            var createDiv = ".section-" + radioValue;
                            $(createDiv).show();

                            if (radioValue != 'Healthcare') 
                            {
                                var createDivTab = createDiv + " .tab";
                                $(createDivTab).show(); 

                                $(".wizard-action-buttons").hide();
                            }
                            
                            if (CSRF_TOKEN == false) {

                                //calling ajax request            
                                exporturl = "{{ route('loan-save-step1') }}";
                                CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

                                //save to database
                                fname = $("input[name='customer_firstname']").val();
                                lname = $("input[name='customer_lastname']").val();
                                email = $("input[name='customer_email']").val();
                                mobile = $("input[name='customer_mobile']").val();
                                cusIndst = $("input[name='customer_industry']").val();

                                $.ajax({
                                    type: 'POST',
                                    cache: false,
                                    dataType: 'json',
                                    url: exporturl,
                                    data: {
                                        postdata: {customer_firstname:fname, customer_lastname:lname, customer_email:email, customer_mobile:mobile, customer_industry:cusIndst},
                                        _token: CSRF_TOKEN
                                    },
                                    success: function(data) {
                                        if (data.status == 'success') {
                                            console.log("Sucess Data: " + data);
                                        } else {
                                            console.log("Error Data: " + data);
                                        }
                                    },
                                    error: function(xhr) {                                        
                                        console.log("Ajax Error: Something went wrong!");
                                    }
                                });
                            }
                        }
                    },
                    abn_number: {
                        required: true,
                        minlength: 9,
                        maxlength: 11,
                        digits: true
                    },
                    dl_number: {
                        required: true,
                        minlength: 8,
                        maxlength: 10,
                        digits: true
                    },
                    business_trading: "required",
                    business_monthly_turnover: "required",
                    business_name: "required",
                    business_state: "required",
                    accounting_software: "required",
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
                    abn_number: "ABNACN number is required",
                    dl_number: "DL number is required",
                    business_trading: "Please selecy trading time",
                    business_monthly_turnover: "Please enter monthly turnover",
                    business_name: "Please enter current credit profile",
                    business_state: "Please enter state name",
                    accounting_software: "Please select accounting software ",
                }
            }

            $("#stepsLoanProcess").multiStepForm({
                // defaultStep:0,
                beforeSubmit: function(form, submit) {
                    console.log("called before submiting the form");
                    console.log(form);
                    console.log(submit);
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
            })

        });
    });
</script>
@endsection