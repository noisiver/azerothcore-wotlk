DROP TABLE IF EXISTS `progression_world`.`spell_script_names`;
CREATE TABLE `progression_world`.`spell_script_names` (
    `spell_id` INT(10) NOT NULL,
    `ScriptName` CHAR(64) NOT NULL COLLATE 'utf8mb4_unicode_ci',
    UNIQUE INDEX `spell_id` (`spell_id`, `ScriptName`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES
(21056, 'spell_mark_of_kazzak');

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
SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `ReqLevel` > 70 OR `ReqSkillRank` > 375 AND `SpellID` NOT IN (1710, 10847, 13820, 18249, 21562, 21564, 21849, 21850, 23028, 23161, 23214, 25782, 25894, 25898, 25899, 25916, 25918, 27681, 27683, 33388, 33391, 33950, 34090, 34767, 34768, 36936, 53042, 54083, 63742, 63743, 63746, 63750, 64725, 64726, 64727, 64728, 66842, 66843, 66844)
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE ((`ReqLevel` > 60 AND `ReqLevel` <= 70) OR (`ReqSkillRank` > 300 AND `ReqSkillRank` <= 375)) AND `SpellID` NOT IN (1710, 10847, 13820, 18249, 21562, 21564, 21849, 21850, 23028, 23161, 23214, 25782, 25894, 25898, 25899, 25916, 25918, 27681, 27683, 33388, 33391, 33950, 34090, 34767, 34768, 36936, 53042, 54083, 63742, 63743, 63746, 63750, 64725, 64726, 64727, 64728, 66842, 66843, 66844)
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (1710, 13820, 23161, 23214, 33388, 33391, 33950, 34090, 34767, 34768, 66842, 66843, 66842, 66843, 66844)
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (10847, 18249, 54083, 63742, 63743, 63746, 63746, 63750, 64725, 64726, 64727, 64728)
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=53042
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 30 AS `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (1710, 13820, 34768)
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 60 AS `ReqLevel`, `ReqSpell`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (23161, 23214, 34767)
UNION SELECT `ID`, `SpellID`, 350000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 30 AS `ReqLevel`, `ReqSpell`, 16 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=33388
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 13 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (21562, 21564, 21849, 21850, 23028, 27681, 27683)
UNION SELECT `ID`, `SpellID`, 6000000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 60 AS `ReqLevel`, `ReqSpell`, 12 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=33391
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=36936
UNION SELECT `ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID` IN (25782, 25894, 25898, 25899, 25916, 25918)
UNION SELECT `ID`, `SpellID`, 900000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 40 AS `ReqLevel`, `ReqSpell`, 0 AS `MinPatch`, 15 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=33388
UNION SELECT `ID`, `SpellID`, 9000000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 60 AS `ReqLevel`, `ReqSpell`, 0 AS `MinPatch`, 11 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=33391
UNION SELECT `ID`, `SpellID`, 8000000 AS `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, 70 AS `ReqLevel`, `ReqSpell`, 0 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`npc_trainer` WHERE `SpellID`=34090;
