DROP TABLE IF EXISTS `progression_world`.`gameobject_template_addon`;
CREATE TABLE `progression_world`.`gameobject_template_addon` (
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `faction` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `flags` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `mingold` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `maxgold` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `artkit0` INT(10) NOT NULL DEFAULT '0',
    `artkit1` INT(10) NOT NULL DEFAULT '0',
    `artkit2` INT(10) NOT NULL DEFAULT '0',
    `artkit3` INT(10) NOT NULL DEFAULT '0',
    PRIMARY KEY (`entry`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`gameobject_template_addon`
SELECT `entry`, 17 AS `Patch`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3` FROM `base_world`.`gameobject_template_addon` WHERE `entry` IN (
    176146, -- Gate of Ahn'Qiraj
    176147, -- Ahn'Qiraj Gate Roots
    176148 -- Ahn'Qiraj Gate Runes
) UNION SELECT `entry`, 12 AS `Patch`, `faction`, `flags`, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3` FROM `base_world`.`gameobject_template_addon` WHERE `entry` IN (
    176996 -- CavernDoor01
) UNION SELECT `entry`, 0 AS `Patch`, `faction`, `flags`|4, `mingold`, `maxgold`, `artkit0`, `artkit1`, `artkit2`, `artkit3` FROM `base_world`.`gameobject_template_addon` WHERE `entry` IN (
    176146, -- Gate of Ahn'Qiraj
    176147, -- Ahn'Qiraj Gate Roots
    176148, -- Ahn'Qiraj Gate Runes
    176996 -- CavernDoor01
);
