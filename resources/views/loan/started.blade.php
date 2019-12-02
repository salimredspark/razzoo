@extends('layouts.app')

@section('content')
<section class="content-section py-5">
	<div class="container">
    	<div class="row">
        	<div class="col-sm-12">
            	<div class="tagline">
                	<h1 class="text-center text-primary">Your go to place for Business Loans</h1>
                </div>
			    <div class="find-business text-center">
                <a href="{{ url('/loan-process') }}" class="btn btn-primary">Find a Business Loan</a>
                </div>
                
            </div>
        </div>
    </div>
</section>
@endsection