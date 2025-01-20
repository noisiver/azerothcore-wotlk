DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='broadcast_text')) THEN
        ALTER TABLE `broadcast_text`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `ID`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`ID`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `broadcast_text` WHERE `ID`=10184;
INSERT INTO `broadcast_text` (`ID`, `Patch`, `LanguageID`, `MaleText`, `FemaleText`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesId`, `EmotesID`, `Flags`, `VerifiedBuild`) VALUES
(8106, 0, 0, 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. Safe journeys to you!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019),
(8106, 12, 0, 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019),
(8106, 17, 0, 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Stormwind Harbor.  The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
