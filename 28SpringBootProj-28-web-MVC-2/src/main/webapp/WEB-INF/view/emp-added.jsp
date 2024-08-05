<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Added</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #fff;
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #007bff; /* Blue color for heading */
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f0f0f0;
        }

        @media screen and (max-width: 600px) {
            .container {
                max-width: 90%;
            }

            table {
                font-size: 14px; /* Adjust font size for smaller screens */
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Employee Added</h1>
        <table border="1" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Mail</th>
                <th>Address</th>
            </tr>
            <tr>
                <td>${emp.getId()}</td>
                <td>${emp.getName()}</td>
                <td>${emp.getMail()}</td>
                <td>${emp.getAddress()}</td>
            </tr>
        </table>
    </div>
</body>

</html>