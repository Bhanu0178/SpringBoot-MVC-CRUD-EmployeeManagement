<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Delete Form</title>
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
            max-width: 400px;
        }

        h1 {
            color: #007bff; /* Blue for heading */
            margin-bottom: 20px;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #dc3545; /* Red for delete button */
            color: #fff;
            cursor: pointer;
            border: none;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        @media screen and (max-width: 400px) {
            .container {
                max-width: 90%;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Employee Delete Form</h1>
        <form action="delete" method="post">
            <label for="id">Enter Id:</label>
            <input type="text" name="id" id="id" required><br><br>
            <input type="submit" value="Delete">
        </form>
    </div>
</body>

</html>