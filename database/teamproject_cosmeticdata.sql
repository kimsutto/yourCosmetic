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
-- Table structure for table `cosmeticdata`
--

DROP TABLE IF EXISTS `cosmeticdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cosmeticdata` (
  `Dno` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `이름` varchar(45) CHARACTER SET utf32 DEFAULT NULL,
  `제조사` varchar(45) CHARACTER SET utf32 DEFAULT NULL,
  `가격` int(11) DEFAULT NULL,
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
  `성분` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`Dno`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosmeticdata`
--

LOCK TABLES `cosmeticdata` WRITE;
/*!40000 ALTER TABLE `cosmeticdata` DISABLE KEYS */;
INSERT INTO `cosmeticdata` VALUES (1,1,'아보카도 아이크림','마티나겝하르트',15000,0,1,0,1,1,1,1,1,0,0,1,0,0,1,1,0,1,0,''),(2,1,'더 심플 카밍 토너','싸이닉',18000,0,1,0,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,NULL),(3,1,'콜라겐 폭탄 하이드레이팅 앰플','배드스킨',24000,1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,0,1,0,NULL),(4,1,'더랩바이블랑두 올리고 히알루론산 5000 토너','블랑두',21000,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,0,1,0,NULL),(5,1,'비피다 콤플렉스 앰플','마녀공장',35000,0,1,0,1,1,1,1,1,1,0,1,1,0,1,1,0,1,0,NULL),(6,1,'데일리 모이스처 테라피 인텐시브 페이셜 크림','피지오겔',22000,0,1,0,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(7,1,'레드 블레미쉬 클리어 수딩 크림','닥터지',36000,0,1,0,1,1,1,1,1,0,0,0,1,0,1,1,0,1,0,NULL),(8,1,'시카풀 앰플','비플레인',29000,0,1,0,1,1,1,1,1,1,0,1,0,0,1,1,0,1,0,NULL),(9,1,'퍼스트 트리트먼트 에센스','싸이닉',19800,0,1,0,1,1,1,1,1,0,0,1,1,0,1,1,0,1,0,NULL),(10,1,'더 심플 데일리 로션','싸이닉',18000,0,1,0,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,NULL),(11,1,'프로폴리스 앰플 미스트','차앤박화장품',8000,0,1,0,1,1,1,1,1,0,0,0,0,0,1,1,0,1,1,'피이지-60하이드로제네이티드캐스터오일'),(12,1,'1025 독도 로션','라운드랩',20000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(13,1,'웰빙 녹차 스킨','시드물',4300,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(14,1,'슈퍼 모이스트 페이셜 크림','싸이닉',25000,0,1,0,1,1,1,1,1,0,1,1,1,0,1,1,0,1,0,NULL),(15,1,'에이지 인텐스 트리트먼트 에센스','프럼네이처',22000,0,1,0,1,1,1,1,1,0,0,1,1,0,1,1,0,1,1,'페녹시에탄올'),(16,1,'익스트림 크림','리얼베리어',38000,0,1,0,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(17,1,'마다가스카르 리얼 수분 크림','시드물',23800,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,NULL),(18,1,'프로폴리스 에너지 앰플','차앤박화장품',25000,1,1,0,1,1,1,1,1,0,0,0,0,0,1,1,0,1,1,'피이지-8'),(19,1,'알래스카 85 내추럴 토너','그레이멜린',22000,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,0,1,0,NULL),(20,1,'순정 약산성 5.5 진정 토너','에뛰드하우스',13000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(21,2,'어성초 유기농 마스크 팩','다자연',1500,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,NULL),(22,2,'가지 클리어링 머드 크림 마스크','파파레서피',15000,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,0,NULL),(23,2,'꿀 펩타이드 수면 팩','시드물',9800,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,NULL),(24,2,'검정콩 유기농 마스크 팩','다자연',1500,1,1,1,1,1,1,1,0,0,0,1,0,0,1,1,1,1,0,NULL),(25,2,'하이포알러제닉 시카 레스큐 거즈 패드','더마토리',22000,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,0,NULL),(26,2,'껌딱지 시트 마스크','아비브',4000,1,1,1,1,1,1,1,1,0,0,1,1,0,1,1,1,1,0,NULL),(27,2,'셀메이징 센텔라리얼 마스크 팩','토리든',20000,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,0,NULL),(28,2,'1025 독도 마스크','라운드랩',5000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,NULL),(29,2,'티트리 케어 솔루션 에센셜 마스크 REX','메디힐',2000,1,1,1,1,1,1,1,1,0,0,1,0,0,1,1,1,1,0,NULL),(30,2,'마스크 오브 매그너민티','러쉬',20000,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,0,1,'메틸파라멘, 향료'),(31,3,'초보양 비비 크림 (21호)','미샤',27000,1,1,1,1,0,1,0,0,0,0,1,1,0,1,0,1,0,1,'세틸피이지/피피지-10/1디메치콘, 페녹시에탄올, 향료'),(32,3,'리쥬비네이팅 뷰티 밤','닥터자르트',29000,1,1,1,1,0,1,0,0,1,1,1,1,0,0,1,1,0,1,'세틸피이지/피피지-10/1다이메치콘, 레티닐팔미테이트'),(33,3,'루미너스 여신광채 비비크림','토니모리',13000,1,0,0,1,1,1,0,0,0,1,1,1,0,0,1,0,1,1,'세틸피이지/피피지-10/1디메티콘, 페녹시에탄올, 향료'),(34,3,'디스어포어 뷰티 밤','닥터자르트',34000,1,1,1,1,0,1,0,0,1,1,1,1,0,1,0,1,0,1,'피이지-10다이메티콘, 세틸피이지/피피지-10/1다이메티콘, 페녹시에탄올'),(35,3,'파워 퍼펙션 비비 크림','더페이스샵',23000,1,1,1,1,1,1,1,0,0,0,1,1,0,0,1,0,1,1,'세틸피이지/피피지-10/1디메치콘, 페녹시에탄올, 향료'),(36,3,'초보양 비비 크림 (23호)','미샤',27000,1,1,1,1,0,0,1,0,0,0,1,1,0,1,0,1,0,1,'세틸피이지/피피지-10/1디메치콘, 페녹시에탄올, 향료'),(37,3,'리얼 컴플릿 비비 크림 (21호)','미샤',23800,1,1,1,1,0,1,0,0,0,0,1,1,0,1,1,1,0,1,'세틸피이지/피피지-10/1디메치콘, 페녹시에탄올, 향료'),(38,3,'매직 커버 비비크림','더페이스샵',18000,1,1,1,1,0,1,0,0,0,0,1,0,1,0,1,1,0,1,'세틸피이지/피피지-10/1디메치콘, 피이지-10디메치콘, 향료'),(39,3,'리쥬비네이팅 뷰티 밤 실버플러스','닥터자르트',34000,1,1,1,1,0,0,1,0,1,0,0,1,0,0,1,1,0,1,'피이지-10디메치콘, 4-메칠벤질리덴캠퍼, 세틸피이지/피피지-10/1디메치콘'),(40,3,'스킨 블레미쉬 밤','셀퓨전씨',66000,1,1,1,1,1,1,1,0,1,0,0,0,1,1,1,0,1,1,'세틸피이지/피피지-10/1디메치콘, 미네랄오일, 메틸파라벤, 부틸파라벤, 페녹시에탄올'),(41,4,'글로우 온 베이스 오일볼륨','에뛰드하우스',16000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,1,'피이지/피피지-17/6코폴리머, 피이지-60하이드로제네이티드캐스터오일'),(42,4,'글로우 온 베이스 하이드라','에뛰드하우스',16000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,1,'피이지-60하이드로제네이티드캐스터오일, 황색5호'),(43,4,'에어 코튼 메이크업 베이스','더페이스샵',4000,1,1,1,1,1,1,1,1,0,0,1,1,0,1,1,0,1,1,'세틸피이지/피피지-10/1디메치콘, 피이지-10메칠에텔디메치콘, 향료'),(44,4,'밀키밀키 화이트닝 크림','데일리스킨',27000,1,1,1,1,1,1,1,1,0,0,1,1,0,1,1,0,1,0,NULL),(45,4,'미네랄 메이크업 베이스','이니스프리',12000,1,1,1,1,1,1,1,0,0,0,1,1,0,1,1,1,0,1,'세틸피이지/피피지-10/1디메치콘, 페녹시에탄올, 향료'),(46,4,'스트롭 크림','맥',47000,1,1,1,1,1,1,1,1,0,0,0,1,0,1,1,0,1,1,'향료, 페녹시에탄올, 적색504호'),(47,4,'로르 래디언스 베이스','겔랑',97000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,1,'페녹시에탄올, 피이지-8, 향료, 부틸페닐메틸프로피오날, 리날룰, 시트로넬올, 알파-아이소메틸아이오논, 벤질벤조에이트, 제라니올, 비에이치티;부틸라이드록시톨루엔'),(48,4,'VB 얼티밋','나인위시스',44000,1,1,1,1,1,1,1,0,0,0,1,1,0,1,1,0,1,1,'피이지-10디메치콘'),(49,4,'피치피치 화이트닝 크림','데일리스킨',27000,1,1,1,1,1,1,1,1,0,0,1,1,0,1,1,0,1,1,'향료'),(50,4,'화이트홀릭','더블유랩',30000,1,1,1,1,1,1,1,1,0,0,1,1,0,1,1,0,1,1,'향료'),(51,5,'더블 웨어 스테이-인-플레이스 메이크업 [본]','에스티로더',68000,1,0,0,1,1,0,0,1,1,1,1,1,1,0,1,1,0,1,'피이지/피피지-18/18디메치콘, 라우레스-7, 페녹시에탄올'),(52,5,'더블 웨어 스테이-인-플레이스 메이크업 [쿨바닐라]','에스티로더',69000,1,0,0,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1,'피이지/피피지-18/18디메치콘, 라우레스-7, 페녹시에탄올'),(53,5,'더블 웨어 스테이-인-플레이스 메이크업 [샌드]','에스티로더',69000,1,0,0,1,1,0,0,1,1,1,1,1,1,0,1,1,0,1,'피이지/피피지-18/18디메치콘, 라우레스-7, 페녹시에탄올'),(54,5,'더블 웨어 스테이-인-플레이스 메이크업 [쿨본]','에스티로더',69000,1,0,0,1,1,0,0,1,1,1,1,1,1,1,0,1,0,1,'피이지/피피지-18/18디메치콘, 라우레스-7, 페녹시에탄올'),(55,5,'더블 웨어 스테이-인-플레이스 메이크업 [웜바닐라]','에스티로더',69000,1,0,0,1,0,1,0,1,1,1,1,1,1,0,1,1,0,1,'피이지/피피지-18/18디메치콘, 라우레스-7, 페녹시에탄올'),(56,5,'잉크래스팅 파운데이션 슬림 핏 [N201]','더페이스샵',18000,1,1,1,1,0,1,0,0,0,0,1,0,1,0,1,1,0,1,'피이지-10디메치콘, 세틸피이지/피피지-10/1디메치콘, 향료'),(57,5,'잉크래스팅 파운데이션 슬림 핏 [V201]','더페이스샵',18000,1,1,1,1,0,1,0,0,0,0,1,0,1,1,0,1,0,1,'피이지-10디메치콘, 세틸피이지/피피지-10/1디메치콘, 향료'),(58,5,'퍼팩팅 래스트 파운데이션 [A02]','VDL',25000,1,0,0,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1,'피이지-10디메치콘, 세틸피이지/피피지-10/1디메치콘, 향료'),(59,5,'퓨처리스트 아쿠아 브릴리언스 파운데이션 [쿨바닐라]','에스티로더',85000,0,1,0,1,0,1,0,1,1,1,1,1,1,1,0,0,1,1,'피이지/피피지-20/20디메치콘, 세틸피이지/피피지-10/1다이메티콘, 라우레스-7, 페녹시에탄올'),(60,5,'퓨처리스트 아쿠아 브릴리언스 파운데이션 [쿨포슬린]','에스티로더',85000,0,1,0,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,'피이지/피피지-20/20디메치콘, 세틸피이지/피피지-10/1다이메티콘, 라우레스-7, 페녹시에탄올'),(61,6,'블랙 쿠션 [21호]','헤라',55000,1,0,0,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1,'피이지-10다이메티콘, 라우릴피이지-9폴리다이메틸실록시에틸다이메티콘, 향료'),(62,6,'킬커버 파운웨어 쿠션 XP [03 리넨]','클리오',32000,1,0,0,1,1,0,0,0,0,0,1,1,0,0,1,1,0,1,'라우릴피이지-9폴리다이메틸실록시에틸다이메티콘, 피이지-8다이메티콘, 페녹시에탄올, 향료'),(63,6,'킬커버 파운웨어 쿠션 XP [02 란제리]','클리오',32000,1,0,0,1,1,0,0,0,0,0,1,1,0,1,0,1,0,1,'라우릴피이지-9폴리다이메틸실록시에틸다이메티콘, 피이지-8다이메티콘, 페녹시에탄올, 향료'),(64,6,'블랙 쿠션 [23호]','헤라',55000,1,0,0,1,0,0,1,1,1,1,1,1,1,0,1,1,0,1,'피이지-10다이메티콘, 라우릴피이지-9폴리다이메틸실록시에틸다이메티콘, 향료'),(65,6,'킬커버 파운웨어 쿠션 XP [04 진저]','클리오',32000,1,0,0,1,0,1,0,1,1,1,1,1,1,0,1,1,0,1,'라우릴피이지-9폴리다이메틸실록시에틸다이메티콘, 피이지-8다이메티콘, 페녹시에탄올, 향료'),(66,6,'아쿠아 글로우 쿠션 파운데이션 [남산]','나스',63000,1,1,1,1,1,0,0,0,0,0,1,0,0,1,0,1,0,1,'라우릴피이지-9폴리디메칠록시에칠디메치콘, 피이지-10디메치콘, 페녹시에탄올, 향료'),(67,6,'르 쿠션 엉크르 드 뽀 [B20]','입생로랑',79000,1,1,1,1,0,1,0,0,0,0,1,0,0,1,0,1,0,1,'라우릴피이지-9폴리디메칠실록시에칠디메치콘, 피이지-10디메치콘, 페녹시에탄올, 비에이치티, 향료'),(68,6,'워터-풀 씨씨쿠션 퍼펙트 피니쉬 [01호]','숨37도',50000,1,0,0,1,0,1,0,1,0,0,1,1,0,0,0,1,0,1,'레몬버베나잎추출물, 피이지-10디메치콘'),(69,6,'에센셜 스킨 누더 쿠션 [페어라이트]','정샘물',42000,0,1,0,1,1,0,0,0,0,0,1,1,0,0,1,0,1,1,'피이지-10디메치콘, 세틸피이지/피피지-10/1디메치콘, 페녹시에탄올, 향료'),(70,6,'블랙 쿠션 [17호]','헤라',55000,1,0,0,1,1,0,0,1,1,1,1,1,1,1,0,1,0,1,'피이지-10다이메티콘, 라우릴피이지-9폴리다이메틸실록시에틸다이메티콘, 향료'),(71,7,'노세범 미네랄 파우더','이니스프리',6000,1,0,0,1,1,1,1,0,0,0,0,0,1,1,1,1,0,1,'향료, 페녹시에탄올'),(72,7,'노세범 미네랄 팩트','이니스프리',10000,1,0,0,1,1,1,1,0,0,0,0,0,1,1,1,1,0,1,'페녹시에탄올'),(73,7,'울트라 HD 마이크로피니싱 프레스드 파우더','메이크업포에버',54000,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,'페녹시에탄올, 벤질알코올'),(74,7,'기름종이 파우더','다이소',3000,1,0,0,1,1,1,1,0,0,0,0,0,1,1,1,1,0,1,'향료'),(75,7,'프라임 프라이머 피니쉬 파우더','바닐라코',22000,1,0,0,1,1,1,1,0,0,0,0,0,1,1,1,1,0,1,'페녹시에탄올, 향료'),(76,7,'피치 뽀송 멀티 피니시 파우더','스킨푸드',6500,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,1,'페녹시에탄올, 향료'),(77,7,'울트라 HD 마이크로피니싱 루스 파우더','메이크업포에버',54000,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,'페녹시에탄올'),(78,7,'블러 파우더 팩트 [21호]','이글립스',11000,1,0,0,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1,'페녹시에탄올'),(79,7,'프로 피니쉬 멀티 유즈 파우더','메이크업포에버',56000,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,'페녹시에탄올'),(80,7,'미네랄 피니싱 파우더','로라메르시에',49000,1,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,0,NULL),(81,8,'래디언트 크리미 컨실러 [바닐라]','나스',40000,1,1,1,1,0,1,0,1,1,1,1,1,1,1,0,0,1,1,'피이지-9폴리디메칠실록시에칠디메치콘, 피이지-10디메치콘'),(82,8,'루나 롱래스팅 팁 컨실러 [2호]','루나',14000,1,0,0,1,0,1,0,1,1,1,1,1,1,0,1,1,0,1,'세틸피이지/피피지-10/1다이치메티콘, 피이지-10다이메티콘, 메틸파라벤, 부틸파라벤, 향료'),(83,8,'루나 롱래스팅 팁 컨실러 [1호]','루나',14000,1,0,0,1,1,0,0,1,1,1,1,1,1,0,1,1,0,1,'세틸피이지/피피지-10/1다이치메티콘, 피이지-10다이메티콘, 메틸파라벤, 부틸파라벤, 향료'),(84,8,'레드 컨실러 [21호]','메디큐브',18000,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,1,0,1,'세틸피이지/피피지-10/1디메치콘, 피이지-10디메치콘'),(85,8,'킬커버 리퀴드 컨실러 [03 리넨]','클리오',14000,1,1,1,1,1,0,0,1,1,1,1,1,1,0,1,1,0,1,'세틸피이지/피피지-10/1다이메티콘 피이지-10다이메티콘, 페녹시에탄올'),(86,8,'디파이닝 커버 컨실러 [21호]','웨이크메이크',15000,1,0,0,1,1,0,0,1,1,1,1,1,1,0,1,1,0,1,'세틸피이지/피피지-10/1다이메티콘, 피이지-10다이메티콘'),(87,8,'래디언트 크리미 컨실러 [샹티이]','나스',40000,1,1,1,1,1,0,0,1,1,1,1,1,1,0,1,0,1,1,'피이지-9폴리디메칠실록시에칠디메치콘, 피이지-10디메치콘'),(88,8,'블레미쉬 커버 [21호]','한스킨',12000,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,'세틸피이지/피이지-10/1다이메티콘, 페녹시에탄올'),(89,8,'래디런트 크리미 컨실러 [커스터드]','나스',40000,1,1,1,1,0,1,0,1,1,1,1,1,1,0,1,0,1,1,'피이지-9폴리디메칠실록시에칠디메치콘, 피이지-10디메치콘'),(90,8,'핏 미 컨실러 [15 Fair]','메이블린뉴욕',14000,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,'페녹시에탄올, 메틸파라벤, 부틸파라벤'),(91,9,'센시비오 H2O','바이오더마',25000,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,0,1,1,'피이지-6카프릴릭/카프릭글리세라이즈'),(92,9,'세이프 미 릴리프 모이스처 클렌징 폼','메이크프렘',16000,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,NULL),(93,9,'쌀뜨물 미강 효소 세안제','SRB',25000,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,0,1,0,NULL),(94,9,'그란떼 클렌징 오일','유리피부',36000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(95,9,'1025 독도 클렌저','라운드랩',13000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(96,9,'퓨어 밸런싱 클렌징 오일','에이트루',23000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL),(97,9,'클리어 훼이스 스파 립 앤 아이 리무버','폰즈',9900,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,'페녹시에탄올, 벤질알코올, 녹색202호'),(98,9,'녹차 필링 젤','시드물',4800,1,1,1,1,1,1,1,0,1,0,0,0,0,1,1,0,1,0,NULL),(99,9,'퓨어 클렌징 오일','마녀공장',29000,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,0,1,0,NULL),(100,9,'프레쉬 모이스춰 립 앤 아이 리무버','일리윤',8000,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,1,0,NULL);
/*!40000 ALTER TABLE `cosmeticdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-18 16:57:24
