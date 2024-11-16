DROP TABLE IF EXISTS `progression_world`.`gameobject`;
CREATE TABLE `progression_world`.`gameobject` (
    `guid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
    `id` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Gameobject Identifier',
    `map` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
    `zoneId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
    `areaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Area Identifier',
    `spawnMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `phaseMask` INT(10) UNSIGNED NOT NULL DEFAULT '1',
    `position_x` FLOAT NOT NULL DEFAULT '0',
    `position_y` FLOAT NOT NULL DEFAULT '0',
    `position_z` FLOAT NOT NULL DEFAULT '0',
    `orientation` FLOAT NOT NULL DEFAULT '0',
    `rotation0` FLOAT NOT NULL DEFAULT '0',
    `rotation1` FLOAT NOT NULL DEFAULT '0',
    `rotation2` FLOAT NOT NULL DEFAULT '0',
    `rotation3` FLOAT NOT NULL DEFAULT '0',
    `spawntimesecs` INT(10) NOT NULL DEFAULT '0',
    `animprogress` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `state` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `ScriptName` CHAR(64) NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
    `VerifiedBuild` INT(10) NULL DEFAULT NULL,
    `Comment` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`guid`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Gameobject System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

INSERT INTO `progression_world`.`gameobject`
SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 21 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `guid` IN (151256, 151257, 151258, 151259, 151260, 151261, 151262, 151263, 151264, 151265, 151266, 151267, 151268)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 21 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (194498, 202713)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (195213, 195214, 195695, 202184, 202277, 202278)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (195141, 195142, 195498)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `guid` IN (50675, 50676, 50677, 50678, 50679, 50680, 50681, 50682, 50683, 50684, 50685, 50686, 50687, 50688, 50689, 50690, 50691, 50692)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (194213, 194237, 195218, 195467, 195528, 195529, 195530, 195554, 195555, 195556, 195557, 195558, 195559, 195560, 195561, 195562, 195603, 195604, 195605, 195606, 195607, 195608, 195609, 195610, 195611, 195612, 195613, 195614, 195615, 195616, 195617, 195618, 195619, 195620, 195624, 195625, 195626, 195627, 195628)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (190683, 190684, 190697, 190698, 190699, 190704, 190710, 190711, 190712, 193981)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 16 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (183435, 187056)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 15 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (186230, 186231, 186232, 186233, 186251, 186426, 186730, 186731, 187290, 187291, 187292, 187294, 187295, 187296, 187299, 187329, 187334, 187337, 187365, 187390)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 14 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id`=181310
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 13 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id`=185550
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (182560, 184463, 184503)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 10 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (180451, 181075, 181076, 181077, 181078, 181079, 181080, 181081, 181082, 181130, 181131, 181236, 181257)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (180665, 180666, 180667, 181603, 181617, 181618, 181619, 185322)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 7 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (180448, 180913)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id`=185433
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 5 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id`=179879
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 4 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (179827, 179844, 179846, 179895, 179896, 179913)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 4 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `guid` IN (6928, 246083, 246084, 246085, 246086)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 2 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (178824, 178825, 178826, 178827, 178828, 178829, 178831, 178832, 178833, 178834, 178844, 178845, 178884, 179554, 179555, 179584, 179585, 179595, 179596, 185321)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (164725, 175528, 175529, 175530, 175531, 175532, 175533)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, 100 AS `animprogress`, 1 AS `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (164725, 175528, 175529, 175530, 175531, 175532, 175533)
UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id`=180718
UNION SELECT `guid`, 180717 AS `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 8 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id`=180718;

INSERT INTO `progression_world`.`gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
(5300000, 176146, 1, 0, 0, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1, '', NULL, NULL, 0, 16),
(5300001, 176147, 1, 0, 0, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1, '', NULL, NULL, 0, 16),
(5300002, 176148, 1, 0, 0, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1, '', NULL, NULL, 0, 16),
(5300003, 176996, 1, 0, 0, 1, 1, -8173.02, -4747.2, 34.2107, 1.80084, 0, 0, -0.783588, -0.621281, 0, 100, 1, '', NULL, NULL, 0, 11);

DROP TABLE IF EXISTS `progression_world`.`gameobject_template_addon`;
CREATE TABLE `progression_world`.`gameobject_template_addon` (
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `faction` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `flags` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `mingold` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `maxgold` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `artkit0` INT(10) NOT NULL DEFAULT '0',
    `artkit1` INT(10) NOT NULL DEFAULT '0',
    `artkit2` INT(10) NOT NULL DEFAULT '0',
    `artkit3` INT(10) NOT NULL DEFAULT '0',
    PRIMARY KEY (`entry`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`gameobject_template_addon`
SELECT `entry`, 17 AS `Patch`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3` FROM `base_world`.`gameobject_template_addon` WHERE `entry` IN (176146, 176147, 176148)
UNION SELECT `entry`, 12 AS `Patch`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3` FROM `base_world`.`gameobject_template_addon` WHERE `entry`=176996
UNION SELECT `entry`, 0 AS `Patch`, `faction`, `flags`|4, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3` FROM `base_world`.`gameobject_template_addon` WHERE `entry` IN (176146, 176147, 176148, 176996);
