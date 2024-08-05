<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div style="text-align: center; width: 100%;">
        <h1>Upadate Employee Form</h1>
        <form action="updated" method="post">
            <input type="hidden" name="id" value=${dto.getId()} id="">
            <input type="hidden" name="name" value=${dto.getName()} id="">
            Mail : <input type="email" name="mail" value=${dto.getMail()} id=""><br><br>
            Address : <input type="text" name="address" value=${dto.getAddress()} id="">
            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>