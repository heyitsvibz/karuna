<?php 
//-------------------------------------------------
if(isset($_GET['login_attempt']) && function_exists($_GET['login_attempt']))
call_user_func($_GET['login_attempt']);

else
{    // do nothing 
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <?php require 'template/css.php'; ?>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="login/checklogin.php" method="POST" class="form">
                        
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="username" name="username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="submit" value="submit" class="btn btn-lg btn-success btn-block">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <?php 
        function chklgn()
        {
           echo"
                    <div class=\"text-center\">
                      <div class=\"alert alert-danger\">
                           <strong>Wrong Credentials</strong> 
                           <p>Please check your login details again !</p>
                      </div>
                    </div>
               ";
        }
        ?>
    </div>

    <!-- jQuery -->
    <?php require 'template/js.php'; ?>

</body>

</html>
    