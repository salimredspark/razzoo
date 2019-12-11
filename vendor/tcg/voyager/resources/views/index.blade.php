@extends('voyager::master')

@section('content')
<div class="page-content">
    @include('voyager::alerts')
    @include('voyager::dimmers')
    <div class="analytics-container">
        <div id="embed-api-auth-container">

            <!--dashboard html-->
            <div id="resources" class="tab-pane fade in active">
                <h3><i class="voyager-dashboard"></i> Dashboard <small>Your go to place for Business Loans.</small></h3>

                <div class="collapsible">
                    <div class="collapse-head collapsed" data-toggle="collapse" data-target="#links" aria-expanded="true" aria-controls="links">
                        <h4>Menu</h4>
                        <i class="voyager-angle-down" style="display: inline;"></i>
                        <i class="voyager-angle-up" style="display: block;"></i>
                    </div>
                    <div class="collapse-content collapse-no" id="links" aria-expanded="true">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="{{ route('voyager.loan.index') }}" class="voyager-link" style="background-image:url('{{ voyager_asset('images/compass/documentation.jpg') }}')">
                                    <span class="resource_label"><i class="voyager-documentation"></i> <span class="copy">Loan Application ({{ $counts['applications'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.contactus.index') }}" class="voyager-link" style="background-image:url('{{ voyager_asset('images/compass/voyager-home.jpg') }}')">
                                    <span class="resource_label"><i class="voyager-browser"></i> <span class="copy">Contact Request ({{ $counts['contacts'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.newsletter.index') }}" class="voyager-link" style="background-image:url('{{ voyager_asset('images/compass/voyager-home.jpg') }}')">
                                    <span class="resource_label"><i class="voyager-browser"></i> <span class="copy">Newsletter Subscriber ({{ $counts['newsletter'] }})</span></span>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <a href="{{ route('voyager.users.index') }}" class="voyager-link" style="background-image:url('{{ voyager_asset('images/compass/voyager-home.jpg') }}')">
                                    <span class="resource_label"><i class="voyager-browser"></i> <span class="copy">Admin Users ({{ $counts['admins'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.media.index') }}" class="voyager-link" style="background-image:url('{{ voyager_asset('images/compass/hooks.jpg') }}')">
                                    <span class="resource_label"><i class="voyager-hook"></i> <span class="copy">Media</span></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
@stop