DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='mail_level_reward')) THEN
        ALTER TABLE `mail_level_reward`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `senderEntry`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`level`, `raceMask`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `mail_level_reward`;
INSERT INTO `mail_level_reward` (`level`, `raceMask`, `mailTemplateId`, `senderEntry`, `Patch`) VALUES
(20, 1, 224, 4732, 20),
(20, 2, 231, 4752, 20),
(20, 4, 226, 4772, 20),
(20, 8, 225, 4753, 20),
(20, 16, 233, 4773, 20),
(20, 32, 229, 3690, 20),
(20, 64, 228, 7954, 20),
(20, 128, 230, 7953, 20),
(20, 512, 232, 16280, 20),
(20, 1024, 227, 20914, 20),
(40, 1, 276, 4732, 20),
(40, 2, 278, 4752, 20),
(40, 4, 274, 4772, 20),
(40, 8, 277, 4753, 20),
(40, 16, 281, 4773, 20),
(40, 32, 279, 3690, 20),
(40, 64, 275, 7954, 20),
(40, 128, 280, 7953, 20),
(40, 512, 272, 16280, 20),
(40, 1024, 273, 20914, 20),
(60, 690, 282, 35093, 20),
(60, 1101, 283, 35100, 20),
(70, 690, 285, 35135, 20),
(70, 1101, 284, 35133, 20);
