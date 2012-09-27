DROP TABLE IF EXISTS `ricemill`.`stockin_provider`;
CREATE TABLE  `ricemill`.`stockin_provider` (
  `stockin_id` int(10) unsigned NOT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  KEY `FK_stockin_provider_1` (`stockin_id`),
  KEY `FK_stockin_provider_2` (`provider_id`),
  CONSTRAINT `FK_stockin_provider_1` FOREIGN KEY (`stockin_id`) REFERENCES `stock_in` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_stockin_provider_2` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;