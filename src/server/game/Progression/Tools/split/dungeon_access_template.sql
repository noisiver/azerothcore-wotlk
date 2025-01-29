DROP TABLE IF EXISTS `progression_world`.`dungeon_access_template`;
CREATE TABLE  `progression_world`.`dungeon_access_template` (
    `id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The dungeon template ID',
    `map_id` INT(10) UNSIGNED NULL DEFAULT NULL COMMENT 'Map ID from instance_template',
    `difficulty` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '5 man: 0 = normal, 1 = heroic, 2 = epic (not implemented) | 10 man: 0 = normal, 2 = heroic | 25 man: 1 = normal, 3 = heroic',
    `min_level` TINYINT(3) UNSIGNED NULL DEFAULT NULL,
    `max_level` TINYINT(3) UNSIGNED NULL DEFAULT NULL,
    `min_avg_item_level` SMALLINT(5) UNSIGNED NULL DEFAULT NULL COMMENT 'Min average ilvl required to enter',
    `comment` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Dungeon Name 5/10/25/40 man - Normal/Heroic' COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`id`, `MinPatch`, `MaxPatch`) USING BTREE,
    INDEX `FK_dungeon_access_template__instance_template` (`map_id`) USING BTREE
)
COMMENT='Dungeon/raid access template and single requirements'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

INSERT INTO  `progression_world`.`dungeon_access_template`
SELECT `id`, `map_id`, `difficulty`, `min_level`, `max_level`, `min_avg_item_level`, `comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`dungeon_access_template` WHERE `map_id` IN (
    249 -- Onyxia's Lair
) UNION SELECT `id`, `map_id`, `difficulty`, 55 AS `min_level`, `max_level`, `min_avg_item_level`, `comment`, 0 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`dungeon_access_template` WHERE `map_id` IN (
    249 -- Onyxia's Lair
);
