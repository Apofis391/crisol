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
-- Table structure for table `socio`
--

DROP TABLE IF EXISTS `socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socio` (
  `pk_sc_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `sc_nombre` varchar(45) NOT NULL,
  `sc_apellido` varchar(45) NOT NULL,
  `sc_cedula` varchar(10) NOT NULL,
  `sc_fech_n` date NOT NULL,
  `sc_telf` char(10) DEFAULT NULL,
  `sc_dir` varchar(100) DEFAULT NULL,
  `sc_cel` char(10) NOT NULL,
  `sc_correo` varchar(100) NOT NULL,
  `fk_rzn_id` tinyint(4) NOT NULL,
  `fk_sex_id` tinyint(4) NOT NULL,
  `fk_con_id` tinyint(4) NOT NULL,
  `fk_est_id` tinyint(4) NOT NULL,
  `fk_tp_sc` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_sc_id`,`fk_rzn_id`,`fk_sex_id`,`fk_con_id`,`fk_est_id`,`fk_tp_sc`),
  KEY `fk_socios_razon_social1_idx` (`fk_rzn_id`),
  KEY `fk_socios_sexo_socio1_idx` (`fk_sex_id`),
  KEY `fk_socios_condicion_socio1_idx` (`fk_con_id`),
  KEY `fk_socios_estado_socio1_idx` (`fk_est_id`),
  KEY `fk_socios_tipo_socio1_idx` (`fk_tp_sc`),
  CONSTRAINT `fk_socios_condicion_socio1` FOREIGN KEY (`fk_con_id`) REFERENCES `condicion_socio` (`pk_con_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_socios_estado_socio1` FOREIGN KEY (`fk_est_id`) REFERENCES `estado_socio` (`pk_est_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_socios_razon_social1` FOREIGN KEY (`fk_rzn_id`) REFERENCES `razon_social` (`pk_rzn_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_socios_sexo_socio1` FOREIGN KEY (`fk_sex_id`) REFERENCES `sexo_socio` (`pk_sex_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_socios_tipo_socio1` FOREIGN KEY (`fk_tp_sc`) REFERENCES `tipo_socio` (`pk_tp_sc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (1,'MARIA TERESA','ALTAMIRANO CAIZA ','1703960615','1950-01-01','','','','',1,2,1,1,1),(2,'JOSE ANIBAL','CARUA VIRACUCHA ','1706350947','1960-01-01','2310485','','0983026682','anibalcarua@gmail.com',1,1,4,2,1),(3,'MARIA VICTORIA','CARUA VIRACUCHA ','1708355779','1965-01-01','','','','',1,2,4,1,1),(4,'PATRICIO PASCUAL','CARUA VIRACUCHA ','1716594708','1981-01-01','','','','',1,1,4,1,1),(5,'MARIA ROSA','CAMACHO CHANGOLUISA ','1707902662','1954-01-01','','','','',1,2,4,1,1),(6,'JULIA MAGDALENA','CHANGOLUISA CHANGOLUISA ','1718938119','1964-01-01','','','0980803154','',1,2,4,1,1),(7,'VILMA AMERICA','CHANGOLUISA CHANGOLUISA ','1715585525','1982-01-01','','','','',1,2,4,1,1),(8,'MARIA FANNY','CHANGOLUISA SANCHEZ ','1707902654','1965-01-01','','','','',1,2,4,1,1),(9,'WASHINGTON WILFRIDO','CHASI VILLEGAS ','1710458355','1978-01-01','','','','',1,1,4,1,1),(10,'CESAR AUGUSTO','CHASSI ','1704429651','1955-01-01','','','','',1,1,4,1,1),(11,'LUZ ROSARIO','COLLAGUAZO AMORES ','1725597668','1992-01-01','','','0986718701','milucamores@gmail.com',1,2,4,1,1),(12,'LUCILA','COLLAGUAZO CHIPUGSI','1702574771','1950-01-01','','','','',1,2,1,1,1),(13,'ESTEBAN','ESPINOSA SANDOVAL ','sin regist','1990-01-01','','','','',1,1,4,1,1),(14,'JOSE GABRIEL','GUALOTUÑA MORALES ','1702574839','1950-01-01','','','','',1,1,1,1,1),(15,'BAIRON PATRICIO','LIMA BRAVO','1103296842','1973-01-01','','','','',1,1,4,1,1),(16,'LETICIA MONSERRATE','OCHOA REYES ','1712792777','1972-01-01','','','0983078729','leticiaochoa17@hotmail.com',1,2,3,1,1),(17,'JORGE SERAFIN','ORTIZ ALMACHE ','1707453955','1963-01-01','','','','',1,1,4,1,1),(18,'ANA MARIA','ORTIZ CARUA ','1715992143','1984-01-01','','','','',1,2,4,1,1),(19,'ROSENDO','PAGUAY LOJANO ','0601598766','1962-01-01','','','','',1,1,4,1,1),(20,'FAUSTO RAMIRO','ROCHA ALCARRAZ ','0502657265','1984-01-01','','','','',1,1,4,1,1),(21,'HECTOR AUGUSTO','ROCHA TAYUPANTA ','1704912664','1957-01-01','','','','',1,1,4,1,1),(22,'FERNANDO PATRICIO','TORAL MARTINEZ ','1711612489','1971-01-01','','','','',1,1,4,1,1),(23,'LUIS HERNAN','ZAPATA ','0501381420','1964-01-01','','','','',1,1,4,1,1),(24,'EDWIN','GUALOTUÑA ALTAMIRANO ','1714971080','1978-01-01','','','0992283711','edwuinp1978@gmail.com',1,1,4,1,1),(25,'ELICEO','MUÑOZ AVENDAÑO ','0601771397','1963-01-01','','','','',1,1,4,1,1),(26,'ROMMEL MAURICIO','CHANGOLUISA CHANGOLUISA ','1721597985','1986-01-01','','','','',1,1,4,1,1),(27,'LUIS MIGUEL','MUÑOZ ','sin regist','0000-00-00','','','','',1,1,4,1,1),(28,'MARÍA PIEDAD','GUAMAN  CENTENO ','1704154846','1954-01-01','','','0987818384','gmarapiedad@gmail.com',1,2,4,1,1),(99,'THOMY','PEÑALOZA','1727439737','2024-02-01','','RUMIPAMBA Y, BOURGEOIS','0969485562','pthomy10@gmail.com',1,1,4,1,1);
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_socio_insert
BEFORE INSERT ON socio
FOR EACH ROW
BEGIN
    SET NEW.fk_est_id = 3; 
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr1_cuenta_insert
AFTER INSERT ON socio
FOR EACH ROW
BEGIN
    
    DECLARE fecha_vencimiento DATE;
    DECLARE monto DECIMAL(10, 2);
    CALL pra_actualizar_tipo_socio;
    
    
    SELECT tp_val_cert_aprt, tp_val_fond_estr, tp_val_gast_adm
    INTO @tp_val_cert_aprt, @tp_val_fond_estr, @tp_val_gast_adm
    FROM tipo_socio
    WHERE pk_tp_sc = NEW.fk_tp_sc;

    
    SET monto = @tp_val_cert_aprt + @tp_val_fond_estr + @tp_val_gast_adm;

    SET fecha_vencimiento = DATE_ADD(NOW(), INTERVAL 1 MONTH);

    
    INSERT INTO cuenta_socio (cta_sc_numero, cta_sc_saldo, fk_sc_id)
    VALUES (CONCAT('01', LPAD(FLOOR(RAND() * 1000000000), 8, '0')), 0, NEW.pk_sc_id);
    
    
    INSERT INTO abono (abn_valor, abn_fecha, fk_cta_sc_id)
    VALUES (0, NOW(), LAST_INSERT_ID());

    
    IF monto IS NOT NULL THEN
        INSERT INTO pago_pendiente (pg_pend_monto, pg_pend_fech_ven, fk_sc_id, fk_est_pg_pend)
        VALUES (monto, fecha_vencimiento, NEW.pk_sc_id, 2);
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

-- Dump completed on 2024-03-22 22:13:27
