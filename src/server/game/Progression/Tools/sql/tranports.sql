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
AUTO_INCREMENT=1;

INSERT INTO `progression_world`.`transports`
SELECT `guid`, 19 AS `Patch`, `entry`, `name`, `ScriptName` FROM `base_world`.`transports` WHERE `guid` IN (
    20 -- Orgrimmar, Durotar and Thunder Bluff, Mulgore (Zeppelin, Horde ("The Zephyr"))
) UNION SELECT `guid`, 17 AS `Patch`, `entry`, `name`, `ScriptName` FROM `base_world`.`transports` WHERE `guid` IN (
    10, -- Menethil Harbor, Wetlands and Valgarde, Howling Fjord (Boat, Alliance ("Northspear"))
    11, -- Undercity, Tirisfal Glades and Vengeance Landing, Howling Fjord (Zeppelin, Horde ("Cloudkisser"))
    12, -- Orgrimmar, Durotar and Warsong Hold, Borean Tundra (Zeppelin, Horde ("The Mighty Wind"))
    17 -- Valiance Keep, Borean Tundra and Stormwind Harbor (Boat, Alliance ("The Kraken"))
) UNION SELECT `guid`, 12 AS `Patch`, `entry`, `name`, `ScriptName` FROM `base_world`.`transports` WHERE `guid` IN (
    9 -- Auberdine, Darkshore and Valaar's Berth, Azuremyst Isle (Boat, Alliance ("Elune's Blessing"))
);
