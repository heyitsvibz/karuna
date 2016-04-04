<?php
session_start();
$_SESSION["username"];
$_SESSION["password"];
if (!$_SESSION["username"]) {
    header("location: login.php");
}
//-------------------------------------------------
echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <title>Status Change</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">";
require 'template/css.php';
echo "</head>
<body>";
require 'template/dash-part.php';
?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-8">
                    <h1 class="page-header">Completed</h1>
                </div>
                <!-- /.col-lg-6 -->
            
                <div class="col-lg-4 stat_update_action">
                   
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <div class="row">
            
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> Pending    
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

<?php
if (mysqli_connect_errno())
  {  echo "Failed to connect to MySQL: " . mysqli_connect_error();  }
require 'db.php';
$sql = "SELECT * FROM data_set Where STATUS = 'Done'";
$retval = mysqli_query( $conn,$sql );

 

 if(! $retval ) {
      die('Could not load data: retval error' . mysql_error());
   }
  
  echo "
    <form action=\"code/completedcode.php\" id=\"myform11\" method=\"POST\" class=\"form\" role=\"form\">

    <table id=\"myTable\" class=\"table table-striped\">
    <thead>
      <tr>
        <th>TCK</th>
        <th>UID</th>
        <th>Name</th>
        <th>Contact</th>
        <th>Location</th>
        <th>Alloted Admin</th>
        
      </tr>
    </thead>
    <tbody>"; 

   while($row = mysqli_fetch_assoc($retval)) {
           
                      
             echo "<tr><td><input type=\"checkbox\" name=\"boxuid[]\" value=\"{$row['ID']}\"></td>".
              "<td>{$row['ID']}</td> ".
              "<td>{$row['NAME']}</td> ".
              "<td>{$row['PHONE']}</td> ".
              "<td>{$row['LOCALITY']}</td>".
              "<td>{$row['Allotted']}</td></tr>";                      
   }
   
   

   echo "  </tbody> </table> 
   <input type=\"submit\" value=\"UNSET\" class=\"btn btn-danger\">

   </div>
                        </div>
                    </div>
                </div>
               
            ";



        echo"   
            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
";
mysqli_close($conn);
?>        
                   
                    <!-- /.panel -->
              

      <?php require 'template/js.php'; ?>
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
        $('#myTable').DataTable();
        });
    </script>    
</body>

</html>
