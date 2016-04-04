<?php
require 'pages/db.php';
if(!$conn)
{echo "not connected";}


if(isset($_POST['name1']))
{
$NAME=$_POST['name1'];
$LOCALITY=$_POST['loc1'];
$PHONE=$_POST['cell1'];
//$HELP=$_POST['option1'];
$PINCODE=$_POST['pin1'];
$MESSAGE=$_POST['msg1'];
$LAT=$_POST['lat1'];
$LONGI=$_POST['lon1'];

$sql = "INSERT INTO data_set(NAME,LOCALITY,PHONE,PINCODE,MESSAGE,LONGI,LAT) VALUES('$NAME','$LOCALITY','$PHONE','$PINCODE','$MESSAGE','$LONGI','$LAT')";

if(!mysqli_query($conn,$sql))
	{ echo "not inserted last step";}
else
header( "refresh:0; url=index.html");
}
?>