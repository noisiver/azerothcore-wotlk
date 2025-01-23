DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='quest_request_items')) THEN
        ALTER TABLE `quest_request_items`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `ID`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`ID`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `quest_request_items` WHERE `ID`=33;
INSERT INTO `quest_request_items` (`ID`, `Patch`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(33, 0, 6, 6, 'Hey $N.  I\'m getting hungry...did you get that tough wolf meat?', 12340),
(33, 20, 6, 6, 'Hey $N. How goes the hunt for diseased young wolves?', 12340);
