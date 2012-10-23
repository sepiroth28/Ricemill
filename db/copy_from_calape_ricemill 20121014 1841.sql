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
INSERT INTO `activepartida` (`partida_id`,`active`) VALUES 
 (1,1),
 (2,1),
 (3,1),
 (4,0),
 (5,0),
 (6,1),
 (7,1),
 (8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` (`id`,`description`,`amount`,`date_created`,`no_of_kg`,`rate_per_kg`) VALUES 
 (1,'Milling Charge',11106,'2012-10-19',9255,1.2);
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
 (1,'rice','rice',1600.00,'sack','Active','output'),
 (2,'Tiki-tiki','Tiki-tiki',500.00,'sack','Active','output'),
 (3,' Humay Pasi','Humay Pasi ',20.00,' kg','Active','raw'),
 (4,'Tahop','tahop mais ',350.00,' sack','Active','output'),
 (5,'Tik2x','tik2x mais',500.00,' sack','Active','output'),
 (6,'binlod #11','binlod # 11',1000.00,' sack','Active','output'),
 (7,'binlod #12','binlod # 12',1000.00,' sack','Active','output'),
 (8,'binlod #14','binlod # 14',1000.00,' sack','Active','output'),
 (9,' Mais','mais ',15.00,' kg','Active','raw');
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
 (6,49),
 (7,49),
 (8,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida`
--

/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` (`id`,`name`,`status`,`created_at`,`created_by`,`stockout_status`) VALUES 
 (1,'Minga Uy ','0','2012-10-03','ares',1),
 (2,'Nutrimart-Tagb. ','1','2012-10-03','ares',1),
 (3,'partida Erning ','1','2012-10-11','soreme',1),
 (6,'NUTRIMART- UBAY ','1','2012-10-16','soreme',1),
 (7,'Nutrimart Ubay ','1','2012-10-17','soreme',1),
 (9,'Nutrimart-UBAY- mais ','1','2012-10-20','soreme',1);
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
 (1,1);
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
 (2,3),
 (3,3),
 (6,3),
 (7,3),
 (9,9);
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
 (1,3),
 (1,4),
 (1,5),
 (1,6),
 (1,7),
 (1,8),
 (1,9),
 (1,10),
 (1,11),
 (1,12),
 (1,13),
 (1,14),
 (1,15),
 (1,16),
 (2,17),
 (3,18),
 (3,21),
 (2,22),
 (2,24),
 (2,25),
 (2,26),
 (2,27),
 (2,28),
 (2,29),
 (2,30),
 (2,31),
 (2,32),
 (2,33),
 (2,34),
 (3,35),
 (3,36),
 (3,37),
 (3,38),
 (3,39),
 (3,40),
 (3,41),
 (3,43),
 (3,44),
 (3,45),
 (2,46),
 (3,47),
 (3,48),
 (3,50),
 (6,51),
 (6,52),
 (6,53),
 (6,54),
 (6,55),
 (6,56),
 (6,57),
 (6,58),
 (6,59),
 (6,60),
 (6,61),
 (6,62),
 (6,63),
 (7,64),
 (6,65),
 (7,66),
 (7,67),
 (7,68),
 (7,69),
 (6,70),
 (9,71),
 (9,72),
 (9,73),
 (9,74),
 (9,75),
 (9,76),
 (9,77),
 (9,78),
 (9,79),
 (9,80),
 (9,81);
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
 (1,4),
 (1,5),
 (1,6),
 (1,7),
 (1,8),
 (1,9),
 (2,10),
 (2,11),
 (2,12),
 (2,13),
 (3,14),
 (3,15),
 (3,16),
 (3,17),
 (3,18),
 (3,20),
 (2,23),
 (2,24),
 (6,25),
 (6,26),
 (6,27),
 (3,28),
 (2,29),
 (7,32),
 (7,33),
 (6,34),
 (9,35),
 (6,36),
 (7,37);
/*!40000 ALTER TABLE `partida_stockout` ENABLE KEYS */;


--
-- Definition of table `previleges`
--

DROP TABLE IF EXISTS `previleges`;
CREATE TABLE `previleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `previleges` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

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
 (8,'can_evaluate_partida'),
 (9,'can_manage_user_account');
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id`,`item_id`,`qty_in`,`num_of_sack`,`price`,`total_amount`,`description`,`date_in`,`received_by`) VALUES 
 (1,3,492.00,14,20.50,10086.00,'humay puti','2012-10-03 00:00:00','admin'),
 (2,3,109.00,3,20.00,2180.00,'humay puti','2012-10-03 00:00:00','admin'),
 (3,3,33.00,1,20.00,660.00,'humay puti','2012-09-21 00:00:00','admin'),
 (4,3,1394.00,34,20.00,27880.00,'humay puti','2012-09-21 00:00:00','admin'),
 (5,3,109.00,2,20.50,2234.50,'humay puti','2012-09-22 00:00:00','admin'),
 (6,3,225.00,5,20.00,4500.00,'humay puti','2012-09-24 00:00:00','admin'),
 (7,3,83.00,2,20.00,1660.00,'humay puti','2012-09-24 00:00:00','admin'),
 (8,3,242.00,7,20.00,4840.00,'humay puti','2012-09-24 00:00:00','admin'),
 (9,3,616.00,13,20.00,12320.00,'humay puti','2012-09-29 00:00:00','admin'),
 (10,3,2855.00,66,19.00,54245.00,'humay puti','2012-09-29 00:00:00','admin'),
 (11,3,1064.00,24,20.00,21280.00,'humay puti','2012-10-02 00:00:00','admin'),
 (12,3,116.00,3,19.00,2204.00,'humay puti','2012-10-02 00:00:00','admin'),
 (13,3,550.00,9,20.00,11000.00,'humay puti','2012-09-26 00:00:00','admin'),
 (14,3,721.00,19,20.00,14420.00,'humay puti','2012-09-26 00:00:00','admin'),
 (15,3,165.00,5,19.00,3135.00,'humay puti','2012-09-28 00:00:00','admin'),
 (16,3,481.00,13,18.50,8898.50,'humay puti','2012-09-30 00:00:00','admin'),
 (17,3,59.00,1,18.50,1091.50,'humay puti','2012-10-02 00:00:00','admin'),
 (18,3,197.00,5,21.00,4137.00,'humay puwa','2012-09-21 00:00:00','admin'),
 (19,3,89.00,2,21.00,1869.00,'Humay puwa','2012-10-11 00:00:00','admin'),
 (20,3,197.00,5,21.00,4137.00,'Humay puwa','2012-10-11 00:00:00','admin'),
 (21,3,89.00,2,21.00,1869.00,'Humay Pula','2012-10-16 00:00:00','admin'),
 (22,3,2186.00,56,19.50,42627.00,'humay puti','2012-10-16 00:00:00','admin'),
 (24,3,45.00,1,18.50,832.50,'humay puti','2012-10-16 00:00:00','admin'),
 (25,3,48.00,1,18.50,888.00,'humay puti','2012-10-16 00:00:00','admin'),
 (26,3,186.00,4,19.00,3534.00,'humay puti','2012-10-16 00:00:00','admin'),
 (27,3,105.50,3,19.00,2004.50,'humay puti','2012-10-16 00:00:00','admin'),
 (28,3,272.50,8,20.50,5586.25,'humay puti','2012-10-16 00:00:00','admin'),
 (29,3,29.00,1,18.00,522.00,'humay puti','2012-10-16 00:00:00','admin'),
 (30,3,302.50,6,18.00,5445.00,'humay puti','2012-10-16 00:00:00','admin'),
 (31,3,2406.50,61,18.50,44520.25,'humay puti','2012-10-16 00:00:00','admin'),
 (32,3,532.00,11,18.00,9576.00,'humay puti','2012-10-16 00:00:00','admin'),
 (33,3,1675.00,38,19.00,31825.00,'humay puti','2012-10-16 00:00:00','admin'),
 (34,3,827.00,22,20.00,16540.00,'humay puti','2012-10-16 00:00:00','admin'),
 (35,3,114.00,3,21.00,2394.00,'humay pula','2012-10-16 00:00:00','admin'),
 (36,3,101.00,2,21.00,2121.00,'humay pula','2012-10-16 00:00:00','admin'),
 (37,3,246.00,6,21.00,5166.00,'humay pula','2012-10-16 00:00:00','admin'),
 (38,3,86.00,2,21.00,1806.00,'','2012-10-16 00:00:00','admin'),
 (39,3,126.00,3,20.00,2520.00,'humay pula','2012-10-16 00:00:00','admin'),
 (40,3,133.00,3,20.00,2660.00,'humay pula','2012-10-16 00:00:00','admin'),
 (41,3,186.00,5,20.00,3720.00,'humay pula','2012-10-16 00:00:00','admin'),
 (43,3,1324.00,31,21.00,27804.00,'humay pula','2012-10-16 00:00:00','admin'),
 (44,3,280.00,6,21.00,5880.00,'humay pula','2012-10-16 00:00:00','admin'),
 (45,3,4091.00,96,21.00,85911.00,'humay pula','2012-10-16 00:00:00','admin'),
 (46,3,1576.00,25,18.50,29156.00,'humay puti','2012-10-16 00:00:00','admin'),
 (47,3,330.00,8,21.00,6930.00,'humay pula','2012-10-16 00:00:00','admin'),
 (48,3,20.00,1,19.50,390.00,'humay pula','2012-10-16 00:00:00','admin'),
 (50,3,1074.00,26,20.00,21480.00,'humay pula','2012-10-16 00:00:00','admin'),
 (51,3,35.00,1,20.00,700.00,'humay pula','2012-10-17 00:00:00','admin'),
 (52,3,211.00,6,20.00,4220.00,'humay pula','2012-10-17 00:00:00','admin'),
 (53,3,59.00,2,19.00,1121.00,'humay pula','2012-10-17 00:00:00','admin'),
 (54,3,268.50,6,19.50,5235.75,'humay pula','2012-10-17 00:00:00','admin'),
 (55,3,337.50,10,19.00,6412.50,'humay pula','2012-10-17 00:00:00','admin'),
 (56,3,99.00,2,19.00,1881.00,'humay pula','2012-10-17 00:00:00','admin'),
 (57,3,27.00,1,21.00,567.00,'humay pula','2012-10-17 00:00:00','admin'),
 (58,3,2302.00,52,20.00,46040.00,'humay pula','2012-10-17 00:00:00','admin'),
 (59,3,19.00,1,20.00,380.00,'humay pula','2012-10-17 00:00:00','admin'),
 (60,3,48.00,1,19.00,912.00,'humay pula','2012-10-17 00:00:00','admin'),
 (61,3,49.00,1,20.00,980.00,'humay pula','2012-10-17 00:00:00','admin'),
 (62,3,645.00,16,19.00,12255.00,'humay pula','2012-10-17 00:00:00','admin'),
 (63,3,712.00,17,20.00,14240.00,'humay pula','2012-10-17 00:00:00','admin'),
 (64,3,1970.00,34,18.00,35460.00,'humay puti','2012-10-18 00:00:00','admin'),
 (65,3,573.00,10,19.00,10887.00,'humay puwa','2012-10-18 00:00:00','admin'),
 (66,3,617.00,13,20.00,12340.00,'humay puti','2012-10-19 00:00:00','admin'),
 (67,3,372.00,10,19.00,7068.00,'humay puti','2012-10-19 00:00:00','admin'),
 (68,3,193.00,4,18.00,3474.00,'humay puti','2012-10-19 00:00:00','admin'),
 (69,3,101.00,4,18.50,1868.50,'humay puti','2012-10-19 00:00:00','admin'),
 (70,3,15.00,1,19.50,292.50,'humay pula','2012-10-19 00:00:00','admin'),
 (71,9,94.00,2,12.00,1128.00,'mais puti','2012-10-20 00:00:00','admin'),
 (72,9,161.00,3,13.00,2093.00,'mais puti','2012-10-20 00:00:00','admin'),
 (73,9,225.00,5,13.00,2925.00,'mais puti','2012-10-20 00:00:00','admin'),
 (74,9,339.00,7,13.50,4576.50,'mais puti','2012-10-20 00:00:00','admin'),
 (75,9,26.00,1,13.00,338.00,'mais puti','2012-10-20 00:00:00','admin'),
 (76,9,33.00,1,13.50,445.50,'mais puti','2012-10-20 00:00:00','admin'),
 (77,9,798.00,13,13.00,10374.00,'mais puti','2012-10-20 00:00:00','admin'),
 (78,9,615.00,12,13.00,7995.00,'mais puti','2012-10-20 00:00:00','admin'),
 (79,9,99.00,2,13.00,1287.00,'mais puti','2012-10-20 00:00:00','admin'),
 (80,9,441.00,7,13.00,5733.00,'mais puti','2012-10-20 00:00:00','admin'),
 (81,9,120.00,3,13.00,1560.00,'mais puti','2012-10-20 00:00:00','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`id`,`item_id`,`qty_out`,`price`,`total_amount`,`date_out`,`out_by`) VALUES 
 (1,1,30.00,1650.00,49500.00,'2012-10-03','admin '),
 (2,1,10.00,1600.00,16000.00,'2012-10-03','admin'),
 (3,1,20.00,1600.00,32000.00,'2012-10-03','admin'),
 (4,2,5.00,500.00,2500.00,'2012-10-03','admin'),
 (5,2,4.00,500.00,2000.00,'2012-10-04','admin'),
 (6,1,33.00,1600.00,52800.00,'2012-10-04','admin'),
 (7,2,14.00,500.00,7000.00,'2012-10-05','admin'),
 (8,1,27.00,1600.00,43200.00,'2012-10-05','admin'),
 (9,1,4.00,1600.00,6400.00,'2012-10-06','admin '),
 (10,1,20.00,1600.00,32000.00,'2012-10-08','admin'),
 (11,1,20.00,1600.00,32000.00,'2012-10-09','admin'),
 (12,1,25.00,1600.00,40000.00,'2012-10-10','admin'),
 (13,1,30.00,1600.00,48000.00,'2012-10-11','admin'),
 (14,1,20.00,1620.00,32400.00,'2012-10-16','admin'),
 (15,1,20.00,1620.00,32400.00,'2012-10-16','admin'),
 (16,1,30.00,1620.00,48600.00,'2012-10-16','admin'),
 (17,1,5.00,1620.00,8100.00,'2012-10-16','admin'),
 (18,1,40.00,1620.00,64800.00,'2012-10-16','admin'),
 (20,1,6.00,1620.00,9720.00,'2012-10-16','admin'),
 (23,1,45.00,1600.00,72000.00,'2012-10-16','admin'),
 (24,2,2.00,500.00,1000.00,'2012-10-16','admin'),
 (25,1,30.00,1620.00,48600.00,'2012-10-16','admin'),
 (26,2,3.00,500.00,1500.00,'2012-10-16','admin'),
 (27,1,7.00,1620.00,11340.00,'2012-10-16','admin'),
 (28,2,6.00,500.00,3000.00,'2012-10-16','admin'),
 (29,2,6.00,500.00,3000.00,'2012-10-16','admin'),
 (32,1,30.00,1600.00,48000.00,'2012-10-19','admin'),
 (33,2,7.00,500.00,3500.00,'2012-10-19','admin'),
 (34,1,18.00,1620.00,29160.00,'2012-10-19','admin'),
 (35,7,22.00,950.00,20900.00,'2012-10-20','soreme'),
 (36,1,5.00,1620.00,8100.00,'2012-10-20','soreme'),
 (37,1,4.00,1600.00,6400.00,'2012-10-20','soreme');
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
 (1,6),
 (2,7),
 (3,8),
 (4,9),
 (5,5),
 (6,10),
 (7,11),
 (8,8),
 (9,7),
 (10,9),
 (11,10),
 (12,11),
 (13,12),
 (14,12),
 (15,12),
 (16,12),
 (17,11),
 (18,7),
 (19,8),
 (20,7),
 (21,8),
 (22,10),
 (24,11),
 (25,11),
 (26,10),
 (27,5),
 (28,5),
 (29,11),
 (30,7),
 (31,7),
 (32,11),
 (33,9),
 (34,8),
 (35,11),
 (36,11),
 (37,7),
 (38,10),
 (39,11),
 (40,11),
 (41,11),
 (43,9),
 (44,8),
 (45,9),
 (46,12),
 (47,12),
 (48,12),
 (50,12),
 (51,10),
 (52,11),
 (53,11),
 (54,7),
 (55,7),
 (56,11),
 (57,8),
 (58,9),
 (59,8),
 (60,11),
 (61,12),
 (62,12),
 (63,12),
 (64,12),
 (65,12),
 (66,2),
 (67,8),
 (68,11),
 (69,6),
 (70,6),
 (71,11),
 (72,8),
 (73,8),
 (74,7),
 (75,10),
 (76,7),
 (77,8),
 (78,8),
 (79,8),
 (80,8),
 (81,8);
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
 ('admin ','21232f297a57a5a743894a0e4a801fc3','Admin'),
 ('ares ','c2dc1992a7081ce4b0943f43a25020b7','user'),
 ('soreme ','a0d30d3341378c243f2d7fdb62d6c3a8','user');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;


--
-- Definition of table `user_previleges`
--

DROP TABLE IF EXISTS `user_previleges`;
CREATE TABLE `user_previleges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `previleges` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_previleges`
--

/*!40000 ALTER TABLE `user_previleges` DISABLE KEYS */;
INSERT INTO `user_previleges` (`id`,`username`,`previleges`,`status`) VALUES 
 (1,'admin','1','1'),
 (2,'admin','2','1'),
 (3,'admin','3','1'),
 (4,'admin','4','1'),
 (5,'admin','5','1'),
 (6,'admin','6','1'),
 (7,'admin','7','1'),
 (8,'admin','8','1'),
 (9,'soreme','1','1'),
 (10,'soreme','2','1'),
 (11,'soreme','3','1'),
 (12,'soreme','4','0'),
 (13,'soreme','5','0'),
 (14,'soreme','6','0'),
 (15,'soreme','7','0'),
 (16,'soreme','8','0'),
 (17,'ares','1','1'),
 (18,'ares','2','1'),
 (19,'ares','3','1'),
 (20,'ares','4','0'),
 (21,'ares','5','0'),
 (22,'ares','6','0'),
 (23,'ares','7','0'),
 (24,'ares','8','0'),
 (25,'admin','9','1'),
 (26,'soreme','9','0'),
 (27,'ares','9','0');
/*!40000 ALTER TABLE `user_previleges` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
