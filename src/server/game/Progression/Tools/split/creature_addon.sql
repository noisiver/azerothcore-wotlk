DROP TABLE IF EXISTS `progression_world`.`creature_addon`;
CREATE TABLE `progression_world`.`creature_addon` (
    `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `path_id` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `mount` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `bytes1` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `bytes2` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `emote` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `visibilityDistanceType` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
    `auras` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`guid`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`creature_addon`
SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 21 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    39715, -- Ejector Mechano-Tank
    39716, -- Scuttling Mechano-Tank
    39717 -- Shooting Mechano-Tank
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 20 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    34078, -- Lieutenant Tristia <Veteran Armor Quartermaster>
    34788, -- Gormok Zealot
    34794, -- Immuyak
    36224, -- Dark Ranger Clea
    36225, -- Dark Ranger Anya
    36273, -- Bragor Bloodfist <Kor'kron Captain>
    36669, -- Arcanist Tybalin
    36670, -- Magister Hathorel <The Sunreavers>
    37776, -- Apprentice Nelphi <Kirin Tor>
    37780, -- Dark Ranger Vorel
    37967, -- Ebon Blade Commander
    37968, -- Argent Hippogryph
    38482, -- Frost Warder
    38493, -- Argent Crusader
    40160 -- Frozo the Renowned <Frozen Orb Trader>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 19 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    34075, -- Captain Dirgehammer <Apprentice Armor Quartermaster>
    34772, -- Vasarin Redmorn <Sunreavers Quartermaster>
    35068, -- Gotura Fourwinds <The Earthen Ring>
    35093, -- Wind Rider Jahubo <Riding Trainer>
    35100, -- Hargen Bronzewing <Riding Trainer>
    35143, -- Flame Warder
    35471, -- Sorn Proudmane
    35472, -- Huntsman Yahto
    35483, -- Huntsman Hakan
    35494, -- Arcanist Miluria <Emblem of Triumph Quartermaster>
    35495, -- Magistrix Vesara <Emblem of Triumph Quartermaster>
    35499, -- Huntsman Lokni
    35501, -- Herald Beluus <Voice of the Argent Tournament>
    35573, -- Arcanist Asarina <Emblem of Triumph Quartermaster>
    35574, -- Magistrix Iruvia <Emblem of Triumph Quartermaster>
    35575, -- Champion Isimode <Triumphant Armor Vendor>
    35576, -- Champion Faesrol <Triumphant Armor Vendor>
    35577, -- Valiant Laradia <Triumphant Armor Vendor>
    35578, -- Valiant Bressia <Triumphant Armor Vendor>
    35579, -- Aspirant Forudir <Triumphant Armor Vendor>
    35580, -- Aspirant Naradiel <Triumphant Armor Vendor>
    35790, -- Usuri Brightcoin <Money Changer>
    36065, -- Fjola Lightbane
    36066, -- Eydis Darkbane
    36101, -- Priestess Alorah
    36102, -- Priest Grimmin
    36506 -- Daros Moonlance <The Highborne>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 18 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    33963, -- Magister Sarien <Emblem of Conquest Quartermaster>
    33964, -- Arcanist Firael <Emblem of Conquest Quartermaster>
    34015, -- Tempest Warder
    40607 -- Knight-Lieutenant T'Maire Sydes <Northrend Armor Quartermaster>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 17 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    28092, -- The Etymidian
    28602, -- Death's Hand Acolyte
    29141, -- Pella Brassbrush <Barber>
    29142, -- Jelinek Sharpshear <Barber>
    29288, -- Engineer Kurtis Paddock <The Assurance>
    29296, -- Justin Boehm <The Assurance>
    29297, -- Michael Corpora <The Assurance>
    29300, -- Robert Richardson <The Assurance>
    30706, -- Jo'mah <Inscription Trainer>
    30730, -- Stanly McCormick <Inscription Supplies>
    30731, -- Illianna Moonscribe <Inscription Supplies>
    31144, -- Grandmaster's Training Dummy
    31146, -- Heroic Training Dummy
    32666, -- Expert's Training Dummy
    32667, -- Master's Training Dummy
    34081 -- Captain O'Neal <Jewelcrafting Quartermaster>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 16 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    25138, -- Captain Dranarus
    25885 -- Whirligig Wafflefry <Gnomish Inventor>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 15 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    23570, -- Gizzix Grimegurgle
    23571, -- Razbo Rustgear <Weapon & Armor Merchant>
    23572, -- Drazzit Dripvalve
    23612, -- Dyslix Silvergrub <Flight Master>
    23797, -- Moxie Steelgrille
    24208, -- "Little" Logok <Innkeeper>
    24437, -- Consortium Assistant
    24833, -- Captain "Stash" Torgoley <The Lady Mehley>
    24835, -- First Mate Kowalski <The Lady Mehley>
    24836, -- Abe the Cabin Boy <The Lady Mehley>
    24837, -- Navigator Mehran <The Lady Mehley>
    24838, -- Sailor Henders <The Lady Mehley>
    24839, -- Sailor Wicks <The Lady Mehley>
    24840, -- Sailor Vines <The Lady Mehley>
    24842 -- Marine Anderson
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 14 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    16287, -- Ambassador Sunsorrow
    16840, -- Advisor Sevel
    16841, -- Watch Commander Relthorn Netherwane
    17105, -- Emissary Valustraa <Mage Trainer>
    17249, -- Landro Longshot <The Black Flame>
    19254, -- Warlord Dar'toon
    19860, -- Katrina Turner
    20406, -- Champion Cyssa Dawnrose <Paladin Trainer>
    20797, -- Deviate Coiler Hatchling
    22931, -- Gorrim <Emerald Circle Flight Master>
    22935, -- Suralais Farwind <Hippogryph Master>
    23128 -- Master Pyreanor <Paladin Trainer>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 13 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    22834, -- Clintar Dreamwalker
    22835, -- Cenarion Dreamwarden
    22837 -- Dreamwarden Lurosa
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 12 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    16288, -- Advisor Sorrelon
    17092, -- Advisor Duskingdawn
    17093, -- Magistrix Elosai
    17094, -- Nemeth Hawkeye <Farstriders>
    17095, -- Balandar Brightstar
    17097, -- Advisor Sarophas
    17098, -- Ambassador Dawnsinger
    17099, -- Mehlar Dawnblade
    17100, -- Advisor Sunsworn
    17104, -- Anchorite Delan
    17106, -- Vindicator Palanaar
    17108, -- Forsaken Raider
    17109, -- Cersei Dusksinger
    17127, -- Anchorite Avuun
    17218, -- Huraan
    17223, -- Ambassador Rualeth
    17238, -- Anchorite Truuen
    17291, -- Architect Nemos
    17303, -- Vindicator Vedaar <Hand of Argus>
    17409, -- Apprentice Boulian <Apprentice Architect>
    17412, -- Phaedra <Weapon Merchant>
    17541, -- Draenei Quartermaster
    17613, -- Archmage Alturus
    18165, -- Archmage Cedric
    18221, -- Holaaru
    18253, -- Archmage Leryda
    18255, -- Apprentice Darius
    19848, -- Harbinger Ennarth
    19909, -- Rex Pixem <Arena Battlemaster>
    21448, -- Gadgetzan Sniper
    22936, -- Auhula <Apprentice Hippogryph Master>
    23090, -- Troll Roof Stalker
    23534, -- Babagaya Shadowcleft <Warlock Trainer>
    23535, -- Matero Zeshuwal
    23536 -- Nagulon <Matero Zeshuwal's Minion>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 11 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    17069, -- Emissary Whitebeard
    17072, -- Emissary Gormok
    17081, -- Scout Bloodfist
    17082 -- Rifleman Torrig
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 10 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    10583, -- Gryfe <Flight Master>
    11036, -- Leonid Barthalomew the Revered <The Argent Dawn>
    16112, -- Korfax, Champion of the Light <Brotherhood of the Light>
    16113, -- Father Inigo Montoy <Brotherhood of the Light>
    16114, -- Scarlet Commander Marjhan <The Scarlet Crusade>
    16115, -- Commander Eligor Dawnbringer <Brotherhood of the Light>
    16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
    16131, -- Rohan the Assassin <The Scarlet Crusade>
    16132, -- Huntsman Leopold <The Scarlet Crusade>
    16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
    16134, -- Rimblat Earthshatter <The Earthen Ring>
    16135, -- Rayne <Cenarion Circle>
    16212, -- Dispatch Commander Metz <The Argent Dawn>
    16227, -- Bragok <Flight Master>
    16256, -- Jessica Chambers <Innkeeper>
    16283, -- Packmaster Stonebruiser <Brotherhood of the Light>
    16284, -- Argent Medic <The Argent Dawn>
    16376, -- Craftsman Wilhelm <Brotherhood of the Light>
    16378, -- Argent Sentry <The Argent Dawn>
    16392 -- Captain Armando Ossex
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 9 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    16012 -- Mokvar
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 8 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    11832, -- Keeper Remulos
    15443, -- Janela Stouthammer
    15444, -- Arcanist Nozzlespring
    15481, -- Spirit of Azuregos
    15498, -- Windcaller Yessendra
    15499, -- Warden Haro
    15500, -- Keyl Swiftclaw
    15540, -- Windcaller Kaldon
    15612, -- Krug Skullsplit <Orgrimmar Legion Captain>
    15613, -- Merok Longstride
    15615, -- Shadow Priestess Shai
    15678, -- Auctioneer Silva'las
    15679, -- Auctioneer Cazarez
    15693, -- Jonathan the Revelator
    16091, -- Dirk Thunderwood
    15675, -- Auctioneer Stockton
    15676, -- Auctioneer Yarly
    15677, -- Auctioneer Graves
    15681, -- Auctioneer O'reely
    15682, -- Auctioneer Cain
    15683, -- Auctioneer Naxxremis
    15684, -- Auctioneer Tricket
    15686, -- Auctioneer Rhyker
    15903, -- Sergeant Carnes
    17068, -- Chief Expeditionary Requisitioner Enkles
    17070, -- Apothecary Quinard
    17079, -- General Kirika
    17080 -- Marshal Bluewall
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 7 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    14887, -- Ysondre
    14889, -- Emeriss
    14890, -- Taerar
    15165, -- Haughty Modiste <Fashion Designer>
    15170, -- Rutgar Glyphshaper
    15171, -- Frankal Stonebridge
    15172, -- Glibb <Brann Bronzebeard's Pet Monkey>
    15174, -- Calandrath <Innkeeper>
    15175, -- Khur Hornstriker <Reagents>
    15176, -- Vargus <Blacksmith>
    15177, -- Cloud Skydancer <Hippogryph Master>
    15178, -- Runk Windtamer <Wind Rider Master>
    15179, -- Mishta <Trade Supplies>
    15180, -- Baristolth of the Shifting Sands
    15181, -- Commander Mar'alith
    15182, -- Vish Kozus <Captain of the Guard>
    15183, -- Geologist Larksbane
    15184, -- Cenarion Hold Infantry
    15188, -- Cenarion Emissary Blackhoof
    15189, -- Beetix Ficklespragg
    15190, -- Noggle Ficklespragg
    15191, -- Windcaller Proudhorn
    15270, -- Huum Wildmane
    15282, -- Aurel Goldleaf
    15306, -- Bor Wildmane
    15350, -- Horde Warbringer
    15419, -- Kania <Enchanting Supplies>
    15614, -- J.D. Shadesong
    15722, -- Squire Leoren Mal'derath <Stable Master>
    16543 -- Garon Hutchins
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 6 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    14875, -- Molthor <Hand of Rastakhan>
    14876, -- Zandalar Headshrinker
    14902, -- Jin'rokh the Breaker
    14903, -- Al'tabim the All-Seeing
    14904, -- Maywiki of Zuldazar
    14905, -- Falthir the Sightless
    14910, -- Exzhal <Servitor of Rastakhan>
    14911, -- Zandalar Enforcer
    14921, -- Rin'wosho the Trader <Zandalar Supplies & Repair>
    15070, -- Vinchaxa <Servitor of Zanza>
    15076, -- Zandalarian Emissary
    19855, -- Sir Maximus Adams <Arathi Basin Battlemaster>
    19905 -- The Black Bride <Arathi Basin Battlemaster>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 5 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    10378, -- Omusa Thunderhorn <Wind Rider Master>
    19906, -- Usha Eyegouge <Alterac Valley Battlemaster>
    19907, -- Grumbol Grimhammer <Alterac Valley Battlemaster>
    19908, -- Su'ura Swiftarrow <Warsong Gulch Battlemaster>
    19910 -- Gargok <Warsong Gulch Battlemaster>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 4 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    2941, -- Lanie Reed <Gryphon Master>
    3305, -- Grisha <Wind Rider Master>
    4314, -- Gorkas <Wind Rider Master>
    13217, -- Thanthaldis Snowgleam <Stormpike Supply Officer>
    13219, -- Jekyll Flandring <Frostwolf Supply Officer>
    13776, -- Corporal Teeka Bloodsnarl
    13777, -- Sergeant Durgen Stormpike
    13816, -- Prospector Stonehewer
    13817, -- Voggah Deathgrip
    13840, -- Warmaster Laggrond
    13841, -- Lieutenant Haggerdin
    13842, -- Frostwolf Ambassador Rokhstrom
    14624, -- Master Smith Burninate <The Thorium Brotherhood>
    14625, -- Overseer Oilfist <The Thorium Brotherhood>
    14626, -- Taskmaster Scrange <The Thorium Brotherhood>
    14627, -- Hansel Heavyhands <The Thorium Brotherhood>
    14628, -- Evonice Sootsmoker <The Thorium Brotherhood>
    14634, -- Lookout Captain Lolo Longstriker <The Thorium Brotherhood>
    14637, -- Zorbin Fandazzle
    14730, -- Revantusk Watcher
    14731, -- Lard <Innkeeper>
    14736, -- Primal Torntusk
    14737, -- Smith Slagtree <Blacksmithing Supplies>
    14738, -- Otho Moji'ko <Cooking Supplies>
    14739, -- Mystic Yayo'jin <Reagents>
    14740, -- Katoom the Angler <Fishing Trainer & Supplies>
    14741, -- Huntsman Markhor <Stable Master>
    14743, -- Jhordy Lapforge <Engineer>
    17598 -- Renn'az <Ammunition Vendor>
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 3 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    1756, -- Stormwind Royal Guard
    3083, -- Honor Guard
    12780, -- Sergeant Major Skyshadow
    12786, -- Guard Quine
    12787, -- Guard Hammon
    14304 -- Kor'kron Elite
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 2 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    6109, -- Azuregos
    14284, -- Stormpike Battleguard
    14285, -- Frostwolf Battleguard
    14373, -- Sage Korolusk
    14387 -- Lothos Riftwaker
) UNION SELECT ca.`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, 1 AS `MinPatch`, 21 AS `MaxPatch` FROM `base_world`.`creature_addon` ca LEFT OUTER JOIN `base_world`.`creature` c ON c.`guid` = ca.`guid` WHERE c.`id1` IN (
    12239, -- Spirit of Gelk <The Second Kahn>
    13697 -- Cavindra
);

INSERT INTO `progression_world`.`creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`, `MinPatch`, `MaxPatch`) VALUES
-- Lord Kazzak
(5200000, 5200000, 0, 0, 1, 0, 0, NULL, 2, 11),
-- Argent Guard <The Argent Dawn>
(5300000, 0, 0, 0, 1, 0, 0, NULL, 0, 9),
(5300001, 0, 0, 0, 1, 0, 0, NULL, 0, 9),
(5300002, 5300002, 0, 0, 1, 0, 0, NULL, 0, 9),
(5300003, 0, 0, 0, 1, 0, 0, NULL, 0, 9);
