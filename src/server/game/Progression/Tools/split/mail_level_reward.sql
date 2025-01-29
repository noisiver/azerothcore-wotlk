DROP TABLE IF EXISTS `progression_world`.`mail_level_reward`;
CREATE TABLE `progression_world`.`mail_level_reward` (
    `level` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `raceMask` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `mailTemplateId` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `senderEntry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`level`, `raceMask`, `Patch`) USING BTREE
)
COMMENT='Mail System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`mail_level_reward`
SELECT `level`, `raceMask`, `mailTemplateId`, `senderEntry`, 20 AS `Patch` FROM `base_world`.`mail_level_reward`;
