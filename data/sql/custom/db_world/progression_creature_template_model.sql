DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='creature_template_model')) THEN
        ALTER TABLE `creature_template_model`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`CreatureID`, `Idx`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (69, 299, 16034, 16243, 16244, 16297, 16981, 16983, 16984);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`, `MinPatch`, `MaxPatch`) VALUES
(69, 0, 604, 1, 1, 12340, 0, 19),
(69, 0, 31048, 1, 1, 12340, 20, 21),
(299, 0, 447, 1, 1, 12340, 0, 19),
(299, 0, 31049, 1, 1, 12340, 20, 21),
(16034, 0, 9013, 1, 1, 12340, 0, 16),
(16034, 0, 23136, 1, 1, 12340, 17, 21),
(16243, 0, 681, 1, 1, NULL, 0, 16),
(16243, 0, 11140, 1, 1, 12340, 17, 21),
(16243, 1, 11139, 1, 1, NULL, 0, 16),
(16244, 0, 10627, 1, 1, 12340, 0, 16),
(16244, 0, 26329, 1, 1, 12340, 17, 21),
(16297, 0, 7898, 1, 1, 12340, 0, 16),
(16297, 0, 16895, 1, 1, 12340, 17, 21),
(16981, 0, 2606, 1, 1, 12340, 0, 16),
(16981, 0, 27107, 1, 1, 12340, 17, 21),
(16983, 0, 7847, 1, 1, 12340, 0, 16),
(16983, 0, 28021, 1, 1, 12340, 17, 21),
(16984, 0, 16916, 1, 1, 12340, 0, 16),
(16984, 0, 28022, 1, 1, 12340, 17, 21);
