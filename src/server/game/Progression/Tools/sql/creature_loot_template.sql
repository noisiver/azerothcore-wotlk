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
