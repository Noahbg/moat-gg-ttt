CREATE TABLE IF NOT EXISTS `moat_inv_items_talents` (
	`weaponid` int(10) unsigned NOT NULL,
	`talentid` smallint(5) unsigned NOT NULL,
	`required` smallint(5) unsigned DEFAULT NULL,
	`modification` tinyint(3) unsigned NOT NULL,
	`value` float NOT NULL,
	`updatedat` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	KEY `weaponid` (`weaponid`),
	CONSTRAINT `fk_moat_inv_items_talents_moat_inv_items` FOREIGN KEY (`weaponid`) REFERENCES `moat_inv_items` (`id`) ON DELETE CASCADE
);