<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
</head>
<body>
<div>
    <?php
    if(isset($_POST['create'])){
        echo 'User submitted.';
    }
    ?>
</div>


    <div>
        <form action="register.php" method="post">
            <div class="container">
                <h1>Signup</h1>
                <p>Fill the form to create a profile.</p>
                <label for="firsName"><b>First Name</b></label>
                <input type="text" name="firstName" required>

                <label for="lastName"><b>Last Name</b></label>
                <input type="text" name="lastName" required>

                <label for="email"><b>Email Address</b></label>
                <input type="email" name="email" required>

                <label for="phoneNumber"><b>First Name</b></label>
                <input type="text" name="phoneNumber" required>

                <label for="address"><b>Address</b></label>
                <input type="text" name="address" required>

                <label for="city"><b>City</b></label>
                <input type="text" name="city" required>

                <label for="country"><b>Country</b></label>
                <input type="text" name="country" required>

                <label for="gender"><b>Gender</b></label>
                <input type="text" name="gender" required>

                <label for="dateOfBirth"><b>Date Of Birth(YYYY/MM/DD)</b></label>
                <input type="text" name="First_Name" required>

                <label for=""password"><b>Password</b></label>
                <input type="password" name="password" required>

                <input type="submit" name="create" value="Sign Up">
            </div>
        </form>

    </div>
    
</body>
</html>