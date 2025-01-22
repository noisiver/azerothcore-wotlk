/*
SET @Entry := '17413,17414,17682,17683,18600,18646,18665,18705,18987,19803,19805,19806,19807,19808,21877,27859,27860,31952,50289';
SELECT DISTINCT(item) FROM creature_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM disenchant_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM fishing_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM gameobject_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM item_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM mail_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM milling_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM pickpocketing_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM player_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM prospecting_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM reference_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM skinning_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
SELECT DISTINCT(item) FROM spell_loot_template WHERE FIND_IN_SET(item, @Entry) ORDER BY item ASC;
*/

DROP TABLE IF EXISTS `progression_world`.`creature_loot_template`;
CREATE TABLE `progression_world`.`creature_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `Reference`, `GroupId`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`creature_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 1 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (17413, 17414, 17682, 17683, 18600)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (18665, 18705)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 5 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item`=18987
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (21103, 21104, 21105, 21108, 21110)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (21877, 27859, 27860, 31952)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item`=49205
UNION SELECT `Entry`, 17008 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item`=49205
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=10184 AND `Item` NOT IN (18705, 21108, 47241)
UNION SELECT `Entry`, 18422 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=10184 AND `Item`=49643
UNION SELECT `Entry`, 18423 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=10184 AND `Item`=49644
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item`=47241 AND `Entry` IN (10184, 15928, 15931, 15932, 15936, 15952, 15953, 15954, 15956, 15989, 15990, 16011, 16028, 16060, 16061, 28860, 29249, 29268, 29278, 29324, 29373, 29417, 29448, 29615, 29701, 29718, 29932, 29940, 29955, 29991, 30061, 30397, 30398, 30510, 30529, 30530, 30532, 30540, 30748, 30774, 30788, 30807, 30810, 31125, 31211, 31212, 31215, 31311, 31349, 31350, 31360, 31362, 31367, 31368, 31370, 31381, 31384, 31386, 31456, 31463, 31464, 31465, 31469, 31506, 31507, 31508, 31509, 31510, 31511, 31512, 31533, 31536, 31537, 31538, 31558, 31559, 31560, 31610, 31611, 31612, 31656, 31673, 31679, 31722, 32313, 32857, 32867, 32927, 33118, 33186, 33190, 33271, 33288, 33293, 33449, 33515, 33692, 33693, 33694, 33724, 33885, 33955, 33993, 33994, 34175, 35013, 35360, 35490, 36538)
UNION (SELECT clt.`Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Conquest') AS `Comment`, 19 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (10184, 15928, 15931, 15932, 15936, 15952, 15953, 15954, 15956, 15989, 15990, 16011, 16028, 16060, 16061, 28860, 29249, 29268, 29278, 29324, 29373, 29417, 29448, 29615, 29701, 29718, 29932, 29940, 29955, 29991, 30061, 30397, 30398, 30510, 30529, 30530, 30532, 30540, 30748, 30774, 30788, 30807, 30810, 31125, 31211, 31212, 31215, 31311, 31349, 31350, 31360, 31362, 31367, 31368, 31370, 31381, 31384, 31386, 31456, 31463, 31464, 31465, 31469, 31506, 31507, 31508, 31509, 31510, 31511, 31512, 31533, 31536, 31537, 31538, 31558, 31559, 31560, 31610, 31611, 31612, 31656, 31673, 31679, 31722, 32313, 32857, 32867, 32927, 33118, 33186, 33271, 33288, 33293, 33515, 35013, 35360, 35490, 36538))
UNION (SELECT clt.`Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Valor') AS `Comment`, 18 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (32857, 32867, 32927, 33118, 33186, 33271, 33288, 33293, 33515))
UNION (SELECT clt.`Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Conquest') AS `Comment`, 18 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (33190, 33449, 33692, 33693, 33694, 33724, 33885, 33955, 33993, 33994, 34175))
UNION (SELECT clt.`Entry`, 40752 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Heroism') AS `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (15928, 15931, 15932, 15936, 15952, 15953, 15954, 15956, 15989, 15990, 16011, 16028, 16060, 16061, 28860, 29932, 30397, 30398, 30510, 30529, 30530, 30532, 30540, 30748, 30774, 30788, 30807, 30810, 31125, 31211, 31212, 31215, 31349, 31350, 31360, 31362, 31367, 31368, 31370, 31381, 31384, 31386, 31456, 31463, 31464, 31465, 31469, 31506, 31507, 31508, 31509, 31510, 31511, 31512, 31533, 31536, 31537, 31538, 31558, 31559, 31560, 31610, 31611, 31612, 31656, 31673, 31679, 32313))
UNION (SELECT clt.`Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Valor') AS `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (29249, 29268, 29278, 29324, 29373, 29417, 29448, 29615, 29701, 29718, 29940, 29955, 29991, 30061, 31311, 31722))
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=31311 AND `Reference`=34349
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry` IN (69, 299) AND `Item`=50432
UNION SELECT `Entry`, 750 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry` IN (69, 299) AND `Item`=50432;

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
(10184, 17966, 0, 100, 0, 1, 0, 1, 1, 'Onyxia - Onyxia Hide Backpack', 0, 18),
(10184, 46000, 46000, 100, 0, 1, 0, 2, 2, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46001, 46001, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46002, 46002, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46003, 46003, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46004, 46004, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46005, 46005, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46006, 46006, 100, 0, 1, 0, 2, 2, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46007, 46007, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18),
(10184, 46008, 46008, 100, 0, 1, 0, 1, 1, 'Onyxia - (ReferenceTable)', 0, 18);

DROP TABLE IF EXISTS `progression_world`.`disenchant_loot_template`;
CREATE TABLE `progression_world`.`disenchant_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `progression_world`.`fishing_loot_template`;
CREATE TABLE `progression_world`.`fishing_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`fishing_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`fishing_loot_template` WHERE `Reference`=11150;

DROP TABLE IF EXISTS `progression_world`.`gameobject_loot_template`;
CREATE TABLE `progression_world`.`gameobject_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`gameobject_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=50289
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item` IN (19803, 19805, 19806, 19807, 19808)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=18646
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (24524, 24589, 25192, 25193, 26094, 26097, 26260, 26929, 26946, 26955, 26956, 26959, 26960, 26961, 26962, 26963, 26967, 26974, 27030, 27061, 27068, 27073, 27074, 27078, 27079, 27080, 27081, 27085, 27086, 27414, 27416, 27417)
UNION SELECT `Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 19 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (24524, 24589, 25192, 25193, 26094, 26097, 26260, 26956, 26962, 27030, 27061, 27068, 27073, 27085, 27086, 27414, 27416, 27417)
UNION SELECT `Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 18 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (26929, 26946, 26955, 26959, 26960, 26961, 26963, 26967, 26974, 27074, 27078, 27079, 27080, 27081)
UNION SELECT `Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 18 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (26956, 26962, 27030, 27061, 27068, 27073, 27085, 27086)
UNION SELECT `Entry`, 40752 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (24524, 24589, 25192, 26094, 26260)
UNION SELECT `Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (25193, 26097);

DROP TABLE IF EXISTS `progression_world`.`item_loot_template`;
CREATE TABLE `progression_world`.`item_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`item_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=47241 AND `Entry` IN (43346, 43347, 45875, 45878)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=49426 AND `Entry` IN (54516, 54535, 54536)
UNION SELECT `Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 19 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=47241 AND `Entry` IN (43347, 45875)
UNION SELECT `Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 18 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=47241 AND `Entry` IN (43347, 45875)
UNION SELECT `Entry`, 40752 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 17 AS `MinPatch`, 17 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=47241 AND `Entry`=43347
UNION SELECT `Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 18 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=47241 AND `Entry` IN (43346, 45878)
UNION SELECT `Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 17 AS `MinPatch`, 17 AS `MaxPatch` FROM `base_world`.`item_loot_template` WHERE `Item`=47241 AND `Entry`=43346;

DROP TABLE IF EXISTS `progression_world`.`mail_loot_template`;
CREATE TABLE `progression_world`.`mail_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `progression_world`.`milling_loot_template`;
CREATE TABLE `progression_world`.`milling_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `progression_world`.`pickpocketing_loot_template`;
CREATE TABLE `progression_world`.`pickpocketing_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`pickpocketing_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`pickpocketing_loot_template` WHERE `Item` IN (21877, 27859);

DROP TABLE IF EXISTS `progression_world`.`player_loot_template`;
CREATE TABLE `progression_world`.`player_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `progression_world`.`prospecting_loot_template`;
CREATE TABLE `progression_world`.`prospecting_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `progression_world`.`reference_loot_template`;
CREATE TABLE `progression_world`.`reference_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`reference_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`reference_loot_template` WHERE `Item`=50289
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`reference_loot_template` WHERE `Entry`=34000
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`reference_loot_template` WHERE `Item` IN (19803, 19805, 19806, 19807, 19808)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 1 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`reference_loot_template` WHERE `Item` IN (17413, 17414, 17682, 17683, 18600)
UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`reference_loot_template` WHERE `Entry`=34349 AND `Item`=47241
UNION SELECT `Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`reference_loot_template` WHERE `Entry`=34349 AND `Item`=47241;

INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
(46000, 16900, 0, 0, 0, 1, 1, 1, 1, 'Stormrage Cover', 0, 18),
(46000, 16908, 0, 0, 0, 1, 1, 1, 1, 'Bloodfang Hood', 0, 18),
(46000, 16914, 0, 0, 0, 1, 1, 1, 1, 'Netherwind Crown', 0, 18),
(46000, 16921, 0, 0, 0, 1, 1, 1, 1, 'Halo of Transcendence', 0, 18),
(46000, 16929, 0, 0, 0, 1, 1, 1, 1, 'Nemesis Skullcap', 0, 18),
(46000, 16939, 0, 0, 0, 1, 1, 1, 1, 'Dragonstalker\'s Helm', 0, 18),
(46000, 16947, 0, 0, 0, 1, 1, 1, 1, 'Helmet of Ten Storms', 0, 18),
(46000, 16963, 0, 0, 0, 1, 1, 1, 1, 'Helm of Wrath', 0, 18),
(46001, 2564, 0, 0, 0, 1, 1, 1, 1, 'Elven Spirit Claws', 0, 18),
(46001, 7734, 0, 0, 0, 1, 1, 1, 1, 'Six Demon Bag', 0, 18),
(46001, 13009, 0, 0, 0, 1, 1, 1, 1, 'Cow King\'s Hide', 0, 18),
(46001, 13030, 0, 0, 0, 1, 1, 1, 1, 'Basilisk Bone', 0, 18),
(46001, 13046, 0, 0, 0, 1, 1, 1, 1, 'Blanchard\'s Stout', 0, 18),
(46001, 13065, 0, 0, 0, 1, 1, 1, 1, 'Wand of Allistarj', 0, 18),
(46001, 13066, 0, 0, 0, 1, 1, 1, 1, 'Wyrmslayer Spaulders', 0, 18),
(46001, 13085, 0, 0, 0, 1, 1, 1, 1, 'Horizon Choker', 0, 18),
(46001, 13125, 0, 0, 0, 1, 1, 1, 1, 'Elven Chain Boots', 0, 18),
(46001, 13139, 0, 0, 0, 1, 1, 1, 1, 'Guttbuster', 0, 18),
(46002, 10135, 0, 0, 0, 1, 1, 1, 1, 'High Councillor\'s Tunic', 0, 18),
(46002, 10143, 0, 0, 0, 1, 1, 1, 1, 'High Councillor\'s Robe', 0, 18),
(46002, 10151, 0, 0, 0, 1, 1, 1, 1, 'Mighty Tunic', 0, 18),
(46002, 10157, 0, 0, 0, 1, 1, 1, 1, 'Mercurial Breastplate', 0, 18),
(46002, 10158, 0, 0, 0, 1, 1, 1, 1, 'Mercurial Guard', 0, 18),
(46002, 10246, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Vest', 0, 18),
(46002, 10252, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Leggings', 0, 18),
(46002, 10254, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Robe', 0, 18),
(46002, 10262, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Legguards', 0, 18),
(46002, 10264, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Tunic', 0, 18),
(46002, 10266, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Breastplate', 0, 18),
(46002, 10271, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Shield', 0, 18),
(46002, 10273, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Legplates', 0, 18),
(46002, 10367, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Shield', 0, 18),
(46002, 10384, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Armor', 0, 18),
(46002, 10389, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Legplates', 0, 18),
(46002, 11980, 0, 0, 0, 1, 1, 1, 1, 'Opal Ring', 0, 18),
(46002, 12017, 0, 0, 0, 1, 1, 1, 1, 'Prismatic Band', 0, 18),
(46002, 12048, 0, 0, 0, 1, 1, 1, 1, 'Prismatic Pendant', 0, 18),
(46002, 12058, 0, 0, 0, 1, 1, 1, 1, 'Demonic Bone Ring', 0, 18),
(46002, 14328, 0, 0, 0, 1, 1, 1, 1, 'Eternal Chestguard', 0, 18),
(46002, 14332, 0, 0, 0, 1, 1, 1, 1, 'Eternal Crown', 0, 18),
(46002, 14336, 0, 0, 0, 1, 1, 1, 1, 'Eternal Wraps', 0, 18),
(46002, 14456, 0, 0, 0, 1, 1, 1, 1, 'Elunarian Vest', 0, 18),
(46002, 14464, 0, 0, 0, 1, 1, 1, 1, 'Elunarian Silk Robes', 0, 18),
(46002, 14680, 0, 0, 0, 1, 1, 1, 1, 'Indomitable Vest', 0, 18),
(46002, 14811, 0, 0, 0, 1, 1, 1, 1, 'Warstrike Chestguard', 0, 18),
(46002, 14812, 0, 0, 0, 1, 1, 1, 1, 'Warstrike Buckler', 0, 18),
(46002, 14975, 0, 0, 0, 1, 1, 1, 1, 'Exalted Harness', 0, 18),
(46002, 14979, 0, 0, 0, 1, 1, 1, 1, 'Exalted Helmet', 0, 18),
(46002, 14982, 0, 0, 0, 1, 1, 1, 1, 'Exalted Shield', 0, 18),
(46002, 15221, 0, 0, 0, 1, 1, 1, 1, 'Holy War Sword', 0, 18),
(46002, 15240, 0, 0, 0, 1, 1, 1, 1, 'Demon\'s Claw', 0, 18),
(46002, 15247, 0, 0, 0, 1, 1, 1, 1, 'Bloodstrike Dagger', 0, 18),
(46002, 15258, 0, 0, 0, 1, 1, 1, 1, 'Divine Warblade', 0, 18),
(46002, 15283, 0, 0, 0, 1, 1, 1, 1, 'Lunar Wand', 0, 18),
(46002, 15289, 0, 0, 0, 1, 1, 1, 1, 'Archstrike Bow', 0, 18),
(46002, 15439, 0, 0, 0, 1, 1, 1, 1, 'Supreme Crown', 0, 18),
(46002, 15442, 0, 0, 0, 1, 1, 1, 1, 'Supreme Breastplate', 0, 18),
(46002, 15680, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Chestpiece', 0, 18),
(46002, 15684, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Skullcap', 0, 18),
(46002, 15687, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Shield', 0, 18),
(46002, 15941, 0, 0, 0, 1, 1, 1, 1, 'High Councillor\'s Scepter', 0, 18),
(46002, 15942, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Rod', 0, 18),
(46002, 15968, 0, 0, 0, 1, 1, 1, 1, 'Elunarian Sphere', 0, 18),
(46002, 15989, 0, 0, 0, 1, 1, 1, 1, 'Eternal Rod', 0, 18),
(46003, 1203, 0, 0, 0, 1, 1, 1, 1, 'Aegis of Stormwind', 0, 18),
(46003, 1973, 0, 0, 0, 1, 1, 1, 1, 'Orb of Deception', 0, 18),
(46003, 2564, 0, 0, 0, 1, 1, 1, 1, 'Elven Spirit Claws', 0, 18),
(46003, 4696, 0, 0, 0, 1, 1, 1, 1, 'Lapidis Tankard of Tidesippe', 0, 18),
(46003, 5266, 0, 0, 0, 1, 1, 1, 1, 'Eye of Adaegus', 0, 18),
(46003, 5267, 0, 0, 0, 1, 1, 1, 1, 'Scarlet Kris', 0, 18),
(46003, 6622, 0, 0, 0, 1, 1, 1, 1, 'Sword of Zeal', 0, 18),
(46003, 7734, 0, 0, 0, 1, 1, 1, 1, 'Six Demon Bag', 0, 18),
(46003, 7976, 0, 0, 0, 1, 1, 1, 1, 'Plans: Mithril Shield Spike', 0, 18),
(46003, 7991, 0, 0, 0, 1, 1, 1, 1, 'Plans: Mithril Scale Shoulders', 0, 18),
(46003, 8028, 0, 0, 0, 1, 1, 1, 1, 'Plans: Runed Mithril Hammer', 0, 18),
(46003, 9402, 0, 0, 0, 1, 1, 1, 1, 'Earthborn Kilt', 0, 18),
(46003, 10605, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Spellpower Goggles Xtreme', 0, 18),
(46003, 10608, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Sniper Scope', 0, 18),
(46003, 11302, 0, 0, 0, 1, 1, 1, 1, 'Uther\'s Strength', 0, 18),
(46003, 12698, 0, 0, 0, 1, 1, 1, 1, 'Plans: Dawnbringer Shoulders', 0, 18),
(46003, 12711, 0, 0, 0, 1, 1, 1, 1, 'Plans: Whitesoul Helm', 0, 18),
(46003, 12717, 0, 0, 0, 1, 1, 1, 1, 'Plans: Lionheart Helm', 0, 18),
(46003, 12720, 0, 0, 0, 1, 1, 1, 1, 'Plans: Stronghold Gauntlets', 0, 18),
(46003, 12728, 0, 0, 0, 1, 1, 1, 1, 'Plans: Invulnerable Mail', 0, 18),
(46003, 13000, 0, 0, 0, 1, 1, 1, 1, 'Staff of Hale Magefire', 0, 18),
(46003, 13001, 0, 0, 0, 1, 1, 1, 1, 'Maiden\'s Circle', 0, 18),
(46003, 13002, 0, 0, 0, 1, 1, 1, 1, 'Lady Alizabeth\'s Pendant', 0, 18),
(46003, 13003, 0, 0, 0, 1, 1, 1, 1, 'Lord Alexander\'s Battle Axe', 0, 18),
(46003, 13004, 0, 0, 0, 1, 1, 1, 1, 'Torch of Austen', 0, 18),
(46003, 13006, 0, 0, 0, 1, 1, 1, 1, 'Mass of McGowan', 0, 18),
(46003, 13007, 0, 0, 0, 1, 1, 1, 1, 'Mageflame Cloak', 0, 18),
(46003, 13008, 0, 0, 0, 1, 1, 1, 1, 'Dalewind Trousers', 0, 18),
(46003, 13009, 0, 0, 0, 1, 1, 1, 1, 'Cow King\'s Hide', 0, 18),
(46003, 13013, 0, 0, 0, 1, 1, 1, 1, 'Elder Wizard\'s Mantle', 0, 18),
(46003, 13015, 0, 0, 0, 1, 1, 1, 1, 'Serathil', 0, 18),
(46003, 13030, 0, 0, 0, 1, 1, 1, 1, 'Basilisk Bone', 0, 18),
(46003, 13036, 0, 0, 0, 1, 1, 1, 1, 'Assassination Blade', 0, 18),
(46003, 13040, 0, 0, 0, 1, 1, 1, 1, 'Heartseeking Crossbow', 0, 18),
(46003, 13047, 0, 0, 0, 1, 1, 1, 1, 'Twig of the World Tree', 0, 18),
(46003, 13053, 0, 0, 0, 1, 1, 1, 1, 'Doombringer', 0, 18),
(46003, 13060, 0, 0, 0, 1, 1, 1, 1, 'The Needler', 0, 18),
(46003, 13066, 0, 0, 0, 1, 1, 1, 1, 'Wyrmslayer Spaulders', 0, 18),
(46003, 13067, 0, 0, 0, 1, 1, 1, 1, 'Hydralick Armor', 0, 18),
(46003, 13070, 0, 0, 0, 1, 1, 1, 1, 'Sapphiron\'s Scale Boots', 0, 18),
(46003, 13072, 0, 0, 0, 1, 1, 1, 1, 'Stonegrip Gauntlets', 0, 18),
(46003, 13073, 0, 0, 0, 1, 1, 1, 1, 'Mugthol\'s Helm', 0, 18),
(46003, 13075, 0, 0, 0, 1, 1, 1, 1, 'Direwing Legguards', 0, 18),
(46003, 13077, 0, 0, 0, 1, 1, 1, 1, 'Girdle of Uther', 0, 18),
(46003, 13083, 0, 0, 0, 1, 1, 1, 1, 'Garrett Family Crest', 0, 18),
(46003, 13085, 0, 0, 0, 1, 1, 1, 1, 'Horizon Choker', 0, 18),
(46003, 13091, 0, 0, 0, 1, 1, 1, 1, 'Medallion of Grand Marshal Morris', 0, 18),
(46003, 13096, 0, 0, 0, 1, 1, 1, 1, 'Band of the Hierophant', 0, 18),
(46003, 13107, 0, 0, 0, 1, 1, 1, 1, 'Magiskull Cuffs', 0, 18),
(46003, 13111, 0, 0, 0, 1, 1, 1, 1, 'Sandals of the Insurgent', 0, 18),
(46003, 13113, 0, 0, 0, 1, 1, 1, 1, 'Feathermoon Headdress', 0, 18),
(46003, 13116, 0, 0, 0, 1, 1, 1, 1, 'Spaulders of the Unseen', 0, 18),
(46003, 13118, 0, 0, 0, 1, 1, 1, 1, 'Serpentine Sash', 0, 18),
(46003, 13120, 0, 0, 0, 1, 1, 1, 1, 'Deepfury Bracers', 0, 18),
(46003, 13123, 0, 0, 0, 1, 1, 1, 1, 'Dreamwalker Armor', 0, 18),
(46003, 13125, 0, 0, 0, 1, 1, 1, 1, 'Elven Chain Boots', 0, 18),
(46003, 13126, 0, 0, 0, 1, 1, 1, 1, 'Battlecaller Gauntlets', 0, 18),
(46003, 13130, 0, 0, 0, 1, 1, 1, 1, 'Windrunner Legguards', 0, 18),
(46003, 13133, 0, 0, 0, 1, 1, 1, 1, 'Drakesfire Epaulets', 0, 18),
(46003, 13135, 0, 0, 0, 1, 1, 1, 1, 'Lordly Armguards', 0, 18),
(46003, 13144, 0, 0, 0, 1, 1, 1, 1, 'Serenity Belt', 0, 18),
(46003, 13146, 0, 0, 0, 1, 1, 1, 1, 'Shell Launcher Shotgun', 0, 18),
(46003, 14501, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Mooncloth Vest', 0, 18),
(46003, 14509, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Mooncloth Circlet', 0, 18),
(46003, 14511, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Gloves of Spell Mastery', 0, 18),
(46003, 22388, 0, 0, 0, 1, 1, 1, 1, 'Plans: Titanic Leggings', 0, 18),
(46003, 22389, 0, 0, 0, 1, 1, 1, 1, 'Plans: Sageblade', 0, 18),
(46003, 22390, 0, 0, 0, 1, 1, 1, 1, 'Plans: Persuader', 0, 18),
(46003, 22393, 0, 0, 0, 1, 1, 1, 1, 'Codex: Prayer of Shadow Protection', 0, 18),
(46003, 22890, 0, 0, 0, 1, 1, 1, 1, 'Tome of Frost Ward V', 0, 18),
(46003, 22891, 0, 0, 0, 1, 1, 1, 1, 'Grimoire of Shadow Ward IV', 0, 18),
(46004, 9297, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Elixir of Dream Vision', 0, 18),
(46004, 10246, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Vest', 0, 18),
(46004, 10247, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Boots', 0, 18),
(46004, 10248, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Bracers', 0, 18),
(46004, 10249, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Cloak', 0, 18),
(46004, 10250, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Hat', 0, 18),
(46004, 10251, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Gloves', 0, 18),
(46004, 10252, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Leggings', 0, 18),
(46004, 10253, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Mantle', 0, 18),
(46004, 10254, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Robe', 0, 18),
(46004, 10255, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Belt', 0, 18),
(46004, 10256, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Bracers', 0, 18),
(46004, 10257, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Boots', 0, 18),
(46004, 10258, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Cape', 0, 18),
(46004, 10259, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Belt', 0, 18),
(46004, 10260, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Gloves', 0, 18),
(46004, 10261, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Bandana', 0, 18),
(46004, 10262, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Legguards', 0, 18),
(46004, 10263, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Shoulders', 0, 18),
(46004, 10264, 0, 0, 0, 1, 1, 1, 1, 'Adventurer\'s Tunic', 0, 18),
(46004, 10265, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Bracers', 0, 18),
(46004, 10266, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Breastplate', 0, 18),
(46004, 10267, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Cape', 0, 18),
(46004, 10268, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Gauntlets', 0, 18),
(46004, 10269, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Girdle', 0, 18),
(46004, 10270, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Boots', 0, 18),
(46004, 10272, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Circlet', 0, 18),
(46004, 10273, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Legplates', 0, 18),
(46004, 10274, 0, 0, 0, 1, 1, 1, 1, 'Masterwork Pauldrons', 0, 18),
(46004, 10367, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Shield', 0, 18),
(46004, 10384, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Armor', 0, 18),
(46004, 10385, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Greaves', 0, 18),
(46004, 10386, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Gauntlets', 0, 18),
(46004, 10387, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Girdle', 0, 18),
(46004, 10388, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Helm', 0, 18),
(46004, 10389, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Legplates', 0, 18),
(46004, 10390, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Pauldrons', 0, 18),
(46004, 10391, 0, 0, 0, 1, 1, 1, 1, 'Hyperion Vambraces', 0, 18),
(46004, 11224, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Shield - Frost Resistance', 0, 18),
(46004, 11226, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Gloves - Riding Skill', 0, 18),
(46004, 12017, 0, 0, 0, 1, 1, 1, 1, 'Prismatic Band', 0, 18),
(46004, 12048, 0, 0, 0, 1, 1, 1, 1, 'Prismatic Pendant', 0, 18),
(46004, 12682, 0, 0, 0, 1, 1, 1, 1, 'Plans: Thorium Armor', 0, 18),
(46004, 12683, 0, 0, 0, 1, 1, 1, 1, 'Plans: Thorium Belt', 0, 18),
(46004, 12684, 0, 0, 0, 1, 1, 1, 1, 'Plans: Thorium Bracers', 0, 18),
(46004, 12685, 0, 0, 0, 1, 1, 1, 1, 'Plans: Radiant Belt', 0, 18),
(46004, 12689, 0, 0, 0, 1, 1, 1, 1, 'Plans: Radiant Breastplate', 0, 18),
(46004, 12702, 0, 0, 0, 1, 1, 1, 1, 'Plans: Radiant Circlet', 0, 18),
(46004, 13486, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Transmute Undeath to Water', 0, 18),
(46004, 13487, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Transmute Water to Undeath', 0, 18),
(46004, 13488, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Transmute Life to Earth', 0, 18),
(46004, 13489, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Transmute Earth to Life', 0, 18),
(46004, 14328, 0, 0, 0, 1, 1, 1, 1, 'Eternal Chestguard', 0, 18),
(46004, 14329, 0, 0, 0, 1, 1, 1, 1, 'Eternal Boots', 0, 18),
(46004, 14330, 0, 0, 0, 1, 1, 1, 1, 'Eternal Bindings', 0, 18),
(46004, 14331, 0, 0, 0, 1, 1, 1, 1, 'Eternal Cloak', 0, 18),
(46004, 14332, 0, 0, 0, 1, 1, 1, 1, 'Eternal Crown', 0, 18),
(46004, 14333, 0, 0, 0, 1, 1, 1, 1, 'Eternal Gloves', 0, 18),
(46004, 14334, 0, 0, 0, 1, 1, 1, 1, 'Eternal Sarong', 0, 18),
(46004, 14335, 0, 0, 0, 1, 1, 1, 1, 'Eternal Spaulders', 0, 18),
(46004, 14336, 0, 0, 0, 1, 1, 1, 1, 'Eternal Wraps', 0, 18),
(46004, 14337, 0, 0, 0, 1, 1, 1, 1, 'Eternal Cord', 0, 18),
(46004, 14975, 0, 0, 0, 1, 1, 1, 1, 'Exalted Harness', 0, 18),
(46004, 14976, 0, 0, 0, 1, 1, 1, 1, 'Exalted Gauntlets', 0, 18),
(46004, 14977, 0, 0, 0, 1, 1, 1, 1, 'Exalted Girdle', 0, 18),
(46004, 14978, 0, 0, 0, 1, 1, 1, 1, 'Exalted Sabatons', 0, 18),
(46004, 14979, 0, 0, 0, 1, 1, 1, 1, 'Exalted Helmet', 0, 18),
(46004, 14980, 0, 0, 0, 1, 1, 1, 1, 'Exalted Legplates', 0, 18),
(46004, 14981, 0, 0, 0, 1, 1, 1, 1, 'Exalted Epaulets', 0, 18),
(46004, 14982, 0, 0, 0, 1, 1, 1, 1, 'Exalted Shield', 0, 18),
(46004, 14983, 0, 0, 0, 1, 1, 1, 1, 'Exalted Armsplints', 0, 18),
(46004, 15221, 0, 0, 0, 1, 1, 1, 1, 'Holy War Sword', 0, 18),
(46004, 15229, 0, 0, 0, 1, 1, 1, 1, 'Blesswind Hammer', 0, 18),
(46004, 15240, 0, 0, 0, 1, 1, 1, 1, 'Demon\'s Claw', 0, 18),
(46004, 15247, 0, 0, 0, 1, 1, 1, 1, 'Bloodstrike Dagger', 0, 18),
(46004, 15258, 0, 0, 0, 1, 1, 1, 1, 'Divine Warblade', 0, 18),
(46004, 15267, 0, 0, 0, 1, 1, 1, 1, 'Brutehammer', 0, 18),
(46004, 15273, 0, 0, 0, 1, 1, 1, 1, 'Death Striker', 0, 18),
(46004, 15278, 0, 0, 0, 1, 1, 1, 1, 'Solstice Staff', 0, 18),
(46004, 15283, 0, 0, 0, 1, 1, 1, 1, 'Lunar Wand', 0, 18),
(46004, 15289, 0, 0, 0, 1, 1, 1, 1, 'Archstrike Bow', 0, 18),
(46004, 15325, 0, 0, 0, 1, 1, 1, 1, 'Sharpshooter Harquebus', 0, 18),
(46004, 15434, 0, 0, 0, 1, 1, 1, 1, 'Supreme Sash', 0, 18),
(46004, 15435, 0, 0, 0, 1, 1, 1, 1, 'Supreme Shoes', 0, 18),
(46004, 15436, 0, 0, 0, 1, 1, 1, 1, 'Supreme Bracers', 0, 18),
(46004, 15437, 0, 0, 0, 1, 1, 1, 1, 'Supreme Cape', 0, 18),
(46004, 15438, 0, 0, 0, 1, 1, 1, 1, 'Supreme Gloves', 0, 18),
(46004, 15439, 0, 0, 0, 1, 1, 1, 1, 'Supreme Crown', 0, 18),
(46004, 15440, 0, 0, 0, 1, 1, 1, 1, 'Supreme Leggings', 0, 18),
(46004, 15441, 0, 0, 0, 1, 1, 1, 1, 'Supreme Shoulders', 0, 18),
(46004, 15442, 0, 0, 0, 1, 1, 1, 1, 'Supreme Breastplate', 0, 18),
(46004, 15678, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Sabatons', 0, 18),
(46004, 15679, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Bracers', 0, 18),
(46004, 15680, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Chestpiece', 0, 18),
(46004, 15681, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Cloak', 0, 18),
(46004, 15682, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Gauntlets', 0, 18),
(46004, 15683, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Girdle', 0, 18),
(46004, 15684, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Skullcap', 0, 18),
(46004, 15685, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Legplates', 0, 18),
(46004, 15686, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Shoulder Pads', 0, 18),
(46004, 15687, 0, 0, 0, 1, 1, 1, 1, 'Triumphant Shield', 0, 18),
(46004, 15942, 0, 0, 0, 1, 1, 1, 1, 'Master\'s Rod', 0, 18),
(46004, 16044, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Lifelike Mechanical Toad', 0, 18),
(46004, 16055, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Arcane Bomb', 0, 18),
(46004, 16253, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Chest - Greater Stats', 0, 18),
(46005, 17962, 0, 0, 0, 1, 1, 1, 1, 'Blue Sack of Gems', 0, 18),
(46005, 17963, 0, 0, 0, 1, 1, 1, 1, 'Green Sack of Gems', 0, 18),
(46005, 17964, 0, 0, 0, 1, 1, 1, 1, 'Gray Sack of Gems', 0, 18),
(46005, 17965, 0, 0, 0, 1, 1, 1, 1, 'Yellow Sack of Gems', 0, 18),
(46005, 17969, 0, 0, 0, 1, 1, 1, 1, 'Red Sack of Gems', 0, 18),
(46006, 16900, 0, 0, 0, 1, 1, 1, 1, 'Stormrage Cover', 0, 18),
(46006, 16908, 0, 0, 0, 1, 1, 1, 1, 'Bloodfang Hood', 0, 18),
(46006, 16914, 0, 0, 0, 1, 1, 1, 1, 'Netherwind Crown', 0, 18),
(46006, 16921, 0, 0, 0, 1, 1, 1, 1, 'Halo of Transcendence', 0, 18),
(46006, 16929, 0, 0, 0, 1, 1, 1, 1, 'Nemesis Skullcap', 0, 18),
(46006, 16939, 0, 0, 0, 1, 1, 1, 1, 'Dragonstalker\'s Helm', 0, 18),
(46006, 16955, 0, 0, 0, 1, 1, 1, 1, 'Judgement Crown', 0, 18),
(46006, 16963, 0, 0, 0, 1, 1, 1, 1, 'Helm of Wrath', 0, 18),
(46007, 17064, 0, 8, 0, 1, 1, 1, 1, 'Shard of the Scale', 0, 18),
(46007, 17068, 0, 8, 0, 1, 1, 1, 1, 'Deathbringer', 0, 18),
(46007, 17075, 0, 8, 0, 1, 1, 1, 1, 'Vis\'kag the Bloodletter', 0, 18),
(46008, 16845, 0, 0, 0, 1, 1, 1, 1, 'Giantstalker\'s Breastplate', 0, 18),
(46008, 16867, 0, 0, 0, 1, 1, 1, 1, 'Legplates of Might', 0, 18),
(46008, 16919, 0, 0, 0, 1, 1, 1, 1, 'Boots of Transcendence', 0, 18),
(46008, 17067, 0, 0, 0, 1, 1, 1, 1, 'Ancient Cornerstone Grimoire', 0, 18),
(46008, 17078, 0, 0, 0, 1, 1, 1, 1, 'Sapphiron Drape', 0, 18),
(46008, 18205, 0, 0, 0, 1, 1, 1, 1, 'Eskhandar\'s Collar', 0, 18),
(46008, 18813, 0, 0, 0, 1, 1, 1, 1, 'Ring of Binding', 0, 18);

DROP TABLE IF EXISTS `progression_world`.`skinning_loot_template`;
CREATE TABLE `progression_world`.`skinning_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

DROP TABLE IF EXISTS `progression_world`.`spell_loot_template`;
CREATE TABLE `progression_world`.`spell_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
