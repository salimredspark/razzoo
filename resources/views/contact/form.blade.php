{!! Form::open(['route'=>'contactus.store']) !!}
<div class="form-group input-group-lg {{ $errors->has('contact_name') ? 'has-error' : '' }}">
    {!! Form::text('contact_name', old('contact_name'), ['class'=>'form-control', 'placeholder'=>'Your Name']) !!}
    <span class="text-danger">{{ $errors->first('contact_name') }}</span>
</div>
<div class="form-group input-group-lg {{ $errors->has('contact_email') ? 'has-error' : '' }}">
    {!! Form::text('contact_email', $request->email ?? '', ['class'=>'form-control', 'placeholder'=>'Email Address']) !!}
    <span class="text-danger">{{ $errors->first('contact_email') }}</span>
</div>
<div class="form-group input-group-lg {{ $errors->has('contact_message') ? 'has-error' : '' }}">
    {!! Form::textarea('contact_message', old('contact_message'), ['class'=>'form-control', 'rows'=>'4', 'placeholder'=>'Your Message']) !!}
    <span class="text-danger">{{ $errors->first('contact_message') }}</span>
</div>
<div class="checkbox">
    <label>
        <input type="checkbox" name="contact_agree_terms" id="contact_agree_terms">
        I have read and agree to Ciel's<a href="{{ route('privacy-policy') }}" target="_blank"> Privacy Policy</a> and <a href="{{ route('terms') }}" target="_blank">Terms Conditions </a></label>
</div>

<div class="row pt-4">
    <div class="col-6">
        {!! NoCaptcha::renderJs() !!}
        {!! NoCaptcha::display() !!}

        @if ($errors->has('g-recaptcha-response'))
        <span class="htext-danger">{{ $errors->first('g-recaptcha-response') }}</span>
        @endif
    </div>
    <div class="col-6">
        <button class="btn btn-secondary btn-lg pull-right px-5 my-2"> Submit</button>
    </div>
</div>
{!! Form::close() !!}