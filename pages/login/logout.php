<?php 
//logout log for user
session_start();
date_default_timezone_set('asia/kolkata');
$myfile = fopen("logfile.txt", "a+") or die("Unable to open log file!");
//echo fread($myfile,filesize("logfile.txt"));
$txt = " ".$_SESSION["username"]." OUT + ".date("h:i:sa");
fwrite($myfile, $txt);
fclose($myfile);




session_unset();
session_destroy();



?>

<script type="text/javascript">
   <!--
   window.location = "../login.php"
   //-->
</script>