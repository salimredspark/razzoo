@extends('layouts.landing_app')

@section('content')
<section class="banner">
    <div class="container">
        <div class="row text-center justify-content-center">
            <div class="col-sm-6">
                <h1 class="mb-3">The right business loan
                    to help you grow</h1>
                <div class="input-group input-group-lg my-4">
                    <div class="input-group input-group-lg my-4">
                        <input type="text" class="form-control " name="email" id="email" placeholder="Enter email address">
                        <div class="input-group-append">
                            <button class="btn btn-secondary px-4 subscribe" type="button"> Apply </button>
                        </div>
                    </div>
                    <div class="show-message alert alert-danger" style="display: none"></div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="razzoo_list pt-5 pb-4">
    <div class="container">
        <ul class="row list-unstyled ">
            <li class="col-sm-6">
                <div class="list_img"><img src="{{ asset('landing/images/icons/listicon2.png') }}" width="54" height="54"> </div>
                <span>Razzoo exists to empower SMEs Healthcare to gain access to
                    rapdi business landing.</span>


            </li>
            <li class="col-sm-6">
                <div class="list_img"><img src="{{ asset('landing/images/icons/listicon2.png') }}" width="54" height="54"> </div>
                <span>Razzoo exists to empower SMEs Healthcare to gain access to
                    rapdi business landing.</span>


            </li>

            <li class="col-sm-6">
                <div class="list_img"><img src="{{ asset('landing/images/icons/listicon1.png') }}" width="54" height="54"> </div>
                <span>We go beyond conventional banking - we leverage disruptive
                    technology, in time for the open banking scheme.</span>


            </li>

            <li class="col-sm-6">
                <div class="list_img"><img src="{{ asset('landing/images/icons/listicon2.png') }}" width="54" height="54"> </div>
                <span>Together, SME funcing and Razzoo will promote GDP growth.

                </span>


            </li>

            <li class="col-sm-6">
                <div class="list_img"><img src="{{ asset('landing/images/icons/listicon2.png') }}" width="54" height="54"> </div>
                <span>Our fintech ecosystem features a landing platform that uses
                    sophisticated technology such as AI and ML.</span>
            </li>
        </ul>
    </div>
</section>

<section class="howitwork_box py-5">
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-12">
                <h2>How It Works
                </h2>
                <h6>Apply in less than 10 mins, know in 48hrs*</h6>
            </div>
        </div>

        <div class="row pt-5">
            <div class=" col-sm-4">
                <div class="serviceBox">
                    <div class="service-icon">
                        <span>1</span>
                    </div>
                    <div class="service-content">
                        <img src="{{ asset('landing/images/icons/howitworks1.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                        <h3 class="title">We get to know you</h3>
                        <p class="description">How long have you been in business? What kind of business is it? We'll ask for some basic information</p>
                    </div>
                </div>
            </div>


            <div class=" col-sm-4">
                <div class="serviceBox">
                    <div class="service-icon">
                        <span>2</span>
                    </div>
                    <div class="service-content">
                        <img src="{{ asset('landing/images/icons/howitworks2.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                        <h3 class="title">Choose how much you
                            want to borrow</h3>
                        <p class="description">Let us know how much you're
                            looking to borrow</p>
                    </div>
                </div>
            </div>


            <div class=" col-sm-4">
                <div class="serviceBox">
                    <div class="service-icon">
                        <span>3</span>
                    </div>
                    <div class="service-content">
                        <img src="{{ asset('landing/images/icons/howitworks3.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                        <h3 class="title">Leave it to us</h3>
                        <p class="description">Our AI-assisted credit team will assess your suitability for the loan</p>
                    </div>
                </div>
            </div>



        </div>
        <div class="row text-center">
            <div class="col-sm-12">
                <a href="#" class="works_link">*48HRS from Monday to Friday or two business days </a> </div>

        </div>
    </div>
</section>

