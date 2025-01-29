DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='linked_respawn')) THEN
        ALTER TABLE `linked_respawn`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `linkType`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`guid`, `linkType`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;
