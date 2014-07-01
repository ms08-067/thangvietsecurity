<?php


/**
 * $Id: default.php 11917 2009-05-29 19:37:05Z ian $
 */
defined( '_JEXEC' ) or die( 'Restricted access' );
?>

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBafo8dipw1uoD4NvCaupjCeJ2nJzmRdF4&sensor=true"></script>
		
	    <script type="text/javascript">
		  var add = "";	
		  //add .= "<div style='width: 380px; height: 110px;font-family: arial;'><strong>Phòng Khánh tiết, lầu 7, Khách sạn Windsor </strong><br />18 An Dương Vương - Quận 5 - TP.HCM, Việt Nam  <br />Tel: (84.8) 3833 6688<br />Fax: (84.8) 3833 6888<br />E-mail: <a href='mailto:info@oktoberfestvietnam.com'>info@oktoberfestvietnam.com</a><br />Website: <a href='http://www.oktoberfestvietnam.com/'>www.oktoberfestvietnam.com</a></div>";	
		  var map;
		  var infowindow0;
		  function initialize() {
	        var myLatlng = new google.maps.LatLng(10.757731,106.673286);
			var myOptions = {
	         
			center: new google.maps.LatLng(10.758996,106.673897),
	         
			  zoom: 17,
	          mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
	        map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
			
			//var imgString = " <div class='iglr'><img src='http://oktoberfestvietnam.com/images/oktoberfestvietnam2013/wph_logo.jpg' width='68' height='55' border='0' align='left' /></div>";
			var contentString = "";
		    //var contentString = imgString + add ;
			infowindow0 = new google.maps.InfoWindow({
			    content: contentString
			});
			var image = 'http://oktoberfestvietnam.com/images/oktoberfestvietnam2013/logo_map.png';
			var marker = new google.maps.Marker({
			    position: myLatlng,
			    map: map,
				animation: google.maps.Animation.DROP,
			    title:"WMC Group",
				icon: image
			});
			
				infowindow0.open(n,marker);
			
			google.maps.event.addListener(marker, 'click', function() {
				infowindow.close();
				infowindow0.open(map,marker);
			});
			
			//setMarkers(map, beaches);
			
	      }
		  /*
		  function setMarkers(map, locations){
		  
		  	for (var i = 0; i < locations.length; i++) {
			    var beach = locations[i];
			    var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
			    var marker = new google.maps.Marker({
			        position: myLatLng,
			        map: map,
			        title: beach[0],
			        zIndex: beach[3]
			    });
				
				attachSecretMessage(marker, i);
				
			  }
		  }
		  */
		  /*
		  var infowindow = new google.maps.InfoWindow({size: new google.maps.Size(70,50)});
		  
		  function attachSecretMessage(marker, number) {
			 
			  google.maps.event.addListener(marker, 'click', function() {
			  	infowindow0.close();
				
			    var contentString = '<div class="iglr"></div><strong>'+beach[0]+'</strong><br />'+beach[4]+'<br />Tel: '+beach[5];
			    infowindow.setContent(contentString);
				infowindow.open(map,marker);
			  });
			  
			}
			*/
		  
	    </script>
	<script>
		jQuery(function(){
			jQuery(window).load(function() {
				initialize();
			});
		});
	</script>
<div class="fleft" id="map_canvas"></div> 

<style>
	div#map_canvas .iglr img {
		margin-right: 5px;
	}
	div#map_canvas {
		width: 98%; height:366px; 
		margin: 10px 13px 13px;
		float: left;
		border: 2px solid #AAD4DD;
		border-radius: 5px;
	}
	div#map_canvas {
		color: #000000;
		text-align: left;	
	}		
</style>