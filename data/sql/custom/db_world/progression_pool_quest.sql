DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='pool_quest')) THEN
        ALTER TABLE `pool_quest`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `description`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `pool_quest` WHERE `pool_entry` IN (5676, 5678, 87000);
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`, `MinPatch`, `MaxPatch`) VALUES
(13240, 87000, 'Timear Foresees Centrifuge Constructs in your Future!', 0, 19),
(13241, 87000, 'Timear Foresees Ymirjar Berserkers in your Future!', 0, 19),
(13243, 87000, 'Timear Foresees Infinite Agents in your Future!', 0, 19),
(13244, 87000, 'Timear Foresees Titanium Vanguards in your Future!', 0, 19),
(13245, 5678, 'Proof of Demise: Ingvar the Plunderer', 0, 19),
(13246, 5678, 'Proof of Demise: Keristrasza', 0, 19),
(13247, 5678, 'Proof of Demise: Ley-Guardian Eregos', 0, 19),
(13248, 5678, 'Proof of Demise: King Ymiron', 0, 19),
(13249, 5678, 'Proof of Demise: The Prophet Tharon\'ja', 0, 19),
(13250, 5678, 'Proof of Demise: Gal\'darah', 0, 19),
(13251, 5678, 'Proof of Demise: Mal\'Ganis', 0, 19),
(13252, 5678, 'Proof of Demise: Sjonnir The Ironshaper', 0, 19),
(13253, 5678, 'Proof of Demise: Loken', 0, 19),
(13254, 5678, 'Proof of Demise: Anub\'arak', 0, 19),
(13255, 5678, 'Proof of Demise: Herald Volazj', 0, 19),
(13256, 5678, 'Proof of Demise: Cyanigosa', 0, 19),
(13830, 5676, 'The Ghostfish', 18, 21),
(13832, 5676, 'Jewel Of The Sewers', 18, 21),
(13833, 5676, 'Blood Is Thicker', 18, 21),
(13834, 5676, 'Dangerously Delicious', 18, 21),
(13836, 5676, 'Disarmed!', 18, 21),
(14199, 5678, 'Proof of Demise: The Black Knight', 19, 19),
(24579, 5678, 'Sartharion Must Die!', 20, 21),
(24580, 5678, 'Anub Rekhan Must Die!', 20, 21),
(24581, 5678, 'Noth the Plaguebringer Must Die!', 20, 21),
(24582, 5678, 'Instructor Razuvious Must Die!', 20, 21),
(24583, 5678, 'Patchwerk Must Die!', 20, 21),
(24584, 5678, 'Malygos Must Die!', 20, 21),
(24585, 5678, 'Flame Leviathan Must Die!', 20, 21),
(24586, 5678, 'Razorscale Must Die!', 20, 21),
(24587, 5678, 'Ignis the Furnace Master Must Die!', 20, 21),
(24588, 5678, 'XT-002 Deconstructor Must Die!', 20, 21),
(24589, 5678, 'Lord Jaraxxus Must Die!', 20, 21),
(24590, 5678, 'Lord Marrowgar Must Die!', 20, 21);
