DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='pool_template')) THEN
        ALTER TABLE `pool_template`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `description`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `pool_template` WHERE `entry` IN (5678, 60003, 87000);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`, `MinPatch`, `MaxPatch`) VALUES
(5678, 1, 'Heroic Dungeon Dailies', 0, 19),
(5678, 1, 'Raiding weeklies', 20, 21),
(60003, 1, 'Lake Frog (33224)', 18, 21),
(87000, 1, 'Dungeon Dailies', 0, 19);
