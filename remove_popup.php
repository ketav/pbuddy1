<html>
 <head>
  <title>Remove Photo Popup</title>
 </head>
 <body>
 <?php
 parse_str($_SERVER['QUERY_STRING']);
 echo "<script>\n";
 echo "var userID='".$userId."';";
echo "var photoId='".$photoID."';";
 echo  "</script>";
 ?>
 <div id="PhotosUpload">
	<a href='#'id='prev' style="position:relative; top: 50%; left: 0px;"><img src="/pbuddy1/resources/images/go_previous.png"  /></a>
	<a href='#' id='next' style="position:relative; top: 50%; left: 88%;"><img src="/pbuddy1/resources/images/go_next.png" /></a>
	<button type="button" id="remove" class='uploadButton' style="position:relative;top:94%; left:17%;">Remove Photo</button> 
  </div>
   <div class="resultBox" style="display:none;">
   <p>This photo is now removed from our site. Nobody will be able to rate this photo now.</p>
   <a href="#" title="Rate Photos">Rate Photos</a>
   <a href="#" title="My Profile">My Profile</a>
   </div>   
 
		<script type="text/javascript">	
		var imgNav=0;
		var raw_data1;
	$( document ).ready(function() {
					  $.ajax({
						url: '/pbuddy1/insert.php?task=getUserDetails&userId='+userID,						
						type: "GET",
						dataType: "html",
						success: function(data)
						{
							var userDetails = $.parseJSON(data);
							for ( x=0; x<userDetails.length;x++)
							{
							if(userDetails[x].photo_id == photoId)
							{	
							$("div#PhotosUpload").attr("style","height:500px; width:400px;background-size: 100% 100%;background-image: url("+userDetails[x].photo_url+");");
							//var HTML = "<a  class='item' title='NA' href='"+raw_data[x].source+"'><img  src='"+raw_data[x].source+"' class='imagePopup' alt='" +raw_data[x].id+ "'/></a>"
							//$( document.createElement('img')).attr('src',raw_data[x].source).attr('class','imagePopup').attr('max-height','550').attr('max-width','400').appendTo("#Photos");
							imgNav=x;
							}

										 raw_data1= userDetails;

							}
						  
						}						   
						});	
        });
		
				$('#next').click(function()
		{
			imgNav++;
			if(imgNav>raw_data1.length-1)
			{
				imgNav=0;
			}
			
						$("div#PhotosUpload").attr("style","height:500px; width:400px;background-size: 100% 100%;background-image: url("+raw_data1[imgNav].photo_url+");");

		}
		);
		$('#prev').click(function()
		{
			imgNav--;
			if(imgNav<1)
			{
				imgNav=raw_data1.length-1;
			}
			$("div#PhotosUpload").attr("style","height:500px; width:400px;background-size: 100% 100%;background-image: url("+raw_data1[imgNav].photo_url+");");
		}
		);
		
		$('#remove').click(function(){
		var photoId = raw_data1[imgNav].photo_id;
		$.ajax({
						url: '/pbuddy1/insert.php?task=removeUserphoto&photoId='+photoId,						
						type: "GET",
						dataType: "html",
						success: function(data)
						{
						   $('#PhotosUpload').css("display", "none");
						   $('.resultBox').css("display", "block");
						}						   
						});	
		});
		</script>
 </body>
</html>

