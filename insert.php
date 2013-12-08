<?php 
include '../credentials.php';
parse_str($_SERVER['QUERY_STRING']);
$con=mysqli_connect($host,$user,$pwd,$db);
// Check connection
	if (mysqli_connect_errno())
    {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
	/*else
	{
	echo "conected";
	}*/
	if($task == "getDetails")
	{
	//$result = mysqli_query($con, "CALL pb_GetDetailsN(".$start.",".$range.",".$userId.","."'0')");	
	$result = mysqli_query($con, "CALL pb_GetDetailsN(".$start.",".$range.",".$userId.",".$filterGenger.",".$lowerAgeRange.",".$higherAgeRange.")");	
//printf("Errormessage: %s\n", $con->error);

	$resultArray = array();
	$rows = mysqli_num_rows($result);    
	
	if($rows!=0)
	{
	while ($row = $result->fetch_assoc()) {
       array_push($resultArray,$row);	   
    }
	echo json_encode($resultArray);
	}
	else
	{
		echo "0";
	}	
	//var_dump($result);	
	}
	else if($task == "getTop5Details")
	{
	$sql = 'SELECT user_detail.email_id,	user_detail.name,	user_detail.sex,	user_detail.geography,	
								photo_detail.photo_id ,photo_detail.rating_received,	photo_detail.photo_url,	photo_detail.user_id,		photo_detail.avg_rating											
						FROM photo_detail 
						INNER JOIN user_detail  
						ON  photo_detail.user_id = user_detail.user_id
						WHERE photo_detail.active_flag = 1';

	$result = mysqli_query($con, $sql);	
//printf("Errormessage: %s\n", $con->error);
	$resultArray = array();
	$rows = mysqli_num_rows($result);    
	
	if($rows!=0)
	{
	while ($row = $result->fetch_assoc()) {
       array_push($resultArray,$row);	   
    }
	echo json_encode($resultArray);
	}
	else
	{
		echo "0";
	}	
	//var_dump($result);
	}
	else if ($task=="updateUserDetails")
	{
	$result = mysqli_query($con, "CALL pb_updateUserDetails('".$userId."','".$name."','".$gender."','".$address."')");
	echo $result;
	//var_dump($result);
	}
	else if($task == "getUserDetails")
	{
	$result = mysqli_query($con, "CALL pb_GetUserDetails('".$userId."')");	
	 $userresultArray = array();
	while ($row = $result->fetch_assoc()) {
       array_push($userresultArray,$row);	   
    }
	echo json_encode($userresultArray);
	//var_dump($result);	
	}
	else if ($task=="updateRating")
	{
	$result = mysqli_query($con, "CALL pb_UpdateRating('".$pid."','".$rating."')");
	echo $result;
	//var_dump($result);
	}
	else if ($task=="insertUser")
	{
	$result = mysqli_query($con, "CALL pb_InsertUser('".$name."','".$email."','".$sex."','".$geo."','".$userid."','".$age."')");
	echo $result;
	//var_dump($result);
	}
	else if ($task=="removeUserphoto")
	  {
	  $result = mysqli_query($con, "CALL pb_RemovePhoto('".$photoId."')");
	  echo $result;
	  //var_dump($result);
	  }

	else
	{
	$result = mysqli_query($con, "CALL pb_InsertPhoto('".$id."','".$src."','".$imgid."')");
	echo $result;
	//var_dump($result);
	}
	mysqli_close($con);	
?> 