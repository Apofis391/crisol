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
-- Table structure for table `aprobacion`
--

DROP TABLE IF EXISTS `aprobacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aprobacion` (
  `pk_apr_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `apr_fech` date NOT NULL,
  `apr_det` varchar(45) DEFAULT NULL,
  `fk_tip_apr_id` tinyint(4) NOT NULL,
  `fk_crg_sc_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`pk_apr_id`,`fk_tip_apr_id`,`fk_crg_sc_id`),
  KEY `fk_aprobacion_tipo_aprobacion1_idx` (`fk_tip_apr_id`),
  KEY `fk_aprobacion_cargo_socio1_idx` (`fk_crg_sc_id`),
  CONSTRAINT `fk_aprobacion_cargo_socio1` FOREIGN KEY (`fk_crg_sc_id`) REFERENCES `cargo_socio` (`pk_crg_sc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_aprobacion_tipo_aprobacion1` FOREIGN KEY (`fk_tip_apr_id`) REFERENCES `tipo_aprobacion` (`pk_tip_apr_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aprobacion`
--

LOCK TABLES `aprobacion` WRITE;
/*!40000 ALTER TABLE `aprobacion` DISABLE KEYS */;
INSERT INTO `aprobacion` VALUES (10,'2024-01-19','53',1,1),(11,'2024-01-20','54',1,1),(12,'2024-01-21','59',1,1),(13,'2024-01-21','60',1,1),(20,'2024-01-21','58',1,1),(21,'2024-01-21','61',1,1),(23,'2024-01-21','62',1,1),(24,'2024-01-21','63',1,1),(25,'2024-01-21','64',1,1),(26,'2024-01-21','65',1,1),(27,'2024-01-21','66',1,1),(28,'2024-01-21','65',1,1),(29,'2024-01-21','66',1,1),(30,'2024-01-21','65',1,1),(31,'2024-01-21','65',1,1),(32,'2024-01-21','66',1,1),(33,'2024-01-21','65',1,1),(34,'2024-01-21','66',1,1),(35,'2024-01-21','65',1,1),(36,'2024-01-21','65',1,1),(37,'2024-01-21','67',1,1),(38,'2024-01-21','66',1,1),(39,'2024-01-21','67',1,1),(40,'2024-01-21','67',1,1),(41,'2024-01-21','66',1,1),(42,'2024-01-22','67',1,1),(43,'2024-01-22','75',1,1),(44,'2024-01-25','67',1,1),(45,'2024-01-25','77',1,1),(46,'2024-01-25','76',1,1),(47,'2024-01-25','78',1,1),(48,'2024-01-25','79',1,1),(49,'2024-01-25','80',1,1),(50,'2024-01-26','81',1,1),(51,'2024-01-27','82',1,1),(52,'2024-01-27','82',1,1),(53,'2024-01-27','82',1,1),(54,'2024-01-27','82',1,1),(55,'2024-01-27','82',1,1),(56,'2024-01-27','79',1,1),(57,'2024-01-27','80',1,1),(58,'2024-01-27','81',1,1),(59,'2024-01-27','82',1,1),(60,'2024-01-27','75',1,1),(61,'2024-01-27','76',1,1),(62,'2024-01-27','77',1,1),(63,'2024-01-28','83',1,1),(64,'2024-01-28','82',1,1),(65,'2024-01-28','81',1,1),(66,'2024-01-28','79',1,1),(67,'2024-01-28','80',1,1),(68,'2024-01-29','84',1,1),(69,'2024-01-29','85',1,1),(70,'2024-01-29','86',1,1),(71,'2024-01-29','251',3,1),(72,'2024-01-30','87',1,1),(73,'2024-02-04','88',1,1),(74,'2024-02-04','88',1,1),(75,'2024-02-04','88',1,1),(76,'2024-02-04','89',1,1),(77,'2024-02-05','90',1,1),(78,'2024-02-07','220',3,1),(79,'2024-02-07','361',3,1),(80,'2024-02-07','91',1,1),(81,'2024-02-07','93',1,1),(82,'2024-02-10','1',1,1),(83,'2024-02-26','2',1,1),(84,'2024-02-26','8',3,1),(85,'2024-02-29','3',1,1),(86,'2024-03-01','4',1,1),(87,'2024-03-01','5',1,1),(88,'2024-03-01','6',1,1),(89,'2024-03-06','9',1,1),(90,'2024-03-06','10',1,1),(94,'2024-03-06','11',1,1),(95,'2024-03-06','11',1,1),(96,'2024-03-20','17',1,1),(97,'2024-03-20','17',1,1),(98,'2024-03-20','17',1,1),(99,'2024-03-20','18',1,1),(100,'2024-03-20','19',1,1),(101,'2024-03-20','20',4,1),(102,'2024-03-20','21',1,1),(103,'2024-03-21','22',4,1),(104,'2024-03-22','23',1,1),(105,'2024-03-22','24',1,1),(106,'2024-03-22','25',4,1),(107,'2024-03-22','26',4,1),(108,'2024-03-22','27',1,1);
/*!40000 ALTER TABLE `aprobacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:29
