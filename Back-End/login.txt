<?php


include 'index.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>
    <div class="modal fade" id="patientLoginModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Login Form</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="loginPatdata.php" method="POST">
                    <div class="modal-body">
                        <div class="modal-body">
                            <h1>Welcome Back!</h1>
                            <p>Please Sign In to your account.</p>

                            <div class="form-group">
                                <label> <b>Email Address</b> </label><br>
                                <input type="email" name="email" placeholder="Enter Email Address" required>
                            </div>

                            <div class="form-group">
                                <label> <b>Password</b> </label><br>
                                <input type="password" name="password" placeholder="Enter Password" required>
                            </div>
                            Don't have account?
                            <a href="login.php?action=login">Signup!</a></p>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" name="insertdata" class="btn btn-primary">Sign In Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>