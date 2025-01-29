DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='dungeon_access_template')) THEN
        ALTER TABLE `dungeon_access_template`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `comment`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`id`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `dungeon_access_template` WHERE `map_id` IN (249, 533);
INSERT INTO `dungeon_access_template` (`id`, `map_id`, `difficulty`, `min_level`, `max_level`, `min_avg_item_level`, `comment`, `MinPatch`, `MaxPatch`) VALUES
(15, 249, 0, 55, 0, 0, 'Onyxia\'s Lair - 10man', 0, 18),
(15, 249, 0, 80, 0, 0, 'Onyxia\'s Lair - 10man', 19, 21),
(16, 249, 1, 55, 0, 0, 'Onyxia\'s Lair - 25man', 0, 18),
(16, 249, 1, 80, 0, 0, 'Onyxia\'s Lair - 25man', 19, 21),
(30, 533, 0, 51, 0, 0, 'Naxxramas - 10man', 0, 16),
(30, 533, 0, 80, 0, 0, 'Naxxramas - 10man', 17, 21),
(31, 533, 1, 51, 0, 0, 'Naxxramas', 0, 16),
(31, 533, 1, 80, 0, 0, 'Naxxramas', 17, 21);
