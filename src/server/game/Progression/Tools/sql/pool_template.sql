DROP TABLE IF EXISTS `progression_world`.`pool_template`;
CREATE TABLE `progression_world`.`pool_template` (
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Pool entry',
    `max_limit` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Max number of objects (0) is no limit',
    `description` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`pool_template`
SELECT `entry`, `max_limit`, `description`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`pool_template` WHERE `entry` IN (
    5678 -- Raiding weeklies
) UNION SELECT `entry`, `max_limit`, `description`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`pool_template` WHERE `entry` IN (
    60003 -- Lake Frog
) UNION SELECT `entry`, `max_limit`, 'Heroic Dungeon Dailies' AS `description`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`pool_template` WHERE `entry` IN (
    5678 -- Raiding weeklies
);

INSERT INTO `progression_world`.`pool_template` (`entry`, `max_limit`, `description`, `MinPatch`, `MaxPatch`) VALUES
-- Dungeon Dailies
(87000, 1, 'Dungeon Dailies', 0, 19);
