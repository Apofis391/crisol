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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `pk_log_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `log_usuario` varchar(15) NOT NULL,
  `log_clave` varchar(255) NOT NULL,
  `fk_rol_id` tinyint(4) NOT NULL,
  `fk_est_id` int(11) NOT NULL,
  `fk_sc_id` smallint(6) DEFAULT NULL,
  `fk_tec_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pk_log_id`,`fk_rol_id`,`fk_est_id`),
  KEY `fk_login_rol1_idx` (`fk_rol_id`),
  KEY `fk_login_socios1_idx` (`fk_sc_id`),
  KEY `fk_login_estado_login1_idx` (`fk_est_id`),
  KEY `fk_login_tecnico1_idx` (`fk_tec_id`),
  CONSTRAINT `fk_login_estado_login1` FOREIGN KEY (`fk_est_id`) REFERENCES `estado_login` (`pk_est_log_id`),
  CONSTRAINT `fk_login_rol1` FOREIGN KEY (`fk_rol_id`) REFERENCES `rol` (`pk_rol_id`),
  CONSTRAINT `fk_login_socios1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`),
  CONSTRAINT `fk_login_tecnico1` FOREIGN KEY (`fk_tec_id`) REFERENCES `tecnico` (`pk_tec_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'adminUTE','$2y$10$rHJJGhAVP2z0aO.ZPm1jSeko/Z34F1JmkFvyqnLqEhYGK6i6m7IvG',1,1,NULL,2),(2,'tesoUTE','$2y$10$9eQqoe5CFqMPQHs3zyyHP.8jtNyQJs1OShVLg8JGNAsO0jF5VPMti',2,1,11,NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_insert_login
BEFORE INSERT ON login
FOR EACH ROW
BEGIN
    SET NEW.fk_est_id = 1; 
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

-- Dump completed on 2024-03-22 22:13:04
