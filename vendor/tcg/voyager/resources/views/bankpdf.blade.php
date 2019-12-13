<style type="text/css">
    table td,
    table th {
        border: none
    }

    table {
        page-break-inside: auto;
    }

    table tr {
        page-break-inside: auto;
    }

    table tr td {
        page-break-inside: auto;
    }

    .container {
        font-family: Arial, serif;
        font-size: 10.1px;
        color: #000000;
        font-weight: normal;
        font-style: normal;
        text-decoration: none
    }

    .red {
        color: red
    }

    .green {
        color: green
    }
</style>

<div class="container">
    <div class="header">
        <table class="table table-striped database-tables">
            <thead>
                <tr>
                    <th>Personal Details</th>
                    <th>Applicant Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td>Case ID</td>
                                            <td>{{ $data->reportDetails->providerReference }}</td>
                                        </tr>
                                        <tr>
                                            <td>Access ID</td>
                                            <td>{{ $data->reportDetails->accessId }} </td>
                                        </tr>
                                        <tr>
                                            <td>Capture Date</td>
                                            <td>{{ $data->reportDetails->captureDate }} </td>
                                        </tr>
                                        <tr>
                                            <td>Capture Time</td>
                                            <td>{{ $data->reportDetails->captureTime }} </td>
                                        </tr>
                                        <tr>
                                            <td>Report Date</td>
                                            <td>{{ $data->reportDetails->reportDate }} </td>
                                        </tr>
                                        <tr>
                                            <td>Report Time</td>
                                            <td>{{ $data->reportDetails->reportTime }} </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>Account No</td>
                                <td>{{ $data->accountCaptured->account }}</td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>{{ $data->accountCaptured->customerName }}</td>
                            </tr>
                            <tr>
                                <td>Created Date</td>
                                <td>{{ $data->accountCaptured->opened }}</td>
                            </tr>
                            <tr>
                                <td>Type</td>
                                <td>{{ $data->accountCaptured->type }}</td>
                            </tr>
                            <tr>
                                <td>Institution</td>
                                <td>{{ $data->accountCaptured->institution }}</td>
                            </tr>
                            <tr>
                                <td>Available Balance</td>
                                <td>{{ $data->accountCaptured->available }}</td>
                            </tr>
                            <tr>
                                <td>Available Max Balance</td>
                                <td>{{ $data->accountCaptured->maxBalance }}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>

        <table class="table table-striped database-tables">
            <thead>
                <tr>
                    <th>Transactions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <table>
                            <thead>
                                <tr>
                                    <td>Date</td>
                                    <td>Category</td>
                                    <td>Description</td>
                                    <td>Debit</td>
                                    <td>Credit</td>
                                    <td>Balance</td>
                                </tr>
                            </thead>
                            <tbody>
                                {{$listattime = 20}}
                                @foreach($transactions as $k => $d)
                                <tr>
                                    <td>{{ $d->date }}</td>
                                    <td>{{ $d->category }}</td>
                                    <td>{{ $d->description }}</td>
                                    <td class="red">{{ $d->debit }}</td>
                                    <td class="green">{{ $d->credit }}</td>
                                    <td>{{ $d->balance }}</td>
                                </tr>
                                @if($listattime == 0) $listattime = 20; @endif;

                                {{ $listattime-- }}
                                @endforeach
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>

    </div>
</div>