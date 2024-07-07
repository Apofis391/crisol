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
-- Table structure for table `comprobante_egreso`
--

DROP TABLE IF EXISTS `comprobante_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprobante_egreso` (
  `pk_cmp_egre_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmp_egre_fech_emi` date NOT NULL,
  `cmp_egre_val_det` decimal(10,2) NOT NULL,
  `fk_cmp_id` int(11) NOT NULL,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_tp_cmp_egr` int(11) NOT NULL,
  PRIMARY KEY (`pk_cmp_egre_id`,`fk_cmp_id`,`fk_sc_id`,`fk_tp_cmp_egr`),
  KEY `fk_comprobante_egreso_comprobante1_idx` (`fk_cmp_id`),
  KEY `fk_comprobante_egreso_tipo_comprobante_egreso1_idx` (`fk_tp_cmp_egr`),
  KEY `fk_comprobante_egreso_socio1_idx` (`fk_sc_id`),
  CONSTRAINT `fk_comprobante_egreso_comprobante1` FOREIGN KEY (`fk_cmp_id`) REFERENCES `comprobante` (`pk_cmp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comprobante_egreso_socio1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comprobante_egreso_tipo_comprobante_egreso1` FOREIGN KEY (`fk_tp_cmp_egr`) REFERENCES `tipo_comprobante_egreso` (`pk_tp_cmp_egr`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprobante_egreso`
--

LOCK TABLES `comprobante_egreso` WRITE;
/*!40000 ALTER TABLE `comprobante_egreso` DISABLE KEYS */;
INSERT INTO `comprobante_egreso` VALUES (17,'2024-03-22',150.01,1,2,1);
/*!40000 ALTER TABLE `comprobante_egreso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:22
