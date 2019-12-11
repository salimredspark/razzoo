<!doctype html>
<html class="nojs" lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<!--[if IE 7]><html lang="en" class="ie7"><![endif]-->
<!--[if IE 8]><html lang="en" class="ie8"><![endif]-->
<!--[if IE 9]><html lang="en" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><html lang="en"><![endif]-->
<!--[if !IE]><html lang="en-US"><![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Welcome to Razzoo</title>

    <!--
=====================================================================
	FAVICON
=====================================================================
-->

    <link rel="icon" type="image/png" href="{{ asset('images/favicon.png') }}" sizes="16x16">
    <meta name="msapplication-TileColor" content="#79bde9">
    <meta name="msapplication-TileImage" content="{{ asset('landing/images/mstile-144x144.png') }}">
    <meta name="theme-color" content="#ffffff">

    <!--
=====================================================================
	CSS 
=====================================================================
-->


    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,300i,400,400i,500,500i,700,700i,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="{{ asset('landing/styles/bootstrap.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('landing/styles/custom.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('landing/styles/layout.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('landing/styles/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('landing/styles/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('landing/styles/owl.theme.default.min.css') }}">

    <!--
=====================================================================
	JS
=====================================================================
-->
    <!--[if lt IE 9]>
 <script src="{{ asset('landing/js/html5shiv.js') }}"></script>
 <script src="{{ asset('landing/js/respond.min.js') }}"></script>
<![endif]-->
    <!--[if !IE]><!-->
    <script>
        if ( /*@cc_on!@*/ false) {
            document.documentElement.className += ' ie10';
        }
    </script>
    <!--<![endif]-->

</head>

<body>
    <!--[if lte IE 8]>
  <div class="ie-alert">
    <div class="wrapper">
      <strong>Your browser is unsupported.</strong> Upgrade your browser to enjoy a feature-complete experience our site. <a class="button" href="http://whatbrowser.org">Update now</a>
    </div>
  </div>
<![endif]-->

    <!--================================================================	
        HEADER
==========================================================-->

    <div class="pre_header">
        <div class="container"> </div>
    </div>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-6"><a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('landing/images/logos/logo.png') }}" class="img-fluid"></a> </div>
                <div class="col-6 "><a class="btn btn-outline-secondary pull-right  investor_btn" href="{{ url('loan-started') }}">Investor Relations</a> </div>
            </div>
        </div>
    </div>
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
                        <div class="show-message text-danger"></div>
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
                    <div class="input-group input_group">
                        <input type="text" class="form-control" placeholder="Enter your email address" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append ml-2">
                            <button class="btn btn-secondary btn-lg text-uppercase px-4 Subscribebtn">Submit</button>
                        </div>
                    </div>
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
    <section class="experienced_wrap py-5">
        <div class="container">
            <div class="row  text-center">
                <div class="col-sm-12">
                    <h2>Meet Our Experienced Staff</h2>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-sm-6">
                    <div class="experiencebox">
                        <div class="autherimg"><img src="{{ asset('landing/images/icons/auther.png') }}" width="155" height="164" class="img-fluid img-thumbnail"></div>
                        <span>
                            <h4>Elisa Austen </h4>
                            <h6>Head of Innovation </h6>
                            <ul class=" list-unstyled experiencebox_list">
                                <li> <a href="#" class="fb"> <i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                                <li> <a href="#" class="tweet"> <i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li> <a href="#" class="in"> <i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.</p>
                        </span>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="experiencebox">
                        <div class="autherimg"><img src="{{ asset('landing/images/icons/auther.png') }}" width="155" height="164" class="img-fluid img-thumbnail"></div>
                        <span>
                            <h4>Elisa Austen </h4>
                            <h6>Head of Innovation </h6>
                            <ul class=" list-unstyled experiencebox_list">
                                <li> <a href="#" class="fb"> <i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                                <li> <a href="#" class="tweet"> <i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li> <a href="#" class="in"> <i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.</p>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="contact_wrap py-5">
        <div class="container">
            <div class="row  text-center">
                <div class="col-sm-12">
                    <h2>Contact Info</h2>
                    <h6>Address : Suite 1203, 530 Lt Collins St Melbourne VIC 3000 <br>
                        Phone: +81 000 2002, Email: office@razzoo.com, Web: www.razzoo.com</h6>
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
    <footer class="footer py-4">
        <div class=" container">
            <div class="row">
                <div class="col-sm-4">
                    <p> &copy;{{date("Y")}}, Razzoo. All Rights Reserved. </p>
                </div>
                <div class="col-sm-8">
                    <div class="row">
                        <div class="col-sm-12 col-lg-6 footer-menu">
                            {{ menu('footer-menu') }}
                        </div>
                        <div class="col-sm-12 col-lg-6">
                            <ul class=" list-unstyled icon_list m-0">
                                <li> <a href="{{ setting('site.FACEBOOK_URL') }}" target="_blank"> <i class="fa fa-facebook" aria-hidden="true"></i> </a></li>
                                <li> <a href="{{ setting('site.TWITTER_URL') }}" target="_blank"> <i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li> <a href="{{ setting('site.LINKEDIN_URL') }}" target="_blank"> <i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="{{ asset('landing/js/jquery-3.2.1.slim.min.js') }}"></script>
    <script src="{{ asset('landing/js/popper.min.js') }}"></script>
    <script src="{{ asset('landing/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('landing/js/theme.js') }}"></script>
    <script src="{{ asset('landing/js/owl.carousel.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('.owl-carousel').owlCarousel({
                nav: true,
                loop: true,
                margin: 10,
                responsive: {
                    0: {
                        items: 1,
                        nav: false,
                        loop: true
                    },
                    600: {
                        items: 2,
                        nav: false,
                        loop: true
                    },
                    1000: {
                        items: 3,
                        nav: false,
                        loop: true,
                        margin: 20
                    }
                }
            });

            //delete bank file
            $(document).on("click", 'button.subscribe', function(event) {

                var email = $("#email").val();

                if (email) {
                    exporturl = "{{ route('subscribe') }}";
                    CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');

                    $.ajax({
                        type: 'POST',
                        cache: false,
                        dataType: 'json',
                        url: exporturl,
                        data: {
                            postdata: {
                                email: email
                            },
                            _token: CSRF_TOKEN
                        },
                        success: function(data) {
                            if (data.status == 'success') {
                                $(".show-message").html("Subscribed");
                            } else if (data.status == 'exist') {
                                $(".show-message").html("Already Subscribed");
                            } else {
                                console.log("Subscribe: " + data);
                            }
                        },
                        error: function(xhr) {
                            console.log("Subscribe Error: Something went wrong!");
                        }
                    });
                }

            });
        })
    </script>
</body>

</html>