DROP TABLE IF EXISTS `progression_world`.`gameobject_questender`;
CREATE TABLE `progression_world`.`gameobject_questender` (
    `id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `quest` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`id`, `quest`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;
