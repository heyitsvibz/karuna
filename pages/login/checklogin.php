<?php

session_start();
$tbl_name="cred"; // Table name 

// Connect to server and select databse.
require '../db.php';

// username and password sent from form 
$username=$_POST['username']; 
$password=$_POST['password']; 
//session username and password check
$_SESSION["username"] = $username;
$_SESSION["password"] = $password;
// To protect MySQL injection (more detail about MySQL injection)
$username = stripslashes($username);
$password = stripslashes($password);
$sql="SELECT * FROM $tbl_name WHERE username='$username' and password='$password'";
$result=mysqli_query($conn,$sql);

// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

// If result matched $myusername and $mypassword, table row must be 1 row
if($count==1){

// Register $myusername, $mypassword and redirect to file "login_success.php"
header("location:../dboard.php");

}
else {
//below 1 is original uncomm to restore	
//header("location: ../login-fail-alert.php");
header("location: ../login.php?login_attempt=chklgn");
}
?>