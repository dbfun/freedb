-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dev_free_db
-- ------------------------------------------------------
-- Server version	5.5.38-0+wheezy1

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
-- Table structure for table `dbs`
--

DROP TABLE IF EXISTS `dbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(64) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `database` varchar(32) NOT NULL DEFAULT '',
  `is_checked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `check_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checked` (`is_checked`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbs`
--

LOCK TABLES `dbs` WRITE;
/*!40000 ALTER TABLE `dbs` DISABLE KEYS */;
INSERT INTO `dbs` VALUES (1,'roundblo.mysql.ukraine.com.ua','roundblo_nooado','dy5ukgqv','roundblo_nooado',0,0,'0000-00-00 00:00:00'),(2,'macefash.mysql.ukraine.com.ua','macefash_ess','ess','macefash_ess',0,0,'0000-00-00 00:00:00'),(3,'electr44.mysql.ukraine.com.ua','electr44_devmaps','53xet65t','electr44_devmaps',0,0,'0000-00-00 00:00:00'),(4,'lab01pri.mysql.ukraine.com.ua','lab01pri_sweet','h4hrc7zj','lab01pri_sweet',0,0,'0000-00-00 00:00:00'),(5,'feoktist.mysql.ukraine.com.ua','feoktist_jakhoch','m58936n5','feoktist_jakhoch',0,0,'0000-00-00 00:00:00'),(6,'openthep.mysql.ukraine.com.ua','openthep_db','FPtfmWqE','openthep_db',0,0,'0000-00-00 00:00:00'),(7,'qrland.mysql.ukraine.com.ua','qrland_track','yc4v9vuu','qrland_track',0,0,'0000-00-00 00:00:00'),(8,'webideas.mysql.ukraine.com.ua','webideas_virt','b2zjytc9','webideas_virt',0,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `dbs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-09  2:41:27
