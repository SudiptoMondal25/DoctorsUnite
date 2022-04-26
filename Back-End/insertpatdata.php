<?php
$fname = $_POST['firstName'];
$lname = $_POST['lastName'];
$email = $_POST['email'];
$phone = $_POST['phoneNo'];
$dob = $_POST['dob'];
$p_address = $_POST['p_address'];
$city = $_POST['city'];
$country = $_POST['country'];
$gender = $_POST['gender'];
$password = $_POST['password'];

if(!empty($fname) || !empty($lname) || !empty($email) || !empty($phone) || !empty($dob) || 
!empty($address) || !empty($city) || !empty($country) || !empty($gender) || !empty($password)){
        $host = "localhost";
        $dbUsername = "root";
        $dbPassword = "";
        $dbname = "doctors_unite";

        //creating connection
        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);

        if(mysqli_connect_error()){
            die('Connect Error('.mysqli_connect_errno().')'. mysqli_connect_error());
        } else {
            $SELECT = "SELECT  email FROM patients Where email = ? Limit 1";
            $INSERT = "INSERT Into patients (firstName, lastName, email, phoneNo, dob, p_address, city, country, gender, password) 
            Values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

            //prepare statement for select query
            $stmt = $conn->prepare($SELECT);
            $stmt->bind_param("s", $email);
            $stmt->bind_result($email);
            $rnum = $stmt->num_rows; //in rnum storring how many number of rows are selected

            if($rnum == 0){
                $stmt->close();
                
                $stmt = $conn->prepare($INSERT);
                $stmt->bind_param("sssissssss", $fname, $lname, $email, $phone, $dob, $p_address, $city, $country, $gender, $password);
                $stmt->execute();

                echo "Congratulations!! Signup is done successfully.";
            } else {
                echo "This email is already registered";
            }
            $stmt->close();
            $conn->close();
        }
} else {
    echo "All fields are required!";
    die();
}

?>