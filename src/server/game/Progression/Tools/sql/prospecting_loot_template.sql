DROP TABLE IF EXISTS `progression_world`.`prospecting_loot_template`;
CREATE TABLE `progression_world`.`prospecting_loot_template` (
    `Entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Item` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Reference` INT(10) NOT NULL DEFAULT '0',
    `Chance` FLOAT NOT NULL DEFAULT '100',
    `QuestRequired` TINYINT(3) NOT NULL DEFAULT '0',
    `LootMode` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '1',
    `GroupId` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `MaxCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1',
    `Comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Loot System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;
