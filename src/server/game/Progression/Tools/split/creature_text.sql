DROP TABLE IF EXISTS `progression_world`.`creature_text`;
CREATE TABLE `progression_world`.`creature_text` (
    `CreatureID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `GroupID` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `ID` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `Text` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `Language` TINYINT(3) NOT NULL DEFAULT '0',
    `Probability` FLOAT NOT NULL DEFAULT '0',
    `Emote` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Duration` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `Sound` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `BroadcastTextId` INT(10) NOT NULL DEFAULT '0',
    `TextRange` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `comment` VARCHAR(255) NULL DEFAULT '' COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`CreatureID`, `GroupID`, `ID`, `MinPatch`, `MaxPatch`) USING BTREE,
    CONSTRAINT `creature_text_chk_1` CHECK ((`Probability` >= 0))
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`, `MinPatch`, `MaxPatch`) VALUES
-- Lord Kazzak
(12397, 0, 0, 'I remember well the sting of defeat at the conclusion of the Third War. I have waited far too long for my revenge. Now the shadow of the Legion falls over this world. It is only a matter of time until all of your failed creation... is undone. ', 14, 0, 0, 0, 0, 11332, 20076, 0, 'kazzak SAY_INTRO', 2, 11),
(12397, 1, 0, 'The legion will conquer all!', 14, 0, 0, 0, 0, 11333, 20077, 3, 'kazzak SAY_AGGRO1', 2, 11),
(12397, 1, 1, 'All mortals will perish!', 14, 0, 0, 0, 0, 11334, 20078, 0, 'kazzak SAY_AGGRO2', 2, 11),
(12397, 2, 0, 'All life must be eradicated!', 14, 0, 0, 0, 0, 11335, 20079, 0, 'kazzak SAY_SURPREME1', 2, 11),
(12397, 2, 1, 'I\'ll rip the flesh from your bones!', 14, 0, 0, 0, 0, 11336, 20080, 0, 'kazzak SAY_SURPREME2', 2, 11),
(12397, 3, 0, 'Kirel narak!', 14, 0, 0, 0, 0, 11337, 20081, 0, 'kazzak SAY_KILL1', 2, 11),
(12397, 3, 1, 'Contemptible wretch!', 14, 0, 0, 0, 0, 11338, 20082, 0, 'kazzak SAY_KILL2', 2, 11),
(12397, 4, 0, 'The Legion... will never... fall.', 14, 0, 0, 0, 0, 11340, 20084, 0, 'kazzak SAY_DEATH', 2, 11),
(12397, 5, 0, '%s goes into a frenzy!', 16, 0, 0, 0, 0, 0, 38630, 0, 'kazzak EMOTE_FRENZY', 2, 11),
(12397, 6, 0, 'Invaders, you dangle upon the precipice of oblivion! The Burning Legion comes and with it comes your end.\n', 14, 0, 0, 0, 0, 0, 15895, 0, 'kazzak SAY_RAND1', 2, 11),
(12397, 6, 1, 'Impudent whelps, you only delay the inevitable. Where one has fallen, ten shall rise. Such is the will of Kazzak...', 14, 0, 0, 0, 0, 0, 16432, 0, 'kazzak SAY_RAND2', 2, 11),
(12397, 7, 0, 'The universe will be remade.', 14, 0, 0, 0, 0, 11339, 20083, 0, 'kazzak SAY_WIPE', 2, 11),
(12397, 8, 0, 'Kazzak is supreme!', 16, 0, 0, 0, 0, 0, 0, 0, 'kazzak SAY_SUPREME', 2, 11);
