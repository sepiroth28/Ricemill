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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` (`id`,`description`,`amount`,`date_created`,`no_of_kg`,`rate_per_kg`) VALUES 
 (1,'Tracking',50,'2012-09-16',0,0),
 (2,'Milling Charge',300,'2012-09-16',0,0),
 (3,'Milling Charge',300,'2012-09-16',100,3),
 (4,'Tracking',60,'2012-09-16',20,3),
 (5,'Milling Charge',4500,'2012-09-16',1500,3),
 (6,'Tracking',7500,'2012-09-16',1500,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`,`item_code`,`description`,`unit_price`,`unit_of_measure`,`status`) VALUES 
 (1,'Humay','Humay',28.00,'kilo(s)','Active');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida`
--

/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` (`id`,`name`,`status`,`created_at`,`created_by`,`stockout_status`) VALUES 
 (1,'Partida 1 ','1','2012-09-16','admin',0),
 (2,'partida 2 ','1','2012-09-16','admin',1),
 (3,'Partida 3 ','0','2012-09-16','admin',0);
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
 (3,2),
 (4,1),
 (5,3),
 (6,3);
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
 (2,4),
 (3,5),
 (3,6);
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
 (3,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` (`id`,`name`,`address`) VALUES 
 (1,'Provider 1','Provider 1 address'),
 (2,'Provider 2','Loon, Bohol');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id`,`item_id`,`qty_in`,`num_of_sack`,`price`,`total_amount`,`description`,`date_in`,`received_by`) VALUES 
 (1,1,100.00,2,25.00,2500.00,'White rice','2012-09-16 00:00:00','admin'),
 (2,1,500.00,10,25.00,12500.00,'white rice','2012-09-16 00:00:00','admin'),
 (3,1,2500.00,50,25.00,62500.00,'rmr','2012-09-16 00:00:00','admin'),
 (4,1,500.00,10,25.00,12500.00,'red rice','2012-09-16 00:00:00','admin'),
 (5,1,500.00,10,25.00,12500.00,'RMR','2012-09-16 00:00:00','admin'),
 (6,1,1000.00,20,25.00,25000.00,'RMR','2012-09-16 00:00:00','admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_out`
--

/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
INSERT INTO `stock_out` (`id`,`item_id`,`qty_out`,`price`,`total_amount`,`date_out`,`out_by`) VALUES 
 (1,1,5.00,1200.00,6000.00,'2012-09-16','admin'),
 (2,1,2.00,1600.00,3200.00,'2012-09-16','admin');
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
 (1,2),
 (2,1),
 (3,2),
 (4,1),
 (5,1),
 (6,2);
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
