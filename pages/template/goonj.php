<?php echo"    

 $.getJSON('json/goonj.json', function(data) {
   var goonj = [];
   for(var j in data)
{    goonj.push([data[j].lat,data[j].lon,data[j].name]); }   
console.log(goonj);

    for (k = 0; k < goonj.length; k++) { 
    console.log('for entry');
    var m2 = new google.maps.Marker({
                position: new google.maps.LatLng(goonj[k][0], goonj[k][1]),
                map: map,
                icon: {path: google.maps.SymbolPath.CIRCLE, strokeColor: \"green\", scale: 3 }  });
       

    google.maps.event.addListener(m2, 'click', (function(m2,k) {
        return function() {
                 $.ajax({  
                url: 'json/goonj.json',  
                success: function(data) {  
                    infowindow.setContent(data[k].name);
                    infowindow.open(map, m2);
                    console.log('clicked elem number'+k);
                    }  
                });  
             
        }
      })(m2, k)); 
    } //for loop end

});
";
?>