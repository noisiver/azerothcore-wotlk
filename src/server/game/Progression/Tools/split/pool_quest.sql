DROP TABLE IF EXISTS `progression_world`.`pool_quest`;
CREATE TABLE `progression_world`.`pool_quest` (
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `pool_entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `description` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE,
    INDEX `idx_guid` (`entry`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`pool_quest`
SELECT `entry`, `pool_entry`, `description`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`pool_quest` WHERE `pool_entry` IN (
    5678 -- Raiding weeklies
) UNION SELECT `entry`, `pool_entry`, `description`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`pool_quest` WHERE `pool_entry` IN (
    5676 -- DalaranFishingDaily
);

INSERT INTO `progression_world`.`pool_quest` (`entry`, `pool_entry`, `description`, `MinPatch`, `MaxPatch`) VALUES
-- Heroic Dailies
(13245, 5678, 'Proof of Demise: Ingvar the Plunderer', 0, 19),
(13246, 5678, 'Proof of Demise: Keristrasza', 0, 19),
(13247, 5678, 'Proof of Demise: Ley-Guardian Eregos', 0, 19),
(13248, 5678, 'Proof of Demise: King Ymiron', 0, 19),
(13249, 5678, 'Proof of Demise: The Prophet Tharon\'ja', 0, 19),
(13250, 5678, 'Proof of Demise: Gal\'darah', 0, 19),
(13251, 5678, 'Proof of Demise: Mal\'Ganis', 0, 19),
(13252, 5678, 'Proof of Demise: Sjonnir The Ironshaper', 0, 19),
(13253, 5678, 'Proof of Demise: Loken', 0, 19),
(13254, 5678, 'Proof of Demise: Anub\'arak', 0, 19),
(13255, 5678, 'Proof of Demise: Herald Volazj', 0, 19),
(13256, 5678, 'Proof of Demise: Cyanigosa', 0, 19),
(14199, 5678, 'Proof of Demise: The Black Knight', 19, 19),
-- Dungeon Dailies
(13240, 87000, 'Timear Foresees Centrifuge Constructs in your Future!', 0, 19),
(13241, 87000, 'Timear Foresees Ymirjar Berserkers in your Future!', 0, 19),
(13243, 87000, 'Timear Foresees Infinite Agents in your Future!', 0, 19),
(13244, 87000, 'Timear Foresees Titanium Vanguards in your Future!', 0, 19);
