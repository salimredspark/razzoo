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

                <div class="collapsible-no">
                    <div class="collapse-content collapse-no" id="links" aria-expanded="true">
                        <div class="row">
                            <div class="col-md-4">
                                <a href="{{ route('voyager.loan.index') }}" class="voyager-link"">
                                    <span class=" resource_label"><i class="voyager-documentation"></i> <span class="copy">Loan Application ({{ $counts['applications'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.contactus.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-people"></i> <span class="copy">Contact Request ({{ $counts['contacts'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.newsletter.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-news"></i> <span class="copy">Newsletter Subscriber ({{ $counts['newsletter'] }})</span></span>
                                </a>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-4">
                                <a href="{{ route('voyager.pages.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-file-text"></i> <span class="copy">CMS Pages ({{ $counts['pages'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.users.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-person"></i> <span class="copy">Admin Users ({{ $counts['admins'] }})</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.roles.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-lock"></i> <span class="copy">Admin User Roles</span></span>
                                </a>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px;">
                            <div class="col-md-4">
                                <a href="{{ route('voyager.media.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-images"></i> <span class="copy">Media</span></span>
                                </a>
                            </div>
                            <div class="col-md-4">
                                <a href="{{ route('voyager.settings.index') }}" class="voyager-link">
                                    <span class="resource_label"><i class="voyager-settings"></i> <span class="copy">Settings</span></span>
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