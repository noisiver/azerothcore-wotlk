DROP TABLE IF EXISTS `progression_world`.`conditions`;
CREATE TABLE `progression_world`.`conditions` (
    `SourceTypeOrReferenceId` INT(10) NOT NULL DEFAULT '0',
    `SourceGroup` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `SourceEntry` INT(10) NOT NULL DEFAULT '0',
    `SourceId` INT(10) NOT NULL DEFAULT '0',
    `ElseGroup` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ConditionTypeOrReference` INT(10) NOT NULL DEFAULT '0',
    `ConditionTarget` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `ConditionValue1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ConditionValue2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ConditionValue3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `NegativeCondition` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `ErrorType` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ErrorTextId` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ScriptName` CHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Condition System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`conditions`
SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceGroup`=17280 AND `SourceEntry` IN (19803, 19805, 19806, 19807, 19808)
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceGroup` IN (25662, 25663, 25664, 25665, 25668, 25669, 25670, 25671, 25673, 25674) AND `SourceEntry`=50289
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup` IN (11019, 11020, 11021, 11022) AND `SourceEntry`=50289
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup`=11150
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry`=49205
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 17008 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry`=49205
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry` IN (21103, 21104, 21105, 21108, 21110)
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 18422 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry`=49643
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 18423 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry`=49644
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry` IN (49643, 49644)
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (69, 299) AND `SourceEntry`=50432
UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 750 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (69, 299) AND `SourceEntry`=50432;