<section class="loanoption py-5">
    <div class="container">
        <div class="row  text-center">
            <div class="col-sm-12">
                <h2>Business Loan Options</h2>
                <h6>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis <br>
                    accumsan nisi Ut ut felis congue nisl hendrerit commodo.</h6>
            </div>
        </div>


        <div class="row pt-4">
            <div class="col-sm-6 col-lg-4">
                <div class="loanbox">
                    <img src="{{ asset('landing/images/icons/loan1.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                    <h3>Marketing</h3>

                    <p> Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit. Sed quis accumsan nisi Ut ut
                        felis congue nisl hendrerit commodo.
                    </p>
                </div>
            </div>

            <div class="col-sm-6 col-lg-4">
                <div class="loanbox">
                    <img src="{{ asset('landing/images/icons/loan5.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                    <h3>Inventory</h3>

                    <p> Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit. Sed quis accumsan nisi Ut ut
                        felis congue nisl hendrerit commodo.
                    </p>
                </div>
            </div>


            <div class="col-sm-6 col-lg-4">
                <div class="loanbox">
                    <img src="{{ asset('landing/images/icons/loan6.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                    <h3>Buying Equipment</h3>

                    <p> Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit. Sed quis accumsan nisi Ut ut
                        felis congue nisl hendrerit commodo.
                    </p>
                </div>
            </div>

            <div class="col-sm-6 col-lg-4">
                <div class="loanbox">
                    <img src="{{ asset('landing/images/icons/loan2.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                    <h3>Working Capital</h3>

                    <p> Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit. Sed quis accumsan nisi Ut ut
                        felis congue nisl hendrerit commodo.
                    </p>
                </div>
            </div>

            <div class="col-sm-6 col-lg-4">
                <div class="loanbox">
                    <img src="{{ asset('landing/images/icons/loan3.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                    <h3>Business Expansion</h3>

                    <p> Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit. Sed quis accumsan nisi Ut ut
                        felis congue nisl hendrerit commodo.
                    </p>
                </div>
            </div>

            <div class="col-sm-6 col-lg-4">
                <div class="loanbox">
                    <img src="{{ asset('landing/images/icons/loan4.png') }}" width="90" height="90" class="d-block mx-auto img-fluid">
                    <h3>Hiring</h3>

                    <p> Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit. Sed quis accumsan nisi Ut ut
                        felis congue nisl hendrerit commodo.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="emailwrap">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h3 class="pt-2"> CONTACT US NOW IF YOU HAVE ANY QUESTION <span>Get in Touch with us so Easy.</span></h3>
            </div>
            <div class="col-sm-6">
                <form action="{{ 'contact-us' }}" method="get" name="frm_cnt">
                    <div class="input-group input_group">
                        <input type="text" class="form-control" name="email" placeholder="Enter your email address" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append ml-2">
                            <button class="btn btn-secondary btn-lg text-uppercase px-4 Subscribebtn">Submit</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</section>

<section class="approval_wrap py-5">
    <div class="container">
        <div class="row  text-center">
            <div class="col-sm-12">
                <h2>Fast Approval</h2>
                <h6>The fastest time to approval in the market, 4 simple steps, that’s it!</h6>
            </div>
        </div>
        <div class="row pt-4">
            <div class="col-sm-6">
                <div class="approvalbox">
                    <div class="number"> 1</div>
                    <span>
                        <h4> Fill Out The Form To Start The Loaning
                            Procedure</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </span>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="approvalbox">
                    <div class="number"> 2</div>
                    <span>
                        <h4> It Will Take Up To 3 Days To Qualify Your Loan Request</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </span>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="approvalbox">
                    <div class="number"> 3</div>
                    <span>
                        <h4>We'll Call You With The Answer From The Analysis Team</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </span>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="approvalbox">
                    <div class="number"> 4</div>
                    <span>
                        <h4>You Enjoy The Money Submitted To Your Bank Account</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </span>
                </div>
            </div>
        </div>
    </div>
</section>

@if(count($staff) > 0)
<section class="experienced_wrap py-5">
    <div class="container">
        <div class="row  text-center">
            <div class="col-sm-12">
                <h2>Meet Our Experienced Staff</h2>
            </div>
        </div>
        <div class="row mt-4">
            @foreach($staff as $s)
            <div class="col-sm-6">
                <div class="experiencebox">
                    <div class="autherimg"><img src="{{ url('/') }}{{ Storage::url($s->photo) }}" width="155" height="164" class="img-fluid img-thumbnail"></div>
                    <span>
                        <h4>{{$s->name}}</h4>
                        <h6>{{$s->department}}</h6>
                        <ul class=" list-unstyled experiencebox_list">
                            <li> <a href="{{$s->facebook_url}}" class="fb"> <i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                            <li> <a href="{{$s->twitter_url}}" class="tweet"> <i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li> <a href="{{$s->linkedin_url}}" class="in"> <i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                        </ul>
                        <p>{{$s->profile}}</p>
                    </span>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endif

<section class="contact_wrap py-5">
    <div class="container">
        <div class="row  text-center">
            <div class="col-sm-12">
                <h2>Contact Info</h2>
                <h6>{!! setting('site.store_address') !!}</h6>
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-sm-6">
                <div style="width: 100%">
                    <iframe width="100%" height="461" src="https://maps.google.com/maps?width=100%&height=461&hl=en&q=Suite%201203%2C%20530%20Lt%20Collins%20St%20Melbourne%20VIC%203000%20+(razzoo)&ie=UTF8&t=&z=15&iwloc=B&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                        <a href="https://www.mapsdirections.info/en/journey-planner.htm">find directions</a>
                    </iframe>
                </div>
            </div>

            <div class="col-sm-6">
                @include('contact.form')
            </div>
        </div>
    </div>
</section>
@endsection