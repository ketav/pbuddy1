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
  <title>Profile</title>
<script type="text/javascript" src="/pbuddy1/resources/js/jquery-1.8.2.min.js"></script> 
  <script type="text/javascript" src="/pbuddy1/resources/js/jquery.colorbox-min.js"></script>
<link rel="stylesheet" href="/pbuddy1/Resources/CSS/main.css" />
<link rel="stylesheet" href="/pbuddy1/Resources/CSS/reset.css" />
  <link rel="stylesheet" type="text/css" href="/pbuddy1/resources/css/colorbox.css" /
</head>

 <body id="homePageDesign">
 <?php
include 'header.php';
?>
 <?php
		echo "<script>\n";
		echo "var userID='".$user_id."'";
		echo  "</script>\n";
?>
    <div class="profilecontainer">	
		<h4>MY PROFILE</h4>
		<div class="profileForm">
		<h5>My Information:</h5>
		<form name="profileForm" id="profileForm" method="post">
		<ul>
		<li>
		<div class="registerFildsColumn"><label>Email:</label><span><input class="registerFields" type="email" id="email" name="email"></span></div>
		<div class="registerFildsColumn"><label>Name:</label><span><input class="registerFields" type="text" id="name" name="name"></span></div>
		</li>
		<li>
		<div class="registerFildsColumn"><label>Address:</label><span><input class="registerFields" type="text" id="address" name="address"></span></div>
		<div class="registerFildsColumn"><label>Age:</label><span><input class="registerFields" type="number" id="age" name="age"></span></div>
		</li>
		<li><label>Gender:</label>
		<table><tbody><tr>
		<td><input type="radio" checked="checked" value="M" name="gender" id="genderMale"><label>Male</label></td>
		<td><input type="radio" checked="false" value="F" name="gender" id="genderFemale"><label>Female</label></td>
		</tr></tbody></table>
		</li>
		<li><input type="button" id="edit" value="Edit"/><input type="button" id="submit" value="Submit"/></li>
		</ul>
		</form>
		</div>
		<div class="photos">
		<ul class="bxslider polaroids large-block-grid-4">
		</ul>
		</div>		
	</div><!-- container -->
	<script type="text/javascript">	
	$( document ).ready(function() {
	//window.location='http://localhost/pbuddy1/insert.php?task=getUserDetails&userId='+userID;
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
									$('#email').val(userDetails[x].email_id);
									$('#email').attr('disabled', true)
									$('#name').val(userDetails[x].name);
									$('#name').attr('disabled', true);
									$('#age').val(userDetails[x].age);
									$('#age').attr('disabled', true);
									$('#address').val(userDetails[x].geography);
									$('#address').attr('disabled', true);
									if(userDetails[x].sex=="m"){
									$('#genderMale').attr('checked', 'checked');
									$('#genderFemale').attr('checked', false);
									}
									else{
									$('#genderFemale').attr('checked', 'checked');
									$('#genderMale').attr('checked', false);
									}
									var HTML = "<a class='clickHereforLightbox' data-href='remove_popup.php?userId="+userID+"&photoID="+userDetails[x].photo_id+"' title='Rating:"+userDetails[x].avg_rating+"'><img style='width:100px; height:100px;' id='photo"+x+"' src='"+userDetails[x].photo_url+"'/></a>";	
									$(document.createElement('li')).html(HTML).appendTo('div.photos ul.bxslider');
								}
						   }
			$(".clickHereforLightbox").click(function()
			{	
			var elem=$(this);
			$.colorbox({href:elem.attr('data-href'),width:'450px',height:'580px',scrolling:false});	
			});				   
						}						
						});	
						
$('#edit').click(function(){
$('#name').attr('disabled',false);
$('#gender').attr('disabled',false);
$('#address').attr('disabled',false);
});					
$('#submit').click(function(){
var name=$('#name').val();
var gender;
if($('#genderMale').attr('checked') == 'checked')
gender='m';
else
gender='f';
var address=$('#address').val();
$.ajax({
						url: '/pbuddy1/insert.php?task=updateUserDetails&userId='+userID+'&name='+name+'&gender='+gender+'&address='+address,						
						type: "GET",
						dataType: "html",
						success: function(data)
						{
						$('#name').attr('disabled',true);
						$('#gender').attr('disabled',true);
						$('#address').attr('disabled',true);
						alert('Info Update');						
						}
		});	
	});
});
</script>
</body>
</html>

