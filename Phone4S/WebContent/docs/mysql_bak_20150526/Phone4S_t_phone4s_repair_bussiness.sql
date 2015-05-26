CREATE DATABASE  IF NOT EXISTS `Phone4S` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Phone4S`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: Phone4S
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_phone4s_repair_bussiness`
--

DROP TABLE IF EXISTS `t_phone4s_repair_bussiness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_phone4s_repair_bussiness` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `logo` varchar(45) NOT NULL,
  `spread_image` varchar(45) NOT NULL,
  `credit` varchar(45) DEFAULT '0',
  `create_date` varchar(45) DEFAULT NULL,
  `update_date` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_phone4s_repair_bussiness`
--

LOCK TABLES `t_phone4s_repair_bussiness` WRITE;
/*!40000 ALTER TABLE `t_phone4s_repair_bussiness` DISABLE KEYS */;
INSERT INTO `t_phone4s_repair_bussiness` VALUES (1,'Phone4S','手机4S店','...','repair_bussiness/spread_image.png','10',NULL,NULL,'116.5014750916','39.8097875821'),(2,'Phone4S','手机4S店','...','repair_bussiness/spread_image.png','10',NULL,NULL,'116.5028360916','39.8102755821'),(3,'Phone4S','手机4S店','...','repair_bussiness/spread_image.png','10',NULL,NULL,'116.5028360916','39.8102755821');
/*!40000 ALTER TABLE `t_phone4s_repair_bussiness` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-26 22:22:19
