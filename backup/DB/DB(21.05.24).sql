CREATE DATABASE  IF NOT EXISTS `jsp_project` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jsp_project`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: jsp_project
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `comment_item`
--

DROP TABLE IF EXISTS `comment_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_item` (
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
  CONSTRAINT `fk_USER_has_TOOL_TOOL1` FOREIGN KEY (`ITEM_I_NUM`) REFERENCES `item` (`I_NUM`),
  CONSTRAINT `fk_USER_has_TOOL_USER` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_item`
--

LOCK TABLES `comment_item` WRITE;
/*!40000 ALTER TABLE `comment_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_notice`
--

DROP TABLE IF EXISTS `comment_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_notice` (
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
  CONSTRAINT `fk_USER_has_NOTICE1_NOTICE1` FOREIGN KEY (`NOTICE_N_NUM`) REFERENCES `notice` (`N_NUM`),
  CONSTRAINT `fk_USER_has_NOTICE1_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_notice`
--

LOCK TABLES `comment_notice` WRITE;
/*!40000 ALTER TABLE `comment_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_tip`
--

DROP TABLE IF EXISTS `comment_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_tip` (
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
  CONSTRAINT `fk_USER_has_TIP_TIP1` FOREIGN KEY (`TIP_T_NUM`) REFERENCES `tip` (`T_NUM`),
  CONSTRAINT `fk_USER_has_TIP_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_tip`
--

LOCK TABLES `comment_tip` WRITE;
/*!40000 ALTER TABLE `comment_tip` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_tip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donate` (
  `DONATE_NUM` int NOT NULL AUTO_INCREMENT,
  `DONATE_AMOUNT` int DEFAULT NULL,
  PRIMARY KEY (`DONATE_NUM`),
  UNIQUE KEY `DONATE_NUM_UNIQUE` (`DONATE_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donate`
--

LOCK TABLES `donate` WRITE;
/*!40000 ALTER TABLE `donate` DISABLE KEYS */;
INSERT INTO `donate` VALUES (1,20),(2,15),(3,50),(4,5),(5,5),(6,50),(7,15),(8,5),(9,50),(10,5),(11,25),(12,5),(13,5),(14,50),(15,15),(16,15),(17,5),(18,50),(19,25),(20,5),(21,25),(22,50);
/*!40000 ALTER TABLE `donate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `I_NUM` int NOT NULL AUTO_INCREMENT,
  `I_TITLE` varchar(45) DEFAULT NULL,
  `I_CONTENT` text,
  `I_IMAGE` varchar(100) DEFAULT NULL,
  `I_CATEGORY` varchar(45) DEFAULT NULL,
  `I_HITS` int DEFAULT NULL,
  PRIMARY KEY (`I_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'Mac Book air',NULL,'img/5eea335daee6a8642c5f3894.jpeg',NULL,NULL),(2,'IMac',NULL,'img/clay-banks-TQYTWfN1b7M-unsplash.jpg',NULL,NULL),(3,'Mac book pro',NULL,'img/joshua-woroniecki-bRuaLZ302lY-unsplash.jpg',NULL,NULL),(4,'Magic Mouse',NULL,'img/katlyn-luz-JOef0jIIYDM-unsplash.jpg',NULL,NULL),(5,'Magic Mouse',NULL,'img/katlyn-luz-ZreKkcuqMU8-unsplash.jpg',NULL,NULL),(6,'Monitor',NULL,'img/ali-zolghadr-1txfdSON1Ao-unsplash.jpg',NULL,NULL),(7,'Keyboard',NULL,'img/146732b40f21ac799077dfcc8b1223b6_1543990974_6355.png',NULL,NULL),(8,'Keyboard',NULL,'img/1510364334_2.jpeg',NULL,NULL),(9,'Keyboard',NULL,'img/1550022140_2.jpeg',NULL,NULL),(10,'Keyboard',NULL,'img/1550022043_2.jpeg',NULL,NULL),(11,'Keyboard',NULL,'img/editors-keys-CtDrd7mWW6M-unsplash.jpg',NULL,NULL),(12,'Desk',NULL,'img/christian-lambert-GA3RibgYFds-unsplash.jpg',NULL,NULL),(13,'Desk',NULL,'img/sora-sagano-WFSap6CIXuw-unsplash.jpg',NULL,NULL),(14,'Desk',NULL,'img/bench-accounting-nvzvOPQW0gc-unsplash.jpg',NULL,NULL),(15,'Desk',NULL,'img/minh-pham-lB9ylP8e9Sg-unsplash.jpg',NULL,NULL),(16,'Desk',NULL,'img/amr-taha-XcPWswUrzK0-unsplash.jpg',NULL,NULL),(17,'Mouse',NULL,'img/stefen-tan-ndUby2p2ptY-unsplash.jpg',NULL,NULL),(18,'Mouse',NULL,'img/anthony-choren-e7dG26YCrZU-unsplash.jpg',NULL,NULL),(19,'Mouse',NULL,'img/harpal-singh-KuvEVL7lXYQ-unsplash.jpg',NULL,NULL),(20,'Monitor',NULL,'img/ali-zolghadr-1txfdSON1Ao-unsplash.jpg',NULL,NULL),(21,'Mac book air',NULL,'img/download.jpeg',NULL,NULL),(22,'Mac book pro',NULL,'img/radek-grzybowski-eBRTYyjwpRY-unsplash.jpg',NULL,NULL),(23,'Mouse',NULL,'img/antonio-manaligod-T_2UFB_xwzw-unsplash.jpg',NULL,NULL),(24,'Keyboard',NULL,'img/olena-sergienko-cHlK4sZXOQo-unsplash.jpg',NULL,NULL),(25,'Monitor',NULL,'img/joshua-aragon-BMnhuwFYr7w-unsplash.jpg',NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `N_NUM` int NOT NULL AUTO_INCREMENT,
  `N_TITLE` varchar(45) DEFAULT NULL,
  `N_CONTENT` text,
  `N_HITS` int DEFAULT NULL,
  PRIMARY KEY (`N_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'9시에 회의하기','오늘 저녁 각자 맡은 부분을 합치고 내일 어떻게 나갈 것인지 방향을 잡을 것 인가 회의를 하는 것이다.',0),(2,'마이페이지 UI 수정','프로필 수정하기 마무리하기 귀찮아도 오늘 저녁까지 끝내야함.',0),(3,'Infinity Scrolling','Up all night',0),(4,'관리자 페이지','어떻게 할지 고민해보세요 여러분!',0),(5,'기부페이지','저희에겐 아직 기부페이지도 있어요!',0);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip`
--

DROP TABLE IF EXISTS `tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip` (
  `T_NUM` int NOT NULL AUTO_INCREMENT,
  `T_TITLE` varchar(45) DEFAULT NULL,
  `T_CONTENT` text,
  `T_IMAGE` varchar(100) DEFAULT NULL,
  `T_CATEGORY` varchar(45) DEFAULT NULL,
  `T_HITS` int DEFAULT NULL,
  PRIMARY KEY (`T_NUM`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip`
--

LOCK TABLES `tip` WRITE;
/*!40000 ALTER TABLE `tip` DISABLE KEYS */;
INSERT INTO `tip` VALUES (1,'UX/UI 1','my UX',NULL,NULL,NULL),(2,'Idea1','my idea',NULL,NULL,NULL),(3,'Idea2',NULL,NULL,NULL,NULL),(4,'Idea3',NULL,NULL,NULL,NULL),(5,'Idea4',NULL,NULL,NULL,NULL),(6,'Idea5',NULL,NULL,NULL,NULL),(7,'Idea6',NULL,NULL,NULL,NULL),(8,'Idea7',NULL,NULL,NULL,NULL),(9,'Idea8',NULL,NULL,NULL,NULL),(10,'Idea9',NULL,NULL,NULL,NULL),(11,'Idea10',NULL,NULL,NULL,NULL),(12,'UX/UI 2',NULL,NULL,NULL,NULL),(13,'UX/UI 3',NULL,NULL,NULL,NULL),(14,'UX/UI 4',NULL,NULL,NULL,NULL),(15,'UX/UI 5',NULL,NULL,NULL,NULL),(16,'UX/UI 6',NULL,NULL,NULL,NULL),(17,'UX/UI 7',NULL,NULL,NULL,NULL),(18,'UX/UI 8',NULL,NULL,NULL,NULL),(19,'UX/UI 9',NULL,NULL,NULL,NULL),(20,'UX/UI 10',NULL,NULL,NULL,NULL),(21,'UX/UI 11',NULL,NULL,NULL,NULL),(22,'UX/UI 12',NULL,NULL,NULL,NULL),(23,'UX/UI 13',NULL,NULL,NULL,NULL),(24,'UX/UI 14',NULL,NULL,NULL,NULL),(25,'UX/UI 15',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `EMAIL` varchar(100) NOT NULL,
  `NAME` varchar(45) NOT NULL,
  `PWD` varchar(45) NOT NULL,
  `ADRESS` varchar(100) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `GIT` varchar(100) DEFAULT NULL,
  `CREATEDATE` datetime DEFAULT NULL,
  `DELETEDATE` datetime DEFAULT NULL,
  `ADMIN` int DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123@naver.com','김도우','1234!a','서울 강남구 남부순환로 2907 11','01073460625','','2021-05-24 11:20:24',NULL,0),('abc@google.com','Eng','1234',NULL,NULL,'',NULL,NULL,NULL),('ido@naver.com','ido','1234',NULL,NULL,NULL,NULL,NULL,NULL),('jeff@naver.com','Jeff','1234',NULL,NULL,NULL,NULL,NULL,NULL),('king@naver.com','King','1234',NULL,NULL,NULL,NULL,NULL,NULL),('mac@gamil.com','Mac','1234','서울 강남구 남부순환로 2907 11','01073460625','','2021-05-24 11:20:24',NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_item`
--

DROP TABLE IF EXISTS `write_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_item` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `ITEM_I_NUM` int NOT NULL,
  `IW_DELETE` datetime DEFAULT NULL,
  `IW_EDIT` datetime DEFAULT NULL,
  `IW_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`ITEM_I_NUM`),
  KEY `fk_USER_has_ITEM_ITEM1_idx` (`ITEM_I_NUM`),
  KEY `fk_USER_has_ITEM_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_ITEM_ITEM1` FOREIGN KEY (`ITEM_I_NUM`) REFERENCES `item` (`I_NUM`),
  CONSTRAINT `fk_USER_has_ITEM_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_item`
--

LOCK TABLES `write_item` WRITE;
/*!40000 ALTER TABLE `write_item` DISABLE KEYS */;
INSERT INTO `write_item` VALUES ('jeff@naver.com',1,NULL,NULL,NULL),('jeff@naver.com',2,NULL,NULL,NULL),('mac@gamil.com',3,NULL,NULL,NULL),('jeff@naver.com',4,NULL,NULL,NULL),('mac@gamil.com',5,NULL,NULL,NULL),('jeff@naver.com',6,NULL,NULL,NULL),('jeff@naver.com',7,NULL,NULL,NULL),('jeff@naver.com',8,NULL,NULL,NULL),('jeff@naver.com',9,NULL,NULL,NULL),('mac@gamil.com',10,NULL,NULL,NULL),('jeff@naver.com',11,NULL,NULL,NULL),('mac@gamil.com',12,NULL,NULL,NULL),('jeff@naver.com',13,NULL,NULL,NULL),('mac@gamil.com',14,NULL,NULL,NULL),('jeff@naver.com',15,NULL,NULL,NULL),('jeff@naver.com',16,NULL,NULL,NULL),('jeff@naver.com',17,NULL,NULL,NULL),('jeff@naver.com',18,NULL,NULL,NULL),('jeff@naver.com',19,NULL,NULL,NULL),('jeff@naver.com',20,NULL,NULL,NULL),('jeff@naver.com',21,NULL,NULL,NULL),('jeff@naver.com',22,NULL,NULL,NULL),('jeff@naver.com',23,NULL,NULL,NULL),('mac@gamil.com',24,NULL,NULL,NULL),('jeff@naver.com',25,NULL,NULL,NULL);
/*!40000 ALTER TABLE `write_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_notice`
--

DROP TABLE IF EXISTS `write_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_notice` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `NOTICE_N_NUM` int NOT NULL,
  `NW_DELETE` varchar(45) DEFAULT NULL,
  `NW_EDIT` varchar(45) DEFAULT NULL,
  `NW_REGIST` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE_NOTICE1_idx` (`NOTICE_N_NUM`),
  KEY `fk_USER_has_NOTICE_USER1_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_NOTICE_NOTICE1` FOREIGN KEY (`NOTICE_N_NUM`) REFERENCES `notice` (`N_NUM`),
  CONSTRAINT `fk_USER_has_NOTICE_USER1` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_notice`
--

LOCK TABLES `write_notice` WRITE;
/*!40000 ALTER TABLE `write_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `write_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write_tip`
--

DROP TABLE IF EXISTS `write_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write_tip` (
  `USER_EMAIL` varchar(100) NOT NULL,
  `TIP_T_NUM` int NOT NULL,
  `TW_DELETE` datetime DEFAULT NULL,
  `TW_EDIT` datetime DEFAULT NULL,
  `TW_REGIST` datetime DEFAULT NULL,
  PRIMARY KEY (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_TIP2_idx` (`TIP_T_NUM`),
  KEY `fk_USER_has_TIP_USER2_idx` (`USER_EMAIL`),
  CONSTRAINT `fk_USER_has_TIP_TIP2` FOREIGN KEY (`TIP_T_NUM`) REFERENCES `tip` (`T_NUM`),
  CONSTRAINT `fk_USER_has_TIP_USER2` FOREIGN KEY (`USER_EMAIL`) REFERENCES `user` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write_tip`
--

LOCK TABLES `write_tip` WRITE;
/*!40000 ALTER TABLE `write_tip` DISABLE KEYS */;
INSERT INTO `write_tip` VALUES ('jeff@naver.com',1,NULL,NULL,NULL),('jeff@naver.com',2,NULL,NULL,NULL),('jeff@naver.com',3,NULL,NULL,NULL),('jeff@naver.com',4,NULL,NULL,NULL),('jeff@naver.com',5,NULL,NULL,NULL),('jeff@naver.com',6,NULL,NULL,NULL),('jeff@naver.com',7,NULL,NULL,NULL),('jeff@naver.com',8,NULL,NULL,NULL),('jeff@naver.com',9,NULL,NULL,NULL),('jeff@naver.com',10,NULL,NULL,NULL),('jeff@naver.com',11,NULL,NULL,NULL),('jeff@naver.com',12,NULL,NULL,NULL),('jeff@naver.com',13,NULL,NULL,NULL),('jeff@naver.com',14,NULL,NULL,NULL),('jeff@naver.com',15,NULL,NULL,NULL),('jeff@naver.com',16,NULL,NULL,NULL),('jeff@naver.com',17,NULL,NULL,NULL),('jeff@naver.com',18,NULL,NULL,NULL),('jeff@naver.com',19,NULL,NULL,NULL),('jeff@naver.com',20,NULL,NULL,NULL),('jeff@naver.com',21,NULL,NULL,NULL),('jeff@naver.com',22,NULL,NULL,NULL),('jeff@naver.com',23,NULL,NULL,NULL),('jeff@naver.com',24,NULL,NULL,NULL),('jeff@naver.com',25,NULL,NULL,NULL);
/*!40000 ALTER TABLE `write_tip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-24 15:17:23
