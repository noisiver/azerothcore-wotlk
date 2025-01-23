DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='conditions')) THEN
        ALTER TABLE `conditions`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `Comment`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceGroup`=17280 AND `SourceEntry` IN (19803, 19805, 19806, 19807, 19808);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceGroup` IN (25662, 25663, 25664, 25665, 25668, 25669, 25670, 25671, 25673, 25674) AND `SourceEntry`=50289;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup` IN (11019, 11020, 11021, 11022) AND `SourceEntry`=50289;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup`=11150;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry` IN (17008, 18422, 18423, 21103, 21104, 21105, 21108, 21110, 49205, 49643, 49644);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup` IN (69, 299) AND `SourceEntry` IN (750, 50432);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
(1, 69, 750, 0, 0, 9, 0, 33, 0, 0, 0, 0, 0, '', NULL, 0, 19),
(1, 69, 50432, 0, 0, 9, 0, 33, 0, 0, 0, 0, 0, '', NULL, 20, 21),
(1, 299, 750, 0, 0, 9, 0, 33, 0, 0, 0, 0, 0, '', NULL, 0, 19),
(1, 299, 50432, 0, 0, 9, 0, 33, 0, 0, 0, 0, 0, '', NULL, 20, 21),
(1, 4421, 17008, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL, 0, 19),
(1, 4421, 49205, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL, 20, 21),
(1, 7461, 21105, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter III will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 7463, 21105, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter III will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 8716, 21104, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter II will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 8717, 21104, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter II will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 10184, 18422, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL, 2, 18),
(1, 10184, 18423, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', NULL, 2, 18),
(1, 10184, 21108, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter VI will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 10184, 49643, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL, 19, 21),
(1, 10184, 49644, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', NULL, 19, 21),
(1, 11502, 21110, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter VIII will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 12396, 21104, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter II will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 15552, 21103, 0, 0, 9, 0, 8620, 0, 0, 0, 0, 0, '', 'Draconic for Dummies Chapter I will drop only when a player have The Only Prescription (8620) in their quest log', 8, 21),
(1, 36538, 18422, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL, 2, 18),
(1, 36538, 18423, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', NULL, 2, 18),
(1, 36538, 49643, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL, 19, 21),
(1, 36538, 49644, 0, 0, 6, 0, 469, 0, 0, 0, 0, 0, '', NULL, 19, 21),
(4, 17280, 19803, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(4, 17280, 19805, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(4, 17280, 19806, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(4, 17280, 19807, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(4, 17280, 19808, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(4, 25662, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25663, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25664, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25665, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25668, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25669, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25670, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25671, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25673, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(4, 25674, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(10, 11019, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(10, 11020, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(10, 11021, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(10, 11022, 50289, 0, 0, 12, 0, 64, 0, 0, 0, 0, 0, '', 'Kalu\'ak Fishing Derby', 20, 21),
(10, 11150, 19803, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(10, 11150, 19805, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(10, 11150, 19806, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(10, 11150, 19807, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21),
(10, 11150, 19808, 0, 0, 12, 0, 15, 0, 0, 0, 0, 0, '', 'Fishing Extravaganza', 6, 21);
