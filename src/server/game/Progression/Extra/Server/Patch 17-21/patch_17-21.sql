DELETE FROM `map_dbc` WHERE `ID`=533;
DELETE FROM `mapdifficulty_dbc` WHERE `MapID` IN (229, 533);
DELETE FROM `gameobject` WHERE `id`=181476;
DELETE FROM `areatrigger` WHERE `entry`=4055;
DELETE FROM `areatrigger_teleport` WHERE `ID`=4055;
