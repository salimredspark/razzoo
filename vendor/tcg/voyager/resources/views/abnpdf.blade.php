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
        <h2>Business Information</h2>
        <p><b>Name:</b> {{ $data['businessEntity']['mainName']['organisationName'] }}</p>
        <p><b>Trading Name:</b> {{ $data['businessEntity']['mainTradingName']['organisationName'] }}</p>
        <p><b>Address:</b> <br />
            State Code: {{ $data['businessEntity']['mainBusinessPhysicalAddress']['stateCode'] }},<br />
            Post Code: {{ $data['businessEntity']['mainBusinessPhysicalAddress']['postcode'] }},<br />
            Effective From: {{ $data['businessEntity']['mainBusinessPhysicalAddress']['effectiveFrom'] }},
        </p>

        <h2>Business Entity</h2>
        <p><b>Record Last Updated Date:</b> {{ $data['businessEntity']['recordLastUpdatedDate'] }}</p>
        <p><b>Status:</b> {{ $data['businessEntity']['entityStatus']['entityStatusCode'] }}</p>
        <p><b>Effective From:</b> {{ $data['businessEntity']['entityStatus']['effectiveFrom'] }}</p>

        <h2>Business Entity Type</h2>
        <p><b>Entity Type Code:</b> {{ $data['businessEntity']['entityType']['entityTypeCode'] }} </p>
        <p><b>Description:</b> {{ $data['businessEntity']['entityType']['entityDescription'] }} </p>

        <br />
        <p><b>Note: </b> {{ $data['usageStatement'] }} </p>
        <p><b>Date Register Last Updated:</b> {{ $data['dateRegisterLastUpdated'] }}</p>
        <p><b>Date Time Retrieved:</b> {{ $data['dateTimeRetrieved'] }}</p>

    </div>
</div>