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
-- Table structure for table `amortizacion`
--

DROP TABLE IF EXISTS `amortizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amortizacion` (
  `pk_amrt_id` int(11) NOT NULL AUTO_INCREMENT,
  `amrt_mes` tinyint(4) NOT NULL,
  `amrt_fech_pag` date NOT NULL,
  `amrt_cap` decimal(10,2) NOT NULL,
  `amrt_cuot_cap` decimal(10,2) NOT NULL,
  `amrt_inter` decimal(10,2) NOT NULL,
  `amrt_mora` decimal(10,2) NOT NULL,
  `amrt_val_cuot` decimal(10,2) NOT NULL,
  `amrt_sal_cap` decimal(10,2) NOT NULL,
  `fk_pres_id` int(11) NOT NULL,
  `fk_est_amrt_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_amrt_id`,`fk_pres_id`,`fk_est_amrt_id`),
  KEY `fk_tabla_amort_prestamo1_idx` (`fk_pres_id`),
  KEY `fk_amortizacion_estado_amortizacion1_idx` (`fk_est_amrt_id`),
  CONSTRAINT `fk_amortizacion_estado_amortizacion1` FOREIGN KEY (`fk_est_amrt_id`) REFERENCES `estado_amortizacion` (`pk_est_amrt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tabla_amort_prestamo1` FOREIGN KEY (`fk_pres_id`) REFERENCES `prestamo` (`pk_pres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amortizacion`
--

LOCK TABLES `amortizacion` WRITE;
/*!40000 ALTER TABLE `amortizacion` DISABLE KEYS */;
INSERT INTO `amortizacion` VALUES (79,1,'2024-04-22',1000.00,333.33,15.00,0.00,348.33,666.67,25,2),(80,2,'2024-05-22',666.67,333.33,15.00,0.00,348.33,333.34,25,2),(81,3,'2024-06-22',333.34,333.33,15.00,0.00,348.33,0.01,25,2),(82,1,'2024-04-22',1000.00,500.00,15.00,0.00,515.00,500.00,26,1),(83,2,'2024-05-22',500.00,500.00,15.00,0.00,515.00,0.00,26,1);
/*!40000 ALTER TABLE `amortizacion` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_actualizar_estado_prestamo_despues_actualizar
AFTER UPDATE ON amortizacion
FOR EACH ROW
BEGIN
    IF 
    NEW.fk_est_amrt_id = 2 AND OLD.fk_est_amrt_id != 2 AND NEW.amrt_sal_cap < 0.5 THEN
        UPDATE prestamo
        SET fk_est_pres = 3
        WHERE pk_pres_id = NEW.fk_pres_id;
    END IF;
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

-- Dump completed on 2024-03-22 22:13:33
