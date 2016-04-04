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
$select = mysqli_query( $conn,"SELECT NAME,LONGI,LAT FROM data_set ");   
while($row = mysqli_fetch_array($select)) 
{
    $rows[]= array('name'=>$row['NAME'],'longi'=>$row['LONGI'],'lat'=>$row['LAT']);
}
//below echo will display json on top on the page
//echo json_encode($rows);
//json registry, refresh and rewrite every time
$myfile1 = fopen("json/heatmap.json", "w+") or die("Unable");
$txt1 = json_encode($rows);
fwrite($myfile1, $txt1);
fclose($myfile1);

echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <title>HEATMAP</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">

    <script src=\"https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=visualization\"></script>
       <script src=\"assets/js/jquery.js\"></script>
    ";
require ('template/css.php');
echo "
    </head>
  <body>
";


    if ($_SESSION["username"] == 'user' ) {
    require 'template/dash-part-public.php';//public user
    }
    elseif ($_SESSION["username"] == 'admin' ) {
              require 'template/dash-part.php';
    } 
    else  {   require 'template/dash-part-private.php'; }

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
 var map, pointarray, heatmap;

  var mapOptions = {
    zoom: 11,
    center: new google.maps.LatLng(28.6139, 77.2090),
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };

  map = new google.maps.Map(document.getElementById('map'),
    mapOptions);


  heatmap = new google.maps.visualization.HeatmapLayer({
    data: []
  });

  heatmap.setMap(map);

  heatmap.setMap(null);
  var jsonArray = [];
  var data = [

  ];
   $.ajax({
      url : "json/heatmap.json",
      type : "GET",
      data : "",
      contentType : "application/json; charset=utf-8",
      dataType : "json",
      success : function(data) { 
  $.each(data, function(i, jsondata) {
    var jsonObject = {};
    jsonObject.xcoord = jsondata.longi;
    jsonObject.ycoord = jsondata.lat;
    jsonArray.push(new google.maps.LatLng(jsonObject.xcoord, jsonObject.ycoord));
  });
  var pointArray = new google.maps.MVCArray(jsonArray);
  heatmap.setData(pointArray);
  heatmap.setMap(map);
      }
   }); 

  </script>
    <!-- jQuery -->
        <?php require 'template/js.php'; ?>
    
</body>

</html>
