DROP TABLE IF EXISTS `progression_world`.`npc_vendor`;
CREATE TABLE `progression_world`.`npc_vendor` (
    `entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `slot` SMALLINT(5) NOT NULL DEFAULT '0',
    `item` INT(10) NOT NULL DEFAULT '0',
    `maxcount` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `incrtime` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `ExtendedCost` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `VerifiedBuild` INT(10) NULL DEFAULT NULL,
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`entry`, `item`, `ExtendedCost`, `MinPatch`, `MaxPatch`) USING BTREE,
    INDEX `slot` (`slot`) USING BTREE
)
COMMENT='Npc System'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`npc_vendor`
SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `entry` IN (
    39172, -- Marshal Magruder <Wintergrasp Quartermaster>
    39173 -- Champion Ros'slai <Wintergrasp Quartermaster>
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    50078, -- Ymirjar Lord's Battleplate
    50079, -- Ymirjar Lord's Gauntlets
    50080, -- Ymirjar Lord's Helmet
    50081, -- Ymirjar Lord's Legplates
    50082, -- Ymirjar Lord's Shoulderplates
    50087, -- Shadowblade Breastplate
    50088, -- Shadowblade Gauntlets
    50089, -- Shadowblade Helmet
    50090, -- Shadowblade Legplates
    50094, -- Scourgelord Battleplate
    50095, -- Scourgelord Gauntlets
    50096, -- Scourgelord Helmet
    50097, -- Scourgelord Legplates
    50098, -- Scourgelord Shoulderplates
    50105, -- Shadowblade Pauldrons
    50106, -- Lasherweave Robes
    50107, -- Lasherweave Gauntlets
    50108, -- Lasherweave Helmet
    50109, -- Lasherweave Legplates
    50113, -- Lasherweave Pauldrons
    50114, -- Ahn'Kahar Blood Hunter's Handguards
    50115, -- Ahn'Kahar Blood Hunter's Headpiece
    50116, -- Ahn'Kahar Blood Hunter's Legguards
    50117, -- Ahn'Kahar Blood Hunter's Spaulders
    50118, -- Ahn'Kahar Blood Hunter's Tunic
    50240, -- Dark Coven Gloves
    50241, -- Dark Coven Hood
    50242, -- Dark Coven Leggings
    50243, -- Dark Coven Robe
    50244, -- Dark Coven Shoulderpads
    50275, -- Bloodmage Gloves
    50276, -- Bloodmage Hood
    50277, -- Bloodmage Leggings
    50278, -- Bloodmage Robe
    50279, -- Bloodmage Shoulderpads
    50324, -- Lightsworn Shoulderplates
    50325, -- Lightsworn Legplates
    50326, -- Lightsworn Helmet
    50327, -- Lightsworn Gauntlets
    50328, -- Lightsworn Battleplate
    50391, -- Crimson Acolyte Handwraps
    50392, -- Crimson Acolyte Cowl
    50393, -- Crimson Acolyte Pants
    50394, -- Crimson Acolyte Raiments
    50396, -- Crimson Acolyte Mantle
    50765, -- Crimson Acolyte Hood
    50766, -- Crimson Acolyte Gloves
    50767, -- Crimson Acolyte Shoulderpads
    50768, -- Crimson Acolyte Robe
    50769, -- Crimson Acolyte Leggings
    50819, -- Lasherweave Mantle
    50820, -- Lasherweave Trousers
    50821, -- Lasherweave Cover
    50822, -- Lasherweave Gloves
    50823, -- Lasherweave Vestment
    50824, -- Lasherweave Shoulderpads
    50825, -- Lasherweave Legguards
    50826, -- Lasherweave Headguard
    50827, -- Lasherweave Handgrips
    50828, -- Lasherweave Raiment
    50830, -- Frost Witch's Chestguard
    50831, -- Frost Witch's Grips
    50832, -- Frost Witch's Faceguard
    50833, -- Frost Witch's War-Kilt
    50834, -- Frost Witch's Shoulderguards
    50835, -- Frost Witch's Tunic
    50836, -- Frost Witch's Handguards
    50837, -- Frost Witch's Headpiece
    50838, -- Frost Witch's Legguards
    50839, -- Frost Witch's Spaulders
    50841, -- Frost Witch's Hauberk
    50842, -- Frost Witch's Gloves
    50843, -- Frost Witch's Helm
    50844, -- Frost Witch's Kilt
    50845, -- Frost Witch's Shoulderpads
    50846, -- Ymirjar Lord's Pauldrons
    50847, -- Ymirjar Lord's Legguards
    50848, -- Ymirjar Lord's Greathelm
    50849, -- Ymirjar Lord's Handguards
    50850, -- Ymirjar Lord's Breastplate
    50853, -- Scourgelord Pauldrons
    50854, -- Scourgelord Legguards
    50855, -- Scourgelord Faceguard
    50856, -- Scourgelord Handguards
    50857, -- Scourgelord Chestguard
    50860, -- Lightsworn Shoulderguards
    50861, -- Lightsworn Legguards
    50862, -- Lightsworn Faceguard
    50863, -- Lightsworn Handguards
    50864, -- Lightsworn Chestguard
    50865, -- Lightsworn Spaulders
    50866, -- Lightsworn Greaves
    50867, -- Lightsworn Headpiece
    50868, -- Lightsworn Gloves
    50869, -- Lightsworn Tunic
    51125, -- Sanctified Scourgelord Shoulderplates
    51126, -- Sanctified Scourgelord Legplates
    51127, -- Sanctified Scourgelord Helmet
    51128, -- Sanctified Scourgelord Gauntlets
    51129, -- Sanctified Scourgelord Battleplate
    51130, -- Sanctified Scourgelord Pauldrons
    51131, -- Sanctified Scourgelord Legguards
    51132, -- Sanctified Scourgelord Handguards
    51133, -- Sanctified Scourgelord Faceguard
    51134, -- Sanctified Scourgelord Chestguard
    51135, -- Sanctified Lasherweave Pauldrons
    51136, -- Sanctified Lasherweave Legplates
    51137, -- Sanctified Lasherweave Helmet
    51138, -- Sanctified Lasherweave Gauntlets
    51139, -- Sanctified Lasherweave Robes
    51140, -- Sanctified Lasherweave Shoulderpads
    51141, -- Sanctified Lasherweave Raiment
    51142, -- Sanctified Lasherweave Legguards
    51143, -- Sanctified Lasherweave Headguard
    51144, -- Sanctified Lasherweave Handgrips
    51145, -- Sanctified Lasherweave Vestment
    51146, -- Sanctified Lasherweave Trousers
    51147, -- Sanctified Lasherweave Mantle
    51148, -- Sanctified Lasherweave Gloves
    51149, -- Sanctified Lasherweave Cover
    51150, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
    51151, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
    51152, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
    51153, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
    51154, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
    51155, -- Sanctified Bloodmage Shoulderpads
    51156, -- Sanctified Bloodmage Robe
    51157, -- Sanctified Bloodmage Leggings
    51158, -- Sanctified Bloodmage Hood
    51159, -- Sanctified Bloodmage Gloves
    51160, -- Sanctified Lightsworn Shoulderplates
    51161, -- Sanctified Lightsworn Legplates
    51162, -- Sanctified Lightsworn Helmet
    51163, -- Sanctified Lightsworn Gauntlets
    51164, -- Sanctified Lightsworn Battleplate
    51165, -- Sanctified Lightsworn Tunic
    51166, -- Sanctified Lightsworn Spaulders
    51167, -- Sanctified Lightsworn Headpiece
    51168, -- Sanctified Lightsworn Greaves
    51169, -- Sanctified Lightsworn Gloves
    51170, -- Sanctified Lightsworn Shoulderguards
    51171, -- Sanctified Lightsworn Legguards
    51172, -- Sanctified Lightsworn Handguards
    51173, -- Sanctified Lightsworn Faceguard
    51174, -- Sanctified Lightsworn Chestguard
    51175, -- Sanctified Crimson Acolyte Shoulderpads
    51176, -- Sanctified Crimson Acolyte Robe
    51177, -- Sanctified Crimson Acolyte Leggings
    51178, -- Sanctified Crimson Acolyte Hood
    51179, -- Sanctified Crimson Acolyte Gloves
    51180, -- Sanctified Crimson Acolyte Raiments
    51181, -- Sanctified Crimson Acolyte Pants
    51182, -- Sanctified Crimson Acolyte Mantle
    51183, -- Sanctified Crimson Acolyte Handwraps
    51184, -- Sanctified Crimson Acolyte Cowl
    51185, -- Sanctified Shadowblade Pauldrons
    51186, -- Sanctified Shadowblade Legplates
    51187, -- Sanctified Shadowblade Helmet
    51188, -- Sanctified Shadowblade Gauntlets
    51189, -- Sanctified Shadowblade Breastplate
    51190, -- Sanctified Frost Witch's Tunic
    51191, -- Sanctified Frost Witch's Handguards
    51192, -- Sanctified Frost Witch's Headpiece
    51193, -- Sanctified Frost Witch's Legguards
    51194, -- Sanctified Frost Witch's Spaulders
    51195, -- Sanctified Frost Witch's Chestguard
    51196, -- Sanctified Frost Witch's Grips
    51197, -- Sanctified Frost Witch's Faceguard
    51198, -- Sanctified Frost Witch's War-Kilt
    51199, -- Sanctified Frost Witch's Shoulderguards
    51200, -- Sanctified Frost Witch's Hauberk
    51201, -- Sanctified Frost Witch's Gloves
    51202, -- Sanctified Frost Witch's Helm
    51203, -- Sanctified Frost Witch's Kilt
    51204, -- Sanctified Frost Witch's Shoulderpads
    51205, -- Sanctified Dark Coven Shoulderpads
    51206, -- Sanctified Dark Coven Robe
    51207, -- Sanctified Dark Coven Leggings
    51208, -- Sanctified Dark Coven Hood
    51209, -- Sanctified Dark Coven Gloves
    51210, -- Sanctified Ymirjar Lord's Shoulderplates
    51211, -- Sanctified Ymirjar Lord's Legplates
    51212, -- Sanctified Ymirjar Lord's Helmet
    51213, -- Sanctified Ymirjar Lord's Gauntlets
    51214, -- Sanctified Ymirjar Lord's Battleplate
    51215, -- Sanctified Ymirjar Lord's Pauldrons
    51216, -- Sanctified Ymirjar Lord's Legguards
    51217, -- Sanctified Ymirjar Lord's Handguards
    51218, -- Sanctified Ymirjar Lord's Greathelm
    51219, -- Sanctified Ymirjar Lord's Breastplate
    51220, -- Sanctified Ymirjar Lord's Breastplate
    51221, -- Sanctified Ymirjar Lord's Greathelm
    51222, -- Sanctified Ymirjar Lord's Handguards
    51223, -- Sanctified Ymirjar Lord's Legguards
    51224, -- Sanctified Ymirjar Lord's Pauldrons
    51225, -- Sanctified Ymirjar Lord's Battleplate
    51226, -- Sanctified Ymirjar Lord's Gauntlets
    51227, -- Sanctified Ymirjar Lord's Helmet
    51228, -- Sanctified Ymirjar Lord's Legplates
    51229, -- Sanctified Ymirjar Lord's Shoulderplates
    51230, -- Sanctified Dark Coven Gloves
    51231, -- Sanctified Dark Coven Hood
    51232, -- Sanctified Dark Coven Leggings
    51233, -- Sanctified Dark Coven Robe
    51234, -- Sanctified Dark Coven Shoulderpads
    51235, -- Sanctified Frost Witch's Shoulderpads
    51236, -- Sanctified Frost Witch's Kilt
    51237, -- Sanctified Frost Witch's Helm
    51238, -- Sanctified Frost Witch's Gloves
    51239, -- Sanctified Frost Witch's Hauberk
    51240, -- Sanctified Frost Witch's Shoulderguards
    51241, -- Sanctified Frost Witch's War-Kilt
    51242, -- Sanctified Frost Witch's Faceguard
    51243, -- Sanctified Frost Witch's Grips
    51244, -- Sanctified Frost Witch's Chestguard
    51245, -- Sanctified Frost Witch's Spaulders
    51246, -- Sanctified Frost Witch's Legguards
    51247, -- Sanctified Frost Witch's Headpiece
    51248, -- Sanctified Frost Witch's Handguards
    51249, -- Sanctified Frost Witch's Tunic
    51250, -- Sanctified Shadowblade Breastplate
    51251, -- Sanctified Shadowblade Gauntlets
    51252, -- Sanctified Shadowblade Helmet
    51253, -- Sanctified Shadowblade Legplates
    51254, -- Sanctified Shadowblade Pauldrons
    51255, -- Sanctified Crimson Acolyte Cowl
    51256, -- Sanctified Crimson Acolyte Handwraps
    51257, -- Sanctified Crimson Acolyte Mantle
    51258, -- Sanctified Crimson Acolyte Pants
    51259, -- Sanctified Crimson Acolyte Raiments
    51260, -- Sanctified Crimson Acolyte Gloves
    51261, -- Sanctified Crimson Acolyte Hood
    51262, -- Sanctified Crimson Acolyte Leggings
    51263, -- Sanctified Crimson Acolyte Robe
    51264, -- Sanctified Crimson Acolyte Shoulderpads
    51265, -- Sanctified Lightsworn Chestguard
    51266, -- Sanctified Lightsworn Faceguard
    51267, -- Sanctified Lightsworn Handguards
    51268, -- Sanctified Lightsworn Legguards
    51269, -- Sanctified Lightsworn Shoulderguards
    51270, -- Sanctified Lightsworn Gloves
    51271, -- Sanctified Lightsworn Greaves
    51272, -- Sanctified Lightsworn Headpiece
    51273, -- Sanctified Lightsworn Spaulders
    51274, -- Sanctified Lightsworn Tunic
    51275, -- Sanctified Lightsworn Battleplate
    51276, -- Sanctified Lightsworn Gauntlets
    51277, -- Sanctified Lightsworn Helmet
    51278, -- Sanctified Lightsworn Legplates
    51279, -- Sanctified Lightsworn Shoulderplates
    51280, -- Sanctified Bloodmage Gloves
    51281, -- Sanctified Bloodmage Hood
    51282, -- Sanctified Bloodmage Leggings
    51283, -- Sanctified Bloodmage Robe
    51284, -- Sanctified Bloodmage Shoulderpads
    51285, -- Sanctified Ahn'Kahar Blood Hunter's Handguards
    51286, -- Sanctified Ahn'Kahar Blood Hunter's Headpiece
    51287, -- Sanctified Ahn'Kahar Blood Hunter's Legguards
    51288, -- Sanctified Ahn'Kahar Blood Hunter's Spaulders
    51289, -- Sanctified Ahn'Kahar Blood Hunter's Tunic
    51290, -- Sanctified Lasherweave Cover
    51291, -- Sanctified Lasherweave Gloves
    51292, -- Sanctified Lasherweave Mantle
    51293, -- Sanctified Lasherweave Trousers
    51294, -- Sanctified Lasherweave Vestment
    51295, -- Sanctified Lasherweave Handgrips
    51296, -- Sanctified Lasherweave Headguard
    51297, -- Sanctified Lasherweave Legguards
    51298, -- Sanctified Lasherweave Raiment
    51299, -- Sanctified Lasherweave Shoulderpads
    51300, -- Sanctified Lasherweave Robes
    51301, -- Sanctified Lasherweave Gauntlets
    51302, -- Sanctified Lasherweave Helmet
    51303, -- Sanctified Lasherweave Legplates
    51304, -- Sanctified Lasherweave Pauldrons
    51305, -- Sanctified Scourgelord Chestguard
    51306, -- Sanctified Scourgelord Faceguard
    51307, -- Sanctified Scourgelord Handguards
    51308, -- Sanctified Scourgelord Legguards
    51309, -- Sanctified Scourgelord Pauldrons
    51310, -- Sanctified Scourgelord Battleplate
    51311, -- Sanctified Scourgelord Gauntlets
    51312, -- Sanctified Scourgelord Helmet
    51313, -- Sanctified Scourgelord Legplates
    51314, -- Sanctified Scourgelord Shoulderplates
    51557, -- Runed Signet of the Kirin Tor
    51558, -- Runed Loop of the Kirin Tor
    51559, -- Runed Ring of the Kirin Tor
    51560 -- Runed Band of the Kirin Tor
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    47729, -- Bloodshed Band
    47730, -- Dexterous Brightstone Ring
    47731, -- Clutch of Fortification
    47732, -- Band of the Invoker
    47733, -- Heartmender Circle
    47748, -- Khadgar's Hood of Conquest
    47749, -- Khadgar's Robe of Conquest
    47750, -- Khadgar's Leggings of Conquest
    47751, -- Khadgar's Shoulderpads of Conquest
    47752, -- Khadgar's Gauntlets of Conquest
    47773, -- Sunstrider's Gauntlets of Conquest
    47774, -- Sunstrider's Hood of Conquest
    47775, -- Sunstrider's Leggings of Conquest
    47776, -- Sunstrider's Robe of Conquest
    47777, -- Sunstrider's Shoulderpads of Conquest
    47783, -- Kel'Thuzad's Gloves of Conquest
    47784, -- Kel'Thuzad's Hood of Conquest
    47785, -- Kel'Thuzad's Leggings of Conquest
    47786, -- Kel'Thuzad's Robe of Conquest
    47787, -- Kel'Thuzad's Shoulderpads of Conquest
    47798, -- Gul'dan's Shoulderpads of Conquest
    47799, -- Gul'dan's Robe of Conquest
    47800, -- Gul'dan's Leggings of Conquest
    47801, -- Gul'dan's Hood of Conquest
    47802, -- Gul'dan's Gloves of Conquest
    47914, -- Velen's Cowl of Conquest
    47936, -- Velen's Robe of Conquest
    47980, -- Velen's Leggings of Conquest
    47981, -- Velen's Shoulderpads of Conquest
    47982, -- Velen's Gloves of Conquest
    48067, -- Zabra's Gloves of Conquest
    48068, -- Zabra's Cowl of Conquest
    48069, -- Zabra's Leggings of Conquest
    48070, -- Zabra's Robe of Conquest
    48071, -- Zabra's Shoulderpads of Conquest
    48072, -- Velen's Handwraps of Conquest
    48073, -- Velen's Circlet of Conquest
    48074, -- Velen's Pants of Conquest
    48075, -- Velen's Raiments of Conquest
    48076, -- Velen's Mantle of Conquest
    48097, -- Zabra's Handwraps of Conquest
    48098, -- Zabra's Circlet of Conquest
    48099, -- Zabra's Pants of Conquest
    48100, -- Zabra's Raiments of Conquest
    48101, -- Zabra's Mantle of Conquest
    48102, -- Malfurion's Headpiece of Conquest
    48129, -- Malfurion's Robe of Conquest
    48130, -- Malfurion's Leggings of Conquest
    48131, -- Malfurion's Spaulders of Conquest
    48132, -- Malfurion's Handguards of Conquest
    48153, -- Runetotem's Handguards of Conquest
    48154, -- Runetotem's Headpiece of Conquest
    48155, -- Runetotem's Leggings of Conquest
    48156, -- Runetotem's Robe of Conquest
    48157, -- Runetotem's Spaulders of Conquest
    48158, -- Malfurion's Cover of Conquest
    48159, -- Malfurion's Vestments of Conquest
    48160, -- Malfurion's Trousers of Conquest
    48161, -- Malfurion's Mantle of Conquest
    48162, -- Malfurion's Gloves of Conquest
    48183, -- Runetotem's Gloves of Conquest
    48184, -- Runetotem's Cover of Conquest
    48185, -- Runetotem's Trousers of Conquest
    48186, -- Runetotem's Vestments of Conquest
    48187, -- Runetotem's Mantle of Conquest
    48188, -- Runetotem's Headguard of Conquest
    48189, -- Runetotem's Raiments of Conquest
    48190, -- Runetotem's Legguards of Conquest
    48191, -- Runetotem's Shoulderpads of Conquest
    48192, -- Runetotem's Handgrips of Conquest
    48213, -- Malfurion's Handgrips of Conquest
    48214, -- Malfurion's Headguard of Conquest
    48215, -- Malfurion's Legguards of Conquest
    48216, -- Malfurion's Raiments of Conquest
    48217, -- Malfurion's Shoulderpads of Conquest
    48218, -- VanCleef's Helmet of Conquest
    48219, -- VanCleef's Breastplate of Conquest
    48220, -- VanCleef's Legplates of Conquest
    48221, -- VanCleef's Pauldrons of Conquest
    48222, -- VanCleef's Gauntlets of Conquest
    48243, -- Garona's Breastplate of Conquest
    48244, -- Garona's Gauntlets of Conquest
    48245, -- Garona's Helmet of Conquest
    48246, -- Garona's Legplates of Conquest
    48247, -- Garona's Pauldrons of Conquest
    48250, -- Windrunner's Headpiece of Conquest
    48251, -- Windrunner's Tunic of Conquest
    48252, -- Windrunner's Legguards of Conquest
    48253, -- Windrunner's Spaulders of Conquest
    48254, -- Windrunner's Handguards of Conquest
    48275, -- Windrunner's Tunic of Conquest
    48276, -- Windrunner's Handguards of Conquest
    48277, -- Windrunner's Headpiece of Conquest
    48278, -- Windrunner's Legguards of Conquest
    48279, -- Windrunner's Spaulders of Conquest
    48280, -- Nobundo's Headpiece of Conquest
    48281, -- Nobundo's Tunic of Conquest
    48282, -- Nobundo's Legguards of Conquest
    48283, -- Nobundo's Spaulders of Conquest
    48284, -- Nobundo's Handguards of Conquest
    48295, -- Thrall's Tunic of Conquest
    48296, -- Thrall's Handguards of Conquest
    48297, -- Thrall's Headpiece of Conquest
    48298, -- Thrall's Legguards of Conquest
    48299, -- Thrall's Spaulders of Conquest
    48310, -- Nobundo's Hauberk of Conquest
    48312, -- Nobundo's Gloves of Conquest
    48313, -- Nobundo's Helm of Conquest
    48314, -- Nobundo's Kilt of Conquest
    48315, -- Nobundo's Shoulderpads of Conquest
    48336, -- Thrall's Hauberk of Conquest
    48337, -- Thrall's Gloves of Conquest
    48338, -- Thrall's Helm of Conquest
    48339, -- Thrall's Kilt of Conquest
    48340, -- Thrall's Shoulderpads of Conquest
    48341, -- Nobundo's Chestguard of Conquest
    48342, -- Nobundo's Grips of Conquest
    48343, -- Nobundo's Faceguard of Conquest
    48344, -- Nobundo's War-Kilt of Conquest
    48345, -- Nobundo's Shoulderguards of Conquest
    48366, -- Thrall's Chestguard of Conquest
    48367, -- Thrall's Grips of Conquest
    48368, -- Thrall's Faceguard of Conquest
    48369, -- Thrall's War-Kilt of Conquest
    48370, -- Thrall's Shoulderguards of Conquest
    48371, -- Wrynn's Helmet of Conquest
    48372, -- Wrynn's Battleplate of Conquest
    48373, -- Wrynn's Legplates of Conquest
    48374, -- Wrynn's Shoulderplates of Conquest
    48375, -- Wrynn's Gauntlets of Conquest
    48386, -- Hellscream's Battleplate of Conquest
    48387, -- Hellscream's Gauntlets of Conquest
    48388, -- Hellscream's Helmet of Conquest
    48389, -- Hellscream's Legplates of Conquest
    48390, -- Hellscream's Shoulderplates of Conquest
    48429, -- Wrynn's Greathelm of Conquest
    48436, -- Wrynn's Breastplate of Conquest
    48445, -- Wrynn's Legguards of Conquest
    48448, -- Wrynn's Pauldrons of Conquest
    48449, -- Wrynn's Handguards of Conquest
    48456, -- Hellscream's Breastplate of Conquest
    48457, -- Hellscream's Handguards of Conquest
    48458, -- Hellscream's Greathelm of Conquest
    48459, -- Hellscream's Legguards of Conquest
    48460, -- Hellscream's Pauldrons of Conquest
    48472, -- Thassarian's Helmet of Conquest
    48474, -- Thassarian's Battleplate of Conquest
    48476, -- Thassarian's Legplates of Conquest
    48478, -- Thassarian's Shoulderplates of Conquest
    48480, -- Thassarian's Gauntlets of Conquest
    48501, -- Koltira's Battleplate of Conquest
    48502, -- Koltira's Gauntlets of Conquest
    48503, -- Koltira's Helmet of Conquest
    48504, -- Koltira's Legplates of Conquest
    48505, -- Koltira's Shoulderplates of Conquest
    48529, -- Thassarian's Faceguard of Conquest
    48531, -- Thassarian's Chestguard of Conquest
    48533, -- Thassarian's Legguards of Conquest
    48535, -- Thassarian's Pauldrons of Conquest
    48537, -- Thassarian's Handguards of Conquest
    48558, -- Koltira's Chestguard of Conquest
    48559, -- Koltira's Handguards of Conquest
    48560, -- Koltira's Faceguard of Conquest
    48561, -- Koltira's Legguards of Conquest
    48562, -- Koltira's Pauldrons of Conquest
    48564, -- Turalyon's Headpiece of Conquest
    48566, -- Turalyon's Tunic of Conquest
    48568, -- Turalyon's Greaves of Conquest
    48572, -- Turalyon's Spaulders of Conquest
    48574, -- Turalyon's Gloves of Conquest
    48595, -- Liadrin's Spaulders of Conquest
    48596, -- Liadrin's Greaves of Conquest
    48597, -- Liadrin's Headpiece of Conquest
    48598, -- Liadrin's Gloves of Conquest
    48599, -- Liadrin's Tunic of Conquest
    48602, -- Turalyon's Battleplate of Conquest
    48603, -- Turalyon's Gauntlets of Conquest
    48604, -- Turalyon's Helm of Conquest
    48605, -- Turalyon's Legplates of Conquest
    48606, -- Turalyon's Shoulderplates of Conquest
    48627, -- Liadrin's Shoulderplates of Conquest
    48628, -- Liadrin's Legplates of Conquest
    48629, -- Liadrin's Helm of Conquest
    48630, -- Liadrin's Gauntlets of Conquest
    48631, -- Liadrin's Battleplate of Conquest
    48632, -- Turalyon's Breastplate of Conquest
    48633, -- Turalyon's Handguards of Conquest
    48634, -- Turalyon's Faceguard of Conquest
    48635, -- Turalyon's Legguards of Conquest
    48636, -- Turalyon's Shoulderguards of Conquest
    48652, -- Liadrin's Breastplate of Conquest
    48653, -- Liadrin's Handguards of Conquest
    48654, -- Liadrin's Faceguard of Conquest
    48655, -- Liadrin's Legguards of Conquest
    48656, -- Liadrin's Shoulderguards of Conquest
    48677, -- Champion's Deathdealer Breastplate
    48683, -- Mystical Vest of Elements
    48685, -- Polished Breastplate of Valor
    48687, -- Preened Ironfeather Breastplate
    48689, -- Stained Shadowcraft Tunic
    48691, -- Tattered Dreadmist Robe
    48718, -- Repurposed Lava Dredger
    48954, -- Etched Band of the Kirin Tor
    48955, -- Etched Loop of the Kirin Tor
    48956, -- Etched Ring of the Kirin Tor
    48957, -- Etched Signet of the Kirin Tor
    48974, -- Titan-Forged Armwraps of Dominance
    48975, -- Titan-Forged Armwraps of Salvation
    48976, -- Titan-Forged Armwraps of Triumph
    48977, -- Titan-Forged Bracers of Salvation
    48978, -- Titan-Forged Bracers of Triumph
    48979, -- Titan-Forged Cuffs of Salvation
    48980, -- Titan-Forged Wristguards of Dominance
    48981, -- Titan-Forged Wristguards of Salvation
    48982, -- Titan-Forged Wristguards of Triumph
    48983, -- Titan-Forged Chain Leggings of Triumph
    48987, -- Titan-Forged Leather Legguards of Salvation
    48988, -- Titan-Forged Leather Legguards of Triumph
    48990, -- Titan-Forged Mail Leggings of Dominance
    48991, -- Titan-Forged Cloth Leggings of Salvation
    48992, -- Titan-Forged Plate Legguards of Salvation
    48993, -- Titan-Forged Plate Legguards of Triumph
    48994, -- Titan-Forged Ringmail Leggings of Salvation
    48997, -- Titan-Forged Cloth Trousers of Domination
    48998, -- Titan-Forged Leather Legguards of Dominance
    48999, -- Titan-Forged Band of Ascendancy
    49000, -- Titan-Forged Band of Victory
    49177 -- Tome of Cold Weather Flight
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `entry` IN (
    32216 -- Mei Francis <Exotic Mounts>
) AND `item` IN (
    25470, -- Golden Gryphon
    25471, -- Ebon Gryphon
    25472, -- Snowy Gryphon
    25473, -- Swift Blue Gryphon
    25474, -- Tawny Wind Rider
    25475, -- Blue Wind Rider
    25476, -- Green Wind Rider
    25477, -- Swift Red Wind Rider
    25527, -- Swift Red Gryphon
    25528, -- Swift Green Gryphon
    25529, -- Swift Purple Gryphon
    25531, -- Swift Green Wind Rider
    25532, -- Swift Yellow Wind Rider
    25533 -- Swift Purple Wind Rider
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    45057, -- Wind-Up Train Wrecker
    45335, -- Valorous Darkruned Chestguard
    45336, -- Valorous Darkruned Faceguard
    45337, -- Valorous Darkruned Handguards
    45338, -- Valorous Darkruned Legguards
    45339, -- Valorous Darkruned Pauldrons
    45340, -- Valorous Darkruned Battleplate
    45341, -- Valorous Darkruned Gauntlets
    45342, -- Valorous Darkruned Helmet
    45343, -- Valorous Darkruned Legplates
    45344, -- Valorous Darkruned Shoulderplates
    45345, -- Valorous Nightsong Handguards
    45346, -- Valorous Nightsong Headpiece
    45347, -- Valorous Nightsong Leggings
    45348, -- Valorous Nightsong Robe
    45349, -- Valorous Nightsong Spaulders
    45351, -- Valorous Nightsong Gloves
    45352, -- Valorous Nightsong Mantle
    45353, -- Valorous Nightsong Trousers
    45354, -- Valorous Nightsong Vestments
    45355, -- Valorous Nightsong Handgrips
    45356, -- Valorous Nightsong Headguard
    45357, -- Valorous Nightsong Legguards
    45358, -- Valorous Nightsong Raiments
    45359, -- Valorous Nightsong Shoulderpads
    45360, -- Valorous Scourgestalker Handguards
    45361, -- Valorous Scourgestalker Headpiece
    45362, -- Valorous Scourgestalker Legguards
    45363, -- Valorous Scourgestalker Spaulders
    45364, -- Valorous Scourgestalker Tunic
    45365, -- Valorous Kirin Tor Hood
    45367, -- Valorous Kirin Tor Leggings
    45368, -- Valorous Kirin Tor Tunic
    45369, -- Valorous Kirin Tor Shoulderpads
    45370, -- Valorous Aegis Gloves
    45371, -- Valorous Aegis Greaves
    45372, -- Valorous Aegis Headpiece
    45373, -- Valorous Aegis Spaulders
    45374, -- Valorous Aegis Tunic
    45375, -- Valorous Aegis Battleplate
    45376, -- Valorous Aegis Gauntlets
    45377, -- Valorous Aegis Helm
    45379, -- Valorous Aegis Legplates
    45380, -- Valorous Aegis Shoulderplates
    45381, -- Valorous Aegis Breastplate
    45382, -- Valorous Aegis Faceguard
    45383, -- Valorous Aegis Handguards
    45384, -- Valorous Aegis Legguards
    45385, -- Valorous Aegis Shoulderguards
    45386, -- Valorous Cowl of Sanctification
    45387, -- Valorous Gloves of Sanctification
    45388, -- Valorous Leggings of Sanctification
    45389, -- Valorous Robe of Sanctification
    45390, -- Valorous Shoulderpads of Sanctification
    45391, -- Valorous Circlet of Sanctification
    45392, -- Valorous Handwraps of Sanctification
    45393, -- Valorous Mantle of Sanctification
    45394, -- Valorous Pants of Sanctification
    45395, -- Valorous Raiments of Sanctification
    45396, -- Valorous Terrorblade Breastplate
    45397, -- Valorous Terrorblade Gauntlets
    45398, -- Valorous Terrorblade Helmet
    45399, -- Valorous Terrorblade Legplates
    45400, -- Valorous Terrorblade Pauldrons
    45401, -- Valorous Worldbreaker Handguards
    45402, -- Valorous Worldbreaker Headpiece
    45403, -- Valorous Worldbreaker Legguards
    45404, -- Valorous Worldbreaker Spaulders
    45405, -- Valorous Worldbreaker Tunic
    45406, -- Valorous Worldbreaker Gloves
    45408, -- Valorous Worldbreaker Helm
    45409, -- Valorous Worldbreaker Kilt
    45410, -- Valorous Worldbreaker Shoulderpads
    45411, -- Valorous Worldbreaker Hauberk
    45412, -- Valorous Worldbreaker Faceguard
    45413, -- Valorous Worldbreaker Chestguard
    45414, -- Valorous Worldbreaker Grips
    45415, -- Valorous Worldbreaker Shoulderguards
    45416, -- Valorous Worldbreaker War-Kilt
    45417, -- Valorous Deathbringer Hood
    45419, -- Valorous Deathbringer Gloves
    45420, -- Valorous Deathbringer Leggings
    45421, -- Valorous Deathbringer Robe
    45422, -- Valorous Deathbringer Shoulderpads
    45424, -- Valorous Siegebreaker Breastplate
    45425, -- Valorous Siegebreaker Greathelm
    45426, -- Valorous Siegebreaker Handguards
    45427, -- Valorous Siegebreaker Legguards
    45428, -- Valorous Siegebreaker Pauldrons
    45429, -- Valorous Siegebreaker Battleplate
    45430, -- Valorous Siegebreaker Gauntlets
    45431, -- Valorous Siegebreaker Helmet
    45432, -- Valorous Siegebreaker Legplates
    45433, -- Valorous Siegebreaker Shoulderplates
    45689, -- Inscribed Loop of the Kirin Tor
    45690, -- Inscribed Ring of the Kirin Tor
    45691, -- Inscribed Signet of the Kirin Tor
    45774, -- Pattern: Emerald Bag
    45819, -- Spiked Battleguard Choker
    45820, -- Broach of the Wailing Night
    45821, -- Shard of the Crystal Forest
    45822, -- Evoker's Charm
    45823, -- Frozen Tear of Elune
    45824, -- Belt of the Singing Blade
    45825, -- Shieldwarder Girdle
    45826, -- Girdle of Unyielding Trust
    45827, -- Belt of the Ardent Marksman
    45828, -- Windchill Binding
    45829, -- Belt of the Twilight Assassin
    45830, -- Belt of the Living Thicket
    45831, -- Sash of Potent Incantations
    45833, -- Bladebreaker Gauntlets
    45834, -- Gauntlets of the Royal Watch
    45835, -- Gauntlets of Serene Blessing
    45836, -- Gloves of Unerring Aim
    45837, -- Gloves of Augury
    45838, -- Gloves of the Blind Stalker
    45839, -- Grips of the Secret Grove
    45840, -- Touch of the Occult
    45841, -- Legplates of the Violet Champion
    45842, -- Wyrmguard Legplates
    45843, -- Legguards of the Peaceful Covenant
    45844, -- Leggings of the Tireless Sentry
    45845, -- Leggings of the Weary Mystic
    45846, -- Leggings of Wavering Shadow
    45847, -- Wildstrider Legguards
    45848, -- Legwraps of the Master Conjurer
    46057, -- Titan-Forged Chestguard of Salvation
    46058, -- Titan-Forged Breastplate of Triumph
    46059, -- Titan-Forged Chain Armor of Triumph
    46060, -- Titan-Forged Ringmail of Salvation
    46061, -- Titan-Forged Mail Armor of Domination
    46062, -- Titan-Forged Leather Tunic of Triumph
    46063, -- Titan-Forged Leather Chestguard of Salvation
    46064, -- Titan-Forged Leather Chestguard of Dominance
    46065, -- Titan-Forged Raiment of Dominance
    46066, -- Titan-Forged Raiment of Salvation
    46071, -- Titan-Forged Girdle of Salvation
    46072, -- Titan-Forged Girdle of Triumph
    46073, -- Titan-Forged Waistguard of Dominance
    46074, -- Titan-Forged Waistguard of Salvation
    46075, -- Titan-Forged Waistguard of Triumph
    46076, -- Titan-Forged Belt of Dominance
    46077, -- Titan-Forged Belt of Salvation
    46078, -- Titan-Forged Belt of Triumph
    46079, -- Titan-Forged Cord of Dominance
    46080, -- Titan-Forged Cord of Salvation
    46081, -- Titan-Forged Rune of Audacity
    46082, -- Titan-Forged Rune of Determination
    46083, -- Titan-Forged Rune of Accuracy
    46084, -- Titan-Forged Rune of Cruelty
    46085, -- Titan-Forged Rune of Alacrity
    46086, -- Platinum Disks of Battle
    46087, -- Platinum Disks of Sorcery
    46088, -- Platinum Disks of Swiftness
    46111, -- Conqueror's Darkruned Battleplate
    46113, -- Conqueror's Darkruned Gauntlets
    46115, -- Conqueror's Darkruned Helmet
    46116, -- Conqueror's Darkruned Legplates
    46117, -- Conqueror's Darkruned Shoulderplates
    46118, -- Conqueror's Darkruned Chestguard
    46119, -- Conqueror's Darkruned Handguards
    46120, -- Conqueror's Darkruned Faceguard
    46121, -- Conqueror's Darkruned Legguards
    46122, -- Conqueror's Darkruned Pauldrons
    46123, -- Conqueror's Terrorblade Breastplate
    46124, -- Conqueror's Terrorblade Gauntlets
    46125, -- Conqueror's Terrorblade Helmet
    46126, -- Conqueror's Terrorblade Legplates
    46127, -- Conqueror's Terrorblade Pauldrons
    46129, -- Conqueror's Kirin Tor Hood
    46130, -- Conqueror's Kirin Tor Tunic
    46131, -- Valorous Kirin Tor Gauntlets
    46132, -- Conqueror's Kirin Tor Gauntlets
    46133, -- Conqueror's Kirin Tor Leggings
    46134, -- Conqueror's Kirin Tor Shoulderpads
    46135, -- Conqueror's Deathbringer Gloves
    46136, -- Conqueror's Deathbringer Shoulderpads
    46137, -- Conqueror's Deathbringer Robe
    46139, -- Conqueror's Deathbringer Leggings
    46140, -- Conqueror's Deathbringer Hood
    46141, -- Conqueror's Scourgestalker Tunic
    46142, -- Conqueror's Scourgestalker Handguards
    46143, -- Conqueror's Scourgestalker Headpiece
    46144, -- Conqueror's Scourgestalker Legguards
    46145, -- Conqueror's Scourgestalker Spaulders
    46146, -- Conqueror's Siegebreaker Battleplate
    46148, -- Conqueror's Siegebreaker Gauntlets
    46149, -- Conqueror's Siegebreaker Shoulderplates
    46150, -- Conqueror's Siegebreaker Legplates
    46151, -- Conqueror's Siegebreaker Helmet
    46152, -- Conqueror's Aegis Shoulderplates
    46153, -- Conqueror's Aegis Legplates
    46154, -- Conqueror's Aegis Battleplate
    46155, -- Conqueror's Aegis Gauntlets
    46156, -- Conqueror's Aegis Helm
    46157, -- Conqueror's Nightsong Shoulderpads
    46158, -- Conqueror's Nightsong Handgrips
    46159, -- Conqueror's Nightsong Raiments
    46160, -- Conqueror's Nightsong Legguards
    46161, -- Conqueror's Nightsong Headguard
    46162, -- Conqueror's Siegebreaker Breastplate
    46163, -- Conqueror's Handwraps of Sanctification
    46164, -- Conqueror's Siegebreaker Handguards
    46165, -- Conqueror's Mantle of Sanctification
    46166, -- Conqueror's Siegebreaker Greathelm
    46167, -- Conqueror's Siegebreaker Pauldrons
    46168, -- Conqueror's Raiments of Sanctification
    46169, -- Conqueror's Siegebreaker Legguards
    46170, -- Conqueror's Pants of Sanctification
    46172, -- Conqueror's Circlet of Sanctification
    46173, -- Conqueror's Aegis Breastplate
    46174, -- Conqueror's Aegis Handguards
    46175, -- Conqueror's Aegis Faceguard
    46176, -- Conqueror's Aegis Legguards
    46177, -- Conqueror's Aegis Shoulderguards
    46178, -- Conqueror's Aegis Tunic
    46179, -- Conqueror's Aegis Gloves
    46180, -- Conqueror's Aegis Headpiece
    46181, -- Conqueror's Aegis Greaves
    46182, -- Conqueror's Aegis Spaulders
    46183, -- Conqueror's Nightsong Handguards
    46184, -- Conqueror's Nightsong Headpiece
    46185, -- Conqueror's Nightsong Leggings
    46186, -- Conqueror's Nightsong Robe
    46187, -- Conqueror's Nightsong Spaulders
    46188, -- Conqueror's Gloves of Sanctification
    46189, -- Conqueror's Nightsong Gloves
    46190, -- Conqueror's Shoulderpads of Sanctification
    46191, -- Conqueror's Nightsong Cover
    46192, -- Conqueror's Nightsong Trousers
    46193, -- Conqueror's Robe of Sanctification
    46194, -- Conqueror's Nightsong Vestments
    46195, -- Conqueror's Leggings of Sanctification
    46196, -- Conqueror's Nightsong Mantle
    46197, -- Conqueror's Cowl of Sanctification
    46198, -- Conqueror's Worldbreaker Tunic
    46199, -- Conqueror's Worldbreaker Handguards
    46200, -- Conqueror's Worldbreaker Grips
    46201, -- Conqueror's Worldbreaker Headpiece
    46202, -- Conqueror's Worldbreaker Legguards
    46203, -- Conqueror's Worldbreaker Shoulderguards
    46204, -- Conqueror's Worldbreaker Spaulders
    46205, -- Conqueror's Worldbreaker Chestguard
    46206, -- Conqueror's Worldbreaker Hauberk
    46207, -- Conqueror's Worldbreaker Gloves
    46208, -- Conqueror's Worldbreaker War-Kilt
    46209, -- Conqueror's Worldbreaker Helm
    46210, -- Conqueror's Worldbreaker Kilt
    46211, -- Conqueror's Worldbreaker Shoulderpads
    46212, -- Conqueror's Worldbreaker Faceguard
    46313, -- Valorous Nightsong Cover
    46349 -- Chef's Hat
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    33443, -- Sour Goat Cheese
    33444, -- Pungent Seal Whey
    33445, -- Honeymint Tea
    33449, -- Crusty Flatbread
    33452, -- Honey-Spiced Lichen
    33454, -- Salted Venison
    35947, -- Sparkling Frostcap
    35948, -- Savory Snowplum
    35949, -- Tundra Berries
    35950, -- Sweet Potato Bread
    35952, -- Briny Hardcheese
    35953, -- Mead Basted Caribou
    35954, -- Sweetened Goat's Milk
    37201, -- Corpse Dust
    40411, -- Enchanted Vial
    44605, -- Wild Spineleaf
    44614, -- Starleaf Seed
    44615 -- Devout Candle
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 16 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    35321, -- Cloak of Arcane Alacrity
    35324, -- Cloak of Swift Reprieve
    35326, -- Battlemaster's Alacrity
    37915, -- Pattern: Dress Shoes
    38327, -- Pattern: Haliscan Jacket
    38328 -- Pattern: Haliscan Pantaloons
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 15 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    33192, -- Carved Witch Doctor's Stick
    33207, -- Implacable Guardian Sabatons
    33279, -- Iron-tusk Girdle
    33280, -- War-Feathered Loop
    33287, -- Gnarled Ironwood Pauldrons
    33291, -- Voodoo-woven Belt
    33296, -- Brooch of Deftness
    33304, -- Cloak of Subjugated Power
    33324, -- Treads of the Life Path
    33325, -- Voodoo Shaker
    33331, -- Chain of Unleashed Rage
    33333, -- Kharmaa's Shroud of Hope
    33334, -- Fetish of the Primal Gods
    33386, -- Man'kin'do's Belt
    33484, -- Dory's Embrace
    33501, -- Bloodthirster's Wargreaves
    33502, -- Libram of Mending
    33503, -- Libram of Divine Judgement
    33504, -- Libram of Divine Purpose
    33505, -- Totem of Living Water
    33506, -- Skycall Totem
    33507, -- Stonebreaker's Totem
    33510, -- Idol of the Unseen Moon
    33512, -- Furious Deathgrips
    33513, -- Eternium Rage-shackles
    33514, -- Pauldrons of Gruesome Fate
    33515, -- Unwavering Legguards
    33516, -- Bracers of the Ancient Phalanx
    33517, -- Bonefist Gauntlets
    33518, -- High Justicar's Legplates
    33519, -- Handguards of the Templar
    33520, -- Vambraces of the Naaru
    33522, -- Chestguard of the Stoic Guardian
    33523, -- Sabatons of the Righteous Defender
    33524, -- Girdle of the Protector
    33527, -- Shifting Camouflage Pants
    33528, -- Gauntlets of Sniping
    33529, -- Steadying Bracers
    33530, -- Natural Life Leggings
    33531, -- Polished Waterscale Gloves
    33532, -- Gleaming Earthen Bracers
    33534, -- Grips of Nature's Wrath
    33535, -- Earthquake Bracers
    33536, -- Stormwrap
    33537, -- Treads of Booming Thunder
    33538, -- Shallow-grave Trousers
    33539, -- Trickster's Stickyfingers
    33540, -- Master Assassin Wristwraps
    33552, -- Pants of Splendid Recovery
    33557, -- Gargon's Bracers of Peaceful Slumber
    33559, -- Starfire Waistband
    33566, -- Blessed Elunite Coverings
    33578, -- Armwraps of the Kaldorei Protector
    33579, -- Vestments of Hibernation
    33580, -- Band of the Swift Paw
    33582, -- Footwraps of Wild Encroachment
    33583, -- Waistguard of the Great Beast
    33584, -- Pantaloons of Arcane Annihilation
    33585, -- Achromic Trousers of the Naaru
    33586, -- Studious Wraps
    33587, -- Light-Blessed Bonds
    33588, -- Runed Spell-cuffs
    33589, -- Wristguards of Tranquil Thought
    33593, -- Slikk's Cloak of Placation
    33810, -- Amani Mask of Death
    33832, -- Battlemaster's Determination
    33965, -- Hauberk of the Furious Elements
    33970, -- Pauldrons of the Furious Elements
    33972, -- Mask of Primal Power
    33974, -- Grasp of the Moonkin
    34049, -- Battlemaster's Audacity
    34050, -- Battlemaster's Perseverance
    34162, -- Battlemaster's Depravity
    34163 -- Battlemaster's Cruelty
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 14 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    34581, -- Mysterious Arrow
    34582 -- Mysterious Shell
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 13 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    29267, -- Light-Bearer's Faith Shield
    29268, -- Mazthoril Honor Shield
    29269, -- Sapphiron's Wing Bone
    29270, -- Flametongue Seal
    29272, -- Orb of the Soul-Eater
    29273, -- Khadgar's Knapsack
    29274, -- Tears of Heaven
    29275, -- Searing Sunblade
    29367, -- Ring of Cryptic Dreams
    29368, -- Manasurge Pendant
    29370, -- Icon of the Silver Crescent
    29373, -- Band of Halos
    29374, -- Necklace of Eternal Hope
    29375, -- Bishop's Cloak
    29379, -- Ring of Arathi Warlords
    29381, -- Choker of Vile Intent
    29383, -- Bloodlust Brooch
    29384, -- Ring of Unyielding Force
    29386, -- Necklace of the Juggernaut
    29387, -- Gnomeregan Auto-Blocker 600
    29389, -- Totem of the Pulsing Earth
    30761, -- Infernoweave Leggings
    30762, -- Infernoweave Robe
    30763, -- Infernoweave Boots
    30764, -- Infernoweave Gloves
    30766, -- Inferno Tempered Leggings
    30767, -- Inferno Tempered Gauntlets
    30768, -- Inferno Tempered Boots
    30769, -- Inferno Tempered Chestguard
    30770, -- Inferno Forged Boots
    30772, -- Inferno Forged Leggings
    30773, -- Inferno Forged Hauberk
    30774, -- Inferno Forged Gloves
    30776, -- Inferno Hardened Chestguard
    30778, -- Inferno Hardened Leggings
    30779, -- Inferno Hardened Boots
    30780, -- Inferno Hardened Gloves
    32083, -- Faceguard of Determination
    32084, -- Helmet of the Steadfast Champion
    32085, -- Warpstalker Helm
    32086, -- Storm Master's Helmet
    32087, -- Mask of the Deceiver
    32088, -- Cowl of Beastly Rage
    32089, -- Mana-Binders Cowl
    32090 -- Cowl of Naaru Blessings
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    22147, -- Flintweed Seed
    22148, -- Wild Quillvine
    27855, -- Mag'har Grainbread
    27856, -- Skethyl Berries
    27857, -- Garadar Sharp
    27859, -- Zangar Caps
    28053, -- Wicked Arrow
    28060, -- Impact Shot
    28399 -- Filtered Draenic Water
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    21177 -- Symbol of Kings
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    17020 -- Arcane Powder
) UNION SELECT `entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, 1 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`npc_vendor` WHERE `item` IN (
    17021, -- Wild Berries
    17026, -- Wild Thornroot
    17028, -- Holy Candle
    17029 -- Sacred Candle
);

INSERT INTO `progression_world`.`npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`, `MinPatch`, `MaxPatch`) VALUES
-- Old Man Heming <Fishing Supplies>
(2626, 0, 16083, 0, 0, 0, 0, 0, 17), -- Expert Fishing - The Bass and You
-- Deneb Walker <Reagents>
(2805, 0, 16084, 0, 0, 0, 0, 0, 17), -- Expert First Aid - Under Wraps
-- Balai Lok'Wein <Potions, Scrolls & Reagents>
(13476, 0, 16084, 0, 0, 0, 0, 0, 17); -- Expert First Aid - Under Wraps
