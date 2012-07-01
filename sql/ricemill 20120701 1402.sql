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
  `partida_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_created` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`,`item_code`,`description`,`unit_price`,`unit_of_measure`,`status`) VALUES 
 (1,'CORN','Corn',25.00,'kl','Active'),
 (2,'HUMAY','Humay',30.00,'kl','Active'),
 (3,'TIKI2X','Tiki2x',10.00,'kl','Active');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partida`
--

/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` (`id`,`name`,`status`,`created_at`,`created_by`) VALUES 
 (1,'Partida1','1','2012-06-28','admin'),
 (2,'Partida 2','1','2012-06-29','admin');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;


--
-- Definition of table `partida_expenses`
--

DROP TABLE IF EXISTS `partida_expenses`;
CREATE TABLE `partida_expenses` (
  `expenses_id` int(10) unsigned DEFAULT NULL,
  `partida_id` int(10) unsigned DEFAULT NULL,
  KEY `FK_partida_expenses_1` (`partida_id`),
  CONSTRAINT `FK_partida_expenses_1` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
 (1,1);
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
 (1,2);
/*!40000 ALTER TABLE `partida_stockout` ENABLE KEYS */;


--
-- Definition of table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
CREATE TABLE `stock_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty_in` double(10,2) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `total_amount` double(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_in` datetime DEFAULT NULL,
  `received_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_in`
--

/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
INSERT INTO `stock_in` (`id`,`item_id`,`qty_in`,`price`,`total_amount`,`description`,`date_in`,`received_by`) VALUES 
 (1,2,50.00,30.00,1500.00,'Humay with 50kg per sack','2012-06-29 00:00:00','admin');
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
 (1,2,10.00,30.00,300.00,'2012-06-29','admin'),
 (2,2,5.00,30.00,150.00,'2012-06-29','admin');
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
