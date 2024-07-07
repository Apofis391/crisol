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
-- Table structure for table `rango_monto`
--

DROP TABLE IF EXISTS `rango_monto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rango_monto` (
  `pk_ran_mont_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ran_mont_min` decimal(10,2) NOT NULL,
  `ran_mont_max` decimal(10,2) NOT NULL,
  `fk_ran_plz_id` tinyint(4) NOT NULL,
  `fk_ran_inte_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_ran_mont_id`,`fk_ran_plz_id`,`fk_ran_inte_id`),
  KEY `fk_rango_monto_rango_plazo1_idx` (`fk_ran_plz_id`),
  KEY `fk_rango_monto_rango_interes1_idx` (`fk_ran_inte_id`),
  CONSTRAINT `fk_rango_monto_rango_interes1` FOREIGN KEY (`fk_ran_inte_id`) REFERENCES `rango_interes` (`pk_ran_inte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_rango_monto_rango_plazo1` FOREIGN KEY (`fk_ran_plz_id`) REFERENCES `rango_plazo` (`pk_ran_plz_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rango_monto`
--

LOCK TABLES `rango_monto` WRITE;
/*!40000 ALTER TABLE `rango_monto` DISABLE KEYS */;
INSERT INTO `rango_monto` VALUES (1,1.00,200.00,1,1),(2,201.00,400.00,2,2),(3,401.00,600.00,3,3),(4,601.00,1000.00,4,4),(5,1001.00,6000.00,5,5);
/*!40000 ALTER TABLE `rango_monto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:06
