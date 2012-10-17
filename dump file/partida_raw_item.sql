DROP TABLE IF EXISTS `ricemill`.`partida_raw_item`;
CREATE TABLE  `ricemill`.`partida_raw_item` (
  `partida_id` int(10) unsigned NOT NULL,
  `raw_item_id` int(10) unsigned NOT NULL,
  KEY `FK_partida_raw_item_1` (`partida_id`),
  KEY `FK_partida_raw_item_2` (`raw_item_id`),
  CONSTRAINT `FK_partida_raw_item_1` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_partida_raw_item_2` FOREIGN KEY (`raw_item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;