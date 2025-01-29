DROP TABLE IF EXISTS `progression_world`.`npc_trainer`;
CREATE TABLE `progression_world`.`npc_trainer` (
    `ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `SpellID` INT(10) NOT NULL DEFAULT '0',
    `MoneyCost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ReqSkillLine` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `ReqSkillRank` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `ReqLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `ReqSpell` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`ID`, `SpellID`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`npc_trainer`
SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    1710, -- Summon Felsteed
    13820, -- Summon Warhorse
    23161, -- Dreadsteed
    23214, -- Charger
    33388, -- Apprentice Riding
    33391, -- Journeyman Riding
    33950, -- Flight Form
    34090, -- Expert Riding
    34767, -- Summon Charger
    34768, -- Summon Warhorse
    66842, -- Call of the Elements
    66843, -- Call of the Ancestors
    66844 -- Call of the Spirits
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    10847, -- Artisan First Aid
    18249, -- Artisan Fishing
    54083, -- Expert Fishing
    63742, -- Spidersilk Drape
    63743, -- Amulet of Truesight
    63746, -- Enchant Boots - Lesser Accuracy
    63750, -- High-powered Flashlight
    64725, -- Emerald Choker
    64726, -- Sky Sapphire Amulet
    64727, -- Runed Mana Band
    64728 -- Scarlet Signet
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE (
    (`ReqLevel` > 70 OR `ReqSkillRank` > 375) AND
    `SpellID` NOT IN (
        1710, -- Summon Felsteed
        10847, -- Artisan First Aid
        13820, -- Summon Warhorse
        18249, -- Artisan Fishing
        21562, -- Prayer of Fortitude
        21564, -- Prayer of Fortitude
        21849, -- Gift of the Wild
        21850, -- Gift of the Wild
        23028, -- Arcane Brilliance
        23161, -- Dreadsteed
        23214, -- Charger
        25782, -- Greater Blessing of Might
        25894, -- Greater Blessing of Wisdom
        25898, -- Greater Blessing of Kings
        25899, -- Greater Blessing of Sanctuary
        25916, -- Greater Blessing of Might
        25918, -- Greater Blessing of Wisdom
        27681, -- Prayer of Spirit
        33388, -- Apprentice Riding
        33391, -- Journeyman Riding
        33950, -- Flight Form
        34090, -- Expert Riding
        34767, -- Summon Charger
        34768, -- Summon Warhorse
        36936, -- Totemic Recall
        53042, -- Mixology
        54083, -- Expert Fishing
        63742, -- Spidersilk Drape
        63743, -- Amulet of Truesight
        63746, -- Enchant Boots - Lesser Accuracy
        63750, -- High-powered Flashlight
        64725, -- Emerald Choker
        64726, -- Sky Sapphire Amulet
        64727, -- Runed Mana Band
        64728, -- Scarlet Signet
        66842, -- Call of the Elements
        66843, -- Call of the Ancestors
        66844 -- Call of the Spirits
    )
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    1066, -- Aquatic Form
    25392, -- Prayer of Fortitude
    26991, -- Gift of the Wild
    33717, -- Conjure Food
    39374, -- Prayer of Shadow Protection
    53042 -- Mixology
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 30 AS `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    1710, -- Summon Felsteed
    13820, -- Summon Warhorse
    34768 -- Summon Warhorse
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 60 AS `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    23161, -- Dreadsteed
    23214, -- Charger
    34767 -- Summon Charger
) UNION SELECT `ID`, `SpellID`, 350000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 30 AS `ReqLevel`, `ReqSpell`, 16 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    33388 -- Apprentice Riding
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE (
    ((`ReqLevel` > 60 AND `ReqLevel` <= 70) OR
    (`ReqSkillRank` > 300 AND `ReqSkillRank` <= 375)) AND
    `SpellID` NOT IN (
        1710, -- Summon Felsteed
        10847, -- Artisan First Aid
        13820, -- Summon Warhorse
        18249, -- Artisan Fishing
        21562, -- Prayer of Fortitude
        21564, -- Prayer of Fortitude
        21849, -- Gift of the Wild
        21850, -- Gift of the Wild
        23028, -- Arcane Brilliance
        23161, -- Dreadsteed
        23214, -- Charger
        25782, -- Greater Blessing of Might
        25894, -- Greater Blessing of Wisdom
        25898, -- Greater Blessing of Kings
        25899, -- Greater Blessing of Sanctuary
        25916, -- Greater Blessing of Might
        25918, -- Greater Blessing of Wisdom
        27681, -- Prayer of Spirit
        33388, -- Apprentice Riding
        33391, -- Journeyman Riding
        33950, -- Flight Form
        34090, -- Expert Riding
        34767, -- Summon Charger
        34768, -- Summon Warhorse
        36936, -- Totemic Recall
        53042, -- Mixology
        54083, -- Expert Fishing
        63742, -- Spidersilk Drape
        63743, -- Amulet of Truesight
        63746, -- Enchant Boots - Lesser Accuracy
        63750, -- High-powered Flashlight
        64725, -- Emerald Choker
        64726, -- Sky Sapphire Amulet
        64727, -- Runed Mana Band
        64728, -- Scarlet Signet
        66842, -- Call of the Elements
        66843, -- Call of the Ancestors
        66844 -- Call of the Spirits
    )
) UNION SELECT `ID`, `SpellID`, 6000000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 60 AS `ReqLevel`, `ReqSpell`, 12 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    33391 -- Journeyman Riding
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    21562, -- Prayer of Fortitude
    21564, -- Prayer of Fortitude
    21849, -- Gift of the Wild
    21850, -- Gift of the Wild
    23028, -- Arcane Brilliance
    25286, -- Heroic Strike
    25288, -- Revenge
    25289, -- Battle Shout
    25290, -- Blessing of Wisdom
    25291, -- Blessing of Might
    25292, -- Holy Light
    25294, -- Multi-Shot
    25295, -- Serpent Sting
    25296, -- Aspect of the Hawk
    25297, -- Healing Touch
    25298, -- Starfire
    25299, -- Rejuvenation
    25300, -- Backstab
    25302, -- Feint
    25304, -- Frostbolt
    25306, -- Fireball
    25307, -- Shadow Bolt
    25309, -- Immolate
    25311, -- Corruption
    25314, -- Greater Heal
    25315, -- Renew
    25316, -- Prayer of Healing
    25345, -- Arcane Missiles
    25357, -- Healing Wave
    25361, -- Strength of Earth Totem
    27090, -- Conjure Water
    27127, -- Arcane Brilliance
    27683, -- Prayer of Shadow Protection
    28609, -- Frost Ward
    28610, -- Shadow Ward
    28612, -- Conjure Food
    29228, -- Flame Shock
    31016, -- Eviscerate
    31018, -- Ferocious Bite
    31709, -- Cower
    36936 -- Totemic Recall
) UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    25782, -- Greater Blessing of Might
    25894, -- Greater Blessing of Wisdom
    25898, -- Greater Blessing of Kings
    25899, -- Greater Blessing of Sanctuary
    25916, -- Greater Blessing of Might
    25918 -- Greater Blessing of Wisdom
) UNION SELECT `ID`, `SpellID`, 8000000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 70 AS `ReqLevel`, `ReqSpell`, 0 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    34090 -- Expert Riding
) UNION SELECT `ID`, `SpellID`, 900000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 40 AS `ReqLevel`, `ReqSpell`, 0 AS `MinPatch`, 15 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    33388 -- Apprentice Riding
) UNION SELECT `ID`, `SpellID`, 9000000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 60 AS `ReqLevel`, `ReqSpell`, 0 AS `MinPatch`, 11 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (
    33391 -- Journeyman Riding
);
