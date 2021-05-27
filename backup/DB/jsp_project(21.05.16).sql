CREATE DATABASE  IF NOT EXISTS `jsp_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `cContent` varchar(200) DEFAULT NULL,
  `cRegisDate` datetime DEFAULT NULL,
  `cEditDate` datetime DEFAULT NULL,
  `cDelDate` datetime DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `tip_tNo` int NOT NULL,
  `itemInfo_iNo` int NOT NULL,
  `notice_nNo` int NOT NULL,
  `q&a_nNo` int NOT NULL,
  PRIMARY KEY (`user_email`,`tip_tNo`,`itemInfo_iNo`,`notice_nNo`,`q&a_nNo`),
  KEY `fk_comment_tip1_idx` (`tip_tNo`),
  KEY `fk_comment_itemInfo1_idx` (`itemInfo_iNo`),
  KEY `fk_comment_notice1_idx` (`notice_nNo`),
  KEY `fk_comment_q&a1_idx` (`q&a_nNo`),
  CONSTRAINT `fk_comment_itemInfo1` FOREIGN KEY (`itemInfo_iNo`) REFERENCES `iteminfo` (`iNo`),
  CONSTRAINT `fk_comment_notice1` FOREIGN KEY (`notice_nNo`) REFERENCES `notice` (`nNo`),
  CONSTRAINT `fk_comment_q&a1` FOREIGN KEY (`q&a_nNo`) REFERENCES `q&a` (`nNo`),
  CONSTRAINT `fk_comment_tip1` FOREIGN KEY (`tip_tNo`) REFERENCES `tip` (`tNo`),
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iteminfo`
--

DROP TABLE IF EXISTS `iteminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iteminfo` (
  `iNo` int NOT NULL AUTO_INCREMENT,
  `iTitle` varchar(45) DEFAULT NULL,
  `iContent` text,
  `iImg` varchar(100) DEFAULT NULL,
  `iHits` int DEFAULT NULL,
  PRIMARY KEY (`iNo`),
  UNIQUE KEY `pNo_UNIQUE` (`iNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iteminfo`
--

LOCK TABLES `iteminfo` WRITE;
/*!40000 ALTER TABLE `iteminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `iteminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `nNo` int NOT NULL AUTO_INCREMENT,
  `nTitle` varchar(45) DEFAULT NULL,
  `nContent` text,
  `pImg` varchar(100) DEFAULT NULL,
  `nHits` int DEFAULT NULL,
  PRIMARY KEY (`nNo`),
  UNIQUE KEY `pNo_UNIQUE` (`nNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q&a`
--

DROP TABLE IF EXISTS `q&a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `q&a` (
  `nNo` int NOT NULL AUTO_INCREMENT,
  `nTitle` varchar(45) DEFAULT NULL,
  `nContent` text,
  `pImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nNo`),
  UNIQUE KEY `pNo_UNIQUE` (`nNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q&a`
--

LOCK TABLES `q&a` WRITE;
/*!40000 ALTER TABLE `q&a` DISABLE KEYS */;
/*!40000 ALTER TABLE `q&a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip`
--

DROP TABLE IF EXISTS `tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip` (
  `tNo` int NOT NULL AUTO_INCREMENT,
  `tTitle` varchar(45) DEFAULT NULL,
  `tContent` text,
  `tImg` varchar(100) DEFAULT NULL,
  `tHits` int DEFAULT NULL,
  PRIMARY KEY (`tNo`),
  UNIQUE KEY `pNo_UNIQUE` (`tNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip`
--

LOCK TABLES `tip` WRITE;
/*!40000 ALTER TABLE `tip` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `pw` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `tel` int DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `github` varchar(45) DEFAULT NULL,
  `withdrawDate` datetime DEFAULT NULL,
  `signupDate` datetime DEFAULT NULL,
  `adminNum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `write`
--

DROP TABLE IF EXISTS `write`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `write` (
  `wRegistDate` datetime DEFAULT NULL,
  `wEditDate` datetime DEFAULT NULL,
  `wDelDate` datetime DEFAULT NULL,
  `user_email` varchar(50) NOT NULL,
  `notice_nNo` int NOT NULL,
  `itemInfo_iNo` int NOT NULL,
  `tip_tNo` int NOT NULL,
  `q&a_nNo` int NOT NULL,
  PRIMARY KEY (`user_email`,`notice_nNo`,`itemInfo_iNo`,`tip_tNo`,`q&a_nNo`),
  KEY `fk_write_notice1_idx` (`notice_nNo`),
  KEY `fk_write_itemInfo1_idx` (`itemInfo_iNo`),
  KEY `fk_write_tip1_idx` (`tip_tNo`),
  KEY `fk_write_q&a1_idx` (`q&a_nNo`),
  CONSTRAINT `fk_write_itemInfo1` FOREIGN KEY (`itemInfo_iNo`) REFERENCES `iteminfo` (`iNo`),
  CONSTRAINT `fk_write_notice1` FOREIGN KEY (`notice_nNo`) REFERENCES `notice` (`nNo`),
  CONSTRAINT `fk_write_q&a1` FOREIGN KEY (`q&a_nNo`) REFERENCES `q&a` (`nNo`),
  CONSTRAINT `fk_write_tip1` FOREIGN KEY (`tip_tNo`) REFERENCES `tip` (`tNo`),
  CONSTRAINT `fk_write_user1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `write`
--

LOCK TABLES `write` WRITE;
/*!40000 ALTER TABLE `write` DISABLE KEYS */;
/*!40000 ALTER TABLE `write` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 16:06:11
