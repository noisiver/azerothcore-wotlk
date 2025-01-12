DROP TABLE IF EXISTS `progression_world`.`areatrigger`;
CREATE TABLE `progression_world`.`areatrigger` (
    `entry` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `map` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `x` FLOAT NOT NULL DEFAULT '0',
    `y` FLOAT NOT NULL DEFAULT '0',
    `z` FLOAT NOT NULL DEFAULT '0',
    `radius` FLOAT NOT NULL DEFAULT '0' COMMENT 'Seems to be a box of size yards with center at x,y,z',
    `length` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `width` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `height` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `orientation` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=5873
;

INSERT INTO `progression_world`.`areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`, `MinPatch`, `MaxPatch`) VALUES
(4055, 0, 3132.72, -3731.23, 138.882, 5, 0, 0, 0, 0, 10, 16);

DROP TABLE IF EXISTS `progression_world`.`areatrigger_teleport`;
CREATE TABLE `progression_world`.`areatrigger_teleport` (
    `ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Name` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `target_map` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `target_position_x` FLOAT NOT NULL DEFAULT '0',
    `target_position_y` FLOAT NOT NULL DEFAULT '0',
    `target_position_z` FLOAT NOT NULL DEFAULT '0',
    `target_orientation` FLOAT NOT NULL DEFAULT '0',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`ID`, `MinPatch`, `MaxPatch`) USING BTREE,
    FULLTEXT INDEX `name` (`Name`)
)
COMMENT='Trigger System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`areatrigger_teleport`
SELECT `ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`areatrigger_teleport` WHERE `ID` IN (5196, 5197, 5198, 5199)
UNION SELECT `ID`, `Name`, 0 AS `target_map`, 3117.02 AS `target_position_x`, -3722.46 AS `target_position_y`, 136.467 AS `target_position_z`, 2.6548 AS `target_orientation`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`areatrigger_teleport` WHERE `ID` IN (5196, 5197, 5198, 5199);

INSERT INTO `areatrigger_teleport` (`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `MinPatch`, `MaxPatch`) VALUES
(4055, 'Naxxramas', 533, 3006.14, -3434.71, 304.196, 5.56455, 10, 16);
