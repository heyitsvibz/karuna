<?php 
// code this better as it shouldn't require a file for the small function
session_start();
$_SESSION["username"];
require '../db.php';
if(!$conn)
{echo "not connected";}
$id_num = $_POST['boxuid'];
//mysql_real_escape_string helps to maintain color and syntax of mysql statments

$sql = "DELETE FROM cred WHERE `cred`.`UID` = ".$id_num;

if(!mysqli_query($conn,$sql))
	{ echo "pendingcode error";
	}
else
header( "refresh:0; url=../adminlist.php");

?>