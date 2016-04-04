<?php 
echo "<div id=\"wrapper\">

       <!-- Navigation -->
        <nav class=\"navbar navbar-default navbar-static-top\" role=\"navigation\" style=\"margin-bottom: 0\">
            <div class=\"navbar-header\">
                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">
                    <span class=\"sr-only\">Toggle navigation</span>
                    <span class=\"icon-bar\"></span>
                    <span class=\"icon-bar\"></span>
                    <span class=\"icon-bar\"></span>
                </button>
                <a class=\"navbar-brand\" href=\"dboard.php\">Admin Panel</a>
            </div>
            <!-- /.navbar-header -->

            <ul class=\"nav navbar-top-links navbar-right\">
               <li>"; echo $_SESSION["username"];
               echo "</li>
                <li class=\"dropdown\">
                    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">
                        <i class=\"fa fa-user fa-fw\"></i>  <i class=\"fa fa-caret-down\"></i>
                    </a>
                    <ul class=\"dropdown-menu dropdown-user\">
                        <li><a href=\"profile.php\"><i class=\"fa fa-gear fa-fw\"></i> Profile</a>
                        </li>
                        <li class=\"divider\"></li>
                        <li><a href=\"login/logout.php\"><i class=\"fa fa-sign-out fa-fw\"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->";
            
                    $d=0;$p=0;$c=0;
                    require './db.php';
                    if (mysqli_connect_errno()){   mysqli_connect_error();  }
                    $select = mysqli_query( $conn,'SELECT * FROM data_set');   
                    while($row = mysqli_fetch_array($select)) 
                    {
                        if($row['STATUS'] == 'Done')
                        {++$d;}else{++$p;}
                    }
                   

            echo "<div class=\"navbar-default sidebar\" role=\"navigation\">
                <div class=\"sidebar-nav navbar-collapse\">
                    <ul class=\"nav\" id=\"side-menu\">
                     
                        <li>
                            <a href=\"dboard.php\"><i class=\"fa fa-certificate fa-fw\"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href=\"completed.php\"><i class=\"fa fa-thumbs-o-up fa-fw\"></i>Completed<span class=\"badge notif\"> $d </span></a>
                        </li>

                        <li>
                            <a href=\"pending.php\"><i class=\"fa fa-unlock-alt fa-fw\"></i>Pending <span class=\"badge notif\"> $p</span></a>
                        </li>
                        <li>
                            <a href=\"ngomain.php\"><i class=\"fa fa-list fa-fw\"></i> NGO List</a>
                        </li>
                        <li>
                            <a href=\"map-chart.php\"><i class=\"fa fa-key fa-fw\"></i> API</a>
                        </li>
                        <li>
                            <a href=\"heatmap.php\"><i class=\"fa fa-coffee fa-fw\"></i> HEAT map</a>
                        </li>
                        <li>
                            <a href=\"delhi.php\"><i class=\"fa fa-building fa-fw\"></i> Delhi Reference</a>
                        </li>
                        
                       
                       
                        <li>
                            <a href=\"#\"><i class=\"fa fa-cog fa-fw\"></i> Manage Admins<span class=\"fa arrow\"></span></a>
                            <ul class=\"nav nav-second-level\">
                                 <li>
                                    <a href=\"addadmin.php\"><i class=\"fa fa-microphone\"></i> Add Admins</a>
                                </li>
                                <li>
                                            <a href=\"adminlist.php\"><i class=\"fa fa-calculator \"></i> Admin List & Delete</a>
                                        </li>
                                
                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                 
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
";
?>
     