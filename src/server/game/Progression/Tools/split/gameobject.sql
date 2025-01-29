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
SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 21 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `guid` IN (
    151256, -- Haystack 01
    151257, -- Haystack 01
    151258, -- Haystack 01
    151259, -- Haystack 01
    151260, -- Haystack 01
    151261, -- Haystack 01
    151262, -- Haystack 01
    151263, -- Haystack 01
    151264, -- Haystack 01
    151265, -- Haybail 02
    151266, -- Haybail 02
    151267, -- Haybail 02
    151268 -- Haybail 02
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 21 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    194498, -- Gnomeregan Banner
    202713 -- Hazard Light Red 02
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    195213, -- Small Coliseum Cage
    195214, -- Large Kobold Cage
    195695, -- Meeting Stone
    202184, -- Meeting Stone
    202277, -- Orb of Naxxramas
    202278 -- Orb of Naxxramas
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    195141, -- Portal to Blasted Lands
    195142, -- Portal to Blasted Lands
    195498 -- Meeting Stone
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `guid` IN (
    50675, -- Rope Line
    50676, -- Rope Line
    50677, -- Rope Line Pole
    50678, -- Rope Line
    50679, -- Rope Line
    50680, -- Rope Line
    50681, -- Rope Line
    50682, -- Rope Line
    50683, -- Rope Line
    50684, -- Rope Line Pole
    50685, -- Rope Line
    50686, -- Rope Line
    50687, -- Rope Line
    50688, -- Rope Line
    50689, -- Rope Line
    50690, -- Rope Line
    50691, -- Rope Line
    50692 -- Rope Line
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    194213, -- Winter Hyacinth
    194237, -- Drak'Mar Brazier
    195218, -- Mailbox
    195467, -- Mailbox
    195528, -- Mailbox
    195529, -- Mailbox
    195530, -- Mailbox
    195554, -- Mailbox
    195555, -- Mailbox
    195556, -- Mailbox
    195557, -- Mailbox
    195558, -- Mailbox
    195559, -- Mailbox
    195560, -- Mailbox
    195561, -- Mailbox
    195562, -- Mailbox
    195603, -- Mailbox
    195604, -- Mailbox
    195605, -- Mailbox
    195606, -- Mailbox
    195607, -- Mailbox
    195608, -- Mailbox
    195609, -- Mailbox
    195610, -- Mailbox
    195611, -- Mailbox
    195612, -- Mailbox
    195613, -- Mailbox
    195614, -- Mailbox
    195615, -- Mailbox
    195616, -- Mailbox
    195617, -- Mailbox
    195618, -- Mailbox
    195619, -- Mailbox
    195620, -- Mailbox
    195624, -- Mailbox
    195625, -- Mailbox
    195626, -- Mailbox
    195627, -- Mailbox
    195628 -- Mailbox
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    190683, -- Barbershop Chair
    190684, -- Barbershop Chair
    190697, -- Barbershop Chair
    190698, -- Barbershop Chair
    190699, -- Barbershop Chair
    190704, -- Barbershop Chair
    190710, -- Barbershop Chair
    190711, -- Barbershop Chair
    190712, -- Barbershop Chair
    193981 -- Lexicon of Power
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    164725, -- Dragonspine Door
    175528, -- Doodad_DarkIronBrazier01
    175529, -- Doodad_DarkIronBrazier02
    175530, -- Doodad_DarkIronBrazier03
    175531, -- Doodad_DarkIronBrazier04
    175532, -- Doodad_DarkIronBrazier05
    175533 -- Doodad_DarkIronBrazier06
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    180718 -- The Scarab Gong
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 16 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    183435, -- Marksman Regiment's Cooking Pot
    187056 -- Shattrath Portal to Isle of Quel'Danas
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 15 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    186230, -- Mailbox
    186231, -- Forge
    186232, -- Anvil
    186233, -- Campfire
    186251, -- Meeting Stone
    186426, -- Wanted Poster
    186730, -- Doodad_ET_Holographic_Stand01
    186731, -- Doodad_ET_Holographic_Stand02
    187290, -- Guild Vault
    187291, -- Guild Vault
    187292, -- Guild Vault
    187294, -- Guild Vault
    187295, -- Guild Vault
    187296, -- Guild Vault
    187299, -- Guild Vault
    187329, -- Guild Vault
    187334, -- Guild Vault
    187337, -- Guild Vault
    187365, -- Guild Vault
    187390 -- Guild Vault
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 14 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    181310 -- Outland Map
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 13 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    185491, -- Emerald Dream Tree 001
    185492, -- Emerald Dream Flower 001
    185493, -- Moonglade Fountain
    185494, -- Emerald Dream Flower 002
    185495, -- Emerald Dream Flower 003
    185503, -- Barrow Chest
    185504, -- Moonglade Dream Catcher
    185518, -- Dream Catcher Glow
    185550 -- Meeting Stone
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    182560, -- Meeting Stone
    184463, -- Meeting Stone
    184503 -- Orb of Translocation
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 10 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    180451, -- Mailbox
    181075, -- Table
    181076, -- Inigo's Chair
    181077, -- Rug
    181078, -- Marjhan's Chair
    181079, -- Eligor's Chair
    181080, -- Angela's Chair
    181081, -- Map of the Eastern Plaguelands
    181082, -- Candelabra
    181130, -- Forge
    181131, -- Anvil
    181236, -- Mailbox
    181257 -- Argent Dawn Banner
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    180665, -- Draconic for Dummies
    180666, -- Draconic for Dummies
    180667, -- Draconic for Dummies
    181603, -- Sillithus Flag Stand, Alliance
    181617, -- Sillithus Flag Stand, Horde
    181618, -- ToWoW - Flag Cap Counter, Alliance
    181619, -- ToWoW - Flag Cap Counter, Horde
    185322 -- Meeting Stone
) UNION SELECT `guid`, 180717 AS `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 8 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    180718 -- The Scarab Gong
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 7 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    180448, -- Wanted Poster: Deathclasp
    180913 -- Forge
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    185433 -- Meeting Stone
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 5 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    179879 -- Orb of Command
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 4 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    179827, -- Wanted/Missing/Lost & Found
    179844, -- Forge
    179846, -- Campfire
    179895, -- Mailbox
    179896, -- Mailbox
    179913 -- Call to Arms!
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 4 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `guid` IN (
    6928, -- Anvil
    246083, -- Doodad_Anvil03
    246084, -- Doodad_Anvil02
    246085, -- Doodad_Anvil04
    246086 -- Doodad_Anvil01
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 2 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    178824, -- Meeting Stone
    178825, -- Meeting Stone
    178826, -- Meeting Stone
    178827, -- Meeting Stone
    178828, -- Meeting Stone
    178829, -- Meeting Stone
    178831, -- Meeting Stone
    178832, -- Meeting Stone
    178833, -- Meeting Stone
    178834, -- Meeting Stone
    178844, -- Meeting Stone
    178845, -- Meeting Stone
    178884, -- Meeting Stone
    179554, -- Meeting Stone
    179555, -- Meeting Stone
    179584, -- Meeting Stone
    179585, -- Meeting Stone
    179595, -- Meeting Stone
    179596, -- Meeting Stone
    185321 -- Meeting Stone
) UNION SELECT `guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, 100 AS `animprogress`, 1 AS `state`, `ScriptName`, `VerifiedBuild`, `Comment`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`gameobject` WHERE `id` IN (
    164725, -- Dragonspine Door
    175528, -- Doodad_DarkIronBrazier01
    175529, -- Doodad_DarkIronBrazier02
    175530, -- Doodad_DarkIronBrazier03
    175531, -- Doodad_DarkIronBrazier04
    175532, -- Doodad_DarkIronBrazier05
    175533 -- Doodad_DarkIronBrazier06
);

INSERT INTO `progression_world`.`gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
-- Gate of Ahn'Qiraj
(5300000, 176146, 1, 0, 0, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1, '', NULL, NULL, 0, 16),
-- Ahn'Qiraj Gate Roots
(5300001, 176147, 1, 0, 0, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1, '', NULL, NULL, 0, 16),
-- Ahn'Qiraj Gate Runes
(5300002, 176148, 1, 0, 0, 1, 1, -8133.34, 1525.13, 17.1904, 6.28103, 0, 0, 0.00107995, -0.999999, 600, 100, 1, '', NULL, NULL, 0, 16),
-- CavernDoor01
(5300003, 176996, 1, 0, 0, 1, 1, -8173.02, -4747.2, 34.2107, 1.80084, 0, 0, -0.783588, -0.621281, 0, 100, 1, '', NULL, NULL, 0, 11),
-- Nox Portal Plaguewood
(5300004, 181476, 0, 0, 0, 1, 1, 3132.72, -3731.23, 135, 1.11934, 0, 0, -0.530907, -0.84743, 0, 0, 1, '', NULL, NULL, 10, 16);
