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
-- Table structure for table `GOODS_PHONE`
--

DROP TABLE IF EXISTS `GOODS_PHONE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GOODS_PHONE` (
  `GOODS_PHONE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GOODS_PHONE_NAME` varchar(100) DEFAULT NULL,
  `GOODS_PHONE_MODEL` varchar(100) DEFAULT NULL,
  `GOODS_PHONE_SUMMARY` varchar(100) DEFAULT NULL,
  `GOODS_PHONE_PHOTO` varchar(500) DEFAULT NULL,
  `ONLINE_USER_ID` int(11) DEFAULT NULL,
  `ONLINE_DATE_TIME` date DEFAULT NULL,
  `OFFLINE_USER_ID` int(11) DEFAULT NULL,
  `OFFLINE_DATE_TIME` date DEFAULT NULL,
  `ADD_USER_ID` int(11) DEFAULT NULL,
  `ADD_DATE_TIME` date DEFAULT NULL,
  `DELETE_USER_ID` int(11) DEFAULT NULL,
  `DELETE_DATE_TIME` date DEFAULT NULL,
  `SUPPLIER_USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GOODS_PHONE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GOODS_PHONE`
--

LOCK TABLES `GOODS_PHONE` WRITE;
/*!40000 ALTER TABLE `GOODS_PHONE` DISABLE KEYS */;
INSERT INTO `GOODS_PHONE` VALUES (1,'iPhone 6',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 6 及两台 iPhone 6 Plus。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'iPhone 5',NULL,'选择机型、外观和存储容量后查看供货情况。每位顾客限买两台 iPhone 5 及两台 iPhone 5 C。','http://store.storeimages.cdn-apple.com/7922/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone6/silver/iphone6-silver-select-2014_GEO_CN?wid=470&hei=556&fmt=png-alpha&qlt=95&.v=1410265994752',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `GOODS_PHONE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-28 13:08:22
drop table if exists CUSTOMER;

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER 
(
   CUSTOMER_ID          int                            not null,
   CUSTOMER_NAME        varchar(100)                   null,
   CUSTOMER_AGE         int                            null,
   CUSTOMER_NIKENAME    varchar(100)                   null,
   CUSTOMER_PASSWORD    varchar(100)                   null,
   CUSTOMER_LANDLINE_TELEPHONE varchar(100)                   null,
   CUSTOMER_ADDRESS     varchar(100)                   null,
   CUSTOMER_MOBILE_PHONE varchar(100)                   null,
   CUSTOMER_CARD_ID     varchar(100)                   null,
   CUSTOMER_CAREER      varchar(100)                   null,
   CUSTOMER_EMAIL       varchar(100)                   null,
   CUSTOMER_SEX         varchar(100)                   null,
   ATTRIBUTE_ONE        varchar(100)                   null,
   ATTRIBUTE_TWO        varchar(100)                   null,
   ATTRIBUTE_THREE      varchar(100)                   null,
   ATTRIBUTE_FOUR       varchar(100)                   null,
   ATTRIBUTE_FIVE       varchar(100)                   null,
   constraint PK_CUSTOMER primary key clustered (CUSTOMER_ID)
);
