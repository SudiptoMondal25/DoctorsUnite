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

<!-- Modal -->
<div class="modal fade" id="patientSignupModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Patient Data</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
              <form action="insertpatdata.php" method="POST">
                <div class="modal-body">
                  <div class="modal-body">
                    <h1>Signup</h1>
                            <p>Fill the form to create a profile!</p>
                            <div class="form-group">
                            <label> <b>First Name</b> </label><br>
                            <input type="text" name="firstName" placeholder="Enter First Name" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Last Name</b> </label><br>
                            <input type="text" name="lastName" placeholder="Enter Last Name" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Email Address</b> </label><br>
                            <input type="email" name="email" placeholder="Enter Email Address" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Phone Number</b> </label><br>
                            <input type="text" name="phoneNo" placeholder="Enter Phone Number" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Date of Birth</b> </label><br>
                            <input type="date" name="dob" placeholder="Date of Birth(MM/DD/YYYY)" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Address</b> </label><br>
                            <input type="text" name="address" placeholder="Enter Address" required>
                            </div>

                            <div class="form-group">
                            <label> <b>City</b> </label><br>
                            <input type="text" name="city" placeholder="Enter City" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Country</b> </label><br>
                            <input type="text" name="country" placeholder="Enter Country Name" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Gender</b> </label><br>
                            <input type="text" name="gender" placeholder="Enter Gender" required>
                            </div>

                            <div class="form-group">
                            <label> <b>Password</b> </label><br>
                            <input type="password" name="password" placeholder="Enter Password" required>
                            </div>
                  </div>
                </div>
              <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" name="insertdata" class="btn btn-primary">Submit Data</button>
        </div>
      </form>
    </div>
  </div>
</div>





    <div class="container">
        <div class = "jumbotron">
            <div class="card">
                <h2> Home Page </h2>
                  </div>
                    <div class="card">
                        <div class="card-body">
                          <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#patientSignupModal">
                            Signup
                          </button>
                        </div>
                    </div>
        </div>
    </div>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    
</body>
</html>