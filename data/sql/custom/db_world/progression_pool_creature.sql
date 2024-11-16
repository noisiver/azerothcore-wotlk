DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='pool_creature')) THEN
        ALTER TABLE `pool_creature`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `description`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`guid`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `pool_creature` WHERE `pool_entry`=60003;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`, `MinPatch`, `MaxPatch`) VALUES
(72770, 60003, 0, 'Lake Frog (33224) - Spawn 1', 18, 21),
(72771, 60003, 0, 'Lake Frog (33224) - Spawn 2', 18, 21),
(72772, 60003, 0, 'Lake Frog (33224) - Spawn 3', 18, 21),
(72773, 60003, 0, 'Lake Frog (33224) - Spawn 4', 18, 21),
(72774, 60003, 0, 'Lake Frog (33224) - Spawn 5', 18, 21),
(72775, 60003, 0, 'Lake Frog (33224) - Spawn 6', 18, 21);
