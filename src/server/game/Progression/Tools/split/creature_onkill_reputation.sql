DROP TABLE IF EXISTS `progression_world`.`creature_onkill_reputation`;
CREATE TABLE `progression_world`.`creature_onkill_reputation` (
    `creature_id` INT(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `RewOnKillRepFaction1` SMALLINT(5) NOT NULL DEFAULT '0',
    `RewOnKillRepFaction2` SMALLINT(5) NOT NULL DEFAULT '0',
    `MaxStanding1` TINYINT(3) NOT NULL DEFAULT '0',
    `IsTeamAward1` TINYINT(3) NOT NULL DEFAULT '0',
    `RewOnKillRepValue1` FLOAT NOT NULL DEFAULT '0',
    `MaxStanding2` TINYINT(3) NOT NULL DEFAULT '0',
    `IsTeamAward2` TINYINT(3) NOT NULL DEFAULT '0',
    `RewOnKillRepValue2` FLOAT NOT NULL DEFAULT '0',
    `TeamDependent` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    PRIMARY KEY (`creature_id`, `Patch`) USING BTREE
)
COMMENT='Creature OnKill Reputation gain'
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

INSERT INTO `progression_world`.`creature_onkill_reputation`
SELECT `creature_id`, 14 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    1783, -- Skeletal Flayer
    1784, -- Skeletal Sorcerer
    1785, -- Skeletal Terror
    1787, -- Skeletal Executioner
    1788, -- Skeletal Warlord
    1789, -- Skeletal Acolyte
    1791, -- Slavering Ghoul
    1793, -- Rotting Ghoul
    1794, -- Soulless Ghoul
    1795, -- Searing Ghoul
    1796, -- Freezing Ghoul
    1802, -- Hungering Wraith
    1804, -- Wailing Death
    1805, -- Flesh Golem
    1847, -- Foulmane
    1852, -- Araj the Summoner
    1852, -- Araj the Summoner
    2496, -- Baron Revilgaz
    2625, -- Viznik Goldgrubber <Banker>
    2636, -- Blackwater Deckhand
    2778, -- Deckhand Moishe <Blackwater Raiders>
    4472, -- Haunting Vision
    4474, -- Rotting Cadaver
    4475, -- Blighted Zombie
    4624, -- Booty Bay Bruiser
    4624, -- Booty Bay Bruiser
    4624, -- Booty Bay Bruiser
    4638, -- Magram Scout
    4639, -- Magram Outrunner
    4640, -- Magram Wrangler
    4641, -- Magram Windchaser
    4642, -- Magram Stormer
    4643, -- Magram Pack Runner
    4644, -- Magram Marauder
    4645, -- Magram Mauler
    4646, -- Gelkis Outrunner
    4647, -- Gelkis Scout
    4648, -- Gelkis Stamper
    4649, -- Gelkis Windchaser
    4651, -- Gelkis Earthcaller
    4652, -- Gelkis Mauler
    4653, -- Gelkis Marauder
    4661, -- Gelkis Rumbler
    4662, -- Magram Bonepaw
    5601, -- Khan Jehn
    5602, -- Khan Shaka
    6068, -- Warug's Bodyguard
    7153, -- Deadwood Warrior
    7154, -- Deadwood Gardener
    7155, -- Deadwood Pathfinder
    7156, -- Deadwood Den Watcher
    7157, -- Deadwood Avenger
    7158, -- Deadwood Shaman
    7438, -- Winterfall Ursa
    7439, -- Winterfall Shaman
    7440, -- Winterfall Den Watcher
    7441, -- Winterfall Totemic
    7442, -- Winterfall Pathfinder
    8123, -- Rickle Goldgrubber <Banker>
    8523, -- Scourge Soldier
    8524, -- Cursed Mage
    8525, -- Scourge Warder
    8526, -- Dark Caster
    8527, -- Scourge Guard
    8528, -- Dread Weaver
    8529, -- Scourge Champion
    8530, -- Cannibal Ghoul
    8531, -- Gibbering Ghoul
    8532, -- Diseased Flayer
    8534, -- Putrid Gargoyle
    8535, -- Putrid Shrieker
    8538, -- Unseen Servant
    8539, -- Eyeless Watcher
    8540, -- Torn Screamer
    8541, -- Hate Shrieker
    8542, -- Death Singer
    8543, -- Stitched Horror
    8544, -- Gangled Golem
    8545, -- Stitched Golem
    8546, -- Dark Adept <Cult of the Damned>
    8547, -- Death Cultist <Cult of the Damned>
    8548, -- Vile Tutor <Cult of the Damned>
    8550, -- Shadowmage <Cult of the Damned>
    8551, -- Dark Summoner <Cult of the Damned>
    8553, -- Necromancer <Cult of the Damned>
    8555, -- Crypt Stalker
    8556, -- Crypt Walker
    8557, -- Crypt Horror
    8558, -- Crypt Slayer
    9462, -- Chieftain Bloodmaw
    9464, -- Overlord Ror
    10199, -- Grizzle Snowpaw
    10381, -- Ravaged Cadaver
    10382, -- Mangled Cadaver
    10384, -- Spectral Citizen
    10385, -- Ghostly Citizen
    10390, -- Skeletal Guardian
    10391, -- Skeletal Berserker
    10398, -- Thuzadin Shadowcaster
    10399, -- Thuzadin Acolyte
    10400, -- Thuzadin Necromancer
    10405, -- Plague Ghoul
    10406, -- Ghoul Ravener
    10407, -- Fleshflayer Ghoul
    10408, -- Rockwing Gargoyle
    10409, -- Rockwing Screecher
    10412, -- Crypt Crawler
    10413, -- Crypt Beast
    10414, -- Patchwork Horror
    10416, -- Bile Spewer
    10417, -- Venom Belcher
    10432, -- Vectus
    10433, -- Marduk Blackpool
    10435, -- Magistrate Barthilas
    10436, -- Baroness Anastari
    10437, -- Nerub'enkan
    10438, -- Maleki the Pallid
    10440, -- Baron Rivendare
    10463, -- Shrieking Banshee
    10464, -- Wailing Banshee
    10469, -- Scholomance Adept
    10470, -- Scholomance Neophyte
    10471, -- Scholomance Acolyte
    10476, -- Scholomance Necrolyte
    10477, -- Scholomance Necromancer
    10478, -- Splintered Skeleton
    10480, -- Unstable Corpse
    10481, -- Reanimated Corpse
    10482, -- Risen Lackey
    10485, -- Risen Aberration
    10486, -- Risen Warrior
    10487, -- Risen Protector
    10488, -- Risen Construct
    10489, -- Risen Guard
    10491, -- Risen Bonewarder
    10495, -- Diseased Ghoul
    10498, -- Spectral Tutor
    10499, -- Spectral Researcher
    10500, -- Spectral Teacher
    10502, -- Lady Illucia Barov
    10503, -- Jandice Barov
    10504, -- Lord Alexei Barov
    10505, -- Instructor Malicia
    10507, -- The Ravenian
    10508, -- Ras Frostwhisper
    10508, -- Ras Frostwhisper
    10558, -- Hearthsinger Forresten
    10580, -- Fetid Zombie
    10698, -- Summoned Zombie
    10738, -- High Chief Winterfall
    10801, -- Jabbering Ghoul
    10809, -- Stonespine
    10816, -- Wandering Skeleton
    10821, -- Hed'mush the Rotting
    10825, -- Gish the Unmoving
    10826, -- Lord Darkscythe
    10827, -- Deathspeaker Selendre <Cult of the Damned>
    10901, -- Lorekeeper Polkelt
    10916, -- Winterfall Runner
    11082, -- Stratholme Courier
    11257, -- Scholomance Handler
    11261, -- Doctor Theolen Krastinov <The Butcher>
    11338, -- Hakkari Shadowcaster
    11339, -- Hakkari Shadow Hunter
    11340, -- Hakkari Blood Priest
    11350, -- Gurubashi Axe Thrower
    11351, -- Gurubashi Headhunter
    11352, -- Gurubashi Berserker
    11353, -- Gurubashi Blood Drinker
    11356, -- Gurubashi Champion
    11359, -- Soulflayer
    11361, -- Zulian Tiger
    11365, -- Zulian Panther
    11370, -- Razzashi Broodwidow
    11371, -- Razzashi Serpent
    11372, -- Razzashi Adder
    11373, -- Razzashi Cobra
    11374, -- Hooktooth Frenzy
    11551, -- Necrofiend
    11582, -- Scholomance Dark Summoner
    11622, -- Rattlegore
    11803, -- Twilight Keeper Exeter <Twilight's Hammer>
    11804, -- Twilight Keeper Havunth <Twilight's Hammer>
    11830, -- Hakkari Priest
    11831, -- Hakkari Witch Doctor
    11873, -- Spectral Attendant
    11880, -- Twilight Avenger <Twilight's Hammer>
    11881, -- Twilight Geolord <Twilight's Hammer>
    11882, -- Twilight Stonecaller <Twilight's Hammer>
    11883, -- Twilight Master <Twilight's Hammer>
    12262, -- Ziggurat Protector
    12263, -- Slaughterhouse Protector
    14342, -- Ragepaw
    14479, -- Twilight Lord Everun <Twilight's Hammer>
    14532, -- Razzashi Venombrood
    14750, -- Gurubashi Bat Rider
    14821, -- Razzashi Raptor
    14825, -- Withered Mistress
    14861, -- Blood Steward of Kirtonos
    14880, -- Razzashi Skitterer
    14882, -- Atal'ai Mistress
    14883, -- Voodoo Slave
    15043, -- Zulian Crocolisk
    15111, -- Mad Servant
    15168, -- Vile Scarab
    15200, -- Twilight Keeper Mayna <Twilight's Hammer>
    15201, -- Twilight Flamereaver
    15202, -- Vyral the Vile <Twilight's Hammer>
    15204, -- High Marshal Whirlaxis <Abyssal High Council>
    15205, -- Baron Kazum <Abyssal High Council>
    15206, -- The Duke of Cynders <Abyssal Council>
    15207, -- The Duke of Fathoms <Abyssal Council>
    15208, -- The Duke of Shards <Abyssal Council>
    15209, -- Crimson Templar <Abyssal Council>
    15211, -- Azure Templar <Abyssal Council>
    15212, -- Hoary Templar <Abyssal Council>
    15213, -- Twilight Overlord <Twilight's Hammer>
    15220, -- The Duke of Zephyrs <Abyssal Council>
    15229, -- Vekniss Soldier
    15230, -- Vekniss Warrior
    15235, -- Vekniss Stinger
    15236, -- Vekniss Wasp
    15240, -- Vekniss Hive Crawler
    15249, -- Qiraji Lasher
    15262, -- Obsidian Eradicator
    15264, -- Anubisath Sentinel
    15277, -- Anubisath Defender
    15305, -- Lord Skwol <Abyssal High Council>
    15307, -- Earthen Templar <Abyssal Council>
    15308, -- Twilight Prophet <Twilight's Hammer>
    15318, -- Hive'Zara Drone
    15319, -- Hive'Zara Collector
    15320, -- Hive'Zara Soldier
    15323, -- Hive'Zara Sandstalker
    15324, -- Qiraji Gladiator
    15325, -- Hive'Zara Wasp
    15327, -- Hive'Zara Stinger
    15333, -- Silicate Feeder
    15335, -- Flesh Hunter
    15336, -- Hive'Zara Tail Lasher
    15338, -- Obsidian Destroyer
    15339, -- Ossirian the Unscarred
    15340, -- Moam
    15348, -- Kurinnaxx
    15355, -- Anubisath Guardian
    15369, -- Ayamiss the Hunter
    15370, -- Buru the Gorger
    15461, -- Shrieker Scarab
    15462, -- Spitting Scarab
    15537, -- Anubisath Warrior
    15538, -- Anubisath Swarmguard
    15541, -- Twilight Marauder Morna <Twilight's Hammer>
    15542, -- Twilight Marauder <Twilight's Hammer>
    15623, -- Xandivious
    15727, -- C'Thun
    16184 -- Nerubian Overseer
) UNION SELECT `creature_id`, 2 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 6 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    7442 -- Winterfall Pathfinder
) UNION SELECT `creature_id`, 2 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 15 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    9462, -- Chieftain Bloodmaw
    9464 -- Overlord Ror
) UNION SELECT `creature_id`, 2 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 25 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    14342 -- Ragepaw
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 4 AS `MaxStanding1`, `IsTeamAward1`, 15 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    1847, -- Foulmane
    10821, -- Hed'mush the Rotting
    10825, -- Gish the Unmoving
    10826 -- Lord Darkscythe
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 4 AS `MaxStanding1`, `IsTeamAward1`, 1 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    11880, -- Twilight Avenger <Twilight's Hammer>
    11881, -- Twilight Geolord <Twilight's Hammer>
    11882, -- Twilight Stonecaller <Twilight's Hammer>
    11883, -- Twilight Master <Twilight's Hammer>
    15213 -- Twilight Overlord <Twilight's Hammer>
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 4 AS `MaxStanding1`, `IsTeamAward1`, 5 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    1788, -- Skeletal Warlord
    1804, -- Wailing Death
    1805, -- Flesh Golem
    8531, -- Gibbering Ghoul
    8543, -- Stitched Horror
    8545, -- Stitched Golem
    8546, -- Dark Adept <Cult of the Damned>
    8547, -- Death Cultist <Cult of the Damned>
    8548, -- Vile Tutor <Cult of the Damned>
    8550, -- Shadowmage <Cult of the Damned>
    8551, -- Dark Summoner <Cult of the Damned>
    8553, -- Necromancer <Cult of the Damned>
    8558, -- Crypt Slayer
    10827, -- Deathspeaker Selendre <Cult of the Damned>
    11873, -- Spectral Attendant
    12262, -- Ziggurat Protector
    12263 -- Slaughterhouse Protector
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 4 AS `MaxStanding1`, `IsTeamAward1`, 15 AS `RewOnKillRepValue1`, 4 AS `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    4638, -- Magram Scout
    4639, -- Magram Outrunner
    4640, -- Magram Wrangler
    4641, -- Magram Windchaser
    4642, -- Magram Stormer
    4643, -- Magram Pack Runner
    4644, -- Magram Marauder
    4645, -- Magram Mauler
    4646, -- Gelkis Outrunner
    4647, -- Gelkis Scout
    4648, -- Gelkis Stamper
    4649, -- Gelkis Windchaser
    4651, -- Gelkis Earthcaller
    4652, -- Gelkis Mauler
    4653, -- Gelkis Marauder
    4661, -- Gelkis Rumbler
    4662, -- Magram Bonepaw
    5601, -- Khan Jehn
    6068 -- Warug's Bodyguard
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 4 AS `MaxStanding1`, `IsTeamAward1`, 20 AS `RewOnKillRepValue1`, 4 AS `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    5602 -- Khan Shaka
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 5 AS `MaxStanding1`, `IsTeamAward1`, 5 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    10381, -- Ravaged Cadaver
    10382, -- Mangled Cadaver
    10384, -- Spectral Citizen
    10385, -- Ghostly Citizen
    10390, -- Skeletal Guardian
    10391, -- Skeletal Berserker
    10398, -- Thuzadin Shadowcaster
    10399, -- Thuzadin Acolyte
    10400, -- Thuzadin Necromancer
    10405, -- Plague Ghoul
    10406, -- Ghoul Ravener
    10407, -- Fleshflayer Ghoul
    10408, -- Rockwing Gargoyle
    10409, -- Rockwing Screecher
    10412, -- Crypt Crawler
    10413, -- Crypt Beast
    10414, -- Patchwork Horror
    10416, -- Bile Spewer
    10417, -- Venom Belcher
    10463, -- Shrieking Banshee
    10464, -- Wailing Banshee
    10469, -- Scholomance Adept
    10470, -- Scholomance Neophyte
    10471, -- Scholomance Acolyte
    10476, -- Scholomance Necrolyte
    10477, -- Scholomance Necromancer
    10478, -- Splintered Skeleton
    10480, -- Unstable Corpse
    10481, -- Reanimated Corpse
    10482, -- Risen Lackey
    10485, -- Risen Aberration
    10486, -- Risen Warrior
    10487, -- Risen Protector
    10488, -- Risen Construct
    10489, -- Risen Guard
    10491, -- Risen Bonewarder
    10495, -- Diseased Ghoul
    10498, -- Spectral Tutor
    10499, -- Spectral Researcher
    10500, -- Spectral Teacher
    11082, -- Stratholme Courier
    11257, -- Scholomance Handler
    11551, -- Necrofiend
    11582, -- Scholomance Dark Summoner
    14861, -- Blood Steward of Kirtonos
    15209, -- Crimson Templar <Abyssal Council>
    15211, -- Azure Templar <Abyssal Council>
    15212, -- Hoary Templar <Abyssal Council>
    15307 -- Earthen Templar <Abyssal Council>
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 5 AS `MaxStanding1`, `IsTeamAward1`, 3 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    11338, -- Hakkari Shadowcaster
    11339, -- Hakkari Shadow Hunter
    11340, -- Hakkari Blood Priest
    11351, -- Gurubashi Headhunter
    11353, -- Gurubashi Blood Drinker
    11356, -- Gurubashi Champion
    11359, -- Soulflayer
    11831, -- Hakkari Witch Doctor
    14532, -- Razzashi Venombrood
    14821, -- Razzashi Raptor
    14825, -- Withered Mistress
    14880, -- Razzashi Skitterer
    14883, -- Voodoo Slave
    15111 -- Mad Servant
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 5 AS `MaxStanding1`, `IsTeamAward1`, 1 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    11350, -- Gurubashi Axe Thrower
    11352, -- Gurubashi Berserker
    11361, -- Zulian Tiger
    11365, -- Zulian Panther
    11370, -- Razzashi Broodwidow
    11371, -- Razzashi Serpent
    11372, -- Razzashi Adder
    11373, -- Razzashi Cobra
    11374, -- Hooktooth Frenzy
    11803, -- Twilight Keeper Exeter <Twilight's Hammer>
    11804, -- Twilight Keeper Havunth <Twilight's Hammer>
    14750, -- Gurubashi Bat Rider
    14882, -- Atal'ai Mistress
    15043, -- Zulian Crocolisk
    15200, -- Twilight Keeper Mayna <Twilight's Hammer>
    15201, -- Twilight Flamereaver
    15541, -- Twilight Marauder Morna <Twilight's Hammer>
    15542 -- Twilight Marauder <Twilight's Hammer>
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 5 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    1783, -- Skeletal Flayer
    1784, -- Skeletal Sorcerer
    1785, -- Skeletal Terror
    1787, -- Skeletal Executioner
    1789, -- Skeletal Acolyte
    1791, -- Slavering Ghoul
    1793, -- Rotting Ghoul
    1794, -- Soulless Ghoul
    1795, -- Searing Ghoul
    1796, -- Freezing Ghoul
    1802, -- Hungering Wraith
    2496, -- Baron Revilgaz
    2625, -- Viznik Goldgrubber <Banker>
    2636, -- Blackwater Deckhand
    2778, -- Deckhand Moishe <Blackwater Raiders>
    4472, -- Haunting Vision
    4474, -- Rotting Cadaver
    4475, -- Blighted Zombie
    7153, -- Deadwood Warrior
    7154, -- Deadwood Gardener
    7155, -- Deadwood Pathfinder
    7156, -- Deadwood Den Watcher
    7157, -- Deadwood Avenger
    7158, -- Deadwood Shaman
    7438, -- Winterfall Ursa
    7439, -- Winterfall Shaman
    7440, -- Winterfall Den Watcher
    7441, -- Winterfall Totemic
    8123, -- Rickle Goldgrubber <Banker>
    8523, -- Scourge Soldier
    8524, -- Cursed Mage
    8525, -- Scourge Warder
    8526, -- Dark Caster
    8527, -- Scourge Guard
    8528, -- Dread Weaver
    8529, -- Scourge Champion
    8530, -- Cannibal Ghoul
    8532, -- Diseased Flayer
    8534, -- Putrid Gargoyle
    8535, -- Putrid Shrieker
    8538, -- Unseen Servant
    8539, -- Eyeless Watcher
    8540, -- Torn Screamer
    8541, -- Hate Shrieker
    8542, -- Death Singer
    8544, -- Gangled Golem
    8555, -- Crypt Stalker
    8556, -- Crypt Walker
    8557, -- Crypt Horror
    9462, -- Chieftain Bloodmaw
    10580, -- Fetid Zombie
    10698, -- Summoned Zombie
    10801, -- Jabbering Ghoul
    10816, -- Wandering Skeleton
    10916, -- Winterfall Runner
    14479, -- Twilight Lord Everun <Twilight's Hammer>
    15308 -- Twilight Prophet <Twilight's Hammer>
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 5 AS `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    11830 -- Hakkari Priest
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, 6 AS `MaxStanding1`, `IsTeamAward1`, 3 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    15168, -- Vile Scarab
    15318, -- Hive'Zara Drone
    15319, -- Hive'Zara Collector
    15320, -- Hive'Zara Soldier
    15323, -- Hive'Zara Sandstalker
    15324, -- Qiraji Gladiator
    15325, -- Hive'Zara Wasp
    15327, -- Hive'Zara Stinger
    15333, -- Silicate Feeder
    15335, -- Flesh Hunter
    15336, -- Hive'Zara Tail Lasher
    15338, -- Obsidian Destroyer
    15355, -- Anubisath Guardian
    15461, -- Shrieker Scarab
    15462, -- Spitting Scarab
    15537, -- Anubisath Warrior
    15538 -- Anubisath Swarmguard
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 15 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    1852, -- Araj the Summoner
    16184 -- Nerubian Overseer
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 25 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    10199, -- Grizzle Snowpaw
    10432, -- Vectus
    10433, -- Marduk Blackpool
    10435, -- Magistrate Barthilas
    10436, -- Baroness Anastari
    10437, -- Nerub'enkan
    10438, -- Maleki the Pallid
    10502, -- Lady Illucia Barov
    10503, -- Jandice Barov
    10504, -- Lord Alexei Barov
    10505, -- Instructor Malicia
    10507, -- The Ravenian
    10558, -- Hearthsinger Forresten
    10738, -- High Chief Winterfall
    10809, -- Stonespine
    10901, -- Lorekeeper Polkelt
    11261, -- Doctor Theolen Krastinov <The Butcher>
    11622, -- Rattlegore
    15206, -- The Duke of Cynders <Abyssal Council>
    15207, -- The Duke of Fathoms <Abyssal Council>
    15208, -- The Duke of Shards <Abyssal Council>
    15220, -- The Duke of Zephyrs <Abyssal Council>
    15623 -- Xandivious
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, 50 AS `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    10440, -- Baron Rivendare
    10508, -- Ras Frostwhisper
    15204, -- High Marshal Whirlaxis <Abyssal High Council>
    15205, -- Baron Kazum <Abyssal High Council>
    15305 -- Lord Skwol <Abyssal High Council>
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, 5 AS `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    4624 -- Booty Bay Bruiser
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, 0 AS `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, 0 AS `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    15229, -- Vekniss Soldier
    15230, -- Vekniss Warrior
    15235, -- Vekniss Stinger
    15236, -- Vekniss Wasp
    15240, -- Vekniss Hive Crawler
    15249, -- Qiraji Lasher
    15262, -- Obsidian Eradicator
    15264, -- Anubisath Sentinel
    15277 -- Anubisath Defender
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, 150 AS `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    15340, -- Moam
    15348, -- Kurinnaxx
    15369, -- Ayamiss the Hunter
    15370 -- Buru the Gorger
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, 300 AS `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    15339 -- Ossirian the Unscarred
) UNION SELECT `creature_id`, 0 AS `Patch`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, 500 AS `RewOnKillRepValue2`, `TeamDependent` FROM `base_world`.`creature_onkill_reputation` WHERE `creature_id` IN (
    15727 -- C'Thun
);
