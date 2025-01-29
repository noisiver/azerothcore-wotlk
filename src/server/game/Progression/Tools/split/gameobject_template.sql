DROP TABLE IF EXISTS `progression_world`.`gameobject_template`;
CREATE TABLE `progression_world`.`gameobject_template` (
	`entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
	`type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
	`displayId` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`name` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`IconName` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`castBarCaption` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`unk1` VARCHAR(100) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`size` FLOAT NOT NULL DEFAULT '1',
	`Data0` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data1` INT(10) NOT NULL DEFAULT '0',
	`Data2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data5` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data6` INT(10) NOT NULL DEFAULT '0',
	`Data7` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data8` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data9` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data10` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data11` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data12` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data13` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data14` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data15` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data16` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data17` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data18` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data19` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data20` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data21` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data22` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`Data23` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`AIName` CHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`ScriptName` VARCHAR(64) NOT NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
	`VerifiedBuild` INT(10) NULL DEFAULT NULL,
	PRIMARY KEY (`entry`, `Patch`) USING BTREE,
	INDEX `idx_name` (`name`) USING BTREE
)
COMMENT='Gameobject System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`gameobject_template`
SELECT `entry`, 17 AS `Patch`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild` FROM `base_world`.`gameobject_template` WHERE `entry` IN (
    176310 -- Auberdine, Darkshore and Stormwind Harbor (Boat, Alliance ("The Bravery"))
) UNION SELECT `entry`, 0 AS `Patch`, `type`, `displayId`, 'Serenity\'s Shore' AS `name`, `IconName`, `castBarCaption`, `unk1`, `size`, 295 AS `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild` FROM `base_world`.`gameobject_template` WHERE `entry` IN (
    176310 -- Auberdine, Darkshore and Stormwind Harbor (Boat, Alliance ("The Bravery"))
);
