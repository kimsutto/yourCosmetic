-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: teamproject
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `Uno` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `지성` tinyint(1) DEFAULT NULL,
  `건성` tinyint(1) DEFAULT NULL,
  `복합성` tinyint(1) DEFAULT NULL,
  `중성` tinyint(1) DEFAULT NULL,
  `밝은톤` tinyint(1) DEFAULT NULL,
  `중간톤` tinyint(1) DEFAULT NULL,
  `어두운톤` tinyint(1) DEFAULT NULL,
  `건조` tinyint(1) DEFAULT NULL,
  `민감` tinyint(1) DEFAULT NULL,
  `여드름` tinyint(1) DEFAULT NULL,
  `주름/탄력` tinyint(1) DEFAULT NULL,
  `미백` tinyint(1) DEFAULT NULL,
  `블랙헤드/피지` tinyint(1) DEFAULT NULL,
  `쿨톤` tinyint(1) DEFAULT NULL,
  `웜톤` tinyint(1) DEFAULT NULL,
  `매트` tinyint(1) DEFAULT NULL,
  `글로시` tinyint(1) DEFAULT NULL,
  `유해` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Uno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,'master','123','master',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0),(1,'park','123','park',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0),(2,'kim','123','kim',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0);
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

-- Dump completed on 2019-06-01 23:01:54
