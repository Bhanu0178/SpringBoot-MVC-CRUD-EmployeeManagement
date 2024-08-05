<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Logged In</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
        }

        h1 {
            color: #007bff; /* Blue for heading */
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
        <h1>Employee Logged In Successfully</h1>
        <table border="1" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>MAIL</th>
                <th>ADDRESS</th>
            </tr>
            <tr>
                <td>${dto.getId()}</td>
                <td>${dto.getName()}</td>
                <td>${dto.getMail()}</td>
                <td>${dto.getAddress()}</td>
            </tr>
        </table>
    </div>
</body>

</html>