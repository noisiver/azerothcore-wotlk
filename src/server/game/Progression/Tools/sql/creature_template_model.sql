DROP TABLE IF EXISTS `progression_world`.`creature_template_model`;
CREATE TABLE `progression_world`.`creature_template_model` (
    `CreatureID` INT(10) UNSIGNED NOT NULL,
    `Idx` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `CreatureDisplayID` INT(10) UNSIGNED NOT NULL,
    `DisplayScale` FLOAT NOT NULL DEFAULT '1',
    `Probability` FLOAT NOT NULL DEFAULT '0',
    `VerifiedBuild` SMALLINT(5) UNSIGNED NULL DEFAULT NULL,
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`CreatureID`, `Idx`, `MinPatch`, `MaxPatch`) USING BTREE,
    CONSTRAINT `creature_template_model_chk_1` CHECK ((`Idx` <= 3))
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_template_model`
SELECT `CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    69, -- Diseased Timber Wolf
    299 -- Diseased Young Wolf
) UNION SELECT `CreatureID`, `Idx`, 447 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    299 -- Diseased Young Wolf
) UNION SELECT `CreatureID`, `Idx`, 604 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    69 -- Diseased Timber Wolf
);

-- Naxxramas
INSERT INTO `progression_world`.`creature_template_model`
SELECT `CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16034, -- Plague Beast
    16243, -- Plague Slime
    16244, -- Infectious Ghoul
    16297, -- Mutated Grub
    16981, -- Plagued Guardian
    16983, -- Plagued Champion
    16984 -- Plagued Warrior
) UNION SELECT `CreatureID`, `Idx`, 9013 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16034 -- Plague Beast
) UNION SELECT `CreatureID`, `Idx`, 10627 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16244 -- Infectious Ghoul
) UNION SELECT `CreatureID`, `Idx`, 7898 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16297 -- Mutated Grub
) UNION SELECT `CreatureID`, `Idx`, 2606 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16981 -- Plagued Guardian
) UNION SELECT `CreatureID`, `Idx`, 7847 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16983 -- Plagued Champion
) UNION SELECT `CreatureID`, `Idx`, 16916 AS `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, 0 AS `MinPatch`, 16 AS `MaxPatch` FROM `base_world`.`creature_template_model` WHERE `CreatureID` IN (
    16984 -- Plagued Warrior
);

INSERT INTO `progression_world`.`creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, `MinPatch`, `MaxPatch`) VALUES
-- Plague Slime
(16243, 0, 681, 1, 1, NULL, 0, 16),
(16243, 1, 11139, 1, 1, NULL, 0, 16);
