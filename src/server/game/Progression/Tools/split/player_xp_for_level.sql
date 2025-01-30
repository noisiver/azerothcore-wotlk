DROP TABLE IF EXISTS `progression_world`.`player_xp_for_level`;
CREATE TABLE `progression_world`.`player_xp_for_level` (
    `Level` TINYINT(3) UNSIGNED NOT NULL,
    `Patch` INT UNSIGNED NOT NULL DEFAULT '0',
    `Experience` INT(10) UNSIGNED NOT NULL,
    PRIMARY KEY (`Level`, `Patch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`player_xp_for_level`
SELECT `Level`, 0 AS `Patch`, 8800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=11
UNION SELECT `Level`, 0 AS `Patch`, 10100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=12
UNION SELECT `Level`, 0 AS `Patch`, 11400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=13
UNION SELECT `Level`, 0 AS `Patch`, 12900 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=14
UNION SELECT `Level`, 0 AS `Patch`, 14400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=15
UNION SELECT `Level`, 0 AS `Patch`, 16000 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=16
UNION SELECT `Level`, 0 AS `Patch`, 17700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=17
UNION SELECT `Level`, 0 AS `Patch`, 19400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=18
UNION SELECT `Level`, 0 AS `Patch`, 21300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=19
UNION SELECT `Level`, 0 AS `Patch`, 23200 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=20
UNION SELECT `Level`, 0 AS `Patch`, 25200 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=21
UNION SELECT `Level`, 0 AS `Patch`, 27300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=22
UNION SELECT `Level`, 0 AS `Patch`, 29400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=23
UNION SELECT `Level`, 0 AS `Patch`, 31700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=24
UNION SELECT `Level`, 0 AS `Patch`, 34000 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=25
UNION SELECT `Level`, 0 AS `Patch`, 36400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=26
UNION SELECT `Level`, 0 AS `Patch`, 38900 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=27
UNION SELECT `Level`, 0 AS `Patch`, 41400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=28
UNION SELECT `Level`, 0 AS `Patch`, 44300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=29
UNION SELECT `Level`, 0 AS `Patch`, 47400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=30
UNION SELECT `Level`, 0 AS `Patch`, 50800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=31
UNION SELECT `Level`, 0 AS `Patch`, 54500 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=32
UNION SELECT `Level`, 0 AS `Patch`, 58600 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=33
UNION SELECT `Level`, 0 AS `Patch`, 62800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=34
UNION SELECT `Level`, 0 AS `Patch`, 67100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=35
UNION SELECT `Level`, 0 AS `Patch`, 71600 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=36
UNION SELECT `Level`, 0 AS `Patch`, 76100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=37
UNION SELECT `Level`, 0 AS `Patch`, 80800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=38
UNION SELECT `Level`, 0 AS `Patch`, 85700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=39
UNION SELECT `Level`, 0 AS `Patch`, 90700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=40
UNION SELECT `Level`, 0 AS `Patch`, 95800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=41
UNION SELECT `Level`, 0 AS `Patch`, 101000 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=42
UNION SELECT `Level`, 0 AS `Patch`, 106300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=43
UNION SELECT `Level`, 0 AS `Patch`, 111800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=44
UNION SELECT `Level`, 0 AS `Patch`, 117500 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=45
UNION SELECT `Level`, 0 AS `Patch`, 123200 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=46
UNION SELECT `Level`, 0 AS `Patch`, 129100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=47
UNION SELECT `Level`, 0 AS `Patch`, 135100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=48
UNION SELECT `Level`, 0 AS `Patch`, 141200 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=49
UNION SELECT `Level`, 0 AS `Patch`, 147500 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=50
UNION SELECT `Level`, 0 AS `Patch`, 153900 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=51
UNION SELECT `Level`, 0 AS `Patch`, 160400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=52
UNION SELECT `Level`, 0 AS `Patch`, 167100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=53
UNION SELECT `Level`, 0 AS `Patch`, 173900 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=54
UNION SELECT `Level`, 0 AS `Patch`, 180800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=55
UNION SELECT `Level`, 0 AS `Patch`, 187900 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=56
UNION SELECT `Level`, 0 AS `Patch`, 195000 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=57
UNION SELECT `Level`, 0 AS `Patch`, 202300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=58
UNION SELECT `Level`, 0 AS `Patch`, 209800 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=59
UNION SELECT `Level`, 0 AS `Patch`, 494000 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=60
UNION SELECT `Level`, 0 AS `Patch`, 574700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=61
UNION SELECT `Level`, 0 AS `Patch`, 614400 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=62
UNION SELECT `Level`, 0 AS `Patch`, 650300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=63
UNION SELECT `Level`, 0 AS `Patch`, 682300 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=64
UNION SELECT `Level`, 0 AS `Patch`, 710200 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=65
UNION SELECT `Level`, 0 AS `Patch`, 734100 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=66
UNION SELECT `Level`, 0 AS `Patch`, 753700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=67
UNION SELECT `Level`, 0 AS `Patch`, 768900 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=68
UNION SELECT `Level`, 0 AS `Patch`, 779700 AS `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level`=69
UNION SELECT `Level`, 15 AS `Patch`, `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level` BETWEEN 11 AND 59
UNION SELECT `Level`, 17 AS `Patch`, `Experience` FROM `base_world`.`player_xp_for_level` WHERE `Level` BETWEEN 60 AND 69;
