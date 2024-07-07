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
-- Table structure for table `excedente`
--

DROP TABLE IF EXISTS `excedente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excedente` (
  `pk_exc_id` int(11) NOT NULL AUTO_INCREMENT,
  `exc_val_total` decimal(10,2) NOT NULL,
  `exc_fech` date NOT NULL,
  `exc_val_dev` decimal(10,2) DEFAULT NULL,
  `exc_val_dep` decimal(10,2) DEFAULT NULL,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_exc_tp_id` tinyint(4) NOT NULL,
  `fk_est_exc_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_exc_id`,`fk_sc_id`,`fk_exc_tp_id`,`fk_est_exc_id`),
  KEY `fk_excedente_neto_socio1_idx` (`fk_sc_id`),
  KEY `fk_excedente_tipo_excedente1_idx` (`fk_exc_tp_id`),
  KEY `fk_excedente_estado_excedente1_idx` (`fk_est_exc_id`),
  CONSTRAINT `fk_excedente_estado_excedente1` FOREIGN KEY (`fk_est_exc_id`) REFERENCES `estado_excedente` (`pk_est_exc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_excedente_neto_socio1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_excedente_tipo_excedente1` FOREIGN KEY (`fk_exc_tp_id`) REFERENCES `tipo_excedente` (`pk_exc_tp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=534 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excedente`
--

LOCK TABLES `excedente` WRITE;
/*!40000 ALTER TABLE `excedente` DISABLE KEYS */;
INSERT INTO `excedente` VALUES (480,13.14,'2024-03-20',13.14,NULL,1,1,1),(481,0.00,'2024-03-20',0.00,NULL,2,1,1),(482,3.19,'2024-03-20',3.19,NULL,4,1,1),(483,2.62,'2024-03-20',2.62,NULL,5,1,1),(484,5.29,'2024-03-20',5.29,NULL,6,1,1),(485,7.90,'2024-03-20',7.90,NULL,7,1,1),(486,2.67,'2024-03-20',2.67,NULL,8,1,1),(487,2.67,'2024-03-20',2.67,NULL,9,1,1),(488,2.67,'2024-03-20',2.67,NULL,10,1,1),(489,2.62,'2024-03-20',2.62,NULL,12,1,1),(490,2.67,'2024-03-20',2.67,NULL,13,1,1),(491,2.62,'2024-03-20',2.62,NULL,14,1,1),(492,2.67,'2024-03-20',2.67,NULL,15,1,1),(493,2.67,'2024-03-20',2.67,NULL,16,1,1),(494,2.67,'2024-03-20',2.67,NULL,17,1,1),(495,52.35,'2024-03-20',52.35,NULL,18,1,1),(496,2.67,'2024-03-20',2.67,NULL,19,1,1),(497,2.67,'2024-03-20',2.67,NULL,20,1,1),(498,2.67,'2024-03-20',2.67,NULL,21,1,1),(499,2.67,'2024-03-20',2.67,NULL,22,1,1),(500,2.67,'2024-03-20',2.67,NULL,23,1,1),(501,2.67,'2024-03-20',2.67,NULL,24,1,1),(502,5.29,'2024-03-20',5.29,NULL,25,1,1),(503,2.67,'2024-03-20',2.67,NULL,26,1,1),(504,5.29,'2024-03-20',5.29,NULL,27,1,1),(505,2.72,'2024-03-20',2.72,NULL,28,1,1),(506,9.61,'2024-03-20',9.61,NULL,99,1,1),(507,13.14,'2024-03-21',13.14,NULL,1,1,1),(508,0.00,'2024-03-21',0.00,NULL,2,1,1),(509,3.19,'2024-03-21',3.19,NULL,4,1,1),(510,2.62,'2024-03-21',2.62,NULL,5,1,1),(511,5.29,'2024-03-21',5.29,NULL,6,1,1),(512,7.90,'2024-03-21',7.90,NULL,7,1,1),(513,2.67,'2024-03-21',2.67,NULL,8,1,1),(514,2.67,'2024-03-21',2.67,NULL,9,1,1),(515,2.67,'2024-03-21',2.67,NULL,10,1,1),(516,2.62,'2024-03-21',2.62,NULL,12,1,1),(517,2.67,'2024-03-21',2.67,NULL,13,1,1),(518,2.62,'2024-03-21',2.62,NULL,14,1,1),(519,2.67,'2024-03-21',2.67,NULL,15,1,1),(520,2.67,'2024-03-21',2.67,NULL,16,1,1),(521,2.67,'2024-03-21',2.67,NULL,17,1,1),(522,52.35,'2024-03-21',52.35,NULL,18,1,1),(523,2.67,'2024-03-21',2.67,NULL,19,1,1),(524,2.67,'2024-03-21',2.67,NULL,20,1,1),(525,2.67,'2024-03-21',2.67,NULL,21,1,1),(526,2.67,'2024-03-21',2.67,NULL,22,1,1),(527,2.67,'2024-03-21',2.67,NULL,23,1,1),(528,2.67,'2024-03-21',2.67,NULL,24,1,1),(529,5.29,'2024-03-21',5.29,NULL,25,1,1),(530,2.67,'2024-03-21',2.67,NULL,26,1,1),(531,5.29,'2024-03-21',5.29,NULL,27,1,1),(532,2.72,'2024-03-21',2.72,NULL,28,1,1),(533,9.61,'2024-03-21',9.61,NULL,99,1,1);
/*!40000 ALTER TABLE `excedente` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_excedente_insert
BEFORE INSERT ON excedente
FOR EACH ROW
BEGIN
    SET NEW.fk_est_exc_id = 1; 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_insert_excedente
AFTER INSERT ON excedente
FOR EACH ROW
BEGIN
    INSERT INTO egreso (egre_val, egre_fech_ini, fk_tp_egre_id, fk_sc_id, fk_cta_id)
    VALUES (NEW.exc_val_total, NEW.exc_fech, 7, NEW.fk_sc_id, 1);
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

-- Dump completed on 2024-03-22 22:13:09
