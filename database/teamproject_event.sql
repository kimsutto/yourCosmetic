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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `Eno` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(45) DEFAULT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`Eno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Olive Young','2019-04-01','2019-07-02','https://www.oliveyoung.co.kr/store/event/20190401_2/getEventDetail.do?evtNo=00000000006332&sslYn=Y'),(2,'Olive Young','2019-05-20','2019-06-20','http://www.oliveyoung.co.kr/store/event/getEventDetail.do?evtNo=00000000006415'),(3,'AmorePacificMall','2019-05-31','2019-06-30','https://www.amorepacificmall.com/kr/ko/display/event_detail?planDisplaySn=1743'),(4,'AmorePacificMall','2019-05-30','2019-06-30','https://www.amorepacificmall.com/kr/ko/display/event_detail?planDisplaySn=1238'),(5,'innisfree','2019-06-01','2019-06-30','http://www.innisfree.com/kr/ko/ProductView.do?prdSeq=22396'),(6,'innisfree','2019-06-01','2019-06-30','http://www.innisfree.com/kr/ko/Product.do?tp=2&catCd01=PR'),(7,'The Faceshop','2019-06-01','2019-06-30','http://www.thefaceshop.com/mall/event/event-view.jsp?seq=3038'),(8,'EtudeHouse','2019-06-03','2019-06-30','https://www.etudehouse.com/kr/ko/display/event_detail?planDisplaySn=1751'),(9,'lalavla','2019-06-03','2019-06-30','http://www.gsretail.com/gsretail/ko/customer-engagement/event/detail/publishing?eventCode=8819916033568'),(10,'MISSHA','2019-06-03','2019-12-31','http://missha.beautynet.co.kr/goods.list.exhibition.do?ebtNo=5267');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 18:57:33
