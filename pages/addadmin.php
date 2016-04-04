<?php
session_start();
//empty 
$_SESSION["username"];
$_SESSION["password"];
//redirection for security reasons 
if (!$_SESSION["username"]) {
    header("location: login.php");
}

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <title>Add Admin</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">";
require 'template/css.php';
echo"</head>
<body>";

  require 'template/dash-part.php';
  ?>

        <div id="page-wrapper">
            
                                            
  <div class="jumbotron blannk">
  <div class="row">
    <div class="text-center">
     <h2>Add Deputy Admins !</h2>
    </div>

    <form action="code/addadmincode.php" method="POST" class="form" role="form" enctype="multipart/form-data">
                          
                              <div class="form-group">
                                <div class="row">
                                <div class="col-lg-offset-2 col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                  <input type="text" class="form-control " id="add-name" name="add-name" placeholder="Your Name" required="required">
                                </div>
                                
                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                  <input type="email" class="form-control" id="add-email" name="add-email" placeholder="E-mail - for reset purposes">
                                </div>

                                </div>
                                <div class="row">
                                <div class="col-lg-offset-2 col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                  <input type="text" class="form-control" id="add-usn" name="add-usn" placeholder="Username">
                                </div>
                           
                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                  <input type="password" class="form-control" id="add-pass" name="add-pass" placeholder="Password">
                                </div>
                                </div>

                                <div class="row">
                                <div class="col-lg-offset-2 col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                  <input type="text" class="form-control" id="add-cell" name="add-cell" placeholder="Mobile">
                                </div>
                           
                                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                  <input type="password" class="form-control" id="add-club" name="add-club" placeholder="pin code">
                                </div>
                                </div>

                                  <div class="row">
                                    <div class="center-block">
                                        <button type="submit" id="singlebutton" name="singlebutton" class="btn btn-success center-block fixadd-admin">ADD</button>
                                    </div>  
                                  </div>
                                
                              </div><!-- form-group ends-->
  </form>  
  </div>

  


                        </div>
                        <!-- /.panel-body -->
                    </div>
                  
                   
                    <!-- /.panel -->
              

    <!-- jQuery -->
       <?php require 'template/js.php'; ?>
    
    
</body>

</html>
