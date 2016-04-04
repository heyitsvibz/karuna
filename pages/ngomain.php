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
    <title>NGO List</title>";
require 'template/css.php';
echo "</head>
<body>";
 ///////////////////////////for the privilege section /////////////////////
    if ($_SESSION["username"] == 'admin' ) {
              require 'template/dash-part.php';//DADDY !
    } 
    else  {   require 'template/dash-part-public.php';}//public user
  ?>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-8">
                    <h1 class="page-header">Ngo List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <div class="row">
            
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> csv to mysql     
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

<?php
if (mysqli_connect_errno())
  {  echo "Failed to connect to MySQL: " . mysqli_connect_error();  }
require 'db.php';
$sql = "SELECT * FROM ngolist ";
$retval = mysqli_query( $conn,$sql );

 

 if(! $retval ) {
      die('Could not load data: retval error' . mysql_error());
   }
  
  echo "<table id=\"myTable\" class=\"table table-striped\">
    <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Person to contact</th>
        <th>Phone</th>
      </tr>
    </thead>
    <tbody>"; 

   while($row = mysqli_fetch_assoc($retval)) {
           
                      
             echo "<tr><td>{$row['ID']}</td> ".
              "<td>{$row['Name']}</td> ".
              "<td>{$row['Address']}</td>".
              "<td>{$row['Person']}</td>".
              "<td>{$row['Phone']}</td></tr>";                      
             
   }
   
   

   echo "  </tbody> </table> </div>
                        </div>
                    </div>
                </div>
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
