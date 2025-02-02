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
ENGINE=InnoDB;

INSERT INTO `progression_world`.`areatrigger_teleport`
SELECT `ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`areatrigger_teleport` WHERE `ID` IN (
    5196, -- Naxxramas (exit1)
    5197, -- Naxxramas (exit2)
    5198, -- Naxxramas (exit3)
    5199 -- Naxxramas (exit4)
) UNION SELECT `ID`, `Name`, 0 AS `target_map`, 3117.02 AS `target_position_x`, -3722.46 AS `target_position_y`, 136.467 AS `target_position_z`, 2.6548 AS `target_orientation`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`areatrigger_teleport` WHERE `ID` IN (
    5196, -- Naxxramas (exit1)
    5197, -- Naxxramas (exit2)
    5198, -- Naxxramas (exit3)
    5199 -- Naxxramas (exit4)
);
