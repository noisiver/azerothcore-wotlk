DROP TABLE IF EXISTS `progression_world`.`creature_equip_template`;
CREATE TABLE `progression_world`.`creature_equip_template` (
    `CreatureID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ID` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `ItemID1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ItemID2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ItemID3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `VerifiedBuild` INT(10) NULL DEFAULT NULL,
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`CreatureID`, `ID`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
