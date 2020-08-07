CREATE DATABASE  IF NOT EXISTS `elm_admin` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `elm_admin`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: elm_admin
-- ------------------------------------------------------
-- Server version	5.5.62

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `adminName` varchar(20) NOT NULL COMMENT '管理员名称',
  `password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`adminId`),
  UNIQUE KEY `adminName_UNIQUE` (`adminName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'王磊','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `businessId` int(11) NOT NULL AUTO_INCREMENT COMMENT '商家编号',
  `password` varchar(20) NOT NULL COMMENT '商家密码',
  `businessName` varchar(40) NOT NULL COMMENT '商家名称',
  `businessAddress` varchar(50) DEFAULT NULL COMMENT '商家地址',
  `businessExplain` varchar(40) DEFAULT NULL COMMENT '商家介绍',
  `starPrice` decimal(5,2) DEFAULT '0.00' COMMENT '起送费',
  `deliveryPrice` decimal(5,2) DEFAULT '0.00' COMMENT '配送费',
  PRIMARY KEY (`businessId`)
) ENGINE=InnoDB AUTO_INCREMENT=10008 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (10001,'123','万家饺子（软件园E18店）','沈阳市浑南区软件园E18楼1-121-3号','各种饺子',18.00,3.50),(10002,'123','小锅饭豆腐馆（全运店）','沈阳市全运路126号','小锅套餐',15.00,3.00),(10003,'123','麦当劳麦乐送（全运路店）','沈阳市全运路53号麦当劳','汉堡薯条',25.00,4.00),(10004,'123','米村拌饭（浑南店）','沈阳市浑南区彩霞街26号','拌饭套餐',18.00,3.00),(10005,'123','申记串道（中海康城店）','沈阳市中海康城社区48号','烤串炸串',20.00,4.00),(10006,'123','半亩良田排骨米饭','沈阳市和平区三好街126号','排骨米饭',22.00,4.00),(10007,'123','茶兮鲜果饮品（国际软件园店）','沈阳市和平区南京南街345号','甜品饮品',20.00,3.00);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `foodId` int(11) NOT NULL AUTO_INCREMENT COMMENT '食品编号',
  `foodName` varchar(30) NOT NULL COMMENT '食品名称',
  `foodExplain` varchar(30) DEFAULT NULL COMMENT '食品介绍',
  `foodPrice` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '食品价格',
  `businessId` int(11) NOT NULL COMMENT '所属商家编号',
  PRIMARY KEY (`foodId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'纯肉鲜肉（水饺）','纯肉馅饺子',16.00,10001),(2,'玉米鲜肉（水饺）','玉米清香',18.00,10001),(3,'虾仁三鲜（蒸饺）','三鲜馅饺子',22.00,10001),(4,'素三鲜（蒸饺）','韭菜鸡蛋虾皮',15.00,10001),(5,'角瓜鸡蛋（蒸饺）','角瓜鸡蛋',16.00,10001),(6,'蛋黄焗豆花','蛋黄豆花',8.00,10002),(7,'麻婆豆腐','麻辣味',12.00,10002);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 15:29:24
