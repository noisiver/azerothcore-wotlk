DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='smart_scripts')) THEN
        ALTER TABLE `smart_scripts`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `comment`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`entryorguid`, `source_type`, `id`, `link`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-246915, -246904, -209026, -209025, -209024, -209023, -209022, -209021, -209020, -209019, -96612, -96611, -96610, -96604, -96603, -96600, -96596, -96595, -88792, -88791, -88790, -88789, -88788, -88787, -88786, -88785, -88784, -88783, -88782, -88781, -88780, -88779, 1748);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`, `MinPatch`, `MaxPatch`) VALUES
(-246915, 0, 0, 0, 60, 0, 100, 512, 180000, 180000, 180000, 180000, 0, 0, 80, 3849301, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Cruasder - On Update - Run Script', 20, 21),
(-246915, 0, 1, 2, 17, 0, 100, 512, 0, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Cruasder - Just Summoned - Set Data', 20, 21),
(-246915, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 201, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 5911.48, 2049, 636.05, 0, 'Argent Cruasder - Just Summoned - Move Target To Position', 20, 21),
(-246904, 0, 0, 0, 60, 0, 100, 512, 180000, 180000, 180000, 180000, 0, 0, 80, 3849300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Cruasder - On Update - Run Script', 20, 21),
(-246904, 0, 1, 2, 17, 0, 100, 512, 0, 0, 0, 0, 0, 0, 45, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Argent Cruasder - Just Summoned - Move Target To Position', 20, 21),
(-246904, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 201, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 5869.55, 2192.07, 636.05, 0, 'Argent Cruasder - Just Summoned - Move Target To Position', 20, 21),
(-209026, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35470, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209025, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35470, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209024, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35470, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209023, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35469, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209022, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35469, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209021, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35470, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209020, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35469, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-209019, 0, 0, 0, 1, 0, 100, 1, 500, 500, 0, 0, 0, 0, 11, 63413, 0, 0, 0, 0, 0, 11, 35469, 10, 0, 0, 0, 0, 0, 0, 'Invisible Stalker (Scale x0.5) - Out of Combat - Cast \'Rope Beam\' (No Repeat)', 19, 21),
(-96612, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96611, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96610, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96604, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96603, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96600, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96596, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-96595, 0, 0, 0, 1, 0, 100, 0, 0, 3000, 3000, 3000, 0, 0, 10, 36, 43, 54, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Trainee - Out of Combat - Emote OneShotAttack1H or OneShotParryShield', 16, 21),
(-88792, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88806, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88791, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88805, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88790, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88804, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88789, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88803, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88788, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88802, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88787, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88801, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88786, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88800, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88785, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88799, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88784, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88798, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88783, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88797, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88782, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88796, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88781, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88795, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88780, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88794, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(-88779, 0, 0, 0, 1, 0, 100, 1, 100, 100, 100, 100, 0, 0, 11, 46598, 0, 0, 0, 0, 0, 10, 88793, 0, 0, 0, 0, 0, 0, 0, 'Argent Commander - Out of Combat - Cast \'Ride Vehicle Hardcoded\'', 20, 21),
(1748, 0, 0, 0, 2, 0, 100, 1, 1, 20, 0, 0, 0, 0, 11, 17233, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Lay on Hands at 1-20%', 0, 16),
(1748, 0, 1, 0, 2, 0, 100, 0, 1, 90, 60000, 120000, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Shield Wall at 1-90%', 0, 16),
(1748, 0, 2, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Retribution Aura On Aggro', 0, 16),
(1748, 0, 3, 0, 0, 0, 100, 0, 3000, 9000, 6000, 12000, 0, 0, 11, 20684, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Cleave', 0, 16),
(1748, 0, 4, 0, 0, 0, 100, 0, 5000, 15000, 20000, 40000, 0, 0, 11, 20683, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Bolvar Fordragon - Cast Highlord\'s Justice', 0, 16);
