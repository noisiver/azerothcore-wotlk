DELETE FROM `map_dbc` WHERE `ID`=533;
INSERT INTO `map_dbc` (`ID`, `Directory`, `InstanceType`, `Flags`, `PVP`, `MapName_Lang_enUS`, `MapName_Lang_Mask`, `AreaTableID`, `MapDescription0_Lang_Mask`, `MapDescription1_Lang_Mask`, `LoadingScreenID`, `MinimapIconScale`, `TimeOfDayOverride`, `ExpansionID`, `MaxPlayers`) VALUES
(533, 'Stratholme Raid', 2, 0, 0, 'Naxxramas', 16712190, 3456, 16712188, 16712188, 197, 1, -1, 0, 40);

DELETE FROM `mapdifficulty_dbc` WHERE `MapID`=533;
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `RaidDuration`, `MaxPlayers`, `Difficultystring`) VALUES
(46, 533, 0, 604800, 40, 'RAID_DIFFICULTY_40PLAYER'),
(128, 533, 1, 604800, 40, 'RAID_DIFFICULTY_40PLAYER');
