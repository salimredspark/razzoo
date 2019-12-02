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
                                            <input type="text" class="form-control" placeholder="First Name" name="fname">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name" name="lname">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>How can we reach you?</label>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Email Address" name="email">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Mobile Number" name="mobile">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab">
                            <h3 class="text-center">Which industry are you in?</h3>
                            <div class="task-types">
                                <div class="task-type">
                                    <input name="industry_name" id="1" class="task-radio" type="radio">
                                    <label for="1" class="task-label radGroup1">
                                        <img src="{{ url('images/icon-healthcare.png') }}">
                                    </label>
                                </div>
                                <div class="task-type">
                                    <input name="industry_name" id="2" class="task-radio" type="radio">
                                    <label for="2" class="task-label radGroup1">
                                        <img src="{{ url('images/icon-hospitality.png') }}">
                                    </label>
                                </div>
                                <div class="task-type">
                                    <input name="industry_name" id="3" class="task-radio" type="radio">
                                    <label for="3" class="task-label radGroup1">
                                        <img src="{{ url('images/icon-education.png') }}">
                                    </label>
                                </div>
                                <div class="task-type">
                                    <input name="industry_name" id="4" class="task-radio" type="radio">
                                    <label for="4" class="task-label radGroup1">
                                        <span>Other</span>
                                    </label>
                                </div>
                            </div>
                        </div>

                        <div class="tab">
                            <h3 class="text-center">Let's find you a business loan</h3>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>How much loan do you need?</label>
                                        <select class="form-control custom-select" name="loan_need">
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
                                        <input type="text" class="form-control" name="abn_no" placeholder="ABN(11 Digits) or ACN(9 Digits)">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Please enter your DL number</label>
                                        <input type="text" class="form-control" placeholder="DL number" name="dl_no">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab">
                            <span class="tick"><img src="images/icon-tick.png" class="img-fluid" alt=""></span>
                            <h3 class="text-center text-success">Congratulations, <br>you are eligible for Razzoo Loan!</h3>
                            <h4 class="text-center">Your loan will be approved within 24 hours on sucessful submission of documents.</h4>
                            <p class="text-center text-primary">Please click next and tell us more about your business.</p>
                        </div>

                        <div class="tab">
                            <h3 class="text-center">How long have you been actively trading?</h3>
                            <ul class="radio-option">
                                <li>
                                    <input name="trading_time" id="5" class="css-radio" type="radio">
                                    <label for="5" class="css-label radGroup1">Less than 12 months</label>
                                </li>
                                <li>
                                    <input name="trading_time" id="6" class="css-radio" type="radio">
                                    <label for="6" class="css-label radGroup1">1 - 2 Years</label>
                                </li>
                                <li>
                                    <input name="trading_time" id="7" class="css-radio" type="radio">
                                    <label for="7" class="css-label radGroup1">2 - 5 Years</label>
                                </li>
                                <li>
                                    <input name="trading_time" id="8" class="css-radio" type="radio">
                                    <label for="8" class="css-label radGroup1">5 + Years</label>
                                </li>

                            </ul>
                        </div>

                        <div class="tab">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>What is your average monthly turnover?</label>
                                        <input type="text" class="form-control" placeholder="$0.00" name="turnover">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>How is your current credit profile?</label>
                                        <ul class="radio-option radio-option-1">
                                            <li>
                                                <input name="credit_profile" id="a" class="css-radio" type="radio">
                                                <label for="a" class="css-label radGroup1">Good, No Default</label>
                                            </li>
                                            <li>
                                                <input name="credit_profile" id="b" class="css-radio" type="radio">
                                                <label for="b" class="css-label radGroup1">Unpaid Default</label>
                                            </li>
                                            <li>
                                                <input name="credit_profile" id="c" class="css-radio" type="radio">
                                                <label for="c" class="css-label radGroup1">Fully Paid Debt</label>
                                            </li>
                                        </ul>
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
                                        <input type="text" class="form-control" placeholder="e.g., NSW" name="state_name">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab">
                            <h3 class="text-center">Accounting software you use?</h3>
                            <div class="form-group">
                                <ul class="radio-option">
                                    <li>
                                        <input name="accounting_software" id="9" class="css-radio" type="radio">
                                        <label for="9" class="css-label radGroup1">MYOB</label>
                                    </li>
                                    <li>
                                        <input name="accounting_software" id="10" class="css-radio" type="radio">
                                        <label for="10" class="css-label radGroup1">XERO</label>
                                    </li>
                                    <li>
                                        <input name="accounting_software" id="11" class="css-radio" type="radio">
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
                    <div class="action-buttons text-center">
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

            var val = {
                // Specify validation rules
                rules: {
                    fname: "required",
                    lname: "required",
                    email: {
                        required: true,
                        email: true
                    },
                    mobile: {
                        required: true,
                        minlength: 10,
                        maxlength: 10,
                        digits: true
                    },
                    industry_name: "required",
                    abn_no:  {
                        required: true,
                        minlength: 9,
                        maxlength: 11,
                        digits: true
                    },
                    dl_no:  {
                        required: true,
                        minlength: 8,
                        maxlength: 10,
                        digits: true
                    },
                    trading_time: "required",
                    turnover: "required",
                    credit_profile: "required",
                    business_name: "required",
                    state_name: "required",
                    accounting_software: "required",
                },

                // Specify validation error messages
                messages: {
                    fname: "First name is required",
                    lname: "Last name is required",
                    email: {
                        required: "Email is required",
                        email: "Please enter a valid e-mail",
                    },
                    phone: {
                        required: "Phone number is requied",
                        minlength: "Please enter 10 digit mobile number",
                        maxlength: "Please enter 10 digit mobile number",
                        digits: "Only numbers are allowed in this field"
                    },
                    industry_name: "Please selecy Industry name",
                    abn_no: "ABNACN number is required",
                    dl_no: "DL number is required",
                    trading_time: "Please selecy trading time",
                    turnover: "Please enter monthly turnover",
                    credit_profile: "Please enter business name",
                    business_name: "Please enter current credit profile",
                    state_name: "Please enter state name",
                    accounting_software: "Please select accounting software ",
                }
            }
            
            /*$("#myForm").multiStepForm({
                // defaultStep:0,
                callback: function() {
                    console.log("save");
                    alert("next step");
                }
            }).navigateTo(0);*/

            $("#stepsLoanProcess").multiStepForm(
			{
				// defaultStep:0,
				beforeSubmit : function(form, submit){
					console.log("called before submiting the form");
					console.log(form);
					console.log(submit);
                },
                callback: function() {
                    console.log("save");
                    alert("next step");
                },
				validations:val,
			}
			).navigateTo(0);
        });
    });
</script>
@endsection