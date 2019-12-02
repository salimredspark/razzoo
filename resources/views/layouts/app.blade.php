<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" type="image/png" href="{{ asset('images/favicon.png') }}" sizes="11x11">
    <title>Razzoo - Instant Business Loans</title>

    <!--
=====================================================================
	CSS
=====================================================================
-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('styles/font-awesome.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('styles/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('styles/theme.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('styles/responsive.css') }}">
    <!--
=====================================================================
	JS
=====================================================================
-->
    <script src="{{ asset('js/modernizr.js') }}"></script>
    <!-- Modernizr -->
    <!--[if lt IE 9]>
 <script src="{{ asset('js/html5shiv.js') }}"></script>
 <script src="{{ asset('js/respond.min.js') }}"></script>
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
    <div class="main-wrapper">
        <header id="header">
            <nav class="navbar navbar-expand-sm navbar-light">
                <div class="container">
                    <!-- Brand -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        <img src="{{ url('images/logo.png') }}" alt="{{ config('app.name', 'Razzoo') }}" class="img-fluid">
                    </a>
                    <div class="header-right ml-auto">
                        <div class="callus">
                            <span class="call-icon"><img src="{{ url('images/phone-icon.png') }}" class="img-fluid" alt=""></span>
                            1300 000 000
                        </div>
                        <a href="{{ url('/loan-started') }}" class="btn btn-lg btn-primary">Get Started</a>
                    </div>
                </div>
            </nav>
        </header>

        @if(Session::has('success'))
                    <div class="alert alert-success">
                        {{ Session::get('success') }}
                    </div>
                    @elseif(Session::has('error'))
                    <div class="alert alert-error">
                        {{ Session::get('error') }}
                    </div>
                    @endif

        @yield('content')
    </div>

    <footer>
        &copy;{{date("Y")}}, Razzoo. All Rights Reserved.
    </footer>

    <script src="{{ asset('js/jquery-1.11.3.min.js') }}"></script>
    <script language="javascript" src="{{ asset('js/popper.min.js') }}"></script>
    <script language="javascript" src="{{ asset('js/bootstrap.min.js') }}"></script>

</body>

</html>