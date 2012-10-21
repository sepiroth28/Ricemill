-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.59-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ricemill
--

CREATE DATABASE IF NOT EXISTS ricemill;
USE ricemill;

--
-- Definition of table `activepartida`
--

DROP TABLE IF EXISTS `activepartida`;
CREATE TABLE `activepartida` (
  `partida_id` int(10) unsigned NOT NULL,
  `active` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activepartida`
--

/*!40000 ALTER TABLE `activepartida` DISABLE KEYS */;
/*!40000 ALTER TABLE `activepartida` ENABLE KEYS */;


--
-- Definition of table `associated_products`
--

DROP TABLE IF EXISTS `associated_products`;
CREATE TABLE `associated_products` (
  `raw_product_id` int(10) unsigned NOT NULL,
  `output_product_id` int(10) unsigned NOT NULL,
  KEY `FK_associated_products_1` (`raw_product_id`),
  KEY `FK_associated_products_2` (`output_product_id`),
  CONSTRAINT `FK_associated_products_1` FOREIGN KEY (`raw_product_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_associated_products_2` FOREIGN KEY (`output_product_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `associated_products`
--

/*!40000 ALTER TABLE `associated_products` DISABLE KEYS */;
INSERT INTO `associated_products` (`raw_product_id`,`output_product_id`) VALUES 
 (3,1),
 (3,2),
 (9,4),
 (9,5),
 (9,6),
 (9,7),
 (9,8);
/*!40000 ALTER TABLE `associated_products` ENABLE KEYS */;


--
-- Definition of table `core_resource`
--

DROP TABLE IF EXISTS `core_resource`;
CREATE TABLE `core_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(45) DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_resource`
--

/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_resource` ENABLE KEYS */;


--
-- Definition of table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_created` varchar(30) DEFAULT NULL,
  `no_of_kg` double NOT NULL,
  `rate_per_kg` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` (`id`,`description`,`amount`,`date_created`,`no_of_kg`,`rate_per_kg`) VALUES 
 (1,'Milling Charge',900,'2012-10-20',750,1.2),
 (2,'Trucking Charge',1500,'2012-10-20',750,2),
 (3,'Milling Charge',780,'2012-10-20',650,1.2);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;


--
-- Definition of table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` double(10,2) DEFAULT NULL,
  `unit_of_measure` varchar(45) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`,`item_code`,`description`,`unit_price`,`unit_of_measure`,`status`,`type`) VALUES 
 (1,'Rice','Rice Product ',1600.00,'Sack','Active','output'),
 (2,'Tiki-tiki','Tiki-tiki',700.00,'Sack','Active','output'),
 (3,'Humay pasi','Humay pasi',20.50,'kg','Active','raw'),
 (4,'Tahop','Tahop Mais',500.00,'Sack','Active','output'),
 (5,'Tik2x','Tik2x Mais',500.00,'Sack','Active','output'),
 (6,'binlod #11','binlod #11 Mais',1000.00,'Sack','Active','output'),
 (7,'binlod #12','binlod #12 Mais',1000.00,'Sack','Active','output'),
 (8,'binlod #14','binlod #14 Mais',1000.00,'Sack','Active','output'),
 (9,'Mais','Mais',17.00,'Kg','Active','raw');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


--
-- Definition of table `kilos_per_sack`
--

DROP TABLE IF EXISTS `kilos_per_sack`;
CREATE TABLE `kilos_per_sack` (
  `item_id` int(10) unsigned NOT NULL,
  `kilos_per_sack` double NOT NULL,
  KEY `FK_kilos_per_sack_1` (`item_id`),
  CONSTRAINT `FK_kilos_per_sack_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kilos_per_sack`
--

/*!40000 ALTER TABLE `kilos_per_sack` DISABLE KEYS */;
INSERT INTO `kilos_per_sack` (`item_id`,`kilos_per_sack`) VALUES 
 (1,49),
 (2,50),
 (4,50),
 (5,50),
 (6,50),
 (7,50),
 (8,50);
/*!40000 ALTER TABLE `kilos_per_sack` ENABLE KEYS */;


--
-- Definition of table `partida`
--

DROP TABLE IF EXISTS `partida`;
CREATE TABLE `partida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `stockout_status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida`
--

/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` (`id`,`name`,`status`,`created_at`,`created_by`,`stockout_status`) VALUES 
 (1,'Erning ','1','2012-10-20','admin ',1),
 (2,'YY Mais ','1','2012-10-20','admin ',0),
 (3,'Nutrimart-Tagb ','1','2012-10-20','dev',1);
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;


--
-- Definition of table `partida_expenses`
--

DROP TABLE IF EXISTS `partida_expenses`;
CREATE TABLE `partida_expenses` (
  `expenses_id` int(10) unsigned DEFAULT NULL,
  `partida_id` int(10) unsigned DEFAULT NULL,
  KEY `FK_partida_expenses_1` (`partida_id`),
  KEY `FK_partida_expenses_2` (`expenses_id`),
  CONSTRAINT `FK_partida_expenses_1` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_partida_expenses_2` FOREIGN KEY (`expenses_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida_expenses`
--

/*!40000 ALTER TABLE `partida_expenses` DISABLE KEYS */;
INSERT INTO `partida_expenses` (`expenses_id`,`partida_id`) VALUES 
 (1,1),
 (2,1),
 (3,2);
/*!40000 ALTER TABLE `partida_expenses` ENABLE KEYS */;


--
-- Definition of table `partida_raw_item`
--

DROP TABLE IF EXISTS `partida_raw_item`;
CREATE TABLE `partida_raw_item` (
  `partida_id` int(10) unsigned NOT NULL,
  `raw_item_id` int(10) unsigned NOT NULL,
  KEY `FK_partida_raw_item_1` (`partida_id`),
  KEY `FK_partida_raw_item_2` (`raw_item_id`),
  CONSTRAINT `FK_partida_raw_item_1` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_partida_raw_item_2` FOREIGN KEY (`raw_item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida_raw_item`
--

/*!40000 ALTER TABLE `partida_raw_item` DISABLE KEYS */;
INSERT INTO `partida_raw_item` (`partida_id`,`raw_item_id`) VALUES 
 (1,3),
 (2,9);
/*!40000 ALTER TABLE `partida_raw_item` ENABLE KEYS */;


--
-- Definition of table `partida_stockin`
--

DROP TABLE IF EXISTS `partida_stockin`;
CREATE TABLE `partida_stockin` (
  `partida_id` int(10) unsigned DEFAULT NULL,
  `stockin_id` int(10) unsigned DEFAULT NULL,
  KEY `FK_partida_stockin_2` (`stockin_id`),
  KEY `FK_partida_stockin_1` (`partida_id`),
  CONSTRAINT `FK_partida_stockin_1` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_partida_stockin_2` FOREIGN KEY (`stockin_id`) REFERENCES `stock_in` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida_stockin`
--

/*!40000 ALTER TABLE `partida_stockin` DISABLE KEYS */;
INSERT INTO `partida_stockin` (`partida_id`,`stockin_id`) VALUES 
 (1,1),
 (1,2),
 (2,3),
 (2,4);
/*!40000 ALTER TABLE `partida_stockin` ENABLE KEYS */;


--
-- Definition of table `partida_stockout`
--

DROP TABLE IF EXISTS `partida_stockout`;
CREATE TABLE `partida_stockout` (
  `partida_id` int(10) unsigned DEFAULT NULL,
  `stockout_id` int(10) unsigned DEFAULT NULL,
  KEY `FK_partida_stokout_1` (`partida_id`),
  KEY `FK_partida_stokout_2` (`stockout_id`),
  CONSTRAINT `FK_partida_stokout_1` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_partida_stokout_2` FOREIGN KEY (`stockout_id`) REFERENCES `stock_out` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida_stockout`
--

/*!40000 ALTER TABLE `partida_stockout` DISABLE KEYS */;
INSERT INTO `partida_stockout` (`partida_id`,`stockout_id`) VALUES 
 (1,1),
 (1,2),
 (1,3),
 (2,4),
 (2,5),
 (2,6),
 (2,7),
 (2,9),
 (1,10),
 (1,11);
/*!40000 ALTER TABLE `partida_stockout` ENABLE KEYS */;


--
-- Definition of table `previleges`
--

DROP TABLE IF EXISTS `previleges`;
CREATE TABLE `previleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `previleges` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `previleges`
--

/*!40000 ALTER TABLE `previleges` DISABLE KEYS */;
INSERT INTO `previleges` (`id`,`previleges`) VALUES 
 (1,'can_create_partida'),
 (2,'can_stockin'),
 (3,'can_stockout'),
 (4,'can_close_partida'),
 (5,'can_close_partida_stockout'),
 (6,'can_edit_delete_partida_prod'),
 (7,'can_open_close_partida'),
 (8,'can_evaluate_partida');
/*!40000 ALTER TABLE `previleges` ENABLE KEYS */;


--
-- Definition of table `provider`
--

DROP TABLE IF EXISTS `provider`;
CREATE TABLE `provider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` (`id`,`name`,`address`) VALUES 
 (2,'Ester','Calape'),
 (3,'Flor','Bacong Tubigon'),
 (5,'Baloy','Calape'),
 (6,'Minga Uy','Cahayag,Tubigon,Bohol'),
 (7,'Erning Palma','Alegria,Carmen,Bohol'),
 (8,'Nutrimart-Ubay','Poblacion,Ubay,Bohol'),
 (9,'Nutrimart-Carmen','Poblacion,Carmen,Bohol'),
 (10,'Bebie Tutor','Lungsod daan,Candijay,Bohol'),
 (11,'Nutrimart-Tagb.','CPG North Ave.Tagb. City'),
 (12,'YY','Pinalit sa tindahan');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;


--
-- Definition of table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
CREATE TABLE `stock_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty_in` double(10,2) DEFAULT NULL,
  `num_of_sack` double DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `total_amount` double(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_in` datetime DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id`,`item_id`,`qty_in`,`num_of_sack`,`price`,`total_amount`,`description`,`date_in`,`received_by`) VALUES 
 (1,3,500.00,10,20.00,10000.00,'Humay Puti','2012-10-20 00:00:00','admin'),
 (2,3,250.00,5,20.50,5125.00,'Humay Puti','2012-10-20 00:00:00','admin'),
 (3,9,500.00,10,17.00,8500.00,'Mais puti','2012-10-20 00:00:00','admin'),
 (4,9,150.00,3,17.00,2550.00,'Mais puti','2012-10-20 00:00:00','admin');
/*!40000 ALTER TABLE `stock_in` ENABLE KEYS */;


--
-- Definition of table `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
CREATE TABLE `stock_out` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty_out` double(10,2) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `total_amount` double(10,2) DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `out_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`id`,`item_id`,`qty_out`,`price`,`total_amount`,`date_out`,`out_by`) VALUES 
 (1,1,5.00,1600.00,8000.00,'2012-10-20','admin '),
 (2,1,3.00,1600.00,4800.00,'2012-10-20','admin '),
 (3,2,3.00,700.00,2100.00,'2012-10-20','admin '),
 (4,6,2.00,1000.00,2000.00,'2012-10-20','admin '),
 (5,4,1.00,500.00,500.00,'2012-10-20','admin '),
 (6,5,0.50,500.00,250.00,'2012-10-20','admin '),
 (7,7,1.00,1000.00,1000.00,'2012-10-20','admin '),
 (9,8,1.00,1000.00,1000.00,'2012-10-20','admin '),
 (10,1,1.00,1600.00,1600.00,'2012-10-21','admin '),
 (11,2,2.00,700.00,1400.00,'2012-10-21','admin ');
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;


--
-- Definition of table `stockin_provider`
--

DROP TABLE IF EXISTS `stockin_provider`;
CREATE TABLE `stockin_provider` (
  `stockin_id` int(10) unsigned NOT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  KEY `FK_stockin_provider_1` (`stockin_id`),
  KEY `FK_stockin_provider_2` (`provider_id`),
  CONSTRAINT `FK_stockin_provider_1` FOREIGN KEY (`stockin_id`) REFERENCES `stock_in` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_stockin_provider_2` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockin_provider`
--

/*!40000 ALTER TABLE `stockin_provider` DISABLE KEYS */;
INSERT INTO `stockin_provider` (`stockin_id`,`provider_id`) VALUES 
 (1,7),
 (2,5),
 (3,12),
 (4,11);
/*!40000 ALTER TABLE `stockin_provider` ENABLE KEYS */;


--
-- Definition of table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_account`
--

/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` (`username`,`password`,`user_type`) VALUES 
 ('a ','80c9ef0fb86369cd25f90af27ef53a9e','user '),
 ('admin ','21232f297a57a5a743894a0e4a801fc3','Admin'),
 ('b ','1692fcfff3e01e7ba8cffc2baadef5f5','user '),
 ('c ','94f3b3a16d8ce064c808b16bee5003c5','user '),
 ('dev','0cc175b9c0f1b6a831c399e269772661','user');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;


--
-- Definition of table `user_previleges`
--

DROP TABLE IF EXISTS `user_previleges`;
CREATE TABLE `user_previleges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `previleges` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_previleges_1` (`username`),
  KEY `FK_user_previleges_2` (`previleges`),
  CONSTRAINT `FK_user_previleges_2` FOREIGN KEY (`previleges`) REFERENCES `previleges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_previleges_1` FOREIGN KEY (`username`) REFERENCES `user_account` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_previleges`
--

/*!40000 ALTER TABLE `user_previleges` DISABLE KEYS */;
INSERT INTO `user_previleges` (`id`,`username`,`previleges`,`status`) VALUES 
 (1,'admin',1,'1'),
 (2,'admin',2,'1'),
 (3,'admin',3,'1'),
 (4,'admin',4,'1'),
 (5,'admin',5,'1'),
 (6,'admin',6,'1'),
 (7,'dev',1,'1'),
 (8,'dev',2,'1'),
 (9,'dev',3,'1'),
 (10,'dev',4,'1'),
 (11,'dev',5,'1'),
 (12,'dev',6,'1'),
 (13,'dev',7,'0'),
 (14,'dev',8,'0'),
 (15,'admin',7,'1'),
 (16,'admin',8,'1'),
 (17,'a',1,'1'),
 (18,'a',2,'1'),
 (19,'a',3,'1'),
 (20,'a',4,'0'),
 (21,'a',5,'0'),
 (22,'a',6,'0'),
 (23,'a',7,'0'),
 (24,'a',8,'0'),
 (25,'b',1,'1'),
 (26,'b',2,'1'),
 (27,'b',3,'1'),
 (28,'b',4,'1'),
 (29,'b',5,'1'),
 (30,'b',6,'1'),
 (31,'b',7,'1'),
 (32,'b',8,'1'),
 (33,'c',1,'1'),
 (34,'c',2,'1'),
 (35,'c',3,'1'),
 (36,'c',4,'1'),
 (37,'c',5,'1'),
 (38,'c',6,'1'),
 (39,'c',7,'1'),
 (40,'c',8,'1');
/*!40000 ALTER TABLE `user_previleges` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
