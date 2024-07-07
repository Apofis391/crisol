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
-- Table structure for table `seg_registro_accion`
--

DROP TABLE IF EXISTS `seg_registro_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seg_registro_accion` (
  `ACC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USU_ID` int(11) DEFAULT NULL,
  `ACC_DES` varchar(50) DEFAULT NULL,
  `ACC_FEC` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ACC_ID`),
  KEY `SEG_REGISTRO_ACCION_ibfk_1` (`USU_ID`),
  CONSTRAINT `SEG_REGISTRO_ACCION_ibfk_1` FOREIGN KEY (`USU_ID`) REFERENCES `seg_usuario` (`USU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_registro_accion`
--

LOCK TABLES `seg_registro_accion` WRITE;
/*!40000 ALTER TABLE `seg_registro_accion` DISABLE KEYS */;
INSERT INTO `seg_registro_accion` VALUES (1,1,'descripcion de accion','2024-06-08 05:00:00'),(3,3,'Usuario creado','2024-06-09 08:18:57'),(4,4,'Usuario creado','2024-06-11 02:59:09');
/*!40000 ALTER TABLE `seg_registro_accion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-30 10:21:52
