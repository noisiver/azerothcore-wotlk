DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='Patch' AND TABLE_NAME='transports')) THEN
        ALTER TABLE `transports`
            ADD COLUMN `Patch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `guid`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`guid`, `Patch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `transports` WHERE `guid` IN (9, 10, 11, 12, 17, 20);
INSERT INTO `transports` (`guid`, `Patch`, `entry`, `name`, `ScriptName`) VALUES
(9, 12, 181646, 'Auberdine, Darkshore and Valaar\'s Berth, Azuremyst Isle (Boat, Alliance (\"Elune\'s Blessing\"))', ''),
(10, 17, 181688, 'Menethil Harbor, Wetlands and Valgarde, Howling Fjord (Boat, Alliance (\"Northspear\"))', ''),
(11, 17, 181689, 'Undercity, Tirisfal Glades and Vengeance Landing, Howling Fjord (Zeppelin, Horde (\"Cloudkisser\"))', ''),
(12, 17, 186238, 'Orgrimmar, Durotar and Warsong Hold, Borean Tundra (Zeppelin, Horde (\"The Mighty Wind\"))', ''),
(17, 17, 190536, 'Valiance Keep, Borean Tundra and Stormwind Harbor (Boat, Alliance (\"The Kraken\"))', ''),
(20, 19, 190549, 'Orgrimmar, Durotar and Thunder Bluff, Mulgore (Zeppelin, Horde (\"The Zephyr\"))', '');
