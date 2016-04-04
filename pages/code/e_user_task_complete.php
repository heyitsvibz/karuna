<?php 
session_start();
$_SESSION["username"];
require '../db.php';
if(!$conn)
{echo "not connected";}
//////////////////////////////////////

 foreach($_POST['boxuid'] as $interest) {
     //echo $interest;
 	 $sql = "UPDATE `data_set` SET `STATUS` = 'Done' WHERE `data_set`.`ID` = ".$interest;

 	 if(!mysqli_query($conn,$sql))
	{ echo "pendingcode error";
	}

	else
	{}
}




header( "refresh:0; url=../e_user_task.php");

?>