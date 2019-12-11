<section class="contact_wrap py-5">
    <div class="container">
        <div class="row  text-center">
            <div class="col-sm-12">
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
                {!! Form::open(['route'=>'contactus.store']) !!}
                <div class="form-group input-group-lg {{ $errors->has('contact_name') ? 'has-error' : '' }}">
                    {!! Form::text('contact_name', old('contact_name'), ['class'=>'form-control', 'placeholder'=>'Your Name']) !!}
                    <span class="text-danger">{{ $errors->first('contact_name') }}</span>
                </div>
                <div class="form-group input-group-lg {{ $errors->has('contact_email') ? 'has-error' : '' }}">
                    {!! Form::text('contact_email', old('contact_email'), ['class'=>'form-control', 'placeholder'=>'Email Address']) !!}
                    <span class="text-danger">{{ $errors->first('contact_email') }}</span>
                </div>
                <div class="form-group input-group-lg {{ $errors->has('contact_message') ? 'has-error' : '' }}">
                    {!! Form::textarea('contact_message', old('contact_message'), ['class'=>'form-control', 'rows'=>'4', 'placeholder'=>'Your Message']) !!}
                    <span class="text-danger">{{ $errors->first('contact_message') }}</span>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="contact_agree_terms" id="contact_agree_terms">
                        I have read and agree to Ciel's<a href="{{ route('privacy-policy') }}" target="_blank"> Privacy Policy</a> and <a href="{{ route('terms') }}"  target="_blank">Terms Conditions </a></label>
                </div>

                <div class="row pt-4">
                    <div class="col-6">
                        {!! NoCaptcha::renderJs() !!}
                        {!! NoCaptcha::display() !!}

                        @if ($errors->has('g-recaptcha-response'))
                        <span class="help-block">
                            <strong>{{ $errors->first('g-recaptcha-response') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="col-6">
                        <button class="btn btn-secondary btn-lg pull-right px-5 my-2"> Submit</button>
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
</section>