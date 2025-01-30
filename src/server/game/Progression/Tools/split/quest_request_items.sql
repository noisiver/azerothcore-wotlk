DROP TABLE IF EXISTS `progression_world`.`quest_request_items`;
CREATE TABLE `progression_world`.`quest_request_items` (
	`ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
	`EmoteOnComplete` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`EmoteOnIncomplete` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`CompletionText` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`VerifiedBuild` INT(10) NULL DEFAULT NULL,
	PRIMARY KEY (`ID`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`quest_request_items`
SELECT `ID`, 20 AS `Patch`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild` FROM `base_world`.`quest_request_items` WHERE `ID` IN (
    33 -- Wolves Across the Border
) UNION SELECT `ID`, 0 AS `Patch`, `EmoteOnComplete`, `EmoteOnIncomplete`, 'Hey $N.  I\'m getting hungry...did you get that tough wolf meat?' AS `CompletionText`, `VerifiedBuild` FROM `base_world`.`quest_request_items` WHERE `ID` IN (
    33 -- Wolves Across the Border
);
