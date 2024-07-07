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
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `pk_pres_id` int(11) NOT NULL AUTO_INCREMENT,
  `pres_retencion` decimal(10,2) NOT NULL,
  `pres_val_desem` decimal(10,2) NOT NULL,
  `pres_fech_entg` date DEFAULT NULL,
  `fk_soli_pres_id` smallint(6) NOT NULL,
  `fk_rtc_pres_id` tinyint(4) NOT NULL,
  `fk_est_pres` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_pres_id`,`fk_soli_pres_id`,`fk_rtc_pres_id`,`fk_est_pres`),
  KEY `fk_prestamo_solicitud_prestamo1_idx` (`fk_soli_pres_id`),
  KEY `fk_prestamo_retencion_prestamo1_idx` (`fk_rtc_pres_id`),
  KEY `fk_prestamo_estado_prestamo1_idx` (`fk_est_pres`),
  CONSTRAINT `fk_prestamo_estado_prestamo1` FOREIGN KEY (`fk_est_pres`) REFERENCES `estado_prestamo` (`pk_est_pres`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamo_retencion_prestamo1` FOREIGN KEY (`fk_rtc_pres_id`) REFERENCES `retencion_prestamo` (`pk_rtc_pres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_prestamo_solicitud_prestamo1` FOREIGN KEY (`fk_soli_pres_id`) REFERENCES `solicitud_prestamo` (`pk_soli_pres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (25,10.00,990.00,'2024-03-22',26,1,3),(26,10.00,990.00,'2024-03-22',27,1,1);
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_actualizar_estado_garante
AFTER UPDATE ON prestamo
FOR EACH ROW
BEGIN
    DECLARE garante_id INT;
    IF NEW.fk_est_pres = '3' THEN
        IF NEW.fk_soli_pres_id IS NOT NULL THEN
            SELECT fk_grt_pres_id INTO garante_id
            FROM solicitud_prestamo
            WHERE pk_soli_pres_id = NEW.fk_soli_pres_id;

            UPDATE garante_prestamo
            SET grt_est = 'inactivo'
            WHERE pk_grt_pres_id = garante_id;
        END IF;
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

-- Dump completed on 2024-03-22 22:13:20
