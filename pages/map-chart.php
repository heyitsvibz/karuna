<?php
session_start();
//empty 
$_SESSION["username"];
$_SESSION["password"];
//redirection for security reasons 
if (!$_SESSION["username"]) {
    header("location: login.php");}
//converting DB values into json
require 'db.php';
if (mysqli_connect_errno())
  {  echo "Failed to connect to MySQL: status chart php page " . mysqli_connect_error();  }
$select = mysqli_query( $conn,"SELECT NAME,LONGI,LAT FROM data_set WHERE `data_set`.`STATUS` = 'Pending'");   
while($row = mysqli_fetch_array($select)) 
{
    $rows[]= array('name'=>$row['NAME'],'longi'=>$row['LONGI'],'lat'=>$row['LAT']);
}
//below echo will display json on top on the page
//echo json_encode($rows);
//json registry, refresh and rewrite every time
$myfile1 = fopen("location_file.json", "w+") or die("Unable");
$txt1 = json_encode($rows);
fwrite($myfile1, $txt1);
fclose($myfile1);

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <title>PENDING LOCATIONS</title>
    <script src=\"http://maps.google.com/maps/api/js?key=AIzaSyCM3_dhibJANDDCEWyXhpqYrvW9Y3EFa90\" type=\"text/javascript\"></script>
    <script src=\"assets/js/jquery.js\"></script>
     ";
require ('template/css.php');
echo "
    </head>
  <body>
";
  ///////////////////////////for the privilege section /////////////////////
    if ($_SESSION["username"] == 'admin' ) {
              require 'template/dash-part.php';//DADDY !
    } 
    else  {   require 'template/dash-part-public.php';}//public user
    ?>

        <div id="page-wrapper">
            <div class="row">
     <div class="add-admin-margin">
     <div id="map" style="height: 600px; "></div>

</div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                  
                   
                    <!-- /.panel -->
<script>

    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 11,
      center: new google.maps.LatLng(28.6139, 77.2090),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    var infowindow = new google.maps.InfoWindow();
    var marker, i,j,k;

 $.getJSON('location_file.json', function(data) {
   var locations = [];
   for(var i in data)
{
    locations.push([data[i].name,data[i].longi,data[i].lat]);
 }   
console.log(locations);
    
    

    //---------------------- mapped NGO's points -------------------------
    <?php require 'template/goonj.php'; ?>
    //---------------------- transit layers turned off -------------------
    //var transitLayer = new google.maps.TransitLayer();
    // transitLayer.setMap(map);
    //-----------------------request markers -----------------------------

    for (i = 0; i < locations.length; i++) { 
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map,
        animation: google.maps.Animation.DROP
      });

      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]);
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
     });
    
  </script>
    <!-- jQuery -->
       <?php require 'template/js.php'; ?>
    
</body>

</html>
