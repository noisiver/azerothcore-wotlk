DROP TABLE IF EXISTS `progression_world`.`quest_template_addon`;
CREATE TABLE `progression_world`.`quest_template_addon` (
    `ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `MaxLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `AllowableClasses` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `SourceSpellID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `PrevQuestID` INT(10) NOT NULL DEFAULT '0',
    `NextQuestID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ExclusiveGroup` INT(10) NOT NULL DEFAULT '0',
    `RewardMailTemplateID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `RewardMailDelay` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `RequiredSkillID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `RequiredSkillPoints` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `RequiredMinRepFaction` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `RequiredMaxRepFaction` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `RequiredMinRepValue` INT(10) NOT NULL DEFAULT '0',
    `RequiredMaxRepValue` INT(10) NOT NULL DEFAULT '0',
    `ProvidedItemCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `SpecialFlags` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`ID`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
