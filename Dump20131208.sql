CREATE DATABASE  IF NOT EXISTS `pbuddy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pbuddy`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: pbuddy
-- ------------------------------------------------------
-- Server version	5.6.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `photo_detail`
--

DROP TABLE IF EXISTS `photo_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_detail` (
  `user_Id` varchar(50) NOT NULL,
  `photo_url` varchar(1000) NOT NULL,
  `avg_rating` decimal(10,0) DEFAULT '0',
  `rating_received` int(11) DEFAULT '0',
  `photo_id` varchar(1000) NOT NULL,
  `active_flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_detail`
--

LOCK TABLES `photo_detail` WRITE;
/*!40000 ALTER TABLE `photo_detail` DISABLE KEYS */;
INSERT INTO `photo_detail` VALUES ('0','',0,0,'',1),('1040570136','https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-ash4/s720x720/1003031_10201209842981730_1649449438_n.jpg',0,0,'10201209842981730',0),('1040570136','https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-ash3/s720x720/561626_10200209193046107_588177293_n.jpg',6,4,'10200209193046107',1),('1040570136','https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-prn1/20614_4746453852864_1072282373_n.jpg',6,5,'4746453852864',0),('1040570136','https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-ash4/418628_3121749956282_2032117337_n.jpg',8,4,'3121749956282',1),('1040570136','https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-ash4/2731_1142783123348_5823951_n.jpg',0,0,'1142783123348',1),('1040570136','https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-prn1/s720x720/936504_10201209825421291_600331689_n.jpg',0,0,'10201209825421291',1),('1040570136','https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash4/1005277_10201011621946328_1244282924_n.jpg',6,5,'10201011621946328',1),('1040570136','https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-frc3/s720x720/223861_4263315654711_796685310_n.jpg',7,4,'4263315654711',1),('1040570136','https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-prn1/33622_1606094305838_2201413_n.jpg',6,4,'1606094305838',1),('1040570136','https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-prn1/67720_1606090745749_6394422_n.jpg',5,3,'1606090745749',1),('2147483647','http://sphotos-e.ak.fbcdn.net/hphotos-ak-ash3/s720x720/1176280_509676549124558_1334340302_n.jpg',0,0,'509676549124558',1),('2147483647','http://sphotos-b.ak.fbcdn.net/hphotos-ak-ash3/s720x720/62576_346097022149179_403981083_n.jpg',0,0,'346097022149179',1),('2147483647','http://sphotos-d.ak.fbcdn.net/hphotos-ak-ash4/s720x720/387081_337617336330481_1990152801_n.jpg',0,0,'337617336330481',1),('2147483647','http://sphotos-e.ak.fbcdn.net/hphotos-ak-ash4/s720x720/224823_310712699020945_453547161_n.jpg',0,0,'310712699020945',1),('2147483647','http://sphotos-f.ak.fbcdn.net/hphotos-ak-ash4/315506_150537401705143_1580928064_n.jpg',0,0,'150537401705143',1),('2147483647','http://sphotos-e.ak.fbcdn.net/hphotos-ak-ash4/298100_146328325459384_1491880863_n.jpg',0,0,'146328325459384',1),('2147483647','http://sphotos-d.ak.fbcdn.net/hphotos-ak-frc3/s720x720/395888_205352836223599_1195845965_n.jpg',0,0,'205352836223599',1),('2147483647','http://sphotos-c.ak.fbcdn.net/hphotos-ak-frc1/404130_333691436723071_1173643725_n.jpg',0,0,'333691436723071',1),('2147483647','http://sphotos-e.ak.fbcdn.net/hphotos-ak-ash3/s720x720/418726_334556369969911_2077545881_n.jpg',0,0,'334556369969911',1),('2147483647','http://sphotos-e.ak.fbcdn.net/hphotos-ak-ash2/s720x720/217816_342681119157436_504311991_n.jpg',0,0,'342681119157436',1),('2147483647','http://sphotos-e.ak.fbcdn.net/hphotos-ak-frc3/s720x720/1069271_485636758195204_813076474_n.jpg',0,0,'485636758195204',1),('2147483647','http://sphotos-b.ak.fbcdn.net/hphotos-ak-ash4/s720x720/1234378_509675589124654_687292647_n.jpg',0,0,'509675589124654',1),('726424688','https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-ash3/s720x720/1234454_10152200377079689_1939044421_n.jpg',7,4,'10152200377079689',1),('726424688','https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-prn1/s720x720/1235361_10152200377094689_1708650514_n.jpg',6,4,'10152200377094689',1),('726424688','https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-prn2/s720x720/1239573_10152200377104689_1624704610_n.jpg',8,1,'10152200377104689',1),('726424688','https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-prn1/s720x720/1236054_10152200377279689_314852327_n.jpg',5,1,'10152200377279689',1),('726424688','https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-ash4/s720x720/1011533_10152200377294689_124633277_n.jpg',6,4,'10152200377294689',1),('726424688','https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-frc3/s720x720/1280458_10152200377469689_1726115588_n.jpg',5,4,'10152200377469689',1),('726424688','https://fbcdn-sphotos-f-a.akamaihd.net/hphotos-ak-frc1/s720x720/999199_10152200377559689_1679112186_n.jpg',8,1,'10152200377559689',1),('726424688','https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-prn2/s720x720/1209358_10152200377579689_1414610362_n.jpg',4,1,'10152200377579689',1),('726424688','https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-prn2/s720x720/1238779_10152200377744689_1482829255_n.jpg',8,1,'10152200377744689',1),('726424688','https://fbcdn-sphotos-h-a.akamaihd.net/hphotos-ak-frc1/s720x720/1240582_10152200377874689_1371923309_n.jpg',8,2,'10152200377874689',1),('726424688','https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash3/s720x720/555055_10152200377904689_1441952449_n.jpg',4,2,'10152200377904689',1),('726424688','https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-ash4/s720x720/999982_10152200384659689_1473192652_n.jpg',0,0,'10152200384659689',1),('726424688','https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-prn2/s720x720/9309_10152200384684689_2028153223_n.jpg',0,0,'10152200384684689',1),('2147483647','https://fbcdn-sphotos-a-a.akamaihd.net/hphotos-ak-prn1/1238210_1387988084766021_1466554482_n.jpg',0,0,'1387988084766021',1),('2147483647','https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-prn2/1236647_1387988144766015_1730413915_n.jpg',0,0,'1387988144766015',1),('2147483647','https://m.ak.fbcdn.net/sphotos-f.ak/hphotos-ak-prn2/1236124_1387911048107058_172453585_n.jpg',0,0,'1387911048107058',1);
/*!40000 ALTER TABLE `photo_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_detail`
--

DROP TABLE IF EXISTS `user_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_detail` (
  `name` varchar(500) NOT NULL,
  `email_id` varchar(1000) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `geography` varchar(1000) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_detail`
--

LOCK TABLES `user_detail` WRITE;
/*!40000 ALTER TABLE `user_detail` DISABLE KEYS */;
INSERT INTO `user_detail` VALUES ('Arashdeep Singh','asingh58@sapient.com','male','Gurgaon, Haryana','2147483647',NULL),('Arashdeep Sidhu','arashdeeps@gmail.com','male','Gurgaon, Haryana','726424688',NULL),('Ketav Sharma','ketavsharma@gmail.com','m','Mandi, India','1040570136',21);
/*!40000 ALTER TABLE `user_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'pbuddy'
--

--
-- Dumping routines for database 'pbuddy'
--
/*!50003 DROP PROCEDURE IF EXISTS `pb_GetDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_GetDetails`(IN `FillterValue` VARCHAR(50), IN `PageNumber` INT(10), IN `SortOrder` VARCHAR(50))
BEGIN
	DECLARE First INT;
	DECLARE Last INT;
	SET First = (PageNumber-1)*10 + 1;
	SET Last = PageNumber*10 ;
						CREATE TEMPORARY TABLE TempTable 
						SELECT 		user_detail.email_id,	user_detail.name,	user_detail.sex,	user_detail.geography,	
								photo_detail.photo_id,	photo_detail.photo_url,	photo_detail.user_id,		photo_detail.avg_rating											
						FROM photo_detail 
						INNER JOIN user_detail  
						ON  photo_detail.user_id = user_detail.user_id
						WHERE photo_detail.active_flag = 1;
						
					CREATE TEMPORARY TABLE Total AS 
						SELECT COUNT(1) CountTotal FROM TempTable;
					
					SELECT	TempTable.email_id,	TempTable.name,		TempTable.sex,		TempTable.geography,
							TempTable.photo_id,		TempTable.photo_url,		TempTable.user_id,	TempTable.avg_rating,
							Total.CountTotal
					FROM TempTable ,Total;					
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_GetDetailsN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_GetUserDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_GetUserDetails`(IN `userID` VARCHAR(50))
BEGIN
		SELECT 		user_detail.email_id,	user_detail.name,	user_detail.sex,	user_detail.geography, user_detail.age,	
					photo_detail.photo_id,	photo_detail.photo_url,	photo_detail.user_id,		photo_detail.avg_rating,		photo_detail.rating_received										
		FROM photo_detail 
		INNER JOIN user_detail  
		ON  photo_detail.user_id = user_detail.user_id
		where user_detail.user_id =  userID;					
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_InsertPhoto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_InsertPhoto`(IN `id` INT(100), IN `src` VARCHAR(1000), IN `pid` VARCHAR(1000))
BEGIN
DECLARE photoFlag INT;
    SELECT COUNT(1) into photoFlag from photo_detail  WHERE photo_id = pid;
	if photoFlag = 0
	then
	begin
    INSERT INTO photo_detail (user_id, photo_url, avg_rating,rating_received,photo_id,active_flag)
	VALUES (id, src,0,0,pid,1);
	end;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_InsertUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_InsertUser`(IN `name` VARCHAR(500), IN `emailId` VARCHAR(1000), IN `sex` VARCHAR(10), IN `geography` VARCHAR(1000), IN `userId` INT(11),IN age INT(3))
BEGIN
DECLARE userExist INT;
SELECT COUNT(1) INTO userExist FROM user_detail where user_id=userId;
IF userExist = 0
THEN
BEGIN
INSERT INTO `user_detail`(`name`, `email_id`, `sex`, `geography`, `user_id`,age)
VALUES (name,emailId,sex,geography,userId,age);
END;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_RemovePhoto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_RemovePhoto`(IN `photoId` VARCHAR(100))
BEGIN
Update photo_detail set 
active_flag = 0 where photo_id=photoId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_UpdateRating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_UpdateRating`(IN `pid` VARCHAR(100), IN `rating` INT)
BEGIN
	DECLARE Votes INT;
	DECLARE Avrg DECIMAL;
	Select avg_rating,rating_received into Avrg,Votes from photo_detail where photo_id = pid;
	UPDATE photo_detail SET avg_rating = ((Avrg*Votes)+Rating)/(Votes+1),
	rating_received = Votes+1 where photo_id = pid;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pb_updateUserDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_updateUserDetails`(IN `userID` VARCHAR(50),IN `username` VARCHAR(50),IN `usergender` VARCHAR(50),IN `useraddress` VARCHAR(50))
BEGIN
		Update user_Detail set name = username,	
		sex= usergender, 
		geography=	useraddress				
		where user_id =  userID;					
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-08 22:33:43
