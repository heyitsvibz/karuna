<?php
session_start();
//empty 
$_SESSION["username"];
$uname = $_SESSION["username"];

require '../db.php';
if(!$conn)
{echo "not connected";}
///////////////////////////

$name = $_POST['setpass'];

$sql = "UPDATE cred SET password = \"$name\" WHERE username = \"$uname\" ";

if(!mysqli_query($conn,$sql))
	{ echo "not inserted last step";}
else
header( "refresh:0; url=../profile.php");

mysqli_close($conn);
?>