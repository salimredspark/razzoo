<html>

<head>

    <style>
        @page {
            margin: 0px 0px;
        }

        body {
            margin: 0cm;
        }

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
            color: #000;
            font-weight: normal;
            font-style: normal;
            text-decoration: none;
            margin: 3cm 2cm 2cm 2cm;
        }

        .container-logo {
            padding-left: 2cm;
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
        .database-tables th{background-color: #eee;}

        /** Define the header rules **/
        header {
            position: fixed;
            top: 0cm;
            left: 0cm;
            right: 0cm;
            height: 80px;

            color: #000;
            text-align: left;            
            border-bottom: solid 1px #ddd;
            padding-bottom: 10px;
        }        
        footer {
            position: fixed;
            bottom: 0px;
            left: 0cm;
            right: 0cm;
            height: 30px;
            background: rgba(0, 0, 0, 0.05);
            border-top: 1px solid rgba(0, 0, 0, 0.05);
            color: #000;
            text-align: center;            
            font-family: Arial, serif;
            font-size: 12px;
            padding-top: 25px;
        }
    </style>
</head>

<body>

    <header>
        <div class="container-logo">
            <img src="{{ asset('images/logo.png') }}" />
        </div>
    </header>

    <main>
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
                <p><b>Date Register Last Updated:</b> {{ $data['dateRegisterLastUpdated'] }}</p>
                <p><b>Date Time Retrieved:</b> {{ $data['dateTimeRetrieved'] }}</p>

                <br />
                <p style="background-color: yellow; color:red; padding:10px;font-size:13px;font-family:'Times New Roman', Times, serif"><b>Note: </b> {{ $data['usageStatement'] }} </p>

            </div>
        </div>
    </main>

    <footer>
        <div class="container-footer">
            &copy;{{ date('Y') }} Razzoo. All Rights Reserved.
        </div>
    </footer>
</body>

</html>