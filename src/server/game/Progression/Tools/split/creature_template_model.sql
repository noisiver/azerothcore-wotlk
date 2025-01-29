DROP TABLE IF EXISTS `progression_world`.`creature_template_model`;
CREATE TABLE `progression_world`.`creature_template_model` (
    `CreatureID` INT(10) UNSIGNED NOT NULL,
    `Idx` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `CreatureDisplayID` INT(10) UNSIGNED NOT NULL,
    `DisplayScale` FLOAT NOT NULL DEFAULT '1',
    `Probability` FLOAT NOT NULL DEFAULT '0',
    `VerifiedBuild` SMALLINT(5) UNSIGNED NULL DEFAULT NULL,
    PRIMARY KEY (`CreatureID`, `Idx`, `Patch`) USING BTREE,
    CONSTRAINT `creature_template_model_chk_1` CHECK ((`Idx` <= 3))
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`creature_template_model`
SELECT `CreatureID`, `Idx`, 20 AS `Patch`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    69, -- Diseased Timber Wolf
    299 -- Diseased Young Wolf
) UNION SELECT `CreatureID`, `Idx`, 0 AS `Patch`, 447 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    299 -- Diseased Young Wolf
) UNION SELECT `CreatureID`, `Idx`, 0 AS `Patch`, 604 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    69 -- Diseased Timber Wolf
);
