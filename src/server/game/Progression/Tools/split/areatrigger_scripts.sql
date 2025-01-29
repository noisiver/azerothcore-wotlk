DROP TABLE IF EXISTS `progression_world`.`areatrigger_scripts`;
CREATE TABLE `progression_world`.`areatrigger_scripts` (
	`entry` INT(10) NOT NULL,
	`ScriptName` CHAR(64) NOT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
	PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`areatrigger_scripts` (`entry`, `ScriptName`, `MinPatch`, `MaxPatch`) VALUES
(4055, 'at_naxxramas', 10, 16);
