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
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item`=47241 AND `Entry` IN (
    10184, -- Onyxia
    12129, -- Onyxian Warder
    15928, -- Thaddius
    15931, -- Grobbulus
    15932, -- Gluth
    15936, -- Heigan the Unclean
    15952, -- Maexxna
    15953, -- Grand Widow Faerlina
    15954, -- Noth the Plaguebringer
    15956, -- Anub'Rekhan
    15989, -- Sapphiron
    15990, -- Kel'Thuzad
    16011, -- Loatheb
    16028, -- Patchwerk
    16060, -- Gothik the Harvester
    16061, -- Instructor Razuvious
    28860, -- Sartharion <The Onyx Guardian>
    29249, -- Anub'Rekhan (1)
    29268, -- Grand Widow Faerlina (1)
    29278, -- Maexxna (1)
    29324, -- Patchwerk (1)
    29373, -- Grobbulus (1)
    29417, -- Gluth (1)
    29448, -- Thaddius (1)
    29615, -- Noth the Plaguebringer (1)
    29701, -- Heigan the Unclean (1)
    29718, -- Loatheb (1)
    29932, -- Eck the Ferocious
    29940, -- Instructor Razuvious (1)
    29955, -- Gothik the Harvester (1)
    29991, -- Sapphiron (1)
    30061, -- Kel'Thuzad (1)
    30397, -- Commander Kolurg (1)
    30398, -- Commander Stoutbeard (1)
    30510, -- Grand Magus Telestra (1)
    30529, -- Anomalus (1)
    30530, -- Moorabi (1) <High Prophet of Mam'toth>
    30532, -- Ormorok the Tree-Shaper (1)
    30540, -- Keristrasza (1)
    30748, -- Prince Keleseth (1) <The San'layn>
    30774, -- Gortok Palehoof (1)
    30788, -- King Ymiron (1)
    30807, -- Skadi the Ruthless (1)
    30810, -- Svala Sorrowgrave (1)
    31125, -- Archavon the Stone Watcher
    31211, -- Meathook (1)
    31212, -- Salramm the Fleshcrafter (1)
    31215, -- Chrono-Lord Epoch (1)
    31311, -- Sartharion (1) <The Onyx Guardian>
    31349, -- King Dred (1)
    31350, -- Novos the Summoner (1)
    31360, -- The Prophet Tharon'ja (1)
    31362, -- Trollgore (1)
    31367, -- Drakkari Elemental (1)
    31368, -- Gal'darah (1) <High Prophet of Akali>
    31370, -- Slad'ran (1) <High Prophet of Sseratus>
    31381, -- Krystallus (1)
    31384, -- Maiden of Grief (1)
    31386, -- Sjonnir The Ironshaper (1)
    31456, -- Elder Nadox (1)
    31463, -- Amanitar (1)
    31464, -- Herald Volazj (1)
    31465, -- Jedoga Shadowseeker (1)
    31469, -- Prince Taldaram (1)
    31506, -- Cyanigosa (1)
    31507, -- Erekem (1)
    31508, -- Ichoron (1)
    31509, -- Lavanthor (1)
    31510, -- Moragg (1)
    31511, -- Xevozz (1)
    31512, -- Zuramat the Obliterator (1)
    31533, -- General Bjarngrim (1)
    31536, -- Volkhan (1)
    31537, -- Ionar (1)
    31538, -- Loken (1)
    31558, -- Drakos the Interrogator (1)
    31559, -- Varos Cloudstrider (1) <Azure-Lord of the Blue Dragonflight>
    31560, -- Mage-Lord Urom (1)
    31610, -- Anub'arak (1)
    31611, -- Hadronox (1)
    31612, -- Krik'thir the Gatewatcher (1)
    31656, -- Dalronn the Controller (1)
    31673, -- Ingvar the Plunderer (1)
    31679, -- Skarvald the Constructor (1)
    31722, -- Archavon the Stone Watcher (1)
    32313, -- Infinite Corruptor (1)
    32857, -- Stormcaller Brundir
    32867, -- Steelbreaker
    32927, -- Runemaster Molgeim
    33118, -- Ignis the Furnace Master
    33186, -- Razorscale
    33190, -- Ignis the Furnace Master (1)
    33271, -- General Vezax
    33288, -- Yogg-Saron
    33293, -- XT-002 Deconstructor
    33449, -- General Vezax (1)
    33515, -- Auriaya
    33692, -- Runemaster Molgeim (1)
    33693, -- Steelbreaker (1)
    33694, -- Stormcaller Brundir (1)
    33724, -- Razorscale (1)
    33885, -- XT-002 Deconstructor (1)
    33955, -- Yogg-Saron (1)
    33993, -- Emalon the Storm Watcher
    33994, -- Emalon the Storm Watcher (1)
    34175, -- Auriaya (1)
    35013, -- Koralon the Flame Watcher
    35360, -- Koralon the Flame Watcher (1)
    35490, -- The Black Knight (1)
    36538 -- Onyxia (1)
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=31311 AND `Reference` IN (
    34349 -- Sartharion (1) <The Onyx Guardian>
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry` IN (69, 299) AND `Item` IN (
    50432 -- Diseased Wolf Pelt
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    49205 -- Small Scroll
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=10184 AND `Item` NOT IN (
    18705, -- Mature Black Dragon Sinew
    21108, -- Draconic for Dummies
    47241 -- Emblem of Triumph
) UNION (SELECT clt.`Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Conquest') AS `Comment`, 19 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (
    10184, -- Onyxia
    15928, -- Thaddius
    15931, -- Grobbulus
    15932, -- Gluth
    15936, -- Heigan the Unclean
    15952, -- Maexxna
    15953, -- Grand Widow Faerlina
    15954, -- Noth the Plaguebringer
    15956, -- Anub'Rekhan
    15989, -- Sapphiron
    15990, -- Kel'Thuzad
    16011, -- Loatheb
    16028, -- Patchwerk
    16060, -- Gothik the Harvester
    16061, -- Instructor Razuvious
    28860, -- Sartharion <The Onyx Guardian>
    29249, -- Anub'Rekhan (1)
    29268, -- Grand Widow Faerlina (1)
    29278, -- Maexxna (1)
    29324, -- Patchwerk (1)
    29373, -- Grobbulus (1)
    29417, -- Gluth (1)
    29448, -- Thaddius (1)
    29615, -- Noth the Plaguebringer (1)
    29701, -- Heigan the Unclean (1)
    29718, -- Loatheb (1)
    29932, -- Eck the Ferocious
    29940, -- Instructor Razuvious (1)
    29955, -- Gothik the Harvester (1)
    29991, -- Sapphiron (1)
    30061, -- Kel'Thuzad (1)
    30397, -- Commander Kolurg (1)
    30398, -- Commander Stoutbeard (1)
    30510, -- Grand Magus Telestra (1)
    30529, -- Anomalus (1)
    30530, -- Moorabi (1) <High Prophet of Mam'toth>
    30532, -- Ormorok the Tree-Shaper (1)
    30540, -- Keristrasza (1)
    30748, -- Prince Keleseth (1) <The San'layn>
    30774, -- Gortok Palehoof (1)
    30788, -- King Ymiron (1)
    30807, -- Skadi the Ruthless (1)
    30810, -- Svala Sorrowgrave (1)
    31125, -- Archavon the Stone Watcher
    31211, -- Meathook (1)
    31212, -- Salramm the Fleshcrafter (1)
    31215, -- Chrono-Lord Epoch (1)
    31311, -- Sartharion (1) <The Onyx Guardian>
    31349, -- King Dred (1)
    31350, -- Novos the Summoner (1)
    31360, -- The Prophet Tharon'ja (1)
    31362, -- Trollgore (1)
    31367, -- Drakkari Elemental (1)
    31368, -- Gal'darah (1) <High Prophet of Akali>
    31370, -- Slad'ran (1) <High Prophet of Sseratus>
    31381, -- Krystallus (1)
    31384, -- Maiden of Grief (1)
    31386, -- Sjonnir The Ironshaper (1)
    31456, -- Elder Nadox (1)
    31463, -- Amanitar (1)
    31464, -- Herald Volazj (1)
    31465, -- Jedoga Shadowseeker (1)
    31469, -- Prince Taldaram (1)
    31506, -- Cyanigosa (1)
    31507, -- Erekem (1)
    31508, -- Ichoron (1)
    31509, -- Lavanthor (1)
    31510, -- Moragg (1)
    31511, -- Xevozz (1)
    31512, -- Zuramat the Obliterator (1)
    31533, -- General Bjarngrim (1)
    31536, -- Volkhan (1)
    31537, -- Ionar (1)
    31538, -- Loken (1)
    31558, -- Drakos the Interrogator (1)
    31559, -- Varos Cloudstrider (1) <Azure-Lord of the Blue Dragonflight>
    31560, -- Mage-Lord Urom (1)
    31610, -- Anub'arak (1)
    31611, -- Hadronox (1)
    31612, -- Krik'thir the Gatewatcher (1)
    31656, -- Dalronn the Controller (1)
    31673, -- Ingvar the Plunderer (1)
    31679, -- Skarvald the Constructor (1)
    31722, -- Archavon the Stone Watcher (1)
    32313, -- Infinite Corruptor (1)
    32857, -- Stormcaller Brundir
    32867, -- Steelbreaker
    32927, -- Runemaster Molgeim
    33118, -- Ignis the Furnace Master
    33186, -- Razorscale
    33271, -- General Vezax
    33288, -- Yogg-Saron
    33293, -- XT-002 Deconstructor
    33515, -- Auriaya
    35013, -- Koralon the Flame Watcher
    35360, -- Koralon the Flame Watcher (1)
    35490, -- The Black Knight (1)
    36538 -- Onyxia (1)
)) UNION (SELECT clt.`Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Valor') AS `Comment`, 18 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (
    32857, -- Stormcaller Brundir
    32867, -- Steelbreaker
    32927, -- Runemaster Molgeim
    33118, -- Ignis the Furnace Master
    33186, -- Razorscale
    33271, -- General Vezax
    33288, -- Yogg-Saron
    33293, -- XT-002 Deconstructor
    33515 -- Auriaya
)) UNION (SELECT clt.`Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Conquest') AS `Comment`, 18 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (
    33190, -- Ignis the Furnace Master (1)
    33449, -- General Vezax (1)
    33692, -- Runemaster Molgeim (1)
    33693, -- Steelbreaker (1)
    33694, -- Stormcaller Brundir (1)
    33724, -- Razorscale (1)
    33885, -- XT-002 Deconstructor (1)
    33955, -- Yogg-Saron (1)
    33993, -- Emalon the Storm Watcher
    33994, -- Emalon the Storm Watcher (1)
    34175 -- Auriaya (1)
)) UNION (SELECT clt.`Entry`, 40752 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Heroism') AS `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (
    15928, -- Thaddius
    15931, -- Grobbulus
    15932, -- Gluth
    15936, -- Heigan the Unclean
    15952, -- Maexxna
    15953, -- Grand Widow Faerlina
    15954, -- Noth the Plaguebringer
    15956, -- Anub'Rekhan
    15989, -- Sapphiron
    15990, -- Kel'Thuzad
    16011, -- Loatheb
    16028, -- Patchwerk
    16060, -- Gothik the Harvester
    16061, -- Instructor Razuvious
    28860, -- Sartharion <The Onyx Guardian>
    29932, -- Eck the Ferocious
    30397, -- Commander Kolurg (1)
    30398, -- Commander Stoutbeard (1)
    30510, -- Grand Magus Telestra (1)
    30529, -- Anomalus (1)
    30530, -- Moorabi (1) <High Prophet of Mam'toth>
    30532, -- Ormorok the Tree-Shaper (1)
    30540, -- Keristrasza (1)
    30748, -- Prince Keleseth (1) <The San'layn>
    30774, -- Gortok Palehoof (1)
    30788, -- King Ymiron (1)
    30807, -- Skadi the Ruthless (1)
    30810, -- Svala Sorrowgrave (1)
    31125, -- Archavon the Stone Watcher
    31211, -- Meathook (1)
    31212, -- Salramm the Fleshcrafter (1)
    31215, -- Chrono-Lord Epoch (1)
    31349, -- King Dred (1)
    31350, -- Novos the Summoner (1)
    31360, -- The Prophet Tharon'ja (1)
    31362, -- Trollgore (1)
    31367, -- Drakkari Elemental (1)
    31368, -- Gal'darah (1) <High Prophet of Akali>
    31370, -- Slad'ran (1) <High Prophet of Sseratus>
    31381, -- Krystallus (1)
    31384, -- Maiden of Grief (1)
    31386, -- Sjonnir The Ironshaper (1)
    31456, -- Elder Nadox (1)
    31463, -- Amanitar (1)
    31464, -- Herald Volazj (1)
    31465, -- Jedoga Shadowseeker (1)
    31469, -- Prince Taldaram (1)
    31506, -- Cyanigosa (1)
    31507, -- Erekem (1)
    31508, -- Ichoron (1)
    31509, -- Lavanthor (1)
    31510, -- Moragg (1)
    31511, -- Xevozz (1)
    31512, -- Zuramat the Obliterator (1)
    31533, -- General Bjarngrim (1)
    31536, -- Volkhan (1)
    31537, -- Ionar (1)
    31538, -- Loken (1)
    31558, -- Drakos the Interrogator (1)
    31559, -- Varos Cloudstrider (1) <Azure-Lord of the Blue Dragonflight>
    31560, -- Mage-Lord Urom (1)
    31610, -- Anub'arak (1)
    31611, -- Hadronox (1)
    31612, -- Krik'thir the Gatewatcher (1)
    31656, -- Dalronn the Controller (1)
    31673, -- Ingvar the Plunderer (1)
    31679, -- Skarvald the Constructor (1)
    32313 -- Infinite Corruptor (1)
)) UNION (SELECT clt.`Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, clt.`MaxCount`, CONCAT(ct.`Name`, ' - Emblem of Valor') AS `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` clt LEFT OUTER JOIN `base_world`.`creature_template` ct ON ct.`entry`=clt.`Entry` WHERE `Item`=47241 AND clt.`Entry` IN (
    29249, -- Anub'Rekhan (1)
    29268, -- Grand Widow Faerlina (1)
    29278, -- Maexxna (1)
    29324, -- Patchwerk (1)
    29373, -- Grobbulus (1)
    29417, -- Gluth (1)
    29448, -- Thaddius (1)
    29615, -- Noth the Plaguebringer (1)
    29701, -- Heigan the Unclean (1)
    29718, -- Loatheb (1)
    29940, -- Instructor Razuvious (1)
    29955, -- Gothik the Harvester (1)
    29991, -- Sapphiron (1)
    30061, -- Kel'Thuzad (1)
    31311, -- Sartharion (1) <The Onyx Guardian>
    31722 -- Archavon the Stone Watcher (1)
)) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    21877, -- Netherweave Cloth
    27859, -- Zangar Caps
    27860, -- Purified Draenic Water
    31952 -- Khorium Lockbox
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    21103, -- Draconic for Dummies
    21104, -- Draconic for Dummies
    21105, -- Draconic for Dummies
    21108, -- Draconic for Dummies
    21110 -- Draconic for Dummies
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 5 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    18987 -- Blackhand's Command
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    18665, -- The Eye of Shadow
    18705 -- Mature Black Dragon Sinew
) UNION SELECT `Entry`, 18422 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=10184 AND `Item` IN (
    49643 -- Head of Onyxia -> Head of Onyxia
) UNION SELECT `Entry`, 18423 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry`=10184 AND `Item` IN (
    49644 -- Head of Onyxia -> Head of Onyxia
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 1 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    17413, -- Codex: Prayer of Fortitude
    17414, -- Codex: Prayer of Fortitude II
    17682, -- Book: Gift of the Wild
    17683, -- Book: Gift of the Wild II
    18600 -- Tome of Arcane Brilliance
) UNION SELECT `Entry`, 17008 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Item` IN (
    49205 -- Small Scroll -> Small Scroll
) UNION SELECT `Entry`, 750 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE `Entry` IN (69, 299) AND `Item` IN (
    50432 -- Diseased Wolf Pelt -> Tough Wolf Meat
);

INSERT INTO `progression_world`.`creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
-- Onyxia's Lair
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

-- Naxxramas
INSERT INTO `progression_world`.`creature_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_loot_template` WHERE (
    `entry` IN (
        15936, -- Heigan the Unclean
        15954, -- Noth the Plaguebringer
        16011 -- Loatheb
    ) AND `item` NOT IN (
        40752, -- Emblem of Heroism
        40753, -- Emblem of Valor
        45624, -- Emblem of Conquest
        47241 -- Emblem of Triumph
    )
);

/*
24016 = 48000
24024 = 48001
30061 = 48002
30107 = 48003
30457 = 48004
30464 = 48005
30458 = 48006
30474 = 48007
30476 = 48008
*/
INSERT INTO `progression_world`.`creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
-- Heigan the Unclean
(15936, 22726, 0, 30, 0, 1, 0, 1, 1, 'Heigan the Unclean - Splinter of Atiesh', 0, 16),
(15936, 48004, 48004, 100, 0, 1, 0, 1, 1, 'Heigan the Unclean - (ReferenceTable)', 0, 16),
(15936, 48006, 48006, 100, 0, 1, 0, 1, 1, 'Heigan the Unclean - (ReferenceTable)', 0, 16),
-- Noth the Plaguebringer
(15954, 22726, 0, 30, 0, 1, 0, 1, 1, 'Noth the Plaguebringer - Splinter of Atiesh', 0, 16),
(15954, 48004, 48004, 100, 0, 1, 0, 1, 1, 'Noth the Plaguebringer - (ReferenceTable)', 0, 16),
(15954, 48005, 48005, 100, 0, 1, 0, 1, 1, 'Noth the Plaguebringer - (ReferenceTable)', 0, 16),
-- Loatheb
(16011, 22726, 0, 30, 0, 1, 0, 1, 1, 'Loatheb - Splinter of Atiesh', 0, 16),
(16011, 48007, 48007, 100, 0, 1, 0, 2, 2, 'Loatheb - (ReferenceTable)', 0, 16),
(16011, 48008, 48008, 100, 0, 1, 0, 1, 1, 'Loatheb - (ReferenceTable)', 0, 16),
-- Stoneskin Gargoyle
(16168, 5760, 0, 0.2053, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Eternium Lockbox', 0, 16),
(16168, 7909, 0, 0.2053, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Aquamarine', 0, 16),
(16168, 7910, 0, 0.2053, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Star Ruby', 0, 16),
(16168, 12704, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Plans: Thorium Leggings', 0, 16),
(16168, 12713, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Plans: Radiant Leggings', 0, 16),
(16168, 12728, 0, 0.05, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Plans: Invulnerable Mail', 0, 16),
(16168, 12808, 0, 0.8214, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Essence of Undeath', 0, 16),
(16168, 14489, 0, 0.03, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Pattern: Frostweave Pants', 0, 16),
(16168, 14498, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Pattern: Runecloth Headband', 0, 16),
(16168, 14504, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Pattern: Runecloth Shoulders', 0, 16),
(16168, 14506, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Pattern: Felcloth Robe', 0, 16),
(16168, 14508, 0, 0.3, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Pattern: Felcloth Shoulders', 0, 16),
(16168, 16051, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Schematic: Thorium Shells', 0, 16),
(16168, 16251, 0, 0.06, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Formula: Enchant Bracer - Superior Stamina', 0, 16),
(16168, 17414, 0, 0.05, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Codex: Prayer of Fortitude II', 0, 16),
(16168, 17683, 0, 0.08, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Book: Gift of the Wild II', 0, 16),
(16168, 22373, 0, 24.1273, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Wartorn Leather Scrap', 0, 16),
(16168, 22374, 0, 14.3737, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Wartorn Chain Scrap', 0, 16),
(16168, 22375, 0, 21.5606, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Wartorn Plate Scrap', 0, 16),
(16168, 22376, 0, 35.0103, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Wartorn Cloth Scrap', 0, 16),
(16168, 22708, 0, 1, 1, 1, 0, 1, 1, 'Stoneskin Gargoyle - Fate of Ramaladni', 0, 16),
(16168, 22890, 0, 0.3, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Tome of Frost Ward V', 0, 16),
(16168, 22891, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Grimoire of Shadow Ward IV', 0, 16),
(16168, 23044, 0, 0.91, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Harbinger of Doom', 0, 16),
(16168, 23055, 0, 10.5749, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Word of Thawing', 0, 16),
(16168, 23069, 0, 0.15, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Necro-Knight\'s Garb', 0, 16),
(16168, 23221, 0, 0.19, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Misplaced Servo Arm', 0, 16),
(16168, 23226, 0, 0.12, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Ghoul Skin Tunic', 0, 16),
(16168, 23237, 0, 0.2053, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Ring of the Eternal Flame', 0, 16),
(16168, 23238, 0, 0.08, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Stygian Buckler', 0, 16),
(16168, 23663, 0, 0.05, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Girdle of Elemental Fury', 0, 16),
(16168, 23665, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Leggings of Elemental Fury', 0, 16),
(16168, 23666, 0, 0.02, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Belt of the Grand Crusader', 0, 16),
(16168, 23667, 0, 0.308, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Spaulders of the Grand Crusader', 0, 16),
(16168, 23668, 0, 0.2053, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - Leggings of the Grand Crusader', 0, 16),
(16168, 48000, 48000, 1, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - (ReferenceTable)', 0, 16),
(16168, 48002, 48002, 1, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - (ReferenceTable)', 0, 16),
(16168, 48003, 48003, 1, 0, 1, 0, 1, 1, 'Stoneskin Gargoyle - (ReferenceTable)', 0, 16),
-- Plague Slime
(16243, 3671, 0, 9.5455, 0, 1, 0, 1, 1, 'Plague Slime - Lifeless Skull', 0, 16),
(16243, 3928, 0, 0.18, 0, 1, 0, 1, 1, 'Plague Slime - Superior Healing Potion', 0, 16),
(16243, 5760, 0, 0.9091, 0, 1, 0, 1, 1, 'Plague Slime - Eternium Lockbox', 0, 16),
(16243, 7909, 0, 1.06, 0, 1, 0, 1, 1, 'Plague Slime - Aquamarine', 0, 16),
(16243, 7910, 0, 0.07, 0, 1, 0, 1, 1, 'Plague Slime - Star Ruby', 0, 16),
(16243, 8846, 0, 0.18, 0, 1, 0, 1, 1, 'Plague Slime - Gromsblood', 0, 16),
(16243, 14508, 0, 0.13, 0, 1, 0, 1, 1, 'Plague Slime - Pattern: Felcloth Shoulders', 0, 16),
(16243, 17683, 0, 0.18, 0, 1, 0, 1, 1, 'Plague Slime - Book: Gift of the Wild II', 0, 16),
(16243, 20763, 0, 27.7273, 0, 1, 0, 1, 1, 'Plague Slime - Broken Weapon', 0, 16),
(16243, 20768, 0, 4, 0, 1, 0, 1, 1, 'Plague Slime - Oozing Bag', 0, 16),
(16243, 20770, 0, 22.2727, 0, 1, 0, 1, 1, 'Plague Slime - Bubbling Green Ichor', 0, 16),
(16243, 22373, 0, 19.0909, 0, 1, 0, 1, 1, 'Plague Slime - Wartorn Leather Scrap', 0, 16),
(16243, 22374, 0, 11.8182, 0, 1, 0, 1, 1, 'Plague Slime - Wartorn Chain Scrap', 0, 16),
(16243, 22375, 0, 25, 0, 1, 0, 1, 1, 'Plague Slime - Wartorn Plate Scrap', 0, 16),
(16243, 22376, 0, 20.4545, 0, 1, 0, 1, 1, 'Plague Slime - Wartorn Cloth Scrap', 0, 16),
(16243, 22708, 0, 1, 1, 1, 0, 1, 1, 'Plague Slime - Fate of Ramaladni', 0, 16),
(16243, 22890, 0, 0.07, 0, 1, 0, 1, 1, 'Plague Slime - Tome of Frost Ward V', 0, 16),
(16243, 23044, 0, 0.07, 0, 1, 0, 1, 1, 'Plague Slime - Harbinger of Doom', 0, 16),
(16243, 23055, 0, 7.2727, 0, 1, 0, 1, 1, 'Plague Slime - Word of Thawing', 0, 16),
(16243, 23069, 0, 0.35, 0, 1, 0, 1, 1, 'Plague Slime - Necro-Knight\'s Garb', 0, 16),
(16243, 23221, 0, 0.13, 0, 1, 0, 1, 1, 'Plague Slime - Misplaced Servo Arm', 0, 16),
(16243, 23237, 0, 2.7273, 0, 1, 0, 1, 1, 'Plague Slime - Ring of the Eternal Flame', 0, 16),
(16243, 23238, 0, 0.35, 0, 1, 0, 1, 1, 'Plague Slime - Stygian Buckler', 0, 16),
(16243, 23666, 0, 0.9091, 0, 1, 0, 1, 1, 'Plague Slime - Belt of the Grand Crusader', 0, 16),
(16243, 23668, 0, 0.39, 0, 1, 0, 1, 1, 'Plague Slime - Leggings of the Grand Crusader', 0, 16),
(16243, 48000, 48000, 1, 0, 1, 0, 1, 1, 'Plague Slime - (ReferenceTable)', 0, 16),
(16243, 48001, 48001, 5, 0, 1, 0, 1, 1, 'Plague Slime - (ReferenceTable)', 0, 16),
(16243, 48002, 48002, 1, 0, 1, 0, 1, 1, 'Plague Slime - (ReferenceTable)', 0, 16),
(16243, 48003, 48003, 1, 0, 1, 0, 1, 1, 'Plague Slime - (ReferenceTable)', 0, 16),
-- Infectious Ghoul
(16244, 5760, 0, 0.9675, 0, 1, 0, 1, 1, 'Infectious Ghoul - Eternium Lockbox', 0, 16),
(16244, 7909, 0, 0.088, 0, 1, 0, 1, 1, 'Infectious Ghoul - Aquamarine', 0, 16),
(16244, 7910, 0, 0.1759, 0, 1, 0, 1, 1, 'Infectious Ghoul - Star Ruby', 0, 16),
(16244, 12713, 0, 0.02, 0, 1, 0, 1, 1, 'Infectious Ghoul - Plans: Radiant Leggings', 0, 16),
(16244, 12808, 0, 1.4072, 0, 1, 0, 1, 1, 'Infectious Ghoul - Essence of Undeath', 0, 16),
(16244, 14504, 0, 0.04, 0, 1, 0, 1, 1, 'Infectious Ghoul - Pattern: Runecloth Shoulders', 0, 16),
(16244, 14506, 0, 0.04, 0, 1, 0, 1, 1, 'Infectious Ghoul - Pattern: Felcloth Robe', 0, 16),
(16244, 14508, 0, 0.47, 0, 1, 0, 1, 1, 'Infectious Ghoul - Pattern: Felcloth Shoulders', 0, 16),
(16244, 15755, 0, 0.02, 0, 1, 0, 1, 1, 'Infectious Ghoul - Pattern: Chimeric Vest', 0, 16),
(16244, 15757, 0, 0.02, 0, 1, 0, 1, 1, 'Infectious Ghoul - Pattern: Wicked Leather Pants', 0, 16),
(16244, 15765, 0, 0.04, 0, 1, 0, 1, 1, 'Infectious Ghoul - Pattern: Runic Leather Pants', 0, 16),
(16244, 16251, 0, 0.02, 0, 1, 0, 1, 1, 'Infectious Ghoul - Formula: Enchant Bracer - Superior Stamina', 0, 16),
(16244, 17414, 0, 0.02, 0, 1, 0, 1, 1, 'Infectious Ghoul - Codex: Prayer of Fortitude II', 0, 16),
(16244, 17683, 0, 0.04, 0, 1, 0, 1, 1, 'Infectious Ghoul - Book: Gift of the Wild II', 0, 16),
(16244, 22373, 0, 24.5383, 0, 1, 0, 1, 1, 'Infectious Ghoul - Wartorn Leather Scrap', 0, 16),
(16244, 22374, 0, 13.5444, 0, 1, 0, 1, 1, 'Infectious Ghoul - Wartorn Chain Scrap', 0, 16),
(16244, 22375, 0, 22.5154, 0, 1, 0, 1, 1, 'Infectious Ghoul - Wartorn Plate Scrap', 0, 16),
(16244, 22376, 0, 30.343, 0, 1, 0, 1, 1, 'Infectious Ghoul - Wartorn Cloth Scrap', 0, 16),
(16244, 22393, 0, 0.02, 0, 1, 0, 1, 1, 'Infectious Ghoul - Codex: Prayer of Shadow Protection', 0, 16),
(16244, 22708, 0, 1, 1, 1, 0, 1, 1, 'Infectious Ghoul - Fate of Ramaladni', 0, 16),
(16244, 22890, 0, 0.16, 0, 1, 0, 1, 1, 'Infectious Ghoul - Tome of Frost Ward V', 0, 16),
(16244, 23044, 0, 0.62, 0, 1, 0, 1, 1, 'Infectious Ghoul - Harbinger of Doom', 0, 16),
(16244, 23055, 0, 10.642, 0, 1, 0, 1, 1, 'Infectious Ghoul - Word of Thawing', 0, 16),
(16244, 23069, 0, 0.78, 0, 1, 0, 1, 1, 'Infectious Ghoul - Necro-Knight\'s Garb', 0, 16),
(16244, 23221, 0, 0.47, 0, 1, 0, 1, 1, 'Infectious Ghoul - Misplaced Servo Arm', 0, 16),
(16244, 23226, 0, 0.35, 0, 1, 0, 1, 1, 'Infectious Ghoul - Ghoul Skin Tunic', 0, 16),
(16244, 23237, 0, 0.7036, 0, 1, 0, 1, 1, 'Infectious Ghoul - Ring of the Eternal Flame', 0, 16),
(16244, 23238, 0, 0.18, 0, 1, 0, 1, 1, 'Infectious Ghoul - Stygian Buckler', 0, 16),
(16244, 23666, 0, 0.31, 0, 1, 0, 1, 1, 'Infectious Ghoul - Belt of the Grand Crusader', 0, 16),
(16244, 23667, 0, 0.21, 0, 1, 0, 1, 1, 'Infectious Ghoul - Spaulders of the Grand Crusader', 0, 16),
(16244, 23668, 0, 0.09, 0, 1, 0, 1, 1, 'Infectious Ghoul - Leggings of the Grand Crusader', 0, 16),
(16244, 48000, 48000, 1, 0, 1, 0, 1, 1, 'Infectious Ghoul - (ReferenceTable)', 0, 16),
(16244, 48002, 48002, 1, 0, 1, 0, 1, 1, 'Infectious Ghoul - (ReferenceTable)', 0, 16),
(16244, 48003, 48003, 1, 0, 1, 0, 1, 1, 'Infectious Ghoul - (ReferenceTable)', 0, 16);
