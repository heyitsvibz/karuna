<?php
session_start();
//empty 
$_SESSION["username"];
$_SESSION["password"];
//redirection for security reasons 
if (!$_SESSION["username"]) {
    header("location: login.php");
}

//log registry
date_default_timezone_set('asia/kolkata');
$myfile = fopen("login/logfile.txt", "a+") or die("Unable to open log file!");
$txt = "\nUser : ".$_SESSION["username"]." IN ". date("Y/m/d") ." + ".date("h:i:sa");
fwrite($myfile, $txt);
fclose($myfile);


echo "
<!DOCTYPE html>
<html lang=\"en\">
<head>
<title>Dashboard</title>
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">";
require 'template/css.php';
echo"</head>
<body>";

///////////////////////////for the privilege section /////////////////////
    if ($_SESSION["username"] == 'admin' ) {
              require 'template/dash-part.php';//DADDY !
    } 
    else  {   require 'template/dash-part-public.php';}//public user
///////////////////////////  firse for the color button
$d=0;$p=0;
                    require 'db.php';
                    if (mysqli_connect_errno()){   mysqli_connect_error();  }
                    $select = mysqli_query( $conn,'SELECT * FROM data_set');   
                    while($row = mysqli_fetch_array($select)) 
                    {
                        if($row['STATUS'] == 'Done')
                        {++$d;}else{++$p;}
                    }
///////////////////////////  firse for the color button




   echo"<div id=\"page-wrapper\">

           
     <!-- sweet buttons -->
<div class=\"row\" style=\"padding-top : 15px\">

<div class=\"row col-lg-8 hidden-xs hidden-sm \">
        <div class=\"row \">
                <div class=\"col-lg-6 hidden-xs hidden-sm \">
                    <div class=\"panel panel-primary\">
                        <div class=\"panel-heading\">
                            <div class=\"row\">
                                <div class=\"col-xs-3\">
                                    <i class=\"fa fa-steam fa-5x\"></i>
                                </div>
                                <div class=\"col-xs-9 text-right\">
                                    <div class=\"huge\">OK</div>
                                    <div>Server Status</div>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
                <div class=\"col-lg-6 hidden-xs hidden-sm \">
                    <div class=\"panel panel-green\">
                        <div class=\"panel-heading\">
                            <div class=\"row\">
                                <div class=\"col-xs-3\">
                                    <i class=\" hidden-xs hidden-sm fa fa-check fa-5x\"></i>
                                </div>
                                <div class=\"col-xs-9 text-right\">
                                    <div class=\"huge\"> $d </div>
                                    <div>Achievements</div>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
        </div>

        <div class=\"row\">
        <div class=\"col-lg-6 hidden-xs hidden-sm \">
                    <div class=\"panel panel-yellow\">
                        <div class=\"panel-heading\">
                            <div class=\"row\">
                                <div class=\"col-xs-3\">
                                    <i class=\"hidden-xs hidden-sm fa fa-pencil fa-5x\"></i>
                                </div>
                                <div class=\"col-xs-9 text-right\">
                                    <div class=\"huge\">$p</div>
                                    <div>New Request!</div>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
                <div class=\"col-lg-6 hidden-xs hidden-sm \">
                    <div class=\"panel panel-red\">
                        <div class=\"panel-heading\">
                            <div class=\"row\">
                                <div class=\"col-xs-3\">
                                    <i class=\"hidden-xs hidden-sm fa fa-ticket fa-5x\"></i>
                                </div>
                                <div class=\"col-xs-9 text-right\">
                                    <div class=\"huge\">17c</div>
                                    <div>Support Ticket!</div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>
        </div>
</div>
      
      <div class=\"row col-lg-4 hidden-xs hidden-sm \" style=\"margin-left : 30px\">
                    <div class=\"panel panel-default\">
                        <div class=\"panel-heading\">
                            <i class=\"fa fa-bell fa-fw\"></i> Notifications Panel
                        </div>
                        <!-- /.panel-heading -->
                        <div class=\"panel-body\">
                            <div class=\"list-group\">
                                <a href=\"#\" class=\"list-group-item\">
                                    <i class=\"fa fa-comment fa-fw\"></i> Last Request
                                    <span class=\"pull-right text-muted small\"><em>4 minutes ago</em>
                                    </span>
                                </a>
                                <a href=\"#\" class=\"list-group-item\">
                                    <i class=\"fa fa-twitter fa-fw\"></i> Last login
                                    <span class=\"pull-right text-muted small\"><em>12 minutes ago</em>
                                    </span>
                                </a>
                                <a href=\"#\" class=\"list-group-item\">
                                    <i class=\"fa fa-envelope fa-fw\"></i> Server Uptime
                                    <span class=\"pull-right text-muted small\"><em>27 minutes ago</em>
                                    </span>
                                </a>
                                
                            </div>
                            <!-- /.list-group -->
                        </div>
                        <!-- /.panel-body -->
                    
                    <!-- /.panel -->
      </div>          
</div>
   <!-- sweet buttoms -->
            <!-- /.row -->
       <div class=\"row\">
                <div class=\"col-lg-12\">
                    <div class=\"panel panel-default\">
                        <div class=\"panel-heading\">
                            <i class=\"fa fa-bar-chart-o fa-fw\"></i> Feed    
                        </div>
                        <!-- /.panel-heading -->
                        <div class=\"panel-body\">
";

if (mysqli_connect_errno())
  {  echo "Failed to connect to MySQL: " . mysqli_connect_error();  }
require 'db.php';
$sql = "SELECT * FROM data_set";
$retval = mysqli_query( $conn,$sql );

 

 if(! $retval ) {
      die('Could not load data: retval error' . mysql_error());
   }
  
  echo "
  <table id=\"myTable\" class=\"table table-striped\">
    <thead>
      <tr>
        <th>UID</th>
        <th>Name</th>
        <th>Cell</th>
        <th>Location</th>
         <th>PIN code</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>"; 

   while($row = mysqli_fetch_assoc($retval)) {
          
                      
             echo "<tr><td>{$row['ID']}</td> ".
              "<td class=\"cur1\" data-toggle=\"tooltip\" data-placement=\"top\" 
              title=\"Msg : {$row['MESSAGE']} \nHelp : {$row['HELP']}\">
              {$row['NAME']} </td> ".
              "<td>{$row['PHONE']}</td> ".
              "<td>{$row['LOCALITY']}</td> ".
              "<td>{$row['PINCODE']}</td> ";
              if($row['STATUS'] == 'Pending')
              {
              echo"<td><div id=\"advanced\" class=\"circle pen-or\"></div></td>";
              }
                  else
              {            
              echo"<td><div id=\"advanced\" class=\"circle com-gr\"></div></td></tr>";
              }
   }
   
   echo "  </tbody> </table> </div>";
 mysqli_close($conn);
?>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                  
                   
                    <!-- /.panel -->
                </div>
              
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <?php require 'template/js.php'; ?>

    <!-- Custom Theme JavaScript -->
        
    
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
        $('#myTable').DataTable();
        });
    </script>

</body>

</html>