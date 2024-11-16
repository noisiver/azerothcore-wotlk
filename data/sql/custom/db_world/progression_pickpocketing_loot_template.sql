DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='pickpocketing_loot_template')) THEN
        ALTER TABLE `pickpocketing_loot_template`
            ADD COLUMN `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `Comment`,
            ADD COLUMN `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21' AFTER `MinPatch`,
            DROP PRIMARY KEY,
            ADD PRIMARY KEY (`Entry`, `Item`, `MinPatch`, `MaxPatch`) USING BTREE;
    END IF;
END $$
CALL AddColumn()
$$
DELIMITER ;
DROP PROCEDURE IF EXISTS AddColumn;

DELETE FROM `pickpocketing_loot_template` WHERE `Item` IN (21877, 27859);
INSERT INTO `pickpocketing_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
(1852, 27859, 0, 16.6667, 0, 1, 0, 1, 1, 'Araj the Summoner - Zangar Caps', 12, 21),
(8716, 27859, 0, 9.0909, 0, 1, 0, 1, 1, 'Dreadlord - Zangar Caps', 12, 21),
(8717, 27859, 0, 7.7381, 0, 1, 0, 1, 1, 'Felguard Elite - Zangar Caps', 12, 21),
(10508, 27859, 0, 8.3333, 0, 1, 0, 1, 1, 'Ras Frostwhisper - Zangar Caps', 12, 21),
(12379, 27859, 0, 20, 0, 1, 0, 1, 1, 'Unliving Caretaker - Zangar Caps', 12, 21),
(12380, 27859, 0, 6.2604, 0, 1, 0, 1, 1, 'Unliving Resident - Zangar Caps', 12, 21),
(12396, 27859, 0, 10.8108, 0, 1, 0, 1, 1, 'Doomguard Commander - Zangar Caps', 12, 21),
(15551, 27859, 0, 7.6923, 0, 1, 0, 1, 1, 'Spectral Stable Hand - Zangar Caps', 12, 21),
(16414, 27859, 0, 12.5, 0, 1, 0, 1, 1, 'Ghostly Steward - Zangar Caps', 12, 21),
(16415, 27859, 0, 4.4843, 0, 1, 0, 1, 1, 'Skeletal Waiter - Zangar Caps', 12, 21),
(16471, 27859, 0, 14.2857, 0, 1, 0, 1, 1, 'Skeletal Usher - Zangar Caps', 12, 21),
(16473, 27859, 0, 8, 0, 1, 0, 1, 1, 'Spectral Performer - Zangar Caps', 12, 21),
(16805, 27859, 0, 6.3353, 0, 1, 0, 1, 1, 'Broken Skeleton - Zangar Caps', 12, 21),
(18460, 27859, 0, 6.8931, 0, 1, 0, 1, 1, 'Lost Spirit - Zangar Caps', 12, 21),
(18521, 27859, 0, 8.6, 0, 1, 0, 1, 1, 'Raging Skeleton - Zangar Caps', 12, 21),
(18524, 27859, 0, 7.69, 0, 1, 0, 1, 1, 'Angered Skeleton - Zangar Caps', 12, 21),
(18872, 27859, 0, 6.8734, 0, 1, 0, 1, 1, 'Disembodied Vindicator - Zangar Caps', 12, 21),
(18873, 27859, 0, 6.6667, 0, 1, 0, 1, 1, 'Disembodied Protector - Zangar Caps', 12, 21),
(20480, 27859, 0, 11.8644, 0, 1, 0, 1, 1, 'Kirin\'Var Ghost - Zangar Caps', 12, 21),
(20483, 27859, 0, 14.7059, 0, 1, 0, 1, 1, 'Naberius - Zangar Caps', 12, 21),
(20512, 27859, 0, 6.6941, 0, 1, 0, 1, 1, 'Tormented Soul - Zangar Caps', 12, 21),
(20934, 27859, 0, 7.5, 0, 1, 0, 1, 1, 'Severed Defender - Zangar Caps', 12, 21),
(21058, 27859, 0, 9.7087, 0, 1, 0, 1, 1, 'Disembodied Exarch - Zangar Caps', 12, 21),
(21065, 27859, 0, 4.9558, 0, 1, 0, 1, 1, 'Tormented Citizen - Zangar Caps', 12, 21),
(21196, 21877, 0, 0.2475, 0, 1, 0, 2, 2, 'Ravenous Flayer - Netherweave Cloth', 12, 21),
(21200, 27859, 0, 6.1372, 0, 1, 0, 1, 1, 'Screeching Spirit - Zangar Caps', 12, 21),
(21636, 27859, 0, 7.2727, 0, 1, 0, 1, 1, 'Vengeful Draenei - Zangar Caps', 12, 21),
(21652, 27859, 0, 5.2632, 0, 1, 0, 1, 1, 'Skettis Time-Shifter - Zangar Caps', 12, 21),
(21815, 27859, 0, 6.4422, 0, 1, 0, 1, 1, 'Cleric of Karabor - Zangar Caps', 12, 21),
(22045, 27859, 0, 6.6667, 0, 1, 0, 1, 1, 'Vengeful Husk - Zangar Caps', 12, 21);
