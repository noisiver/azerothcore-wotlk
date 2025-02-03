DELIMITER $$
DROP PROCEDURE IF EXISTS AddColumn $$
CREATE PROCEDURE AddColumn()
BEGIN
    IF NOT EXISTS((SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE() AND COLUMN_NAME='MinPatch' AND TABLE_NAME='item_loot_template')) THEN
        ALTER TABLE `item_loot_template`
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

DELETE FROM `item_loot_template` WHERE `Entry`=43346 AND `Item` IN (40753, 45624, 47241);
DELETE FROM `item_loot_template` WHERE `Entry`=43347 AND `Item` IN (40752, 40753, 45624, 47241);
DELETE FROM `item_loot_template` WHERE `Entry`=45875 AND `Item` IN (40753, 45624, 47241);
DELETE FROM `item_loot_template` WHERE `Entry`=45878 AND `Item` IN (45624, 47241);
DELETE FROM `item_loot_template` WHERE `Entry` IN (54516, 54535, 54536) AND `Item`=49426;
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`, `MinPatch`, `MaxPatch`) VALUES
(43346, 40753, 0, 100, 0, 1, 0, 5, 5, 'Large Satchel of Spoils - Emblem of Valor', 17, 17),
(43346, 45624, 0, 100, 0, 1, 0, 5, 5, 'Large Satchel of Spoils - Emblem of Conquest', 18, 19),
(43346, 47241, 0, 100, 0, 1, 0, 5, 5, 'Large Satchel of Spoils - Emblem of Triumph', 20, 21),
(43347, 40752, 0, 100, 0, 1, 0, 5, 5, 'Satchel of Spoils - Emblem of Heroism', 17, 17),
(43347, 40753, 0, 100, 0, 1, 0, 5, 5, 'Satchel of Spoils - Emblem of Valor', 18, 18),
(43347, 45624, 0, 100, 0, 1, 0, 5, 5, 'Satchel of Spoils - Emblem of Conquest', 19, 19),
(43347, 47241, 0, 100, 0, 1, 0, 5, 5, 'Satchel of Spoils - Emblem of Triumph', 20, 21),
(45875, 40753, 0, 100, 0, 1, 0, 5, 5, 'Sack of Ulduar Spoils - Emblem of Valor', 18, 18),
(45875, 45624, 0, 100, 0, 1, 0, 5, 5, 'Sack of Ulduar Spoils - Emblem of Conquest', 19, 19),
(45875, 47241, 0, 100, 0, 1, 0, 5, 5, 'Sack of Ulduar Spoils - Emblem of Triumph', 20, 21),
(45878, 45624, 0, 100, 0, 1, 0, 10, 10, 'Large Sack of Ulduar Spoils - Emblem of Conquest', 18, 19),
(45878, 47241, 0, 100, 0, 1, 0, 10, 10, 'Large Sack of Ulduar Spoils - Emblem of Triumph', 20, 21),
(54516, 49426, 0, 100, 0, 1, 0, 2, 2, 'Loot-Filled Pumpkin - Emblem of Frost', 20, 21),
(54535, 49426, 0, 100, 0, 1, 1, 2, 2, 'Keg-Shaped Treasure Chest - Emblem of Frost', 20, 21),
(54536, 49426, 0, 100, 0, 1, 0, 2, 2, 'Satchel of Chilled Goods - Emblem of Frost', 20, 21);
