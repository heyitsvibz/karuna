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
                    <h1 class="page-header">All Users List</h1>
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
                            <i class="fa fa-bar-chart-o fa-fw"></i> All User Listing     
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

<?php
if (mysqli_connect_errno())
  {  echo "Failed to connect to MySQL: " . mysqli_connect_error();  }
require 'db.php';
$sql = "SELECT * FROM cred";
$retval = mysqli_query( $conn,$sql );

 

 if(! $retval ) {
      die('Could not load data: retval error' . mysql_error());
   }
  
  echo "
  <form action=\"code/adminlistdeletecode.php\" id=\"myform71\" method=\"POST\" class=\"form\" role=\"form\">

  <table id=\"myTable\" class=\"table table-striped\">
    <thead>
      <tr>
        <th>TCK</th>
        <th>UID</th>
        <th>Username</th>
        <th>NAME</th>
        <th>Cell</th>
        <th>Alloted PIN</th>
      </tr>
    </thead>
    <tbody>"; 

   while($row = mysqli_fetch_assoc($retval)) {
           
                      
             echo "<tr><td><input type=\"checkbox\" name=\"boxuid\" value=\"{$row['UID']}\" ></td>".
              "<td>{$row['UID']}</td> ".
              "<td>{$row['username']}</td> ".
              "<td>{$row['name']}</td> ".
              "<td>{$row['cell']}</td> ".
              "<td>{$row['club']}</td>";
             
   }
   
   

   echo "  </tbody> </table> 
   <input type=\"submit\" value=\"Delete\" class=\"btn btn-danger\"> 
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
