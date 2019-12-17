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

    @if(Session::has('success'))
    <div class="alert alert-success">
        {{ Session::get('success') }}
    </div>
    @elseif(Session::has('error'))
    <div class="alert alert-error alert-danger">
        {{ Session::get('error') }}
    </div>
    @endif

    @yield('content')

    </div>

    @include('cookieConsent::index')
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

            function validateEmail($email) {
                var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                return emailReg.test($email);
            }

            //redirect to process page
            $(document).on("click", 'button.subscribe', function(event) {

                $(".show-message").removeClass("alert-success").addClass("alert-danger");

                var email = $("#email").val();
                if (!validateEmail(email)) {
                    $(".show-message").html("Please enter valid email address").show();
                } else {

                    var makeUrl = "{{ route('loan-started', ['email' => 'replace_me' ]) }}";
                    window.location = makeUrl.replace('replace_me', email);

                    /*
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
                            $(".show-message").show();
                            if (data.status == 'success') {
                                $(".show-message").removeClass("alert-danger").addClass("alert-success");
                                $(".show-message").html("You are sucessfully subscribed");
                            } else if (data.status == 'exist') {
                                $(".show-message").html("Your email adddress already ubscribed");
                            } else {
                                $(".show-message").html("Please enter valid email address");
                            }
                        },
                        error: function(xhr) {
                            console.log("Subscribe Error: Something went wrong!");
                        }
                    });
                    */
                }

            });

            //Subscribebtn
            $(document).on("click", 'button.Subscribebtn', function(event) {

                $(".show-sub-message").removeClass("alert-success").addClass("alert-danger");

                var email = $("#subscriber_email").val();
                if (!validateEmail(email)) {
                    $(".show-sub-message").html("Please enter valid email address").show();
                } else {

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
                            $(".show-sub-message").show();
                            if (data.status == 'success') {
                                $(".show-sub-message").removeClass("alert-danger").addClass("alert-success");
                                $(".show-sub-message").html("You are sucessfully subscribed");
                            } else if (data.status == 'exist') {
                                $(".show-sub-message").html("Your email adddress already ubscribed");
                            } else {
                                $(".show-sub-message").html("Please enter valid email address");
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