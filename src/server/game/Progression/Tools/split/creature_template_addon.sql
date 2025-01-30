DROP TABLE IF EXISTS `progression_world`.`creature_template_addon`;
CREATE TABLE `progression_world`.`creature_template_addon` (
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `path_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `mount` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `bytes1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `bytes2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `emote` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `visibilityDistanceType` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `auras` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    PRIMARY KEY (`entry`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_template_addon`
SELECT `entry`, 20 AS `Patch`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras` FROM `base_world`.`creature_template_addon` WHERE `entry` IN (
    69, -- Diseased Timber Wolf
    299 -- Diseased Young Wolf
) UNION SELECT `entry`, 0 AS `Patch`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, NULL AS `auras` FROM `base_world`.`creature_template_addon` WHERE `entry` IN (
    69, -- Diseased Timber Wolf
    299 -- Diseased Young Wolf
);
