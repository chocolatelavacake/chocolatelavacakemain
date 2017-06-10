-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: laps
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
  `approverid_apl` int(11) NOT NULL,
  `uid_apl` int(11) NOT NULL,
  PRIMARY KEY (`approverid_apl`,`uid_apl`),
  CONSTRAINT `approverid_apl` FOREIGN KEY (`approverid_apl`) REFERENCES `user` (`uid_usr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval`
--

LOCK TABLES `approval` WRITE;
/*!40000 ALTER TABLE `approval` DISABLE KEYS */;
INSERT INTO `approval` VALUES (10001,10001),(10001,10002),(10001,10003),(10001,10004),(10002,10002),(10002,10003),(10002,10004),(10002,10005),(10002,10006),(10002,10007);
/*!40000 ALTER TABLE `approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `date_clr` date NOT NULL,
  `name_clr` varchar(100) DEFAULT NULL,
  `desc_clr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`date_clr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES ('2017-07-04','Independence Day','America'),('2017-08-09','Singapore National Day','Majulah');
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leaverecord`
--

DROP TABLE IF EXISTS `leaverecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leaverecord` (
  `leaveid_lrd` int(11) NOT NULL,
  `uid_lrd` int(11) NOT NULL,
  `fromdate_lrd` date NOT NULL,
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
  PRIMARY KEY (`leaveid_lrd`,`uid_lrd`,`fromdate_lrd`),
  KEY `uid_lrd_idx` (`uid_lrd`),
  CONSTRAINT `uid_lrd` FOREIGN KEY (`uid_lrd`) REFERENCES `user` (`uid_usr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leaverecord`
--

LOCK TABLES `leaverecord` WRITE;
/*!40000 ALTER TABLE `leaverecord` DISABLE KEYS */;
INSERT INTO `leaverecord` VALUES (1,10001,'2017-06-16',10,'Annual','Full','going home to rest','work passed to Alice','No','dont contact me','Approved',10001,'yay'),(2,10003,'2017-06-19',18,'Annual','Full','xoxo','none','Yes','22344556','Applied',NULL,NULL),(3,10003,'2017-05-01',30,'Medical','Full','sick','none','No','22344556','Approved',10002,'get well soon');
/*!40000 ALTER TABLE `leaverecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `overtime`
--

DROP TABLE IF EXISTS `overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `overtime` (
  `ocid_ote` int(11) NOT NULL,
  `uid_ote` int(11) NOT NULL,
  `date_ote` date NOT NULL,
  `fromtime_ote` time NOT NULL,
  `numhours_ote` double DEFAULT NULL,
  `projectname_ote` varchar(100) DEFAULT NULL,
  `desc_ote` varchar(500) DEFAULT NULL,
  `overtimestatus_ote` varchar(50) DEFAULT NULL,
  `approverid_ote` int(11) DEFAULT NULL,
  `approvercomment_ote` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ocid_ote`,`uid_ote`,`date_ote`,`fromtime_ote`),
  KEY `uid_ote_idx` (`uid_ote`),
  CONSTRAINT `uid_ote` FOREIGN KEY (`uid_ote`) REFERENCES `user` (`uid_usr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `overtime`
--

LOCK TABLES `overtime` WRITE;
/*!40000 ALTER TABLE `overtime` DISABLE KEYS */;
INSERT INTO `overtime` VALUES (1,10001,'2017-06-09','19:05:00',2.5,'own business','fixing bugs','Applied',NULL,NULL);
/*!40000 ALTER TABLE `overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `uid_ros` int(11) NOT NULL,
  `role_ros` varchar(100) NOT NULL,
  PRIMARY KEY (`uid_ros`,`role_ros`),
  CONSTRAINT `uid_ros` FOREIGN KEY (`uid_ros`) REFERENCES `user` (`uid_usr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (10001,'Admin'),(10001,'Manager'),(10001,'Staff'),(10002,'Admin'),(10002,'Manager'),(10002,'Staff'),(10003,'Manager'),(10003,'Staff'),(10004,'Manager'),(10004,'Staff'),(10005,'Staff'),(10006,'Staff'),(10007,'Staff');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffleaveallocation`
--

DROP TABLE IF EXISTS `staffleaveallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffleaveallocation` (
  `uid_sla` int(11) NOT NULL,
  `leavecategory_sla` varchar(50) NOT NULL,
  `year_sla` year(4) NOT NULL,
  `numdays_sla` double DEFAULT NULL,
  PRIMARY KEY (`uid_sla`,`leavecategory_sla`,`year_sla`),
  CONSTRAINT `uid_sla` FOREIGN KEY (`uid_sla`) REFERENCES `user` (`uid_usr`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffleaveallocation`
--

LOCK TABLES `staffleaveallocation` WRITE;
/*!40000 ALTER TABLE `staffleaveallocation` DISABLE KEYS */;
INSERT INTO `staffleaveallocation` VALUES (10001,'Annual',2017,14),(10001,'Annual',2018,17),(10001,'Compensation',2017,0),(10001,'Compensation',2018,0),(10001,'Medical',2017,60),(10001,'Medical',2018,59),(10002,'Annual',2017,14),(10002,'Compensation',2017,0),(10002,'Medical',2017,60),(10003,'Annual',2017,18),(10003,'Compensation',2017,0),(10003,'Medical',2017,60),(10004,'Annual',2017,14),(10004,'Compensation',2017,0),(10004,'Medical',2017,60),(10005,'Annual',2017,18),(10005,'Compensation',2017,0),(10005,'Medical',2017,60);
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

-- Dump completed on 2017-06-10 14:59:34
