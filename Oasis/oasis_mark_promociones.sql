-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: oasis
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `mark_promociones`
--

DROP TABLE IF EXISTS `mark_promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mark_promociones` (
  `PROMO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROMO_TIT` varchar(100) NOT NULL,
  `PROMO_DET` text NOT NULL,
  `PROMO_DESCU` decimal(5,2) NOT NULL,
  `TIP_EVEN_ID` int(11) DEFAULT NULL,
  `TIP_SERV_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PROMO_ID`),
  KEY `mark_promociones_ibfk_1` (`TIP_EVEN_ID`),
  KEY `mark_promociones_ibfk_2` (`TIP_SERV_ID`),
  CONSTRAINT `mark_promociones_ibfk_1` FOREIGN KEY (`TIP_EVEN_ID`) REFERENCES `mark_tip_even` (`TIP_EVEN_ID`) ON DELETE SET NULL,
  CONSTRAINT `mark_promociones_ibfk_2` FOREIGN KEY (`TIP_SERV_ID`) REFERENCES `mark_tip_serv` (`TIP_SERV_ID`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark_promociones`
--

LOCK TABLES `mark_promociones` WRITE;
/*!40000 ALTER TABLE `mark_promociones` DISABLE KEYS */;
/*!40000 ALTER TABLE `mark_promociones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 10:21:47
