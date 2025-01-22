DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='creature_template_model')) THEN
        ALTER TABLE `creature_template_model`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `Idx`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`CreatureID`, `Idx`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (69, 299);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `Patch`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(69, 0, 0, 604, 1, 1, 12340),
(69, 0, 20, 31048, 1, 1, 12340),
(299, 0, 0, 447, 1, 1, 12340),
(299, 0, 20, 31049, 1, 1, 12340);
