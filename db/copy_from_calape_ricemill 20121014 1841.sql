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
 (4,1),
 (5,1);
/*!40000 ALTER TABLE `activepartida` ENABLE KEYS */;


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`,`item_code`,`description`,`unit_price`,`unit_of_measure`,`status`) VALUES 
 (1,'Humay','Humay',28.00,'kilo(s)','Active'),
 (2,'Tiki-tiki','Tiki-tiki',20.00,'kg','Active');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida`
--

/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` (`id`,`name`,`status`,`created_at`,`created_by`,`stockout_status`) VALUES 
 (1,'Minga Uy ','1','2012-10-03','admin',1),
 (2,'  Nutrimart-Tagb. ','1','2012-10-03','admin',1),
 (3,'partida Erning ','1','2012-10-11','admin',1),
 (4,'Partida Erning ','1','2012-10-11','admin',1),
 (5,'Partida Erning ','1','2012-10-11','admin',1);
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
/*!40000 ALTER TABLE `partida_expenses` ENABLE KEYS */;


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
 (4,19),
 (5,20);
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
 (2,13);
/*!40000 ALTER TABLE `partida_stockout` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id`,`item_id`,`qty_in`,`num_of_sack`,`price`,`total_amount`,`description`,`date_in`,`received_by`) VALUES 
 (1,1,492.00,14,20.50,10086.00,'humay puti','2012-10-03 00:00:00','admin'),
 (2,1,109.00,3,20.00,2180.00,'humay puti','2012-10-03 00:00:00','admin'),
 (3,1,33.00,1,20.00,660.00,'humay puti','2012-09-21 00:00:00','admin'),
 (4,1,1394.00,34,20.00,27880.00,'humay puti','2012-09-21 00:00:00','admin'),
 (5,1,109.00,2,20.50,2234.50,'humay puti','2012-09-22 00:00:00','admin'),
 (6,1,225.00,5,20.00,4500.00,'humay puti','2012-09-24 00:00:00','admin'),
 (7,1,83.00,2,20.00,1660.00,'humay puti','2012-09-24 00:00:00','admin'),
 (8,1,242.00,7,20.00,4840.00,'humay puti','2012-09-24 00:00:00','admin'),
 (9,1,616.00,13,20.00,12320.00,'humay puti','2012-09-29 00:00:00','admin'),
 (10,1,2855.00,66,19.00,54245.00,'humay puti','2012-09-29 00:00:00','admin'),
 (11,1,1064.00,24,20.00,21280.00,'humay puti','2012-10-02 00:00:00','admin'),
 (12,1,116.00,3,19.00,2204.00,'humay puti','2012-10-02 00:00:00','admin'),
 (13,1,550.00,9,20.00,11000.00,'humay puti','2012-09-26 00:00:00','admin'),
 (14,1,721.00,19,20.00,14420.00,'humay puti','2012-09-26 00:00:00','admin'),
 (15,1,165.00,5,19.00,3135.00,'humay puti','2012-09-28 00:00:00','admin'),
 (16,1,481.00,13,18.50,8898.50,'humay puti','2012-09-30 00:00:00','admin'),
 (17,1,59.00,1,18.50,1091.50,'humay puti','2012-10-02 00:00:00','admin'),
 (18,1,197.00,5,21.00,4137.00,'humay puwa','2012-09-21 00:00:00','admin'),
 (19,1,89.00,2,21.00,1869.00,'Humay puwa','2012-10-11 00:00:00','admin'),
 (20,1,197.00,5,21.00,4137.00,'Humay puwa','2012-10-11 00:00:00','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`id`,`item_id`,`qty_out`,`price`,`total_amount`,`date_out`,`out_by`) VALUES 
 (1,1,30.00,1650.00,49500.00,'2012-10-03','admin'),
 (2,1,10.00,1600.00,16000.00,'2012-10-03','admin'),
 (3,1,20.00,1600.00,32000.00,'2012-10-03','admin'),
 (4,2,5.00,500.00,2500.00,'2012-10-03','admin'),
 (5,2,4.00,500.00,2000.00,'2012-10-04','admin'),
 (6,1,33.00,1600.00,52800.00,'2012-10-04','admin'),
 (7,2,14.00,500.00,7000.00,'2012-10-05','admin'),
 (8,1,27.00,1600.00,43200.00,'2012-10-05','admin'),
 (9,1,4.00,1600.00,6400.00,'2012-10-06','admin'),
 (10,1,20.00,1600.00,32000.00,'2012-10-08','admin'),
 (11,1,20.00,1600.00,32000.00,'2012-10-09','admin'),
 (12,1,25.00,1600.00,40000.00,'2012-10-10','admin'),
 (13,1,30.00,1600.00,48000.00,'2012-10-11','admin');
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
 (20,7);
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
 ('admin ','21232f297a57a5a743894a0e4a801fc3','Admin ');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;