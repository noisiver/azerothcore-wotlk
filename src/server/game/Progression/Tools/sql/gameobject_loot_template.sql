DROP TABLE IF EXISTS `progression_world`.`gameobject_loot_template`;
CREATE TABLE `progression_world`.`gameobject_loot_template` (
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
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`gameobject_loot_template`
SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item` IN (
    50289 -- Blacktip Shark
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item`=47241 AND `Entry` IN (
    24524, -- Cache of Eregos
    24589, -- Dark Runed Chest
    25192, -- Four Horsemen Chest
    25193, -- Four Horsemen Chest
    26094, -- Alexstrasza's Gift
    26097, -- Alexstrasza's Gift
    26260, -- Tribunal Chest
    26929, -- Cache of Living Stone
    26946, -- Cache of Winter
    26955, -- Cache of Storms
    26956, -- Cache of Storms
    26959, -- Freya's Gift
    26960, -- Freya's Gift
    26961, -- Freya's Gift
    26962, -- Freya's Gift
    26963, -- Cache of Innovation
    26967, -- Cache of Innovation
    26974, -- Gift of the Observer
    27030, -- Gift of the Observer
    27061, -- Cache of Living Stone
    27068, -- Cache of Winter
    27073, -- Cache of Storms
    27074, -- Cache of Storms
    27078, -- Freya's Gift
    27079, -- Freya's Gift
    27080, -- Freya's Gift
    27081, -- Freya's Gift
    27085, -- Cache of Innovation
    27086, -- Cache of Innovation
    27414, -- Champion's Cache
    27416, -- Eadric's Cache
    27417 -- Confessor's Cache
) UNION SELECT glt.`Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, CONCAT(gt.`name`, ' - Emblem of Conquest') AS `Comment`, 19 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` glt LEFT OUTER JOIN `base_world`.`gameobject_template` gt ON gt.`Data1`=glt.`Entry` WHERE `Item`=47241 AND glt.`Entry` IN (
    24524, -- Cache of Eregos
    24589, -- Dark Runed Chest
    25192, -- Four Horsemen Chest
    25193, -- Four Horsemen Chest
    26094, -- Alexstrasza's Gift
    26097, -- Alexstrasza's Gift
    26260, -- Tribunal Chest
    26956, -- Cache of Storms
    26962, -- Freya's Gift
    27030, -- Gift of the Observer
    27061, -- Cache of Living Stone
    27068, -- Cache of Winter
    27073, -- Cache of Storms
    27085, -- Cache of Innovation
    27086, -- Cache of Innovation
    27414, -- Champion's Cache
    27416, -- Eadric's Cache
    27417 -- Confessor's Cache
) UNION SELECT glt.`Entry`, 45624 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, CONCAT(gt.`name`, ' - Emblem of Conquest') AS `Comment`, 18 AS `MinPatch`, 19 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` glt LEFT OUTER JOIN `base_world`.`gameobject_template` gt ON gt.`Data1`=glt.`Entry` WHERE `Item`=47241 AND glt.`Entry` IN (
    26929, -- Cache of Living Stone
    26946, -- Cache of Winter
    26955, -- Cache of Storms
    26959, -- Freya's Gift
    26960, -- Freya's Gift
    26961, -- Freya's Gift
    26963, -- Cache of Innovation
    26967, -- Cache of Innovation
    26974, -- Gift of the Observer
    27074, -- Cache of Storms
    27078, -- Freya's Gift
    27079, -- Freya's Gift
    27080, -- Freya's Gift
    27081 -- Freya's Gift
) UNION SELECT glt.`Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, CONCAT(gt.`name`, ' - Emblem of Valor') AS `Comment`, 18 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` glt LEFT OUTER JOIN `base_world`.`gameobject_template` gt ON gt.`Data1`=glt.`Entry` WHERE `Item`=47241 AND glt.`Entry` IN (
    26956, -- Cache of Storms
    26962, -- Freya's Gift
    27030, -- Gift of the Observer
    27061, -- Cache of Living Stone
    27068, -- Cache of Winter
    27073, -- Cache of Storms
    27085, -- Cache of Innovation
    27086 -- Cache of Innovation
) UNION SELECT glt.`Entry`, 40753 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, CONCAT(gt.`name`, ' - Emblem of Valor') AS `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` glt LEFT OUTER JOIN `base_world`.`gameobject_template` gt ON gt.`Data1`=glt.`Entry` WHERE `Item`=47241 AND glt.`Entry` IN (
    25193, -- Four Horsemen Chest
    26097 -- Alexstrasza's Gift
) UNION SELECT glt.`Entry`, 40752 AS `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, CONCAT(gt.`name`, ' - Emblem of Heroism') AS `Comment`, 17 AS `MinPatch`, 18 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` glt LEFT OUTER JOIN `base_world`.`gameobject_template` gt ON gt.`Data1`=glt.`Entry` WHERE `Item`=47241 AND glt.`Entry` IN (
    24524, -- Cache of Eregos
    24589, -- Dark Runed Chest
    25192, -- Four Horsemen Chest
    26094, -- Alexstrasza's Gift
    26260 -- Tribunal Chest
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item` IN (
    19803, -- Brownell's Blue Striped Racer
    19805, -- Keefer's Angelfish
    19806, -- Dezian Queenfish
    19807, -- Speckled Tastyfish
    19808 -- Rockhide Strongfish
) UNION SELECT `Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`gameobject_loot_template` WHERE `Item` IN (
    18646 -- The Eye of Divinity
);
