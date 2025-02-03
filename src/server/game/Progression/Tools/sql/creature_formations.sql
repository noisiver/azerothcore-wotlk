DROP TABLE IF EXISTS `progression_world`.`creature_formations`;
CREATE TABLE `progression_world`.`creature_formations` (
    `leaderGUID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `memberGUID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `dist` FLOAT NOT NULL DEFAULT '0',
    `angle` FLOAT NOT NULL DEFAULT '0',
    `groupAI` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `point_1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `point_2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`memberGUID`, `MinPatch`, `MaxPatch`) USING BTREE,
    CONSTRAINT `creature_formations_chk_1` CHECK (((`dist` >= 0) and (`angle` >= 0)))
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_formations`
SELECT `leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_formations` f LEFT OUTER JOIN `creature` c ON c.`guid` = f.`leaderGUID` WHERE c.`id1` IN (
    37967, -- Ebon Blade Commander
    38493 -- Argent Crusader
) UNION SELECT `leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`, 4 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_formations` f LEFT OUTER JOIN `creature` c ON c.`guid` = f.`leaderGUID` WHERE c.`id1` IN (
    14730 -- Revantusk Watcher
);

INSERT INTO `progression_world`.`creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`, `MinPatch`, `MaxPatch`) VALUES
-- Argent Guard <The Argent Dawn>
(5300002, 5300002, 0, 0, 2, 0, 0, 0, 9),
(5300002, 5300003, 3, 90, 513, 0, 0, 0, 9);
