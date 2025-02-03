DROP TABLE IF EXISTS `progression_world`.`creature_questender`;
CREATE TABLE `progression_world`.`creature_questender` (
    `id` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Identifier',
    `quest` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`id`, `quest`, `MinPatch`, `MaxPatch`) USING BTREE
)
COMMENT='Creature System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_questender`
SELECT `id`, `quest`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `id` IN (
    20735 -- Archmage Lan'dalock
) UNION SELECT `id`, `quest`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    13861, -- Battle Before The Citadel
    13862, -- Battle Before The Citadel
    13863, -- Battle Before The Citadel
    13864 -- Battle Before The Citadel
) UNION SELECT `id`, `quest`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    14016, -- The Black Knight's Curse
    14100, -- Relic of the Earthen Ring
    14111 -- Relic of the Earthen Ring
) UNION SELECT `id`, `quest`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    13830, -- The Ghostfish
    13832, -- Jewel Of The Sewers
    13833, -- Blood Is Thicker
    13834, -- Dangerously Delicious
    13836 -- Disarmed!
) UNION SELECT `id`, `quest`, 16 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    11481, -- Crisis at the Sunwell
    11482, -- Duty Calls
    11880 -- The Multiphase Survey
) UNION SELECT `id`, `quest`, 15 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    11130, -- Oooh, Shinies!
    11172, -- The Zeppelin Crash
    11211, -- Help for Mudsprocket
    11214, -- Mission to Mudsprocket
    11215, -- Help Mudsprocket
    11497, -- Learning to Fly
    11498 -- Learning to Fly
) UNION SELECT `id`, `quest`, 13 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    10955 -- Morthis Whisperwing
) UNION SELECT `id`, `quest`, 9 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    8922, -- A Supernatural Device
    8923 -- A Supernatural Device
) UNION SELECT `id`, `quest`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    8194 -- Apprentice Angler
) UNION SELECT `id`, `quest`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    7562, -- Mor'zul Bloodbringer
    7638, -- Lord Grayson Shadowbreaker
    7670 -- Lord Grayson Shadowbreaker
) UNION SELECT `id`, `quest`, 2 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    7441, -- Pusillin and the Elder Azj'Tordin
    7481, -- Elven Legends
    7482, -- Elven Legends
    7492, -- Camp Mojache
    7494 -- Feathermoon Stronghold
) UNION SELECT `id`, `quest`, 1 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_questender` WHERE `quest` IN (
    7028, -- Twisted Evils
    7029, -- Vyletongue Corruption
    7041, -- Vyletongue Corruption
    7044, -- Legends of Maraudon
    7064, -- Corruption of Earth and Seed
    7065, -- Corruption of Earth and Seed
    7066, -- Seed of Life
    7067, -- The Pariah's Instructions
    7068, -- Shadowshard Fragments
    7070 -- Shadowshard Fragments
);

INSERT INTO `progression_world`.`creature_questender` (`id`, `quest`, `MinPatch`, `MaxPatch`) VALUES
-- Highlord Bolvar Fordragon
(1748, 7495, 0, 18), -- Victory for the Alliance
-- Varimathras
(2425, 550, 0, 19), -- Battle of Hillsbrad
-- Thrall <Warchief>
(4949, 7490, 0, 18), -- Victory for the Horde
-- Duthorian Rall
(6171, 1661, 0, 16), -- The Tome of Nobility
-- Strahad Farsan
(6251, 3631, 0, 16), -- Summon Felsteed
(6251, 4487, 0, 16), -- Summon Felsteed
(6251, 4488, 0, 16), -- Summon Felsteed
(6251, 4489, 0, 16), -- Summon Felsteed
(6251, 4490, 0, 16), -- Summon Felsteed
-- Overlord Runthak
(14392, 7491, 0, 18), -- For All To See
-- Major Mattingly
(14394, 7496, 0, 18), -- Celebrating Good Times
-- Archmage Lan'dalock
(20735, 13245, 0, 19), -- Proof of Demise: Ingvar the Plunderer
(20735, 13246, 0, 19), -- Proof of Demise: Keristrasza
(20735, 13247, 0, 19), -- Proof of Demise: Ley-Guardian Eregos
(20735, 13248, 0, 19), -- Proof of Demise: King Ymiron
(20735, 13249, 0, 19), -- Proof of Demise: The Prophet Tharon'ja
(20735, 13250, 0, 19), -- Proof of Demise: Gal'darah
(20735, 13251, 0, 19), -- Proof of Demise: Mal'Ganis
(20735, 13252, 0, 19), -- Proof of Demise: Sjonnir The Ironshaper
(20735, 13253, 0, 19), -- Proof of Demise: Loken
(20735, 13254, 0, 19), -- Proof of Demise: Anub'arak
(20735, 13255, 0, 19), -- Proof of Demise: Herald Volazj
(20735, 13256, 0, 19), -- Proof of Demise: Cyanigosa
(20735, 14199, 19, 19), -- Proof of Demise: The Black Knight
-- Archmage Timear
(31439, 13240, 0, 19), -- Timear Foresees Centrifuge Constructs in your Future!
(31439, 13241, 0, 19), -- Timear Foresees Ymirjar Berserkers in your Future!
(31439, 13243, 0, 19), -- Timear Foresees Infinite Agents in your Future!
(31439, 13244, 0, 19); -- Timear Foresees Titanium Vanguards in your Future!
