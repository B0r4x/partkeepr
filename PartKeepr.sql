-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: FusiRND
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BatchJob`
--

DROP TABLE IF EXISTS `BatchJob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BatchJob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `baseEntity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_AF3CBF045E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BatchJob`
--

LOCK TABLES `BatchJob` WRITE;
/*!40000 ALTER TABLE `BatchJob` DISABLE KEYS */;
/*!40000 ALTER TABLE `BatchJob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BatchJobQueryField`
--

DROP TABLE IF EXISTS `BatchJobQueryField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BatchJobQueryField` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operator` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dynamic` tinyint(1) NOT NULL,
  `batchJob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6118E78CABE62C64` (`batchJob_id`),
  CONSTRAINT `FK_6118E78CABE62C64` FOREIGN KEY (`batchJob_id`) REFERENCES `BatchJob` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BatchJobQueryField`
--

LOCK TABLES `BatchJobQueryField` WRITE;
/*!40000 ALTER TABLE `BatchJobQueryField` DISABLE KEYS */;
/*!40000 ALTER TABLE `BatchJobQueryField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BatchJobUpdateField`
--

DROP TABLE IF EXISTS `BatchJobUpdateField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BatchJobUpdateField` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dynamic` tinyint(1) NOT NULL,
  `batchJob_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E1ADA7DFABE62C64` (`batchJob_id`),
  CONSTRAINT `FK_E1ADA7DFABE62C64` FOREIGN KEY (`batchJob_id`) REFERENCES `BatchJob` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BatchJobUpdateField`
--

LOCK TABLES `BatchJobUpdateField` WRITE;
/*!40000 ALTER TABLE `BatchJobUpdateField` DISABLE KEYS */;
/*!40000 ALTER TABLE `BatchJobUpdateField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CachedImage`
--

DROP TABLE IF EXISTS `CachedImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CachedImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `originalId` int(11) NOT NULL,
  `originalType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cacheFile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CachedImage`
--

LOCK TABLES `CachedImage` WRITE;
/*!40000 ALTER TABLE `CachedImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `CachedImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CronLogger`
--

DROP TABLE IF EXISTS `CronLogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CronLogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastRunDate` datetime NOT NULL,
  `cronjob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cronjob` (`cronjob`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CronLogger`
--

LOCK TABLES `CronLogger` WRITE;
/*!40000 ALTER TABLE `CronLogger` DISABLE KEYS */;
INSERT INTO `CronLogger` VALUES (7,'2021-08-12 12:00:02','partkeepr:cron:synctips'),(8,'2021-08-12 12:00:03','partkeepr:cron:create-statistic-snapshot');
/*!40000 ALTER TABLE `CronLogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Distributor`
--

DROP TABLE IF EXISTS `Distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `skuurl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledForReports` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2559D8A65E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distributor`
--

LOCK TABLES `Distributor` WRITE;
/*!40000 ALTER TABLE `Distributor` DISABLE KEYS */;
INSERT INTO `Distributor` VALUES (1,'LCSC','','https://lcsc.com/','','','','','',1);
/*!40000 ALTER TABLE `Distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOSUser`
--

DROP TABLE IF EXISTS `FOSUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOSUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_37EF34F492FC23A8` (`username_canonical`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOSUser`
--

LOCK TABLES `FOSUser` WRITE;
/*!40000 ALTER TABLE `FOSUser` DISABLE KEYS */;
INSERT INTO `FOSUser` VALUES (1,'admin','admin',1,'m59jxmri6vkc8scgk8004088k084gww','5Yney+2HCslHc+spwTdGnVG3+7b2F9X+Cj3zcCzk5csSxWbATKNKNPKwcRr5n6mtxZYt1JP5uHIe9baVflFI3A==',NULL,0,0,NULL,NULL,NULL,'a:1:{i:0;s:16:\"ROLE_SUPER_ADMIN\";}',0,NULL,'',''),(2,'alim','alim',1,'etgsgzvoqxw0c88ssc0s4gwcsk04oks','+kB0PrbZifuQ5VPTdHdsRX1jVx83xqeIPlK+Zl0tVZoNl6f7SpsHcyzwad5wevv9Jif13uLcYf1xy8EZFf5OHQ==',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'muhamadalim424@gmail.com','muhamadalim424@gmail.com'),(3,'yusron','yusron',1,'1e2xf1zw9nok040084gg8scsc4soss0','Iwakj9/njl/5YWfvQVYd3Ukxr3VEnJMH42mFhMPV+jGYuST5x3vNzZcKLEJ23vjnue1i0tHJd8eMm6sl6eETkw==',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'',''),(4,'dhika','dhika',1,'7ctbbmywg7k8www0wcsow8kgcg4g004','vK5pZuOw/S1/gTvdyLgpy4EvMo77yk1NaFUEq7kAqQSrkZ9Lkd0fArE1rzDSL5irHDWmwxesCj9uYLX40UgPGA==',NULL,0,0,NULL,NULL,NULL,'a:0:{}',0,NULL,'','');
/*!40000 ALTER TABLE `FOSUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Footprint`
--

DROP TABLE IF EXISTS `Footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7CF324945E237E06` (`name`),
  KEY `IDX_7CF3249412469DE2` (`category_id`),
  CONSTRAINT `FK_7CF3249412469DE2` FOREIGN KEY (`category_id`) REFERENCES `FootprintCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Footprint`
--

LOCK TABLES `Footprint` WRITE;
/*!40000 ALTER TABLE `Footprint` DISABLE KEYS */;
INSERT INTO `Footprint` VALUES (1,3,'CBGA-32','32-Lead Ceramic Ball Grid Array'),(2,5,'FCBGA-576','576-Ball Ball Grid Array, Thermally Enhanced'),(3,7,'PBGA-119','119-Ball Plastic Ball Grid Array'),(4,9,'PBGA-169','169-Ball Plastic Ball Grid Array'),(5,11,'PBGA-225','225-Ball Plastic a Ball Grid Array'),(6,13,'PBGA-260','260-Ball Plastic Ball Grid Array'),(7,15,'PBGA-297','297-Ball Plastic Ball Grid Array'),(8,17,'PBGA-304','304-Lead Plastic Ball Grid Array'),(9,19,'PBGA-316','316-Lead Plastic Ball Grid Array'),(10,21,'PBGA-324','324-Ball Plastic Ball Grid Array'),(11,23,'PBGA-385','385-Lead Ball Grid Array'),(12,25,'PBGA-400','400-Ball Plastic Ball Grid Array'),(13,27,'PBGA-484','484-Ball Plastic Ball Grid Array'),(14,29,'PBGA-625','625-Ball Plastic Ball Grid Array'),(15,31,'PBGA-676','676-Ball Plastic Ball Grid Array'),(16,33,'SBGA-256','256-Ball Ball Grid Array, Thermally Enhanced'),(17,35,'SBGA-304','304-Ball Ball Grid Array, Thermally Enhanced'),(18,37,'SBGA-432','432-Ball Ball Grid Array, Thermally Enhanced'),(19,39,'CerDIP-8','8-Lead Ceramic Dual In-Line Package'),(20,41,'CerDIP-14','14-Lead Ceramic Dual In-Line Package'),(21,43,'CerDIP-16','16-Lead Ceramic Dual In-Line Package'),(22,45,'CerDIP-18','18-Lead Ceramic Dual In-Line Package'),(23,47,'CerDIP-20','20-Lead Ceramic Dual In-Line Package'),(24,49,'CerDIP-24 Narrow','24-Lead Ceramic Dual In-Line Package - Narrow Body'),(25,51,'CerDIP-24 Wide','24-Lead Ceramic Dual In-Line Package - Wide Body'),(26,53,'CerDIP-28','28-Lead Ceramic Dual In-Line Package'),(27,55,'CerDIP-40','40-Lead Ceramic Dual In-Line Package'),(28,57,'PDIP-8','8-Lead Plastic Dual In-Line Package'),(29,59,'PDIP-14','14-Lead Plastic Dual In-Line Package'),(30,61,'PDIP-16','16-Lead Plastic Dual In-Line Package'),(31,63,'PDIP-18','18-Lead Plastic Dual In-Line Package'),(32,65,'PDIP-20','20-Lead Plastic Dual In-Line Package'),(33,67,'PDIP-24','24-Lead Plastic Dual In-Line Package'),(34,69,'PDIP-28 Narrow','28-Lead Plastic Dual In-Line Package, Narrow Body'),(35,71,'PDIP-28 Wide','28-Lead Plastic Dual In-Line Package, Wide Body'),(36,NULL,'SOIC-N-EP-8','8-Lead Standard Small Outline Package, with Expose Pad'),(37,72,'1206',''),(38,1,'0805',''),(40,72,'0603',''),(42,1,'0402',''),(43,1,'2010',''),(44,1,'1210',''),(45,1,'3528',''),(46,1,'0804',''),(47,1,'SMD 6.0x6.0x4.5',''),(48,76,'3216',''),(49,76,'T/H',''),(50,76,'SMD',''),(51,76,'SMD-3225_4P',''),(52,76,'SOT-223',''),(53,76,'SOP-8',''),(54,76,'8-SOIC',''),(55,76,'14-TSSOP',''),(56,76,'MSOP-10',''),(57,76,'16-SOIC',''),(58,76,'SOT-25',''),(59,76,'14-SOIC',''),(60,76,'TSOT-23-5',''),(61,76,'16-TSSOP',''),(62,76,'VSSOP-10',''),(63,76,'20-TSSOP',''),(64,76,'SOT-363',''),(65,76,'ARRAY-4',''),(66,76,'18-SOIC',''),(67,76,'8-TSSOP',''),(68,76,'8-TSSOP,8-MSOP',''),(69,76,'SMD-4',''),(70,76,'SOT-23',''),(71,76,'SOT-23-3',''),(73,76,'SC-70-6',''),(74,76,'SMA(DO-214AC)',''),(75,76,'SOD123W',''),(76,76,'SOD-123F',''),(77,76,'DSN1608-2',''),(78,76,'SOD323',''),(79,76,'2312',''),(80,76,'2917','');
/*!40000 ALTER TABLE `Footprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintAttachment`
--

DROP TABLE IF EXISTS `FootprintAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footprint_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7B7388A151364C98` (`footprint_id`),
  CONSTRAINT `FK_7B7388A151364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintAttachment`
--

LOCK TABLES `FootprintAttachment` WRITE;
/*!40000 ALTER TABLE `FootprintAttachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `FootprintAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintCategory`
--

DROP TABLE IF EXISTS `FootprintCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `categoryPath` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_C026BA6A727ACA70` (`parent_id`),
  KEY `IDX_C026BA6ADA439252` (`lft`),
  KEY `IDX_C026BA6AD5E02D69` (`rgt`),
  CONSTRAINT `FK_C026BA6A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `FootprintCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintCategory`
--

LOCK TABLES `FootprintCategory` WRITE;
/*!40000 ALTER TABLE `FootprintCategory` DISABLE KEYS */;
INSERT INTO `FootprintCategory` VALUES (1,NULL,1,146,0,1,'Root Category',NULL,'Root Category'),(2,1,2,5,1,1,'BGA',NULL,'Root Category ➤ BGA'),(3,2,3,4,2,1,'CBGA',NULL,'Root Category ➤ BGA ➤ CBGA'),(4,1,6,9,1,1,'BGA',NULL,'Root Category ➤ BGA'),(5,4,7,8,2,1,'FCBGA',NULL,'Root Category ➤ BGA ➤ FCBGA'),(6,1,10,13,1,1,'BGA',NULL,'Root Category ➤ BGA'),(7,6,11,12,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(8,1,14,17,1,1,'BGA',NULL,'Root Category ➤ BGA'),(9,8,15,16,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(10,1,18,21,1,1,'BGA',NULL,'Root Category ➤ BGA'),(11,10,19,20,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(12,1,22,25,1,1,'BGA',NULL,'Root Category ➤ BGA'),(13,12,23,24,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(14,1,26,29,1,1,'BGA',NULL,'Root Category ➤ BGA'),(15,14,27,28,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(16,1,30,33,1,1,'BGA',NULL,'Root Category ➤ BGA'),(17,16,31,32,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(18,1,34,37,1,1,'BGA',NULL,'Root Category ➤ BGA'),(19,18,35,36,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(20,1,38,41,1,1,'BGA',NULL,'Root Category ➤ BGA'),(21,20,39,40,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(22,1,42,45,1,1,'BGA',NULL,'Root Category ➤ BGA'),(23,22,43,44,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(24,1,46,49,1,1,'BGA',NULL,'Root Category ➤ BGA'),(25,24,47,48,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(26,1,50,53,1,1,'BGA',NULL,'Root Category ➤ BGA'),(27,26,51,52,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(28,1,54,57,1,1,'BGA',NULL,'Root Category ➤ BGA'),(29,28,55,56,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(30,1,58,61,1,1,'BGA',NULL,'Root Category ➤ BGA'),(31,30,59,60,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(32,1,62,65,1,1,'BGA',NULL,'Root Category ➤ BGA'),(33,32,63,64,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(34,1,66,69,1,1,'BGA',NULL,'Root Category ➤ BGA'),(35,34,67,68,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(36,1,70,73,1,1,'BGA',NULL,'Root Category ➤ BGA'),(37,36,71,72,2,1,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(38,1,74,77,1,1,'DIP',NULL,'Root Category ➤ DIP'),(39,38,75,76,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(40,1,78,81,1,1,'DIP',NULL,'Root Category ➤ DIP'),(41,40,79,80,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(42,1,82,85,1,1,'DIP',NULL,'Root Category ➤ DIP'),(43,42,83,84,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(44,1,86,89,1,1,'DIP',NULL,'Root Category ➤ DIP'),(45,44,87,88,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(46,1,90,93,1,1,'DIP',NULL,'Root Category ➤ DIP'),(47,46,91,92,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(48,1,94,97,1,1,'DIP',NULL,'Root Category ➤ DIP'),(49,48,95,96,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(50,1,98,101,1,1,'DIP',NULL,'Root Category ➤ DIP'),(51,50,99,100,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(52,1,102,105,1,1,'DIP',NULL,'Root Category ➤ DIP'),(53,52,103,104,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(54,1,106,109,1,1,'DIP',NULL,'Root Category ➤ DIP'),(55,54,107,108,2,1,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(56,1,110,113,1,1,'DIP',NULL,'Root Category ➤ DIP'),(57,56,111,112,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(58,1,114,117,1,1,'DIP',NULL,'Root Category ➤ DIP'),(59,58,115,116,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(60,1,118,121,1,1,'DIP',NULL,'Root Category ➤ DIP'),(61,60,119,120,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(62,1,122,125,1,1,'DIP',NULL,'Root Category ➤ DIP'),(63,62,123,124,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(64,1,126,129,1,1,'DIP',NULL,'Root Category ➤ DIP'),(65,64,127,128,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(66,1,130,133,1,1,'DIP',NULL,'Root Category ➤ DIP'),(67,66,131,132,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(68,1,134,137,1,1,'DIP',NULL,'Root Category ➤ DIP'),(69,68,135,136,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(70,1,138,141,1,1,'DIP',NULL,'Root Category ➤ DIP'),(71,70,139,140,2,1,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(72,1,142,143,1,1,'CAP','','Root Category ➤ CAP'),(76,1,144,145,1,1,'Footprint','','Root Category ➤ Footprint');
/*!40000 ALTER TABLE `FootprintCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintImage`
--

DROP TABLE IF EXISTS `FootprintImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footprint_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3B22699151364C98` (`footprint_id`),
  CONSTRAINT `FK_3B22699151364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintImage`
--

LOCK TABLES `FootprintImage` WRITE;
/*!40000 ALTER TABLE `FootprintImage` DISABLE KEYS */;
INSERT INTO `FootprintImage` VALUES (1,1,'footprint','41ee3ab6-66d6-11eb-9528-42010ab80009','CBGA-32.png','image/png',23365,'png',NULL,'2021-02-04 10:46:38'),(2,2,'footprint','41efc8ae-66d6-11eb-b8b0-42010ab80009','FCBGA-576.png','image/png',47861,'png',NULL,'2021-02-04 10:46:38'),(3,3,'footprint','41f03d98-66d6-11eb-9735-42010ab80009','PBGA-119.png','image/png',32537,'png',NULL,'2021-02-04 10:46:38'),(4,4,'footprint','41f07db2-66d6-11eb-b718-42010ab80009','PBGA-169.png','image/png',36699,'png',NULL,'2021-02-04 10:46:38'),(5,5,'footprint','41f0b5fc-66d6-11eb-b7ca-42010ab80009','PBGA-225.png','image/png',39366,'png',NULL,'2021-02-04 10:46:38'),(6,6,'footprint','41f0e630-66d6-11eb-ae3c-42010ab80009','PBGA-260.png','image/png',61202,'png',NULL,'2021-02-04 10:46:38'),(7,7,'footprint','41f13270-66d6-11eb-b4b4-42010ab80009','PBGA-297.png','image/png',68013,'png',NULL,'2021-02-04 10:46:38'),(8,8,'footprint','41f16ba0-66d6-11eb-a2d1-42010ab80009','PBGA-304.png','image/png',55833,'png',NULL,'2021-02-04 10:46:38'),(9,9,'footprint','41f19f94-66d6-11eb-a20a-42010ab80009','PBGA-316.png','image/png',55996,'png',NULL,'2021-02-04 10:46:38'),(10,10,'footprint','41f1d0ae-66d6-11eb-9f48-42010ab80009','PBGA-324.png','image/png',44882,'png',NULL,'2021-02-04 10:46:38'),(11,11,'footprint','41f1fd4a-66d6-11eb-a7ad-42010ab80009','PBGA-385.png','image/png',35146,'png',NULL,'2021-02-04 10:46:38'),(12,12,'footprint','41f229e6-66d6-11eb-b3d7-42010ab80009','PBGA-400.png','image/png',67933,'png',NULL,'2021-02-04 10:46:38'),(13,13,'footprint','41f25934-66d6-11eb-80b6-42010ab80009','PBGA-484.png','image/png',49851,'png',NULL,'2021-02-04 10:46:38'),(14,14,'footprint','41f286de-66d6-11eb-9f19-42010ab80009','PBGA-625.png','image/png',65307,'png',NULL,'2021-02-04 10:46:38'),(15,15,'footprint','41f2bb9a-66d6-11eb-bf1d-42010ab80009','PBGA-676.png','image/png',54708,'png',NULL,'2021-02-04 10:46:38'),(16,16,'footprint','41f2e87c-66d6-11eb-97bb-42010ab80009','SBGA-256.png','image/png',48636,'png',NULL,'2021-02-04 10:46:38'),(17,17,'footprint','41f312ac-66d6-11eb-9a68-42010ab80009','SBGA-304.png','image/png',51944,'png',NULL,'2021-02-04 10:46:38'),(18,18,'footprint','41f342cc-66d6-11eb-a529-42010ab80009','SBGA-432.png','image/png',63247,'png',NULL,'2021-02-04 10:46:38'),(19,19,'footprint','41f3733c-66d6-11eb-819a-42010ab80009','CERDIP-8.png','image/png',13544,'png',NULL,'2021-02-04 10:46:38'),(20,20,'footprint','41f3a244-66d6-11eb-926f-42010ab80009','CERDIP-14.png','image/png',14226,'png',NULL,'2021-02-04 10:46:38'),(21,21,'footprint','41f3d9a8-66d6-11eb-887f-42010ab80009','CERDIP-16.png','image/png',14576,'png',NULL,'2021-02-04 10:46:38'),(22,22,'footprint','41f4052c-66d6-11eb-a5a5-42010ab80009','CERDIP-18.png','image/png',9831,'png',NULL,'2021-02-04 10:46:38'),(23,23,'footprint','41f42eda-66d6-11eb-b423-42010ab80009','CERDIP-20.png','image/png',10209,'png',NULL,'2021-02-04 10:46:38'),(24,24,'footprint','41f455b8-66d6-11eb-bbf7-42010ab80009','CERDIP-24-N.png','image/png',11582,'png',NULL,'2021-02-04 10:46:38'),(25,25,'footprint','41f47dae-66d6-11eb-b346-42010ab80009','CERDIP-24-W.png','image/png',12407,'png',NULL,'2021-02-04 10:46:38'),(26,26,'footprint','41f4a568-66d6-11eb-ac93-42010ab80009','CERDIP-28.png','image/png',12233,'png',NULL,'2021-02-04 10:46:38'),(27,27,'footprint','41f4cb24-66d6-11eb-928c-42010ab80009','CERDIP-40.png','image/png',12421,'png',NULL,'2021-02-04 10:46:38'),(28,28,'footprint','41f4f342-66d6-11eb-a18a-42010ab80009','PDIP-8.png','image/png',13537,'png',NULL,'2021-02-04 10:46:38'),(29,29,'footprint','41f51aac-66d6-11eb-8f32-42010ab80009','PDIP-14.png','image/png',13779,'png',NULL,'2021-02-04 10:46:38'),(30,30,'footprint','41f54568-66d6-11eb-8e52-42010ab80009','PDIP-16.png','image/png',18305,'png',NULL,'2021-02-04 10:46:38'),(31,31,'footprint','41f57092-66d6-11eb-9d8d-42010ab80009','PDIP-18.png','image/png',14893,'png',NULL,'2021-02-04 10:46:38'),(32,32,'footprint','41f597b6-66d6-11eb-a4b1-42010ab80009','PDIP-20.png','image/png',14429,'png',NULL,'2021-02-04 10:46:38'),(33,33,'footprint','41f5beda-66d6-11eb-9a70-42010ab80009','PDIP-24.png','image/png',14647,'png',NULL,'2021-02-04 10:46:38'),(34,34,'footprint','41f5e63a-66d6-11eb-b54a-42010ab80009','PDIP-28-N.png','image/png',18703,'png',NULL,'2021-02-04 10:46:38'),(35,35,'footprint','41f60f66-66d6-11eb-9b80-42010ab80009','PDIP-28-W.png','image/png',15728,'png',NULL,'2021-02-04 10:46:38');
/*!40000 ALTER TABLE `FootprintImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridPreset`
--

DROP TABLE IF EXISTS `GridPreset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridPreset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gridDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_grid_unique` (`grid`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridPreset`
--

LOCK TABLES `GridPreset` WRITE;
/*!40000 ALTER TABLE `GridPreset` DISABLE KEYS */;
/*!40000 ALTER TABLE `GridPreset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImportPreset`
--

DROP TABLE IF EXISTS `ImportPreset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImportPreset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baseEntity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_entity_unique` (`baseEntity`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImportPreset`
--

LOCK TABLES `ImportPreset` WRITE;
/*!40000 ALTER TABLE `ImportPreset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ImportPreset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manufacturer`
--

DROP TABLE IF EXISTS `Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_253B3D245E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer`
--

LOCK TABLES `Manufacturer` WRITE;
/*!40000 ALTER TABLE `Manufacturer` DISABLE KEYS */;
INSERT INTO `Manufacturer` VALUES (1,'Integrated Circuit Designs',NULL,NULL,NULL,NULL,NULL,NULL),(2,'ACTEL',NULL,NULL,NULL,NULL,NULL,NULL),(3,'ALTINC',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Aeroflex',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Agilent Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(6,'AKM Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Alesis Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(8,'ALi (Acer Laboratories Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Allayer Communications',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Allegro Microsystems',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Alliance Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alpha Industries',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Alpha Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Altera',NULL,NULL,NULL,NULL,NULL,NULL),(15,'Advanced Micro Devices (AMD)',NULL,NULL,NULL,NULL,NULL,NULL),(16,'American Microsystems, Inc. (AMI)',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Amic Technology',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Amphus',NULL,NULL,NULL,NULL,NULL,NULL),(19,'Anachip Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(20,'ANADIGICs',NULL,NULL,NULL,NULL,NULL,NULL),(21,'Analog Devices',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Analog Systems',NULL,NULL,NULL,NULL,NULL,NULL),(23,'Anchor Chips',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Apex Microtechnology',NULL,NULL,NULL,NULL,NULL,NULL),(25,'ARK Logic',NULL,NULL,NULL,NULL,NULL,NULL),(26,'ASD',NULL,NULL,NULL,NULL,NULL,NULL),(27,'Astec Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(28,'ATC (Analog Technologie)',NULL,NULL,NULL,NULL,NULL,NULL),(29,'ATecoM',NULL,NULL,NULL,NULL,NULL,NULL),(30,'ATI Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(31,'Atmel',NULL,NULL,NULL,NULL,NULL,NULL),(32,'AT&T',NULL,NULL,NULL,NULL,NULL,NULL),(33,'AudioCodes',NULL,NULL,NULL,NULL,NULL,NULL),(34,'Aura Vision',NULL,NULL,NULL,NULL,NULL,NULL),(35,'Aureal',NULL,NULL,NULL,NULL,NULL,NULL),(36,'Austin Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Avance Logic',NULL,NULL,NULL,NULL,NULL,NULL),(38,'Bel Fuse',NULL,NULL,NULL,NULL,NULL,NULL),(39,'Benchmarq Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(40,'BI Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Bowmar/White',NULL,NULL,NULL,NULL,NULL,NULL),(42,'Brightflash',NULL,NULL,NULL,NULL,NULL,NULL),(43,'Broadcom',NULL,NULL,NULL,NULL,NULL,NULL),(44,'Brooktree(now Rockwell)',NULL,NULL,NULL,NULL,NULL,NULL),(45,'Burr Brown',NULL,NULL,NULL,NULL,NULL,NULL),(46,'California Micro Devices',NULL,NULL,NULL,NULL,NULL,NULL),(47,'Calogic',NULL,NULL,NULL,NULL,NULL,NULL),(48,'Catalyst Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(49,'Centon Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(50,'Ceramate Technical',NULL,NULL,NULL,NULL,NULL,NULL),(51,'Cherry Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(52,'Chipcon AS',NULL,NULL,NULL,NULL,NULL,NULL),(53,'Chips',NULL,NULL,NULL,NULL,NULL,NULL),(54,'Chrontel',NULL,NULL,NULL,NULL,NULL,NULL),(55,'Cirrus Logic',NULL,NULL,NULL,NULL,NULL,NULL),(56,'ComCore Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(57,'Conexant',NULL,NULL,NULL,NULL,NULL,NULL),(58,'Cosmo Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(59,'Chrystal',NULL,NULL,NULL,NULL,NULL,NULL),(60,'Cygnal',NULL,NULL,NULL,NULL,NULL,NULL),(61,'Cypress Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(62,'Cyrix Corporation',NULL,NULL,NULL,NULL,NULL,NULL),(63,'Daewoo Electronics Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(64,'Dallas Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(65,'Davicom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(66,'Data Delay Devices',NULL,NULL,NULL,NULL,NULL,NULL),(67,'Diamond Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(68,'DIOTEC',NULL,NULL,NULL,NULL,NULL,NULL),(69,'DTC Data Technology',NULL,NULL,NULL,NULL,NULL,NULL),(70,'DVDO',NULL,NULL,NULL,NULL,NULL,NULL),(71,'EG&G',NULL,NULL,NULL,NULL,NULL,NULL),(72,'Elan Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(73,'ELANTEC',NULL,NULL,NULL,NULL,NULL,NULL),(74,'Electronic Arrays',NULL,NULL,NULL,NULL,NULL,NULL),(75,'Elite Flash Storage Technology Inc. (EFST)',NULL,NULL,NULL,NULL,NULL,NULL),(76,'EM Microelectronik - Marin',NULL,NULL,NULL,NULL,NULL,NULL),(77,'Enhanced Memory Systems',NULL,NULL,NULL,NULL,NULL,NULL),(78,'Ensoniq Corp',NULL,NULL,NULL,NULL,NULL,NULL),(79,'EON Silicon Devices',NULL,NULL,NULL,NULL,NULL,NULL),(80,'Epson',NULL,NULL,NULL,NULL,NULL,NULL),(81,'Ericsson',NULL,NULL,NULL,NULL,NULL,NULL),(82,'ESS Technology',NULL,NULL,NULL,NULL,NULL,NULL),(83,'Electronic Technology',NULL,NULL,NULL,NULL,NULL,NULL),(84,'EXAR',NULL,NULL,NULL,NULL,NULL,NULL),(85,'Excel Semiconductor Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(86,'Fairschild',NULL,NULL,NULL,NULL,NULL,NULL),(87,'Freescale Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(88,'Fujitsu',NULL,NULL,NULL,NULL,NULL,NULL),(89,'Galileo Technology',NULL,NULL,NULL,NULL,NULL,NULL),(90,'Galvantech',NULL,NULL,NULL,NULL,NULL,NULL),(91,'GEC Plessey',NULL,NULL,NULL,NULL,NULL,NULL),(92,'Gennum',NULL,NULL,NULL,NULL,NULL,NULL),(93,'General Electric (Harris)',NULL,NULL,NULL,NULL,NULL,NULL),(94,'General Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(95,'G-Link Technology',NULL,NULL,NULL,NULL,NULL,NULL),(96,'Goal Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(97,'Goldstar',NULL,NULL,NULL,NULL,NULL,NULL),(98,'Gould',NULL,NULL,NULL,NULL,NULL,NULL),(99,'Greenwich Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(100,'General Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(101,'Harris Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(102,'VEB',NULL,NULL,NULL,NULL,NULL,NULL),(103,'Hitachi Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(104,'Holtek',NULL,NULL,NULL,NULL,NULL,NULL),(105,'Hewlett Packard',NULL,NULL,NULL,NULL,NULL,NULL),(106,'Hualon',NULL,NULL,NULL,NULL,NULL,NULL),(107,'Hynix Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(108,'Hyundai',NULL,NULL,NULL,NULL,NULL,NULL),(109,'IC Design',NULL,NULL,NULL,NULL,NULL,NULL),(110,'Integrated Circuit Systems (ICS)',NULL,NULL,NULL,NULL,NULL,NULL),(111,'IC - Haus',NULL,NULL,NULL,NULL,NULL,NULL),(112,'ICSI (Integrated Circuit Solution Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(113,'I-Cube',NULL,NULL,NULL,NULL,NULL,NULL),(114,'IC Works',NULL,NULL,NULL,NULL,NULL,NULL),(115,'Integrated Device Technology (IDT)',NULL,NULL,NULL,NULL,NULL,NULL),(116,'IGS Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(117,'IMPALA Linear',NULL,NULL,NULL,NULL,NULL,NULL),(118,'IMP',NULL,NULL,NULL,NULL,NULL,NULL),(119,'Infineon',NULL,NULL,NULL,NULL,NULL,NULL),(120,'INMOS',NULL,NULL,NULL,NULL,NULL,NULL),(121,'Intel',NULL,NULL,NULL,NULL,NULL,NULL),(122,'Intersil',NULL,NULL,NULL,NULL,NULL,NULL),(123,'International Rectifier',NULL,NULL,NULL,NULL,NULL,NULL),(124,'Information Storage Devices',NULL,NULL,NULL,NULL,NULL,NULL),(125,'ISSI (Integrated Silicon Solution, Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(126,'Integrated Technology Express',NULL,NULL,NULL,NULL,NULL,NULL),(127,'ITT Semiconductor (Micronas Intermetall)',NULL,NULL,NULL,NULL,NULL,NULL),(128,'IXYS',NULL,NULL,NULL,NULL,NULL,NULL),(129,'Korea Electronics (KEC)',NULL,NULL,NULL,NULL,NULL,NULL),(130,'Kota Microcircuits',NULL,NULL,NULL,NULL,NULL,NULL),(131,'Lattice Semiconductor Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(132,'Lansdale Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(133,'Level One Communications',NULL,NULL,NULL,NULL,NULL,NULL),(134,'LG Semicon (Lucky Goldstar Electronic Co.)',NULL,NULL,NULL,NULL,NULL,NULL),(135,'Linear Technology',NULL,NULL,NULL,NULL,NULL,NULL),(136,'Linfinity Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(137,'Lite-On',NULL,NULL,NULL,NULL,NULL,NULL),(138,'Lucent Technologies (AT&T Microelectronics)',NULL,NULL,NULL,NULL,NULL,NULL),(139,'Macronix International',NULL,NULL,NULL,NULL,NULL,NULL),(140,'Marvell Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(141,'Matsushita Panasonic',NULL,NULL,NULL,NULL,NULL,NULL),(142,'Maxim Dallas',NULL,NULL,NULL,NULL,NULL,NULL),(143,'Media Vision',NULL,NULL,NULL,NULL,NULL,NULL),(144,'Microchip (Arizona Michrochip Technology)',NULL,NULL,NULL,NULL,NULL,NULL),(145,'Matra MHS',NULL,NULL,NULL,NULL,NULL,NULL),(146,'Micrel Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(147,'Micronas',NULL,NULL,NULL,NULL,NULL,NULL),(148,'Micronix Integrated Systems',NULL,NULL,NULL,NULL,NULL,NULL),(149,'Micron Technology, Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(150,'Microsemi',NULL,NULL,NULL,NULL,NULL,NULL),(151,'Mini-Circuits',NULL,NULL,NULL,NULL,NULL,NULL),(152,'Mitel Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(153,'Mitsubishi Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(154,'Micro Linear',NULL,NULL,NULL,NULL,NULL,NULL),(155,'MMI (Monolithic Memories, Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(156,'Mosaic Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(157,'Mosel Vitelic',NULL,NULL,NULL,NULL,NULL,NULL),(158,'MOS Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(159,'Mostek',NULL,NULL,NULL,NULL,NULL,NULL),(160,'MoSys',NULL,NULL,NULL,NULL,NULL,NULL),(161,'Motorola',NULL,NULL,NULL,NULL,NULL,NULL),(162,'Microtune',NULL,NULL,NULL,NULL,NULL,NULL),(163,'M-Systems',NULL,NULL,NULL,NULL,NULL,NULL),(164,'Murata Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL),(165,'MWave (IBM)',NULL,NULL,NULL,NULL,NULL,NULL),(166,'Myson Technology',NULL,NULL,NULL,NULL,NULL,NULL),(167,'NEC Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(168,'NexFlash Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(169,'New Japan Radio',NULL,NULL,NULL,NULL,NULL,NULL),(170,'National Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(171,'NVidia Corporation',NULL,NULL,NULL,NULL,NULL,NULL),(172,'Oak Technology',NULL,NULL,NULL,NULL,NULL,NULL),(173,'Oki Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(174,'Opti',NULL,NULL,NULL,NULL,NULL,NULL),(175,'Orbit Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(176,'Oren Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(177,'Performance Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(178,'Pericom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(179,'PhaseLink Laboratories',NULL,NULL,NULL,NULL,NULL,NULL),(180,'Philips Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(181,'PLX Technology',NULL,NULL,NULL,NULL,NULL,NULL),(182,'PMC- Sierra',NULL,NULL,NULL,NULL,NULL,NULL),(183,'Precision Monolithics',NULL,NULL,NULL,NULL,NULL,NULL),(184,'Princeton Technology',NULL,NULL,NULL,NULL,NULL,NULL),(185,'PowerSmart',NULL,NULL,NULL,NULL,NULL,NULL),(186,'QuickLogic',NULL,NULL,NULL,NULL,NULL,NULL),(187,'Qlogic',NULL,NULL,NULL,NULL,NULL,NULL),(188,'Quality Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(189,'Rabbit Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(190,'Ramtron International Co.',NULL,NULL,NULL,NULL,NULL,NULL),(191,'Raytheon Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(192,'RCA Solid State',NULL,NULL,NULL,NULL,NULL,NULL),(193,'Realtek Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(194,'Rectron',NULL,NULL,NULL,NULL,NULL,NULL),(195,'Rendition',NULL,NULL,NULL,NULL,NULL,NULL),(196,'Renesas Technology',NULL,NULL,NULL,NULL,NULL,NULL),(197,'Rockwell',NULL,NULL,NULL,NULL,NULL,NULL),(198,'Rohm Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(199,'S3',NULL,NULL,NULL,NULL,NULL,NULL),(200,'Sage',NULL,NULL,NULL,NULL,NULL,NULL),(201,'Saifun Semiconductors Ltd.',NULL,NULL,NULL,NULL,NULL,NULL),(202,'Sames',NULL,NULL,NULL,NULL,NULL,NULL),(203,'Samsung',NULL,NULL,NULL,NULL,NULL,NULL),(204,'Sanken',NULL,NULL,NULL,NULL,NULL,NULL),(205,'Sanyo',NULL,NULL,NULL,NULL,NULL,NULL),(206,'Scenix',NULL,NULL,NULL,NULL,NULL,NULL),(207,'Samsung Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(208,'SEEQ Technology',NULL,NULL,NULL,NULL,NULL,NULL),(209,'Seiko Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(210,'Semtech',NULL,NULL,NULL,NULL,NULL,NULL),(211,'SGS-Ates',NULL,NULL,NULL,NULL,NULL,NULL),(212,'SGS-Thomson Microelectonics ST-M)',NULL,NULL,NULL,NULL,NULL,NULL),(213,'Sharp Microelectronics (USA)',NULL,NULL,NULL,NULL,NULL,NULL),(214,'Shindengen',NULL,NULL,NULL,NULL,NULL,NULL),(215,'Siemens Microelectronics, Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(216,'Sierra',NULL,NULL,NULL,NULL,NULL,NULL),(217,'Sigma Tel',NULL,NULL,NULL,NULL,NULL,NULL),(218,'Signetics',NULL,NULL,NULL,NULL,NULL,NULL),(219,'Silicon Laboratories',NULL,NULL,NULL,NULL,NULL,NULL),(220,'Silicon Magic',NULL,NULL,NULL,NULL,NULL,NULL),(221,'Simtec Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(222,'Siliconix',NULL,NULL,NULL,NULL,NULL,NULL),(223,'Siliconians',NULL,NULL,NULL,NULL,NULL,NULL),(224,'Sipex',NULL,NULL,NULL,NULL,NULL,NULL),(225,'Silicon Integrated Systems',NULL,NULL,NULL,NULL,NULL,NULL),(226,'SMC',NULL,NULL,NULL,NULL,NULL,NULL),(227,'Standard Microsystems',NULL,NULL,NULL,NULL,NULL,NULL),(228,'Sony Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(229,'Space Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(230,'Spectek',NULL,NULL,NULL,NULL,NULL,NULL),(231,'Signal Processing Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(232,'Solid State Scientific',NULL,NULL,NULL,NULL,NULL,NULL),(233,'Silicon Storage Technology (SST)',NULL,NULL,NULL,NULL,NULL,NULL),(234,'STMicroelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(235,'SUMMIT Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(236,'Synergy Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(237,'Synertek',NULL,NULL,NULL,NULL,NULL,NULL),(238,'Taiwan Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(239,'TDK Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(240,'Teccor Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(241,'TelCom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(242,'Teledyne',NULL,NULL,NULL,NULL,NULL,NULL),(243,'Telefunken',NULL,NULL,NULL,NULL,NULL,NULL),(244,'Teltone',NULL,NULL,NULL,NULL,NULL,NULL),(245,'Thomson-CSF',NULL,NULL,NULL,NULL,NULL,NULL),(246,'Texas Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(247,'Toko Amerika',NULL,NULL,NULL,NULL,NULL,NULL),(248,'Toshiba (US)',NULL,NULL,NULL,NULL,NULL,NULL),(249,'Trident',NULL,NULL,NULL,NULL,NULL,NULL),(250,'TriQuint Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(251,'Triscend',NULL,NULL,NULL,NULL,NULL,NULL),(252,'Tseng Labs',NULL,NULL,NULL,NULL,NULL,NULL),(253,'Tundra',NULL,NULL,NULL,NULL,NULL,NULL),(254,'Turbo IC',NULL,NULL,NULL,NULL,NULL,NULL),(255,'Ubicom',NULL,NULL,NULL,NULL,NULL,NULL),(256,'United Microelectronics Corp (UMC)',NULL,NULL,NULL,NULL,NULL,NULL),(257,'Unitrode',NULL,NULL,NULL,NULL,NULL,NULL),(258,'USAR Systems',NULL,NULL,NULL,NULL,NULL,NULL),(259,'United Technologies Microelectronics Center (UTMC)',NULL,NULL,NULL,NULL,NULL,NULL),(260,'Utron',NULL,NULL,NULL,NULL,NULL,NULL),(261,'V3 Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(262,'Vadem',NULL,NULL,NULL,NULL,NULL,NULL),(263,'Vanguard International Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(264,'Vantis',NULL,NULL,NULL,NULL,NULL,NULL),(265,'Via Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(266,'Virata',NULL,NULL,NULL,NULL,NULL,NULL),(267,'Vishay',NULL,NULL,NULL,NULL,NULL,NULL),(268,'Vision Tech',NULL,NULL,NULL,NULL,NULL,NULL),(269,'Vitelic',NULL,NULL,NULL,NULL,NULL,NULL),(270,'VLSI Technology',NULL,NULL,NULL,NULL,NULL,NULL),(271,'Volterra',NULL,NULL,NULL,NULL,NULL,NULL),(272,'VTC',NULL,NULL,NULL,NULL,NULL,NULL),(273,'Waferscale Integration (WSI)',NULL,NULL,NULL,NULL,NULL,NULL),(274,'Western Digital',NULL,NULL,NULL,NULL,NULL,NULL),(275,'Weitek',NULL,NULL,NULL,NULL,NULL,NULL),(276,'Winbond',NULL,NULL,NULL,NULL,NULL,NULL),(277,'Wofson Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(278,'Xwmics',NULL,NULL,NULL,NULL,NULL,NULL),(279,'Xicor',NULL,NULL,NULL,NULL,NULL,NULL),(280,'Xilinx',NULL,NULL,NULL,NULL,NULL,NULL),(281,'Yamaha',NULL,NULL,NULL,NULL,NULL,NULL),(282,'Zetex Semiconductors',NULL,NULL,NULL,NULL,NULL,NULL),(283,'Zilog',NULL,NULL,NULL,NULL,NULL,NULL),(284,'ZMD (Zentrum Mikroelektronik Dresden)',NULL,NULL,NULL,NULL,NULL,NULL),(285,'Zoran',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ManufacturerICLogo`
--

DROP TABLE IF EXISTS `ManufacturerICLogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ManufacturerICLogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3F1EF213A23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_3F1EF213A23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ManufacturerICLogo`
--

LOCK TABLES `ManufacturerICLogo` WRITE;
/*!40000 ALTER TABLE `ManufacturerICLogo` DISABLE KEYS */;
INSERT INTO `ManufacturerICLogo` VALUES (1,1,'iclogo','42652400-66d6-11eb-be54-42010ab80009','acer.png','image/png',2195,'png',NULL,'2021-02-04 10:46:38'),(2,2,'iclogo','42658120-66d6-11eb-a868-42010ab80009','actel.png','image/png',5003,'png',NULL,'2021-02-04 10:46:38'),(3,3,'iclogo','4265b6e0-66d6-11eb-b0d1-42010ab80009','advldev.png','image/png',1835,'png',NULL,'2021-02-04 10:46:38'),(4,4,'iclogo','4265e606-66d6-11eb-baf8-42010ab80009','aeroflex1.png','image/png',9649,'png',NULL,'2021-02-04 10:46:38'),(5,4,'iclogo','426602a8-66d6-11eb-8755-42010ab80009','aeroflex2.png','image/png',4562,'png',NULL,'2021-02-04 10:46:38'),(6,5,'iclogo','42662b48-66d6-11eb-96d4-42010ab80009','agilent.png','image/png',5264,'png',NULL,'2021-02-04 10:46:38'),(7,6,'iclogo','42665884-66d6-11eb-86f1-42010ab80009','akm.png','image/png',2204,'png',NULL,'2021-02-04 10:46:38'),(8,7,'iclogo','4266762a-66d6-11eb-bbb0-42010ab80009','alesis.png','image/png',1475,'png',NULL,'2021-02-04 10:46:38'),(9,8,'iclogo','4266922c-66d6-11eb-a226-42010ab80009','ali1.png','image/png',2462,'png',NULL,'2021-02-04 10:46:38'),(10,8,'iclogo','42669dee-66d6-11eb-aace-42010ab80009','ali2.png','image/png',1784,'png',NULL,'2021-02-04 10:46:38'),(11,9,'iclogo','4266b89c-66d6-11eb-b5a3-42010ab80009','allayer.png','image/png',1869,'png',NULL,'2021-02-04 10:46:38'),(12,10,'iclogo','4266d200-66d6-11eb-80c5-42010ab80009','allegro.png','image/png',1475,'png',NULL,'2021-02-04 10:46:38'),(13,11,'iclogo','4266ecfe-66d6-11eb-8004-42010ab80009','alliance.png','image/png',1949,'png',NULL,'2021-02-04 10:46:38'),(14,12,'iclogo','42670626-66d6-11eb-9467-42010ab80009','alphaind.png','image/png',1403,'png',NULL,'2021-02-04 10:46:38'),(15,13,'iclogo','42671f6c-66d6-11eb-933e-42010ab80009','alphamic.png','image/png',2989,'png',NULL,'2021-02-04 10:46:38'),(16,13,'iclogo','426728a4-66d6-11eb-837f-42010ab80009','alpha.png','image/png',1534,'png',NULL,'2021-02-04 10:46:38'),(17,14,'iclogo','42674122-66d6-11eb-8d42-42010ab80009','altera.png','image/png',4064,'png',NULL,'2021-02-04 10:46:38'),(18,15,'iclogo','42675be4-66d6-11eb-8bbb-42010ab80009','amd.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(19,16,'iclogo','426775de-66d6-11eb-99fb-42010ab80009','ami1.png','image/png',2399,'png',NULL,'2021-02-04 10:46:38'),(20,16,'iclogo','42678024-66d6-11eb-af9a-42010ab80009','ami2.png','image/png',1706,'png',NULL,'2021-02-04 10:46:38'),(21,17,'iclogo','42679820-66d6-11eb-9241-42010ab80009','amic.png','image/png',2228,'png',NULL,'2021-02-04 10:46:38'),(22,18,'iclogo','4267b2ec-66d6-11eb-96b7-42010ab80009','ampus.png','image/png',6150,'png',NULL,'2021-02-04 10:46:38'),(23,19,'iclogo','4267cdf4-66d6-11eb-988a-42010ab80009','anachip.png','image/png',3549,'png',NULL,'2021-02-04 10:46:38'),(24,20,'iclogo','4267e726-66d6-11eb-9fb9-42010ab80009','anadigic.png','image/png',5147,'png',NULL,'2021-02-04 10:46:38'),(25,21,'iclogo','426801ca-66d6-11eb-8899-42010ab80009','analog1.png','image/png',1262,'png',NULL,'2021-02-04 10:46:38'),(26,21,'iclogo','42680bde-66d6-11eb-a427-42010ab80009','analog.png','image/png',1403,'png',NULL,'2021-02-04 10:46:38'),(27,22,'iclogo','4268240c-66d6-11eb-9092-42010ab80009','anasys.png','image/png',3309,'png',NULL,'2021-02-04 10:46:38'),(28,23,'iclogo','42683d20-66d6-11eb-a8f5-42010ab80009','anchorch.png','image/png',1475,'png',NULL,'2021-02-04 10:46:38'),(29,24,'iclogo','426856de-66d6-11eb-bf37-42010ab80009','apex1.png','image/png',2627,'png',NULL,'2021-02-04 10:46:38'),(30,24,'iclogo','426861e2-66d6-11eb-bdc6-42010ab80009','apex.png','image/png',3974,'png',NULL,'2021-02-04 10:46:38'),(31,25,'iclogo','42687b32-66d6-11eb-a2ba-42010ab80009','ark.png','image/png',2089,'png',NULL,'2021-02-04 10:46:38'),(32,26,'iclogo','4268952c-66d6-11eb-8036-42010ab80009','asd.png','image/png',5024,'png',NULL,'2021-02-04 10:46:38'),(33,27,'iclogo','4268af44-66d6-11eb-afdf-42010ab80009','astec.png','image/png',3369,'png',NULL,'2021-02-04 10:46:38'),(34,28,'iclogo','4268cb32-66d6-11eb-8566-42010ab80009','atc.png','image/png',8660,'png',NULL,'2021-02-04 10:46:38'),(35,29,'iclogo','4268ea9a-66d6-11eb-a087-42010ab80009','atecom.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(36,30,'iclogo','42690534-66d6-11eb-b8d5-42010ab80009','ati.png','image/png',2630,'png',NULL,'2021-02-04 10:46:38'),(37,31,'iclogo','42691f10-66d6-11eb-8027-42010ab80009','atmel.png','image/png',2843,'png',NULL,'2021-02-04 10:46:38'),(38,32,'iclogo','4269398c-66d6-11eb-822b-42010ab80009','att.png','image/png',2816,'png',NULL,'2021-02-04 10:46:38'),(39,33,'iclogo','4269520a-66d6-11eb-b788-42010ab80009','audiocod.png','image/png',2429,'png',NULL,'2021-02-04 10:46:38'),(40,34,'iclogo','42696bc8-66d6-11eb-a781-42010ab80009','auravis.png','image/png',2281,'png',NULL,'2021-02-04 10:46:38'),(41,35,'iclogo','4269843c-66d6-11eb-ac8d-42010ab80009','aureal.png','image/png',2109,'png',NULL,'2021-02-04 10:46:38'),(42,36,'iclogo','42699c1a-66d6-11eb-bd6e-42010ab80009','austin.png','image/png',2464,'png',NULL,'2021-02-04 10:46:38'),(43,37,'iclogo','4269b902-66d6-11eb-8133-42010ab80009','averlog.png','image/png',1552,'png',NULL,'2021-02-04 10:46:38'),(44,38,'iclogo','4269d34c-66d6-11eb-a38e-42010ab80009','belfuse.png','image/png',2204,'png',NULL,'2021-02-04 10:46:38'),(45,39,'iclogo','4269ec92-66d6-11eb-a1de-42010ab80009','benchmrq.png','image/png',1370,'png',NULL,'2021-02-04 10:46:38'),(46,40,'iclogo','426a03e4-66d6-11eb-9e0c-42010ab80009','bi.png','image/png',2008,'png',NULL,'2021-02-04 10:46:38'),(47,41,'iclogo','426a1c1c-66d6-11eb-ad2a-42010ab80009','bowmar_white.png','image/png',4652,'png',NULL,'2021-02-04 10:46:38'),(48,42,'iclogo','426a362a-66d6-11eb-9f73-42010ab80009','bright.png','image/png',6839,'png',NULL,'2021-02-04 10:46:38'),(49,43,'iclogo','426a502e-66d6-11eb-81ce-42010ab80009','broadcom.png','image/png',6056,'png',NULL,'2021-02-04 10:46:38'),(50,44,'iclogo','426a6aaa-66d6-11eb-870a-42010ab80009','brooktre.png','image/png',1364,'png',NULL,'2021-02-04 10:46:38'),(51,45,'iclogo','426a8328-66d6-11eb-bca5-42010ab80009','burrbrwn.png','image/png',3563,'png',NULL,'2021-02-04 10:46:38'),(52,46,'iclogo','426a9c28-66d6-11eb-9a10-42010ab80009','calmicro.png','image/png',2109,'png',NULL,'2021-02-04 10:46:38'),(53,47,'iclogo','426ab50a-66d6-11eb-937d-42010ab80009','calogic.png','image/png',3367,'png',NULL,'2021-02-04 10:46:38'),(54,48,'iclogo','426ace6e-66d6-11eb-b1dd-42010ab80009','catalys1.png','image/png',1922,'png',NULL,'2021-02-04 10:46:38'),(55,48,'iclogo','426ad788-66d6-11eb-9112-42010ab80009','catalyst.png','image/png',2228,'png',NULL,'2021-02-04 10:46:38'),(56,49,'iclogo','426af042-66d6-11eb-a5d5-42010ab80009','ccube.png','image/png',1309,'png',NULL,'2021-02-04 10:46:38'),(57,50,'iclogo','426b0924-66d6-11eb-ad5f-42010ab80009','ceramate1.png','image/png',2917,'png',NULL,'2021-02-04 10:46:38'),(58,50,'iclogo','426b1234-66d6-11eb-a2e2-42010ab80009','ceramate2.png','image/png',2917,'png',NULL,'2021-02-04 10:46:38'),(59,51,'iclogo','426b2a08-66d6-11eb-9393-42010ab80009','cherry.png','image/png',2507,'png',NULL,'2021-02-04 10:46:38'),(60,52,'iclogo','426b424a-66d6-11eb-ac97-42010ab80009','chipcon1.png','image/png',8655,'png',NULL,'2021-02-04 10:46:38'),(61,52,'iclogo','426b4f92-66d6-11eb-83ab-42010ab80009','chipcon2.png','image/png',2923,'png',NULL,'2021-02-04 10:46:38'),(62,53,'iclogo','426b6806-66d6-11eb-899b-42010ab80009','chips.png','image/png',2864,'png',NULL,'2021-02-04 10:46:38'),(63,54,'iclogo','426b8156-66d6-11eb-9a90-42010ab80009','chrontel.png','image/png',1476,'png',NULL,'2021-02-04 10:46:38'),(64,55,'iclogo','426b9948-66d6-11eb-885b-42010ab80009','cirrus.png','image/png',3218,'png',NULL,'2021-02-04 10:46:38'),(65,56,'iclogo','426bb20c-66d6-11eb-b13e-42010ab80009','comcore.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(66,57,'iclogo','426bca08-66d6-11eb-a2b0-42010ab80009','conexant.png','image/png',2051,'png',NULL,'2021-02-04 10:46:38'),(67,58,'iclogo','426be164-66d6-11eb-9e48-42010ab80009','cosmo.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(68,59,'iclogo','426bf8c0-66d6-11eb-b25d-42010ab80009','crystal.png','image/png',3605,'png',NULL,'2021-02-04 10:46:38'),(69,60,'iclogo','426c1152-66d6-11eb-8759-42010ab80009','cygnal.png','image/png',2135,'png',NULL,'2021-02-04 10:46:38'),(70,61,'iclogo','426c28e0-66d6-11eb-8c57-42010ab80009','cypres1.png','image/png',2504,'png',NULL,'2021-02-04 10:46:38'),(71,61,'iclogo','426c33b2-66d6-11eb-a7f3-42010ab80009','cypress.png','image/png',4275,'png',NULL,'2021-02-04 10:46:38'),(72,62,'iclogo','426c4d2a-66d6-11eb-9a75-42010ab80009','cyrix.png','image/png',2204,'png',NULL,'2021-02-04 10:46:38'),(73,63,'iclogo','426c658a-66d6-11eb-974d-42010ab80009','daewoo.png','image/png',1907,'png',NULL,'2021-02-04 10:46:38'),(74,64,'iclogo','426c7f34-66d6-11eb-b83a-42010ab80009','dallas1.png','image/png',1469,'png',NULL,'2021-02-04 10:46:38'),(75,64,'iclogo','426c88e4-66d6-11eb-80ee-42010ab80009','dallas2.png','image/png',1309,'png',NULL,'2021-02-04 10:46:38'),(76,64,'iclogo','426c9258-66d6-11eb-b264-42010ab80009','dallas3.png','image/png',1869,'png',NULL,'2021-02-04 10:46:38'),(77,65,'iclogo','426cab26-66d6-11eb-b8af-42010ab80009','davicom.png','image/png',4589,'png',NULL,'2021-02-04 10:46:38'),(78,66,'iclogo','426cc50c-66d6-11eb-9a39-42010ab80009','ddd.png','image/png',3235,'png',NULL,'2021-02-04 10:46:38'),(79,67,'iclogo','426cdf24-66d6-11eb-be0e-42010ab80009','diamond.png','image/png',2504,'png',NULL,'2021-02-04 10:46:38'),(80,68,'iclogo','426cf75c-66d6-11eb-9fd7-42010ab80009','diotec.png','image/png',1454,'png',NULL,'2021-02-04 10:46:38'),(81,69,'iclogo','426d0fd0-66d6-11eb-81fa-42010ab80009','dtc1.png','image/png',2513,'png',NULL,'2021-02-04 10:46:38'),(82,69,'iclogo','426d1a2a-66d6-11eb-889a-42010ab80009','dtc2.png','image/png',1670,'png',NULL,'2021-02-04 10:46:38'),(83,70,'iclogo','426d329e-66d6-11eb-adc6-42010ab80009','dvdo.png','image/png',2357,'png',NULL,'2021-02-04 10:46:38'),(84,71,'iclogo','426d4b44-66d6-11eb-b909-42010ab80009','egg.png','image/png',1628,'png',NULL,'2021-02-04 10:46:38'),(85,72,'iclogo','426d63cc-66d6-11eb-adaa-42010ab80009','elan.png','image/png',13826,'png',NULL,'2021-02-04 10:46:38'),(86,73,'iclogo','426d84e2-66d6-11eb-adc1-42010ab80009','elantec1.png','image/png',1400,'png',NULL,'2021-02-04 10:46:38'),(87,73,'iclogo','426d8dd4-66d6-11eb-818c-42010ab80009','elantec.png','image/png',3274,'png',NULL,'2021-02-04 10:46:38'),(88,74,'iclogo','426da5a8-66d6-11eb-8937-42010ab80009','elec_arrays.png','image/png',5602,'png',NULL,'2021-02-04 10:46:38'),(89,75,'iclogo','426dbf7a-66d6-11eb-81d0-42010ab80009','elite[1].png','image/png',8285,'png',NULL,'2021-02-04 10:46:38'),(90,76,'iclogo','426dd92e-66d6-11eb-8d83-42010ab80009','emmicro.png','image/png',3599,'png',NULL,'2021-02-04 10:46:38'),(91,77,'iclogo','426df27e-66d6-11eb-9819-42010ab80009','enhmemsy.png','image/png',1403,'png',NULL,'2021-02-04 10:46:38'),(92,78,'iclogo','426e0ade-66d6-11eb-ad2a-42010ab80009','ensoniq.png','image/png',3557,'png',NULL,'2021-02-04 10:46:38'),(93,79,'iclogo','426e2334-66d6-11eb-a803-42010ab80009','eon.png','image/png',5393,'png',NULL,'2021-02-04 10:46:38'),(94,80,'iclogo','426e3dce-66d6-11eb-9470-42010ab80009','epson1.png','image/png',2349,'png',NULL,'2021-02-04 10:46:38'),(95,80,'iclogo','426e4706-66d6-11eb-a481-42010ab80009','epson2.png','image/png',2405,'png',NULL,'2021-02-04 10:46:38'),(96,81,'iclogo','426e5f2a-66d6-11eb-85f4-42010ab80009','ericsson.png','image/png',4184,'png',NULL,'2021-02-04 10:46:38'),(97,82,'iclogo','426e7c1c-66d6-11eb-89eb-42010ab80009','ess.png','image/png',3030,'png',NULL,'2021-02-04 10:46:38'),(98,83,'iclogo','426e9576-66d6-11eb-a15d-42010ab80009','etc.png','image/png',2189,'png',NULL,'2021-02-04 10:46:38'),(99,84,'iclogo','426eae3a-66d6-11eb-97af-42010ab80009','exar.png','image/png',2771,'png',NULL,'2021-02-04 10:46:38'),(100,85,'iclogo','426ec604-66d6-11eb-bad2-42010ab80009','excelsemi1.png','image/png',7632,'png',NULL,'2021-02-04 10:46:38'),(101,85,'iclogo','426ed2ac-66d6-11eb-a4b5-42010ab80009','excelsemi2.png','image/png',2339,'png',NULL,'2021-02-04 10:46:38'),(102,85,'iclogo','426edaf4-66d6-11eb-a0fd-42010ab80009','exel.png','image/png',2771,'png',NULL,'2021-02-04 10:46:38'),(103,86,'iclogo','426ef28c-66d6-11eb-998c-42010ab80009','fairchil.png','image/png',1552,'png',NULL,'2021-02-04 10:46:38'),(104,87,'iclogo','426f0af6-66d6-11eb-b19e-42010ab80009','freescale.png','image/png',3840,'png',NULL,'2021-02-04 10:46:38'),(105,88,'iclogo','426f266c-66d6-11eb-9d37-42010ab80009','fujielec.png','image/png',5048,'png',NULL,'2021-02-04 10:46:38'),(106,88,'iclogo','426f30da-66d6-11eb-995a-42010ab80009','fujitsu2.png','image/png',1860,'png',NULL,'2021-02-04 10:46:38'),(107,89,'iclogo','426f4a7a-66d6-11eb-93e5-42010ab80009','galileo.png','image/png',3779,'png',NULL,'2021-02-04 10:46:38'),(108,90,'iclogo','426f6348-66d6-11eb-b4cc-42010ab80009','galvant.png','image/png',2669,'png',NULL,'2021-02-04 10:46:38'),(109,91,'iclogo','426f7ae0-66d6-11eb-b6f6-42010ab80009','gecples.png','image/png',2312,'png',NULL,'2021-02-04 10:46:38'),(110,92,'iclogo','426f9250-66d6-11eb-b476-42010ab80009','gennum.png','image/png',2614,'png',NULL,'2021-02-04 10:46:38'),(111,93,'iclogo','426fab3c-66d6-11eb-8425-42010ab80009','ge.png','image/png',2321,'png',NULL,'2021-02-04 10:46:38'),(112,94,'iclogo','426fc338-66d6-11eb-a2de-42010ab80009','gi1.png','image/png',1385,'png',NULL,'2021-02-04 10:46:38'),(113,94,'iclogo','426fcd42-66d6-11eb-8890-42010ab80009','gi.png','image/png',1691,'png',NULL,'2021-02-04 10:46:38'),(114,95,'iclogo','426fe4ee-66d6-11eb-b4a1-42010ab80009','glink.png','image/png',1706,'png',NULL,'2021-02-04 10:46:38'),(115,96,'iclogo','426ffc86-66d6-11eb-98a5-42010ab80009','goal1.png','image/png',9092,'png',NULL,'2021-02-04 10:46:38'),(116,96,'iclogo','42700848-66d6-11eb-a4dc-42010ab80009','goal2.png','image/png',9649,'png',NULL,'2021-02-04 10:46:38'),(117,97,'iclogo','427021a2-66d6-11eb-b810-42010ab80009','goldstar1.png','image/png',2923,'png',NULL,'2021-02-04 10:46:38'),(118,97,'iclogo','42702a8a-66d6-11eb-a12a-42010ab80009','goldstar2.png','image/png',11387,'png',NULL,'2021-02-04 10:46:38'),(119,98,'iclogo','42704416-66d6-11eb-8ece-42010ab80009','gould.png','image/png',1549,'png',NULL,'2021-02-04 10:46:38'),(120,99,'iclogo','42705cc6-66d6-11eb-a5df-42010ab80009','greenwich.png','image/png',9761,'png',NULL,'2021-02-04 10:46:38'),(121,100,'iclogo','427078aa-66d6-11eb-abec-42010ab80009','gsemi.png','image/png',1704,'png',NULL,'2021-02-04 10:46:38'),(122,101,'iclogo','4270922c-66d6-11eb-939c-42010ab80009','harris1.png','image/png',1549,'png',NULL,'2021-02-04 10:46:38'),(123,101,'iclogo','42709c22-66d6-11eb-b5fb-42010ab80009','harris2.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(124,102,'iclogo','4270b3ce-66d6-11eb-aa24-42010ab80009','hfo.png','image/png',1958,'png',NULL,'2021-02-04 10:46:38'),(125,103,'iclogo','4270ccba-66d6-11eb-9cd0-42010ab80009','hitachi.png','image/png',2611,'png',NULL,'2021-02-04 10:46:38'),(126,104,'iclogo','4270e420-66d6-11eb-9a37-42010ab80009','holtek.png','image/png',2160,'png',NULL,'2021-02-04 10:46:38'),(127,105,'iclogo','4270fd20-66d6-11eb-a4ed-42010ab80009','hp.png','image/png',2464,'png',NULL,'2021-02-04 10:46:38'),(128,106,'iclogo','427115c6-66d6-11eb-90ee-42010ab80009','hualon.png','image/png',2864,'png',NULL,'2021-02-04 10:46:38'),(129,107,'iclogo','42712db8-66d6-11eb-b363-42010ab80009','hynix.png','image/png',8444,'png',NULL,'2021-02-04 10:46:38'),(130,108,'iclogo','42714802-66d6-11eb-88f3-42010ab80009','hyundai2.png','image/png',2269,'png',NULL,'2021-02-04 10:46:38'),(131,109,'iclogo','42715f90-66d6-11eb-b5bc-42010ab80009','icdesign.png','image/png',3014,'png',NULL,'2021-02-04 10:46:38'),(132,110,'iclogo','42717ba6-66d6-11eb-b19e-42010ab80009','icd.png','image/png',1641,'png',NULL,'2021-02-04 10:46:38'),(133,110,'iclogo','4271860a-66d6-11eb-b745-42010ab80009','ics.png','image/png',2042,'png',NULL,'2021-02-04 10:46:38'),(134,111,'iclogo','42719d98-66d6-11eb-83d4-42010ab80009','ichaus1.png','image/png',3370,'png',NULL,'2021-02-04 10:46:38'),(135,111,'iclogo','4271a68a-66d6-11eb-83c7-42010ab80009','ichaus.png','image/png',1552,'png',NULL,'2021-02-04 10:46:38'),(136,112,'iclogo','4271bf30-66d6-11eb-9ec5-42010ab80009','icsi.png','image/png',4049,'png',NULL,'2021-02-04 10:46:38'),(137,113,'iclogo','4271d718-66d6-11eb-a85e-42010ab80009','icube.png','image/png',1629,'png',NULL,'2021-02-04 10:46:38'),(138,114,'iclogo','4271eeba-66d6-11eb-a4d9-42010ab80009','icworks.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(139,115,'iclogo','427206ac-66d6-11eb-8297-42010ab80009','idt1.png','image/png',3995,'png',NULL,'2021-02-04 10:46:38'),(140,115,'iclogo','42720fbc-66d6-11eb-846a-42010ab80009','idt.png','image/png',1553,'png',NULL,'2021-02-04 10:46:38'),(141,116,'iclogo','427227c2-66d6-11eb-ac09-42010ab80009','igstech.png','image/png',3832,'png',NULL,'2021-02-04 10:46:38'),(142,117,'iclogo','42724086-66d6-11eb-afa8-42010ab80009','impala.png','image/png',1628,'png',NULL,'2021-02-04 10:46:38'),(143,118,'iclogo','4272590e-66d6-11eb-bbbb-42010ab80009','imp.png','image/png',2175,'png',NULL,'2021-02-04 10:46:38'),(144,119,'iclogo','427270ec-66d6-11eb-ab8f-42010ab80009','infineon.png','image/png',4511,'png',NULL,'2021-02-04 10:46:38'),(145,120,'iclogo','4272897e-66d6-11eb-b5ab-42010ab80009','inmos.png','image/png',3365,'png',NULL,'2021-02-04 10:46:38'),(146,121,'iclogo','4272a24c-66d6-11eb-a7e8-42010ab80009','intel2.png','image/png',2010,'png',NULL,'2021-02-04 10:46:38'),(147,122,'iclogo','4272ba48-66d6-11eb-a62d-42010ab80009','intresil4.png','image/png',2614,'png',NULL,'2021-02-04 10:46:38'),(148,122,'iclogo','4272c39e-66d6-11eb-bf10-42010ab80009','intrsil1.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(149,122,'iclogo','4272caec-66d6-11eb-9bd0-42010ab80009','intrsil2.png','image/png',2520,'png',NULL,'2021-02-04 10:46:38'),(150,122,'iclogo','4272d32a-66d6-11eb-9f05-42010ab80009','intrsil3.png','image/png',3295,'png',NULL,'2021-02-04 10:46:38'),(151,123,'iclogo','4272ead6-66d6-11eb-a27c-42010ab80009','ir.png','image/png',2729,'png',NULL,'2021-02-04 10:46:38'),(152,124,'iclogo','427303ea-66d6-11eb-a509-42010ab80009','isd.png','image/png',2554,'png',NULL,'2021-02-04 10:46:38'),(153,125,'iclogo','42731cfe-66d6-11eb-ba04-42010ab80009','issi.png','image/png',3030,'png',NULL,'2021-02-04 10:46:38'),(154,126,'iclogo','4273346e-66d6-11eb-967c-42010ab80009','ite.png','image/png',3302,'png',NULL,'2021-02-04 10:46:38'),(155,127,'iclogo','42735052-66d6-11eb-b2bd-42010ab80009','itt.png','image/png',2483,'png',NULL,'2021-02-04 10:46:38'),(156,128,'iclogo','42736812-66d6-11eb-9e2e-42010ab80009','ixys.png','image/png',3575,'png',NULL,'2021-02-04 10:46:38'),(157,129,'iclogo','4273804a-66d6-11eb-a2d4-42010ab80009','kec.png','image/png',2567,'png',NULL,'2021-02-04 10:46:38'),(158,130,'iclogo','42739922-66d6-11eb-a26b-42010ab80009','kota.png','image/png',1552,'png',NULL,'2021-02-04 10:46:38'),(159,131,'iclogo','4273b0e2-66d6-11eb-8e5e-42010ab80009','lattice1.png','image/png',1768,'png',NULL,'2021-02-04 10:46:38'),(160,131,'iclogo','4273bb0a-66d6-11eb-93cf-42010ab80009','lattice2.png','image/png',1519,'png',NULL,'2021-02-04 10:46:38'),(161,131,'iclogo','4273c226-66d6-11eb-a3e3-42010ab80009','lattice3.png','image/png',1216,'png',NULL,'2021-02-04 10:46:38'),(162,132,'iclogo','4273d93c-66d6-11eb-bc7d-42010ab80009','lds1.png','image/png',2136,'png',NULL,'2021-02-04 10:46:38'),(163,132,'iclogo','4273e21a-66d6-11eb-9b9d-42010ab80009','lds.png','image/png',1959,'png',NULL,'2021-02-04 10:46:38'),(164,133,'iclogo','4273f8ea-66d6-11eb-a281-42010ab80009','levone.png','image/png',4189,'png',NULL,'2021-02-04 10:46:38'),(165,134,'iclogo','427416b8-66d6-11eb-ac5f-42010ab80009','lgs1.png','image/png',2417,'png',NULL,'2021-02-04 10:46:38'),(166,134,'iclogo','4274211c-66d6-11eb-9cdc-42010ab80009','lgs.png','image/png',737,'png',NULL,'2021-02-04 10:46:38'),(167,135,'iclogo','42743ee0-66d6-11eb-aa8d-42010ab80009','linear.png','image/png',2486,'png',NULL,'2021-02-04 10:46:38'),(168,136,'iclogo','42745c18-66d6-11eb-909d-42010ab80009','linfin.png','image/png',4844,'png',NULL,'2021-02-04 10:46:38'),(169,137,'iclogo','42747892-66d6-11eb-88ae-42010ab80009','liteon.png','image/png',2388,'png',NULL,'2021-02-04 10:46:38'),(170,138,'iclogo','42749692-66d6-11eb-bba8-42010ab80009','lucent.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(171,139,'iclogo','4274b0aa-66d6-11eb-9939-42010ab80009','macronix.png','image/png',2324,'png',NULL,'2021-02-04 10:46:38'),(172,140,'iclogo','4274cb4e-66d6-11eb-9186-42010ab80009','marvell.png','image/png',3131,'png',NULL,'2021-02-04 10:46:38'),(173,141,'iclogo','4274e3ae-66d6-11eb-8e5c-42010ab80009','matsush1.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(174,141,'iclogo','4274ecd2-66d6-11eb-bec4-42010ab80009','matsushi.png','image/png',2029,'png',NULL,'2021-02-04 10:46:38'),(175,142,'iclogo','42750406-66d6-11eb-8223-42010ab80009','maxim.png','image/png',2690,'png',NULL,'2021-02-04 10:46:38'),(176,143,'iclogo','42751c52-66d6-11eb-a126-42010ab80009','mediavi1.png','image/png',2189,'png',NULL,'2021-02-04 10:46:38'),(177,143,'iclogo','4275254e-66d6-11eb-b377-42010ab80009','mediavi2.png','image/png',2487,'png',NULL,'2021-02-04 10:46:38'),(178,144,'iclogo','42753eb2-66d6-11eb-8f2b-42010ab80009','me.png','image/png',2411,'png',NULL,'2021-02-04 10:46:38'),(179,144,'iclogo','427547c2-66d6-11eb-ae79-42010ab80009','microchp.png','image/png',2814,'png',NULL,'2021-02-04 10:46:38'),(180,145,'iclogo','427561bc-66d6-11eb-9f70-42010ab80009','mhs2.png','image/png',2036,'png',NULL,'2021-02-04 10:46:38'),(181,145,'iclogo','42756b1c-66d6-11eb-8def-42010ab80009','mhs.png','image/png',1870,'png',NULL,'2021-02-04 10:46:38'),(182,146,'iclogo','42758264-66d6-11eb-b90c-42010ab80009','micrel1.png','image/png',9695,'png',NULL,'2021-02-04 10:46:38'),(183,146,'iclogo','42758ffc-66d6-11eb-9831-42010ab80009','micrel2.png','image/png',9695,'png',NULL,'2021-02-04 10:46:38'),(184,147,'iclogo','4275a974-66d6-11eb-a3d9-42010ab80009','micronas.png','image/png',1871,'png',NULL,'2021-02-04 10:46:38'),(185,148,'iclogo','4275c12a-66d6-11eb-b68c-42010ab80009','micronix.png','image/png',1856,'png',NULL,'2021-02-04 10:46:38'),(186,149,'iclogo','4275d93a-66d6-11eb-aaac-42010ab80009','micron.png','image/png',1763,'png',NULL,'2021-02-04 10:46:38'),(187,150,'iclogo','4275f15e-66d6-11eb-93a6-42010ab80009','microsemi1.png','image/png',3714,'png',NULL,'2021-02-04 10:46:38'),(188,150,'iclogo','4275fbfe-66d6-11eb-9cb6-42010ab80009','microsemi2.png','image/png',11992,'png',NULL,'2021-02-04 10:46:38'),(189,151,'iclogo','42761878-66d6-11eb-b35a-42010ab80009','minicirc.png','image/png',1391,'png',NULL,'2021-02-04 10:46:38'),(190,152,'iclogo','42763196-66d6-11eb-85a6-42010ab80009','mitel.png','image/png',2819,'png',NULL,'2021-02-04 10:46:38'),(191,153,'iclogo','4276499c-66d6-11eb-ad85-42010ab80009','mitsubis.png','image/png',2311,'png',NULL,'2021-02-04 10:46:38'),(192,154,'iclogo','42766166-66d6-11eb-8769-42010ab80009','mlinear.png','image/png',3377,'png',NULL,'2021-02-04 10:46:38'),(193,155,'iclogo','4276794e-66d6-11eb-81a4-42010ab80009','mmi.png','image/png',2692,'png',NULL,'2021-02-04 10:46:38'),(194,156,'iclogo','427691b8-66d6-11eb-9c44-42010ab80009','mosaic.png','image/png',2959,'png',NULL,'2021-02-04 10:46:38'),(195,157,'iclogo','4276ad7e-66d6-11eb-861d-42010ab80009','moselvit.png','image/png',2504,'png',NULL,'2021-02-04 10:46:38'),(196,158,'iclogo','4276c57a-66d6-11eb-a87c-42010ab80009','mos.png','image/png',2857,'png',NULL,'2021-02-04 10:46:38'),(197,159,'iclogo','4276ddc6-66d6-11eb-82cd-42010ab80009','mostek1.png','image/png',7502,'png',NULL,'2021-02-04 10:46:38'),(198,159,'iclogo','4276e8b6-66d6-11eb-b569-42010ab80009','mostek2.png','image/png',7502,'png',NULL,'2021-02-04 10:46:38'),(199,159,'iclogo','4276f1bc-66d6-11eb-bc57-42010ab80009','mostek3.png','image/png',2514,'png',NULL,'2021-02-04 10:46:38'),(200,160,'iclogo','427708be-66d6-11eb-9990-42010ab80009','mosys.png','image/png',2321,'png',NULL,'2021-02-04 10:46:38'),(201,161,'iclogo','4277211e-66d6-11eb-aaa4-42010ab80009','motorol1.png','image/png',999,'png',NULL,'2021-02-04 10:46:38'),(202,161,'iclogo','42772c22-66d6-11eb-8a95-42010ab80009','motorol2.png','image/png',2417,'png',NULL,'2021-02-04 10:46:38'),(203,162,'iclogo','427743d8-66d6-11eb-98a9-42010ab80009','mpd.png','image/png',2663,'png',NULL,'2021-02-04 10:46:38'),(204,163,'iclogo','42775b52-66d6-11eb-9ee3-42010ab80009','msystem.png','image/png',1670,'png',NULL,'2021-02-04 10:46:38'),(205,164,'iclogo','42777330-66d6-11eb-b61c-42010ab80009','murata1.png','image/png',4874,'png',NULL,'2021-02-04 10:46:38'),(206,164,'iclogo','42777e20-66d6-11eb-b12d-42010ab80009','murata.png','image/png',4777,'png',NULL,'2021-02-04 10:46:38'),(207,165,'iclogo','427796b2-66d6-11eb-9ce3-42010ab80009','mwave.png','image/png',3370,'png',NULL,'2021-02-04 10:46:38'),(208,166,'iclogo','4277ae68-66d6-11eb-9c9b-42010ab80009','myson.png','image/png',1932,'png',NULL,'2021-02-04 10:46:38'),(209,167,'iclogo','4277c768-66d6-11eb-9ebd-42010ab80009','nec1.png','image/png',3166,'png',NULL,'2021-02-04 10:46:38'),(210,167,'iclogo','4277d0aa-66d6-11eb-b4c6-42010ab80009','nec2.png','image/png',3071,'png',NULL,'2021-02-04 10:46:38'),(211,168,'iclogo','4277e7c0-66d6-11eb-8328-42010ab80009','nexflash.png','image/png',7789,'png',NULL,'2021-02-04 10:46:38'),(212,169,'iclogo','4278019c-66d6-11eb-bc7e-42010ab80009','njr.png','image/png',3419,'png',NULL,'2021-02-04 10:46:38'),(213,170,'iclogo','42781a24-66d6-11eb-8676-42010ab80009','ns1.png','image/png',1959,'png',NULL,'2021-02-04 10:46:38'),(214,170,'iclogo','427822d0-66d6-11eb-95ae-42010ab80009','ns2.png','image/png',1952,'png',NULL,'2021-02-04 10:46:38'),(215,171,'iclogo','42783a18-66d6-11eb-80f1-42010ab80009','nvidia.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(216,172,'iclogo','42785174-66d6-11eb-bad7-42010ab80009','oak.png','image/png',2614,'png',NULL,'2021-02-04 10:46:38'),(217,173,'iclogo','427869f2-66d6-11eb-a885-42010ab80009','oki1.png','image/png',2267,'png',NULL,'2021-02-04 10:46:38'),(218,173,'iclogo','4278735c-66d6-11eb-b130-42010ab80009','oki.png','image/png',2546,'png',NULL,'2021-02-04 10:46:38'),(219,174,'iclogo','42788b44-66d6-11eb-956b-42010ab80009','opti.png','image/png',1684,'png',NULL,'2021-02-04 10:46:38'),(220,175,'iclogo','4278a2b4-66d6-11eb-9678-42010ab80009','orbit.png','image/png',3347,'png',NULL,'2021-02-04 10:46:38'),(221,176,'iclogo','4278ba6a-66d6-11eb-8abc-42010ab80009','oren.png','image/png',3497,'png',NULL,'2021-02-04 10:46:38'),(222,177,'iclogo','4278d37e-66d6-11eb-9dbf-42010ab80009','perform.png','image/png',3284,'png',NULL,'2021-02-04 10:46:38'),(223,178,'iclogo','4278eaee-66d6-11eb-8530-42010ab80009','pericom.png','image/png',2311,'png',NULL,'2021-02-04 10:46:38'),(224,179,'iclogo','427903a8-66d6-11eb-8e44-42010ab80009','phaslink.png','image/png',2669,'png',NULL,'2021-02-04 10:46:38'),(225,180,'iclogo','42791b4a-66d6-11eb-936d-42010ab80009','philips.png','image/png',8690,'png',NULL,'2021-02-04 10:46:38'),(226,181,'iclogo','42793670-66d6-11eb-9925-42010ab80009','plx.png','image/png',4749,'png',NULL,'2021-02-04 10:46:38'),(227,182,'iclogo','42794f5c-66d6-11eb-bfd2-42010ab80009','pmc.png','image/png',3497,'png',NULL,'2021-02-04 10:46:38'),(228,183,'iclogo','42796744-66d6-11eb-8591-42010ab80009','pmi.png','image/png',3807,'png',NULL,'2021-02-04 10:46:38'),(229,184,'iclogo','42797efa-66d6-11eb-a083-42010ab80009','ptc.png','image/png',2669,'png',NULL,'2021-02-04 10:46:38'),(230,185,'iclogo','4279b7ee-66d6-11eb-80a4-42010ab80009','pwrsmart.png','image/png',1389,'png',NULL,'2021-02-04 10:46:38'),(231,186,'iclogo','4279cfd6-66d6-11eb-ba44-42010ab80009','qlogic.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(232,187,'iclogo','4279e7b4-66d6-11eb-8282-42010ab80009','qualcomm.png','image/png',3326,'png',NULL,'2021-02-04 10:46:38'),(233,188,'iclogo','4279ff24-66d6-11eb-8ef3-42010ab80009','quality.png','image/png',1309,'png',NULL,'2021-02-04 10:46:38'),(234,189,'iclogo','427a1702-66d6-11eb-8640-42010ab80009','rabbit.png','image/png',2857,'png',NULL,'2021-02-04 10:46:38'),(235,190,'iclogo','427a2ff8-66d6-11eb-a61a-42010ab80009','ramtron.png','image/png',1573,'png',NULL,'2021-02-04 10:46:38'),(236,191,'iclogo','427a4b1e-66d6-11eb-814d-42010ab80009','raytheon.png','image/png',4303,'png',NULL,'2021-02-04 10:46:38'),(237,192,'iclogo','427a641e-66d6-11eb-a84b-42010ab80009','rca.png','image/png',1860,'png',NULL,'2021-02-04 10:46:38'),(238,193,'iclogo','427a7c56-66d6-11eb-95b8-42010ab80009','realtek.png','image/png',2993,'png',NULL,'2021-02-04 10:46:38'),(239,194,'iclogo','427a9452-66d6-11eb-a5a2-42010ab80009','rectron.png','image/png',1691,'png',NULL,'2021-02-04 10:46:38'),(240,195,'iclogo','427aaca8-66d6-11eb-9a0e-42010ab80009','rendit.png','image/png',1370,'png',NULL,'2021-02-04 10:46:38'),(241,196,'iclogo','427ac436-66d6-11eb-8edf-42010ab80009','renesas.png','image/png',8761,'png',NULL,'2021-02-04 10:46:38'),(242,197,'iclogo','427adfac-66d6-11eb-82ec-42010ab80009','rockwell.png','image/png',1704,'png',NULL,'2021-02-04 10:46:38'),(243,198,'iclogo','427af73a-66d6-11eb-bf7e-42010ab80009','rohm.png','image/png',2693,'png',NULL,'2021-02-04 10:46:38'),(244,199,'iclogo','427b0f7c-66d6-11eb-977f-42010ab80009','s3.png','image/png',2189,'png',NULL,'2021-02-04 10:46:38'),(245,200,'iclogo','427b26d8-66d6-11eb-9906-42010ab80009','sage.png','image/png',2735,'png',NULL,'2021-02-04 10:46:38'),(246,201,'iclogo','427b3ef2-66d6-11eb-a871-42010ab80009','saifun.png','image/png',19242,'png',NULL,'2021-02-04 10:46:38'),(247,202,'iclogo','427b6026-66d6-11eb-aca0-42010ab80009','sames.png','image/png',2614,'png',NULL,'2021-02-04 10:46:38'),(248,203,'iclogo','427b782c-66d6-11eb-9ba2-42010ab80009','samsung.png','image/png',1841,'png',NULL,'2021-02-04 10:46:38'),(249,204,'iclogo','427b9064-66d6-11eb-bcb3-42010ab80009','sanken1.png','image/png',2214,'png',NULL,'2021-02-04 10:46:38'),(250,204,'iclogo','427b9a00-66d6-11eb-bd52-42010ab80009','sanken.png','image/png',5309,'png',NULL,'2021-02-04 10:46:38'),(251,205,'iclogo','427bb2ce-66d6-11eb-83a3-42010ab80009','sanyo1.png','image/png',2228,'png',NULL,'2021-02-04 10:46:38'),(252,205,'iclogo','427bbbd4-66d6-11eb-8069-42010ab80009','sanyo.png','image/png',2455,'png',NULL,'2021-02-04 10:46:38'),(253,206,'iclogo','427bd268-66d6-11eb-b8d3-42010ab80009','scenix.png','image/png',1869,'png',NULL,'2021-02-04 10:46:38'),(254,207,'iclogo','427bea28-66d6-11eb-ae9f-42010ab80009','sec1.png','image/png',9392,'png',NULL,'2021-02-04 10:46:38'),(255,207,'iclogo','427bf644-66d6-11eb-80f4-42010ab80009','sec.png','image/png',2051,'png',NULL,'2021-02-04 10:46:38'),(256,208,'iclogo','427c108e-66d6-11eb-b084-42010ab80009','seeq.png','image/png',2903,'png',NULL,'2021-02-04 10:46:38'),(257,209,'iclogo','427c2d30-66d6-11eb-a6ee-42010ab80009','seikoi.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(258,209,'iclogo','427c36cc-66d6-11eb-92d6-42010ab80009','semelab.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(259,210,'iclogo','427c4dba-66d6-11eb-9183-42010ab80009','semtech.png','image/png',1431,'png',NULL,'2021-02-04 10:46:38'),(260,211,'iclogo','427c657a-66d6-11eb-8a7c-42010ab80009','sgs1.png','image/png',2339,'png',NULL,'2021-02-04 10:46:38'),(261,212,'iclogo','427c7dee-66d6-11eb-bb83-42010ab80009','sgs2.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(262,213,'iclogo','427c95c2-66d6-11eb-840f-42010ab80009','sharp.png','image/png',2258,'png',NULL,'2021-02-04 10:46:38'),(263,214,'iclogo','427cae18-66d6-11eb-ad56-42010ab80009','shindgen.png','image/png',1629,'png',NULL,'2021-02-04 10:46:38'),(264,215,'iclogo','427cc588-66d6-11eb-a226-42010ab80009','siemens1.png','image/png',1216,'png',NULL,'2021-02-04 10:46:38'),(265,215,'iclogo','427cce70-66d6-11eb-a910-42010ab80009','siemens2.png','image/png',2916,'png',NULL,'2021-02-04 10:46:38'),(266,216,'iclogo','427ce522-66d6-11eb-be3b-42010ab80009','sierra.png','image/png',2321,'png',NULL,'2021-02-04 10:46:38'),(267,217,'iclogo','427cfe40-66d6-11eb-b191-42010ab80009','sigmatel.png','image/png',1790,'png',NULL,'2021-02-04 10:46:38'),(268,218,'iclogo','427d15d8-66d6-11eb-a134-42010ab80009','signetic.png','image/png',1519,'png',NULL,'2021-02-04 10:46:38'),(269,219,'iclogo','427d2cee-66d6-11eb-b234-42010ab80009','siliconlabs.png','image/png',5540,'png',NULL,'2021-02-04 10:46:38'),(270,220,'iclogo','427d46fc-66d6-11eb-9814-42010ab80009','siliconm.png','image/png',3817,'png',NULL,'2021-02-04 10:46:38'),(271,221,'iclogo','427d5fa2-66d6-11eb-aa90-42010ab80009','silicons.png','image/png',2320,'png',NULL,'2021-02-04 10:46:38'),(272,221,'iclogo','427d68bc-66d6-11eb-9810-42010ab80009','simtek.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(273,222,'iclogo','427d7fdc-66d6-11eb-9d59-42010ab80009','siliconx.png','image/png',2464,'png',NULL,'2021-02-04 10:46:38'),(274,223,'iclogo','427d972e-66d6-11eb-82fc-42010ab80009','silnans.png','image/png',1549,'png',NULL,'2021-02-04 10:46:38'),(275,224,'iclogo','427daf3e-66d6-11eb-a16c-42010ab80009','sipex.png','image/png',4029,'png',NULL,'2021-02-04 10:46:38'),(276,225,'iclogo','427dc7b2-66d6-11eb-b12b-42010ab80009','sis.png','image/png',3608,'png',NULL,'2021-02-04 10:46:38'),(277,226,'iclogo','427ddfcc-66d6-11eb-bb15-42010ab80009','smc1.png','image/png',1763,'png',NULL,'2021-02-04 10:46:38'),(278,227,'iclogo','427e01aa-66d6-11eb-8796-42010ab80009','smsc1.png','image/png',1781,'png',NULL,'2021-02-04 10:46:38'),(279,227,'iclogo','427e0fba-66d6-11eb-b09c-42010ab80009','smsc.png','image/png',2117,'png',NULL,'2021-02-04 10:46:38'),(280,228,'iclogo','427e2734-66d6-11eb-9cbb-42010ab80009','sony.png','image/png',2476,'png',NULL,'2021-02-04 10:46:38'),(281,229,'iclogo','427e3f80-66d6-11eb-b88b-42010ab80009','space.png','image/png',3377,'png',NULL,'2021-02-04 10:46:38'),(282,230,'iclogo','427e5736-66d6-11eb-8110-42010ab80009','spectek.png','image/png',2228,'png',NULL,'2021-02-04 10:46:38'),(283,231,'iclogo','427e7356-66d6-11eb-8db1-42010ab80009','spt.png','image/png',3419,'png',NULL,'2021-02-04 10:46:38'),(284,232,'iclogo','427e8dfa-66d6-11eb-acb2-42010ab80009','sss.png','image/png',1871,'png',NULL,'2021-02-04 10:46:38'),(285,233,'iclogo','427ea628-66d6-11eb-8bc9-42010ab80009','sst.png','image/png',3072,'png',NULL,'2021-02-04 10:46:38'),(286,234,'iclogo','427ebd7a-66d6-11eb-8e45-42010ab80009','st.png','image/png',1604,'png',NULL,'2021-02-04 10:46:38'),(287,235,'iclogo','427ed4fe-66d6-11eb-b1b4-42010ab80009','summit.png','image/png',11440,'png',NULL,'2021-02-04 10:46:38'),(288,236,'iclogo','427eef52-66d6-11eb-b1bd-42010ab80009','synergy.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(289,237,'iclogo','427f07ee-66d6-11eb-b24f-42010ab80009','synertek.png','image/png',1789,'png',NULL,'2021-02-04 10:46:38'),(290,238,'iclogo','427f2026-66d6-11eb-9daa-42010ab80009','taiwsemi.png','image/png',1475,'png',NULL,'2021-02-04 10:46:38'),(291,239,'iclogo','427f370a-66d6-11eb-b2cb-42010ab80009','tdk.png','image/png',3687,'png',NULL,'2021-02-04 10:46:38'),(292,240,'iclogo','427f4ea2-66d6-11eb-9955-42010ab80009','teccor.png','image/png',1869,'png',NULL,'2021-02-04 10:46:38'),(293,241,'iclogo','427f65ae-66d6-11eb-994e-42010ab80009','telcom.png','image/png',2555,'png',NULL,'2021-02-04 10:46:38'),(294,242,'iclogo','427f7e7c-66d6-11eb-84a8-42010ab80009','teledyne.png','image/png',1904,'png',NULL,'2021-02-04 10:46:38'),(295,243,'iclogo','427f9556-66d6-11eb-a04d-42010ab80009','telefunk.png','image/png',2715,'png',NULL,'2021-02-04 10:46:38'),(296,244,'iclogo','427fac6c-66d6-11eb-bb6c-42010ab80009','teltone.png','image/png',4303,'png',NULL,'2021-02-04 10:46:38'),(297,245,'iclogo','427fc6d4-66d6-11eb-8a8e-42010ab80009','thomscsf.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(298,246,'iclogo','427fddc2-66d6-11eb-b9d2-42010ab80009','ti1.png','image/png',1869,'png',NULL,'2021-02-04 10:46:38'),(299,246,'iclogo','427fe6f0-66d6-11eb-9b84-42010ab80009','ti.png','image/png',1789,'png',NULL,'2021-02-04 10:46:38'),(300,247,'iclogo','427ffcd0-66d6-11eb-a537-42010ab80009','toko.png','image/png',1907,'png',NULL,'2021-02-04 10:46:38'),(301,248,'iclogo','428014ae-66d6-11eb-80dd-42010ab80009','toshiba1.png','image/png',1922,'png',NULL,'2021-02-04 10:46:38'),(302,248,'iclogo','42801d6e-66d6-11eb-b1ea-42010ab80009','toshiba2.png','image/png',1309,'png',NULL,'2021-02-04 10:46:38'),(303,248,'iclogo','428025e8-66d6-11eb-8c66-42010ab80009','toshiba3.png','image/png',2269,'png',NULL,'2021-02-04 10:46:38'),(304,249,'iclogo','42803c7c-66d6-11eb-8dd8-42010ab80009','trident.png','image/png',1414,'png',NULL,'2021-02-04 10:46:38'),(305,250,'iclogo','428054be-66d6-11eb-a68e-42010ab80009','triquint.png','image/png',2294,'png',NULL,'2021-02-04 10:46:38'),(306,251,'iclogo','42806bac-66d6-11eb-91f0-42010ab80009','triscend.png','image/png',4521,'png',NULL,'2021-02-04 10:46:38'),(307,252,'iclogo','42808484-66d6-11eb-892c-42010ab80009','tseng.png','image/png',1466,'png',NULL,'2021-02-04 10:46:38'),(308,253,'iclogo','42809cb2-66d6-11eb-a663-42010ab80009','tundra.png','image/png',1709,'png',NULL,'2021-02-04 10:46:38'),(309,254,'iclogo','4280b3aa-66d6-11eb-9ccc-42010ab80009','turbo_ic.png','image/png',7784,'png',NULL,'2021-02-04 10:46:38'),(310,255,'iclogo','4280ce3a-66d6-11eb-b990-42010ab80009','ubicom.png','image/png',2047,'png',NULL,'2021-02-04 10:46:38'),(311,256,'iclogo','4280e578-66d6-11eb-8710-42010ab80009','umc.png','image/png',3032,'png',NULL,'2021-02-04 10:46:38'),(312,257,'iclogo','4280fe78-66d6-11eb-8cbf-42010ab80009','unitrode.png','image/png',1309,'png',NULL,'2021-02-04 10:46:38'),(313,258,'iclogo','42811566-66d6-11eb-a800-42010ab80009','usar1.png','image/png',2771,'png',NULL,'2021-02-04 10:46:38'),(314,258,'iclogo','42811e3a-66d6-11eb-bb4a-42010ab80009','usar.png','image/png',2793,'png',NULL,'2021-02-04 10:46:38'),(315,259,'iclogo','428136f4-66d6-11eb-ac70-42010ab80009','utmc.png','image/png',2047,'png',NULL,'2021-02-04 10:46:38'),(316,260,'iclogo','42814e64-66d6-11eb-bca4-42010ab80009','utron.png','image/png',2047,'png',NULL,'2021-02-04 10:46:38'),(317,261,'iclogo','428165c0-66d6-11eb-9ec5-42010ab80009','v3.png','image/png',3248,'png',NULL,'2021-02-04 10:46:38'),(318,262,'iclogo','42818082-66d6-11eb-bb06-42010ab80009','vadem.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(319,263,'iclogo','42819978-66d6-11eb-a1ab-42010ab80009','vanguard.png','image/png',1454,'png',NULL,'2021-02-04 10:46:38'),(320,264,'iclogo','4281b066-66d6-11eb-983b-42010ab80009','vantis.png','image/png',1475,'png',NULL,'2021-02-04 10:46:38'),(321,265,'iclogo','4281c808-66d6-11eb-bc4f-42010ab80009','via.png','image/png',1922,'png',NULL,'2021-02-04 10:46:38'),(322,266,'iclogo','4281e018-66d6-11eb-9911-42010ab80009','virata.png','image/png',3764,'png',NULL,'2021-02-04 10:46:38'),(323,267,'iclogo','4281f864-66d6-11eb-aacb-42010ab80009','vishay.png','image/png',4410,'png',NULL,'2021-02-04 10:46:38'),(324,268,'iclogo','4282107e-66d6-11eb-a02a-42010ab80009','vistech.png','image/png',1942,'png',NULL,'2021-02-04 10:46:38'),(325,269,'iclogo','42822c94-66d6-11eb-85ea-42010ab80009','vitelic.png','image/png',1691,'png',NULL,'2021-02-04 10:46:38'),(326,270,'iclogo','42824576-66d6-11eb-b7d2-42010ab80009','vlsi.png','image/png',1874,'png',NULL,'2021-02-04 10:46:38'),(327,271,'iclogo','42825d7c-66d6-11eb-a9da-42010ab80009','volterra.png','image/png',2029,'png',NULL,'2021-02-04 10:46:38'),(328,272,'iclogo','428274a6-66d6-11eb-b96b-42010ab80009','vtc.png','image/png',2223,'png',NULL,'2021-02-04 10:46:38'),(329,273,'iclogo','42828c3e-66d6-11eb-b555-42010ab80009','wafscale.png','image/png',2985,'png',NULL,'2021-02-04 10:46:38'),(330,274,'iclogo','4282a386-66d6-11eb-a460-42010ab80009','wdc1.png','image/png',1784,'png',NULL,'2021-02-04 10:46:38'),(331,274,'iclogo','4282ade0-66d6-11eb-ba61-42010ab80009','wdc2.png','image/png',1403,'png',NULL,'2021-02-04 10:46:38'),(332,275,'iclogo','4282c4b0-66d6-11eb-ae19-42010ab80009','weitek.png','image/png',1468,'png',NULL,'2021-02-04 10:46:38'),(333,276,'iclogo','4282dba8-66d6-11eb-834d-42010ab80009','winbond.png','image/png',5402,'png',NULL,'2021-02-04 10:46:38'),(334,277,'iclogo','4282f44e-66d6-11eb-ac71-42010ab80009','wolf.png','image/png',2343,'png',NULL,'2021-02-04 10:46:38'),(335,278,'iclogo','42830ac4-66d6-11eb-9e86-42010ab80009','xemics.png','image/png',2029,'png',NULL,'2021-02-04 10:46:38'),(336,279,'iclogo','42832202-66d6-11eb-b3b5-42010ab80009','xicor1.png','image/png',1259,'png',NULL,'2021-02-04 10:46:38'),(337,279,'iclogo','42832c02-66d6-11eb-b477-42010ab80009','xicor.png','image/png',3389,'png',NULL,'2021-02-04 10:46:38'),(338,280,'iclogo','42834214-66d6-11eb-b7dd-42010ab80009','xilinx.png','image/png',4186,'png',NULL,'2021-02-04 10:46:38'),(339,281,'iclogo','42835a24-66d6-11eb-8193-42010ab80009','yamaha.png','image/png',1779,'png',NULL,'2021-02-04 10:46:38'),(340,282,'iclogo','42837432-66d6-11eb-b99c-42010ab80009','zetex.png','image/png',1255,'png',NULL,'2021-02-04 10:46:38'),(341,283,'iclogo','42838abc-66d6-11eb-982d-42010ab80009','zilog1.png','image/png',1958,'png',NULL,'2021-02-04 10:46:38'),(342,283,'iclogo','42839372-66d6-11eb-b8e2-42010ab80009','zilog2.png','image/png',2204,'png',NULL,'2021-02-04 10:46:38'),(343,283,'iclogo','42839be2-66d6-11eb-8ef1-42010ab80009','zilog3.png','image/png',2614,'png',NULL,'2021-02-04 10:46:38'),(344,283,'iclogo','4283a2a4-66d6-11eb-9cb0-42010ab80009','zilog4.png','image/png',2405,'png',NULL,'2021-02-04 10:46:38'),(345,284,'iclogo','4283b9ce-66d6-11eb-9376-42010ab80009','zmda.png','image/png',3709,'png',NULL,'2021-02-04 10:46:38'),(346,285,'iclogo','4283d148-66d6-11eb-beaf-42010ab80009','zoran.png','image/png',2784,'png',NULL,'2021-02-04 10:46:38');
/*!40000 ALTER TABLE `ManufacturerICLogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MetaPartParameterCriteria`
--

DROP TABLE IF EXISTS `MetaPartParameterCriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MetaPartParameterCriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `partParameterName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double DEFAULT NULL,
  `normalizedValue` double DEFAULT NULL,
  `stringValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valueType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siPrefix_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6EE1D3924CE34BEC` (`part_id`),
  KEY `IDX_6EE1D39219187357` (`siPrefix_id`),
  KEY `IDX_6EE1D392F8BD700D` (`unit_id`),
  CONSTRAINT `FK_6EE1D39219187357` FOREIGN KEY (`siPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_6EE1D3924CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_6EE1D392F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MetaPartParameterCriteria`
--

LOCK TABLES `MetaPartParameterCriteria` WRITE;
/*!40000 ALTER TABLE `MetaPartParameterCriteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `MetaPartParameterCriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Part`
--

DROP TABLE IF EXISTS `Part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `footprint_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `stockLevel` int(11) NOT NULL,
  `minStockLevel` int(11) NOT NULL,
  `averagePrice` decimal(13,4) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `needsReview` tinyint(1) NOT NULL,
  `partCondition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productionRemarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `internalPartNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `removals` tinyint(1) NOT NULL,
  `lowStock` tinyint(1) NOT NULL,
  `metaPart` tinyint(1) NOT NULL DEFAULT '0',
  `partUnit_id` int(11) DEFAULT NULL,
  `storageLocation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E93DDFF812469DE2` (`category_id`),
  KEY `IDX_E93DDFF851364C98` (`footprint_id`),
  KEY `IDX_E93DDFF8F7A36E87` (`partUnit_id`),
  KEY `IDX_E93DDFF873CD58AF` (`storageLocation_id`),
  CONSTRAINT `FK_E93DDFF812469DE2` FOREIGN KEY (`category_id`) REFERENCES `PartCategory` (`id`),
  CONSTRAINT `FK_E93DDFF851364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`),
  CONSTRAINT `FK_E93DDFF873CD58AF` FOREIGN KEY (`storageLocation_id`) REFERENCES `StorageLocation` (`id`),
  CONSTRAINT `FK_E93DDFF8F7A36E87` FOREIGN KEY (`partUnit_id`) REFERENCES `PartUnit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=508 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Part`
--

LOCK TABLES `Part` WRITE;
/*!40000 ALTER TABLE `Part` DISABLE KEYS */;
INSERT INTO `Part` VALUES (1,49,NULL,'Super Capacitor 4 F / 5.5 V','Diameter = 24.6 mm. Tebal = 6 mm. Temperatur kerja : - 40 °C ~ + 70 °C. Siklus Umur : 1.2 juta x charge dan discharge.','',4,0,0.0000,'',0,'','','2021-02-08 03:47:16','',0,0,0,1,74),(2,93,NULL,'CONN HEADER R/A 8POS 2.5MM','','',8,0,0.0000,'',0,'','','2021-02-08 04:11:06','',0,0,0,1,79),(3,22,NULL,'IC MCU 32BIT 25KB FLASH 64LQFP','','',4,0,0.0000,'',0,'','','2021-02-08 04:13:36','',0,0,0,1,79),(5,48,37,'CAP CER 1UF 16V X7R 0603','','',3,0,0.0000,'',0,'','','2021-02-08 04:16:45','',0,0,0,1,79),(6,24,38,'FERRITE BEAD 40 OHM 0805 1LN','','',20,0,0.0000,'',0,'','','2021-02-08 04:24:13','',0,0,0,1,79),(7,48,37,'CAP CER 10uF 50V X5R ','','',12,0,0.0000,'',0,'','','2021-02-08 04:26:24','',0,0,0,1,79),(8,93,NULL,'CONN HEADER R/A 20POS 2.54MM','','',4,0,0.0000,'',0,'','','2021-02-08 04:27:33','',0,0,0,1,79),(9,93,NULL,'CONN HEADER R/A 6POS 2.5MM','','',10,0,0.0000,'',0,'','','2021-02-08 04:28:33','',0,0,0,1,79),(11,49,NULL,'CAP ALUM 680uF 20% 100V RADIAL','','',3,0,0.0000,'',0,'','','2021-02-08 04:32:07','',0,0,0,1,79),(12,64,NULL,'CONN RCPT USB2.0 MINI B SMD R/A','','',9,0,0.0000,'',0,'','','2021-02-08 04:33:42','',0,0,0,1,79),(13,17,NULL,'SWITCH TACTILE SPST-NO 0.05A 24V','','',8,0,0.0000,'',0,'','','2021-02-08 04:35:12','',0,0,0,1,79),(14,1,NULL,'AUTOMOTIVE QUALIFIED SIMPLE SWIT','','',25,0,0.0000,'',0,'','','2021-02-08 04:36:46','',0,0,0,1,79),(15,22,NULL,'HMC618ALP3E','IC AMP LTE 1.2GHZ-2.2GHZ 16SMT','',2,0,0.0000,'',0,'','','2021-02-08 04:38:01','',0,0,0,1,79),(17,48,NULL,'CAP CER 10uF 6.3V X5R 1206','','',30,0,0.0000,'',0,'','','2021-02-08 04:42:48','',0,0,0,1,79),(19,48,38,'CAP CER 8.2PF 250V C0G/NP0 ','','',6,0,0.0000,'',0,'','','2021-02-08 04:45:56','',0,0,0,1,79),(21,26,NULL,'RF DIR COUPLER 1.4GHZ-2GHZ SMD','','',1,0,0.0000,'',0,'','','2021-02-08 04:49:19','',0,0,0,1,79),(22,9,37,'RES SMD 4.7K OHM 1% 1/4W ','','',12,0,0.0000,'',0,'','','2021-02-08 04:50:34','',0,0,0,1,79),(23,48,38,'CAP CER 0.47UF 16V X7R','','',8,0,0.0000,'',0,'','','2021-02-08 04:54:08','',0,0,0,1,79),(24,48,38,'CAP CER 0.3PF 250V C0G/NP0 ','','',6,0,0.0000,'',0,'','','2021-02-08 04:56:15','',0,0,0,1,79),(26,22,NULL,'A2120D040N','','',2,0,0.0000,'',0,'','','2021-02-08 05:00:53','',0,0,0,1,79),(27,22,NULL,'IC REG LIN POS ADJ 800MA SOT223','LM1117IMP-ADJ/NOPB','',4,0,0.0000,'',0,'','','2021-02-08 05:03:02','',0,0,0,1,79),(28,93,NULL,'CONN HEADER SMD 80POS 2MM','','',15,0,0.0000,'',0,'','','2021-02-08 05:04:33','',0,0,0,1,79),(29,9,NULL,'RES SMD 50 OHM 2% 10W ','','',1,0,0.0000,'',0,'','','2021-02-08 05:06:35','',0,0,0,1,79),(31,1,NULL,'CMC 15A 2LN 60 OHM SMD ','','',6,0,0.0000,'',0,'','','2021-02-08 05:08:46','',0,0,0,1,79),(32,9,40,'100K 1% 1/10W 100ppm ','','',75,0,0.0000,'',0,'','','2021-02-08 06:05:21','',0,0,0,1,80),(33,9,40,'2.2K 1% 1/10W 100ppm','','',70,0,0.0000,'',0,'','','2021-02-08 06:06:51','',0,0,0,1,80),(34,9,40,'15K 1% 1/10W ','','',70,0,0.0000,'',0,'','','2021-02-08 06:08:21','',0,0,0,1,80),(35,48,38,'4.7uF 10% 25V X5R MULTIL','','',70,0,0.0000,'',0,'','','2021-02-08 06:10:29','',0,0,0,1,80),(37,9,43,'0.002 Ω 1% 2W 275ppm','','',10,0,0.0000,'',0,'','','2021-02-08 06:16:39','',0,0,0,1,80),(38,48,40,'16uF 5% 50V C0G Multila','','',70,0,0.0000,'',0,'','','2021-02-08 06:19:17','',0,0,0,1,80),(39,27,NULL,'NPM-Pre-Biased 100mA 50V 200mW ','','',50,0,0.0000,'',0,'','','2021-02-08 06:23:29','',0,0,0,1,80),(41,9,NULL,'86.6kΩ','1% ±0.1W ±100ppm','',180,0,0.0000,'',0,'','','2021-02-08 06:29:02','',0,0,0,1,80),(44,48,40,'10nF ','±10% 50V X7R Multilayer','',70,0,0.0000,'',0,'','','2021-02-08 06:34:20','',0,0,0,1,80),(45,55,45,'100uF','±20% 6.3V 5 Ω @ 100kHz ','',80,0,0.0000,'',0,'','','2021-02-08 06:37:31','',0,0,0,1,80),(46,48,40,'33pF','±5% 50V C0G','',80,0,0.0000,'',0,'','','2021-02-08 06:40:34','',0,0,0,1,80),(47,48,40,'100pF ','±5% 50V C0G ','',180,0,0.0000,'',0,'','','2021-02-08 06:41:55','',0,0,0,1,80),(48,94,NULL,'SIM Card ','6 connector SMD Card Sockets ','',10,0,0.0000,'',0,'','','2021-02-08 06:43:52','',0,0,0,1,80),(50,48,42,'3.9pF','±0.25pF 50V','',80,0,0.0000,'',0,'','','2021-02-08 06:47:22','',0,0,0,1,80),(51,48,42,'2.4pF ','±0.25pF 50V','',80,0,0.0000,'',0,'','','2021-02-08 06:50:01','',0,0,0,1,80),(52,48,40,'1uF ','±10% 50V X5R ','',70,0,0.0000,'',0,'','','2021-02-08 06:51:45','',0,0,0,1,80),(53,9,40,'10K','±5% 1/10W ±200ppm','',80,0,0.0000,'',0,'','','2021-02-08 06:53:10','',0,0,0,1,80),(54,9,40,'442 Ω','±1% 1/10W ±100ppm ','',80,0,0.0000,'',0,'','','2021-02-08 06:54:45','',0,0,0,1,80),(55,9,40,'11K','±1% 1/10W ±100ppm','',80,0,0.0000,'',0,'','','2021-02-08 06:56:04','',0,0,0,1,80),(56,9,42,'22Ω','±1% 1/16W ±200ppm ','',70,0,0.0000,'',0,'','','2021-02-08 06:57:59','',0,0,0,1,80),(57,48,NULL,'10uF','±10% 10V 1.8 Ω','',8,0,0.0000,'',0,'','','2021-02-08 06:59:49','',0,0,0,1,80),(59,95,NULL,'5201','Battery Accessories/Contacts/Springs RoHS','',10,0,0.0000,'',0,'','','2021-02-08 07:04:02','',0,0,0,1,80),(60,95,NULL,'5223','Battery Accessories/Contacts/Springs RoHS','',10,0,0.0000,'',0,'','','2021-02-08 07:05:40','',0,0,0,1,80),(61,48,42,'3.3nF','±10% 50V X7R ','',70,0,0.0000,'',0,'','','2021-02-08 07:07:24','',0,0,0,1,80),(62,22,NULL,'INA219AIDR','High Side 0V~26V 3V~5.5V SOIC','',10,0,0.0000,'',0,'','','2021-02-08 07:09:45','',0,0,0,1,80),(63,25,NULL,'40V 3A 550mV @ 3A SMA(DO-214AC)','','',160,0,0.0000,'',0,'','','2021-02-08 07:17:46','',0,0,0,1,81),(64,94,NULL,'KH-SIM1616-6PIN','Card Sockets Connectors RoHS','',5,0,0.0000,'',0,'','','2021-02-08 07:19:53','',0,0,0,1,81),(65,48,38,'22uF ','±20% 25V X5R','',9,0,0.0000,'',0,'','','2021-02-08 07:21:26','',0,0,0,1,80),(66,9,40,'6.34K','±1% 1/10W ','',300,0,0.0000,'',0,'','','2021-02-08 07:23:06','',0,0,0,1,81),(68,22,NULL,'TSSOP-14 Gates and Inverters RoHS','','',150,0,0.0000,'',0,'','','2021-02-08 07:26:17','',0,0,0,1,81),(69,9,40,'10.7K','±1% 1/10W ','',300,0,0.0000,'',0,'','','2021-02-08 07:27:24','',0,0,0,1,81),(70,43,40,'Yellow','585.5~591.5nm Light Emitting','',11,0,0.0000,'',0,'','','2021-02-08 07:29:22','',0,0,0,1,80),(71,44,NULL,'Top View Through  Hole Light Emitting Diodes','','',20,0,0.0000,'',0,'','','2021-02-08 07:31:41','',0,0,0,1,81),(72,9,40,'0.56Ω Ohm','±1% 1/10W ','',600,0,0.0000,'',0,'','','2021-02-08 07:33:25','',0,0,0,1,81),(73,9,NULL,'Variable Resistors RoHS','±25% ±250ppm SMD','',150,0,0.0000,'',0,'','','2021-02-08 07:35:20','',0,0,0,1,81),(74,9,42,'4.02K','±1% 1/16W ','',200,0,0.0000,'',0,'','','2021-02-08 07:36:49','',0,0,0,1,81),(75,66,NULL,'XH Header Male P=2.5mm','MALE PIN 0.098\"(2.50mm) ','',250,0,0.0000,'',0,'','','2021-02-08 09:23:37','',0,0,0,1,81),(76,83,NULL,'NSD10-48S12','DC-DC Converter Open frame; Input 22-72Vdc; Output 12Vdc at 0.83A','',3,0,0.0000,'',0,'','','2021-02-09 03:29:38','',0,0,0,1,84),(77,83,NULL,'Hi-Link  12v DC 0.25A','HLK-PM12 100V~240VAC Converter to 12V DC 0.25A','',7,0,0.0000,'',0,'','','2021-02-09 03:34:23','',0,0,0,1,336),(78,83,NULL,'TESLA 12VDC / 250mA','HLK-12 85~265VAC 50/60HZ  Converter to 12VDC / 250mA','',1,0,0.0000,'',0,'','','2021-02-09 03:39:00','',0,0,0,1,336),(79,83,NULL,'Hi-Link 3.3VDC 1A','HLK-PM03 100~240VAC 50/60HZ  Converter to 3.3VDC / 1A','',2,0,0.0000,'',0,'','','2021-02-09 03:44:41','',0,0,0,1,308),(80,83,NULL,'Hi-Link 5VDC 0.6A','HLK-PM01 100~240VAC 50/60HZ  Converter to 5VDC / 0.6A','',1,0,0.0000,'',0,'','','2021-02-09 03:46:20','',0,0,0,1,336),(83,87,NULL,'Oscilloscope','','',1,0,0.0000,'OK',0,'','','2021-02-09 04:12:07','',0,0,0,1,86),(84,88,NULL,'ATPRO 858D','','',1,0,0.0000,'OK',0,'','','2021-02-09 04:18:17','',0,0,0,1,86),(85,87,NULL,'Generator Power Supplay','','',1,0,0.0000,'OK',0,'','','2021-02-09 04:23:19','',0,0,0,1,86),(86,87,NULL,'TANG AMPERE','DIGITAL CLAMP MATER','',1,0,0.0000,'OK',0,'','','2021-02-09 04:35:03','',0,0,0,1,86),(87,87,NULL,'3D PRINTERS ARILLERY ','','',1,0,0.0000,'OK',0,'','','2021-02-09 04:37:09','',0,0,0,1,86),(88,87,NULL,'Oven PCB','Reflow Soldering Machine','',1,0,0.0000,'OK',0,'','','2021-02-09 04:49:41','',0,0,0,1,86),(89,90,NULL,'GNSS ','GPS SMD Communication Modules/ GNSS Modules','',6,0,0.0000,'',0,'','','2021-02-09 05:00:52','',0,0,0,1,81),(90,93,NULL,'CONN HEADER 5 POS','','',50,0,0.0000,'',0,'','','2021-02-10 03:59:33','',0,0,0,1,91),(91,93,NULL,'XHP-4','HOUSING 4 POS 2.5mm ','',68,0,0.0000,'',0,'','','2021-02-10 04:04:17','',0,0,0,1,99),(92,93,NULL,'CONN FFC PFC','10POS 0.50MM R/A & 30POS 1MM R/A','',25,0,0.0000,'',0,'','','2021-02-10 04:08:45','',0,0,0,1,113),(93,93,NULL,'CONN HEADER 2-15 PIN','XHP 2PIN R/A, CONN HEADER MALE 4POS,  CONN HEADER MALE 6POS','',25,0,0.0000,'',0,'','','2021-02-10 04:15:25','',0,0,0,1,126),(94,93,NULL,'CONN HEADER VERT 16POS GOLD','','',10,0,0.0000,'',0,'','','2021-02-10 04:18:26','',0,0,0,1,136),(95,93,NULL,'RCPT HOUSING  (4 & 5 POS)','','',50,0,0.0000,'',0,'','','2021-02-10 04:22:59','',0,0,0,1,88),(96,93,NULL,'CONN RCPT ','CONN RCPT PCB 19POS & CONN Lo Pro 2mm 14 POS  R/A','',6,0,0.0000,'',0,'','','2021-02-10 06:43:09','',0,0,0,1,101),(97,93,NULL,'CONN PLUG RCPT 6POS 1.2mm HOUSING','','',24,0,0.0000,'',0,'','','2021-02-10 10:24:19','',0,0,0,1,116),(98,93,NULL,'CONN N MALE TO SMA FAMALE ','','',2,0,0.0000,'',0,'','','2021-02-10 10:26:45','',0,0,0,1,111),(99,80,NULL,'SRD-05VDC-SL-C','Relay 5v 4 Channel With Optocupler Module','',2,0,0.0000,'',0,'','','2021-02-17 10:20:48','',0,0,0,1,86),(100,80,NULL,'JQC-3FF-S-Z ','Relay 5v 8 Channel With Optocupler Module ','',2,0,0.0000,'',0,'','','2021-02-17 10:36:51','',0,0,0,1,86),(101,84,NULL,'PC817 Module ','4 Channel PC817 3-30v Isolation Driver','',1,0,0.0000,'',0,'','','2021-02-17 10:38:49','',0,0,0,1,86),(102,63,NULL,'KF301-2P BLUE','Terminal Pcb Block Screw 2 Pin','',25,0,0.0000,'',0,'','','2021-02-17 10:49:57','',0,0,0,1,86),(103,63,NULL,'KF301-3P BLUE','Terminal Pcb Block Screw 3 Pin','',14,0,0.0000,'',0,'','','2021-02-17 10:52:09','',0,0,0,1,86),(104,63,NULL,'KF350-2P BLUE','Terminal Pcb Block Screw 2 Pin 3.5mm','',8,0,0.0000,'',0,'','','2021-02-17 10:55:19','',0,0,0,1,86),(105,63,NULL,'KF350-2P GREEN','Terminal Pcb Block Screw 2 Pin 3.5mm Green','',9,0,0.0000,'',0,'','','2021-02-17 10:56:34','',0,0,0,1,86),(106,97,NULL,'9*15CM ','PCB DOT MATRIX THRU HOLE SINGLE LAYER 9X15CM 9*15CM LUBANG BOLONG PLAT','',2,0,0.0000,'',0,'','','2021-02-17 11:01:49','',0,0,0,1,86),(107,98,NULL,'LM2596 ','ADJ Step Down Power Supply 4.5-35v to 1.25-3','',2,0,0.0000,'',0,'','','2021-02-17 11:04:47','',0,0,0,1,86),(108,80,NULL,'RS485','MAX485 TTL to RS485 Converter module','',2,0,0.0000,'',0,'','','2021-02-17 11:07:39','',0,0,0,1,86),(110,80,NULL,'ADS1115 ','16 Bit I2C 4 Channel analog to digital module','',3,0,0.0000,'',0,'','','2021-02-17 11:09:59','',0,0,0,1,86),(111,93,NULL,'RCPT 1.2mm ','6Pos WTB','',21,0,0.0000,'',0,'','','2021-02-17 14:18:35','',0,0,0,1,116),(112,93,NULL,'SMA Female Hole Plug Right Angle 90 ','Temp.range -65 to 165 degrees C (PE Cable -40 to .85 degrees C), Frequency Range DC to 12.4GHz (Semi-Gang Cable 0-6GHz), Deeper loss .15 dB/6GHz, Applications: antenna, GPS system, base station application, cable assembly, electrical components, instrumen','',6,0,0.0000,'',0,'','','2021-02-17 14:46:43','',0,0,0,1,124),(113,93,NULL,'SMA FEMALE Lurus ','','',46,0,0.0000,'',0,'','','2021-02-17 14:50:58','',0,0,0,1,124),(114,64,NULL,'USB MINI 5P SMD FEMALE','','',24,0,0.0000,'',0,'','','2021-02-17 14:59:25','',0,0,0,1,135),(115,68,NULL,'SOCKET IDC-10P W/KEY GOLD','','',20,0,0.0000,'',0,'','','2021-02-17 15:03:38','',0,0,0,1,140),(116,93,NULL,'PCI EXPMINI ','FEMALE 52P','',5,0,0.0000,'',0,'','','2021-02-17 15:09:09','',0,0,0,1,103),(117,93,NULL,'MMCX ','REPT STR 50 Ohm PCB','',5,0,0.0000,'',0,'','','2021-02-17 15:11:33','',0,0,0,1,90),(118,93,NULL,'U.FL RCPT ','STR 50 Ohm SMD','',10,0,0.0000,'',0,'','','2021-02-17 15:14:45','',0,0,0,1,91),(119,93,NULL,'XHP-2','HOUSING 2.5mm 2P','',0,0,0.0000,'',0,'','','2021-02-17 15:21:20','',0,0,0,1,112),(120,93,NULL,'Battery Holder CR2032 ','Housing battray kancing CR2031','',2,0,0.0000,'',0,'','','2021-02-17 15:25:43','',0,0,0,1,125),(121,93,NULL,'Battery Holder CR2032 SMD','','',2,0,0.0000,'',0,'','','2021-02-17 15:28:40','',0,0,0,1,125),(122,93,NULL,'CONN HEADER 23P','','',2,0,0.0000,'',0,'','','2021-02-17 15:31:49','',0,0,0,1,139),(123,25,NULL,'TVS DIODE 5.2VWM','SOT23-6','',9,0,0.0000,'',0,'','','2021-02-17 15:36:00','',0,0,0,1,137),(124,25,NULL,'DF206ST-G','bridge rectifier','',5,0,0.0000,'',0,'','','2021-02-17 15:38:19','',0,0,0,1,137),(125,25,NULL,'DIODE 6EN PURP','100V 200mA SOP80','',5,0,0.0000,'',0,'','','2021-02-17 15:40:52','',0,0,0,1,127),(126,25,NULL,'DO41 ','','',2,0,0.0000,'',0,'','','2021-02-17 15:42:47','',0,0,0,1,127),(127,25,NULL,'DIODE 4004 SMD','0805 1N','',10,0,0.0000,'',0,'','','2021-02-17 15:43:36','',0,0,0,1,127),(128,25,NULL,'DIODE SCHOTTKY 60V 3A SMD','','',10,0,0.0000,'',0,'','','2021-02-17 15:45:47','',0,0,0,1,115),(129,25,NULL,'DIODE SCHOTTKY 30V 200mA ','SOT23-3','',9,0,0.0000,'',0,'','','2021-02-17 15:48:39','',0,0,0,1,115),(130,25,NULL,'DIODE SCHOTTKY 40V 3A SMD','','',10,0,0.0000,'',0,'','','2021-02-17 15:51:00','',0,0,0,1,115),(131,25,NULL,'DIODE SCHOTTKY 30V 3A','0603','',25,0,0.0000,'',0,'','','2021-02-17 15:52:55','',0,0,0,1,115),(132,25,NULL,'DIODE SCHOTTKY 10V 3A ','SOP 323','',10,0,0.0000,'',0,'','','2021-02-17 15:54:14','',0,0,0,1,115),(133,25,NULL,'TVS DIODE 5V 9V ','SOT23-6L','',10,0,0.0000,'',0,'','','2021-02-17 15:55:44','',0,0,0,1,92),(134,25,NULL,'DIODE ZENER 300mW 3V','','',9,0,0.0000,'',0,'','','2021-02-17 15:57:01','',0,0,0,1,92),(135,93,NULL,'A107932CT-ND  1746142-1','LEAF BATTERY ','',8,0,0.0000,'',0,'','','2021-02-17 16:01:26','',0,0,0,1,123),(136,93,NULL,'CONN HEADER XH 8P 2.5MM','','',50,0,0.0000,'',0,'','','2021-02-17 16:06:07','',0,0,0,1,114),(137,93,NULL,'HOUSING XH 8P 2.5MM','','',88,0,0.0000,'',0,'','','2021-02-17 16:08:56','',0,0,0,1,100),(138,64,NULL,'USB MICRO B ','RCPT SMT R/A','',5,0,0.0000,'',0,'','','2021-02-17 16:10:40','',0,0,0,1,135),(139,93,NULL,'CONN HEADER 22mm ','14P GOLD','',10,0,0.0000,'',0,'','','2021-02-17 16:17:30','',0,0,0,1,89),(140,93,NULL,'HX SIDE ','4P 2.5mm','',0,0,0.0000,'',0,'','','2021-02-17 16:18:25','',0,0,0,1,89),(141,24,NULL,'FB 600 Ω 200mA','0805','',10,0,0.0000,'',0,'','','2021-02-17 16:21:36','',0,0,0,1,104),(142,24,NULL,'FB 600 Ω ','0603','',20,0,0.0000,'',0,'','','2021-02-17 16:30:41','',0,0,0,1,104),(143,24,NULL,'FB 300 Ω ','0603','',0,0,0.0000,'',0,'','','2021-02-17 16:31:50','',0,0,0,1,104),(144,24,NULL,'FB 2200 Ω 200mA','0805','',10,0,0.0000,'',0,'','','2021-02-17 16:34:45','',0,0,0,1,117),(145,24,NULL,'FB 2,2KΩ ','0805','',15,0,0.0000,'',0,'','','2021-02-17 16:36:28','',0,0,0,1,128),(146,24,NULL,'FB 100 Ω ','0603','',20,0,0.0000,'',0,'','','2021-02-17 16:38:04','',0,0,0,1,128),(147,57,NULL,'NX2520SA','Crystal 320000 MHZ 10PF SMD','',9,0,0.0000,'',0,'','','2021-02-17 16:46:06','',0,0,0,1,95),(148,57,NULL,'ECS-320-8-36 LKM-TR','Crystal 320000 MHz-18 PF-SMD','',8,0,0.0000,'',0,'','','2021-02-17 16:49:10','',0,0,0,1,95),(149,57,NULL,'NX3215SA','Crystal 32.7680 kHz 6PF SMD','',7,0,0.0000,'',0,'','','2021-02-17 16:52:04','',0,0,0,1,95),(150,57,NULL,'Crystal 320000 MHz-15 PF-SMD','','',10,0,0.0000,'',0,'','','2021-02-17 16:54:20','',0,0,0,1,95),(151,57,NULL,'Crystal 32.7680 kHz 12.5 PF SMD','','',9,0,0.0000,'',0,'','','2021-02-17 16:55:51','',0,0,0,1,106),(152,57,NULL,'Crystal 16.0000 kHz 10PF SMD','','',10,0,0.0000,'',0,'','','2021-02-17 16:56:58','',0,0,0,1,118),(153,57,NULL,'Crystal 16.0000 kHz 18PF SMD','','',10,0,0.0000,'',0,'','','2021-02-17 16:58:12','',0,0,0,1,118),(154,57,NULL,'Crystal 16.0000 kHz 18PF T/H','','',5,0,0.0000,'',0,'','','2021-02-17 16:59:32','',0,0,0,1,118),(155,57,NULL,'Crystal 12.0000 kHz 18PF SMD','','',15,0,0.0000,'',0,'','','2021-02-17 17:00:29','',0,0,0,1,118),(156,57,NULL,'Crystal 80000 kHz 18-10 PF SMD','','',37,0,0.0000,'',0,'','','2021-02-17 17:04:57','',0,0,0,1,132),(157,58,NULL,'OSC Crystal 40.000 MHz CMOS','','',4,0,0.0000,'',0,'','','2021-02-17 17:27:17','',0,0,0,1,141),(158,57,NULL,'Crystal 27.1200 10PF SMD','','',9,0,0.0000,'',0,'','','2021-02-17 17:46:18','',0,0,0,1,94),(159,57,NULL,'Crystal 30.0000 MHz 10pF SMD','','',5,0,0.0000,'',0,'','','2021-02-17 17:47:39','',0,0,0,1,94),(160,57,NULL,'Crystal 20.000 MHz 10pF SMD','','',4,0,0.0000,'',0,'','','2021-02-17 17:48:49','',0,0,0,1,94),(161,57,NULL,'ABS07','Crystal 32.7680 kHz 6pF ','',8,0,0.0000,'',0,'','','2021-02-17 17:52:19','',0,0,0,1,107),(162,57,NULL,'ABS25','Crystal 32.7680 kHz 6pF ','',8,0,0.0000,'',0,'','','2021-02-17 17:53:23','',0,0,0,1,107),(163,57,NULL,'Crystal 26.0000 MHz 6pF SMD','','',5,0,0.0000,'',0,'','','2021-02-17 17:54:19','',0,0,0,1,107),(164,58,NULL,'OSC VCOCXO 20.000 MHz ','LVC CMOS SMD','',1,0,0.0000,'',0,'','','2021-02-17 17:56:05','',0,0,0,1,119),(165,58,NULL,'OSC XO 24.000 MHz ','HCMOS SMD','',1,0,0.0000,'',0,'','','2021-02-17 17:57:23','',0,0,0,1,119),(166,58,NULL,'OSC TCXD 24.000 MHz ','HCMOS SMD','',0,0,0.0000,'',0,'','','2021-02-17 17:58:25','',0,0,0,1,119),(167,8,NULL,'CMC 370mA ','2LN 90Ω','',20,0,0.0000,'',0,'','','2021-02-17 18:02:09','',0,0,0,1,129),(168,8,NULL,'CMC 200mA ','2LN 2.2KΩ SMD ','',20,0,0.0000,'',0,'','','2021-02-17 18:04:00','',0,0,0,1,129),(169,73,NULL,'CTS 208-6 T621','Switch Slide DIP SPST 50 mA 24V','',8,0,0.0000,'',0,'','','2021-02-17 18:13:26','',0,0,0,1,96),(170,51,38,'RES 4.7 Ω','SMD','',10,0,0.0000,'',0,'','','2021-02-18 10:58:17','',0,0,0,1,156),(171,51,42,'RES 0 Ω','Jumper','',50,0,0.0000,'',0,'','','2021-02-18 11:00:25','',0,0,0,1,156),(172,51,38,'RES 2.2 Ω','','',9,0,0.0000,'',0,'','','2021-02-18 11:02:36','',0,0,0,1,156),(173,51,40,'RES 0 Ω','Jumper','',40,0,0.0000,'',0,'','','2021-02-18 11:03:57','',0,0,0,1,156),(174,51,38,'RES 10Ω','','',50,0,0.0000,'',0,'','','2021-02-18 11:05:19','',0,0,0,1,172),(175,51,NULL,'RES 20Ω','','',40,0,0.0000,'',0,'','','2021-02-18 11:07:37','',0,0,0,1,173),(176,51,43,'RES 50Ω','','',10,0,0.0000,'',0,'','','2021-02-18 11:14:04','',0,0,0,1,161),(177,51,38,'RES 120Ω','','',10,0,0.0000,'',0,'','','2021-02-18 11:16:08','',0,0,0,1,183),(178,51,40,'RES 101Ω','','',30,0,0.0000,'',0,'','','2021-02-18 11:18:10','',0,0,0,1,183),(179,51,40,'RES 120Ω','5% 1/10 ','',20,0,0.0000,'',0,'','','2021-02-18 11:19:59','',0,0,0,1,183),(180,51,40,'RES 220Ω','','',76,0,0.0000,'',0,'','','2021-02-18 11:21:04','',0,0,0,1,206),(181,51,40,'RES 200Ω','1% 1/8w ','',32,0,0.0000,'',0,'','','2021-02-18 11:22:16','',0,0,0,1,193),(182,51,40,'RES 165Ω','','',2,0,0.0000,'',0,'','','2021-02-18 11:23:14','',0,0,0,1,193),(183,51,42,'RES 24.9Ω','1/16W 1%','',70,0,0.0000,'',0,'','','2021-02-18 11:28:52','',0,0,0,1,204),(184,51,40,'RES 330Ω','','',52,0,0.0000,'',0,'','','2021-02-18 11:31:36','',0,0,0,1,171),(185,51,40,'RES 300Ω','','',5,0,0.0000,'',0,'','','2021-02-18 11:36:16','',0,0,0,1,171),(186,51,40,'RES 470Ω','','',45,0,0.0000,'',0,'','','2021-02-18 11:38:04','',0,0,0,1,210),(187,51,40,'4K7 ','','',30,0,0.0000,'',0,'','','2021-02-18 11:41:26','',0,0,0,1,210),(188,51,40,'RES 4,7KΩ','','',50,0,0.0000,'',0,'','','2021-02-18 11:59:35','',0,0,0,1,159),(189,51,40,'RES 3 KΩ','1% 1/10W','',6,0,0.0000,'',0,'','','2021-02-18 12:01:05','',0,0,0,1,159),(190,51,40,'RES 3.6KΩ','0.5% 2/5W','',26,0,0.0000,'',0,'','','2021-02-18 12:02:07','',0,0,0,1,159),(191,51,38,'RES 1.2KΩ','','\n',10,0,0.0000,'',0,'','','2021-02-18 12:03:03','',0,0,0,1,159),(192,51,42,'RES 4.7KΩ','','',10,0,0.0000,'',0,'','','2021-02-18 12:03:45','',0,0,0,1,159),(193,51,42,'RES 4.87KΩ','','',10,0,0.0000,'',0,'','','2021-02-18 12:05:42','',0,0,0,1,159),(194,51,40,'RES 1.5K','','\n',40,0,0.0000,'',0,'','','2021-02-18 12:06:24','',0,0,0,1,159),(195,51,42,'RES 2KΩ','','',10,0,0.0000,'',0,'','','2021-02-18 12:07:16','',0,0,0,1,159),(196,51,40,'RES 3.3KΩ','','',9,0,0.0000,'',0,'','','2021-02-18 12:08:01','',0,0,0,1,159),(197,51,42,'RES 4,87KΩ','','',6,0,0.0000,'',0,'','','2021-02-18 12:09:01','',0,0,0,1,159),(198,51,42,'RES 2KΩ','','',25,0,0.0000,'',0,'','','2021-02-18 12:10:22','',0,0,0,1,159),(199,51,40,'RES 9.1KΩ','0.5% 1/5W','',26,0,0.0000,'',0,'','','2021-02-18 13:16:59','',0,0,0,1,168),(200,51,40,'RES 12KΩ','SPCT 1/10W','',26,0,0.0000,'',0,'','','2021-02-18 13:20:48','',0,0,0,1,185),(201,51,40,'RES 12Kohm','','',7,0,0.0000,'',0,'','','2021-02-18 13:21:51','',0,0,0,1,185),(202,51,40,'RES 11KΩ','','',4,0,0.0000,'',0,'','','2021-02-18 13:22:57','',0,0,0,1,185),(203,51,40,'RES 12.4 KΩ','','',10,0,0.0000,'',0,'','','2021-02-18 13:23:34','',0,0,0,1,185),(204,51,40,'RES 22KΩ','','',48,0,0.0000,'',0,'','','2021-02-18 13:24:36','',0,0,0,1,207),(205,51,40,'RES 24K','','',40,0,0.0000,'',0,'','','2021-02-18 13:25:39','',0,0,0,1,207),(206,51,38,'RES 36KΩ','','',10,0,0.0000,'',0,'','','2021-02-18 13:27:43','',0,0,0,1,181),(207,51,42,'RES 36KΩ','','',50,0,0.0000,'',0,'','','2021-02-18 13:28:28','',0,0,0,1,181),(208,51,38,'RES 43KΩ','','',9,0,0.0000,'',0,'','','2021-02-18 13:31:15','',0,0,0,1,195),(209,51,40,'RES 47KΩ','5% 1/10W','',27,0,0.0000,'',0,'','','2021-02-18 13:32:42','',0,0,0,1,205),(210,51,40,'RES 100KΩ','','',7,0,0.0000,'',0,'','','2021-02-18 13:33:57','',0,0,0,1,158),(211,51,42,'RES 100KΩ','','',50,0,0.0000,'',0,'','','2021-02-18 13:34:35','',0,0,0,1,158),(212,51,40,'RES 51KΩ','','',10,0,0.0000,'',0,'','','2021-02-18 13:35:53','',0,0,0,1,158),(213,51,38,'RES 1M','','',9,0,0.0000,'',0,'','','2021-02-18 13:38:35','',0,0,0,1,162),(214,51,40,'RES 1M','','',10,0,0.0000,'',0,'','','2021-02-18 13:40:49','',0,0,0,1,93),(215,51,40,'RES 1.74MΩ','','',5,0,0.0000,'',0,'','','2021-02-18 13:42:16','',0,0,0,1,162),(216,51,40,'RES 9.76M','','',5,0,0.0000,'',0,'','','2021-02-18 13:45:14','',0,0,0,1,199),(217,51,NULL,'4 RES 22RES','RES ARRAY ','',9,0,0.0000,'',0,'','','2021-02-18 13:47:37','',0,0,0,1,209),(218,51,38,'4 RES 100Ω','RES ARRAY','',10,0,0.0000,'',0,'','','2021-02-18 13:49:50','',0,0,0,1,209),(219,51,40,'RES 1K ','Thick Film Resistor 1/16','',50,0,0.0000,'',0,'','','2021-02-18 13:51:55','',0,0,0,1,175),(220,48,42,'CAP CER 1uF 10V','','',10,0,0.0000,'',0,'','','2021-02-18 13:57:15','',0,0,0,1,164),(221,48,38,'MLCC 0.1uF 50V','','',14,0,0.0000,'',0,'','','2021-02-18 14:23:47','',0,0,0,1,164),(222,48,42,'CAP CER 0.15uF','','',10,0,0.0000,'',0,'','','2021-02-18 14:24:47','',0,0,0,1,164),(223,48,37,'CAP CER 2.2uF 16V','','',5,0,0.0000,'',0,'','','2021-02-18 14:26:08','',0,0,0,1,164),(224,48,42,'CAPCER 0.4uF ','','',20,0,0.0000,'',0,'','','2021-02-18 14:26:43','',0,0,0,1,164),(225,48,42,'CAP CER 0.22uF','6.3V X7R ','',10,0,0.0000,'',0,'','','2021-02-18 14:28:41','',0,0,0,1,164),(226,48,42,'CAP CER 1uF 16V','','',10,0,0.0000,'',0,'','','2021-02-18 14:29:28','',0,0,0,1,164),(227,48,42,'CAP CER 0.1uF 16V','','',10,0,0.0000,'',0,'','','2021-02-18 14:30:07','',0,0,0,1,164),(228,10,40,'CAP Feedthrough 1uF 20%','','',10,0,0.0000,'',0,'','','2021-02-18 14:33:30','',0,0,0,1,164),(229,48,42,'CAP CER 0.022uF','16V X7R ','',30,0,0.0000,'',0,'','','2021-02-18 14:34:39','',0,0,0,1,164),(230,48,40,'CAP CER 1uF 10V','','',20,0,0.0000,'',0,'','','2021-02-18 14:36:29','',0,0,0,1,164),(231,101,NULL,'CAP 10uF 20% 25V','ELCO SMD','',15,0,0.0000,'',0,'','','2021-02-18 14:44:50','',0,0,0,1,176),(232,48,40,'CAP CER 8.2pF','50V CO6/NPO ','',32,0,0.0000,'',0,'','','2021-02-18 14:48:40','',0,0,0,1,176),(233,101,NULL,'CAP 100uF ','20% 16V','',9,0,0.0000,'',0,'','','2021-02-26 14:51:05','',0,0,0,1,201),(234,48,42,'CAP CER 1.2pF','','',10,0,0.0000,'',0,'','','2021-02-26 14:53:04','',0,0,0,1,165),(235,48,40,'CAP CER 2.4pF','50V CO6/NP0','',30,0,0.0000,'',0,'','','2021-02-26 14:54:56','',0,0,0,1,165),(236,48,42,'CAP CER 2.7pF 50V','','',30,0,0.0000,'',0,'','','2021-02-26 14:57:00','',0,0,0,1,164),(237,48,42,'CAP CER 4.7pF','','',10,0,0.0000,'',0,'','','2021-02-26 15:01:26','',0,0,0,1,165),(238,48,42,'CAP CER 5.6pF','NP0','',63,0,0.0000,'',0,'','','2021-02-26 15:02:26','',0,0,0,1,165),(239,48,42,'CAP CER 5.6pF 50V','','',20,0,0.0000,'',0,'','','2021-02-26 15:03:06','',0,0,0,1,165),(240,48,38,'CAP CER 6.8pF','50V NP0','',20,0,0.0000,'',0,'','','2021-02-26 15:04:26','',0,0,0,1,177),(241,48,40,'CAP CER 6.8pF ','25V CO6/NP0','',30,0,0.0000,'',0,'','','2021-02-26 15:05:30','',0,0,0,1,177),(242,48,42,'CAP CER 6.2pF 50V','','',10,0,0.0000,'',0,'','','2021-02-26 15:06:26','',0,0,0,1,177),(243,48,42,'CAP CER 6pF ','50V CO6/NP0','',10,0,0.0000,'',0,'','','2021-02-26 15:09:52','',0,0,0,1,177),(244,48,42,'CAP CER 6pF','50V NP0','',10,0,0.0000,'',0,'','','2021-02-26 15:10:42','',0,0,0,1,177),(245,10,42,'MICC 8.2pF 50V','','',10,0,0.0000,'',0,'','','2021-02-26 15:12:27','',0,0,0,1,177),(246,48,40,'CAP CER 10pF','','',8,0,0.0000,'',0,'','','2021-02-26 15:13:27','',0,0,0,1,177),(247,48,42,'CAP CER 8pF 50V','','',10,0,0.0000,'',0,'','','2021-02-26 15:14:13','',0,0,0,1,177),(249,103,38,'RES SMD 47K OHM 1% 1/8W ','','',90,0,0.0000,'',0,'','','2021-03-18 09:59:34','',0,0,0,1,145),(250,103,40,'RES SMD 12K OHM 1% 1/10W','','',112,0,0.0000,'',0,'','','2021-03-18 13:37:18','',0,0,0,1,145),(251,103,46,'RES ARRAY 4 RES 100 OHM','','',139,0,0.0000,'',0,'','','2021-03-18 13:41:58','',0,0,0,1,145),(252,103,38,'RES SMD 36K OHM 1% 1/88W','','',90,0,0.0000,'',0,'','','2021-03-18 13:45:45','',0,0,0,1,145),(253,103,40,'RES SMD 2.2K OHM 5% 1/10W','','',62,0,0.0000,'',0,'','','2021-03-18 13:48:12','',0,0,0,1,146),(254,103,40,'RES SMD 1.21K OHM 0.1% 1/10W','','',10,0,0.0000,'',0,'','','2021-03-18 13:51:32','',0,0,0,1,146),(255,103,40,'RES SMD 10 OHM 1% 1/10W','','',84,0,0.0000,'',0,'','','2021-03-18 13:55:40','',0,0,0,1,146),(256,103,40,'RES SMD 1.5K OHM 1% 1/1OW','','',69,0,0.0000,'',0,'','','2021-03-18 13:58:13','',0,0,0,1,146),(257,103,37,'RES SMD 4.7K OHM 1% 1/4W','','',41,0,0.0000,'',0,'','','2021-03-18 14:05:03','',0,0,0,1,144),(258,103,40,'RES SMD 7.15K OHM 0.1% 1/10W','','',10,0,0.0000,'',0,'','','2021-03-18 14:07:04','',0,0,0,1,144),(259,103,46,'RES ARRAY 22 OHM 4 RES','','',37,0,0.0000,'',0,'','','2021-03-18 14:12:29','',0,0,0,1,144),(260,103,40,'RES SMD 2.55K OHM 0.1% 1/10W','','',10,0,0.0000,'',0,'','','2021-03-18 14:14:51','',0,0,0,1,144),(261,103,40,'RES SMD 1M OHM 1% 1/10W','','',93,0,0.0000,'',0,'','','2021-03-18 14:19:09','',0,0,0,1,143),(263,103,40,'RES SMD 12.4K OHM 1% 1/10W','','',99,0,0.0000,'',0,'','','2021-03-18 14:26:05','',0,0,0,1,143),(264,103,42,'RES 1.50K OHM 1% 1/16W','','',56,0,0.0000,'',0,'','','2021-03-18 14:27:58','',0,0,0,1,143),(265,103,40,'RES 470 OHM 5% 1/10W','','',253,0,0.0000,'',0,'','','2021-03-18 14:30:57','',0,0,0,1,141),(266,103,38,'RES SMD 2.2 OHM 1% 1/8W','','',16,0,0.0000,'',0,'','','2021-03-18 14:33:56','',0,0,0,1,141),(267,103,42,'RES SMD 0 OHM JUMPER 1/16W','','',194,0,0.0000,'',0,'','','2021-03-18 14:36:32','',0,0,0,1,141),(268,103,40,'RES SMD 3.3K OHM 1% 1/10W','','',98,0,0.0000,'',0,'','','2021-03-18 14:37:56','',0,0,0,1,141),(269,103,42,'RES SMD 1OOK OHM 5% 1/16W','','',180,0,0.0000,'',0,'','','2021-03-18 14:42:01','',0,0,0,1,142),(270,103,42,'RES SMD 100K OHM 1%  1/16W','','',111,0,0.0000,'',0,'','','2021-03-18 14:53:46','',0,0,0,1,142),(271,103,42,'RES SMD 1K OHM 5% 1/5W','','',169,0,0.0000,'',0,'','','2021-03-18 15:00:54','',0,0,0,1,138),(272,103,40,'RES SMD 0 0HM JUMPER 1/10W','','',368,0,0.0000,'',0,'','','2021-03-18 15:07:59','',0,0,0,1,138),(273,103,40,'RES SMD 1K OHM 1% 1/10W','','',500,0,0.0000,'',0,'','','2021-03-18 15:34:59','',0,0,0,1,137),(274,103,42,'RES SMD 24.9 OHM 1% 1/16W','','',60,0,0.0000,'',0,'','','2021-03-19 15:41:34','',0,0,0,1,2),(275,103,38,'RES SND 165 OHM','','',2,0,0.0000,'',0,'','','2021-03-19 15:43:04','',0,0,0,1,2),(276,103,40,'RES 200 OHM 1% 1/8W','','',37,0,0.0000,'',0,'','','2021-03-19 15:47:08','',0,0,0,1,2),(277,103,40,'RES SMD 300 OHM','','',7,0,0.0000,'',0,'','','2021-03-19 15:48:40','',0,0,0,1,99),(278,103,40,'RES SMD 220 OHM','','',128,0,0.0000,'',0,'','','2021-03-19 15:51:17','',0,0,0,1,99),(279,103,40,'RES SMD 4.7K','','',50,0,0.0000,'',0,'','','2021-03-19 15:56:27','',0,0,0,1,99),(280,103,40,'RES SMD 12K OHM SPCT 1/10W','','',23,0,0.0000,'',0,'','','2021-03-19 15:58:18','',0,0,0,1,99),(281,103,42,'RES SMD 1OOK','','',60,0,0.0000,'',0,'','','2021-03-19 16:01:44','',0,0,0,1,113),(282,103,38,'RES SMD 1M','','',9,0,0.0000,'',0,'','','2021-03-19 16:03:04','',0,0,0,1,113),(283,103,38,'RES SMD 4.7 OHM','','',10,0,0.0000,'',0,'','','2021-03-19 16:04:58','',0,0,0,1,113),(284,103,40,'RES SMD 1.74M OHM','','',5,0,0.0000,'',0,'','','2021-03-19 16:05:42','',0,0,0,1,113),(285,103,40,'RES SMD 330 OHM','','',41,0,0.0000,'',0,'','','2021-03-19 16:08:25','',0,0,0,1,126),(286,103,38,'RES SMD 10 OHM','','',55,0,0.0000,'',0,'','','2021-03-19 16:11:55','',0,0,0,1,126),(287,103,42,'RES SMD 36K','','',51,0,0.0000,'',0,'','','2021-03-19 16:14:11','',0,0,0,1,126),(288,103,42,'RES SMD 4.87K','','',16,0,0.0000,'',0,'','','2021-03-19 16:15:58','',0,0,0,1,126),(289,103,43,'RES SMD 50 OHM','','',10,0,0.0000,'',0,'','','2021-03-19 16:17:41','',0,0,0,1,136),(290,103,40,'RES SMD 11K OHM','','',4,0,0.0000,'',0,'','','2021-03-19 16:19:00','',0,0,0,1,136),(291,103,40,'RES SMD 24K OHM','','',48,0,0.0000,'',0,'','','2021-03-19 16:21:04','',0,0,0,1,136),(292,103,38,'RES SMD 1.2K OHM','','',10,0,0.0000,'',0,'','','2021-03-19 16:22:43','',0,0,0,1,136),(293,103,40,'THICK FILM RESIS 1K 1/16W','','',40,0,0.0000,'',0,'','','2021-03-19 16:24:24','',0,0,0,1,88),(294,103,42,'RES SMD 2K','','',39,0,0.0000,'',0,'','','2021-03-19 16:26:27','',0,0,0,1,88),(295,103,42,'RES SMD 4.7K OHM','','',10,0,0.0000,'',0,'','','2021-03-19 16:27:31','',0,0,0,1,88),(296,103,40,'RES SMD 22K OHM','','',48,0,0.0000,'',0,'','','2021-03-19 16:29:24','',0,0,0,1,88),(297,103,40,'RES SMD 9.76M OHM','','',6,0,0.0000,'',0,'','','2021-03-19 16:31:52','',0,0,0,1,101),(298,103,NULL,'RES SMD 51K OHM','','0603',10,0,0.0000,'',0,'','','2021-03-19 16:32:53','',0,0,0,1,101),(299,103,40,'RES SMD 9.1K OHM 0.5% 1/5W','','',120,0,0.0000,'',0,'','','2021-03-19 16:35:49','',0,0,0,1,101),(300,103,40,'RES 47K OHM 5% 1/10W','','',106,0,0.0000,'',0,'','','2021-03-19 16:39:29','',0,0,0,1,101),(301,103,40,'RES SMD 3.6K OHM 0.5% 1/5W','','',63,0,0.0000,'',0,'','','2021-03-19 16:53:40','',0,0,0,1,116),(302,103,40,'RES SMD 120 OHM 5% 1/10W','','',87,0,0.0000,'',0,'','','2021-03-19 16:57:04','',0,0,0,1,116),(303,103,38,'RES SMD 120 OHM ','','',20,0,0.0000,'',0,'','','2021-03-19 17:01:33','',0,0,0,1,116),(304,103,40,'RES SMD 120 OHM','','',22,0,0.0000,'',0,'','','2021-03-19 17:02:43','',0,0,0,1,116),(305,103,40,'RES SMD 3K OHM 1% 1/10W','','',970,0,0.0000,'',0,'','','2021-03-19 17:12:16','',0,0,0,1,124),(306,103,37,'CAP TANT 1UF 16V 10%','','',24,0,0.0000,'',0,'','','2021-03-23 10:49:50','',0,0,0,1,156),(307,103,40,'CAP CER 22PF 50V C0G/NP0','','',67,0,0.0000,'',0,'','','2021-03-23 10:53:06','',0,0,0,1,156),(308,103,37,'CAP CER 10UF 10V X6S','','',70,0,0.0000,'',0,'','','2021-03-23 10:55:17','',0,0,0,1,156),(309,103,38,'CAP CER 22UF 10V X5R','','',20,0,0.0000,'',0,'','','2021-03-23 10:59:26','',0,0,0,1,156),(310,103,38,'CAP CER 0.3PF 250V C0G/NP0','','',36,0,0.0000,'',0,'','','2021-03-23 11:02:12','',0,0,0,1,173),(311,103,42,'CAP 1NF_1005 EMK 105B7102KV-F','','',12,0,0.0000,'',0,'','','2021-03-23 11:05:02','',0,0,0,1,173),(312,103,40,'CAP CER 10000PF 50V X7R','','',82,0,0.0000,'',0,'','','2021-03-23 11:09:58','',0,0,0,1,173),(313,103,40,'CAP CER 8.2PF 50V C0G/NP0','','',109,0,0.0000,'',0,'','','2021-03-23 11:13:07','',0,0,0,1,173),(314,103,40,'CAP CER 1UF 10V X5R','','',72,0,0.0000,'',0,'','','2021-03-23 11:17:53','',0,0,0,1,184),(315,103,37,'CAP CER 10UF 10V Y5V','','',72,0,0.0000,'',0,'','','2021-03-23 11:21:39','',0,0,0,1,184),(316,48,42,'CAP CER 0.022UF 16V X7R','','',165,0,0.0000,'',0,'','','2021-03-23 11:24:26','',0,0,0,1,184),(317,103,38,'CAP CER 6.8PF 50V NP0','','',62,0,0.0000,'',0,'','','2021-03-23 11:27:21','',0,0,0,1,184),(318,103,38,'CAP CER 8.2PF 250V C0G/NP0','','',16,0,0.0000,'',0,'','','2021-03-23 11:29:11','',0,0,0,1,192),(319,103,37,'CAP CER 4.7UF 50V X5R','','',30,0,0.0000,'',0,'','','2021-03-23 11:30:54','',0,0,0,1,192),(320,103,40,'CAP CER 4.7UF 16V X5R','','',71,0,0.0000,'',0,'','','2021-03-23 11:33:41','',0,0,0,1,192),(321,103,40,'CAP CER 0.1UF 16V Y5V','','',21,0,0.0000,'',0,'','','2021-03-23 11:35:28','',0,0,0,1,192),(322,103,40,'CAP CER 560PF 50V C0G','','',58,0,0.0000,'',0,'','','2021-03-23 11:37:58','',0,0,0,1,204),(323,103,40,'CAP CER 10UF 10V X5R','','',3,0,0.0000,'',0,'','','2021-03-23 11:39:40','',0,0,0,1,204),(324,103,40,'CAP CER 47PF 50V NP0','','',81,0,0.0000,'',0,'','','2021-03-23 11:42:07','',0,0,0,1,204),(325,103,40,'CAP CER 20PF 50V C0G/NP0','','',67,0,0.0000,'',0,'','','2021-03-23 11:43:53','',0,0,0,1,204),(326,20,42,'IND 0.9nH','TDK Fixed Inductors','',15,0,0.0000,'',0,'','','2021-07-28 14:49:06','',0,0,0,1,228),(327,20,47,'IND 68uH ','±20% 1A 289mΩ','',8,0,0.0000,'',0,'','','2021-07-28 15:01:53','',0,0,0,1,224),(328,20,40,'IND 4.7nH ','1500mA Fixed Inductors','',9,0,0.0000,'',0,'','','2021-07-28 15:05:24','',0,0,0,1,225),(329,20,40,'FIXED IND 6.8nH','430mA 250mΩ','',8,0,0.0000,'',0,'','','2021-07-28 15:09:21','',0,0,0,1,226),(330,20,NULL,'IND 4.7uH ','20% Power Inductors','',8,0,0.0000,'',0,'','','2021-07-28 15:12:20','',0,0,0,1,227),(331,20,40,'FIXED IND 15nH','300mA 320mΩ ','',8,0,0.0000,'',0,'','','2021-07-28 15:15:26','',0,0,0,1,230),(332,20,42,'HF IND 2.7nH','±0.3nH 300mA 200mΩ ','',95,0,0.0000,'',0,'','','2021-07-28 15:20:32','',0,0,0,1,229),(333,20,40,'HF IND 47nH ','±5% 300mA 700mΩ ','',60,0,0.0000,'',0,'','','2021-07-28 15:24:46','',0,0,0,1,233),(334,57,NULL,'XTal 32.768kHz','12.5pF ','',4,0,0.0000,'',0,'','','2021-07-28 15:46:46','',0,0,0,1,254),(335,57,NULL,'XTal 32.768kHz','0.6pF ±20ppm','',18,0,0.0000,'',0,'','','2021-07-28 15:50:10','',0,0,0,1,254),(336,103,40,'100nF','±20% 50V Y5V','',74,0,0.0000,'',0,'','','2021-07-29 10:54:04','',0,0,0,1,161),(337,103,38,'10uF','±10% 25V X5R Multilayer Ceramic','',146,0,0.0000,'',0,'','','2021-07-29 10:58:30','',0,0,0,1,161),(338,103,40,'10uF','±10% 25V X5R Multilayer Ceramic','',47,0,0.0000,'',0,'','','2021-07-29 11:03:37','',0,0,0,1,157),(339,103,40,'33pF','±5% 50V C0G Multilayer Ceramic','',92,0,0.0000,'',0,'','','2021-07-29 11:11:51','',0,0,0,1,157),(340,103,40,'1uF','±10% 50V X5R Multilayer Ceramic','',70,0,0.0000,'',0,'','','2021-07-29 11:22:48','',0,0,0,1,159),(341,103,40,'270pF','±5% 50V C0G Multilayer Ceramic','',95,0,0.0000,'',0,'','','2021-07-29 11:29:04','',0,0,0,1,159),(342,103,40,'10uF','±20% 10V B Multilayer Ceramic','',102,0,0.0000,'',0,'','','2021-07-29 11:35:41','',0,0,0,1,160),(343,103,38,'1uF','±10% 50V X7R Multilayer Ceramic','',19,0,0.0000,'',0,'','','2021-07-29 11:39:03','',0,0,0,1,160),(344,103,45,'100uF','±20% 6.3V 5 Ω @ 100kHz -55°C ~ +125°C CASE-B_','',78,0,0.0000,'',0,'','','2021-07-29 11:54:30','',0,0,0,1,158),(345,103,38,'4.7uF','±10% 25V X5R Multilayer Ceramic','',158,0,0.0000,'',0,'','','2021-07-29 14:36:04','',0,0,0,1,158),(346,103,38,'22uF','±20% 25V X5R Multilayer Ceramic','',87,0,0.0000,'',0,'','','2021-07-29 14:40:26','',0,0,0,1,162),(347,103,42,'2.4pF ','±0.25pF 50V C0G Multilayer Ceramic','',107,0,0.0000,'',0,'','','2021-07-29 14:44:53','',0,0,0,1,162),(348,103,42,'3.9pF','±0.25pF 50V C0G Multilayer Ceramic','',77,0,0.0000,'',0,'','','2021-07-29 14:48:24','',0,0,0,1,163),(349,103,40,'100nF','±10% 50V X7R Multilayer Ceramic','',37,0,0.0000,'',0,'','','2021-07-29 14:53:50','',0,0,0,1,163),(350,103,45,'100uF','±10% 6.3V 1.7 Ω @100 kHz -55°C ~ 125°C CASE-B_','',10,0,0.0000,'',0,'','','2021-07-29 15:02:43','',0,0,0,1,164),(351,103,45,'10uF','±10% 16V 2.8 Ω @ 100 kHz -55°C ~ 125°C CASE-B_','',18,0,0.0000,'',0,'','','2021-07-29 15:09:58','',0,0,0,1,164),(352,103,48,'10uF','±10% 10V 1.8 Ω @ 100kHz -55°C ~ +125°C CASE-A_','',8,0,0.0000,'',0,'','','2021-07-29 15:53:59','',0,0,0,1,165),(353,103,40,'10nF','±10% 50V X7R Multilayer Ceramic','',79,0,0.0000,'',0,'','','2021-07-29 16:02:38','',0,0,0,1,165),(354,103,40,'16pF','±5% 50V C0G Multilayer Ceramic','',81,0,0.0000,'',0,'','','2021-07-29 16:11:34','',0,0,0,1,166),(355,103,42,'33pF','±5% 50V C0G Multilayer Ceramic','',87,0,0.0000,'',0,'','','2021-07-29 16:17:46','',0,0,0,1,166),(356,103,42,'3.3nF','±10% 50V X7R Multilayer Ceramic','',78,0,0.0000,'',0,'','','2021-07-29 16:23:24','',0,0,0,1,167),(357,103,40,'100pF','±5% 50V C0G Multilayer Ceramic','',160,0,0.0000,'',0,'','','2021-07-29 16:27:58','',0,0,0,1,167),(358,103,40,'CAP CER 1UF 16V X7R','','',3,0,0.0000,'',0,'','','2021-07-30 09:55:56','',0,0,0,1,172),(359,103,40,'CAP CER 220PF 50V C0G/NP0','','',49,0,0.0000,'',0,'','','2021-07-30 09:59:22','',0,0,0,1,172),(360,103,40,'CAP CER 0.1UF 50V Y5V','','',11,0,0.0000,'',0,'','','2021-07-30 10:04:31','',0,0,0,1,171),(361,103,37,'CAP CER 10UF 6.3V X5R','','',30,0,0.0000,'',0,'','','2021-07-30 10:16:20','',0,0,0,1,171),(362,103,37,'CAP CER 10UF 50V X5R','','',12,0,0.0000,'',0,'','','2021-07-30 10:39:02','',0,0,0,1,168),(363,103,38,'CAP CER 0.47UF 16V X7R','','',5,0,0.0000,'',0,'','','2021-07-30 10:41:33','',0,0,0,1,168),(364,103,40,'CAP CER 1UF 10V','','',89,0,0.0000,'',0,'','','2021-07-30 11:13:05','',0,0,0,1,170),(365,103,NULL,'CAP ALUM 680UF 20% 100V RADIAL','','',3,0,0.0000,'',0,'','','2021-07-30 11:15:25','',0,0,0,1,169),(366,103,NULL,'CAP ALUM 10UF 50V','','',10,0,0.0000,'',0,'','','2021-07-30 11:17:15','',0,0,0,1,170),(367,103,38,'CAP CER 1NF','','',10,0,0.0000,'',0,'','','2021-07-30 11:18:54','',0,0,0,1,169),(368,103,40,'CAP CER 1000PF ± 5% 50 V T&R HH','','',102,0,0.0000,'',0,'','','2021-07-30 11:24:39','',0,0,0,1,174),(369,57,49,'XTal 3.579','','',4,0,0.0000,'',0,'','','2021-07-30 14:00:51','',0,0,0,1,256),(370,57,49,'XTal 16.000 Mhz','','',5,0,0.0000,'',0,'','','2021-07-30 14:02:02','',0,0,0,1,256),(371,57,49,'XTal 7.3728 Mhz','','',5,0,0.0000,'',0,'','','2021-07-30 14:03:44','',0,0,0,1,256),(372,57,49,'XTal 16.0000 Mhz 18pF','','',5,0,0.0000,'',0,'','','2021-07-30 14:07:49','',0,0,0,1,256),(373,57,49,'XTal 4.000 Mhz','','',5,0,0.0000,'',0,'','','2021-07-30 14:09:06','',0,0,0,1,256),(374,57,50,'Xtal 16.0000 MHz 18pF','','',10,0,0.0000,'',0,'','','2021-07-30 14:12:16','',0,0,0,1,258),(375,57,50,'Crystal XTal 12..0000 Mhz 18pF','','',14,0,0.0000,'',0,'','','2021-07-30 14:15:56','',0,0,0,1,255),(376,57,50,'Crystal XTal 16.0000Mhz 10pF','','',10,0,0.0000,'',0,'','','2021-07-30 14:17:34','',0,0,0,1,255),(377,57,50,'Crystal XTal 32.0000 MHz 16pF','','',10,0,0.0000,'',0,'','','2021-07-30 14:21:43','',0,0,0,1,255),(378,57,50,'Crystal XTal 32.7680 kHz 6pF','ABS07','',8,0,0.0000,'',0,'','','2021-07-30 14:24:48','',0,0,0,1,255),(379,57,50,'Crystal XTal 32.0000 MHz 18pF 10 PPM','ESC-320-8-36LKM-TR','',8,0,0.0000,'',0,'','','2021-07-30 14:28:11','',0,0,0,1,255),(380,57,50,'Crystal XTal 32.0000 MHz 10pF','','',4,0,0.0000,'',0,'','','2021-07-30 14:31:31','',0,0,0,1,255),(381,58,50,'OSC TCXD 24.000 MHz HCMOS','','',3,0,0.0000,'',0,'','','2021-07-30 14:32:53','',0,0,0,1,255),(382,57,50,'Crystal XTal 26.0000 MHz 6pF','','',5,0,0.0000,'',0,'','','2021-07-30 14:35:37','',0,0,0,1,257),(383,57,50,'Crystal XTal 32.7680 kHz 12.5pF','','',9,0,0.0000,'',0,'','','2021-07-30 14:38:46','',0,0,0,1,257),(384,57,50,'Crystal XTal 32.7680 kHz 6pF','NX32155A','',7,0,0.0000,'',0,'','','2021-07-30 14:40:45','',0,0,0,1,257),(385,57,50,'Crystal XTal 32.0000 MHz 10pF','NX2520SA','',9,0,0.0000,'',0,'','','2021-07-30 14:42:42','',0,0,0,1,257),(386,57,50,'Crystal XTal 30.0000 MHz 10pF','','',5,0,0.0000,'',0,'','','2021-07-30 14:44:30','',0,0,0,1,257),(387,57,51,'Crystal XTal 40 MHz ','±10ppm 10pF 50Ω','',17,0,0.0000,'',0,'','','2021-07-30 14:48:48','',0,0,0,1,261),(388,57,50,'Crystal XTal 8.0000 MHz 18pF','','',9,0,0.0000,'',0,'','','2021-07-30 14:53:01','',0,0,0,1,258),(389,57,50,'Crystal XTal 8.0000 MHz 20pF','','',10,0,0.0000,'',0,'','','2021-07-30 14:54:17','',0,0,0,1,258),(390,57,50,'Crystal 32.7680 kHz 6pF','','',10,0,0.0000,'',0,'','','2021-07-30 14:56:52','',0,0,0,1,259),(391,58,50,'OCS 40.000 MHz ','CMOS','',4,0,0.0000,'',0,'','','2021-07-30 14:59:58','',0,0,0,1,263),(392,24,40,'FB 1kΩ ','100MHz 200mA 1 800mΩ','',75,0,0.0000,'',0,'','','2021-07-30 15:04:08','',0,0,0,1,266),(393,24,38,'FB 220Ω ','100MHz 2A 1 150mΩ','',75,0,0.0000,'',0,'','','2021-07-30 15:06:21','',0,0,0,1,265),(394,24,40,'FB 120Ω 100MHz 2A 1 50mΩ','','',50,0,0.0000,'',0,'','','2021-07-30 15:08:54','',0,0,0,1,264),(395,24,38,'FB 40 OHM','','',200,0,0.0000,'',0,'','','2021-07-30 15:12:42','',0,0,0,1,267),(396,24,38,'FB 2.2kΩ','','',15,0,0.0000,'',0,'','','2021-07-30 15:19:13','',0,0,0,1,268),(397,24,40,'FB 1000Ω','','',20,0,0.0000,'',0,'','','2021-07-30 15:20:34','',0,0,0,1,268),(398,24,38,'FB 600Ω 200mA','','',10,0,0.0000,'',0,'','','2021-07-30 15:21:56','',0,0,0,1,268),(399,24,40,'FB 600Ω','','',20,0,0.0000,'',0,'','','2021-07-30 15:38:23','',0,0,0,1,268),(400,24,40,'FB 300Ω','','',15,0,0.0000,'',0,'','','2021-07-30 15:39:19','',0,0,0,1,268),(401,22,53,'AP1509-50SG-13','22V 2A DC-DC Converters RoHS','',8,0,0.0000,'',0,'','','2021-08-02 09:42:19','',0,0,0,1,279),(402,22,52,'LM1117IMP-ADJ/NOPB','IC REG LIN POS ADJ 800mA','',4,0,0.0000,'',0,'','','2021-08-02 09:47:16','',0,0,0,1,281),(403,22,55,'SN74HC00PWR','Gates and Inverters RoHS','',150,0,0.0000,'',0,'','','2021-08-02 10:07:59','',0,0,0,1,280),(404,22,52,'AMS1117-ADJ','Adju stable 30V 1.25v~12V 1.5@1A ','',50,0,0.0000,'',0,'','','2021-08-02 10:19:01','',0,0,0,1,283),(405,22,56,'DRV8832DGQR','Motor Drivers RoHS','',49,0,0.0000,'',0,'','','2021-08-02 10:27:20','',0,0,0,1,282),(406,22,53,'LM5358','General Purpose Amplifiers','',69,0,0.0000,'',0,'','','2021-08-02 10:32:50','',0,0,0,1,288),(407,22,57,'MAX232IDR','Transceiver RS232 2/2 120kbps','',10,0,0.0000,'',0,'','','2021-08-02 10:38:31','',0,0,0,1,286),(408,103,40,'Chip Resistor','100K ±1% 1/10W ±100ppm/°C','',81,0,0.0000,'',0,'','','2021-08-02 10:42:04','',0,0,0,1,175),(409,22,58,'XC9236A33CMR','6V 600mA DC-DC Converters','',20,0,0.0000,'',0,'','','2021-08-02 10:45:37','',0,0,0,1,287),(410,103,40,'Chip Resistor','10K ±5% 1/10W ±200ppm/°C','',88,0,0.0000,'',0,'','','2021-08-02 10:47:02','',0,0,0,1,175),(411,22,59,'74HC86D,653','XOR 74 Series','',10,0,0.0000,'',0,'','','2021-08-02 10:48:40','',0,0,0,1,284),(412,103,40,'Chip Resistor','15K ±1% 1/10W ±100ppm/°C','',91,0,0.0000,'',0,'','','2021-08-02 10:51:39','',0,0,0,1,176),(413,103,43,'Chip Resistor','0.002Ω ±1% 2W ±275ppm/°C','',10,0,0.0000,'',0,'','','2021-08-02 10:58:10','',0,0,0,1,176),(414,103,42,'Chip Resistor','422Ω ±1% 1/16W ±100ppm/°C','',62,0,0.0000,'',0,'','','2021-08-02 11:04:58','',0,0,0,1,177),(415,22,54,'SN65HV D08DR','Transceiver RS422, RS485 1/1','',10,0,0.0000,'',0,'','','2021-08-02 11:08:07','',0,0,0,1,285),(416,22,60,'RT8009-33GJ5','5.5V 600mA DC-DC Converters','',4,0,0.0000,'',0,'','','2021-08-02 11:11:59','',0,0,0,1,280),(417,22,61,'CD74HC4050PWR','IC BUFFER NON-INVERT 6V ','',6,0,0.0000,'',0,'','','2021-08-02 11:17:27','',0,0,0,1,292),(418,103,42,'Chip Resistor','22 ±1% 1/16W ±200ppm/°C','',83,0,0.0000,'',0,'','','2021-08-02 11:19:07','',0,0,0,1,177),(419,103,40,'Chip Resistor','220Ω ±1% 0.1W ±100ppm/°C','',85,0,0.0000,'',0,'','','2021-08-02 11:23:18','',0,0,0,1,178),(420,103,40,'Chip Resistor','86.6kΩ ±1% 0.1W ±100ppm/°C','',115,0,0.0000,'',0,'','','2021-08-02 11:29:59','',0,0,0,1,178),(421,103,40,'Chip Resistor','2.2K ±1% 1/10W ±100ppm/°C','',80,0,0.0000,'',0,'','','2021-08-02 11:33:44','',0,0,0,1,183),(422,103,40,'Chip Resistor','0.56Ω ±1% 0.1W ±800ppm/°C','',169,0,0.0000,'',0,'','','2021-08-02 11:39:56','',0,0,0,1,183),(423,103,40,'Chip Resistor','120Ω ±1% 0.1W ±100ppm/°C','',87,0,0.0000,'',0,'','','2021-08-02 11:45:18','',0,0,0,1,180),(424,22,NULL,'STM32F205RET6','IC MCU 32BIT 512KB FLASH 64LQFP','',2,0,0.0000,'',0,'','','2021-08-02 13:05:08','',0,0,0,1,291),(425,103,40,'Chip Resistor','20K ±1% 1/10W ±100ppm/°C','',58,0,0.0000,'',0,'','','2021-08-02 13:13:32','',0,0,0,1,180),(426,22,62,'ADS1115DGSR','16 860 2,4 Differential, Singel Ended','',19,0,0.0000,'',0,'','','2021-08-02 13:22:16','',0,0,0,1,293),(427,22,63,'TXS0108E PWR','Level Translators Shifters','',17,0,0.0000,'',0,'','','2021-08-02 13:32:53','',0,0,0,1,289),(428,103,40,'Chip Resistor','422 ±1% 1/10W ±100ppm/°C','',87,0,0.0000,'',0,'','','2021-08-02 13:42:16','',0,0,0,1,185),(429,103,40,'Chip Resistor','11K ±1% 1/10W ±100ppm/°C','',91,0,0.0000,'',0,'','','2021-08-02 13:45:57','',0,0,0,1,185),(430,103,40,'Chip Resistor','20kΩ ±1% 0.1W ±100ppm/°C','',91,0,0.0000,'',0,'','','2021-08-02 13:51:25','',0,0,0,1,181),(431,103,38,'Chip Resistor','43kΩ ±1% 0.125W ±100ppm/°C','',51,0,0.0000,'',0,'','','2021-08-02 13:55:01','',0,0,0,1,182),(432,103,40,'Chip Resistor','21kΩ ±1% 0.1W ±100ppm/°C','',98,0,0.0000,'',0,'','','2021-08-02 14:00:23','',0,0,0,1,182),(433,22,52,'AMS1117-3.3','Fixed 18V 3.3V 1.4V @ 1A ','',50,0,0.0000,'',0,'','','2021-08-02 14:05:49','',0,0,0,1,297),(434,22,59,'IC RXTX ','CAN HALF DUP ','',1,0,0.0000,'',0,'','','2021-08-02 14:08:58','',0,0,0,1,294),(435,22,50,'STM32L100RCT6','IC MCU 32BIT 246KB FLASH 64LQFP','',4,0,0.0000,'',0,'','','2021-08-02 14:13:11','',0,0,0,1,270),(436,103,40,'Chip Resistor','10kΩ ±1% 0.1W ±100ppm/°C','',171,0,0.0000,'',0,'','','2021-08-02 14:13:12','',0,0,0,1,186),(437,22,50,'TB-CA025-500-WH','SURGE SUPP TBU 500mA 250vIMP','',6,0,0.0000,'',0,'','','2021-08-02 14:17:05','',0,0,0,1,295),(438,22,52,'LD1117s12CTR','Low drop fixed STMicro LDO Voltage Regulators','',9,0,0.0000,'',0,'','','2021-08-02 14:25:29','',0,0,0,1,296),(439,103,40,'Chip Resistor','1kΩ ±1% 0.1W ±100ppm/°C','',151,0,0.0000,'',0,'','','2021-08-02 14:27:30','',0,0,0,1,186),(440,22,52,'AMS1117-5.0','Fixed 18V 5V 1.4V @ 1A ','',50,0,0.0000,'',0,'','','2021-08-02 14:31:41','',0,0,0,1,299),(441,103,44,'Chip Resistor - Surface ','0.062Ω ±1% 0.5W','',67,0,0.0000,'',0,'','','2021-08-02 14:33:28','',0,0,0,1,187),(442,27,64,'UMH3NFHATN','NPN+NPN ROHM Bipolar Transistor - Pre-Biased','',8,0,0.0000,'',0,'','','2021-08-02 14:36:34','',0,0,0,1,301),(443,103,40,'Chip Resistor','200kΩ ±5% 0.1W ±100ppm/°C','',203,0,0.0000,'',0,'','','2021-08-02 14:41:12','',0,0,0,1,187),(444,103,40,'Chip Resistor - Surface Mount','6.34K ±1% 1/10W','',308,0,0.0000,'',0,'','','2021-08-02 16:06:11','',0,0,0,1,188),(445,22,54,'ADM3065EARZ-R7','IC Transceiver Half 1/1','',10,0,0.0000,'',0,'','','2021-08-03 09:21:24','',0,0,0,1,302),(446,22,52,'LMR50410Y5FQDBVRQ1','Automotive Qualified simple swit','',25,0,0.0000,'',0,'','','2021-08-03 09:55:34','',0,0,0,1,303),(447,103,40,'RES 121 OHM 1% 1/10W','','',91,0,0.0000,'',0,'','','2021-08-03 10:11:02','',0,0,0,1,188),(448,29,49,'ZMPT101B','Through Hole Current Transformers','',15,0,0.0000,'',0,'','','2021-08-03 10:42:35','',0,0,0,1,334),(449,85,49,'Relay OMRON','G5LE-1 5VDC','',21,0,0.0000,'',0,'','','2021-08-03 11:01:33','',0,0,0,1,332),(451,29,49,'ZMCT103C','Through Hole Current Transformers','',14,0,0.0000,'',0,'','','2021-08-03 11:12:05','',0,0,0,1,72),(452,103,42,'Chip Resistor - Surface Mount','4.02k ±1% 1/16W ','',206,0,0.0000,'',0,'','','2021-08-03 11:26:43','',0,0,0,1,189),(453,103,40,'Thick Film Resistor - SMD','470 OHM 5%','',45,0,0.0000,'',0,'','','2021-08-03 11:41:52','',0,0,0,1,189),(454,111,50,'QUECTEL BG96','GSM/GPRS LCC 2G/3G/4G/5G Modules','',5,0,0.0000,'',0,'','','2021-08-03 11:43:56','',0,0,0,1,307),(455,111,50,'QUECTEL M26','GSM/GPRS No LCC_44 2G/3G/4G/5G Communication Modules/GSM','',3,0,0.0000,'',0,'','','2021-08-03 11:46:39','',0,0,0,1,308),(456,22,54,'INA219IDR','High Side 0V~26V 3V~5.5V','',10,0,0.0000,'',0,'','','2021-08-03 11:53:59','',0,0,0,1,300),(457,112,49,'SSR OMRON','G3MB-202P 5V, LOAD 240 - 2A 50/60Hz','',4,0,0.0000,'',0,'','','2021-08-03 12:00:04','',0,0,0,1,24),(458,103,37,'Thick Film Resistor - SMD','0 OHM 1/4W','',62,0,0.0000,'',0,'','','2021-08-03 13:07:44','',0,0,0,1,190),(459,103,NULL,'Thick Film Resistor - SMD','10 OHM 1% 1/10W','',94,0,0.0000,'',0,'','','2021-08-03 13:12:55','',0,0,0,1,190),(460,103,40,'Thick Film Resistor - SMD','10 OHM 5%','',100,0,0.0000,'',0,'','','2021-08-03 13:18:31','',0,0,0,1,191),(461,103,40,'Thick Film Resistor - SMD','100 OHM 5%','',95,0,0.0000,'',0,'','','2021-08-03 13:22:32','',0,0,0,1,193),(462,103,40,'Thick Film Resistor - SMD','100 OHM 0.5% 1/10W','',159,0,0.0000,'',0,'','','2021-08-03 13:30:30','',0,0,0,1,193),(463,105,NULL,' Fuse Holders ','','',13,0,0.0000,'',0,'','','2021-08-03 13:33:40','',0,0,0,1,40),(464,103,40,'Chip Resistor - Surface Mount','10.7K ±1% 1/10W','',309,0,0.0000,'',0,'','','2021-08-03 13:38:39','',0,0,0,1,196),(465,103,40,'Chip Resistor - Surface Mount','0.56 ±1% 1/10W','',586,0,0.0000,'',0,'','','2021-08-03 13:47:30','',0,0,0,1,196),(466,103,40,'RES SMD 1K OHM 1% 1/10W','','',500,0,0.0000,'',0,'','','2021-08-03 13:55:29','',0,0,0,1,194),(467,103,40,'RES 10K OHM','','',12,0,0.0000,'',0,'','','2021-08-03 14:06:21','',0,0,0,1,194),(468,103,50,'SMD Variable Resistor RoHS','±25% ±250ppm/°C','',148,0,0.0000,'',0,'','','2021-08-03 14:12:12','',0,0,0,1,195),(469,103,40,'RES 22 OHM 5%','','',74,0,0.0000,'',0,'','','2021-08-03 14:16:14','',0,0,0,1,195),(470,103,49,'10K OHM 1/4W','','',21,0,0.0000,'',0,'','','2021-08-03 14:18:54','',0,0,0,1,197),(471,103,49,'110 OHM','','',17,0,0.0000,'',0,'','','2021-08-03 14:21:13','',0,0,0,1,197),(472,103,65,'Bourns Resistor Networks & Arrays','33 OHMS 5% CONV','',52,0,0.0000,'',0,'','','2021-08-03 14:30:15','',0,0,0,1,199),(473,103,49,'Resistor Trimmer Variable','10K OHM 0.5W','',13,0,0.0000,'',0,'','','2021-08-03 14:40:49','',0,0,0,1,199),(474,113,69,'PC817X2CSP9F','Transistor Optocouplers DC, 1, 5000Vrms, Max 80V 50mA ','',37,0,0.0000,'',0,'','','2021-08-03 15:55:11','',0,0,0,1,305),(475,39,71,'DTC143ECA','NPN-Pre-Biased 100mA 50V 200mW ','',161,0,0.0000,'',0,'','','2021-08-03 16:03:12','',0,0,0,1,304),(476,98,60,'RT8009-33GJ5 Step Down','2.5V~5.5V 600mA DC-DC Converters 3.3V 600mA 1.25MHz','',1,0,0.0000,'',0,'','','2021-08-03 16:22:10','',0,0,0,1,306),(477,115,NULL,'5F.1000210000R1','250V 1A Glass Tube Fuse Fast Blow Tube,5.2x20mm Cartridge Fuses','',20,0,0.0000,'',0,'','','2021-08-03 16:29:53','',0,0,0,1,38),(478,116,73,' SP0505BAJTG','Unidirectional - - - 5.5V (Max) SC-70-6 TVS ','',20,0,0.0000,'',0,'','','2021-08-03 16:43:18','',0,0,0,1,343),(479,116,71,'SM712-02HTG','Bidirectional 19A (8/20us) 31V 13.3V 12V SOT-23(SOT-23-3) TVS','',40,0,0.0000,'',0,'','','2021-08-03 16:50:25','',0,0,0,1,342),(480,103,74,'SS34','Diode 40V 3A 550mV @ 3A Schottky Barrier Diodes','',162,0,0.0000,'',0,'','','2021-08-09 10:57:34','',0,0,0,1,198),(481,103,49,'333-2UYC/S530-A3','Top View Through Hole Light Emitting Diodes (LED)','',20,0,0.0000,'',0,'','','2021-08-09 11:03:27','',0,0,0,1,198),(482,103,40,'ORH-R36A','OrangeRed 610~620nm Light Emitting Diodes','',154,0,0.0000,'',0,'','','2021-08-09 11:08:49','',0,0,0,1,201),(483,103,40,'SZYY0603YG','Green-yellow 568~574nm Light Emitting Diodes','',13,0,0.0000,'',0,'','','2021-08-09 11:12:31','',0,0,0,1,201),(484,103,40,'19-213/Y2C-CQ2R2L/3T(CY)','Yellow 585.5~591.5nm Light Emitting Diodes','',10,0,0.0000,'',0,'','','2021-08-09 13:07:23','',0,0,0,1,200),(485,103,40,'19-217/BHC-ZL1M2RY/3T','Blue 465~475nm Light Emitting Diodes','',20,0,0.0000,'',0,'','','2021-08-09 13:12:44','',0,0,0,1,202),(486,103,40,'PGB1010603MR','TVS Diode 24VWM 150VC','',233,0,0.0000,'',0,'','','2021-08-09 13:19:36','',0,0,0,1,202),(487,103,49,'PH1N4148TB','100V 200mA 1V @ 10mA 4ns Axial Switching','',150,0,0.0000,'',0,'','','2021-08-09 13:33:39','',0,0,0,1,203),(488,103,75,'SS34LW RVG','Diode Schottky 40V 3A','',12,0,0.0000,'',0,'','','2021-08-09 13:39:15','',0,0,0,1,203),(489,103,76,'SK32WA','20V 3A 550mV @ 3A Schottky Barrier','',17,0,0.0000,'',0,'','','2021-08-09 13:42:31','',0,0,0,1,206),(490,103,64,'SMF05C.TCT','TVS 5V (Max) 6V 12.5V SC-70-6','',18,0,0.0000,'',0,'','','2021-08-09 13:46:00','',0,0,0,1,206),(491,103,77,'PTVS5VOZ1USKYL','TVS Diode 5V 12V ','',26,0,0.0000,'',0,'','','2021-08-09 14:00:33','',0,0,0,1,210),(492,103,78,'BAT60JFILM','Diode Schottky 10V 3A','',70,0,0.0000,'',0,'','','2021-08-09 14:08:48','',0,0,0,1,210),(493,103,38,'CAP CER 4700PF 50V','','',9,0,0.0000,'',0,'','','2021-08-12 10:58:13','',0,0,0,1,207),(494,103,37,'CAP TANT 4.7UF 10V','','',9,0,0.0000,'',0,'','','2021-08-12 11:03:29','',0,0,0,1,207),(495,103,42,'CAP CER 10000PF 25V','','',19,0,0.0000,'',0,'','','2021-08-12 11:06:19','',0,0,0,1,205),(496,103,42,'CAP CER 2700PF','','',10,0,0.0000,'',0,'','','2021-08-12 11:07:21','',0,0,0,1,205),(497,103,42,'CAP CER 1000PF 50V','','',35,0,0.0000,'',0,'','','2021-08-12 11:09:20','',0,0,0,1,208),(498,103,42,'CAP CER 220PF','','',11,0,0.0000,'',0,'','','2021-08-12 11:11:08','',0,0,0,1,208),(499,103,42,'CAP CER 680PF 50V','','',10,0,0.0000,'',0,'','','2021-08-12 11:12:19','',0,0,0,1,209),(500,103,40,'CAP CER 180PF','','',6,0,0.0000,'',0,'','','2021-08-12 11:14:07','',0,0,0,1,209),(501,103,42,'CAP CER 100PF 50V C0G/NP0','','',20,0,0.0000,'',0,'','','2021-08-12 11:18:18','',0,0,0,1,211),(502,103,79,'CAP TANT 22UF 25V','','',10,0,0.0000,'',0,'','','2021-08-12 11:20:17','',0,0,0,1,212),(503,103,80,'CAP TANT 10UF 35V','','',10,0,0.0000,'',0,'','','2021-08-12 11:21:52','',0,0,0,1,212),(504,103,79,'CAP TANT 2.2UF 35V','','',10,0,0.0000,'',0,'','','2021-08-12 11:28:26','',0,0,0,1,213),(505,103,42,'CAP CER 16PF','','',10,0,0.0000,'',0,'','','2021-08-12 11:31:37','',0,0,0,1,213),(506,103,38,'CAP CER 20PF','','',8,0,0.0000,'',0,'','','2021-08-12 11:37:33','',0,0,0,1,200),(507,103,42,'CAP CER 6PF 50V','','',10,0,0.0000,'',0,'','','2021-08-12 13:28:09','',0,0,0,1,214);
/*!40000 ALTER TABLE `Part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartAttachment`
--

DROP TABLE IF EXISTS `PartAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `isImage` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_76D73D864CE34BEC` (`part_id`),
  CONSTRAINT `FK_76D73D864CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartAttachment`
--

LOCK TABLES `PartAttachment` WRITE;
/*!40000 ALTER TABLE `PartAttachment` DISABLE KEYS */;
INSERT INTO `PartAttachment` VALUES (1,86,'PartAttachment','2d980f66-6a90-11eb-9eb1-42010ab80009','photo_2021-02-09_11-30-17.jpg','image/jpeg',65256,'',NULL,'2021-02-09 04:35:03',NULL),(2,84,'PartAttachment','48dc945e-6a90-11eb-987f-42010ab80009','photo_2021-02-09_11-15-03.jpg','image/jpeg',124633,'',NULL,'2021-02-09 04:35:49',NULL);
/*!40000 ALTER TABLE `PartAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartCategory`
--

DROP TABLE IF EXISTS `PartCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `categoryPath` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_131FB619727ACA70` (`parent_id`),
  KEY `IDX_131FB619DA439252` (`lft`),
  KEY `IDX_131FB619D5E02D69` (`rgt`),
  CONSTRAINT `FK_131FB619727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `PartCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartCategory`
--

LOCK TABLES `PartCategory` WRITE;
/*!40000 ALTER TABLE `PartCategory` DISABLE KEYS */;
INSERT INTO `PartCategory` VALUES (1,NULL,1,200,0,1,'Home','','Home'),(6,1,98,111,1,1,'Microcontrollers','','Home ➤ Microcontrollers'),(8,1,112,111,1,1,'2 Passive Components','','Home ➤ 2 Passive Components'),(9,1,4,11,1,1,'Resistors','','Home ➤ Resistors'),(10,1,30,49,1,1,'Capacitors','','Home ➤ Capacitors'),(11,1,112,121,1,1,'Tools ','','Home ➤ Tools '),(12,87,116,119,3,1,'Soldering','','Home ➤ Tools  ➤ Electronics ➤ Soldering'),(13,11,113,114,2,1,'Perkakas','','Home ➤ Tools  ➤ Perkakas'),(16,1,122,175,1,1,'Electromechanical Components','','Home ➤ Electromechanical Components'),(17,16,131,138,2,1,'Switches and Button','','Home ➤ Electromechanical Components ➤ Switches and Button'),(19,16,139,172,2,1,'Connectors','','Home ➤ Electromechanical Components ➤ Connectors'),(20,109,17,18,2,1,'Inductors','','Home ➤ Iductors / Coil / Transformers ➤ Inductors'),(22,1,72,73,1,1,'IC (Integrated Circuits)','','Home ➤ IC (Integrated Circuits)'),(24,1,22,23,1,1,'Ferrite Bead','','Home ➤ Ferrite Bead'),(25,1,82,85,1,1,'Diodes','','Home ➤ Diodes'),(26,1,2,3,1,1,'RF','','Home ➤ RF'),(27,1,74,81,1,1,'Transistor','','Home ➤ Transistor'),(29,109,15,16,2,1,'Transformers','','Home ➤ Iductors / Coil / Transformers ➤ Transformers'),(30,41,53,60,2,1,'LED','','Home ➤ Optoelectronics ➤ LED'),(33,86,108,109,3,1,'Arduino','','Home ➤ Microcontrollers ➤ Development Boards ➤ Arduino'),(34,86,102,107,3,1,'ESP','','Home ➤ Microcontrollers ➤ Development Boards ➤ ESP'),(35,86,100,101,3,1,'STM32','','Home ➤ Microcontrollers ➤ Development Boards ➤ STM32'),(36,34,103,104,4,1,'ESP32/32PICO','','Home ➤ Microcontrollers ➤ Development Boards ➤ ESP ➤ ESP32/32PICO'),(37,34,105,106,4,1,'ESP8266/NODE MCU','','Home ➤ Microcontrollers ➤ Development Boards ➤ ESP ➤ ESP8266/NODE MCU'),(38,27,75,76,2,1,'NPN','','Home ➤ Transistor ➤ NPN'),(39,27,77,78,2,1,'PNP','','Home ➤ Transistor ➤ PNP'),(40,27,79,80,2,1,'MOSFET','','Home ➤ Transistor ➤ MOSFET'),(41,1,52,71,1,1,'Optoelectronics','','Home ➤ Optoelectronics'),(42,30,54,55,3,1,'Module','','Home ➤ Optoelectronics ➤ LED ➤ Module'),(43,30,56,57,3,1,'SMD','','Home ➤ Optoelectronics ➤ LED ➤ SMD'),(44,30,58,59,3,1,'Through hole','','Home ➤ Optoelectronics ➤ LED ➤ Through hole'),(45,41,61,66,2,1,'LCD','','Home ➤ Optoelectronics ➤ LCD'),(46,45,62,63,3,1,'Text','','Home ➤ Optoelectronics ➤ LCD ➤ Text'),(47,45,64,65,3,1,'Graphich','','Home ➤ Optoelectronics ➤ LCD ➤ Graphich'),(48,53,32,33,3,1,'SMD','','Home ➤ Capacitors ➤ Ceramic ➤ SMD'),(49,54,38,39,3,1,'Through hole','','Home ➤ Capacitors ➤ Tantalum ➤ Through hole'),(50,9,5,6,2,1,'Power Resistors','','Home ➤ Resistors ➤ Power Resistors'),(51,9,7,8,2,1,'SMD','','Home ➤ Resistors ➤ SMD'),(52,9,9,10,2,1,'Through hole','','Home ➤ Resistors ➤ Through hole'),(53,10,31,34,2,1,'Ceramic','','Home ➤ Capacitors ➤ Ceramic'),(54,10,35,40,2,1,'Tantalum','','Home ➤ Capacitors ➤ Tantalum'),(55,54,36,37,3,1,'SMD','','Home ➤ Capacitors ➤ Tantalum ➤ SMD'),(56,1,24,29,1,1,'Crystals / Oscillators / Resonators','','Home ➤ Crystals / Oscillators / Resonators'),(57,56,25,26,2,1,'Crystals','','Home ➤ Crystals / Oscillators / Resonators ➤ Crystals'),(58,56,27,28,2,1,'Crystals Oscillators','','Home ➤ Crystals / Oscillators / Resonators ➤ Crystals Oscillators'),(59,1,12,13,1,1,'Potentiometers ','','Home ➤ Potentiometers '),(60,1,50,51,1,1,' Photoresistors / LDRs','','Home ➤  Photoresistors / LDRs'),(61,19,140,171,3,1,'PCB Connectors','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors'),(62,61,143,144,4,1,'Audio','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Audio'),(63,61,147,148,4,1,'Block Terminal','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Block Terminal'),(64,61,149,150,4,1,'USB','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ USB'),(65,61,151,152,4,1,'Board to Board','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Board to Board'),(66,61,153,154,4,1,'Pin Header','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Pin Header'),(67,61,155,156,4,1,'D-Sub','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ D-Sub'),(68,61,157,158,4,1,'IDC Connectors + Box Headers','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ IDC Connectors + Box Headers'),(69,61,159,160,4,1,'PSU','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ PSU'),(70,61,145,146,4,1,'DC Power Jacks','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ DC Power Jacks'),(71,17,132,133,3,1,'Switches','','Home ➤ Electromechanical Components ➤ Switches and Button ➤ Switches'),(72,17,134,135,3,1,'Push Button','','Home ➤ Electromechanical Components ➤ Switches and Button ➤ Push Button'),(73,17,136,137,3,1,'DIP Switches','','Home ➤ Electromechanical Components ➤ Switches and Button ➤ DIP Switches'),(74,1,86,97,1,1,'Fuses','','Home ➤ Fuses'),(75,16,125,130,2,1,'Motors','','Home ➤ Electromechanical Components ➤ Motors'),(76,75,126,127,3,1,'Motor DC','','Home ➤ Electromechanical Components ➤ Motors ➤ Motor DC'),(77,75,128,129,3,1,'Servo','','Home ➤ Electromechanical Components ➤ Motors ➤ Servo'),(79,16,173,174,2,1,'Battray Holders','','Home ➤ Electromechanical Components ➤ Battray Holders'),(80,1,176,185,1,1,'Modules','','Home ➤ Modules'),(81,1,186,191,1,1,'PCB','','Home ➤ PCB'),(82,80,177,180,2,1,'Sensor','','Home ➤ Modules ➤ Sensor'),(83,80,181,182,2,1,'Power Supply','','Home ➤ Modules ➤ Power Supply'),(84,80,183,184,2,1,'Driver','','Home ➤ Modules ➤ Driver'),(85,16,123,124,2,1,'Relay','','Home ➤ Electromechanical Components ➤ Relay'),(86,6,99,110,2,1,'Development Boards','','Home ➤ Microcontrollers ➤ Development Boards'),(87,11,115,120,2,1,'Electronics','','Home ➤ Tools  ➤ Electronics'),(88,12,117,118,4,1,'Solder Uap','','Home ➤ Tools  ➤ Electronics ➤ Soldering ➤ Solder Uap'),(89,61,161,166,4,1,'Antena','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Antena'),(90,82,178,179,3,1,'GPS','','Home ➤ Modules ➤ Sensor ➤ GPS'),(91,89,162,163,5,1,'Active','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Antena ➤ Active'),(92,89,164,165,5,1,'Passive','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Antena ➤ Passive'),(93,61,141,142,4,1,'CONN','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ CONN'),(94,61,167,168,4,1,'SIM CARD','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ SIM CARD'),(95,61,169,170,4,1,'Others','','Home ➤ Electromechanical Components ➤ Connectors ➤ PCB Connectors ➤ Others'),(96,81,187,188,2,1,'Prototype','','Home ➤ PCB ➤ Prototype'),(97,81,189,190,2,1,'DOT MATRIX','','Home ➤ PCB ➤ DOT MATRIX'),(98,114,197,198,2,1,'DC -DC Converters','','Home ➤ Power Management ICs ➤ DC -DC Converters'),(99,10,41,42,2,1,'Polyester','','Home ➤ Capacitors ➤ Polyester'),(100,10,43,48,2,1,'Elco','','Home ➤ Capacitors ➤ Elco'),(101,100,44,45,3,1,'SMD','','Home ➤ Capacitors ➤ Elco ➤ SMD'),(102,100,46,47,3,1,'Through hole','','Home ➤ Capacitors ➤ Elco ➤ Through hole'),(103,1,192,193,1,1,'Dhika','','Home ➤ Dhika'),(105,74,87,88,2,1,'Fuse Holders','','Home ➤ Fuses ➤ Fuse Holders'),(106,74,89,90,2,1,'PTC Resettable Fuses','','Home ➤ Fuses ➤ PTC Resettable Fuses'),(107,74,91,92,2,1,'Circuit Breakers','','Home ➤ Fuses ➤ Circuit Breakers'),(108,74,93,94,2,1,'Automotive Fuses','','Home ➤ Fuses ➤ Automotive Fuses'),(109,1,14,21,1,1,'Iductors / Coil / Transformers','','Home ➤ Iductors / Coil / Transformers'),(110,109,19,20,2,1,'Power Inductors','','Home ➤ Iductors / Coil / Transformers ➤ Power Inductors'),(111,1,194,195,1,1,'IoT/Communucation Modules','','Home ➤ IoT/Communucation Modules'),(112,41,67,68,2,1,'Solid State Relays','','Home ➤ Optoelectronics ➤ Solid State Relays'),(113,41,69,70,2,1,'Phototransistor','','Home ➤ Optoelectronics ➤ Phototransistor'),(114,1,196,199,1,1,'Power Management ICs','','Home ➤ Power Management ICs'),(115,74,95,96,2,1,'Cartridge Fuses','','Home ➤ Fuses ➤ Cartridge Fuses'),(116,25,83,84,2,1,'TVS','','Home ➤ Diodes ➤ TVS');
/*!40000 ALTER TABLE `PartCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartDistributor`
--

DROP TABLE IF EXISTS `PartDistributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartDistributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `orderNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `packagingUnit` int(11) NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ignoreForReports` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBA293844CE34BEC` (`part_id`),
  KEY `IDX_FBA293842D863A58` (`distributor_id`),
  CONSTRAINT `FK_FBA293842D863A58` FOREIGN KEY (`distributor_id`) REFERENCES `Distributor` (`id`),
  CONSTRAINT `FK_FBA293844CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartDistributor`
--

LOCK TABLES `PartDistributor` WRITE;
/*!40000 ALTER TABLE `PartDistributor` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartDistributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartKeeprUser`
--

DROP TABLE IF EXISTS `PartKeeprUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartKeeprUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL,
  `legacy` tinyint(1) NOT NULL,
  `lastSeen` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `protected` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_provider` (`username`,`provider_id`),
  KEY `IDX_7572D706A53A8AA` (`provider_id`),
  CONSTRAINT `FK_7572D706A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `UserProvider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartKeeprUser`
--

LOCK TABLES `PartKeeprUser` WRITE;
/*!40000 ALTER TABLE `PartKeeprUser` DISABLE KEYS */;
INSERT INTO `PartKeeprUser` VALUES (1,1,'admin','','',0,0,NULL,1,0),(2,1,'alim','','muhamadalim424@gmail.com',0,0,NULL,1,0),(3,1,'yusron','','',0,0,NULL,1,0),(4,1,'dhika','','',0,0,NULL,1,0);
/*!40000 ALTER TABLE `PartKeeprUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartManufacturer`
--

DROP TABLE IF EXISTS `PartManufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `partNumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F085878B4CE34BEC` (`part_id`),
  KEY `IDX_F085878BA23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_F085878B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_F085878BA23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartManufacturer`
--

LOCK TABLES `PartManufacturer` WRITE;
/*!40000 ALTER TABLE `PartManufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartManufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartParameter`
--

DROP TABLE IF EXISTS `PartParameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartParameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` double DEFAULT NULL,
  `normalizedValue` double DEFAULT NULL,
  `maximumValue` double DEFAULT NULL,
  `normalizedMaxValue` double DEFAULT NULL,
  `minimumValue` double DEFAULT NULL,
  `normalizedMinValue` double DEFAULT NULL,
  `stringValue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `valueType` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siPrefix_id` int(11) DEFAULT NULL,
  `minSiPrefix_id` int(11) DEFAULT NULL,
  `maxSiPrefix_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A28A98594CE34BEC` (`part_id`),
  KEY `IDX_A28A9859F8BD700D` (`unit_id`),
  KEY `IDX_A28A985919187357` (`siPrefix_id`),
  KEY `IDX_A28A9859569AA479` (`minSiPrefix_id`),
  KEY `IDX_A28A9859EFBC3F08` (`maxSiPrefix_id`),
  CONSTRAINT `FK_A28A985919187357` FOREIGN KEY (`siPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A98594CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_A28A9859569AA479` FOREIGN KEY (`minSiPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A9859EFBC3F08` FOREIGN KEY (`maxSiPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A9859F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartParameter`
--

LOCK TABLES `PartParameter` WRITE;
/*!40000 ALTER TABLE `PartParameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartParameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartUnit`
--

DROP TABLE IF EXISTS `PartUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartUnit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartUnit`
--

LOCK TABLES `PartUnit` WRITE;
/*!40000 ALTER TABLE `PartUnit` DISABLE KEYS */;
INSERT INTO `PartUnit` VALUES (1,'Pieces','pcs',1);
/*!40000 ALTER TABLE `PartUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E00EE972A76ED395` (`user_id`),
  CONSTRAINT `FK_E00EE972A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES (1,NULL,'INTELLI NEMA ',''),(2,NULL,'Prototype PCB Actuator','');
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectAttachment`
--

DROP TABLE IF EXISTS `ProjectAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_44010C5B166D1F9C` (`project_id`),
  CONSTRAINT `FK_44010C5B166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectAttachment`
--

LOCK TABLES `ProjectAttachment` WRITE;
/*!40000 ALTER TABLE `ProjectAttachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectPart`
--

DROP TABLE IF EXISTS `ProjectPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectPart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overageType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `overage` int(11) NOT NULL DEFAULT '0',
  `lotNumber` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0B193364CE34BEC` (`part_id`),
  KEY `IDX_B0B19336166D1F9C` (`project_id`),
  CONSTRAINT `FK_B0B19336166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`),
  CONSTRAINT `FK_B0B193364CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectPart`
--

LOCK TABLES `ProjectPart` WRITE;
/*!40000 ALTER TABLE `ProjectPart` DISABLE KEYS */;
INSERT INTO `ProjectPart` VALUES (1,110,2,1,'','absolute',0,''),(2,6,2,1,NULL,'absolute',0,''),(3,108,2,1,NULL,'absolute',0,''),(4,107,2,1,NULL,'absolute',0,''),(5,45,2,1,NULL,'absolute',0,''),(6,103,2,2,NULL,'absolute',0,''),(7,102,2,5,NULL,'absolute',0,''),(8,53,2,1,NULL,'absolute',0,'');
/*!40000 ALTER TABLE `ProjectPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectRun`
--

DROP TABLE IF EXISTS `ProjectRun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectRun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `runDateTime` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_574A3B5C166D1F9C` (`project_id`),
  CONSTRAINT `FK_574A3B5C166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectRun`
--

LOCK TABLES `ProjectRun` WRITE;
/*!40000 ALTER TABLE `ProjectRun` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectRun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectRunPart`
--

DROP TABLE IF EXISTS `ProjectRunPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectRunPart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `lotNumber` longtext COLLATE utf8_unicode_ci NOT NULL,
  `projectRun_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF41064B1A221EF0` (`projectRun_id`),
  KEY `IDX_BF41064B4CE34BEC` (`part_id`),
  CONSTRAINT `FK_BF41064B1A221EF0` FOREIGN KEY (`projectRun_id`) REFERENCES `ProjectRun` (`id`),
  CONSTRAINT `FK_BF41064B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectRunPart`
--

LOCK TABLES `ProjectRunPart` WRITE;
/*!40000 ALTER TABLE `ProjectRunPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectRunPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Report`
--

DROP TABLE IF EXISTS `Report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createDateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Report`
--

LOCK TABLES `Report` WRITE;
/*!40000 ALTER TABLE `Report` DISABLE KEYS */;
/*!40000 ALTER TABLE `Report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReportPart`
--

DROP TABLE IF EXISTS `ReportPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReportPart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) DEFAULT NULL,
  `part_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1BF0BD554BD2A4C0` (`report_id`),
  KEY `IDX_1BF0BD554CE34BEC` (`part_id`),
  KEY `IDX_1BF0BD552D863A58` (`distributor_id`),
  CONSTRAINT `FK_1BF0BD552D863A58` FOREIGN KEY (`distributor_id`) REFERENCES `Distributor` (`id`),
  CONSTRAINT `FK_1BF0BD554BD2A4C0` FOREIGN KEY (`report_id`) REFERENCES `Report` (`id`),
  CONSTRAINT `FK_1BF0BD554CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReportPart`
--

LOCK TABLES `ReportPart` WRITE;
/*!40000 ALTER TABLE `ReportPart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReportPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ReportProject`
--

DROP TABLE IF EXISTS `ReportProject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ReportProject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_83B0909B4BD2A4C0` (`report_id`),
  KEY `IDX_83B0909B166D1F9C` (`project_id`),
  CONSTRAINT `FK_83B0909B166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`),
  CONSTRAINT `FK_83B0909B4BD2A4C0` FOREIGN KEY (`report_id`) REFERENCES `Report` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ReportProject`
--

LOCK TABLES `ReportProject` WRITE;
/*!40000 ALTER TABLE `ReportProject` DISABLE KEYS */;
/*!40000 ALTER TABLE `ReportProject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SchemaVersions`
--

DROP TABLE IF EXISTS `SchemaVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SchemaVersions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SchemaVersions`
--

LOCK TABLES `SchemaVersions` WRITE;
/*!40000 ALTER TABLE `SchemaVersions` DISABLE KEYS */;
INSERT INTO `SchemaVersions` VALUES ('20150608120000'),('20150708120022'),('20150724174030'),('20151001180120'),('20151002183125'),('20151031163951'),('20151208162723'),('20160103145302'),('20170108122512'),('20170108143802'),('20170113203042'),('20170601175559');
/*!40000 ALTER TABLE `SchemaVersions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiPrefix`
--

DROP TABLE IF EXISTS `SiPrefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiPrefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `exponent` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiPrefix`
--

LOCK TABLES `SiPrefix` WRITE;
/*!40000 ALTER TABLE `SiPrefix` DISABLE KEYS */;
INSERT INTO `SiPrefix` VALUES (1,'yotta','Y',24,10),(2,'zetta','Z',21,10),(3,'exa','E',18,10),(4,'peta','P',15,10),(5,'tera','T',12,10),(6,'giga','G',9,10),(7,'mega','M',6,10),(8,'kilo','k',3,10),(9,'hecto','h',2,10),(10,'deca','da',1,10),(11,'-','',0,10),(12,'deci','d',-1,10),(13,'centi','c',-2,10),(14,'milli','m',-3,10),(15,'micro','μ',-6,10),(16,'nano','n',-9,10),(17,'pico','p',-12,10),(18,'femto','f',-15,10),(19,'atto','a',-18,10),(20,'zepto','z',-21,10),(21,'yocto','y',-24,10),(22,'kibi','Ki',1,1024),(23,'mebi','Mi',2,1024),(24,'gibi','Gi',3,1024),(25,'tebi','Ti',4,1024),(26,'pebi','Pi',5,1024),(27,'exbi','Ei',6,1024),(28,'zebi','Zi',7,1024),(29,'yobi','Yi',8,1024);
/*!40000 ALTER TABLE `SiPrefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatisticSnapshot`
--

DROP TABLE IF EXISTS `StatisticSnapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatisticSnapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `parts` int(11) NOT NULL,
  `categories` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatisticSnapshot`
--

LOCK TABLES `StatisticSnapshot` WRITE;
/*!40000 ALTER TABLE `StatisticSnapshot` DISABLE KEYS */;
INSERT INTO `StatisticSnapshot` VALUES (1,'2021-02-04 10:47:58',0,1),(2,'2021-02-05 06:00:05',2,7),(3,'2021-02-08 03:39:04',0,7),(4,'2021-02-08 12:00:05',71,72),(5,'2021-02-09 00:00:06',71,72),(6,'2021-02-09 12:00:05',85,83),(7,'2021-02-10 00:00:05',85,83),(8,'2021-02-10 12:00:05',94,86),(9,'2021-02-11 00:00:05',94,86),(10,'2021-02-11 12:00:06',94,86),(11,'2021-02-12 00:00:06',94,86),(12,'2021-02-14 18:00:05',94,86),(13,'2021-02-15 06:00:05',94,86),(14,'2021-02-15 18:00:04',94,86),(15,'2021-02-16 06:00:04',94,86),(16,'2021-02-16 19:46:52',94,86),(17,'2021-02-16 19:47:58',94,86),(18,'2021-02-17 06:00:03',94,86),(19,'2021-02-17 18:00:03',149,89),(20,'2021-02-18 12:00:03',165,89),(21,'2021-02-19 00:00:03',227,93),(22,'2021-02-19 12:00:02',227,93),(23,'2021-02-20 00:00:04',227,93),(24,'2021-02-20 12:00:02',227,93),(25,'2021-02-21 00:00:02',227,93),(26,'2021-02-21 12:00:03',227,93),(27,'2021-02-22 00:00:03',227,93),(28,'2021-02-22 12:00:03',227,93),(29,'2021-02-23 00:00:03',227,93),(30,'2021-02-23 12:00:03',227,93),(31,'2021-02-24 00:00:03',227,93),(32,'2021-02-24 12:00:02',227,93),(33,'2021-02-25 00:00:03',227,93),(34,'2021-02-25 12:00:03',227,93),(35,'2021-02-26 00:00:05',227,93),(36,'2021-02-26 12:00:02',227,93),(37,'2021-02-27 00:00:02',242,93),(38,'2021-02-27 12:00:03',242,93),(39,'2021-02-28 00:00:02',242,93),(40,'2021-02-28 12:00:03',242,93),(41,'2021-03-01 00:00:03',242,93),(42,'2021-03-01 12:00:04',242,93),(43,'2021-03-02 00:00:05',242,93),(44,'2021-03-02 12:00:02',242,93),(45,'2021-03-03 00:00:02',242,93),(46,'2021-03-03 12:00:03',242,93),(47,'2021-03-04 00:00:03',242,93),(48,'2021-03-04 12:00:03',242,93),(49,'2021-03-05 00:00:03',242,93),(50,'2021-03-05 12:00:02',242,93),(51,'2021-03-05 18:00:03',242,93),(52,'2021-03-06 06:00:03',242,93),(53,'2021-03-06 18:00:03',242,93),(54,'2021-03-07 06:00:04',242,93),(55,'2021-03-07 18:00:03',242,93),(56,'2021-03-08 06:00:02',242,93),(57,'2021-03-08 12:00:03',242,93),(58,'2021-03-09 00:00:04',242,93),(59,'2021-03-09 12:00:02',242,93),(60,'2021-03-10 00:00:02',242,93),(61,'2021-03-10 12:00:02',242,93),(62,'2021-03-11 06:00:03',242,93),(63,'2021-03-11 18:00:03',242,93),(64,'2021-03-12 06:00:03',242,93),(65,'2021-03-12 18:00:03',242,93),(66,'2021-03-13 06:00:03',242,93),(67,'2021-03-13 18:00:02',242,93),(68,'2021-03-14 06:00:03',242,93),(69,'2021-03-14 18:00:03',242,93),(70,'2021-03-15 06:00:03',242,93),(71,'2021-03-15 18:00:03',242,93),(72,'2021-03-16 06:00:03',242,93),(73,'2021-03-16 18:00:03',242,93),(74,'2021-03-17 06:00:03',242,93),(75,'2021-03-17 18:00:04',243,94),(76,'2021-03-18 06:00:03',243,94),(77,'2021-03-18 18:00:02',267,94),(78,'2021-03-19 06:00:02',266,94),(79,'2021-03-20 00:00:03',298,94),(80,'2021-03-20 12:00:02',298,94),(81,'2021-03-21 00:00:03',298,94),(82,'2021-03-21 12:00:02',298,94),(83,'2021-03-21 18:00:03',298,94),(84,'2021-03-22 06:00:02',298,94),(85,'2021-03-23 00:00:03',298,94),(86,'2021-03-23 12:00:02',302,94),(87,'2021-03-24 00:00:02',318,94),(88,'2021-03-24 18:00:02',318,94),(89,'2021-03-25 06:00:03',318,94),(90,'2021-03-25 18:00:02',318,94),(91,'2021-03-26 06:00:02',318,94),(92,'2021-03-27 00:00:02',318,94),(93,'2021-03-27 12:00:02',318,94),(94,'2021-03-28 00:00:03',318,94),(95,'2021-03-28 12:00:03',318,94),(96,'2021-03-29 00:00:03',318,94),(97,'2021-03-29 12:00:03',318,94),(98,'2021-03-30 00:00:04',318,94),(99,'2021-03-30 12:00:03',318,94),(100,'2021-03-31 00:00:03',318,94),(101,'2021-03-31 12:00:02',318,94),(102,'2021-04-01 00:00:03',318,94),(103,'2021-04-01 12:00:02',318,94),(104,'2021-04-02 00:00:02',318,94),(105,'2021-04-02 12:00:03',318,94),(106,'2021-04-03 00:00:02',318,94),(107,'2021-04-03 12:00:03',318,94),(108,'2021-04-04 00:00:02',318,94),(109,'2021-04-04 06:00:03',318,94),(110,'2021-04-04 18:00:03',318,94),(111,'2021-04-05 06:00:03',318,94),(112,'2021-04-05 18:00:03',318,94),(113,'2021-04-06 06:00:03',318,94),(114,'2021-04-06 18:00:02',318,94),(115,'2021-04-07 06:00:03',318,94),(116,'2021-04-07 18:00:02',318,94),(117,'2021-04-08 06:00:03',318,94),(118,'2021-04-08 18:00:03',318,94),(119,'2021-04-09 06:00:03',318,94),(120,'2021-04-09 18:00:03',318,94),(121,'2021-04-10 06:00:02',318,94),(122,'2021-04-10 18:00:02',318,94),(123,'2021-04-11 06:00:03',318,94),(124,'2021-04-11 18:00:02',318,94),(125,'2021-04-12 06:00:02',318,94),(126,'2021-04-13 00:00:02',318,94),(127,'2021-04-13 12:00:03',318,94),(128,'2021-04-14 00:00:03',318,94),(129,'2021-04-14 12:00:03',318,94),(130,'2021-04-15 00:00:03',318,94),(131,'2021-04-15 12:00:03',318,94),(132,'2021-04-16 00:00:02',318,94),(133,'2021-04-16 12:00:02',318,94),(134,'2021-04-17 00:00:03',318,94),(135,'2021-04-17 12:00:02',318,94),(136,'2021-04-17 18:00:03',318,94),(137,'2021-04-18 06:00:02',318,94),(138,'2021-04-18 18:00:02',318,94),(139,'2021-04-19 06:00:03',318,94),(140,'2021-04-19 18:00:04',318,94),(141,'2021-04-20 06:00:03',318,94),(142,'2021-04-20 18:00:02',318,94),(143,'2021-04-21 00:00:03',318,94),(144,'2021-04-21 12:00:02',318,94),(145,'2021-04-22 00:00:03',318,94),(146,'2021-04-22 12:00:02',318,94),(147,'2021-04-22 18:00:03',318,94),(148,'2021-04-23 06:00:03',318,94),(149,'2021-04-23 18:00:03',318,94),(150,'2021-04-24 06:00:03',318,94),(151,'2021-04-24 18:00:03',318,94),(152,'2021-04-25 06:00:02',318,94),(153,'2021-04-25 18:00:02',318,94),(154,'2021-04-26 06:00:03',318,94),(155,'2021-04-26 18:00:03',318,94),(156,'2021-04-27 06:00:02',318,94),(157,'2021-04-27 18:00:02',318,94),(158,'2021-04-28 06:00:02',318,94),(159,'2021-04-28 12:00:03',318,94),(160,'2021-04-29 00:00:04',318,94),(161,'2021-04-29 12:00:03',318,94),(162,'2021-04-30 00:00:02',318,94),(163,'2021-04-30 12:00:02',318,94),(164,'2021-04-30 18:00:03',318,94),(165,'2021-05-01 06:00:02',318,94),(166,'2021-05-01 18:00:02',318,94),(167,'2021-05-02 06:00:03',318,94),(168,'2021-05-02 18:00:03',318,94),(169,'2021-05-03 06:00:02',318,94),(170,'2021-05-03 12:00:03',318,94),(171,'2021-05-04 00:00:03',318,94),(172,'2021-05-04 12:00:02',318,94),(173,'2021-05-05 00:00:03',318,94),(174,'2021-05-05 12:00:03',318,94),(175,'2021-05-06 00:00:02',318,94),(176,'2021-05-06 12:00:03',318,94),(177,'2021-05-07 00:00:02',318,94),(178,'2021-05-07 12:00:02',318,94),(179,'2021-05-07 18:00:03',318,94),(180,'2021-05-08 06:00:02',318,94),(181,'2021-05-08 18:00:02',318,94),(182,'2021-05-09 00:00:03',318,94),(183,'2021-05-09 12:00:02',318,94),(184,'2021-05-10 00:00:03',318,94),(185,'2021-05-10 12:00:02',318,94),(186,'2021-05-11 00:00:03',318,94),(187,'2021-05-11 12:00:03',318,94),(188,'2021-05-12 00:00:03',318,94),(189,'2021-05-12 12:00:03',318,94),(190,'2021-05-13 00:00:03',318,94),(191,'2021-05-13 12:00:03',318,94),(192,'2021-05-14 00:00:03',318,94),(193,'2021-05-14 12:00:03',318,94),(194,'2021-05-15 00:00:03',318,94),(195,'2021-05-15 12:00:02',318,94),(196,'2021-05-16 00:00:03',318,94),(197,'2021-05-16 12:00:03',318,94),(198,'2021-05-17 00:00:02',318,94),(199,'2021-05-17 12:00:03',318,94),(200,'2021-05-18 00:00:02',318,94),(201,'2021-05-18 12:00:02',318,94),(202,'2021-05-18 18:00:03',318,94),(203,'2021-05-19 06:00:03',318,94),(204,'2021-05-19 18:00:03',318,94),(205,'2021-05-20 06:00:03',318,94),(206,'2021-05-20 18:00:03',318,94),(207,'2021-05-21 06:00:02',318,94),(208,'2021-05-21 12:00:03',318,94),(209,'2021-05-22 00:00:03',318,94),(210,'2021-05-22 12:00:02',318,94),(211,'2021-05-22 18:00:03',318,94),(212,'2021-05-23 06:00:02',318,94),(213,'2021-05-23 18:00:03',318,94),(214,'2021-05-24 06:00:03',318,94),(215,'2021-05-24 18:00:03',318,94),(216,'2021-05-25 06:00:03',318,94),(217,'2021-05-25 18:00:03',318,94),(218,'2021-05-26 06:00:02',318,94),(219,'2021-05-26 18:00:02',318,94),(220,'2021-05-27 06:00:03',318,94),(221,'2021-05-27 18:00:03',318,94),(222,'2021-05-28 06:00:03',318,94),(223,'2021-05-28 18:00:02',318,94),(224,'2021-05-29 06:00:03',318,94),(225,'2021-05-29 18:00:03',318,94),(226,'2021-05-30 06:00:03',318,94),(227,'2021-05-30 18:00:03',318,94),(228,'2021-05-31 06:00:02',318,94),(229,'2021-05-31 18:00:02',318,94),(230,'2021-06-01 00:00:03',318,94),(231,'2021-06-01 12:00:03',318,94),(232,'2021-06-02 00:00:03',318,94),(233,'2021-06-02 12:00:03',318,94),(234,'2021-06-03 00:00:03',318,94),(235,'2021-06-03 12:00:03',318,94),(236,'2021-06-04 00:00:03',318,94),(237,'2021-06-04 12:00:04',318,94),(238,'2021-06-05 00:00:03',318,94),(239,'2021-06-05 12:00:03',318,94),(240,'2021-06-06 00:00:03',318,94),(241,'2021-06-06 12:00:03',318,94),(242,'2021-06-07 00:00:03',318,94),(243,'2021-06-07 12:00:04',318,94),(244,'2021-06-08 00:00:03',318,94),(245,'2021-06-08 12:00:04',318,94),(246,'2021-06-09 00:00:03',318,94),(247,'2021-06-09 12:00:03',318,94),(248,'2021-06-10 00:00:03',318,94),(249,'2021-06-10 12:00:02',318,94),(250,'2021-06-11 00:00:04',318,94),(251,'2021-06-11 12:00:03',318,94),(252,'2021-06-12 00:00:03',318,94),(253,'2021-06-12 12:00:03',318,94),(254,'2021-06-13 00:00:03',318,94),(255,'2021-06-13 12:00:02',318,94),(256,'2021-06-14 00:00:03',318,94),(257,'2021-06-14 12:00:03',318,94),(258,'2021-06-15 00:00:03',318,94),(259,'2021-06-15 12:00:02',318,94),(260,'2021-06-16 00:00:03',318,94),(261,'2021-06-16 12:00:03',318,94),(262,'2021-06-17 06:00:03',318,94),(263,'2021-06-17 18:00:03',318,94),(264,'2021-06-18 06:00:03',318,94),(265,'2021-06-18 18:00:02',318,94),(266,'2021-06-19 06:00:03',318,94),(267,'2021-06-19 18:00:03',318,94),(268,'2021-06-20 06:00:03',318,94),(269,'2021-06-20 18:00:03',318,94),(270,'2021-06-21 06:00:03',318,94),(271,'2021-06-21 18:00:05',318,94),(272,'2021-06-22 06:00:03',318,94),(273,'2021-06-22 18:00:03',318,94),(274,'2021-06-23 06:00:03',318,94),(275,'2021-06-23 18:00:03',318,94),(276,'2021-06-24 06:00:02',318,94),(277,'2021-06-24 18:00:03',318,94),(278,'2021-06-25 06:00:03',318,94),(279,'2021-06-25 18:00:02',318,94),(280,'2021-06-26 06:00:03',318,94),(281,'2021-06-26 18:00:03',318,94),(282,'2021-06-27 06:00:02',318,94),(283,'2021-06-27 18:00:03',318,94),(284,'2021-06-28 06:00:03',318,94),(285,'2021-06-28 18:00:03',318,94),(286,'2021-06-29 06:00:03',318,94),(287,'2021-06-29 18:00:03',318,94),(288,'2021-06-30 06:00:03',318,94),(289,'2021-06-30 18:00:02',318,94),(290,'2021-07-01 06:00:03',318,94),(291,'2021-07-01 18:00:03',318,94),(292,'2021-07-02 06:00:02',318,94),(293,'2021-07-02 12:00:03',318,94),(294,'2021-07-03 00:00:03',318,94),(295,'2021-07-03 12:00:03',318,94),(296,'2021-07-04 00:00:03',318,94),(297,'2021-07-04 12:00:03',318,94),(298,'2021-07-05 00:00:03',318,94),(299,'2021-07-05 12:00:03',318,94),(300,'2021-07-06 00:00:03',318,94),(301,'2021-07-06 12:00:03',318,94),(302,'2021-07-07 00:00:03',318,94),(303,'2021-07-07 12:00:03',318,94),(304,'2021-07-08 00:00:03',318,94),(305,'2021-07-08 12:00:02',318,94),(306,'2021-07-09 00:00:03',318,94),(307,'2021-07-09 12:00:03',318,94),(308,'2021-07-10 00:00:04',318,94),(309,'2021-07-10 12:00:03',318,94),(310,'2021-07-11 00:00:04',318,94),(311,'2021-07-11 12:00:03',318,94),(312,'2021-07-12 00:00:03',318,94),(313,'2021-07-12 12:00:03',318,94),(314,'2021-07-13 00:00:03',318,94),(315,'2021-07-13 12:00:03',318,94),(316,'2021-07-14 00:00:03',318,94),(317,'2021-07-14 12:00:03',318,94),(318,'2021-07-15 00:00:03',318,94),(319,'2021-07-15 12:00:03',318,94),(320,'2021-07-16 00:00:03',318,94),(321,'2021-07-16 12:00:03',318,94),(322,'2021-07-17 00:00:03',318,94),(323,'2021-07-17 12:00:02',318,94),(324,'2021-07-18 00:00:04',318,94),(325,'2021-07-18 12:00:04',318,94),(326,'2021-07-19 00:00:03',318,94),(327,'2021-07-19 12:00:03',318,94),(328,'2021-07-20 00:00:03',318,94),(329,'2021-07-20 12:00:03',318,94),(330,'2021-07-21 00:00:03',318,94),(331,'2021-07-21 12:00:02',318,94),(332,'2021-07-22 00:00:03',318,94),(333,'2021-07-22 12:00:02',318,94),(334,'2021-07-23 00:00:03',318,94),(335,'2021-07-23 12:00:03',318,94),(336,'2021-07-24 00:00:04',318,94),(337,'2021-07-24 12:00:02',318,94),(338,'2021-07-25 00:00:02',318,94),(339,'2021-07-25 12:00:02',318,94),(340,'2021-07-26 00:00:03',318,94),(341,'2021-07-26 12:00:03',318,94),(342,'2021-07-27 00:00:03',318,94),(343,'2021-07-27 12:00:03',318,94),(344,'2021-07-28 00:00:03',318,94),(345,'2021-07-28 12:00:03',318,94),(346,'2021-07-29 00:00:03',324,93),(347,'2021-07-29 12:00:02',326,93),(348,'2021-07-30 00:00:03',346,93),(349,'2021-07-30 12:00:03',352,93),(350,'2021-07-31 00:00:04',389,93),(351,'2021-07-31 12:00:03',389,93),(352,'2021-08-01 00:00:02',389,93),(353,'2021-08-01 12:00:02',389,93),(354,'2021-08-02 00:00:03',389,93),(355,'2021-08-02 12:00:03',402,93),(356,'2021-08-03 00:00:03',433,94),(357,'2021-08-03 12:00:03',432,92),(358,'2021-08-04 00:00:03',459,101),(359,'2021-08-04 12:00:04',459,101),(360,'2021-08-05 00:00:03',459,101),(361,'2021-08-05 12:00:03',459,101),(362,'2021-08-06 00:00:04',459,101),(363,'2021-08-06 12:00:03',459,101),(364,'2021-08-07 00:00:07',459,101),(365,'2021-08-07 12:00:03',459,101),(366,'2021-08-08 06:00:03',459,101),(367,'2021-08-08 18:00:03',459,101),(368,'2021-08-09 06:00:02',459,101),(369,'2021-08-10 00:00:04',472,101),(370,'2021-08-10 12:00:03',472,101),(371,'2021-08-11 00:00:03',472,101),(372,'2021-08-11 12:00:03',472,101),(373,'2021-08-12 00:00:03',472,101),(374,'2021-08-12 12:00:02',473,101);
/*!40000 ALTER TABLE `StatisticSnapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatisticSnapshotUnit`
--

DROP TABLE IF EXISTS `StatisticSnapshotUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatisticSnapshotUnit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockLevel` int(11) NOT NULL,
  `statisticSnapshot_id` int(11) DEFAULT NULL,
  `partUnit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_368BD669A16DD05F` (`statisticSnapshot_id`),
  KEY `IDX_368BD669F7A36E87` (`partUnit_id`),
  CONSTRAINT `FK_368BD669A16DD05F` FOREIGN KEY (`statisticSnapshot_id`) REFERENCES `StatisticSnapshot` (`id`),
  CONSTRAINT `FK_368BD669F7A36E87` FOREIGN KEY (`partUnit_id`) REFERENCES `PartUnit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatisticSnapshotUnit`
--

LOCK TABLES `StatisticSnapshotUnit` WRITE;
/*!40000 ALTER TABLE `StatisticSnapshotUnit` DISABLE KEYS */;
INSERT INTO `StatisticSnapshotUnit` VALUES (1,0,1,1),(2,1100,2,1),(3,0,3,1),(4,4324,4,1),(5,4324,5,1),(6,4347,6,1),(7,4347,7,1),(8,4574,8,1),(9,4574,9,1),(10,4574,10,1),(11,4574,11,1),(12,4574,12,1),(13,4574,13,1),(14,4574,14,1),(15,4574,15,1),(16,4574,16,1),(17,4574,17,1),(18,4574,18,1),(19,5222,19,1),(20,5393,20,1),(21,6784,21,1),(22,6784,22,1),(23,6784,23,1),(24,6784,24,1),(25,6784,25,1),(26,6784,26,1),(27,6784,27,1),(28,6784,28,1),(29,6784,29,1),(30,6784,30,1),(31,6784,31,1),(32,6784,32,1),(33,6784,33,1),(34,6784,34,1),(35,6784,35,1),(36,6784,36,1),(37,7021,37,1),(38,7021,38,1),(39,7021,39,1),(40,7021,40,1),(41,7021,41,1),(42,7021,42,1),(43,7021,43,1),(44,7021,44,1),(45,7021,45,1),(46,7021,46,1),(47,7021,47,1),(48,7021,48,1),(49,7021,49,1),(50,7021,50,1),(51,7021,51,1),(52,7021,52,1),(53,7021,53,1),(54,7021,54,1),(55,7021,55,1),(56,7021,56,1),(57,7021,57,1),(58,7021,58,1),(59,7021,59,1),(60,7021,60,1),(61,7021,61,1),(62,7021,62,1),(63,7021,63,1),(64,7021,64,1),(65,7021,65,1),(66,7021,66,1),(67,7021,67,1),(68,7021,68,1),(69,7021,69,1),(70,7021,70,1),(71,7021,71,1),(72,7021,72,1),(73,7021,73,1),(74,7021,74,1),(75,7031,75,1),(76,7031,76,1),(77,10829,77,1),(78,10858,78,1),(79,12972,79,1),(80,12972,80,1),(81,12972,81,1),(82,12972,82,1),(83,12972,83,1),(84,12972,84,1),(85,12972,85,1),(86,13145,86,1),(87,14048,87,1),(88,14048,88,1),(89,14048,89,1),(90,14048,90,1),(91,14048,91,1),(92,14048,92,1),(93,14048,93,1),(94,14048,94,1),(95,14048,95,1),(96,14048,96,1),(97,14048,97,1),(98,14048,98,1),(99,14048,99,1),(100,14048,100,1),(101,14048,101,1),(102,14048,102,1),(103,14048,103,1),(104,14048,104,1),(105,14048,105,1),(106,14048,106,1),(107,14048,107,1),(108,14048,108,1),(109,14048,109,1),(110,14048,110,1),(111,14048,111,1),(112,14048,112,1),(113,14048,113,1),(114,14048,114,1),(115,14048,115,1),(116,14048,116,1),(117,14048,117,1),(118,14048,118,1),(119,14048,119,1),(120,14048,120,1),(121,14048,121,1),(122,14048,122,1),(123,14048,123,1),(124,14048,124,1),(125,14048,125,1),(126,14048,126,1),(127,14048,127,1),(128,14048,128,1),(129,14048,129,1),(130,14048,130,1),(131,14048,131,1),(132,14048,132,1),(133,14048,133,1),(134,14048,134,1),(135,14048,135,1),(136,14048,136,1),(137,14048,137,1),(138,14048,138,1),(139,14048,139,1),(140,14048,140,1),(141,14048,141,1),(142,14048,142,1),(143,14048,143,1),(144,14048,144,1),(145,14048,145,1),(146,14048,146,1),(147,14048,147,1),(148,14048,148,1),(149,14048,149,1),(150,14048,150,1),(151,14048,151,1),(152,14048,152,1),(153,14048,153,1),(154,14048,154,1),(155,14048,155,1),(156,14048,156,1),(157,14048,157,1),(158,14048,158,1),(159,14048,159,1),(160,14048,160,1),(161,14048,161,1),(162,14048,162,1),(163,14048,163,1),(164,14048,164,1),(165,14048,165,1),(166,14048,166,1),(167,14048,167,1),(168,14048,168,1),(169,14048,169,1),(170,14048,170,1),(171,14048,171,1),(172,14048,172,1),(173,14048,173,1),(174,14048,174,1),(175,14048,175,1),(176,14048,176,1),(177,14048,177,1),(178,14048,178,1),(179,14048,179,1),(180,14048,180,1),(181,14048,181,1),(182,14048,182,1),(183,14048,183,1),(184,14048,184,1),(185,14048,185,1),(186,14048,186,1),(187,14048,187,1),(188,14048,188,1),(189,14048,189,1),(190,14048,190,1),(191,14048,191,1),(192,14048,192,1),(193,14048,193,1),(194,14048,194,1),(195,14048,195,1),(196,14048,196,1),(197,14048,197,1),(198,14048,198,1),(199,14048,199,1),(200,14048,200,1),(201,14048,201,1),(202,14048,202,1),(203,14048,203,1),(204,14048,204,1),(205,14048,205,1),(206,14048,206,1),(207,14048,207,1),(208,14048,208,1),(209,14048,209,1),(210,14048,210,1),(211,14048,211,1),(212,14048,212,1),(213,14048,213,1),(214,14048,214,1),(215,14048,215,1),(216,14048,216,1),(217,14048,217,1),(218,14048,218,1),(219,14048,219,1),(220,14048,220,1),(221,14048,221,1),(222,14048,222,1),(223,14048,223,1),(224,14048,224,1),(225,14048,225,1),(226,14048,226,1),(227,14048,227,1),(228,14048,228,1),(229,14048,229,1),(230,14048,230,1),(231,14048,231,1),(232,14048,232,1),(233,14048,233,1),(234,14048,234,1),(235,14048,235,1),(236,14048,236,1),(237,14048,237,1),(238,14048,238,1),(239,14048,239,1),(240,14048,240,1),(241,14048,241,1),(242,14048,242,1),(243,14048,243,1),(244,14048,244,1),(245,14048,245,1),(246,14048,246,1),(247,14048,247,1),(248,14048,248,1),(249,14048,249,1),(250,14048,250,1),(251,14048,251,1),(252,14048,252,1),(253,14048,253,1),(254,14048,254,1),(255,14048,255,1),(256,14048,256,1),(257,14048,257,1),(258,14048,258,1),(259,14048,259,1),(260,14048,260,1),(261,14048,261,1),(262,14048,262,1),(263,14048,263,1),(264,14048,264,1),(265,14048,265,1),(266,14048,266,1),(267,14048,267,1),(268,14048,268,1),(269,14048,269,1),(270,14048,270,1),(271,14048,271,1),(272,14048,272,1),(273,14048,273,1),(274,14048,274,1),(275,14048,275,1),(276,14048,276,1),(277,14048,277,1),(278,14048,278,1),(279,14048,279,1),(280,14048,280,1),(281,14048,281,1),(282,14048,282,1),(283,14048,283,1),(284,14048,284,1),(285,14048,285,1),(286,14048,286,1),(287,14048,287,1),(288,14048,288,1),(289,14048,289,1),(290,14048,290,1),(291,14048,291,1),(292,14048,292,1),(293,14048,293,1),(294,14048,294,1),(295,14048,295,1),(296,14048,296,1),(297,14048,297,1),(298,14048,298,1),(299,14048,299,1),(300,14048,300,1),(301,14048,301,1),(302,14048,302,1),(303,14048,303,1),(304,14048,304,1),(305,14048,305,1),(306,14048,306,1),(307,14048,307,1),(308,14048,308,1),(309,14048,309,1),(310,14048,310,1),(311,14048,311,1),(312,14048,312,1),(313,14048,313,1),(314,14048,314,1),(315,14048,315,1),(316,14048,316,1),(317,14048,317,1),(318,14048,318,1),(319,14048,319,1),(320,14048,320,1),(321,14048,321,1),(322,14048,322,1),(323,14048,323,1),(324,14048,324,1),(325,14048,325,1),(326,14048,326,1),(327,14048,327,1),(328,14048,328,1),(329,14048,329,1),(330,14048,330,1),(331,14048,331,1),(332,14048,332,1),(333,14048,333,1),(334,14048,334,1),(335,14048,335,1),(336,14048,336,1),(337,14048,337,1),(338,14048,338,1),(339,14048,339,1),(340,14048,340,1),(341,14048,341,1),(342,14048,342,1),(343,14048,343,1),(344,14048,344,1),(345,14048,345,1),(346,14173,346,1),(347,14293,347,1),(348,15883,348,1),(349,16005,349,1),(350,16875,350,1),(351,16875,351,1),(352,16875,352,1),(353,16875,353,1),(354,16875,354,1),(355,17455,355,1),(356,19787,356,1),(357,19926,357,1),(358,21656,358,1),(359,21656,359,1),(360,21656,360,1),(361,21656,361,1),(362,21656,362,1),(363,21656,363,1),(364,21656,364,1),(365,21656,365,1),(366,21656,366,1),(367,21656,367,1),(368,21656,368,1),(369,22561,369,1),(370,22561,370,1),(371,22561,371,1),(372,22561,372,1),(373,22561,373,1),(374,22570,374,1);
/*!40000 ALTER TABLE `StatisticSnapshotUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockEntry`
--

DROP TABLE IF EXISTS `StockEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockEntry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stockLevel` int(11) NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `dateTime` datetime NOT NULL,
  `correction` tinyint(1) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E182997B4CE34BEC` (`part_id`),
  KEY `IDX_E182997BA76ED395` (`user_id`),
  CONSTRAINT `FK_E182997B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_E182997BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockEntry`
--

LOCK TABLES `StockEntry` WRITE;
/*!40000 ALTER TABLE `StockEntry` DISABLE KEYS */;
INSERT INTO `StockEntry` VALUES (1,1,NULL,4,0.0000,'2021-02-08 03:47:16',0,NULL),(2,2,NULL,8,0.0000,'2021-02-08 04:11:06',0,NULL),(3,3,NULL,4,0.0000,'2021-02-08 04:13:36',0,NULL),(5,5,NULL,3,0.0000,'2021-02-08 04:16:45',0,NULL),(6,6,NULL,20,0.0000,'2021-02-08 04:24:13',0,NULL),(7,7,NULL,12,0.0000,'2021-02-08 04:26:24',0,NULL),(8,8,NULL,4,0.0000,'2021-02-08 04:27:33',0,NULL),(9,9,NULL,10,0.0000,'2021-02-08 04:28:33',0,NULL),(11,11,NULL,3,0.0000,'2021-02-08 04:32:07',0,NULL),(12,12,NULL,9,0.0000,'2021-02-08 04:33:42',0,NULL),(13,13,NULL,8,0.0000,'2021-02-08 04:35:12',0,NULL),(14,14,NULL,25,0.0000,'2021-02-08 04:36:46',0,NULL),(15,15,NULL,2,0.0000,'2021-02-08 04:38:01',0,NULL),(17,17,NULL,30,0.0000,'2021-02-08 04:42:48',0,NULL),(19,19,NULL,6,0.0000,'2021-02-08 04:45:56',0,NULL),(21,21,NULL,1,0.0000,'2021-02-08 04:49:19',0,NULL),(22,22,NULL,12,0.0000,'2021-02-08 04:50:34',0,NULL),(23,23,NULL,8,0.0000,'2021-02-08 04:54:08',0,NULL),(24,24,NULL,6,0.0000,'2021-02-08 04:56:15',0,NULL),(26,26,NULL,2,0.0000,'2021-02-08 05:00:53',0,NULL),(27,27,1,4,NULL,'2021-02-08 05:03:41',0,NULL),(28,28,NULL,15,0.0000,'2021-02-08 05:04:33',0,NULL),(29,29,NULL,1,0.0000,'2021-02-08 05:06:35',0,NULL),(31,31,NULL,6,0.0000,'2021-02-08 05:08:46',0,NULL),(32,32,NULL,75,0.0000,'2021-02-08 06:05:21',0,NULL),(33,33,NULL,70,0.0000,'2021-02-08 06:06:51',0,NULL),(34,34,NULL,70,0.0000,'2021-02-08 06:08:21',0,NULL),(35,35,NULL,70,0.0000,'2021-02-08 06:10:29',0,NULL),(37,37,NULL,10,0.0000,'2021-02-08 06:16:39',0,NULL),(38,38,NULL,70,0.0000,'2021-02-08 06:19:17',0,NULL),(39,39,NULL,50,0.0000,'2021-02-08 06:23:29',0,NULL),(41,41,NULL,180,0.0000,'2021-02-08 06:29:02',0,NULL),(44,44,NULL,70,0.0000,'2021-02-08 06:34:20',0,NULL),(45,45,NULL,80,0.0000,'2021-02-08 06:37:31',0,NULL),(46,46,NULL,80,0.0000,'2021-02-08 06:40:34',0,NULL),(47,47,NULL,180,0.0000,'2021-02-08 06:41:55',0,NULL),(48,48,NULL,10,0.0000,'2021-02-08 06:43:52',0,NULL),(50,50,NULL,80,0.0000,'2021-02-08 06:47:22',0,NULL),(51,51,NULL,80,0.0000,'2021-02-08 06:50:01',0,NULL),(52,52,NULL,70,0.0000,'2021-02-08 06:51:45',0,NULL),(53,53,NULL,80,0.0000,'2021-02-08 06:53:10',0,NULL),(54,54,NULL,80,0.0000,'2021-02-08 06:54:45',0,NULL),(55,55,NULL,80,0.0000,'2021-02-08 06:56:04',0,NULL),(56,56,NULL,70,0.0000,'2021-02-08 06:57:59',0,NULL),(57,57,NULL,8,0.0000,'2021-02-08 06:59:49',0,NULL),(59,59,NULL,10,0.0000,'2021-02-08 07:04:02',0,NULL),(60,60,NULL,10,0.0000,'2021-02-08 07:05:40',0,NULL),(61,61,NULL,70,0.0000,'2021-02-08 07:07:24',0,NULL),(62,62,NULL,10,0.0000,'2021-02-08 07:09:45',0,NULL),(63,63,NULL,160,0.0000,'2021-02-08 07:17:46',0,NULL),(64,64,NULL,5,0.0000,'2021-02-08 07:19:53',0,NULL),(65,65,NULL,9,0.0000,'2021-02-08 07:21:26',0,NULL),(66,66,NULL,300,0.0000,'2021-02-08 07:23:06',0,NULL),(68,68,NULL,150,0.0000,'2021-02-08 07:26:17',0,NULL),(69,69,NULL,300,0.0000,'2021-02-08 07:27:24',0,NULL),(70,70,1,11,NULL,'2021-02-08 07:29:39',0,NULL),(71,71,NULL,20,0.0000,'2021-02-08 07:31:41',0,NULL),(72,72,NULL,600,0.0000,'2021-02-08 07:33:25',0,NULL),(73,73,NULL,150,0.0000,'2021-02-08 07:35:20',0,NULL),(74,74,NULL,200,0.0000,'2021-02-08 07:36:49',0,NULL),(75,75,NULL,250,0.0000,'2021-02-08 09:23:37',0,NULL),(76,76,NULL,3,0.0000,'2021-02-09 03:29:38',0,NULL),(77,77,1,1,NULL,'2021-02-09 03:34:46',0,'Dirak bawah nya '),(78,78,NULL,1,0.0000,'2021-02-09 03:39:00',0,NULL),(79,79,NULL,2,0.0000,'2021-02-09 03:44:41',0,NULL),(80,80,NULL,1,0.0000,'2021-02-09 03:46:20',0,NULL),(83,83,NULL,1,0.0000,'2021-02-09 04:12:07',0,NULL),(84,84,2,1,0.0000,'2021-02-09 04:18:17',0,NULL),(85,85,NULL,1,0.0000,'2021-02-09 04:23:19',0,NULL),(86,86,NULL,1,0.0000,'2021-02-09 04:35:03',0,NULL),(87,87,NULL,1,0.0000,'2021-02-09 04:37:09',0,NULL),(88,88,NULL,1,0.0000,'2021-02-09 04:49:41',0,NULL),(89,89,2,6,0.0000,'2021-02-09 05:00:52',0,NULL),(90,90,2,50,0.0000,'2021-02-10 03:59:33',0,NULL),(91,92,NULL,25,0.0000,'2021-02-10 04:08:45',0,NULL),(92,91,1,45,NULL,'2021-02-10 04:10:40',0,NULL),(93,93,NULL,25,0.0000,'2021-02-10 04:15:25',0,NULL),(94,94,NULL,10,0.0000,'2021-02-10 04:18:26',0,NULL),(95,95,NULL,50,0.0000,'2021-02-10 04:22:59',0,NULL),(96,96,NULL,6,0.0000,'2021-02-10 06:43:10',0,NULL),(97,97,NULL,14,0.0000,'2021-02-10 10:24:19',0,NULL),(98,98,NULL,2,0.0000,'2021-02-10 10:26:45',0,NULL),(99,99,1,2,NULL,'2021-02-17 10:34:11',0,NULL),(100,100,NULL,2,0.0000,'2021-02-17 10:36:51',0,NULL),(101,101,NULL,1,0.0000,'2021-02-17 10:38:49',0,NULL),(102,102,NULL,25,0.0000,'2021-02-17 10:49:57',0,NULL),(103,103,NULL,14,0.0000,'2021-02-17 10:52:09',0,NULL),(104,104,NULL,8,0.0000,'2021-02-17 10:55:19',0,NULL),(105,105,NULL,9,0.0000,'2021-02-17 10:56:34',0,NULL),(106,106,NULL,2,0.0000,'2021-02-17 11:01:49',0,NULL),(107,107,NULL,2,0.0000,'2021-02-17 11:04:47',0,NULL),(108,108,NULL,2,0.0000,'2021-02-17 11:07:39',0,NULL),(110,110,NULL,3,0.0000,'2021-02-17 11:09:59',0,NULL),(111,111,NULL,10,0.0000,'2021-02-17 14:18:35',0,NULL),(112,112,NULL,6,0.0000,'2021-02-17 14:46:43',0,NULL),(113,113,NULL,5,0.0000,'2021-02-17 14:50:58',0,NULL),(114,113,1,1,NULL,'2021-02-17 14:54:35',0,NULL),(115,113,1,40,NULL,'2021-02-17 14:55:18',0,NULL),(116,114,1,8,0.0000,'2021-02-17 14:59:25',0,NULL),(117,115,1,20,0.0000,'2021-02-17 15:03:38',0,NULL),(118,116,1,5,0.0000,'2021-02-17 15:09:09',0,NULL),(119,117,NULL,5,0.0000,'2021-02-17 15:11:33',0,NULL),(120,118,NULL,10,0.0000,'2021-02-17 15:14:45',0,NULL),(121,91,1,23,NULL,'2021-02-17 15:19:01',0,NULL),(122,120,NULL,2,0.0000,'2021-02-17 15:25:43',0,NULL),(123,121,NULL,2,0.0000,'2021-02-17 15:28:40',0,NULL),(124,122,NULL,2,0.0000,'2021-02-17 15:31:49',0,NULL),(125,123,NULL,9,0.0000,'2021-02-17 15:36:00',0,NULL),(126,124,NULL,4,0.0000,'2021-02-17 15:38:19',0,NULL),(127,125,NULL,5,0.0000,'2021-02-17 15:40:52',0,NULL),(128,126,NULL,2,0.0000,'2021-02-17 15:42:47',0,NULL),(129,127,NULL,10,0.0000,'2021-02-17 15:43:36',0,NULL),(130,128,NULL,5,0.0000,'2021-02-17 15:45:47',0,NULL),(131,128,1,5,NULL,'2021-02-17 15:46:29',0,NULL),(132,129,NULL,9,0.0000,'2021-02-17 15:48:39',0,NULL),(133,130,NULL,10,0.0000,'2021-02-17 15:51:00',0,NULL),(134,131,NULL,25,0.0000,'2021-02-17 15:52:55',0,NULL),(135,132,NULL,10,0.0000,'2021-02-17 15:54:14',0,NULL),(136,133,NULL,10,0.0000,'2021-02-17 15:55:44',0,NULL),(137,134,NULL,9,0.0000,'2021-02-17 15:57:01',0,NULL),(138,124,1,1,NULL,'2021-02-17 15:58:08',0,NULL),(139,135,NULL,8,0.0000,'2021-02-17 16:01:26',0,NULL),(140,136,NULL,50,0.0000,'2021-02-17 16:06:07',0,NULL),(141,137,NULL,88,0.0000,'2021-02-17 16:08:56',0,NULL),(142,138,NULL,5,0.0000,'2021-02-17 16:10:40',0,NULL),(143,97,1,10,NULL,'2021-02-17 16:12:29',0,NULL),(144,111,1,11,NULL,'2021-02-17 16:14:53',0,NULL),(145,139,NULL,10,0.0000,'2021-02-17 16:17:30',0,NULL),(146,141,NULL,10,0.0000,'2021-02-17 16:21:36',0,NULL),(147,142,NULL,20,0.0000,'2021-02-17 16:30:41',0,NULL),(148,144,NULL,10,0.0000,'2021-02-17 16:34:45',0,NULL),(149,145,NULL,15,0.0000,'2021-02-17 16:36:28',0,NULL),(150,146,NULL,20,0.0000,'2021-02-17 16:38:04',0,NULL),(151,147,NULL,9,0.0000,'2021-02-17 16:46:06',0,NULL),(152,148,NULL,8,0.0000,'2021-02-17 16:49:10',0,NULL),(153,149,NULL,7,0.0000,'2021-02-17 16:52:04',0,NULL),(154,150,NULL,10,0.0000,'2021-02-17 16:54:20',0,NULL),(155,151,NULL,9,0.0000,'2021-02-17 16:55:51',0,NULL),(156,152,NULL,10,0.0000,'2021-02-17 16:56:58',0,NULL),(157,153,NULL,10,0.0000,'2021-02-17 16:58:12',0,NULL),(158,154,NULL,5,0.0000,'2021-02-17 16:59:32',0,NULL),(159,155,NULL,15,0.0000,'2021-02-17 17:00:29',0,NULL),(160,156,NULL,27,0.0000,'2021-02-17 17:04:57',0,NULL),(161,156,1,10,NULL,'2021-02-17 17:05:26',0,NULL),(162,157,NULL,4,0.0000,'2021-02-17 17:27:17',0,NULL),(163,158,NULL,9,0.0000,'2021-02-17 17:46:18',0,NULL),(164,159,NULL,5,0.0000,'2021-02-17 17:47:39',0,NULL),(165,160,NULL,4,0.0000,'2021-02-17 17:48:49',0,NULL),(166,161,NULL,8,0.0000,'2021-02-17 17:52:19',0,NULL),(167,162,NULL,8,0.0000,'2021-02-17 17:53:23',0,NULL),(168,163,NULL,5,0.0000,'2021-02-17 17:54:19',0,NULL),(169,164,NULL,1,0.0000,'2021-02-17 17:56:05',0,NULL),(170,165,NULL,1,0.0000,'2021-02-17 17:57:23',0,NULL),(171,167,NULL,20,0.0000,'2021-02-17 18:02:09',0,NULL),(172,168,NULL,20,0.0000,'2021-02-17 18:04:00',0,NULL),(173,114,1,16,NULL,'2021-02-17 18:10:06',0,NULL),(174,169,NULL,8,0.0000,'2021-02-17 18:13:26',0,NULL),(175,170,NULL,10,0.0000,'2021-02-18 10:58:18',0,NULL),(176,171,NULL,10,0.0000,'2021-02-18 11:00:25',0,NULL),(177,171,1,40,NULL,'2021-02-18 11:01:37',0,NULL),(178,172,NULL,9,0.0000,'2021-02-18 11:02:36',0,NULL),(179,173,NULL,40,0.0000,'2021-02-18 11:03:57',0,NULL),(180,174,NULL,50,0.0000,'2021-02-18 11:05:19',0,NULL),(181,175,NULL,40,0.0000,'2021-02-18 11:07:37',0,NULL),(182,176,NULL,10,0.0000,'2021-02-18 11:14:04',0,NULL),(183,177,NULL,10,0.0000,'2021-02-18 11:16:08',0,NULL),(184,178,NULL,30,0.0000,'2021-02-18 11:18:10',0,NULL),(185,179,NULL,20,0.0000,'2021-02-18 11:19:59',0,NULL),(186,180,NULL,50,0.0000,'2021-02-18 11:21:04',0,NULL),(187,181,NULL,32,0.0000,'2021-02-18 11:22:16',0,NULL),(188,182,NULL,2,0.0000,'2021-02-18 11:23:14',0,NULL),(189,180,1,16,NULL,'2021-02-18 11:25:39',0,NULL),(190,183,NULL,70,0.0000,'2021-02-18 11:28:52',0,NULL),(191,184,NULL,13,0.0000,'2021-02-18 11:31:36',0,NULL),(192,184,1,39,NULL,'2021-02-18 11:33:25',0,NULL),(193,180,1,10,NULL,'2021-02-18 11:34:11',0,NULL),(194,185,NULL,5,0.0000,'2021-02-18 11:36:16',0,NULL),(195,186,NULL,35,0.0000,'2021-02-18 11:38:04',0,NULL),(196,186,1,10,NULL,'2021-02-18 11:39:07',0,NULL),(197,187,NULL,30,0.0000,'2021-02-18 11:41:26',0,NULL),(198,188,NULL,50,0.0000,'2021-02-18 11:59:35',0,NULL),(199,189,NULL,6,0.0000,'2021-02-18 12:01:05',0,NULL),(200,190,NULL,26,0.0000,'2021-02-18 12:02:07',0,NULL),(201,191,NULL,10,0.0000,'2021-02-18 12:03:03',0,NULL),(202,192,NULL,10,0.0000,'2021-02-18 12:03:45',0,NULL),(203,193,NULL,10,0.0000,'2021-02-18 12:05:42',0,NULL),(204,194,NULL,40,0.0000,'2021-02-18 12:06:24',0,NULL),(205,195,NULL,10,0.0000,'2021-02-18 12:07:16',0,NULL),(206,196,NULL,9,0.0000,'2021-02-18 12:08:01',0,NULL),(207,197,NULL,6,0.0000,'2021-02-18 12:09:02',0,NULL),(208,198,NULL,25,0.0000,'2021-02-18 12:10:23',0,NULL),(209,199,NULL,26,0.0000,'2021-02-18 13:16:59',0,NULL),(210,200,NULL,26,0.0000,'2021-02-18 13:20:48',0,NULL),(211,201,NULL,7,0.0000,'2021-02-18 13:21:51',0,NULL),(212,202,NULL,4,0.0000,'2021-02-18 13:22:57',0,NULL),(213,203,NULL,10,0.0000,'2021-02-18 13:23:34',0,NULL),(214,204,NULL,48,0.0000,'2021-02-18 13:24:36',0,NULL),(215,205,NULL,40,0.0000,'2021-02-18 13:25:39',0,NULL),(216,206,NULL,10,0.0000,'2021-02-18 13:27:43',0,NULL),(217,207,NULL,10,0.0000,'2021-02-18 13:28:28',0,NULL),(218,207,1,40,NULL,'2021-02-18 13:30:03',0,NULL),(219,208,NULL,9,0.0000,'2021-02-18 13:31:15',0,NULL),(220,209,NULL,27,0.0000,'2021-02-18 13:32:42',0,NULL),(221,210,NULL,7,0.0000,'2021-02-18 13:33:57',0,NULL),(222,211,NULL,10,0.0000,'2021-02-18 13:34:35',0,NULL),(223,211,1,40,NULL,'2021-02-18 13:35:06',0,NULL),(224,212,NULL,10,0.0000,'2021-02-18 13:35:53',0,NULL),(225,213,NULL,9,0.0000,'2021-02-18 13:38:35',0,NULL),(226,214,NULL,10,0.0000,'2021-02-18 13:40:49',0,NULL),(227,215,NULL,5,0.0000,'2021-02-18 13:42:16',0,NULL),(228,216,NULL,5,0.0000,'2021-02-18 13:45:14',0,NULL),(229,217,NULL,9,0.0000,'2021-02-18 13:47:37',0,NULL),(230,218,NULL,10,0.0000,'2021-02-18 13:49:50',0,NULL),(231,219,NULL,50,0.0000,'2021-02-18 13:51:55',0,NULL),(232,220,NULL,10,0.0000,'2021-02-18 13:57:15',0,NULL),(233,221,NULL,14,0.0000,'2021-02-18 14:23:47',0,NULL),(234,222,NULL,10,0.0000,'2021-02-18 14:24:47',0,NULL),(235,223,NULL,5,0.0000,'2021-02-18 14:26:08',0,NULL),(236,224,NULL,20,0.0000,'2021-02-18 14:26:43',0,NULL),(237,225,NULL,10,0.0000,'2021-02-18 14:28:41',0,NULL),(238,226,NULL,10,0.0000,'2021-02-18 14:29:28',0,NULL),(239,227,NULL,10,0.0000,'2021-02-18 14:30:07',0,NULL),(240,228,NULL,10,0.0000,'2021-02-18 14:33:30',0,NULL),(241,229,NULL,30,0.0000,'2021-02-18 14:34:39',0,NULL),(242,230,NULL,20,0.0000,'2021-02-18 14:36:29',0,NULL),(243,231,NULL,15,0.0000,'2021-02-18 14:44:50',0,NULL),(244,232,NULL,32,0.0000,'2021-02-18 14:48:40',0,NULL),(245,233,NULL,9,0.0000,'2021-02-26 14:51:05',0,NULL),(246,234,NULL,10,0.0000,'2021-02-26 14:53:04',0,NULL),(247,235,NULL,30,0.0000,'2021-02-26 14:54:56',0,NULL),(248,236,NULL,30,0.0000,'2021-02-26 14:57:00',0,NULL),(249,237,NULL,10,0.0000,'2021-02-26 15:01:26',0,NULL),(250,238,NULL,30,0.0000,'2021-02-26 15:02:26',0,NULL),(251,239,NULL,10,0.0000,'2021-02-26 15:03:06',0,NULL),(252,240,NULL,20,0.0000,'2021-02-26 15:04:26',0,NULL),(253,241,NULL,30,0.0000,'2021-02-26 15:05:30',0,NULL),(254,242,NULL,10,0.0000,'2021-02-26 15:06:26',0,NULL),(255,243,NULL,10,0.0000,'2021-02-26 15:09:52',0,NULL),(256,244,NULL,10,0.0000,'2021-02-26 15:10:42',0,NULL),(257,245,NULL,10,0.0000,'2021-02-26 15:12:27',0,NULL),(258,246,NULL,8,0.0000,'2021-02-26 15:13:27',0,NULL),(259,247,NULL,10,0.0000,'2021-02-26 15:14:13',0,NULL),(261,249,NULL,90,0.0000,'2021-03-18 09:59:34',0,NULL),(263,250,NULL,104,0.0000,'2021-03-18 13:37:18',0,NULL),(264,251,NULL,34,0.0000,'2021-03-18 13:41:58',0,NULL),(265,252,NULL,90,0.0000,'2021-03-18 13:45:45',0,NULL),(266,253,NULL,62,0.0000,'2021-03-18 13:48:12',0,NULL),(267,254,NULL,10,0.0000,'2021-03-18 13:51:32',0,NULL),(268,255,NULL,84,0.0000,'2021-03-18 13:55:40',0,NULL),(269,256,NULL,19,0.0000,'2021-03-18 13:58:13',0,NULL),(270,257,NULL,10,0.0000,'2021-03-18 14:05:03',0,NULL),(271,258,NULL,10,0.0000,'2021-03-18 14:07:04',0,NULL),(272,259,NULL,27,0.0000,'2021-03-18 14:12:29',0,NULL),(273,260,NULL,10,0.0000,'2021-03-18 14:14:51',0,NULL),(274,261,NULL,84,0.0000,'2021-03-18 14:19:09',0,NULL),(276,263,NULL,89,0.0000,'2021-03-18 14:26:05',0,NULL),(277,264,NULL,56,0.0000,'2021-03-18 14:27:58',0,NULL),(278,265,NULL,57,0.0000,'2021-03-18 14:30:57',0,NULL),(279,266,NULL,7,0.0000,'2021-03-18 14:33:56',0,NULL),(280,267,NULL,101,0.0000,'2021-03-18 14:36:32',0,NULL),(281,268,NULL,89,0.0000,'2021-03-18 14:37:56',0,NULL),(282,269,NULL,180,0.0000,'2021-03-18 14:42:01',0,NULL),(283,270,NULL,1279,0.0000,'2021-03-18 14:53:46',0,NULL),(284,271,NULL,169,0.0000,'2021-03-18 15:00:54',0,NULL),(285,272,NULL,291,0.0000,'2021-03-18 15:07:59',0,NULL),(286,273,NULL,500,0.0000,'2021-03-18 15:34:59',0,NULL),(287,257,1,10,NULL,'2021-03-18 16:23:35',0,NULL),(288,257,1,10,NULL,'2021-03-18 16:23:43',0,NULL),(289,272,1,48,NULL,'2021-03-18 16:29:26',0,NULL),(290,253,1,9,NULL,'2021-03-18 16:31:09',0,NULL),(291,253,1,-9,NULL,'2021-03-18 16:31:51',0,NULL),(292,266,1,9,NULL,'2021-03-18 16:32:01',0,NULL),(293,267,1,10,NULL,'2021-03-18 16:33:03',0,NULL),(294,267,1,52,NULL,'2021-03-18 16:33:43',0,NULL),(295,265,1,45,NULL,'2021-03-18 16:43:29',0,NULL),(296,250,1,8,NULL,'2021-03-18 16:46:00',0,NULL),(297,263,1,10,NULL,'2021-03-18 16:46:39',0,NULL),(298,256,1,50,NULL,'2021-03-18 16:49:11',0,NULL),(299,268,1,9,NULL,'2021-03-18 16:50:35',0,NULL),(300,261,1,9,NULL,'2021-03-18 17:00:56',0,NULL),(301,259,1,10,NULL,'2021-03-18 17:03:08',0,NULL),(302,251,1,95,NULL,'2021-03-18 17:06:10',0,NULL),(303,251,1,10,NULL,'2021-03-18 17:06:43',0,NULL),(304,274,NULL,60,0.0000,'2021-03-19 15:41:34',0,NULL),(305,275,NULL,2,0.0000,'2021-03-19 15:43:04',0,NULL),(306,276,NULL,37,0.0000,'2021-03-19 15:47:08',0,NULL),(307,277,NULL,7,0.0000,'2021-03-19 15:48:40',0,NULL),(308,278,NULL,75,0.0000,'2021-03-19 15:51:17',0,NULL),(309,279,NULL,50,0.0000,'2021-03-19 15:56:27',0,NULL),(310,280,NULL,23,0.0000,'2021-03-19 15:58:18',0,NULL),(311,281,NULL,60,0.0000,'2021-03-19 16:01:44',0,NULL),(312,282,NULL,9,0.0000,'2021-03-19 16:03:04',0,NULL),(313,283,NULL,10,0.0000,'2021-03-19 16:04:58',0,NULL),(314,284,NULL,5,0.0000,'2021-03-19 16:05:42',0,NULL),(315,285,NULL,41,0.0000,'2021-03-19 16:08:25',0,NULL),(316,286,NULL,55,0.0000,'2021-03-19 16:11:55',0,NULL),(317,287,NULL,51,0.0000,'2021-03-19 16:14:11',0,NULL),(318,288,NULL,16,0.0000,'2021-03-19 16:15:58',0,NULL),(319,289,NULL,10,0.0000,'2021-03-19 16:17:41',0,NULL),(320,290,NULL,4,0.0000,'2021-03-19 16:19:00',0,NULL),(321,291,NULL,48,0.0000,'2021-03-19 16:21:04',0,NULL),(322,292,NULL,10,0.0000,'2021-03-19 16:22:43',0,NULL),(323,293,NULL,40,0.0000,'2021-03-19 16:24:24',0,NULL),(324,294,NULL,39,0.0000,'2021-03-19 16:26:27',0,NULL),(325,295,NULL,10,0.0000,'2021-03-19 16:27:31',0,NULL),(326,296,NULL,48,0.0000,'2021-03-19 16:29:24',0,NULL),(327,297,NULL,6,0.0000,'2021-03-19 16:31:52',0,NULL),(328,298,NULL,10,0.0000,'2021-03-19 16:32:53',0,NULL),(329,299,NULL,50,0.0000,'2021-03-19 16:35:49',0,NULL),(330,300,NULL,106,0.0000,'2021-03-19 16:39:29',0,NULL),(331,299,1,70,NULL,'2021-03-19 16:42:26',0,NULL),(332,301,NULL,63,0.0000,'2021-03-19 16:53:40',0,NULL),(333,302,NULL,87,0.0000,'2021-03-19 16:57:04',0,NULL),(334,303,NULL,20,0.0000,'2021-03-19 17:01:33',0,NULL),(335,304,NULL,22,0.0000,'2021-03-19 17:02:43',0,NULL),(336,305,NULL,970,0.0000,'2021-03-19 17:12:16',0,NULL),(337,306,NULL,15,0.0000,'2021-03-23 10:49:51',0,NULL),(338,307,NULL,67,0.0000,'2021-03-23 10:53:06',0,NULL),(339,308,NULL,70,0.0000,'2021-03-23 10:55:17',0,NULL),(340,306,1,1,NULL,'2021-03-23 10:57:04',0,NULL),(341,309,NULL,20,0.0000,'2021-03-23 10:59:26',0,NULL),(342,310,NULL,30,0.0000,'2021-03-23 11:02:12',0,NULL),(343,311,NULL,12,0.0000,'2021-03-23 11:05:02',0,NULL),(344,306,1,8,NULL,'2021-03-23 11:06:04',0,NULL),(345,312,NULL,82,0.0000,'2021-03-23 11:09:58',0,NULL),(346,313,NULL,84,0.0000,'2021-03-23 11:13:07',0,NULL),(347,314,NULL,72,0.0000,'2021-03-23 11:17:53',0,NULL),(348,315,NULL,72,0.0000,'2021-03-23 11:21:39',0,NULL),(349,316,NULL,165,0.0000,'2021-03-23 11:24:26',0,NULL),(350,317,NULL,62,0.0000,'2021-03-23 11:27:21',0,NULL),(351,318,NULL,10,0.0000,'2021-03-23 11:29:11',0,NULL),(352,319,NULL,30,0.0000,'2021-03-23 11:30:54',0,NULL),(353,320,NULL,71,0.0000,'2021-03-23 11:33:41',0,NULL),(354,321,NULL,21,0.0000,'2021-03-23 11:35:28',0,NULL),(355,322,NULL,33,0.0000,'2021-03-23 11:37:58',0,NULL),(356,323,NULL,3,0.0000,'2021-03-23 11:39:40',0,NULL),(357,324,NULL,81,0.0000,'2021-03-23 11:42:07',0,NULL),(358,325,NULL,67,0.0000,'2021-03-23 11:43:53',0,NULL),(359,326,2,15,0.0000,'2021-07-28 14:49:06',0,NULL),(360,327,NULL,8,0.0000,'2021-07-28 15:01:53',0,NULL),(361,328,NULL,9,0.0000,'2021-07-28 15:05:24',0,NULL),(362,329,NULL,8,0.0000,'2021-07-28 15:09:21',0,NULL),(363,330,NULL,8,0.0000,'2021-07-28 15:12:20',0,NULL),(364,331,NULL,8,0.0000,'2021-07-28 15:15:26',0,NULL),(365,332,NULL,95,0.0000,'2021-07-28 15:20:32',0,NULL),(366,333,NULL,60,0.0000,'2021-07-28 15:24:46',0,NULL),(367,334,NULL,4,0.0000,'2021-07-28 15:46:46',0,NULL),(368,335,NULL,18,0.0000,'2021-07-28 15:50:10',0,NULL),(369,336,NULL,74,0.0000,'2021-07-29 10:54:04',0,NULL),(370,337,NULL,46,0.0000,'2021-07-29 10:58:30',0,NULL),(371,338,NULL,47,0.0000,'2021-07-29 11:03:37',0,NULL),(372,339,NULL,92,0.0000,'2021-07-29 11:11:51',0,NULL),(373,340,NULL,70,0.0000,'2021-07-29 11:22:48',0,NULL),(374,341,NULL,95,0.0000,'2021-07-29 11:29:04',0,NULL),(375,342,NULL,102,0.0000,'2021-07-29 11:35:41',0,NULL),(376,343,NULL,19,0.0000,'2021-07-29 11:39:03',0,NULL),(377,344,NULL,78,0.0000,'2021-07-29 11:54:30',0,NULL),(378,345,NULL,79,0.0000,'2021-07-29 14:36:04',0,NULL),(379,346,NULL,87,0.0000,'2021-07-29 14:40:26',0,NULL),(380,347,NULL,77,0.0000,'2021-07-29 14:44:53',0,NULL),(381,348,NULL,77,0.0000,'2021-07-29 14:48:24',0,NULL),(382,349,NULL,37,0.0000,'2021-07-29 14:53:50',0,NULL),(383,350,NULL,10,0.0000,'2021-07-29 15:02:43',0,NULL),(384,351,NULL,18,0.0000,'2021-07-29 15:09:58',0,NULL),(385,337,1,19,0.0000,'2021-07-29 15:39:46',0,''),(386,352,NULL,8,0.0000,'2021-07-29 15:53:59',0,NULL),(387,353,NULL,79,0.0000,'2021-07-29 16:02:38',0,NULL),(388,337,1,81,0.0000,'2021-07-29 16:04:43',0,''),(389,345,1,79,0.0000,'2021-07-29 16:07:29',0,''),(390,354,NULL,81,0.0000,'2021-07-29 16:11:34',0,NULL),(391,347,1,30,0.0000,'2021-07-29 16:13:04',0,''),(392,355,NULL,87,0.0000,'2021-07-29 16:17:46',0,NULL),(393,356,NULL,78,0.0000,'2021-07-29 16:23:24',0,NULL),(394,357,NULL,160,0.0000,'2021-07-29 16:27:58',0,NULL),(395,358,NULL,3,0.0000,'2021-07-30 09:55:56',0,NULL),(396,359,NULL,44,0.0000,'2021-07-30 09:59:22',0,NULL),(397,310,1,6,0.0000,'2021-07-30 10:00:59',0,''),(398,360,NULL,11,0.0000,'2021-07-30 10:04:31',0,NULL),(399,359,1,5,0.0000,'2021-07-30 10:12:04',0,''),(400,361,NULL,30,0.0000,'2021-07-30 10:16:20',0,NULL),(401,318,1,6,0.0000,'2021-07-30 10:35:27',0,''),(402,362,NULL,12,0.0000,'2021-07-30 10:39:02',0,NULL),(403,363,NULL,5,0.0000,'2021-07-30 10:41:33',0,NULL),(404,364,NULL,89,0.0000,'2021-07-30 11:13:05',0,NULL),(405,365,NULL,3,0.0000,'2021-07-30 11:15:25',0,NULL),(406,366,NULL,10,0.0000,'2021-07-30 11:17:15',0,NULL),(407,367,NULL,10,0.0000,'2021-07-30 11:18:54',0,NULL),(408,368,NULL,102,0.0000,'2021-07-30 11:24:39',0,NULL),(409,369,NULL,4,0.0000,'2021-07-30 14:00:51',0,NULL),(410,370,NULL,5,0.0000,'2021-07-30 14:02:02',0,NULL),(411,371,NULL,5,0.0000,'2021-07-30 14:03:44',0,NULL),(412,372,NULL,5,0.0000,'2021-07-30 14:07:49',0,NULL),(413,373,NULL,5,0.0000,'2021-07-30 14:09:06',0,NULL),(414,374,NULL,10,0.0000,'2021-07-30 14:12:16',0,NULL),(415,375,NULL,14,0.0000,'2021-07-30 14:15:56',0,NULL),(416,376,NULL,10,0.0000,'2021-07-30 14:17:34',0,NULL),(417,377,NULL,10,0.0000,'2021-07-30 14:21:43',0,NULL),(418,378,NULL,8,0.0000,'2021-07-30 14:24:48',0,NULL),(419,379,NULL,8,0.0000,'2021-07-30 14:28:11',0,NULL),(420,380,NULL,4,0.0000,'2021-07-30 14:31:31',0,NULL),(421,381,NULL,3,0.0000,'2021-07-30 14:32:53',0,NULL),(422,382,NULL,5,0.0000,'2021-07-30 14:35:37',0,NULL),(423,383,NULL,9,0.0000,'2021-07-30 14:38:46',0,NULL),(424,384,NULL,7,0.0000,'2021-07-30 14:40:45',0,NULL),(425,385,NULL,9,0.0000,'2021-07-30 14:42:42',0,NULL),(426,386,NULL,5,0.0000,'2021-07-30 14:44:30',0,NULL),(427,387,NULL,17,0.0000,'2021-07-30 14:48:48',0,NULL),(428,388,NULL,9,0.0000,'2021-07-30 14:53:01',0,NULL),(429,389,NULL,10,0.0000,'2021-07-30 14:54:17',0,NULL),(430,390,NULL,10,0.0000,'2021-07-30 14:56:52',0,NULL),(431,391,NULL,4,0.0000,'2021-07-30 14:59:58',0,NULL),(432,392,NULL,75,0.0000,'2021-07-30 15:04:08',0,NULL),(433,393,NULL,75,0.0000,'2021-07-30 15:06:21',0,NULL),(434,394,NULL,50,0.0000,'2021-07-30 15:08:54',0,NULL),(435,395,NULL,200,0.0000,'2021-07-30 15:12:42',0,NULL),(436,396,NULL,15,0.0000,'2021-07-30 15:19:13',0,NULL),(437,397,NULL,20,0.0000,'2021-07-30 15:20:34',0,NULL),(438,398,NULL,10,0.0000,'2021-07-30 15:21:56',0,NULL),(439,399,NULL,20,0.0000,'2021-07-30 15:38:23',0,NULL),(440,400,NULL,15,0.0000,'2021-07-30 15:39:20',0,NULL),(441,401,NULL,8,0.0000,'2021-08-02 09:42:20',0,NULL),(442,402,NULL,4,0.0000,'2021-08-02 09:47:16',0,NULL),(443,403,NULL,150,0.0000,'2021-08-02 10:07:59',0,NULL),(444,404,NULL,50,0.0000,'2021-08-02 10:19:01',0,NULL),(445,405,NULL,49,0.0000,'2021-08-02 10:27:20',0,NULL),(446,406,NULL,9,0.0000,'2021-08-02 10:32:50',0,NULL),(447,407,NULL,9,0.0000,'2021-08-02 10:38:31',0,NULL),(448,407,1,1,0.0000,'2021-08-02 10:39:17',0,''),(449,408,NULL,81,0.0000,'2021-08-02 10:42:04',0,NULL),(450,409,NULL,20,0.0000,'2021-08-02 10:45:37',0,NULL),(451,410,NULL,88,0.0000,'2021-08-02 10:47:02',0,NULL),(452,411,NULL,10,0.0000,'2021-08-02 10:48:40',0,NULL),(453,412,NULL,91,0.0000,'2021-08-02 10:51:39',0,NULL),(454,413,NULL,10,0.0000,'2021-08-02 10:58:10',0,NULL),(455,414,NULL,62,0.0000,'2021-08-02 11:04:58',0,NULL),(456,415,NULL,10,0.0000,'2021-08-02 11:08:07',0,NULL),(457,416,NULL,4,0.0000,'2021-08-02 11:11:59',0,NULL),(458,417,NULL,6,0.0000,'2021-08-02 11:17:27',0,NULL),(459,418,NULL,83,0.0000,'2021-08-02 11:19:07',0,NULL),(460,419,NULL,85,0.0000,'2021-08-02 11:23:18',0,NULL),(461,420,NULL,115,0.0000,'2021-08-02 11:29:59',0,NULL),(462,421,NULL,80,0.0000,'2021-08-02 11:33:44',0,NULL),(463,422,NULL,169,0.0000,'2021-08-02 11:39:56',0,NULL),(464,423,NULL,87,0.0000,'2021-08-02 11:45:18',0,NULL),(465,424,2,2,0.0000,'2021-08-02 13:05:08',0,NULL),(466,425,NULL,58,0.0000,'2021-08-02 13:13:32',0,NULL),(467,426,2,19,0.0000,'2021-08-02 13:22:16',0,NULL),(468,427,2,17,0.0000,'2021-08-02 13:32:53',0,NULL),(469,428,NULL,88,0.0000,'2021-08-02 13:42:16',0,NULL),(470,428,1,-1,NULL,'2021-08-02 13:42:31',0,''),(471,429,NULL,91,0.0000,'2021-08-02 13:45:57',0,NULL),(472,430,NULL,91,0.0000,'2021-08-02 13:51:25',0,NULL),(473,431,NULL,51,0.0000,'2021-08-02 13:55:01',0,NULL),(474,406,1,60,0.0000,'2021-08-02 14:00:14',0,''),(475,432,NULL,98,0.0000,'2021-08-02 14:00:23',0,NULL),(476,433,2,50,0.0000,'2021-08-02 14:05:49',0,NULL),(477,434,2,1,0.0000,'2021-08-02 14:08:58',0,NULL),(478,435,2,4,0.0000,'2021-08-02 14:13:11',0,NULL),(479,436,NULL,171,0.0000,'2021-08-02 14:13:12',0,NULL),(480,437,2,6,0.0000,'2021-08-02 14:17:05',0,NULL),(481,438,2,9,0.0000,'2021-08-02 14:25:29',0,NULL),(482,439,NULL,151,0.0000,'2021-08-02 14:27:30',0,NULL),(483,440,2,50,0.0000,'2021-08-02 14:31:41',0,NULL),(484,441,NULL,67,0.0000,'2021-08-02 14:33:28',0,NULL),(485,442,NULL,8,0.0000,'2021-08-02 14:36:34',0,NULL),(486,443,NULL,203,0.0000,'2021-08-02 14:41:12',0,NULL),(487,272,1,29,0.0000,'2021-08-02 15:36:58',0,''),(488,444,NULL,308,0.0000,'2021-08-02 16:06:11',0,NULL),(492,445,2,10,0.0000,'2021-08-03 09:21:24',0,NULL),(493,265,1,151,0.0000,'2021-08-03 09:34:41',0,''),(494,446,2,25,0.0000,'2021-08-03 09:55:34',0,NULL),(495,447,NULL,91,0.0000,'2021-08-03 10:11:02',0,NULL),(496,77,1,5,0.0000,'2021-08-03 10:17:33',0,''),(497,77,1,1,0.0000,'2021-08-03 10:18:10',0,''),(498,448,2,15,0.0000,'2021-08-03 10:42:35',0,NULL),(499,449,2,14,0.0000,'2021-08-03 11:01:33',0,NULL),(500,257,1,11,0.0000,'2021-08-03 11:02:15',0,''),(502,451,2,14,0.0000,'2021-08-03 11:12:05',0,NULL),(503,452,NULL,206,0.0000,'2021-08-03 11:26:43',0,NULL),(504,267,1,31,0.0000,'2021-08-03 11:32:08',0,''),(505,270,1,-1279,NULL,'2021-08-03 11:36:10',0,''),(506,270,1,111,0.0000,'2021-08-03 11:36:33',0,'fresh stock'),(507,453,NULL,45,0.0000,'2021-08-03 11:41:52',0,NULL),(508,454,2,5,0.0000,'2021-08-03 11:43:56',0,NULL),(509,455,2,3,0.0000,'2021-08-03 11:46:39',0,NULL),(510,278,1,53,0.0000,'2021-08-03 11:47:08',0,''),(511,456,2,10,0.0000,'2021-08-03 11:53:59',0,NULL),(512,457,2,4,0.0000,'2021-08-03 12:00:04',0,NULL),(513,458,NULL,62,0.0000,'2021-08-03 13:07:44',0,NULL),(514,459,NULL,94,0.0000,'2021-08-03 13:12:55',0,NULL),(515,460,NULL,100,0.0000,'2021-08-03 13:18:31',0,NULL),(516,449,1,7,0.0000,'2021-08-03 13:21:48',0,''),(517,461,NULL,95,0.0000,'2021-08-03 13:22:32',0,NULL),(518,462,NULL,159,0.0000,'2021-08-03 13:30:30',0,NULL),(519,463,NULL,13,0.0000,'2021-08-03 13:33:40',0,NULL),(520,464,NULL,309,0.0000,'2021-08-03 13:38:39',0,NULL),(521,465,NULL,586,0.0000,'2021-08-03 13:47:30',0,NULL),(522,466,NULL,500,0.0000,'2021-08-03 13:55:29',0,NULL),(523,467,NULL,12,0.0000,'2021-08-03 14:06:21',0,NULL),(524,468,NULL,148,0.0000,'2021-08-03 14:12:12',0,NULL),(525,469,NULL,74,0.0000,'2021-08-03 14:16:14',0,NULL),(526,470,NULL,21,0.0000,'2021-08-03 14:18:54',0,NULL),(527,471,NULL,17,0.0000,'2021-08-03 14:21:13',0,NULL),(528,472,NULL,52,0.0000,'2021-08-03 14:30:15',0,NULL),(529,473,NULL,13,0.0000,'2021-08-03 14:40:49',0,NULL),(530,474,2,37,0.0000,'2021-08-03 15:55:11',0,NULL),(531,475,2,161,0.0000,'2021-08-03 16:03:12',0,NULL),(532,476,2,1,0.0000,'2021-08-03 16:22:10',0,NULL),(533,477,2,20,0.0000,'2021-08-03 16:29:53',0,NULL),(534,478,2,20,0.0000,'2021-08-03 16:43:18',0,NULL),(535,479,2,40,0.0000,'2021-08-03 16:50:25',0,NULL),(536,480,NULL,162,0.0000,'2021-08-09 10:57:34',0,NULL),(537,481,NULL,20,0.0000,'2021-08-09 11:03:27',0,NULL),(538,482,NULL,150,0.0000,'2021-08-09 11:08:49',0,NULL),(539,483,NULL,13,0.0000,'2021-08-09 11:12:31',0,NULL),(540,482,1,4,0.0000,'2021-08-09 13:01:47',0,''),(541,484,NULL,10,0.0000,'2021-08-09 13:07:23',0,NULL),(542,485,NULL,20,0.0000,'2021-08-09 13:12:44',0,NULL),(543,486,NULL,233,0.0000,'2021-08-09 13:19:36',0,NULL),(544,487,NULL,150,0.0000,'2021-08-09 13:33:39',0,NULL),(545,488,NULL,12,0.0000,'2021-08-09 13:39:15',0,NULL),(546,489,NULL,17,0.0000,'2021-08-09 13:42:31',0,NULL),(547,490,NULL,18,0.0000,'2021-08-09 13:46:00',0,NULL),(548,491,NULL,26,0.0000,'2021-08-09 14:00:33',0,NULL),(549,492,NULL,70,0.0000,'2021-08-09 14:08:48',0,NULL),(550,493,NULL,9,0.0000,'2021-08-12 10:58:13',0,NULL),(551,238,1,33,0.0000,'2021-08-12 11:00:09',0,''),(552,494,NULL,9,0.0000,'2021-08-12 11:03:29',0,NULL),(553,495,NULL,19,0.0000,'2021-08-12 11:06:19',0,NULL),(554,496,NULL,10,0.0000,'2021-08-12 11:07:21',0,NULL),(555,497,NULL,35,0.0000,'2021-08-12 11:09:20',0,NULL),(556,498,NULL,11,0.0000,'2021-08-12 11:11:08',0,NULL),(557,499,NULL,10,0.0000,'2021-08-12 11:12:19',0,NULL),(558,500,NULL,6,0.0000,'2021-08-12 11:14:07',0,NULL),(559,322,1,25,0.0000,'2021-08-12 11:15:43',0,''),(560,501,NULL,20,0.0000,'2021-08-12 11:18:18',0,NULL),(561,502,NULL,10,0.0000,'2021-08-12 11:20:17',0,NULL),(562,503,NULL,10,0.0000,'2021-08-12 11:21:52',0,NULL),(563,504,NULL,10,0.0000,'2021-08-12 11:28:26',0,NULL),(564,239,1,10,0.0000,'2021-08-12 11:30:17',0,''),(565,505,NULL,10,0.0000,'2021-08-12 11:31:37',0,NULL),(566,313,1,25,0.0000,'2021-08-12 11:34:45',0,''),(567,506,NULL,8,0.0000,'2021-08-12 11:37:33',0,NULL),(568,507,NULL,10,0.0000,'2021-08-12 13:28:09',0,NULL);
/*!40000 ALTER TABLE `StockEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocation`
--

DROP TABLE IF EXISTS `StorageLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2C59071C5E237E06` (`name`),
  KEY `IDX_2C59071C12469DE2` (`category_id`),
  CONSTRAINT `FK_2C59071C12469DE2` FOREIGN KEY (`category_id`) REFERENCES `StorageLocationCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocation`
--

LOCK TABLES `StorageLocation` WRITE;
/*!40000 ALTER TABLE `StorageLocation` DISABLE KEYS */;
INSERT INTO `StorageLocation` VALUES (2,1,'B1-A-1'),(3,1,'B1-A-2'),(4,1,'B1-A-3'),(5,1,'B1-A-4'),(6,1,'B1-A-5'),(7,1,'B1-A-6'),(8,1,'B1-A-7'),(9,1,'B1-A-8'),(20,3,'M1-A-04'),(21,3,'M1-A-02'),(22,3,'M1-A-03'),(23,3,'M1-A-01'),(24,3,'M1-A-05'),(25,3,'M1-B-01'),(26,3,'M1-B-02'),(27,3,'M1-B-03'),(28,3,'M1-B-04'),(29,3,'M1-B-05'),(30,3,'M1-C-04'),(31,3,'M1-C-05'),(32,3,'M1-C-01'),(33,3,'M1-C-03'),(34,3,'M1-C-02'),(35,3,'M1-D-02'),(36,3,'M1-D-03'),(37,3,'M1-D-04'),(38,3,'M1-D-05'),(39,3,'M1-D-01'),(40,3,'M1-E-05'),(41,3,'M1-E-03'),(42,3,'M1-E-01'),(43,3,'M1-E-04'),(44,3,'M1-E-02'),(51,3,'M1-D-06'),(56,3,'M1-D-07'),(57,3,'M1-D-08'),(68,3,'M1-F-02'),(69,3,'M1-F-03'),(70,3,'M1-F-04'),(71,3,'M1-F-01'),(72,3,'M1-F-05'),(73,4,'RK-U-3'),(74,4,'RK-U-5'),(75,4,'RK-U-4'),(76,4,'RK-U-2'),(77,4,'RK-U-1'),(78,1,'BOX-B'),(79,1,'K-DK-1'),(80,1,'K-DK-2'),(81,1,'K-LCSC'),(82,4,'RK-P-3'),(83,4,'RK-P-1'),(84,4,'RK-P-2'),(85,4,'RK-P-4'),(86,1,'FUSI-L-2'),(87,5,'B1-A-04'),(88,5,'B1-A-02'),(89,5,'B1-A-06'),(90,5,'B1-A-03'),(91,5,'B1-A-01'),(92,5,'B1-A-05'),(93,5,'B1-A-07'),(94,5,'B1-A-09'),(95,5,'B1-A-08'),(96,5,'B1-A-10'),(97,5,'B1-A-11'),(98,5,'B1-A-12'),(99,5,'B1-B-01'),(100,5,'B1-B-06'),(101,5,'B1-B-02'),(102,5,'B1-B-05'),(103,5,'B1-B-03'),(104,5,'B1-B-07'),(105,5,'B1-B-04'),(106,5,'B1-B-08'),(107,5,'B1-B-09'),(108,5,'B1-B-10'),(109,5,'B1-B-11'),(110,5,'B1-B-12'),(111,5,'B1-C-03'),(112,5,'B1-C-04'),(113,5,'B1-C-01'),(114,5,'B1-C-06'),(115,5,'B1-C-05'),(116,5,'B1-C-02'),(117,5,'B1-C-07'),(118,5,'B1-C-08'),(119,5,'B1-C-09'),(120,5,'B1-C-10'),(121,5,'B1-C-11'),(122,5,'B1-C-12'),(123,5,'B1-D-03'),(124,5,'B1-D-02'),(125,5,'B1-D-04'),(126,5,'B1-D-01'),(127,5,'B1-D-05'),(128,5,'B1-D-07'),(129,5,'B1-D-09'),(130,5,'B1-D-10'),(131,5,'B1-D-06'),(132,5,'B1-D-08'),(133,5,'B1-D-11'),(134,5,'B1-D-12'),(135,5,'B1-E-02'),(136,5,'B1-E-01'),(137,5,'B1-E-05'),(138,5,'B1-E-06'),(139,5,'B1-E-04'),(140,5,'B1-E-03'),(141,5,'B1-E-08'),(142,5,'B1-E-07'),(143,5,'B1-E-09'),(144,5,'B1-E-10'),(145,5,'B1-E-12'),(146,5,'B1-E-11'),(147,3,'M1-G-03'),(148,3,'M1-G-01'),(149,3,'M1-G-02'),(150,3,'M1-H-01'),(151,3,'M1-H-02'),(152,3,'M1-H-03'),(153,3,'M1-I-01'),(154,3,'M1-I-02'),(155,3,'M1-I-03'),(156,5,'B2-A-01'),(157,5,'B2-A-03'),(158,5,'B2-A-06'),(159,5,'B2-A-04'),(160,5,'B2-A-05'),(161,5,'B2-A-02'),(162,5,'B2-A-07'),(163,5,'B2-A-08'),(164,5,'B2-A-09'),(165,5,'B2-A-10'),(166,5,'B2-A-11'),(167,5,'B2-A-12'),(168,5,'B2-B-04'),(169,5,'B2-B-06'),(170,5,'B2-B-05'),(171,5,'B2-B-03'),(172,5,'B2-B-02'),(173,5,'B2-B-01'),(174,5,'B2-B-07'),(175,5,'B2-B-08'),(176,5,'B2-B-09'),(177,5,'B2-B-10'),(178,5,'B2-B-11'),(179,5,'B2-B-12'),(180,5,'B2-C-03'),(181,5,'B2-C-05'),(182,5,'B2-C-06'),(183,5,'B2-C-02'),(184,5,'B2-C-01'),(185,5,'B2-C-04'),(186,5,'B2-C-07'),(187,5,'B2-C-08'),(188,5,'B2-C-09'),(189,5,'B2-C-10'),(190,5,'B2-C-11'),(191,5,'B2-C-12'),(192,5,'B2-D-01'),(193,5,'B2-D-02'),(194,5,'B2-D-04'),(195,5,'B2-D-05'),(196,5,'B2-D-03'),(197,5,'B2-D-06'),(198,5,'B2-D-08'),(199,5,'B2-D-07'),(200,5,'B2-D-10'),(201,5,'B2-D-09'),(202,5,'B2-D-11'),(203,5,'B2-D-12'),(204,5,'B2-E-01'),(205,5,'B2-E-05'),(206,5,'B2-E-02'),(207,5,'B2-E-04'),(208,5,'B2-E-06'),(209,5,'B2-E-07'),(210,5,'B2-E-03'),(211,5,'B2-E-08'),(212,5,'B2-E-09'),(213,5,'B2-E-10'),(214,5,'B2-E-11'),(215,5,'B2-E-12'),(216,1,'M2-A-05'),(217,1,'M2-A-02'),(218,1,'M2-A-04'),(219,1,'M2-A-06'),(220,1,'M2-A-03'),(221,1,'M2-A-01'),(222,1,'M2-A-07'),(223,1,'M2-A-08'),(224,6,'A1-A-02'),(225,6,'A1-A-03'),(226,6,'A1-A-04'),(227,6,'A1-A-05'),(228,6,'A1-A-01'),(229,6,'A1-B-02'),(230,6,'A1-B-01'),(231,6,'A1-B-05'),(232,6,'A1-B-04'),(233,6,'A1-B-03'),(234,6,'A1-C-04'),(235,6,'A1-C-02'),(236,6,'A1-C-03'),(237,6,'A1-C-05'),(238,6,'A1-C-01'),(239,6,'A1-D-01'),(240,6,'A1-D-05'),(241,6,'A1-D-02'),(242,6,'A1-D-03'),(243,6,'A1-D-04'),(249,6,'A1-E-04'),(250,6,'A1-E-03'),(251,6,'A1-E-02'),(252,6,'A1-E-05'),(253,6,'A1-E-01'),(254,6,'A2-A-01'),(255,6,'A2-A-04'),(256,6,'A2-A-02'),(257,6,'A2-A-05'),(258,6,'A2-A-03'),(259,6,'A2-B-02'),(260,6,'A2-B-05'),(261,6,'A2-B-01'),(262,6,'A2-B-04'),(263,6,'A2-B-03'),(264,6,'A2-C-03'),(265,6,'A2-C-02'),(266,6,'A2-C-01'),(267,6,'A2-C-04'),(268,6,'A2-C-05'),(269,6,'A2-D-01'),(270,6,'A2-D-03'),(271,6,'A2-D-02'),(272,6,'A2-D-04'),(273,6,'A2-D-05'),(274,6,'A2-E-05'),(275,6,'A2-E-02'),(276,6,'A2-E-03'),(277,6,'A2-E-01'),(278,6,'A2-E-04'),(279,6,'A3-A-01'),(280,6,'A3-A-03'),(281,6,'A3-A-02'),(282,6,'A3-A-05'),(283,6,'A3-A-04'),(284,6,'A3-B-04'),(285,6,'A3-B-05'),(286,6,'A3-B-02'),(287,6,'A3-B-03'),(288,6,'A3-B-01'),(289,6,'A3-C-05'),(290,6,'A3-C-01'),(291,6,'A3-C-03'),(292,6,'A3-C-02'),(293,6,'A3-C-04'),(294,6,'A3-D-02'),(295,6,'A3-D-04'),(296,6,'A3-D-05'),(297,6,'A3-D-01'),(298,6,'A3-D-03'),(299,6,'A3-E-01'),(300,6,'A3-E-05'),(301,6,'A3-E-02'),(302,6,'A3-E-03'),(303,6,'A3-E-04'),(304,6,'A5-A-04'),(305,6,'A5-A-03'),(306,6,'A5-A-05'),(307,6,'A5-A-01'),(308,6,'A5-A-02'),(309,6,'A5-B-06'),(310,6,'A5-B-01'),(311,6,'A5-B-02'),(312,6,'A5-B-05'),(313,6,'A5-B-03'),(314,6,'A5-B-04'),(315,6,'A5-C-01'),(316,6,'A5-C-04'),(317,6,'A5-C-05'),(318,6,'A5-C-02'),(319,6,'A5-C-03'),(320,6,'A5-D-03'),(321,6,'A5-D-05'),(322,6,'A5-D-04'),(323,6,'A5-D-01'),(324,6,'A5-D-02'),(325,6,'A5-E-03'),(326,6,'A5-E-05'),(327,6,'A5-E-01'),(328,6,'A5-E-04'),(329,6,'A5-E-02'),(330,3,'M1-A-08'),(331,3,'M1-A-07'),(332,3,'M1-A-06'),(333,3,'M1-B-07'),(334,3,'M1-B-06'),(335,3,'M1-B-08'),(336,3,'M1-C-06'),(337,3,'M1-C-08'),(338,3,'M1-C-07'),(339,3,'A4-A-03'),(340,3,'A4-A-04'),(341,3,'A4-A-05'),(342,3,'A4-A-02'),(343,3,'A4-A-01'),(344,3,'A4-B-05'),(345,3,'A4-B-03'),(346,3,'A4-B-02'),(347,3,'A4-B-04'),(348,3,'A4-B-01'),(349,3,'A4-C-03'),(350,3,'A4-C-05'),(351,3,'A4-C-01'),(352,3,'A4-C-04'),(353,3,'A4-C-02');
/*!40000 ALTER TABLE `StorageLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocationCategory`
--

DROP TABLE IF EXISTS `StorageLocationCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocationCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `root` int(11) DEFAULT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `categoryPath` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_3E39FA47727ACA70` (`parent_id`),
  KEY `IDX_3E39FA47DA439252` (`lft`),
  KEY `IDX_3E39FA47D5E02D69` (`rgt`),
  CONSTRAINT `FK_3E39FA47727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `StorageLocationCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocationCategory`
--

LOCK TABLES `StorageLocationCategory` WRITE;
/*!40000 ALTER TABLE `StorageLocationCategory` DISABLE KEYS */;
INSERT INTO `StorageLocationCategory` VALUES (1,NULL,1,10,0,1,'Root Category',NULL,'Root Category'),(3,1,2,3,1,1,'RAK-MERAH','','Root Category ➤ RAK-MERAH'),(4,1,4,5,1,1,'FUSI-LANTAI-2','','Root Category ➤ FUSI-LANTAI-2'),(5,1,6,7,1,1,'RAK-BIRU','','Root Category ➤ RAK-BIRU'),(6,1,8,9,1,1,'RAK-HITAM','','Root Category ➤ RAK-HITAM');
/*!40000 ALTER TABLE `StorageLocationCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocationImage`
--

DROP TABLE IF EXISTS `StorageLocationImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocationImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `storageLocation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_666717F073CD58AF` (`storageLocation_id`),
  CONSTRAINT `FK_666717F073CD58AF` FOREIGN KEY (`storageLocation_id`) REFERENCES `StorageLocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocationImage`
--

LOCK TABLES `StorageLocationImage` WRITE;
/*!40000 ALTER TABLE `StorageLocationImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `StorageLocationImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotice`
--

DROP TABLE IF EXISTS `SystemNotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `acknowledged` tinyint(1) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotice`
--

LOCK TABLES `SystemNotice` WRITE;
/*!40000 ALTER TABLE `SystemNotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemNotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemPreference`
--

DROP TABLE IF EXISTS `SystemPreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemPreference` (
  `preferenceKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preferenceValue` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`preferenceKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemPreference`
--

LOCK TABLES `SystemPreference` WRITE;
/*!40000 ALTER TABLE `SystemPreference` DISABLE KEYS */;
INSERT INTO `SystemPreference` VALUES ('partkeepr.barcodeScanner.actions','s:116:\"[{\"code\":\"P\",\"action\":\"PartKeepr.BarcodeScanner.Actions.AddPart\",\"config\":{\"searchFields\":[],\"searchMode\":\"fixed\"}}]\";'),('partkeepr.barcodeScanner.enter','s:5:\"false\";'),('partkeepr.barcodeScanner.key','s:3:\"\"k\"\";'),('partkeepr.barcodeScanner.modifierAlt','s:4:\"true\";'),('partkeepr.barcodeScanner.modifierCtrl','s:5:\"false\";'),('partkeepr.barcodeScanner.modifierShift','s:5:\"false\";'),('partkeepr.barcodeScanner.timeout','s:3:\"500\";'),('partkeepr.part.constraints.attachmentCount','s:1:\"0\";'),('partkeepr.part.constraints.distributorCount','s:1:\"0\";'),('partkeepr.part.constraints.manufacturerCount','s:1:\"0\";'),('partkeepr.part.requiredFields','s:26:\"[\"stockLevels.stockLevel\"]\";'),('partkeepr.part.search.fields','s:145:\"[\"@id\",\"name\",\"description\",\"comment\",\"minStockLevel\",\"status\",\"needsReview\",\"partCondition\",\"productionRemarks\",\"internalPartNumber\",\"metaPart\"]\";'),('partkeepr.part.search.split','s:5:\"false\";');
/*!40000 ALTER TABLE `SystemPreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TempImage`
--

DROP TABLE IF EXISTS `TempImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TempImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TempImage`
--

LOCK TABLES `TempImage` WRITE;
/*!40000 ALTER TABLE `TempImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `TempImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TempUploadedFile`
--

DROP TABLE IF EXISTS `TempUploadedFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TempUploadedFile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `originalname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mimetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TempUploadedFile`
--

LOCK TABLES `TempUploadedFile` WRITE;
/*!40000 ALTER TABLE `TempUploadedFile` DISABLE KEYS */;
INSERT INTO `TempUploadedFile` VALUES (1,'tempfile','fdc04968-6a8d-11eb-b35e-42010ab80009','webcam.png','inode/x-empty',0,'',NULL,'2021-02-09 04:19:24'),(2,'tempfile','105ed90e-6a8e-11eb-b016-42010ab80009','photo_2021-02-09_11-15-03.jpg','image/jpeg',124633,'',NULL,'2021-02-09 04:19:55'),(3,'tempfile','8d904ede-6a8f-11eb-948b-42010ab80009','photo_2021-02-09_11-30-17.jpg','image/jpeg',65256,'',NULL,'2021-02-09 04:30:35'),(4,'tempfile','2c90cf5e-6a90-11eb-aa7f-42010ab80009','photo_2021-02-09_11-30-17.jpg','',65256,'jpeg',NULL,'2021-02-09 04:35:02'),(5,'tempfile','178bb120-70d8-11eb-b006-00163e0427c0','webcam.png','inode/x-empty',0,'',NULL,'2021-02-17 11:24:57');
/*!40000 ALTER TABLE `TempUploadedFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipOfTheDay`
--

DROP TABLE IF EXISTS `TipOfTheDay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipOfTheDay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipOfTheDay`
--

LOCK TABLES `TipOfTheDay` WRITE;
/*!40000 ALTER TABLE `TipOfTheDay` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipOfTheDay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipOfTheDayHistory`
--

DROP TABLE IF EXISTS `TipOfTheDayHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipOfTheDayHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3177BC2A76ED395` (`user_id`),
  CONSTRAINT `FK_3177BC2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipOfTheDayHistory`
--

LOCK TABLES `TipOfTheDayHistory` WRITE;
/*!40000 ALTER TABLE `TipOfTheDayHistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `TipOfTheDayHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unit`
--

DROP TABLE IF EXISTS `Unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unit`
--

LOCK TABLES `Unit` WRITE;
/*!40000 ALTER TABLE `Unit` DISABLE KEYS */;
INSERT INTO `Unit` VALUES (1,'Meter','m'),(2,'Gram','g'),(3,'Second','s'),(4,'Kelvin','K'),(5,'Mol','mol'),(6,'Candela','cd'),(7,'Ampere','A'),(8,'Ohm','Ω'),(9,'Volt','V'),(10,'Hertz','Hz'),(11,'Newton','N'),(12,'Pascal','Pa'),(13,'Joule','J'),(14,'Watt','W'),(15,'Coulomb','C'),(16,'Farad','F'),(17,'Siemens','S'),(18,'Weber','Wb'),(19,'Tesla','T'),(20,'Henry','H'),(21,'Celsius','°C'),(22,'Lumen','lm'),(23,'Lux','lx'),(24,'Becquerel','Bq'),(25,'Gray','Gy'),(26,'Sievert','Sv'),(27,'Katal','kat'),(28,'Ampere Hour','Ah');
/*!40000 ALTER TABLE `Unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitSiPrefixes`
--

DROP TABLE IF EXISTS `UnitSiPrefixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnitSiPrefixes` (
  `unit_id` int(11) NOT NULL,
  `siprefix_id` int(11) NOT NULL,
  PRIMARY KEY (`unit_id`,`siprefix_id`),
  KEY `IDX_72356740F8BD700D` (`unit_id`),
  KEY `IDX_723567409BE9F1F4` (`siprefix_id`),
  CONSTRAINT `FK_723567409BE9F1F4` FOREIGN KEY (`siprefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_72356740F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitSiPrefixes`
--

LOCK TABLES `UnitSiPrefixes` WRITE;
/*!40000 ALTER TABLE `UnitSiPrefixes` DISABLE KEYS */;
INSERT INTO `UnitSiPrefixes` VALUES (1,8),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(2,8),(2,11),(2,14),(3,11),(3,14),(4,11),(5,11),(6,14),(7,8),(7,11),(7,14),(7,15),(7,16),(7,17),(8,5),(8,6),(8,8),(8,11),(8,14),(8,15),(9,8),(9,11),(9,14),(10,5),(10,6),(10,8),(10,11),(10,14),(11,8),(11,11),(12,8),(12,11),(12,14),(13,8),(13,11),(13,14),(13,15),(14,6),(14,7),(14,8),(14,11),(14,14),(14,15),(15,8),(15,11),(16,11),(16,14),(16,15),(16,16),(16,17),(17,11),(17,14),(18,11),(19,11),(20,11),(20,14),(20,15),(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(26,14),(26,15),(27,11),(28,8),(28,11),(28,14);
/*!40000 ALTER TABLE `UnitSiPrefixes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPreference`
--

DROP TABLE IF EXISTS `UserPreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPreference` (
  `user_id` int(11) NOT NULL,
  `preferenceKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preferenceValue` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`preferenceKey`,`user_id`),
  KEY `IDX_922CE7A2A76ED395` (`user_id`),
  CONSTRAINT `FK_922CE7A2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPreference`
--

LOCK TABLES `UserPreference` WRITE;
/*!40000 ALTER TABLE `UserPreference` DISABLE KEYS */;
INSERT INTO `UserPreference` VALUES (1,'partkeepr.categorytree.showdescriptions','s:4:\"true\";'),(1,'partkeepr.formatting.currency.currencySymbolAtEnd','s:5:\"false\";'),(1,'partkeepr.formatting.currency.numdecimals','s:1:\"2\";'),(1,'partkeepr.formatting.currency.symbol','s:2:\"\"\"\";'),(1,'partkeepr.formatting.currency.thousandsSeparator','s:4:\"true\";'),(1,'partkeepr.inline-stock-change.confirm','s:4:\"true\";'),(1,'partkeepr.partmanager.compactlayout','s:5:\"false\";'),(1,'partkeepr.tipoftheday.showtips','s:4:\"true\";'),(2,'partkeepr.tipoftheday.showtips','s:4:\"true\";'),(3,'partkeepr.tipoftheday.showtips','s:4:\"true\";'),(1,'partkeepr.user.theme','s:9:\"\"classic\"\";'),(2,'partkeepr.user.theme','s:9:\"\"classic\"\";'),(3,'partkeepr.user.theme','s:7:\"\"crisp\"\";');
/*!40000 ALTER TABLE `UserPreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserProvider`
--

DROP TABLE IF EXISTS `UserProvider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserProvider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserProvider`
--

LOCK TABLES `UserProvider` WRITE;
/*!40000 ALTER TABLE `UserProvider` DISABLE KEYS */;
INSERT INTO `UserProvider` VALUES (1,'Builtin',1);
/*!40000 ALTER TABLE `UserProvider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-12 14:28:31
