<?php
    if($user_id) {
	 $_SESSION['userId']=$user_id;
	$user_profile = $facebook->api('/me?fields=id,name,age_range,hometown,email,gender','GET');
	$search = Array('"',"'","\r","\n","\r\n","\n\r");
	$replace =Array('\"',"\'","","","","");
	$user_profile = str_replace($search,$replace,$user_profile);
    $user_profile = json_encode($user_profile);
    } else {
      // No user, print a link for the user to login
      $login_url = $facebook->getLoginUrl($params);     
    }
  ?>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=217734178406318";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="header">
				<a class="logoFig" title="Miko" href="/pbuddy/index.php">
					<figure><img title="Miko" alt="Miko" src="/pbuddy/Resources/Images/logo.png"></figure>
				</a>					
<div class="menu-bar">
				<ul>
					<li>
					 <?php
	  if($user_id)
	  {
	  echo('<a href="rating.php">RATE PHOTOS</a>');
	  }
	  else
	  {
	  echo('<a href="'.$login_url.'">RATE PHOTOS</a>');
	  }
	  ?>
					</li>
					<li>
					 <?php
	  if($user_id)
	  {
	  echo('<a href="rating.php">MY FRIENDS PHOTOS</a>');
	  }
	  else
	  {
	  echo('<a href="'.$login_url.'">MY FRIENDS PHOTOS</a>');
	  }
	  ?>
					</li>
					<li>
					 <?php
	  if($user_id)
	  {
	  echo('<a href="rating.php">UPLOAD YOUR PHOTO</a>');
	  }
	  else
	  {
	  echo('<a href="'.$login_url.'">UPLOAD YOUR PHOTO</a>');
	  }
	  ?>			</li>						
					<li>
					 <?php
	  if($user_id)
	  {
	  echo('<a href="rating.php">My Profile</a>');
	  }
	  else
	  {
	  echo('<a href="'.$login_url.'">LOGIN</a>');
	  }
	  ?>			</li>	
<li>
		<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
</li>					
				</ul>
</div>
</div>
<div id='contentWrapper'>
<h1 class="title">Check You Popularity. Upload Photos!!</h1>