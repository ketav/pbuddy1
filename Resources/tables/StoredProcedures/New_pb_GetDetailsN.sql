-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_GetDetailsN`(IN `start` INT(50), IN `dataSize` INT(10), IN `userId` INT(50), IN `filterGender` VARCHAR(50), IN `lowerAgeRange` VARCHAR(50), IN `higherAgeRange` VARCHAR(50))
BEGIN 
		if filterGender = '0' and higherAgeRange = '0'
			then
			begin
					CREATE TEMPORARY TABLE TempTable 
						SELECT 		user_detail.email_id,	user_detail.name,	user_detail.sex,	user_detail.geography,	
								photo_detail.photo_id,photo_detail.rating_received,	photo_detail.photo_url,	photo_detail.user_id,		photo_detail.avg_rating											
						FROM photo_detail 
						INNER JOIN user_detail  
						ON  photo_detail.user_id = user_detail.user_id
						WHERE photo_detail.active_flag = 1;
			end;
			end if;
			
			if filterGender != '0'
			then
			begin
					CREATE TEMPORARY TABLE TempTable 
						SELECT 		user_detail.email_id,	user_detail.name,	user_detail.sex,	user_detail.geography,	
								photo_detail.photo_id ,photo_detail.rating_received,	photo_detail.photo_url,	photo_detail.user_id,		photo_detail.avg_rating											
						FROM photo_detail 
						INNER JOIN user_detail  
						ON  photo_detail.user_id = user_detail.user_id
						WHERE photo_detail.active_flag = 1 and user_detail_sex = filterGender;
			end;
			end if;
			
			if higherAgeRange != '0'
			then
			begin
						SELECT 	* from 	TempTable where TempTable.Age >= lowerAgeRange and TempTable.Age <= higherAgeRange;
			end;
			end if;
						
					SELECT photo_url,avg_rating,rating_received,name,email_id,user_id
					FROM TempTable;	
END