<?php


include 'config.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    //font awesome cdn link
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

    //custom css file link
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<selection class = "form-container">
    <form action="" method="post" enctype= "multipart/form-data">
        <h3>Login</h3>
        
        <input type="email" required placeholder= "Email Address" class= "box"
        name ="email">
        
        
        <input type="text" required placeholder= "Enter Password" class= "box"
        name ="password">
     
        <input type= "submit" value="Log in" class="btn" name = "submit">
        <p>Dont't have an account? <a href="register.php">SignUp Now</a></p>
        

    </form>
</selection>
</body>
</html>