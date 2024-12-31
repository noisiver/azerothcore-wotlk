DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='creature_formations')) THEN
        ALTER TABLE `creature_formations`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `point_2`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`memberGUID`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `creature_formations` WHERE `leaderGUID` IN (88777, 92903, 246905, 246915, 5300002);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`, `MinPatch`, `MaxPatch`) VALUES
(88777, 88777, 0, 0, 2, 0, 0, 20, 21),
(88777, 88778, 3, 90, 514, 0, 0, 20, 21),
(92903, 92903, 0, 0, 2, 0, 0, 4, 21),
(92903, 92904, 2, 300, 514, 0, 0, 4, 21),
(246905, 246900, 0, 0, 5, 0, 0, 20, 21),
(246905, 246901, 0, 0, 5, 0, 0, 20, 21),
(246905, 246902, 0, 0, 5, 0, 0, 20, 21),
(246905, 246904, 0, 0, 5, 0, 0, 20, 21),
(246905, 246905, 0, 0, 5, 0, 0, 20, 21),
(246905, 246906, 0, 0, 5, 0, 0, 20, 21),
(246905, 246907, 0, 0, 5, 0, 0, 20, 21),
(246915, 246910, 0, 0, 5, 0, 0, 20, 21),
(246915, 246911, 0, 0, 5, 0, 0, 20, 21),
(246915, 246912, 0, 0, 5, 0, 0, 20, 21),
(246915, 246913, 0, 0, 5, 0, 0, 20, 21),
(246915, 246914, 0, 0, 5, 0, 0, 20, 21),
(246915, 246915, 0, 0, 5, 0, 0, 20, 21),
(5300002, 5300002, 0, 0, 2, 0, 0, 0, 9),
(5300002, 5300003, 3, 90, 513, 0, 0, 0, 9);
