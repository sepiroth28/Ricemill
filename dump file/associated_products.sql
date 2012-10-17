DROP TABLE IF EXISTS `ricemill`.`associated_products`;
CREATE TABLE  `ricemill`.`associated_products` (
  `raw_product_id` int(10) unsigned NOT NULL,
  `output_product_id` int(10) unsigned NOT NULL,
  KEY `FK_associated_products_1` (`raw_product_id`),
  KEY `FK_associated_products_2` (`output_product_id`),
  CONSTRAINT `FK_associated_products_1` FOREIGN KEY (`raw_product_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_associated_products_2` FOREIGN KEY (`output_product_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;