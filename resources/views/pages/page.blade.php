@extends('layouts.landing_app')

@section('content')
<section class="content-section py-5">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="wizard-steps text-center">
                    <h3 class="text-success"> {{ $page['title'] }} <br> </h3>
                    <h4 class="mb-5">{!! $page['content'] !!}</h4>
                </div>

            </div>
        </div>
    </div>
</section>
@endsection