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
    <title>Tasks</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">

    ";

require 'template/css.php';
echo "</head>
<body>";
require 'template/dash-part-public.php';

?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-8">
                    <h1 class="page-header">Pending Tasks @<?php echo $_SESSION["username"]; ?></h1>
                </div>
                <!-- /.col-lg-6 -->
            
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
$a = $_SESSION["username"]; 
 $pql = "SELECT club from cred where username = '$a' ";
 $retv2 = mysqli_query( $conn,$pql );
 if(! $retv2 ) {      die('Could not load data: retv2 error' . mysql_error());   }
 $d;
 while($row = mysqli_fetch_assoc($retv2)) 
  { $d="{$row['club']}";
}


$sql = "SELECT * FROM data_set where Pincode = '$d' and Status = 'Pending'";
$retval = mysqli_query( $conn,$sql );


 if(! $retval ) {
      die('Could not load data: retval error' . mysql_error());
   }


  echo "
    <form action=\"code/e_user_task_complete.php\" id=\"myform11\" method=\"POST\" class=\"form\" role=\"form\">

  <table id=\"myTable\" class=\"table table-striped\">
    <thead>
      <tr>
        <th>CHK</th>
        <th>NAME</th>
        <th>Cell</th>
        <th>Commodity</th>
        <th>Pincode</th>
        <th>Msg</th>
      </tr>
    </thead>

     

    <tbody>

    "; 





   while($row = mysqli_fetch_assoc($retval)) {
           
                      
             echo "<tr><td><input type=\"checkbox\" name=\"boxuid[]\" value=\"{$row['ID']}\" ></td> ".
              "<td>{$row['NAME']}</td> ".
              "<td>{$row['PHONE']}</td> ".
              "<td>{$row['HELP']}</td> ".
              "<td>{$row['PINCODE']}</td>".
              "<td>{$row['MESSAGE']}</td></tr> ";
             
   }
   
   

   echo "  </tbody> 
     
       

   </table> 
<input type=\"submit\" value=\"set done\" class=\"btn btn-success\"> 
 </form> 
   </div>
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
