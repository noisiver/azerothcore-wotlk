DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='creature_template_addon')) THEN
        ALTER TABLE `creature_template_addon`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `entry`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`entry`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `creature_template_addon` WHERE `entry` IN (69, 299);
DELETE FROM `creature_template_addon` WHERE `entry` IN (13297, 13299, 13300, 13318);
INSERT INTO `creature_template_addon` (`entry`, `Patch`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(69, 0, 0, 0, 0, 1, 0, 0, NULL),
(69, 20, 0, 0, 0, 1, 0, 0, '71764'),
(299, 0, 0, 0, 0, 1, 0, 0, NULL),
(299, 20, 0, 0, 0, 1, 0, 0, '71764'),
(13297, 0, 5800050, 14577, 0, 0, 0, 0, NULL),
(13297, 15, 0, 14577, 0, 0, 0, 0, NULL),
(13299, 0, 5800048, 14330, 0, 0, 0, 0, NULL),
(13299, 15, 0, 14330, 0, 0, 0, 0, NULL),
(13300, 0, 5800076, 14337, 0, 0, 0, 0, NULL),
(13300, 15, 0, 14337, 0, 0, 0, 0, NULL),
(13318, 0, 5800000, 14577, 0, 0, 0, 0, NULL),
(13318, 15, 0, 14577, 0, 0, 0, 0, NULL);
