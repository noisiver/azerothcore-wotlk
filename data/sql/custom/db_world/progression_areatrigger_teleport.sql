DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='areatrigger_teleport')) THEN
        ALTER TABLE `areatrigger_teleport`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `target_orientation`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`ID`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `areatrigger_teleport` WHERE `ID` IN (4055, 5196, 5197, 5198, 5199);
INSERT INTO `areatrigger_teleport` (`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `MinPatch`, `MaxPatch`) VALUES
(4055, 'Naxxramas', 533, 3006.14, -3434.71, 304.196, 5.56455, 10, 16),
(5196, 'Naxxramas (exit1)', 0, 3117.02, -3722.46, 136.467, 2.6548, 0, 16),
(5196, 'Naxxramas (exit1)', 571, 3679.25, -1278.58, 243.55, 2.39, 17, 21),
(5197, 'Naxxramas (exit2)', 0, 3117.02, -3722.46, 136.467, 2.6548, 0, 16),
(5197, 'Naxxramas (exit2)', 571, 3679.03, -1259.68, 243.55, 3.98, 17, 21),
(5198, 'Naxxramas (exit3)', 0, 3117.02, -3722.46, 136.467, 2.6548, 0, 16),
(5198, 'Naxxramas (exit3)', 571, 3661.14, -1279.55, 243.55, 0.82, 17, 21),
(5199, 'Naxxramas (exit4)', 0, 3117.02, -3722.46, 136.467, 2.6548, 0, 16),
(5199, 'Naxxramas (exit4)', 571, 3660.01, -1260.99, 243.55, 5.51, 17, 21);
