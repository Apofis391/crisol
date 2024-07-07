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
-- Table structure for table `multa`
--

DROP TABLE IF EXISTS `multa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multa` (
  `pk_mult_id` int(11) NOT NULL AUTO_INCREMENT,
  `mult_total` decimal(10,2) NOT NULL,
  `mult_fech_emi` date NOT NULL,
  `mult_fech_pag` date DEFAULT NULL,
  `fk_tp_mult_id` tinyint(4) NOT NULL,
  `fk_est_multa` int(11) NOT NULL,
  `fk_cta_sc_id` smallint(6) NOT NULL,
  PRIMARY KEY (`pk_mult_id`,`fk_tp_mult_id`,`fk_est_multa`,`fk_cta_sc_id`),
  KEY `fk_multa_tipo_multa1_idx` (`fk_tp_mult_id`),
  KEY `fk_multa_estado_multa1_idx` (`fk_est_multa`),
  KEY `fk_multa_cuenta_socio1_idx` (`fk_cta_sc_id`),
  CONSTRAINT `fk_multa_cuenta_socio1` FOREIGN KEY (`fk_cta_sc_id`) REFERENCES `cuenta_socio` (`pk_cta_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_multa_estado_multa1` FOREIGN KEY (`fk_est_multa`) REFERENCES `estado_multa` (`pk_est_multa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_multa_tipo_multa1` FOREIGN KEY (`fk_tp_mult_id`) REFERENCES `tipo_multa` (`pk_tp_mult_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multa`
--

LOCK TABLES `multa` WRITE;
/*!40000 ALTER TABLE `multa` DISABLE KEYS */;
INSERT INTO `multa` VALUES (1,1.20,'2024-02-12','2024-02-13',1,1,77),(2,5.00,'2024-02-13','2024-02-13',2,1,77),(3,5.00,'2024-02-21',NULL,2,2,77),(4,5.00,'2024-03-21','2024-03-21',2,1,1),(5,20.00,'2024-03-21','2024-03-21',4,1,1),(6,20.00,'2024-03-21','2024-03-21',3,1,1),(7,20.00,'2024-03-21','2024-03-21',4,1,1),(8,20.00,'2024-03-21','2024-03-21',4,1,1),(9,5.00,'2024-03-22',NULL,2,1,2),(10,20.00,'2024-03-22',NULL,3,1,2),(11,20.00,'2024-03-22',NULL,3,1,2),(12,5.00,'2024-03-22',NULL,2,1,2);
/*!40000 ALTER TABLE `multa` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_insert_multa
BEFORE INSERT ON multa
FOR EACH ROW
BEGIN
    
    SET NEW.fk_est_multa = 2;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:27
