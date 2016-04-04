<?php 
// code this better as it shouldn't require a file for the small function
session_start();
$_SESSION["username"];
require '../db.php';
if(!$conn)
{echo "not connected";}
//$id_num = $_POST['boxuid'];
$alotted_user = $_SESSION["username"];
//$alotted_user = mysql_real_escape_string($alotted_user);
//mysql_real_escape_string helps to maintain color and syntax of mysql statments

 foreach($_POST['boxuid'] as $interest) {
     //echo $interest;
 	 //$sql = "UPDATE `data_set` SET `STATUS` = 'Done' WHERE `data_set`.`ID` = ".$interest;
 	$sql = "UPDATE `data_set` SET `STATUS` = 'Done' WHERE `data_set`.`ID` = ".$interest;
	$sql1 = "UPDATE `data_set` SET `allotted` = '$alotted_user' WHERE `data_set`.`ID` = ".$interest;

 	 if(!mysqli_query($conn,$sql))
	{ echo "pendingcode error";
	}

	else
	{}

	if(!mysqli_query($conn,$sql1))
	{ echo "pendingcode error";
	}

	else
	{}
}


	header( "refresh:0; url=../pending.php");
?>