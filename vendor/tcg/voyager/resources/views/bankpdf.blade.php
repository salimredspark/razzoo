<style type="text/css">
    table td,
    table th {
        border: solid 1px #dddddd;
        padding: 5px;
    }

    table.border-bottom th,
    table.border-bottom td {
        border: none;
        border-bottom: solid 1px #dddddd;
    }

    table {
        page-break-inside: auto;
        width: 100%;
    }

    table tr {
        page-break-inside: auto;
    }

    table tr td {
        page-break-inside: auto;
    }

    table th {
        font-weight: bold;
        font-size: 13px;
    }

    .container {
        font-family: Arial, serif;
        font-size: 12px;
        color: #555;
        font-weight: normal;
        font-style: normal;
        text-decoration: none
    }

    .right {
        text-align: right;
    }

    .red {
        color: red
    }

    .green {
        color: green
    }

    .page-break {
        page-break-after: always;
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
                    <td valign="top">
                        <table class="border-bottom">
                            <tr>
                                <td>Case ID</td>
                                <td class="right">{{ $data->reportDetails->providerReference }}</td>
                            </tr>
                            <tr>
                                <td>Access ID</td>
                                <td class="right">{{ $data->reportDetails->accessId }} </td>
                            </tr>
                            <tr>
                                <td>Capture Date</td>
                                <td class="right">{{ $data->reportDetails->captureDate }} </td>
                            </tr>
                            <tr>
                                <td>Capture Time</td>
                                <td class="right">{{ $data->reportDetails->captureTime }} </td>
                            </tr>
                            <tr>
                                <td>Report Date</td>
                                <td class="right">{{ $data->reportDetails->reportDate }} </td>
                            </tr>
                            <tr>
                                <td>Report Time</td>
                                <td class="right">{{ $data->reportDetails->reportTime }} </td>
                            </tr>
                        </table>
                    </td>
                    <td valign="top">
                        <table class="border-bottom">
                            <tr>
                                <td>Account No</td>
                                <td class="right">{{ $data->accountCaptured->account }}</td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td class="right">{{ $data->accountCaptured->customerName }}</td>
                            </tr>
                            <tr>
                                <td>Created Date</td>
                                <td class="right">{{ $data->accountCaptured->opened }}</td>
                            </tr>
                            <tr>
                                <td>Type</td>
                                <td class="right">{{ $data->accountCaptured->type }}</td>
                            </tr>
                            <tr>
                                <td>Institution</td>
                                <td class="right">{{ $data->accountCaptured->institution }}</td>
                            </tr>
                            <tr>
                                <td>Available Balance</td>
                                <td class="right">{{ $data->accountCaptured->available }}</td>
                            </tr>
                            <tr>
                                <td>Max Balance</td>
                                <td class="right">{{ $data->accountCaptured->maxBalance }}</td>
                            </tr>
                            <tr>
                                <td>Min Balance</td>
                                <td class="right">{{ $data->accountCaptured->minBalance }}</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
        
        <h2>Transactions</h2>
        <table class="table table-striped database-tables">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Category</th>
                    <th>Description</th>
                    <th>Debit</th>
                    <th>Credit</th>
                    <th>Balance</th>
                </tr>
            </thead>
            <tbody>
                {{$listattime = 20}}
                @foreach($transactions as $k => $d)
                <tr>
                    <td>{{ $d->date }}</td>
                    <td>{{ $d->category }}</td>
                    <td>{{ $d->description }}</td>
                    <td class="red right">{{ $d->debit }}</td>
                    <td class="green right">{{ $d->credit }}</td>
                    <td class="right">{{ $d->balance }}</td>
                </tr>
                @if($listattime == 0) $listattime = 20; @endif;

                {{ $listattime-- }}
                @endforeach
            </tbody>
        </table>
    </div>
</div>