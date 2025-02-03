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
ENGINE=InnoDB;

INSERT INTO `progression_world`.`conditions`
SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=4 AND -- CONDITION_SOURCE_TYPE_GAMEOBJECT_LOOT_TEMPLATE
    `SourceGroup` IN (
        25665, -- Musselback Sculpin School
        25664, -- Dragonfin Angelfish School
        25663, -- Fangtooth Herring School
        25662, -- Glacial Salmon School
        25669, -- Borean Man O' War School
        25668, -- Imperial Manta Ray School
        25671, -- Deep Sea Monsterbelly School
        25670, -- Moonglow Cuttlefish School
        25673, -- Nettlefish School
        25674 -- Glassfin Minnow School
    ) AND 
    `SourceEntry`=50289
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=10 AND -- CONDITION_SOURCE_TYPE_REFERENCE_LOOT_TEMPLATE
    `SourceGroup` IN (
        11019, 11020, 11021, 11022
    ) AND
    `SourceEntry`=50289 -- Blacktip Shark
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceEntry`=49205 -- Small Scroll
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceGroup` IN (
        69, -- Diseased Timber Wolf
        299 -- Diseased Young Wolf
    ) AND
    `SourceEntry`=50432 -- Diseased Wolf Pelt
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceEntry` IN (
        49643, -- Head of Onyxia
        49644 -- Head of Onyxia
    )
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceEntry` IN (
        21103, -- Draconic for Dummies
        21104, -- Draconic for Dummies
        21105, -- Draconic for Dummies
        21108, -- Draconic for Dummies
        21110 -- Draconic for Dummies
    )
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=4 AND -- CONDITION_SOURCE_TYPE_GAMEOBJECT_LOOT_TEMPLATE
    `SourceGroup`=17280 AND -- School of Tastyfish
    `SourceEntry` IN (
        19803, -- Brownell's Blue Striped Racer
        19805, -- Keefer's Angelfish
        19806, -- Dezian Queenfish
        19807, -- Speckled Tastyfish
        19808 -- Rockhide Strongfish
    )
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=10 AND -- CONDITION_SOURCE_TYPE_REFERENCE_LOOT_TEMPLATE
    `SourceGroup`=11150
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 18422 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceEntry`=49643 -- Head of Onyxia
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 18423 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 2 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceEntry`=49644 -- Head of Onyxia
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 17008 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceEntry`=49205 -- Small Scroll
) UNION SELECT `SourceTypeOrReferenceId`, `SourceGroup`, 750 AS `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`conditions` WHERE (
    `SourceTypeOrReferenceId`=1 AND -- CONDITION_SOURCE_TYPE_CREATURE_LOOT_TEMPLATE
    `SourceGroup` IN (
        69, -- Diseased Timber Wolf
        299 -- Diseased Young Wolf
    ) AND
    `SourceEntry`=50432 -- Diseased Wolf Pelt
);
