DROP TABLE IF EXISTS `ricemill`.`manufacturers`;
CREATE TABLE  `ricemill`.`manufacturers` (
  `manufacturers_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(45) DEFAULT NULL,
  `manufacturers_add` varchar(45) DEFAULT NULL,
  `manufacturers_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;