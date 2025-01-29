DROP TABLE IF EXISTS `progression_world`.`broadcast_text`;
CREATE TABLE `progression_world`.`broadcast_text` (
    `ID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `LanguageID` INT(10) NULL DEFAULT NULL,
    `MaleText` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `FemaleText` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `EmoteID1` INT(10) NULL DEFAULT NULL,
    `EmoteID2` INT(10) NULL DEFAULT NULL,
    `EmoteID3` INT(10) NULL DEFAULT NULL,
    `EmoteDelay1` INT(10) NULL DEFAULT NULL,
    `EmoteDelay2` INT(10) NULL DEFAULT NULL,
    `EmoteDelay3` INT(10) NULL DEFAULT NULL,
    `SoundEntriesId` INT(10) NULL DEFAULT NULL,
    `EmotesID` INT(10) NULL DEFAULT NULL,
    `Flags` INT(10) NULL DEFAULT NULL,
    `VerifiedBuild` SMALLINT(5) NULL DEFAULT '0',
    PRIMARY KEY (`ID`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`broadcast_text`
SELECT `ID`, 17 AS `Patch`, `LanguageID`, `MaleText`, `FemaleText`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesId`, `EmotesID`, `Flags`, `VerifiedBuild` FROM `base_world`.`broadcast_text` WHERE `ID` IN (
    8106 -- Thamarian
) UNION SELECT `ID`, 12 AS `Patch`, `LanguageID`, 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. The dock to the west, at the end of the pier, leads to Azuremyst Isle, near the Exodar. Safe journeys to you!' AS `MaleText`, `FemaleText`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesId`, `EmotesID`, `Flags`, `VerifiedBuild` FROM `base_world`.`broadcast_text` WHERE `ID` IN (
    8106 -- Thamarian
) UNION SELECT `ID`, 0 AS `Patch`, `LanguageID`, 'On the northern dock, you can board a ship that will carry you to Rut\'theran Village and Darnassus.  From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. Safe journeys to you!' AS `MaleText`, `FemaleText`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesId`, `EmotesID`, `Flags`, `VerifiedBuild` FROM `base_world`.`broadcast_text` WHERE `ID` IN (
    8106 -- Thamarian
);
