<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message</title>
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
            max-width: 600px; /* Adjust as needed */
        }

        p {
            font-size: 1.2em;
            color: #f44336;
        }

        .success {
            color: #4CAF50; /* Green for success */
        }

        /* .error {
            color: #f44336; Red for error
        } */

        @media screen and (max-width: 600px) {
            .container {
                max-width: 90%; /* Adjust container width for smaller screens */
                padding: 20px;
            }

            p {
                font-size: 1em;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <p>${message}</p>
    </div>
</body>

</html>