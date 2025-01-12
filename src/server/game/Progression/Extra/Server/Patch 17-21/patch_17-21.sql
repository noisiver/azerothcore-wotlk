DELETE FROM `map_dbc` WHERE `ID`=533;
DELETE FROM `mapdifficulty_dbc` WHERE `MapID` IN (229, 533);
DELETE FROM `gameobject` WHERE `id`=181476;
DELETE FROM `areatrigger` WHERE `entry`=4055;
DELETE FROM `areatrigger_teleport` WHERE `ID`=4055;

DELETE FROM `areatrigger_teleport` WHERE `ID` IN (5196, 5197, 5198, 5199);
INSERT INTO `areatrigger_teleport` (`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(5196, 'Naxxramas (exit1)', 571, 3679.25, -1278.58, 243.55, 2.39),
(5197, 'Naxxramas (exit2)', 571, 3679.03, -1259.68, 243.55, 3.98),
(5198, 'Naxxramas (exit3)', 571, 3661.14, -1279.55, 243.55, 0.82),
(5199, 'Naxxramas (exit4)', 571, 3660.01, -1260.99, 243.55, 5.51);
