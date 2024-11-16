DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='gameobject_template_addon')) THEN
        ALTER TABLE `gameobject_template_addon`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `entry`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`entry`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `gameobject_template_addon` WHERE `entry` IN (176146, 176147, 176148, 176996);
INSERT INTO `gameobject_template_addon` (`entry`, `Patch`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3`) VALUES
(176146, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(176146, 17, 0, 0, 0, 0, 0, 0, 0, 0),
(176147, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(176147, 17, 0, 0, 0, 0, 0, 0, 0, 0),
(176148, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(176148, 17, 0, 0, 0, 0, 0, 0, 0, 0),
(176996, 0, 0, 4, 0, 0, 0, 0, 0, 0),
(176996, 12, 0, 0, 0, 0, 0, 0, 0, 0);
