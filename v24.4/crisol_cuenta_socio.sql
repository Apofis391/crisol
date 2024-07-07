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
-- Table structure for table `cuenta_socio`
--

DROP TABLE IF EXISTS `cuenta_socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_socio` (
  `pk_cta_sc_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `cta_sc_numero` varchar(10) NOT NULL,
  `cta_sc_saldo` decimal(10,2) NOT NULL,
  `cta_sc_ult_act` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_sc_id` smallint(6) NOT NULL,
  PRIMARY KEY (`pk_cta_sc_id`,`fk_sc_id`),
  KEY `fk_cuenta_socio_socio1_idx` (`fk_sc_id`),
  CONSTRAINT `fk_cuenta_socio_socio1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_socio`
--

LOCK TABLES `cuenta_socio` WRITE;
/*!40000 ALTER TABLE `cuenta_socio` DISABLE KEYS */;
INSERT INTO `cuenta_socio` VALUES (1,'0114055985',5020.00,'2024-03-22 17:00:44',1),(2,'0168915026',0.00,'2024-03-22 17:30:31',2),(3,'0124071777',1220.00,'2024-03-22 16:45:28',3),(4,'0152908130',1220.00,'2024-02-06 13:45:59',4),(5,'0119232534',1000.00,'2024-02-11 01:13:03',5),(6,'0180290238',2020.00,'2024-02-06 13:46:16',6),(7,'0143753591',3020.00,'2024-02-06 13:46:25',7),(8,'0177897244',1220.00,'2024-03-22 16:45:28',8),(9,'0158225451',1020.00,'2024-02-06 13:46:40',9),(10,'0157435528',1020.00,'2024-02-06 13:46:49',10),(11,'0112501290',1020.00,'2024-02-06 13:46:59',11),(12,'0190199871',1000.00,'2024-02-11 01:13:46',12),(13,'0113495485',1020.00,'2024-02-06 13:47:19',13),(14,'0196877819',1000.00,'2024-02-11 01:13:46',14),(15,'0143902643',1020.00,'2024-02-06 13:50:34',15),(16,'0128879761',1020.00,'2024-02-06 13:50:43',16),(17,'0112690881',1020.00,'2024-02-06 13:50:52',17),(18,'0176815123',20000.00,'2024-02-07 22:29:52',18),(19,'0146002976',1020.00,'2024-02-06 13:51:10',19),(20,'0199569516',1020.00,'2024-02-06 13:51:18',20),(21,'0159838653',1020.00,'2024-02-06 13:51:26',21),(22,'0104847244',1020.00,'2024-02-06 13:51:35',22),(23,'0122907663',1020.00,'2024-02-06 13:51:43',23),(24,'0113084146',1020.00,'2024-02-06 13:51:53',24),(25,'0196697745',2020.00,'2024-02-06 13:51:59',25),(26,'0144236290',1020.00,'2024-02-06 13:52:09',26),(27,'0131088221',2020.00,'2024-02-06 13:52:18',27),(28,'0122732237',1040.00,'2024-02-06 16:22:54',28),(77,'0187024682',3670.00,'2024-02-23 11:14:12',99);
/*!40000 ALTER TABLE `cuenta_socio` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_actualizar_cuenta_socio
AFTER UPDATE ON cuenta_socio
FOR EACH ROW
BEGIN
    DECLARE monto_pago DECIMAL(10, 2);
    DECLARE suma_total DECIMAL(10, 2);
    DECLARE numero_socios INT;

    
    SELECT pg_pend_monto INTO monto_pago
    FROM pago_pendiente
    WHERE fk_sc_id = NEW.fk_sc_id;

    
    IF monto_pago = 0.00 THEN
        UPDATE pago_pendiente
        SET fk_est_pg_pend = 1
        WHERE fk_sc_id = NEW.fk_sc_id;

        UPDATE socio
        SET fk_est_id = 1
        WHERE pk_sc_id = NEW.fk_sc_id;
    END IF;

    
    SET suma_total = (SELECT SUM(cta_sc_saldo) FROM cuenta_socio);

    
    SET numero_socios = (SELECT COUNT(*) FROM socio);

    
    UPDATE cuenta_caja
    SET cta_val = suma_total
    WHERE cta_dsc = 'Cta.Aportes Capital' AND pk_cta_id = 5;

    
    
    UPDATE tipo_socio
    SET tp_val_cert_aprt = suma_total / numero_socios
    WHERE pk_tp_sc = 1 and tp_dsc ='Mayorista';
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

-- Dump completed on 2024-03-22 22:13:11
