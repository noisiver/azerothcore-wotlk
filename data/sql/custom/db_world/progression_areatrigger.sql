DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='areatrigger')) THEN
        ALTER TABLE `areatrigger`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `orientation`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `areatrigger` WHERE `entry`=4055;
INSERT INTO `areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`, `MinPatch`, `MaxPatch`) VALUES
(4055, 0, 3132.72, -3731.23, 138.882, 5, 0, 0, 0, 0, 10, 16);
