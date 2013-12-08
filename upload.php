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
?>
<html>
	<head>
		 <link rel="stylesheet" href="/pbuddy1/Resources/CSS/main.css" />
		 <link rel="stylesheet" href="/pbuddy1/Resources/CSS/reset.css" />
	
		<script src="Resources/js/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script src="Resources/js/masonry-docs.min.js" type="text/javascript"></script>

		
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
		$accessToken = $facebook->getAccessToken();
        $albums = $facebook->api('/me/albums?fields=id,cover_photo,name','GET');
		$pictures = array();
		echo "<script>\n";
		echo "var cover_photo='".json_encode($albums)."';\n";
		echo "var access_token='".$accessToken."';\n";
		echo  "</script>\n";
		/*foreach ($albums['data'] as $album) {
			//$pictures[$album['id']] = $album['cover_photo'];
			//echo '<a href="/pbuddy/albums.php?id='.$album['id'].'"><img src="https://graph.facebook.com/'.$album['cover_photo'].'/picture?access_token='.$accessToken.'" title="'.$album['id'].'"/><div>'.$album['name'].'</div></a>';
		}*/
		
		
		/*$pictures = array();
		foreach ($albums['data'] as $album) {
		$pics = $facebook->api('/'.$album['cover_photo'].'?fields=source,picture');
		$pictures[$album['id']] = $pics['data'];
		}

  //display the pictures url
  foreach ($pictures as $album) {
    //Inside each album
    foreach ($album as $image) {
      $output .= $image['source'] . '<br />';
    }
  }*/		
        //echo "Name: " . $user_profile['name'];

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
	Select Albums:
  </p>
  </div>
  <div id="albums">
  <ul class="polaroids large-block-grid-4 masonry-container">
   </ul>
   </div>

 		<script type="text/javascript" language="javascript">
		
		$( document ).ready(function() {		
		var raw_data = $.parseJSON(cover_photo).data;
		for ( item in raw_data)
		{
		   if(typeof raw_data[item].cover_photo === 'undefined')
		   {
			
			raw_data.splice(item,1);
		   }		   
		} 	
		for ( x=0; x<raw_data.length;x++)
			{
			var HTML = "<a class='item' title='"+raw_data[x].name+"' href='/pbuddy1/albums.php?id="+raw_data[x].id+"'><img src='https://graph.facebook.com/"+raw_data[x].cover_photo+"/picture?access_token="+access_token+"'/></a>"
			$( document.createElement('li')).html(HTML).appendTo("#albums>ul.polaroids");
			}
	/*	var container = document.querySelector('.masonry-container');
		var msnry = new Masonry( container, {
		  // options
		  
		  itemSelector: 'a.item'
		});*/
		$(".item").click(function()
		{
			console.log($(this).attr('href'));
		});
});
		</script>

 </body>
</html>

