DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='quest_offer_reward')) THEN
        ALTER TABLE `quest_offer_reward`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `ID`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`ID`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `quest_offer_reward` WHERE `ID`=33;
INSERT INTO `quest_offer_reward` (`ID`, `Patch`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(33, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'You\'ve been busy!  I can\'t wait to cook up that wolf meat...$B$BI have some things here you might want - take your pick!', 12340),
(33, 20, 1, 0, 0, 0, 0, 0, 0, 0, '\'Twas a grim task, friend, but you held up your part of the bargain.\r\n\r\nI have some things here you might want - take your pick!', 12340);
