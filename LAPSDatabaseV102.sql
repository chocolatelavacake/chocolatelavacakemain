-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: laps1
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `approval`
--

DROP TABLE IF EXISTS `approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `approval` (
  `id_apl` int(11) NOT NULL,
  `approverid_apl` int(11) DEFAULT NULL,
  `uid_apl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_apl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval`
--

LOCK TABLES `approval` WRITE;
/*!40000 ALTER TABLE `approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `id_clr` int(11) NOT NULL,
  `date_clr` date DEFAULT NULL,
  `name_clr` varchar(100) DEFAULT NULL,
  `desc_clr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_clr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES (1,'2017-07-04','Independence Day','America'),(2,'2017-08-09','Singapore National Day','Majulah');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaverecord`
--

DROP TABLE IF EXISTS `leaverecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaverecord` (
  `id_lrd` int(11) NOT NULL,
  `uid_lrd` int(11) DEFAULT NULL,
  `fromdate_lrd` date DEFAULT NULL,
  `todate_lrd` date DEFAULT NULL,
  `numdays_lrd` double DEFAULT NULL,
  `leavecategory_lrd` varchar(50) DEFAULT NULL,
  `timeofday_lrd` varchar(50) DEFAULT NULL,
  `desc_lrd` varchar(500) DEFAULT NULL,
  `workdsm_lrd` varchar(500) DEFAULT NULL,
  `overseas_lrd` varchar(50) DEFAULT NULL,
  `contactdetails_lrd` varchar(500) DEFAULT NULL,
  `leavestatus_lrd` varchar(50) DEFAULT NULL,
  `approverid_lrd` int(11) DEFAULT NULL,
  `approvercomment_lrd` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_lrd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaverecord`
--

LOCK TABLES `leaverecord` WRITE;
/*!40000 ALTER TABLE `leaverecord` DISABLE KEYS */;
INSERT INTO `leaverecord` VALUES (1,10001,'2017-06-16','2017-06-29',10,'Annual','Full','going home to rest','work passed to Alice','No','dont contact me','Approved',NULL,NULL),(2,10003,'2017-06-19','2017-07-13',18,'Annual','Full','xoxo','none','Yes','22344556','Applied',NULL,NULL),(3,10003,'2017-05-01','2017-05-30',30,'Medical','Full','sick','none','No','22344556','Approved',NULL,NULL);
/*!40000 ALTER TABLE `leaverecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overtime` (
  `id_ote` int(11) NOT NULL,
  `uid_ote` int(11) DEFAULT NULL,
  `date_ote` date DEFAULT NULL,
  `fromtime_ote` time DEFAULT NULL,
  `totime_ote` time DEFAULT NULL,
  `numhours_ote` double DEFAULT NULL,
  `projectname_ote` varchar(100) DEFAULT NULL,
  `desc_ote` varchar(500) DEFAULT NULL,
  `overtimestatus_ote` varchar(50) DEFAULT NULL,
  `approverid_ote` int(11) DEFAULT NULL,
  `approvercomment_ote` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_ote`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime`
--

LOCK TABLES `overtime` WRITE;
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
INSERT INTO `overtime` VALUES (1,10001,'2017-06-09','19:05:00','21:35:00',2.5,'own business','fixing bugs','Applied',NULL,NULL);
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id_ros` int(11) NOT NULL,
  `uid_ros` int(11) DEFAULT NULL,
  `role_ros` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_ros`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,10001,'Admin'),(2,10001,'Manager'),(3,10001,'Staff'),(4,10002,'Admin'),(5,10002,'Manager'),(6,10002,'Staff'),(7,10003,'Manager'),(8,10003,'Staff'),(9,10004,'Manager'),(10,10004,'Staff'),(11,10005,'Staff'),(12,10006,'Staff'),(13,10007,'Staff');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffleaveallocation`
--

DROP TABLE IF EXISTS `staffleaveallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffleaveallocation` (
  `id_sla` int(11) NOT NULL,
  `uid_sla` int(11) DEFAULT NULL,
  `leavecategory_sla` varchar(50) DEFAULT NULL,
  `year_sla` year(4) DEFAULT NULL,
  `numdays_sla` double DEFAULT NULL,
  PRIMARY KEY (`id_sla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffleaveallocation`
--

LOCK TABLES `staffleaveallocation` WRITE;
/*!40000 ALTER TABLE `staffleaveallocation` DISABLE KEYS */;
INSERT INTO `staffleaveallocation` VALUES (1,10001,'Medical',2017,60),(2,10001,'Medical',2018,59),(3,10002,'Annual',2017,14),(4,10002,'Compensation',2017,0),(5,10002,'Medical',2017,60),(6,10003,'Annual',2017,18),(7,10003,'Compensation',2017,0),(8,10003,'Medical',2017,60),(9,10004,'Annual',2017,14),(10,10004,'Compensation',2017,0),(11,10004,'Medical',2017,60),(12,10005,'Annual',2017,18),(13,10005,'Compensation',2017,0),(14,10005,'Medical',2017,60);
/*!40000 ALTER TABLE `staffleaveallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid_usr` int(11) NOT NULL,
  `username_usr` varchar(50) DEFAULT NULL,
  `password_usr` varchar(50) DEFAULT NULL,
  `firstname_usr` varchar(100) DEFAULT NULL,
  `lastname_usr` varchar(100) DEFAULT NULL,
  `designation_usr` varchar(50) DEFAULT NULL,
  `email_usr` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid_usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (10001,'ad1','ad1','Admin','One','Superuser','tommystillman@gmail.com'),(10002,'Alice','alice123','Alice','Avery','Administrative','e0167296@u.nus.edu'),(10003,'Bert','bert123','Bert','Bob','Professional','e0167296@u.nus.edu'),(10004,'Cindy','cindy123','Cindy','Class','Administrative','e0167296@u.nus.edu'),(10005,'Dan','dan123','Dan','Brown','Professional',NULL),(10006,'Elise','elise123','Elise','Edward','Professional',NULL),(10007,'Faye','faye123','Faye','Wong','Administrative',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-12 14:40:25
