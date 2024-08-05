<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
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
            max-width: 500px;
        }

        h1 {
            color: #007bff; /* Blue for heading */
            margin-bottom: 30px;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007bff; /* Blue background */
            color: #fff;
            text-decoration: none;
            border-radius: 3px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        @media screen and (max-width: 500px) {
            .container {
                max-width: 90%;
            }

            a {
                padding: 8px 15px;
                margin: 5px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Employee Management System</h1>
        <a href="registration-form">Registration</a>
        <a href="logging-form">Login</a>
        <a href="deleting-form">Delete Employee</a>
        <a href="updating-form">Update Employee</a>
    </div>
</body>

</html>