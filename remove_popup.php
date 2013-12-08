<html>
 <head>
  <title>Remove Photo Popup</title>
  <script type="text/javascript" src="/pbuddy1/resources/js/jquery-1.8.2.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/pbuddy1/resources/css/main.css" />
  <link rel="stylesheet" type="text/css" href="/pbuddy1/resources/css/reset.css" />
 </head>
 <body>
 <?php
 parse_str($_SERVER['QUERY_STRING']);
 echo "<script>\n";
 echo "var userID='".$userId."'";
 echo  "</script>";
 ?>
 <div id="wrapper">
   	<div class="carouselPhotos">
	<ul class="bxslider">
	</ul>
	<input type="button" id="remove" value="Remove Photo"/>
   </div> 
   <div class="resultBox" style="display:none;">
   <p>This photo is now removed from our site. Nobody will be able to rate this photo now.</p>
   <a href="#" title="Rate Photos">Rate Photos</a>
   <a href="#" title="My Profile">My Profile</a>
   </div>   
 </div>
		<script type="text/javascript">	
	$( document ).ready(function() {
					  $.ajax({
						url: '/pbuddy1/insert.php?task=getUserDetails&userId='+userID,						
						type: "GET",
						dataType: "html",
						success: function(data)
						{
						   var userDetails = $.parseJSON(data);
						   for( x=0;x<5;x++)
						   {								
								if( typeof userDetails[x] != 'undefined')
								{									
									var HTML = "<img style='width:100px; height:100px;' data-imageid='"+userDetails[x].photo_id+"' id='photo"+x+"' src='"+userDetails[x].photo_url+"'/><span>Rating:"+userDetails[x].avg_rating+"/10</span><span>Total Votes:"+userDetails[x].rating_received+"/10</span>";	
									$(document.createElement('li')).html(HTML).appendTo('div.carouselPhotos ul.bxslider');
								}
						   }
						}						   
						});	
        });
		
		$('#remove').click(function(){
		var photoId = $('#photo1').attr('data-imageid');
		$.ajax({
						url: '/pbuddy1/insert.php?task=removeUserphoto&photoId='+photoId,						
						type: "GET",
						dataType: "html",
						success: function(data)
						{
						   $('.carouselPhotos').css("display", "none");
						   $('.resultBox').css("display", "block");
						}						   
						});	
		});
		</script>
 </body>
</html>

