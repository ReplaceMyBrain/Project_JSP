CREATE DATABASE  IF NOT EXISTS `jsp_project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jsp_project`;
-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: jsp_project
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `COMMENT_ITEM`
--

DROP TABLE IF EXISTS `COMMENT_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMMENT_ITEM` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `ITEM_I_NUM` int NOT NULL,
  `IC_NUM` int NOT NULL AUTO_INCREMENT,
  `IC_CONTENT` text,
  `IC_DELETE` datetime DEFAULT NULL,
  `IC_EDIT` datetime DEFAULT NULL,
  `IC_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`IC_NUM`),
  KEY `fk_USER_has_TOOL_TOOL1_idx` (`ITEM_I_NUM`),
  KEY `fk_USER_has_TOOL_USER_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TOOL_TOOL1` FOREIGN KEY (`ITEM_I_NUM`) REFERENCES `ITEM` (`I_NUM`),
  CONSTRAINT `fk_USER_has_TOOL_USER` FOREIGN KEY (`USER_EMAIL`) REFERENCES `USER` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMMENT_ITEM`
--

LOCK TABLES `COMMENT_ITEM` WRITE;
/*!40000 ALTER TABLE `COMMENT_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMMENT_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMMENT_NOTICE`
--

DROP TABLE IF EXISTS `COMMENT_NOTICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMMENT_NOTICE` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `NOTICE_N_NUM` int NOT NULL,
  `NC_DELETE` datetime DEFAULT NULL,
  `NC_EDIT` datetime DEFAULT NULL,
  `NC_REGIST` datetime DEFAULT NULL,
  `NC_CONTENT` text,
  `NC_NUM` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`NC_NUM`),
  KEY `fk_USER_has_NOTICE1_NOTICE1_idx` (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE1_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_NOTICE1_NOTICE1` FOREIGN KEY (`NOTICE_N_NUM`) REFERENCES `NOTICE` (`N_NUM`),
  CONSTRAINT `fk_USER_has_NOTICE1_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `USER` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMMENT_NOTICE`
--

LOCK TABLES `COMMENT_NOTICE` WRITE;
/*!40000 ALTER TABLE `COMMENT_NOTICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMMENT_NOTICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMMENT_TIP`
--

DROP TABLE IF EXISTS `COMMENT_TIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMMENT_TIP` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `TIP_T_NUM` int NOT NULL,
  `TC_NUM` int NOT NULL AUTO_INCREMENT,
  `TC_CONTENT` text,
  `TC_DELETE` datetime DEFAULT NULL,
  `TC_EDIT` datetime DEFAULT NULL,
  `TC_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`TC_NUM`),
  KEY `fk_USER_has_TIP_TIP1_idx` (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TIP_TIP1` FOREIGN KEY (`TIP_T_NUM`) REFERENCES `TIP` (`T_NUM`),
  CONSTRAINT `fk_USER_has_TIP_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `USER` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMMENT_TIP`
--

LOCK TABLES `COMMENT_TIP` WRITE;
/*!40000 ALTER TABLE `COMMENT_TIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMMENT_TIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ITEM`
--

DROP TABLE IF EXISTS `ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITEM` (
  `I_NUM` int NOT NULL AUTO_INCREMENT,
  `I_TITLE` varchar(45) DEFAULT NULL,
  `I_CONTENT` text,
  `I_IMAGE` varchar(100) DEFAULT NULL,
  `I_CATEGORY` varchar(45) DEFAULT NULL,
  `I_HITS` int DEFAULT NULL,
  PRIMARY KEY (`I_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ITEM`
--

LOCK TABLES `ITEM` WRITE;
/*!40000 ALTER TABLE `ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NOTICE`
--

DROP TABLE IF EXISTS `NOTICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NOTICE` (
  `N_NUM` int NOT NULL AUTO_INCREMENT,
  `N_TITLE` varchar(45) DEFAULT NULL,
  `N_CONTENT` text,
  `N_HITS` int DEFAULT NULL,
  PRIMARY KEY (`N_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOTICE`
--

LOCK TABLES `NOTICE` WRITE;
/*!40000 ALTER TABLE `NOTICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NOTICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TIP`
--

DROP TABLE IF EXISTS `TIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TIP` (
  `T_NUM` int NOT NULL AUTO_INCREMENT,
  `T_TITLE` varchar(45) DEFAULT NULL,
  `T_CONTENT` text,
  `T_IMAGE` varchar(100) DEFAULT NULL,
  `T_CATEGORY` varchar(45) DEFAULT NULL,
  `T_HITS` int DEFAULT NULL,
  PRIMARY KEY (`T_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TIP`
--

LOCK TABLES `TIP` WRITE;
/*!40000 ALTER TABLE `TIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `TIP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `EMAIL` varchar(100) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PWD` varchar(45) NOT NULL,
  `ADRESS` varchar(100) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `GIT` varchar(100) DEFAULT NULL,
  `CREATE` datetime DEFAULT NULL,
  `DELETE` datetime DEFAULT NULL,
  `ADMIN` int DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WRITE_ITEM`
--

DROP TABLE IF EXISTS `WRITE_ITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WRITE_ITEM` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `ITEM_I_NUM` int NOT NULL,
  `IW_DELETE` datetime DEFAULT NULL,
  `IW_EDIT` datetime DEFAULT NULL,
  `IW_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`ITEM_I_NUM`),
  KEY `fk_USER_has_ITEM_ITEM1_idx` (`ITEM_I_NUM`),
  KEY `fk_USER_has_ITEM_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_ITEM_ITEM1` FOREIGN KEY (`ITEM_I_NUM`) REFERENCES `ITEM` (`I_NUM`),
  CONSTRAINT `fk_USER_has_ITEM_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `USER` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WRITE_ITEM`
--

LOCK TABLES `WRITE_ITEM` WRITE;
/*!40000 ALTER TABLE `WRITE_ITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `WRITE_ITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WRITE_NOTICE`
--

DROP TABLE IF EXISTS `WRITE_NOTICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WRITE_NOTICE` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `NOTICE_N_NUM` int NOT NULL,
  `NW_DELETE` varchar(45) DEFAULT NULL,
  `NW_EDIT` varchar(45) DEFAULT NULL,
  `NW_REGIST` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE_NOTICE1_idx` (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_NOTICE_NOTICE1` FOREIGN KEY (`NOTICE_N_NUM`) REFERENCES `NOTICE` (`N_NUM`),
  CONSTRAINT `fk_USER_has_NOTICE_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `USER` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WRITE_NOTICE`
--

LOCK TABLES `WRITE_NOTICE` WRITE;
/*!40000 ALTER TABLE `WRITE_NOTICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `WRITE_NOTICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WRITE_TIP`
--

DROP TABLE IF EXISTS `WRITE_TIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WRITE_TIP` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `TIP_T_NUM` int NOT NULL,
  `TW_DELETE` datetime DEFAULT NULL,
  `TW_EDIT` datetime DEFAULT NULL,
  `TW_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_TIP2_idx` (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_USER2_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TIP_TIP2` FOREIGN KEY (`TIP_T_NUM`) REFERENCES `TIP` (`T_NUM`),
  CONSTRAINT `fk_USER_has_TIP_USER2` FOREIGN KEY (`USER_EMAIL`) REFERENCES `USER` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WRITE_TIP`
--

LOCK TABLES `WRITE_TIP` WRITE;
/*!40000 ALTER TABLE `WRITE_TIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `WRITE_TIP` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-21 15:02:34
