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
-- Table structure for table `pago_pendiente`
--

DROP TABLE IF EXISTS `pago_pendiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_pendiente` (
  `pk_pg_pend` int(11) NOT NULL AUTO_INCREMENT,
  `pg_pend_monto` decimal(10,2) NOT NULL,
  `pg_pend_fech_ven` date NOT NULL,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_est_pg_pend` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_pg_pend`,`fk_sc_id`,`fk_est_pg_pend`),
  KEY `fk_pago_pendiente_socio1_idx` (`fk_sc_id`),
  KEY `fk_pago_pendiente_estado_pago_pendiente1_idx` (`fk_est_pg_pend`),
  CONSTRAINT `fk_pago_pendiente_estado_pago_pendiente1` FOREIGN KEY (`fk_est_pg_pend`) REFERENCES `estado_pago_pendiente` (`pk_est_pg_pend`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pago_pendiente_socio1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_pendiente`
--

LOCK TABLES `pago_pendiente` WRITE;
/*!40000 ALTER TABLE `pago_pendiente` DISABLE KEYS */;
INSERT INTO `pago_pendiente` VALUES (33,0.00,'2024-03-12',99,1);
/*!40000 ALTER TABLE `pago_pendiente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:11
