@extends('layouts.app')

@section('content')
<section class="content-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="wizard-steps text-center">
                    <span class="tick"><img src="{{ url('images/icon-tick.png') }}" class="img-fluid" alt=""></span>
                    <h3 class="text-success">Congratulations! <br></h3>
                    <h4 class="mb-5">Your loan will be disembursed within 48 hours on sucessfull background verification.</h4>
                    <h5 class="text-primary">Your application id is : {{$application_id}}.</h5>
                </div>

            </div>
        </div>
    </div>
</section>
@endsection