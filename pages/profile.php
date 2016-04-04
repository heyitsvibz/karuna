<?php
session_start();
//empty 
$_SESSION["username"];
$uname = $_SESSION["username"];
$_SESSION["password"];
//redirection for security reasons 
if (!$_SESSION["username"]) {
    header("location: login.php");
}

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <title>User Profile</title>";
require 'template/css.php';
echo "</head>
<body>";
   if ($_SESSION["username"] == 'user' ) {
    require 'template/dash-part-public.php';//public user
    }
    elseif ($_SESSION["username"] == 'admin' ) {
              require 'template/dash-part.php';
    } 
    else  {   require 'template/dash-part-private.php'; }

if (mysqli_connect_errno())
  {  echo "Failed to connect to MySQL: " . mysqli_connect_error();  }
require 'db.php';
$sql = "SELECT * FROM cred where username= \"$uname\"";

$retval = mysqli_query( $conn,$sql );
 if(! $retval ) {
      die('Could not load data: retval error' . mysql_error());
   }
    while($row = mysqli_fetch_assoc($retval)) {
           
       echo" <div id=\"page-wrapper\">
            
                                            
  <div class=\"jumbotron blannk\">
  <div class=\"row\">
    <div class=\"text-center\">
     <h2>User Details</h2>
    </div>

    <form class=\"form\" role=\"form\">
     <div class=\"form-group\">
                                <div class=\"row\">
                                <div class=\"col-lg-offset-4 col-lg-4 col-md-4 col-sm-12 col-xs-12\">
                                  Name :  <input class=\"form-control\" id=\"disabledInput\" type=\"text\" placeholder= {$row['name']} disabled>
                                </div>
                                </div>

                                <div class=\"row\">
                                <div class=\"col-lg-offset-4 col-lg-4 col-md-4 col-sm-12 col-xs-12\">
                                 Username :  <input class=\"form-control\" id=\"disabledInput\" type=\"text\" placeholder={$row['username']} disabled>
                                </div>
                                </div>

                                <div class=\"row\">
                                <div class=\" col-lg-offset-4 col-lg-4 col-md-4 col-sm-12 col-xs-12\">
                                  Password :  <input class=\"form-control\" id=\"disabledInput\" type=\"text\" placeholder={$row['password']} disabled> 
                                </div>
                                <br>
                                   <button type=\"button\" style=\"margin-top:5px;\" class=\"btn btn-success\" data-toggle=\"modal\" data-target=\".bs-example-modal-md\">Update</button>
                                </div>

                                 <div class=\"row\">
                                <div class=\"col-lg-offset-4 col-lg-4 col-md-4 col-sm-12 col-xs-12\">
                                 Email :  <input class=\"form-control\" id=\"disabledInput\" type=\"text\" placeholder={$row['email']} disabled>
                                </div>
                                </div>

                                 <div class=\"row\">
                                <div class=\"col-lg-offset-4 col-lg-4 col-md-4 col-sm-12 col-xs-12\">
                                  Cell :   <input class=\"form-control\" id=\"disabledInput\" type=\"text\" placeholder={$row['cell']} disabled>
                                </div>
                                </div>

                                  <div class=\"row\">
                                <div class=\"col-lg-offset-4 col-lg-4 col-md-4 col-sm-12 col-xs-12\">
                                  Alloted Pin Codes :   <input class=\"form-control\" id=\"disabledInput\" type=\"text\" placeholder=\" hi\" disabled>
                                </div>
                                </div>
     </div>
   
    
    
   
    
   
    
    </form>   
  </div>

  


   </div>
                        <!-- /.panel-body -->
                    </div>
                  
                   
                    <!-- /page wrapper -->
    ";       
 }



  ?>

  <!-- Small modal -->


<div class="modal fade bs-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Update Password</h4>
      </div>
      <form action="code/passupdate.php" method="POST" class="form" role="form" enctype="multipart/form-data">
      <div class="modal-body">
             <div class="form-group">
            <label for="exampleInputPassword1">Enter your New Password Below : </label>
            <input type="password" class="form-control col-md-3" id="setpass" name="setpass" placeholder="Password">
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
    </form>
  </div>
</div>

    <!-- jQuery -->
        <?php require 'template/js.php'; ?>
    
</body>

</html>
