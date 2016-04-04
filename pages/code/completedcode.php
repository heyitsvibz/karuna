<?php 
// code this better as it shouldn't require a file for the small function
session_start();
$_SESSION["username"];
require '../db.php';
if(!$conn)
{echo "not connected";}


//mysql_real_escape_string helps to maintain color and syntax of mysql statments
foreach($_POST['boxuid'] as $interest) {

$sql = "UPDATE `data_set` SET `STATUS` = 'Pending' WHERE `data_set`.`ID` = ".$interest;
$sql1 = "UPDATE `data_set` SET `allotted` = '' WHERE `data_set`.`ID` = ".$interest;

if(!mysqli_query($conn,$sql))
	{ echo "not updated status";
	}
		else
	{}

if(!mysqli_query($conn,$sql1))
	{ echo "not inserted manager";
	}
		else
	{}
}
	header( "refresh:0; url=../completed.php");

?>