<?php
$connection = mysqli_connect("localhost", "root", "");
$db = mysqli_select_db($connection, 'doctors_unite');

if(isset($_POST['insertdata'])){
    $fname = $_POST['firstName'];
    $lname = $_POST['lastName'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $country = $_POST['country'];
    $dob = $_POST['dob'];
    $phoneNo = $_POST['phoneNo'];
    $email = $_POST['email'];
    $gender = $_POST['gender'];
    $password = $_POST['password']; 
    
    $query ="INSERT INTO patients ('First_Name', 'Last_Name', 'Address', 'City', 'Country', 'Date_of_Birth', 'Phone_number', 'Email', 'Gender', 'Password') VALUES ('$fname', '$lname', '$address', '$city', '$country', '$dob', '$phoneNo', '$email', '$gender', '$password')";
    $query_run = mysqli_query($connection, $query);

    if($query_run){
        echo '<script> alert("Signup Completed"); </script>';
        header('Location: index.php');
    }
    else{
        echo '<script> alert("Invalid Data"); </script>';
    }
}
?>