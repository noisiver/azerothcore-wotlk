DROP TABLE IF EXISTS `progression_world`.`transports`;
CREATE TABLE `progression_world`.`transports` (
    `guid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `name` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `ScriptName` CHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
    PRIMARY KEY (`guid`, `Patch`) USING BTREE,
    UNIQUE INDEX `idx_entry` (`entry`) USING BTREE
)
COMMENT='Transports'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

INSERT INTO `progression_world`.`transports`
SELECT `guid`, 12 AS `Patch`, `entry`, `name`, `ScriptName` FROM `base_world`.`transports` WHERE `guid`=9
UNION SELECT `guid`, 17 AS `Patch`, `entry`, `name`, `ScriptName` FROM `base_world`.`transports` WHERE `guid` IN (10, 11, 12, 17)
UNION SELECT `guid`, 19 AS `Patch`, `entry`, `name`, `ScriptName` FROM `base_world`.`transports` WHERE `guid`=20;
