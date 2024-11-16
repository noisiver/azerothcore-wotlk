DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='dungeon_access_requirements')) THEN
        ALTER TABLE `dungeon_access_requirements`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `comment`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`dungeon_access_id`, `requirement_type`, `requirement_id`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` IN (29, 32, 64);
INSERT INTO `dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`, `MinPatch`, `MaxPatch`) VALUES
(29, 2, 24490, 'You must have the Master\'s Key in your inventory before entering Karazhan.', 2, NULL, 0, 'Karazhan', 0, 14),
(32, 1, 10445, 'You must complete the quest \"The Vials of Eternity\" before entering The Battle for Mount Hyjal.', 2, NULL, 0, 'Hyjal Summit (The Battle for Mount Hyjal)', 0, 14),
(64, 1, 10985, 'You must complete the quest \"A Distraction for Akama\" before entering the Black Temple.', 2, NULL, 0, 'Black Temple', 0, 14);
