DROP TABLE IF EXISTS `progression_world`.`quest_offer_reward`;
CREATE TABLE `progression_world`.`quest_offer_reward` (
	`ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
	`Emote1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`Emote2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`Emote3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`Emote4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
	`EmoteDelay1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`EmoteDelay2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`EmoteDelay3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`EmoteDelay4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`RewardText` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`VerifiedBuild` INT(10) NULL DEFAULT NULL,
	PRIMARY KEY (`ID`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`quest_offer_reward`
SELECT `ID`, 20 AS `Patch`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild` FROM `base_world`.`quest_offer_reward` WHERE `ID` IN (
    33 -- Wolves Across the Border
) UNION SELECT `ID`, 0 AS `Patch`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, 'You\'ve been busy!  I can\'t wait to cook up that wolf meat...$B$BI have some things here you might want - take your pick!' AS `RewardText`, `VerifiedBuild` FROM `base_world`.`quest_offer_reward` WHERE `ID` IN (
    33 -- Wolves Across the Border
);
