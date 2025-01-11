DELETE FROM `map_dbc` WHERE `ID`=533;
INSERT INTO `map_dbc` (`ID`, `Directory`, `InstanceType`, `Flags`, `PVP`, `MapName_Lang_enUS`, `MapName_Lang_Mask`, `AreaTableID`, `MapDescription0_Lang_Mask`, `MapDescription1_Lang_Mask`, `LoadingScreenID`, `MinimapIconScale`, `TimeOfDayOverride`, `ExpansionID`, `MaxPlayers`) VALUES
(533, 'Stratholme Raid', 2, 0, 0, 'Naxxramas', 16712190, 3456, 16712188, 16712188, 197, 1, -1, 0, 40);

DELETE FROM `mapdifficulty_dbc` WHERE `MapID` IN (229, 533);
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`) VALUES
(24, 229, 0, 0, 10, NULL),
(46, 533, 0, 604800, 40, 'RAID_DIFFICULTY_40PLAYER'),
(128, 533, 1, 604800, 40, 'RAID_DIFFICULTY_40PLAYER');

DELETE FROM `gameobject` WHERE `id`=181476;
INSERT INTO `gameobject` (`id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `animprogress`, `state`) VALUES
(181476, 0, 3132.72, -3731.23, 135, 1.11934, -0, -0, -0.530907, -0.84743, 0, 1);

DELETE FROM `areatrigger` WHERE `entry`=4055;
INSERT INTO `areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`) VALUES
(4055, 0, 3132.72, -3731.23, 138.88182, 5, 0, 0, 0, 0);

DELETE FROM `areatrigger_teleport` WHERE `ID`=4055;
INSERT INTO `areatrigger_teleport` (`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(4055, 'Naxxramas', 533, 3005.59, -3434.49, 304.196, 0);
