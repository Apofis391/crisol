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
-- Table structure for table `solicitud_prestamo`
--

DROP TABLE IF EXISTS `solicitud_prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud_prestamo` (
  `pk_soli_pres_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `soli_pres_mont_soli` decimal(10,2) NOT NULL,
  `soli_pres_mes` tinyint(4) NOT NULL,
  `soli_pres_fech` date NOT NULL,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_tp_pres_id` tinyint(4) NOT NULL,
  `fk_grt_pres_id` smallint(6) DEFAULT NULL,
  `fk_ran_mont_id` tinyint(4) NOT NULL,
  `fk_est_soli_id` smallint(6) NOT NULL,
  `fk_tp_soli_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_soli_pres_id`,`fk_sc_id`,`fk_tp_pres_id`,`fk_ran_mont_id`,`fk_est_soli_id`,`fk_tp_soli_id`),
  KEY `fk_solicitud_prestamo_socios1_idx` (`fk_sc_id`),
  KEY `fk_solicitud_prestamo_tipo_prestamo1_idx` (`fk_tp_pres_id`),
  KEY `fk_solicitud_prestamo_garante_prestamo1_idx` (`fk_grt_pres_id`),
  KEY `fk_solicitud_prestamo_rango_monto1_idx` (`fk_ran_mont_id`),
  KEY `fk_solicitud_prestamo_estado_solicitud1_idx` (`fk_est_soli_id`),
  KEY `fk_solicitud_prestamo_tipo_solicitud1_idx` (`fk_tp_soli_id`),
  CONSTRAINT `fk_solicitud_prestamo_estado_solicitud1` FOREIGN KEY (`fk_est_soli_id`) REFERENCES `estado_solicitud` (`pk_est_soli_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_prestamo_garante_prestamo1` FOREIGN KEY (`fk_grt_pres_id`) REFERENCES `garante_prestamo` (`pk_grt_pres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_prestamo_rango_monto1` FOREIGN KEY (`fk_ran_mont_id`) REFERENCES `rango_monto` (`pk_ran_mont_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_prestamo_socios1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_prestamo_tipo_prestamo1` FOREIGN KEY (`fk_tp_pres_id`) REFERENCES `tipo_prestamo` (`pk_tp_pres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_solicitud_prestamo_tipo_solicitud1` FOREIGN KEY (`fk_tp_soli_id`) REFERENCES `tipo_solicitud` (`pk_tp_soli_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud_prestamo`
--

LOCK TABLES `solicitud_prestamo` WRITE;
/*!40000 ALTER TABLE `solicitud_prestamo` DISABLE KEYS */;
INSERT INTO `solicitud_prestamo` VALUES (26,1000.00,3,'2024-03-22',2,1,NULL,4,2,3),(27,1000.00,2,'2024-03-22',1,1,NULL,4,2,1),(33,1030.00,127,'2024-03-22',1,6,NULL,5,1,2);
/*!40000 ALTER TABLE `solicitud_prestamo` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_insert_solicitud_prestamo
BEFORE INSERT ON solicitud_prestamo
FOR EACH ROW
BEGIN
    
    SET NEW.fk_est_soli_id = 1;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr2_solicitud_prestamo_aprobacion
AFTER UPDATE
ON solicitud_prestamo
FOR EACH ROW
BEGIN
    DECLARE retencion DECIMAL(10, 2);
    DECLARE pres_retencion DECIMAL(10, 2);
    DECLARE pres_val_desem DECIMAL(10, 2);
    DECLARE fk_rtc_pres_id INT;
    DECLARE fk_est_pres_id INT;

    -- Obtener la retención de la tabla retencion_prestamo
    SELECT rtc_pres_val INTO retencion
    FROM retencion_prestamo
    WHERE pk_rtc_pres_id = 1;

    -- Calcular la retención y el valor desembolsado
    IF NEW.fk_tp_soli_id IN (1, 3) THEN
        SET pres_retencion = NEW.soli_pres_mont_soli * retencion;
        SET pres_val_desem = NEW.soli_pres_mont_soli - pres_retencion;
        SET fk_est_pres_id = 5;
    ELSE
        SET pres_retencion = 0;
        SET pres_val_desem = NEW.soli_pres_mont_soli;
        SET fk_est_pres_id = 1;
    END IF;
    SET fk_rtc_pres_id = 1; -- Aquí debes ajustar según tu lógica

    IF NEW.fk_est_soli_id = 2 AND NEW.fk_tp_soli_id =1 THEN
        INSERT INTO aprobacion (apr_fech, apr_det, fk_tip_apr_id, fk_crg_sc_id)
        VALUES (CURRENT_DATE(), NEW.pk_soli_pres_id, 1, 1);
        INSERT INTO prestamo(fk_soli_pres_id, pres_retencion, pres_val_desem,pres_fech_entg, fk_rtc_pres_id, fk_est_pres)
        VALUES (NEW.pk_soli_pres_id, pres_retencion, pres_val_desem,NOW(), fk_rtc_pres_id, 5);
	ELSEIF NEW.fk_est_soli_id = 2 AND NEW.fk_tp_soli_id =2 THEN
        INSERT INTO aprobacion (apr_fech, apr_det, fk_tip_apr_id, fk_crg_sc_id)
        VALUES (CURRENT_DATE(), NEW.pk_soli_pres_id, 2, 1);
        INSERT INTO prestamo(fk_soli_pres_id, pres_retencion, pres_val_desem,pres_fech_entg, fk_rtc_pres_id, fk_est_pres)
        VALUES (NEW.pk_soli_pres_id, pres_retencion, pres_val_desem,NOW(), fk_rtc_pres_id, 1);
    ELSEIF NEW.fk_est_soli_id = 2 AND NEW.fk_tp_soli_id =3 THEN
        INSERT INTO aprobacion (apr_fech, apr_det, fk_tip_apr_id, fk_crg_sc_id)
        VALUES (CURRENT_DATE(), NEW.pk_soli_pres_id, 4, 1);
        INSERT INTO prestamo(fk_soli_pres_id, pres_retencion, pres_val_desem,pres_fech_entg, fk_rtc_pres_id, fk_est_pres)
        VALUES (NEW.pk_soli_pres_id, pres_retencion, pres_val_desem,NOW(), fk_rtc_pres_id, 5);
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

-- Dump completed on 2024-03-22 22:13:24
