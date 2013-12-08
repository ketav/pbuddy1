-- --------------------------------------------------------------------------------
-- Routine DDL
-- Note: comments before and after the routine body will not be stored by the server
-- --------------------------------------------------------------------------------
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pb_RemovePhoto`(IN `photoId` VARCHAR(100))
BEGIN
Update photo_detail set 
active_flag = 0 where photo_id=photoId;
END