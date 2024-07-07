CREATE DATABASE  IF NOT EXISTS `crisol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `crisol`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: crisol
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
-- Table structure for table `aportaciones`
--

DROP TABLE IF EXISTS `aportaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aportaciones` (
  `pk_aprt_id` int(11) NOT NULL AUTO_INCREMENT,
  `aprt_fech` date NOT NULL,
  `fk_fon_id` tinyint(4) NOT NULL,
  `fk_cert_id` tinyint(4) NOT NULL,
  `fk_cta_sc_id` smallint(6) NOT NULL,
  PRIMARY KEY (`pk_aprt_id`,`fk_fon_id`,`fk_cert_id`,`fk_cta_sc_id`),
  KEY `fk_aportaciones_fondo_estrategico1_idx` (`fk_fon_id`),
  KEY `fk_aportaciones_certificado1_idx` (`fk_cert_id`),
  KEY `fk_aportaciones_cuenta_socio1_idx` (`fk_cta_sc_id`),
  CONSTRAINT `fk_aportaciones_certificado1` FOREIGN KEY (`fk_cert_id`) REFERENCES `certificado` (`pk_cert_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_aportaciones_cuenta_socio1` FOREIGN KEY (`fk_cta_sc_id`) REFERENCES `cuenta_socio` (`pk_cta_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_aportaciones_fondo_estrategico1` FOREIGN KEY (`fk_fon_id`) REFERENCES `fondo_estrategico` (`pk_fon_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aportaciones`
--

LOCK TABLES `aportaciones` WRITE;
/*!40000 ALTER TABLE `aportaciones` DISABLE KEYS */;
INSERT INTO `aportaciones` VALUES (12,'2024-04-01',1,1,1),(13,'2024-03-01',1,1,1),(14,'2024-03-01',1,1,4),(15,'2024-03-01',1,1,5),(16,'2024-03-01',1,1,6),(17,'2024-03-01',1,1,7),(18,'2024-03-01',1,1,8),(19,'2024-03-01',1,1,9),(20,'2024-03-01',1,1,10),(21,'2024-03-01',1,1,11),(22,'2024-03-01',1,1,12),(23,'2024-03-01',1,1,13),(24,'2024-03-01',1,1,14),(25,'2024-03-01',1,1,15),(26,'2024-03-01',1,1,16),(27,'2024-03-01',1,1,17),(28,'2024-03-01',1,1,18),(29,'2024-03-01',1,1,19),(30,'2024-03-01',1,1,20),(31,'2024-03-01',1,1,21),(32,'2024-03-01',1,1,22),(33,'2024-03-01',1,1,23),(34,'2024-03-01',1,1,24),(35,'2024-03-01',1,1,25),(36,'2024-03-01',1,1,26),(37,'2024-03-01',1,1,27),(38,'2024-03-01',1,1,28),(39,'2024-03-01',1,1,77);
/*!40000 ALTER TABLE `aportaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:25
