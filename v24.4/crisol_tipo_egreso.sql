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
-- Table structure for table `tipo_egreso`
--

DROP TABLE IF EXISTS `tipo_egreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_egreso` (
  `pk_tp_egre_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tp_egre_dsc` varchar(45) NOT NULL,
  `tp_egre_est` varchar(10) NOT NULL,
  PRIMARY KEY (`pk_tp_egre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_egreso`
--

LOCK TABLES `tipo_egreso` WRITE;
/*!40000 ALTER TABLE `tipo_egreso` DISABLE KEYS */;
INSERT INTO `tipo_egreso` VALUES (1,'Retiro voluntario','activo'),(2,'Fallecimiento','activo'),(3,'Exclusión','activo'),(4,'Movilización','activo'),(5,'Servicios basicos','activo'),(6,'Refrigerios','activo'),(7,'Excedentes','activo'),(8,'Créditos','activo'),(9,'Retenciones plazo fijo','inactivo'),(10,'Inversiones plazo fijo','inactivo'),(11,'Prestamos','activo'),(12,'Suministro de Oficina','activo'),(13,'Liquidación','activo'),(14,'Agasajo Navideño','activo'),(15,'Aniversario Caja','activo'),(16,'Eventos Sociales','activo'),(17,'Pago Multas Liquidación','activo'),(18,'Pago Cuota Préstamo Fallecimiento','activo'),(19,'Pago Cuota Préstamo Liquidación','activo');
/*!40000 ALTER TABLE `tipo_egreso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 22:13:32
