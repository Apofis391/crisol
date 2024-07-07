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
-- Table structure for table `egreso`
--

DROP TABLE IF EXISTS `egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `egreso` (
  `pk_egre_id` int(11) NOT NULL AUTO_INCREMENT,
  `egre_val` decimal(10,2) NOT NULL,
  `egre_fech_ini` date NOT NULL,
  `egre_fdesm` date DEFAULT NULL,
  `fk_tp_egre_id` tinyint(4) NOT NULL,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_est_pg_pend` tinyint(4) NOT NULL,
  `fk_cta_id` int(11) NOT NULL,
  PRIMARY KEY (`pk_egre_id`,`fk_tp_egre_id`,`fk_sc_id`,`fk_est_pg_pend`,`fk_cta_id`),
  KEY `fk_egreso_tipo_egreso1_idx` (`fk_tp_egre_id`),
  KEY `fk_egreso_socio1_idx` (`fk_sc_id`),
  KEY `fk_egreso_estado_pago_pendiente1_idx` (`fk_est_pg_pend`),
  KEY `fk_egreso_cuenta_caja1_idx` (`fk_cta_id`),
  CONSTRAINT `fk_egreso_cuenta_caja1` FOREIGN KEY (`fk_cta_id`) REFERENCES `cuenta_caja` (`pk_cta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egreso_estado_pago_pendiente1` FOREIGN KEY (`fk_est_pg_pend`) REFERENCES `estado_pago_pendiente` (`pk_est_pg_pend`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egreso_socio1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_egreso_tipo_egreso1` FOREIGN KEY (`fk_tp_egre_id`) REFERENCES `tipo_egreso` (`pk_tp_egre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `egreso`
--

LOCK TABLES `egreso` WRITE;
/*!40000 ALTER TABLE `egreso` DISABLE KEYS */;
INSERT INTO `egreso` VALUES (189,990.00,'2024-03-22','2024-03-22',11,2,1,1),(190,20.00,'2024-03-22','2024-03-22',17,2,2,5),(191,5.00,'2024-03-22','2024-03-22',17,2,2,5),(192,348.33,'2024-03-22','2024-03-22',19,2,1,5),(193,348.33,'2024-03-22','2024-03-22',19,2,1,5),(194,348.33,'2024-03-22','2024-03-22',19,2,1,5),(195,150.01,'2024-03-22','2024-03-22',1,2,1,5),(196,990.00,'2024-03-23','2024-03-23',11,1,1,1);
/*!40000 ALTER TABLE `egreso` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_egreso_insert
BEFORE INSERT ON egreso
FOR EACH ROW
BEGIN
    
    
    IF NEW.fk_tp_egre_id IN (1, 2, 3,13 ,14 ,15 ,16 ,17) THEN
        
        UPDATE socio
        SET fk_est_id = 2
        WHERE pk_sc_id = NEW.fk_sc_id;
        set new.fk_est_pg_pend=2;
    END IF;
    
    IF NEW.fk_tp_egre_id IN (4, 5, 6,12,17) THEN
    IF NEW.egre_val >=100 THEN
        set new.fk_est_pg_pend=5;
	else 
		set new.fk_est_pg_pend=2;
	END IF;
    END IF;
    IF NEW.fk_tp_egre_id IN (11,7) THEN
        
        set new.fk_est_pg_pend=2;
    END IF;
    IF NEW.fk_tp_egre_id = 18 THEN
    UPDATE cuenta_caja
    SET cta_val = cta_val - NEW.egre_val
    WHERE pk_cta_id = NEW.fk_cta_id;
  END IF;
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_descontar_cuenta_caja
AFTER UPDATE ON egreso
FOR EACH ROW
BEGIN
  IF NEW.fk_est_pg_pend = 1 THEN
    UPDATE cuenta_caja
    SET cta_val = cta_val - NEW.egre_val
    WHERE pk_cta_id = NEW.fk_cta_id;
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

-- Dump completed on 2024-03-22 22:13:03
