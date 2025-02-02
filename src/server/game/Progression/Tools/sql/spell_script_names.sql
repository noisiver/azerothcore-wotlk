DROP TABLE IF EXISTS `progression_world`.`spell_script_names`;
CREATE TABLE `progression_world`.`spell_script_names` (
	`spell_id` INT(10) NOT NULL,
	`ScriptName` CHAR(64) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	UNIQUE INDEX `spell_id` (`spell_id`, `ScriptName`) USING BTREE
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB;

INSERT INTO `progression_world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES
(21056, 'spell_mark_of_kazzak'),
(29201, 'spell_corrupted_mind');
