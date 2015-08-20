-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: Phone4S
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME` varchar(100) DEFAULT NULL,
  `CUSTOMER_AGE` int(11) DEFAULT NULL,
  `CUSTOMER_NIKENAME` varchar(100) DEFAULT NULL,
  `CUSTOMER_PASSWORD` varchar(100) DEFAULT NULL,
  `CUSTOMER_LANDLINE_TELEPHONE` varchar(100) DEFAULT NULL,
  `CUSTOMER_ADDRESS` varchar(100) DEFAULT NULL,
  `CUSTOMER_MOBILE_PHONE` varchar(100) DEFAULT NULL,
  `CUSTOMER_CARD_ID` varchar(100) DEFAULT NULL,
  `CUSTOMER_CAREER` varchar(100) DEFAULT NULL,
  `CUSTOMER_EMAIL` varchar(100) DEFAULT NULL,
  `CUSTOMER_SEX` varchar(100) DEFAULT NULL,
  `ATTRIBUTE_ONE` varchar(100) DEFAULT NULL,
  `ATTRIBUTE_TWO` varchar(100) DEFAULT NULL,
  `ATTRIBUTE_THREE` varchar(100) DEFAULT NULL,
  `ATTRIBUTE_FOUR` varchar(100) DEFAULT NULL,
  `ATTRIBUTE_FIVE` varchar(100) DEFAULT NULL,
  `CUSTOMER_STATUS` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,NULL,NULL,'陈云展','snowsnow21',NULL,NULL,NULL,NULL,NULL,'chenyunzhan08@icloud.com',NULL,NULL,NULL,NULL,NULL,NULL,1),(2,NULL,NULL,'陈云展','snowsnow21',NULL,NULL,NULL,NULL,NULL,'chenyunzhan08@icloud.com',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-20 17:57:43
