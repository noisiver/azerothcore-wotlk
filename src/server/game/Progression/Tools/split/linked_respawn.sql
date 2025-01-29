DROP TABLE IF EXISTS `progression_world`.`linked_respawn`;
CREATE TABLE `progression_world`.`linked_respawn` (
    `guid` INT(10) UNSIGNED NOT NULL COMMENT 'dependent creature',
    `linkedGuid` INT(10) UNSIGNED NOT NULL COMMENT 'master creature',
    `linkType` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`guid`, `linkType`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Creature Respawn Link System';
