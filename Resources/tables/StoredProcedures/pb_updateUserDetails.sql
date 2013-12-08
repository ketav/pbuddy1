-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_updateUserDetails`(IN `userID` VARCHAR(50),IN `username` VARCHAR(50),IN `usergender` VARCHAR(50),IN `useraddress` VARCHAR(50))
BEGIN
		Update user_Detail set name = username,	
		sex= usergender, 
		geography=	useraddress				
		where user_id =  userID;					
END