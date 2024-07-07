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
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingreso` (
  `pk_ingre_id` int(11) NOT NULL AUTO_INCREMENT,
  `ingre_val` decimal(10,2) NOT NULL,
  `ingre_fech_ini` date NOT NULL,
  `fk_tp_ingre_id` tinyint(4) NOT NULL,
  `fk_sc_id` smallint(6) NOT NULL,
  `fk_cta_id` int(11) NOT NULL,
  PRIMARY KEY (`pk_ingre_id`,`fk_tp_ingre_id`,`fk_sc_id`,`fk_cta_id`),
  KEY `fk_ingreso_tipo_ingreso1_idx` (`fk_tp_ingre_id`),
  KEY `fk_ingreso_socio1_idx` (`fk_sc_id`),
  KEY `fk_ingreso_cuenta_caja1_idx` (`fk_cta_id`),
  CONSTRAINT `fk_ingreso_cuenta_caja1` FOREIGN KEY (`fk_cta_id`) REFERENCES `cuenta_caja` (`pk_cta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingreso_socio1` FOREIGN KEY (`fk_sc_id`) REFERENCES `socio` (`pk_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingreso_tipo_ingreso1` FOREIGN KEY (`fk_tp_ingre_id`) REFERENCES `tipo_ingreso` (`pk_tp_ingre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
INSERT INTO `ingreso` VALUES (297,5.00,'2024-03-22',17,2,2),(298,5.00,'2024-03-22',23,2,4),(299,20.00,'2024-03-22',19,2,1),(300,5.00,'2024-03-22',19,2,1),(301,348.33,'2024-03-22',24,2,1),(302,348.33,'2024-03-22',24,2,1),(303,348.33,'2024-03-22',24,2,1),(304,5.00,'2024-03-23',17,1,2),(305,5.00,'2024-03-23',23,1,4);
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER after_insert_ingreso
AFTER INSERT ON ingreso FOR EACH ROW
BEGIN
DECLARE ctaScId INT;
		UPDATE cuenta_caja
		SET cta_val = cta_val + NEW.ingre_val
		WHERE pk_cta_id = NEW.fk_cta_id;

		IF NEW.fk_tp_ingre_id = 22 THEN
	
        
        SELECT pk_cta_sc_id INTO ctaScId
        FROM cuenta_socio
        WHERE fk_sc_id = NEW.fk_sc_id;

        
        update abono set abn_valor = abn_valor + NEW.ingre_val
        where fk_cta_sc_id = ctaScId;
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

-- Dump completed on 2024-03-22 22:13:19
