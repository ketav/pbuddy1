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
  $params = array('scope' => 'user_status,publish_stream,user_photos');
  parse_str($_SERVER['QUERY_STRING']);  
?>
<html>
 <head>
  <title>Select Photo</title>
  <script type="text/javascript" src="/pbuddy1/resources/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="/pbuddy1/resources/js/jquery.colorbox-min.js"></script>
  <link rel="stylesheet" type="text/css" href="/pbuddy1/resources/css/main.css" />
  <link rel="stylesheet" type="text/css" href="/pbuddy1/resources/css/reset.css" />
  <link rel="stylesheet" type="text/css" href="/pbuddy1/resources/css/colorbox.css" />
 </head>
 <body>
 <?php
include 'header.php';
 ?>
 <?php
    if($user_id) {
      // We have a user ID, so probably a logged in user.
      // If not, we'll get an exception, which we handle below.
      try {

        $photos = $facebook->api('/'.$id.'?fields=photos.fields(source)&limit=0 ','GET');
		echo "<script>\n";
		echo "var photos='".json_encode($photos)."';\n";
		echo "var idAlbum='".$id."';\n";
		echo "var userID='".$user_id."'";
		echo  "</script>\n";
		/*foreach ($photos['photos']['data'] as $photo) {
			echo '<img src="'.$photo['source'].'"/>';
		}*/
	
      } catch(FacebookApiException $e) {
        // If the user is logged out, you can have a 
        // user ID even though the access token is invalid.
        // In this case, we'll get an exception, so we'll
        // just ask the user to login again here.
        $login_url = $facebook->getLoginUrl($params); 
        echo 'Please <a href="' . $login_url . '">login.</a>';
        error_log($e->getType());
        error_log($e->getMessage());
      }   
    } else {
      // No user, print a link for the user to login
      $login_url = $facebook->getLoginUrl($params);
      echo 'Please <a href="' . $login_url . '">login.</a>';
    }
  ?>
  <div id='contentPage' class='text main upload' style="padding-bottom:30px;">
  <p>Upload Your Photo !!<br/>
	Select Photo to upload:
  </p>
  </div>
  	   <div id="Photos">
	<ul class="polaroids large-block-grid-4 masonry-container">
	</ul>
   </div>
  
		<script type="text/javascript">	
	$( document ).ready(function() {
		var raw_data = $.parseJSON(photos).photos.data;
		for ( item in raw_data)
		{
		   if(typeof raw_data[item].source === 'undefined')
		   {	
			raw_data.splice(item,1);
		   }
		} 	
		for ( x=0; x<raw_data.length;x++)
			{
			var HTML = "<a class='clickHereforLightbox' data-href='upload_popup.php?id="+idAlbum+"&photoId="+raw_data[x].id+"'><img  src='"+raw_data[x].source+"'data-large='"+raw_data[x].source+"' alt='" +raw_data[x].id+ "'/></a>"
			$(document.createElement('li')).html(HTML).appendTo("#Photos>ul.polaroids");
			}
			
	
			
			$(".clickHereforLightbox").click(function()
			{	
			var elem=$(this);
			$.colorbox({href:elem.attr('data-href'),width:'450px',height:'580px',scrolling:false});	
			$(document).bind('cbox_complete', function(){
			_gaq.push(['_trackPageview',elem.attr('data-href')]);
			$(document).unbind('cbox_complete');
			});
			
			}
			);
		});
		
		</script>
		<div class='htmldata' style='display:none;' >
		</div>
	 <?php 	include 'footer.php'; ?> </body>
</html>

