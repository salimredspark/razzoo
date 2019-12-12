@extends('layouts.landing_app')

@section('content')
<section class="content-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="wizard-steps text-center">
                    <span class="tick"><img src="{{ url('images/icon-tick.png') }}" class="img-fluid" alt=""></span>
                    <h3 class="text-success">Thank you {{$email}}, for your interest. One of our consultant will contact your shortly. <br> </h3>
                    <h4 class="mb-5">Thank you for Visiting our website.</h4>
                </div>

            </div>
        </div>
    </div>
</section>
@endsection