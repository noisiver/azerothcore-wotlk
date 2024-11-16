DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='gossip_menu_option')) THEN
        ALTER TABLE `gossip_menu_option`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `VerifiedBuild`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`MenuID`, `OptionID`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `gossip_menu_option` WHERE (`MenuID`=421 AND `OptionID`=8) OR (`MenuID`=435 AND `OptionID`=12) OR (`MenuID`=751 AND `OptionID`=7) OR (`MenuID`=1942 AND `OptionID`=8) OR (`MenuID`=1951 AND `OptionID` IN (11, 14)) OR (`MenuID`=2121 AND `OptionID`=10) OR (`MenuID`=2168 AND `OptionID`=8) OR (`MenuID`=2351 AND `OptionID`=6) OR (`MenuID`=2352 AND `OptionID`=11) OR (`MenuID`=3284 AND `OptionID`=8) OR (`MenuID`=3330 AND `OptionID`=7) OR (`MenuID`=3355 AND `OptionID`=8) OR (`MenuID`=3532 AND `OptionID`=8) OR (`MenuID`=3558 AND `OptionID`=8) OR (`MenuID`=3572 AND `OptionID`=6) OR (`MenuID`=7667 AND `OptionID`=8) OR (`MenuID`=7788 AND `OptionID`=7) OR (`MenuID`=8138 AND `OptionID`=8) OR (`MenuID`=8205 AND `OptionID`=8) OR (`MenuID`=10056 AND `OptionID`=11) OR (`MenuID`=10078 AND `OptionID`=8) OR (`MenuID`=10265 AND `OptionID`=11) OR (`MenuID`=10767 AND `OptionID`=8) OR (`MenuID`=10769 AND `OptionID`=2);
DELETE FROM `gossip_menu_option` WHERE (`MenuID`=401 AND `OptionID`=6) OR (`MenuID`=1949 AND `OptionID`=7) OR (`MenuID`=2144 AND `OptionID`=7) OR (`MenuID`=3354 AND `OptionID`=1) OR (`MenuID`=3519 AND `OptionID`=6) OR (`MenuID`=10768 AND `OptionID`=1);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`, `MinPatch`, `MaxPatch`) VALUES
(401, 6, 0, 'Shaman', 45410, 1, 1, 8164, 37, 0, 0, '', 0, 0, 14, 21),
(421, 8, 0, 'Inscription', 48811, 1, 1, 10010, 13, 0, 0, '', 0, 0, 17, 21),
(435, 12, 0, 'Barber', 45376, 1, 1, 10011, 30, 0, 0, '', 0, 0, 17, 21),
(751, 7, 0, 'Inscription', 48811, 1, 1, 10021, 296, 0, 0, '', 0, 0, 17, 21),
(1942, 8, 0, 'Inscription', 48811, 1, 1, 10017, 189, 0, 0, '', 0, 0, 17, 21),
(1949, 7, 0, 'Paladin', 48028, 1, 1, 8644, 303, 0, 0, '', 0, 0, 14, 21),
(1951, 11, 0, 'Barber', 45376, 1, 1, 10018, 188, 0, 0, '', 0, 0, 17, 21),
(1951, 14, 0, 'Lexicon of Power', 32998, 1, 1, 10205, 189, 0, 0, '', 0, 0, 17, 21),
(2121, 10, 0, 'Barber', 45376, 1, 1, 10014, 60, 0, 0, '', 0, 0, 17, 21),
(2144, 7, 0, 'Shaman', 45410, 1, 1, 8643, 65, 0, 0, '', 0, 0, 14, 21),
(2168, 8, 0, 'Inscription', 48811, 1, 1, 10013, 72, 0, 0, '', 0, 0, 17, 21),
(2351, 6, 0, 'Inscription', 48811, 1, 1, 10015, 107, 0, 0, '', 0, 0, 17, 21),
(2352, 11, 0, 'Lexicon of Power', 32998, 1, 1, 10205, 107, 0, 0, '', 0, 0, 17, 21),
(3284, 8, 0, 'Inscription', 48811, 1, 1, 10017, 189, 0, 0, '', 0, 0, 17, 21),
(3330, 7, 0, 'Inscription', 48811, 1, 1, 10021, 296, 0, 0, '', 0, 0, 17, 21),
(3354, 1, 0, 'Paladin', 48028, 1, 1, 8166, 0, 0, 0, '', 0, 0, 14, 21),
(3355, 8, 0, 'Inscription', 48811, 1, 1, 10822, 344, 0, 0, '', 0, 0, 17, 21),
(3519, 6, 0, 'Shaman', 45410, 1, 1, 8160, 0, 0, 0, '', 0, 0, 14, 21),
(3532, 8, 0, 'Inscription', 48811, 1, 1, 10010, 13, 0, 0, '', 0, 0, 17, 21),
(3558, 8, 0, 'Inscription', 48811, 1, 1, 10013, 72, 0, 0, '', 0, 0, 17, 21),
(3572, 6, 0, 'Inscription', 48811, 1, 1, 10015, 107, 0, 0, '', 0, 0, 17, 21),
(7667, 8, 0, 'Inscription', 48811, 1, 1, 10022, 376, 0, 0, '', 0, 0, 17, 21),
(7788, 7, 0, 'Inscription', 48811, 1, 1, 10016, 212, 0, 0, '', 0, 0, 17, 21),
(8138, 8, 0, 'Inscription', 48811, 1, 1, 10016, 212, 0, 0, '', 0, 0, 17, 21),
(8205, 8, 0, 'Inscription', 48811, 1, 1, 10022, 376, 0, 0, '', 0, 0, 17, 21),
(10056, 11, 0, 'Lexicon of Power', 32998, 1, 1, 10205, 148, 0, 0, '', 0, 0, 17, 21),
(10078, 8, 0, 'Inscription', 48811, 1, 1, 10067, 148, 0, 0, '', 0, 0, 17, 21),
(10265, 11, 0, 'Lexicon of Power', 32998, 1, 1, 10205, 107, 0, 0, '', 0, 0, 17, 21),
(10767, 8, 0, 'Inscription', 48811, 1, 1, 10751, 344, 0, 0, '', 0, 0, 17, 21),
(10768, 1, 0, 'Paladin', 48028, 1, 1, 10757, 330, 0, 0, '', 0, 0, 14, 21),
(10769, 2, 0, 'Barber', 45376, 1, 1, 10739, 320, 0, 0, '', 0, 0, 17, 21);
