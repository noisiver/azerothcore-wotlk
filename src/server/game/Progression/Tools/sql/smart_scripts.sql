DROP TABLE IF EXISTS `progression_world`.`smart_scripts`;
CREATE TABLE `progression_world`.`smart_scripts` (
    `entryorguid` INT(10) NOT NULL,
    `source_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `id` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `link` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `event_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `event_phase_mask` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `event_chance` TINYINT(3) UNSIGNED NOT NULL DEFAULT '100',
    `event_flags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0',
    `event_param1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `event_param2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `event_param3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `event_param4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `event_param5` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `event_param6` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `action_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `action_param1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `action_param2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `action_param3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `action_param4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `action_param5` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `action_param6` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `target_type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `target_param1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `target_param2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `target_param3` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `target_param4` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `target_x` FLOAT NOT NULL DEFAULT '0',
    `target_y` FLOAT NOT NULL DEFAULT '0',
    `target_z` FLOAT NOT NULL DEFAULT '0',
    `target_o` FLOAT NOT NULL DEFAULT '0',
    `comment` TEXT NOT NULL COMMENT 'Event Comment' COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`entryorguid`, `source_type`, `id`, `link`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`smart_scripts`
SELECT `entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`smart_scripts` WHERE `entryorguid` IN (
    -246915, -- Argent Crusader
    -246904, -- Argent Crusader
    -88792, -- Argent Commander
    -88791, -- Argent Commander
    -88790, -- Argent Commander
    -88789, -- Argent Commander
    -88788, -- Argent Commander
    -88787, -- Argent Commander
    -88786, -- Argent Commander
    -88785, -- Argent Commander
    -88784, -- Argent Commander
    -88783, -- Argent Commander
    -88782, -- Argent Commander
    -88781, -- Argent Commander
    -88780, -- Argent Commander
    -88779 -- Argent Commander
) UNION SELECT `entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`smart_scripts` WHERE `entryorguid` IN (
    -209026, -- Invisible Stalker (Scale x0.5)
    -209025, -- Invisible Stalker (Scale x0.5)
    -209024, -- Invisible Stalker (Scale x0.5)
    -209023, -- Invisible Stalker (Scale x0.5)
    -209022, -- Invisible Stalker (Scale x0.5)
    -209021, -- Invisible Stalker (Scale x0.5)
    -209020, -- Invisible Stalker (Scale x0.5)
    -209019 -- Invisible Stalker (Scale x0.5)
) UNION SELECT `entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, 16 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`smart_scripts` WHERE `entryorguid` IN (
    -96612, -- Shattered Sun Trainee
    -96611, -- Shattered Sun Trainee
    -96610, -- Shattered Sun Trainee
    -96604, -- Shattered Sun Trainee
    -96603, -- Shattered Sun Trainee
    -96600, -- Shattered Sun Trainee
    -96596, -- Shattered Sun Trainee
    -96595 -- Shattered Sun Trainee
);

INSERT INTO `progression_world`.`smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, `MinPatch`, `MaxPatch`) VALUES
-- Highlord Bolvar Fordragon
(1748, 0, 0, 0, 2, 0, 100, 1, 1, 20, 0, 0, 0, 0, 11, 17233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Lay on Hands at 1-20%', 0, 16),
(1748, 0, 1, 0, 2, 0, 100, 0, 1, 90, 60000, 120000, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Shield Wall at 1-90%', 0, 16),
(1748, 0, 2, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Retribution Aura On Aggro', 0, 16),
(1748, 0, 3, 0, 0, 0, 100, 0, 3000, 9000, 6000, 12000, 0, 0, 11, 20684, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Cleave', 0, 16),
(1748, 0, 4, 0, 0, 0, 100, 0, 5000, 15000, 20000, 40000, 0, 0, 11, 20683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Highlord\'s Justice', 0, 16);

-- Naxxramas
INSERT INTO `progression_world`.`smart_scripts`
SELECT `entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`smart_scripts` WHERE `entryorguid` IN (
    16034, -- Plague Beast
    16036, -- Frenzied Bat
    16037, -- Plagued Bat
    16168, -- Stoneskin Gargoyle
    16236, -- Eye Stalk
    16244, -- Infectious Ghoul
    16297, -- Mutated Grub
    16981, -- Plagued Guardian
    16983 -- Plagued Champion
);

INSERT INTO `progression_world`.`smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, `MinPatch`, `MaxPatch`) VALUES
-- Plague Beast
(16034, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 3000, 3000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Plague Beast - In Combat - Cast Trample', 0, 16),
-- Frenzied Bat
(16036, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 5000, 10000, 0, 0, 11, 30112, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Frenzied Bat - In Combat - Cast Frenzied Dive', 0, 16),
-- Plagued Bat
(16037, 0, 0, 0, 0, 0, 85, 0, 4000, 5000, 4000, 5000, 0, 0, 11, 30113, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Bat - In Combat - Cast Putrid Bite', 0, 16),
-- Stoneskin Gargoyle
(16168, 0, 0, 0, 0, 0, 100, 0, 3000, 6500, 8000, 8000, 0, 0, 11, 29325, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Stoneskin Gargoyle - In Combat - Cast Acid Volley', 0, 16),
(16168, 0, 2, 0, 2, 0, 100, 0, 0, 30, 60000, 60000, 0, 0, 11, 28995, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stoneskin Gargoyle - At 30% HP - Cast Stoneskin', 0, 16),
(16168, 0, 4, 0, 1, 0, 100, 512, 1000, 1000, 0, 0, 0, 0, 90, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stoneskin Gargoyle - On Update OOC - Set Unit Field Bytes 1 \'UNIT_STAND_STATE_SUBMERGED\' (Controlled via conditions - only when not roaming)', 0, 16),
(16168, 0, 5, 0, 1, 0, 100, 512, 1000, 1000, 0, 0, 0, 0, 91, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stoneskin Gargoyle - On Update OOC - Remove Unit Field Bytes 1 \'UNIT_STAND_STATE_SUBMERGED\' (Controlled via conditions - only when roaming)', 0, 16),
(16168, 0, 6, 0, 4, 0, 100, 512, 0, 0, 0, 0, 0, 0, 91, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Stoneskin Gargoyle - On Aggro - Remove Unit Field Bytes 1 \'UNIT_STAND_STATE_SUBMERGED\'', 0, 16),
-- Eye Stalk
(16236, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 14000, 17000, 0, 0, 11, 29407, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Eye Stalk - In Combat - Cast Mind Flay', 0, 16),
-- Infectious Ghoul
(16244, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 12000, 12000, 0, 0, 11, 29915, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Infectious Ghoul - In Combat - Cast Flesh Rot', 0, 16),
(16244, 0, 2, 0, 0, 0, 100, 0, 3000, 3000, 15000, 15000, 0, 0, 11, 13738, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Infectious Ghoul - In Combat - Cast Rend', 0, 16),
(16244, 0, 4, 0, 2, 0, 100, 0, 0, 30, 60000, 60000, 0, 0, 11, 54701, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Infectious Ghoul - On 30% HP - CastSelf Frenzy', 0, 16),
(16244, 0, 5, 0, 2, 0, 100, 0, 0, 30, 60000, 60000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Infectious Ghoul - On 30% HP - Say EMOTE_FRENZY', 0, 16),
-- Mutated Grub
(16297, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4000, 4000, 0, 0, 11, 30109, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Mutated Grub - In Combat - Cast Slime Burst', 0, 16),
-- Plagued Guardian
(16981, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 8000, 10000, 0, 0, 11, 15453, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Guardian - In Combat - Cast Arcane Explosion', 0, 16),
-- Plagued Construct
(16982, 0, 0, 0, 0, 0, 100, 0, 1000, 4000, 6000, 7000, 0, 0, 11, 17547, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Construct - In Combat - Cast Mortal Strike', 0, 16),
-- Plagued Champion
(16983, 0, 0, 0, 0, 0, 100, 0, 1000, 4000, 8000, 8000, 0, 0, 11, 30138, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Champion - In Combat - Cast Shadow Shock', 0, 16),
(16983, 0, 1, 0, 0, 0, 100, 0, 0, 0, 1000, 4000, 0, 0, 11, 13737, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Plagued Champion - In Combat - Cast Mortal Strike', 0, 16);
