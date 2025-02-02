DROP TABLE IF EXISTS `progression_world`.`areatrigger`;
CREATE TABLE `progression_world`.`areatrigger` (
    `entry` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `map` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `x` FLOAT NOT NULL DEFAULT '0',
    `y` FLOAT NOT NULL DEFAULT '0',
    `z` FLOAT NOT NULL DEFAULT '0',
    `radius` FLOAT NOT NULL DEFAULT '0' COMMENT 'Seems to be a box of size yards with center at x,y,z',
    `length` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `width` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `height` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `orientation` FLOAT NOT NULL DEFAULT '0' COMMENT 'Most commonly used when size is 0, but not always',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`entry`, `MinPatch`, `MaxPatch`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;

INSERT INTO `progression_world`.`areatrigger` (`entry`, `map`, `x`, `y`, `z`, `radius`, `length`, `width`, `height`, `orientation`, `MinPatch`, `MaxPatch`) VALUES
(4055, 0, 3132.72, -3731.23, 138.882, 5, 0, 0, 0, 0, 10, 16);
