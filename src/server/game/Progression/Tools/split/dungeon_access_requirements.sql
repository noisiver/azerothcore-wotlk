DROP TABLE IF EXISTS `progression_world`.`dungeon_access_requirements`;
CREATE TABLE `progression_world`.`dungeon_access_requirements` (
    `dungeon_access_id` TINYINT(3) UNSIGNED NOT NULL COMMENT 'ID from dungeon_access_template',
    `requirement_type` TINYINT(3) UNSIGNED NOT NULL COMMENT '0 = achiev, 1 = quest, 2 = item',
    `requirement_id` INT(10) UNSIGNED NOT NULL COMMENT 'Achiev/quest/item ID',
    `requirement_note` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Optional msg shown ingame to player if he cannot enter. You can add extra info' COLLATE 'utf8mb4_unicode_ci',
    `faction` TINYINT(3) UNSIGNED NOT NULL DEFAULT '2' COMMENT '0 = Alliance, 1 = Horde, 2 = Both factions',
    `priority` TINYINT(3) UNSIGNED NULL DEFAULT NULL COMMENT 'Priority order for the requirement, sorted by type. 0 is the highest priority',
    `leader_only` TINYINT(3) NOT NULL DEFAULT '0' COMMENT '0 = check the requirement for the player trying to enter, 1 = check the requirement for the party leader',
    `comment` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`dungeon_access_id`, `requirement_type`, `requirement_id`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Add (multiple) requirements before being able to enter a dungeon/raid'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`dungeon_access_requirements` (`dungeon_access_id`, `requirement_type`, `requirement_id`, `requirement_note`, `faction`, `priority`, `leader_only`, `comment`, `MinPatch`, `MaxPatch`) VALUES
-- Karazhan
(29, 2, 24490, 'You must have the Master\'s Key in your inventory before entering Karazhan.', 2, NULL, 0, 'Karazhan', 0, 14),
-- The Battle for Mount Hyjal
(32, 1, 10445, 'You must complete the quest \"The Vials of Eternity\" before entering The Battle for Mount Hyjal.', 2, NULL, 0, 'Hyjal Summit (The Battle for Mount Hyjal)', 0, 14),
-- The Black Temple
(64, 1, 10985, 'You must complete the quest \"A Distraction for Akama\" before entering the Black Temple.', 2, NULL, 0, 'Black Temple', 0, 14);
