<?php
    require '../db.php';

if(!$conn)
{echo "not connected";}

/////////////////////
$name = $_POST['add-name'];
$email = $_POST['add-email'];
$username = $_POST['add-usn'];
$password = $_POST['add-pass'];
$cell = $_POST['add-cell'];
$club = $_POST['add-club'];

$sql = "INSERT INTO cred(name,email,username,password,cell,club) VALUES('$name','$email','$username','$password','$cell','$club')";

if(!mysqli_query($conn,$sql))
	{ echo "not inserted last step";}
else
	{ }

header( "refresh:0; url=../adminlist.php");

mysqli_close($conn);
?>