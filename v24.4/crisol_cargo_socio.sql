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
-- Table structure for table `cargo_socio`
--

DROP TABLE IF EXISTS `cargo_socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo_socio` (
  `pk_crg_sc_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_crg_id` tinyint(4) NOT NULL,
  `fk_est_crg` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_crg_sc_id`,`fk_sc_id`,`fk_crg_id`,`fk_est_crg`),
  KEY `fk_cargo_socio_socios1_idx` (`fk_sc_id`),
  KEY `fk_cargo_socio_estado_cargo1_idx` (`fk_est_crg`),
  KEY `fk_cargo_socio_cargo1_idx` (`fk_crg_id`),
  CONSTRAINT `fk_cargo_socio_cargo1` FOREIGN KEY (`fk_crg_id`) REFERENCES `cargo` (`pk_crg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cargo_socio_estado_cargo1` FOREIGN KEY (`fk_est_crg`) REFERENCES `estado_cargo` (`pk_est_crg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cargo_socio_socios1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo_socio`
--

LOCK TABLES `cargo_socio` WRITE;
/*!40000 ALTER TABLE `cargo_socio` DISABLE KEYS */;
INSERT INTO `cargo_socio` VALUES (1,28,1,1),(2,11,2,1),(3,6,3,1),(4,2,4,1),(5,16,5,1),(6,24,6,1);
/*!40000 ALTER TABLE `cargo_socio` ENABLE KEYS */;
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
