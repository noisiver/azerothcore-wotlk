DROP TABLE IF EXISTS `progression_world`.`pool_gameobject`;
CREATE TABLE `progression_world`.`pool_gameobject` (
    `guid` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `pool_entry` INT(10) UNSIGNED NOT NULL DEFAULT '0',
    `chance` FLOAT NOT NULL DEFAULT '0',
    `description` VARCHAR(255) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `MinPatch` INT UNSIGNED NOT NULL DEFAULT '0',
    `MaxPatch` INT UNSIGNED NOT NULL DEFAULT '21',
    PRIMARY KEY (`guid`, `MinPatch`, `MaxPatch`) USING BTREE,
    INDEX `idx_guid` (`guid`) USING BTREE,
    CONSTRAINT `pool_gameobject_chk_1` CHECK ((`chance` >= 0))
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
