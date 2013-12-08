<!doctype html>
<?php
  // Remember to copy files from the SDK's src/ directory to a
  // directory in your application on the server, such as php-sdk/
  require_once('php-sdk/src/facebook.php');
  $config = array(
    'appId' => '188647124563048',
    'secret' => 'dd9e0b9c9ee31990f0f12744fe88892d',
	'cookie' => true
  );

  $facebook = new Facebook($config);
  $user_id = $facebook->getUser(); 
  $params = array('scope' => 'user_status,publish_stream,user_photos,email');
?>
<html lang="en-gb">
<head>
  <meta charset="utf-8" />
  <title>2013 Photo Buddy</title>
  <!-- <meta name="apple-mobile-web-app-capable" content="yes" /> -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">  
  <script type="text/javascript" src="/pbuddy1/resources/js/jquery-1.8.2.min.js"></script>
  <link rel="stylesheet" href="/pbuddy1/Resources/CSS/main.css" />
  <link rel="stylesheet" href="/pbuddy1/Resources/CSS/reset.css" />
  </head>
<body>
<?php
include 'header.php';
?>

<div id="wrapper">
<?php
	if(isset($user_profile))
	{
	echo "<script>\n";
	echo "var photoDetail = '".$user_profile."'";
	echo "</script>\n";
	include 'rating.php';
	}
	else
	{
	echo "<div class='mask'><ul class='images'></ul></div>";	
	}
?>	  
</div>
</div> 

<script type="text/javascript">
var imagesDetails, target=0;
$(document).ready(function(){
if(typeof photoDetail !=='undefined')
{
var userDetail = $.parseJSON(photoDetail);
//window.location = '//pbuddy1/insert.php?task=insertUser&name='+userDetail.name+'&sex='+userDetail.gender+'&userid='+userDetail.id+'&geo='+userDetail.location.name+'&email='+userDetail.email;
$.ajax({
url: '/pbuddy1/insert.php?task=insertUser&name='+userDetail.name+'&sex='+userDetail.gender+'&userid='+userDetail.id+'&geo='+userDetail.hometown.name+'&email='+userDetail.email+'&age='+userDetail.age_range.min,
type: "GET",
						dataType: "html",
						success: function(data)
						{
						   //alert(data); // alert on success
						}
						});
getandInsertPhotosData();
}
else
{
getTop5PhotosData();
}
var timingRun = setInterval(function() { sliderResponse(); },2500);

});
function sliderResponse() {
var images = $('ul.images li');
     images.fadeOut(1100).eq(target).fadeIn(1100);
    target++;
	if(target== images.length)
	{
		target=0;
	}
}

function getTop5PhotosData()
{
$.ajax({
						url: '/pbuddy1/insert.php?task=getTop5Details',													
						type: "GET",
						dataType: "html",
						success: function(data)
						{
						imagesDetails = $.parseJSON(data);
						bindPhotoDetails();
						}
						});
}
function bindPhotoDetails()
{
for( x=0;x<imagesDetails.length;x++)
						   {
								if( typeof imagesDetails[x] != 'undefined')
								{
								var HTML = "<img id='photo"+x+"' src='"+imagesDetails[x].photo_url+"'/><span>Current Photo Rating:"+imagesDetails[x].avg_rating+"/10</span>";	
								$(document.createElement('li')).html(HTML).appendTo('div.mask ul.images');
								}
						   }
}
</script>
 </body>
</html>