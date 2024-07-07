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
-- Table structure for table `pers_evaluacion_desempeno`
--

DROP TABLE IF EXISTS `pers_evaluacion_desempeno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pers_evaluacion_desempeno` (
  `EVA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERS_ID` int(11) NOT NULL,
  `EVA_CED_EMPL` char(10) DEFAULT NULL,
  `EVA_NOM_EMPL` varchar(50) DEFAULT NULL,
  `EVA_APE_EMPL` varchar(50) DEFAULT NULL,
  `EVA_CAR_EMPL` varchar(50) DEFAULT NULL,
  `EVA_DESEMPENO_EMPL` int(11) DEFAULT NULL,
  PRIMARY KEY (`EVA_ID`),
  KEY `FK_PERS_ID` (`PERS_ID`),
  CONSTRAINT `FK_PERS_ID` FOREIGN KEY (`PERS_ID`) REFERENCES `pers_personal` (`PERS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pers_evaluacion_desempeno`
--

LOCK TABLES `pers_evaluacion_desempeno` WRITE;
/*!40000 ALTER TABLE `pers_evaluacion_desempeno` DISABLE KEYS */;
INSERT INTO `pers_evaluacion_desempeno` VALUES (1,1,'1234567890','luis','murillo','administrador',8),(2,2,'1725834517','michael','villarreal','administrador',9),(3,2,'1234567891','lala','land','admin',2);
/*!40000 ALTER TABLE `pers_evaluacion_desempeno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 10:21:45
