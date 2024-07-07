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
-- Temporary view structure for view `vista_tecnicos`
--

DROP TABLE IF EXISTS `vista_tecnicos`;
/*!50001 DROP VIEW IF EXISTS `vista_tecnicos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_tecnicos` AS SELECT 
 1 AS `pk_tec_id`,
 1 AS `tec_cedula`,
 1 AS `tec_nombre`,
 1 AS `tec_apellido`,
 1 AS `tec_cel`,
 1 AS `tec_correo`,
 1 AS `pk_est_tec_id`,
 1 AS `tec_est_dsc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ingresos_socio`
--

DROP TABLE IF EXISTS `vista_ingresos_socio`;
/*!50001 DROP VIEW IF EXISTS `vista_ingresos_socio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ingresos_socio` AS SELECT 
 1 AS `SocioID`,
 1 AS `NombreSocio`,
 1 AS `FechaIngreso`,
 1 AS `ValorIngreso`,
 1 AS `TipoIngreso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_socio_cuenta`
--

DROP TABLE IF EXISTS `vista_socio_cuenta`;
/*!50001 DROP VIEW IF EXISTS `vista_socio_cuenta`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_socio_cuenta` AS SELECT 
 1 AS `pk_sc_id`,
 1 AS `sc_nombre`,
 1 AS `sc_apellido`,
 1 AS `sc_cedula`,
 1 AS `sc_fech_n`,
 1 AS `sc_telf`,
 1 AS `sc_dir`,
 1 AS `sc_cel`,
 1 AS `sc_correo`,
 1 AS `razon`,
 1 AS `sexo`,
 1 AS `condicion`,
 1 AS `estado`,
 1 AS `tipo_socio`,
 1 AS `pk_cta_sc_id`,
 1 AS `cta_sc_numero`,
 1 AS `cta_sc_saldo`,
 1 AS `cta_sc_ult_act`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_directiva`
--

DROP TABLE IF EXISTS `vista_directiva`;
/*!50001 DROP VIEW IF EXISTS `vista_directiva`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_directiva` AS SELECT 
 1 AS `pk_crg_sc_id`,
 1 AS `pk_crg_id`,
 1 AS `crg_dsc`,
 1 AS `pk_sc_id`,
 1 AS `sc_cedula`,
 1 AS `sc_nombre`,
 1 AS `sc_apellido`,
 1 AS `sc_cel`,
 1 AS `sc_correo`,
 1 AS `pk_est_crg_id`,
 1 AS `est_crg_dsc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ingresos`
--

DROP TABLE IF EXISTS `vista_ingresos`;
/*!50001 DROP VIEW IF EXISTS `vista_ingresos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ingresos` AS SELECT 
 1 AS `pk_ingre_id`,
 1 AS `ingre_val`,
 1 AS `ingre_fech_ini`,
 1 AS `fk_tp_ingre_id`,
 1 AS `tp_ingre_dsc`,
 1 AS `fk_sc_id`,
 1 AS `fk_cta_id`,
 1 AS `sc_cedula`,
 1 AS `sc_nombre`,
 1 AS `sc_apellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_egre_des`
--

DROP TABLE IF EXISTS `vista_egre_des`;
/*!50001 DROP VIEW IF EXISTS `vista_egre_des`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_egre_des` AS SELECT 
 1 AS `N°`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Cargo`,
 1 AS `Motivo`,
 1 AS `Monto`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_egresos`
--

DROP TABLE IF EXISTS `vista_egresos`;
/*!50001 DROP VIEW IF EXISTS `vista_egresos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_egresos` AS SELECT 
 1 AS `pk_egre_id`,
 1 AS `egre_val`,
 1 AS `egre_fech_ini`,
 1 AS `egre_fdesm`,
 1 AS `fk_tp_egre_id`,
 1 AS `tp_egre_dsc`,
 1 AS `fk_sc_id`,
 1 AS `sc_cedula`,
 1 AS `sc_nombre`,
 1 AS `sc_apellido`,
 1 AS `fk_est_pg_pend`,
 1 AS `fk_cta_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_egre_pend`
--

DROP TABLE IF EXISTS `vista_egre_pend`;
/*!50001 DROP VIEW IF EXISTS `vista_egre_pend`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_egre_pend` AS SELECT 
 1 AS `N°`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Cargo`,
 1 AS `Motivo`,
 1 AS `Monto`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_tecnicos`
--

/*!50001 DROP VIEW IF EXISTS `vista_tecnicos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_tecnicos` AS select `t`.`pk_tec_id` AS `pk_tec_id`,`t`.`tec_cedula` AS `tec_cedula`,`t`.`tec_nombre` AS `tec_nombre`,`t`.`tec_apellido` AS `tec_apellido`,`t`.`tec_cel` AS `tec_cel`,`t`.`tec_correo` AS `tec_correo`,`et`.`pk_est_tec_id` AS `pk_est_tec_id`,`et`.`tec_est_dsc` AS `tec_est_dsc` from (`tecnico` `t` join `estado_tecnico` `et` on(`t`.`fk_est_tec_id` = `et`.`pk_est_tec_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ingresos_socio`
--

/*!50001 DROP VIEW IF EXISTS `vista_ingresos_socio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ingresos_socio` AS select `s`.`pk_sc_id` AS `SocioID`,`s`.`sc_nombre` AS `NombreSocio`,`i`.`ingre_fech_ini` AS `FechaIngreso`,`i`.`ingre_val` AS `ValorIngreso`,`ti`.`tp_ingre_dsc` AS `TipoIngreso` from ((`ingreso` `i` join `socio` `s` on(`i`.`fk_sc_id` = `s`.`pk_sc_id`)) join `tipo_ingreso` `ti` on(`i`.`fk_tp_ingre_id` = `ti`.`pk_tp_ingre_id`)) where `ti`.`pk_tp_ingre_id` not in (17,20,23) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_socio_cuenta`
--

/*!50001 DROP VIEW IF EXISTS `vista_socio_cuenta`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_socio_cuenta` AS select `s`.`pk_sc_id` AS `pk_sc_id`,`s`.`sc_nombre` AS `sc_nombre`,`s`.`sc_apellido` AS `sc_apellido`,`s`.`sc_cedula` AS `sc_cedula`,`s`.`sc_fech_n` AS `sc_fech_n`,`s`.`sc_telf` AS `sc_telf`,`s`.`sc_dir` AS `sc_dir`,`s`.`sc_cel` AS `sc_cel`,`s`.`sc_correo` AS `sc_correo`,`rzn`.`rzn_dsc` AS `razon`,`sex`.`sex_dsc` AS `sexo`,`con`.`con_dsc` AS `condicion`,`est`.`est_dsc` AS `estado`,`tp_sc`.`tp_dsc` AS `tipo_socio`,`c`.`pk_cta_sc_id` AS `pk_cta_sc_id`,`c`.`cta_sc_numero` AS `cta_sc_numero`,`c`.`cta_sc_saldo` AS `cta_sc_saldo`,`c`.`cta_sc_ult_act` AS `cta_sc_ult_act` from ((((((`socio` `s` left join `cuenta_socio` `c` on(`s`.`pk_sc_id` = `c`.`fk_sc_id`)) left join `condicion_socio` `con` on(`s`.`fk_con_id` = `con`.`pk_con_id`)) left join `estado_socio` `est` on(`s`.`fk_est_id` = `est`.`pk_est_id`)) left join `razon_social` `rzn` on(`s`.`fk_rzn_id` = `rzn`.`pk_rzn_id`)) left join `sexo_socio` `sex` on(`s`.`fk_sex_id` = `sex`.`pk_sex_id`)) left join `tipo_socio` `tp_sc` on(`s`.`fk_tp_sc` = `tp_sc`.`pk_tp_sc`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_directiva`
--

/*!50001 DROP VIEW IF EXISTS `vista_directiva`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_directiva` AS select `cs`.`pk_crg_sc_id` AS `pk_crg_sc_id`,`c`.`pk_crg_id` AS `pk_crg_id`,`c`.`crg_dsc` AS `crg_dsc`,`s`.`pk_sc_id` AS `pk_sc_id`,`s`.`sc_cedula` AS `sc_cedula`,`s`.`sc_nombre` AS `sc_nombre`,`s`.`sc_apellido` AS `sc_apellido`,`s`.`sc_cel` AS `sc_cel`,`s`.`sc_correo` AS `sc_correo`,`es`.`pk_est_crg_id` AS `pk_est_crg_id`,`es`.`est_crg_dsc` AS `est_crg_dsc` from (((`socio` `s` join `cargo_socio` `cs` on(`cs`.`fk_sc_id` = `s`.`pk_sc_id`)) join `cargo` `c` on(`cs`.`fk_crg_id` = `c`.`pk_crg_id`)) join `estado_cargo` `es` on(`cs`.`fk_est_crg` = `es`.`pk_est_crg_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ingresos`
--

/*!50001 DROP VIEW IF EXISTS `vista_ingresos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ingresos` AS select `i`.`pk_ingre_id` AS `pk_ingre_id`,`i`.`ingre_val` AS `ingre_val`,`i`.`ingre_fech_ini` AS `ingre_fech_ini`,`ti`.`pk_tp_ingre_id` AS `fk_tp_ingre_id`,`ti`.`tp_ingre_dsc` AS `tp_ingre_dsc`,`i`.`fk_sc_id` AS `fk_sc_id`,`i`.`fk_cta_id` AS `fk_cta_id`,`s`.`sc_cedula` AS `sc_cedula`,`s`.`sc_nombre` AS `sc_nombre`,`s`.`sc_apellido` AS `sc_apellido` from ((`ingreso` `i` join `tipo_ingreso` `ti` on(`i`.`fk_tp_ingre_id` = `ti`.`pk_tp_ingre_id`)) join `socio` `s` on(`i`.`fk_sc_id` = `s`.`pk_sc_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_egre_des`
--

/*!50001 DROP VIEW IF EXISTS `vista_egre_des`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_egre_des` AS select `r`.`pk_egre_id` AS `N°`,`c`.`sc_nombre` AS `Nombre`,`c`.`sc_apellido` AS `Apellido`,`a`.`crg_dsc` AS `Cargo`,`t`.`tp_egre_dsc` AS `Motivo`,`r`.`egre_val` AS `Monto`,`e`.`pg_dsc` AS `Estado` from ((((`egreso` `r` join `socio` `c` on(`c`.`pk_sc_id` = `r`.`fk_sc_id`)) join `cargo` `a` on(`a`.`pk_crg_id` = `a`.`pk_crg_id` and `a`.`pk_crg_id` = 2)) join `tipo_egreso` `t` on(`t`.`pk_tp_egre_id` = `r`.`fk_tp_egre_id`)) join `estado_pago_pendiente` `e` on(`e`.`pk_est_pg_pend` = `r`.`fk_est_pg_pend`)) where `r`.`fk_tp_egre_id` in (4,5,6,12,17) and `r`.`fk_est_pg_pend` = 1 and `r`.`egre_val` >= 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_egresos`
--

/*!50001 DROP VIEW IF EXISTS `vista_egresos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_egresos` AS select `e`.`pk_egre_id` AS `pk_egre_id`,`e`.`egre_val` AS `egre_val`,`e`.`egre_fech_ini` AS `egre_fech_ini`,`e`.`egre_fdesm` AS `egre_fdesm`,`te`.`pk_tp_egre_id` AS `fk_tp_egre_id`,`te`.`tp_egre_dsc` AS `tp_egre_dsc`,`s`.`pk_sc_id` AS `fk_sc_id`,`s`.`sc_cedula` AS `sc_cedula`,`s`.`sc_nombre` AS `sc_nombre`,`s`.`sc_apellido` AS `sc_apellido`,`e`.`fk_est_pg_pend` AS `fk_est_pg_pend`,`e`.`fk_cta_id` AS `fk_cta_id` from ((`egreso` `e` join `tipo_egreso` `te` on(`e`.`fk_tp_egre_id` = `te`.`pk_tp_egre_id`)) join `socio` `s` on(`e`.`fk_sc_id` = `s`.`pk_sc_id`)) where `e`.`fk_est_pg_pend` = 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_egre_pend`
--

/*!50001 DROP VIEW IF EXISTS `vista_egre_pend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_egre_pend` AS select `r`.`pk_egre_id` AS `N°`,`c`.`sc_nombre` AS `Nombre`,`c`.`sc_apellido` AS `Apellido`,`a`.`crg_dsc` AS `Cargo`,`t`.`tp_egre_dsc` AS `Motivo`,`r`.`egre_val` AS `Monto`,`e`.`pg_dsc` AS `Estado` from ((((`egreso` `r` join `socio` `c` on(`c`.`pk_sc_id` = `r`.`fk_sc_id`)) join `cargo` `a` on(`a`.`pk_crg_id` = `a`.`pk_crg_id` and `a`.`pk_crg_id` = 2)) join `tipo_egreso` `t` on(`t`.`pk_tp_egre_id` = `r`.`fk_tp_egre_id`)) join `estado_pago_pendiente` `e` on(`e`.`pk_est_pg_pend` = `r`.`fk_est_pg_pend`)) where `r`.`fk_tp_egre_id` in (4,5,6,12,17) and `r`.`fk_est_pg_pend` = 2 and `r`.`egre_val` >= 100 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'crisol'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `daily_update_event` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `daily_update_event` ON SCHEDULE EVERY 1 DAY STARTS '2024-02-11 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    CALL pra_pago_abono_aporte();
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `event_actualizar_tipo_socio` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `event_actualizar_tipo_socio` ON SCHEDULE EVERY 1 DAY STARTS '2024-01-25 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO CALL pra_actualizar_tipo_socio() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `event_amrt_vencimiento` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `event_amrt_vencimiento` ON SCHEDULE EVERY 1 DAY STARTS '2024-01-25 00:00:01' ON COMPLETION NOT PRESERVE ENABLE DO call crisol.pra_prestamos_vencidos() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `event_aportes_mensuales` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `event_aportes_mensuales` ON SCHEDULE EVERY 1 MONTH STARTS '2024-01-25 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO CALL pra_aportes_mensuales_multas() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `event_multa_morosidad` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `event_multa_morosidad` ON SCHEDULE EVERY 1 DAY STARTS '2024-01-25 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO CALL pra_actualizar_multa() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `event_test_calculo_morosidad` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `event_test_calculo_morosidad` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-01-25 23:59:59' ON COMPLETION NOT PRESERVE ENABLE DO call crisol.pra_prestamos_vencidos() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'crisol'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_abonos_y_aportaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_abonos_y_aportaciones`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE total_aporte DECIMAL(10, 2);
    DECLARE cur_fk_cta_sc_id INT;
    DECLARE abn_valor_actual DECIMAL(10, 2);

    -- Cursor para obtener cada cuenta y su total de aporte
    DECLARE cur CURSOR FOR
        SELECT ap.fk_cta_sc_id, SUM(c.cert_val + f.fon_val) AS total_aporte
        FROM aportaciones ap
        JOIN fondo_estrategico f ON ap.fk_fon_id = f.pk_fon_id
        JOIN certificado c ON ap.fk_cert_id = c.pk_cert_id
        GROUP BY ap.fk_cta_sc_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    SET SQL_SAFE_UPDATES = 0;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO cur_fk_cta_sc_id, total_aporte;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Obtener el valor actual del abono para la cuenta actual
        SELECT abn_valor INTO abn_valor_actual
        FROM abono
        WHERE fk_cta_sc_id = cur_fk_cta_sc_id;

        -- Actualizar el campo abn_valor en la tabla abono solo si el abono es mayor o igual al total del aporte
        IF abn_valor_actual >= total_aporte THEN
            UPDATE abono AS a
            SET a.abn_valor = a.abn_valor - total_aporte
            WHERE a.fk_cta_sc_id = cur_fk_cta_sc_id;

            -- Eliminar las aportaciones correspondientes a la cuenta actual
            DELETE FROM aportaciones
            WHERE fk_cta_sc_id = cur_fk_cta_sc_id;
        END IF;
    END LOOP;

    CLOSE cur;

    SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcular_excedente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_excedente`()
BEGIN
    DECLARE excedente_acumulado DECIMAL(10,2);
    DECLARE saldo DECIMAL(10,2);

    -- Obtener el excedente acumulado y el saldo
    SET @excedente_acumulado := (
        SELECT hist_cta_gas_adm 
        FROM historico_cuenta 
        WHERE hist_cta_fech_fin = (
            SELECT MAX(hist_cta_fech_fin) 
            FROM historico_cuenta
        )
    );

    SET @saldo := (
        SELECT hist_cta_gas_adm 
        FROM historico_cuenta 
        WHERE hist_cta_fech_fin = (
            SELECT MAX(hist_cta_fech_fin) 
            FROM historico_cuenta
        )
    );

    -- Consulta principal
    SELECT 
        excedente_acumulado.mes,
        excedente_acumulado.total_ingreso,
        excedente_acumulado.total_egreso,
        excedente_acumulado.excedente_bruto,
        excedente_acumulado.excedente_acumulado,
        valor_cuenta.valor_cuenta,
        excedente_acumulado.excedente_acumulado - valor_cuenta.valor_cuenta AS excedente_periodo
    FROM (
        SELECT 
            m.mes,
            IFNULL(ingresos.total_ingreso, 0) AS total_ingreso,
            IFNULL(egresos.total_egreso, 0) AS total_egreso,
            IFNULL(ingresos.total_ingreso, 0) - IFNULL(egresos.total_egreso, 0) AS excedente_bruto,
            @excedente_acumulado := @excedente_acumulado + IFNULL(ingresos.total_ingreso, 0) - IFNULL(egresos.total_egreso, 0) AS excedente_acumulado
        FROM (
            SELECT 'Enero' AS mes
            UNION ALL SELECT 'Febrero'
            UNION ALL SELECT 'Marzo'
            UNION ALL SELECT 'Abril'
            UNION ALL SELECT 'Mayo'
            UNION ALL SELECT 'Junio'
            UNION ALL SELECT 'Julio'
            UNION ALL SELECT 'Agosto'
            UNION ALL SELECT 'Septiembre'
            UNION ALL SELECT 'Octubre'
            UNION ALL SELECT 'Noviembre'
            UNION ALL SELECT 'Diciembre'
        ) AS m
        LEFT JOIN (
            SELECT 
                CASE 
                    WHEN MONTH(ingre_fech_ini) = 1 THEN 'Enero'
                    WHEN MONTH(ingre_fech_ini) = 2 THEN 'Febrero'
                    WHEN MONTH(ingre_fech_ini) = 3 THEN 'Marzo'
                    WHEN MONTH(ingre_fech_ini) = 4 THEN 'Abril'
                    WHEN MONTH(ingre_fech_ini) = 5 THEN 'Mayo'
                    WHEN MONTH(ingre_fech_ini) = 6 THEN 'Junio'
                    WHEN MONTH(ingre_fech_ini) = 7 THEN 'Julio'
                    WHEN MONTH(ingre_fech_ini) = 8 THEN 'Agosto'
                    WHEN MONTH(ingre_fech_ini) = 9 THEN 'Septiembre'
                    WHEN MONTH(ingre_fech_ini) = 10 THEN 'Octubre'
                    WHEN MONTH(ingre_fech_ini) = 11 THEN 'Noviembre'
                    ELSE 'Diciembre'
                END AS mes,
                SUM(ingre_val) AS total_ingreso
            FROM ingreso 
            WHERE fk_tp_ingre_id IN (25, 26,16,17,19) 
            GROUP BY MONTH(ingre_fech_ini)
        ) AS ingresos ON m.mes = ingresos.mes
        LEFT JOIN (
            SELECT 
                CASE 
                    WHEN MONTH(egre_fdesm) = 1 THEN 'Enero'
                    WHEN MONTH(egre_fdesm) = 2 THEN 'Febrero'
                    WHEN MONTH(egre_fdesm) = 3 THEN 'Marzo'
                    WHEN MONTH(egre_fdesm) = 4 THEN 'Abril'
                    WHEN MONTH(egre_fdesm) = 5 THEN 'Mayo'
                    WHEN MONTH(egre_fdesm) = 6 THEN 'Junio'
                    WHEN MONTH(egre_fdesm) = 7 THEN 'Julio'
                    WHEN MONTH(egre_fdesm) = 8 THEN 'Agosto'
                    WHEN MONTH(egre_fdesm) = 9 THEN 'Septiembre'
                    WHEN MONTH(egre_fdesm) = 10 THEN 'Octubre'
                    WHEN MONTH(egre_fdesm) = 11 THEN 'Noviembre'
                    ELSE 'Diciembre'
                END AS mes,
                SUM(egre_val) AS total_egreso
            FROM egreso 
            WHERE fk_tp_egre_id IN (4, 5, 12) AND egre_fdesm IS NOT NULL
            GROUP BY MONTH(egre_fdesm)
        ) AS egresos ON m.mes = egresos.mes
        ORDER BY FIELD(m.mes, 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre')
    ) AS excedente_acumulado
    LEFT JOIN (
        SELECT 
            m.mes,
            IFNULL(ingresos.total_ingreso_gastos_adm, 0) AS total_ingreso_gastos_adm,
            IFNULL(egresos.total_egreso_gastos_adm, 0) AS total_egreso_gastos_adm,
            @saldo := IFNULL(@saldo + IFNULL(ingresos.total_ingreso_gastos_adm, 0) - IFNULL(egresos.total_egreso_gastos_adm, 0), @saldo) AS valor_cuenta
        FROM (
            SELECT 'Enero' AS mes
            UNION ALL SELECT 'Febrero'
            UNION ALL SELECT 'Marzo'
            UNION ALL SELECT 'Abril'
            UNION ALL SELECT 'Mayo'
            UNION ALL SELECT 'Junio'
            UNION ALL SELECT 'Julio'
            UNION ALL SELECT 'Agosto'
            UNION ALL SELECT 'Septiembre'
            UNION ALL SELECT 'Octubre'
            UNION ALL SELECT 'Noviembre'
            UNION ALL SELECT 'Diciembre'
        ) AS m
        LEFT JOIN (
            SELECT 
                CASE 
                    WHEN MONTH(ingre_fech_ini) = 1 THEN 'Enero'
                    WHEN MONTH(ingre_fech_ini) = 2 THEN 'Febrero'
                    WHEN MONTH(ingre_fech_ini) = 3 THEN 'Marzo'
                    WHEN MONTH(ingre_fech_ini) = 4 THEN 'Abril'
                    WHEN MONTH(ingre_fech_ini) = 5 THEN 'Mayo'
                    WHEN MONTH(ingre_fech_ini) = 6 THEN 'Junio'
                    WHEN MONTH(ingre_fech_ini) = 7 THEN 'Julio'
                    WHEN MONTH(ingre_fech_ini) = 8 THEN 'Agosto'
                    WHEN MONTH(ingre_fech_ini) = 9 THEN 'Septiembre'
                    WHEN MONTH(ingre_fech_ini) = 10 THEN 'Octubre'
                    WHEN MONTH(ingre_fech_ini) = 11 THEN 'Noviembre'
                    ELSE 'Diciembre'
                END AS mes,
                SUM(ingre_val) AS total_ingreso_gastos_adm
            FROM ingreso 
            WHERE fk_tp_ingre_id IN (16, 17) 
            GROUP BY MONTH(ingre_fech_ini)
        ) AS ingresos ON m.mes = ingresos.mes
        LEFT JOIN (
            SELECT 
                CASE 
                    WHEN MONTH(egre_fdesm) = 1 THEN 'Enero'
                    WHEN MONTH(egre_fdesm) = 2 THEN 'Febrero'
                    WHEN MONTH(egre_fdesm) = 3 THEN 'Marzo'
                    WHEN MONTH(egre_fdesm) = 4 THEN 'Abril'
                    WHEN MONTH(egre_fdesm) = 5 THEN 'Mayo'
                    WHEN MONTH(egre_fdesm) = 6 THEN 'Junio'
                    WHEN MONTH(egre_fdesm) = 7 THEN 'Julio'
                    WHEN MONTH(egre_fdesm) = 8 THEN 'Agosto'
                    WHEN MONTH(egre_fdesm) = 9 THEN 'Septiembre'
                    WHEN MONTH(egre_fdesm) = 10 THEN 'Octubre'
                    WHEN MONTH(egre_fdesm) = 11 THEN 'Noviembre'
                    ELSE 'Diciembre'
                END AS mes,
                SUM(egre_val) AS total_egreso_gastos_adm
            FROM egreso 
            WHERE fk_tp_egre_id IN (4,5,12) AND egre_fdesm IS NOT NULL
            GROUP BY MONTH(egre_fdesm)
        ) AS egresos ON m.mes = egresos.mes
    ) AS valor_cuenta ON excedente_acumulado.mes = valor_cuenta.mes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generarComprobantesIngreso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generarComprobantesIngreso`()
BEGIN
    -- Crear una tabla temporal para almacenar los resultados intermedios
    CREATE TEMPORARY TABLE IF NOT EXISTS tmp_resultados (
        comp_fecha_emi DATE,
        comp_ingre_val DECIMAL(10, 2),
        fk_cmp_id INT,
        fk_sc_id INT
    );

    -- Insertar los resultados en la tabla temporal
    INSERT INTO tmp_resultados (comp_fecha_emi, comp_ingre_val, fk_cmp_id, fk_sc_id)
    SELECT
        ingre_fech_ini AS comp_fecha_emi,
        SUM(ingre_val) AS comp_ingre_val,
        1 AS fk_cmp_id,
        fk_sc_id
    FROM ingreso
    GROUP BY fk_sc_id, ingre_fech_ini;

    -- Insertar los resultados de la tabla temporal en la tabla comprobante_ingreso
    INSERT INTO comprobante_ingreso (comp_fecha_emi, comp_ingre_val, fk_cmp_id, fk_sc_id)
    SELECT comp_fecha_emi, comp_ingre_val, fk_cmp_id, fk_sc_id
    FROM tmp_resultados;

    -- Eliminar la tabla temporal
    DROP TEMPORARY TABLE IF EXISTS tmp_resultados;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_actualizar_multa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_actualizar_multa`()
BEGIN
    DECLARE multa_id INT;
    DECLARE mult_val_actual DECIMAL(10, 2);

    -- Obtener la primera multa en estado 2 y tipo_multa 1
    SELECT pk_mult_id
    INTO multa_id
    FROM multa
    WHERE fk_est_multa = 2 AND fk_tp_mult_id = 1
    ORDER BY pk_mult_id
    LIMIT 1;

    -- Si no hay multas en estado 2 con tipo_multa 1, salir del procedimiento
    IF multa_id IS NULL THEN
        SELECT 'No hay multas en estado 2 con tipo_multa 1';
    ELSE
        -- Obtener el valor actual de mult_val
        SET mult_val_actual = (SELECT mult_val FROM tipo_multa WHERE pk_tp_mult_id = 1);

        -- Actualizar la multa en la tabla multa sumando el valor de mult_val
        UPDATE multa
        SET mult_total = mult_total + mult_val_actual
        WHERE pk_mult_id = multa_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_actualizar_tipo_socio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_actualizar_tipo_socio`()
BEGIN
    DECLARE total_socios INT;

    -- Obtener el número total de socios
    SELECT COUNT(*) INTO total_socios FROM socio;

    -- Verificar si el número total de socios es mayor que 0 para evitar la división por cero
    IF total_socios > 0 THEN
        -- Calcular el nuevo valor para tp_val_fond_estr
		UPDATE tipo_socio
		SET tp_val_fond_estr = ROUND((SELECT cta_val FROM cuenta_caja WHERE pk_cta_id = 3) / total_socios, 2)
		WHERE pk_tp_sc IN (1, 2);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_aportes_mensuales_multas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_aportes_mensuales_multas`()
BEGIN
  CALL pra_generar_aportaciones_mensuales();
  CALL pra_insertar_multa();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_calcular_amortizacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_calcular_amortizacion`(solicitud_id TINYINT)
BEGIN
    -- Lógica del procedimiento utilizando los parámetros
    DECLARE tasa DECIMAL(10,2);
    DECLARE mes_actual INT;
    DECLARE valor_cuota DECIMAL(10,2);
    DECLARE monto_temp DECIMAL(10,2);
    DECLARE montosolicitado DECIMAL(10,2);
    DECLARE numerodemeses INT;
    DECLARE estado TINYINT;
    DECLARE prestamo_id INT;
    SELECT soli_pres_mont_soli INTO montosolicitado FROM solicitud_prestamo where pk_soli_pres_id = solicitud_id;
	SELECT soli_pres_mes INTO  numerodemeses FROM solicitud_prestamo where pk_soli_pres_id = solicitud_id;
    SET monto_temp = montosolicitado;
    SET mes_actual = 1;
	-- Obtener la tasa de interés
	SELECT rango_interes.ran_inte_tasa_inter 
    INTO tasa 
    FROM rango_monto 
    JOIN rango_interes 
    ON rango_interes.pk_ran_inte_id=rango_monto.fk_ran_inte_id  
    WHERE montoSolicitado BETWEEN rango_monto.ran_mont_min AND rango_monto.ran_mont_max;
    -- SELECT ran_inte_tasa_inter INTO tasa FROM rango_interes join rango_monto LIMIT 1;
	SELECT pk_est_amrt_id INTO estado FROM estado_amortizacion LIMIT 1;
    SELECT pk_pres_id INTO prestamo_id FROM prestamo WHERE fk_soli_pres_id = solicitud_id;
	-- Calcular el valor de la cuota
    SET valor_cuota = (montosolicitado) / (numerodemeses);

    WHILE mes_actual <= numerodemeses DO
        -- Insertar los resultados en la tabla temporal
        INSERT INTO amortizacion (amrt_mes,amrt_fech_pag,amrt_cap,amrt_cuot_cap,amrt_inter,amrt_val_cuot,amrt_sal_cap,fk_est_amrt_id,fk_pres_id)
        VALUES (
            mes_actual,
            DATE_ADD(CURDATE(), INTERVAL mes_actual MONTH), -- Ajusta según tu necesidad
            monto_temp,
            valor_cuota,
            montosolicitado * tasa / 100,
            valor_cuota + (montosolicitado * tasa / 100),
            IF(monto_temp - valor_cuota < 0, 0, monto_temp - (valor_cuota)),
            estado,
            prestamo_id
        );
        
        SET monto_temp = monto_temp - (valor_cuota);
        SET mes_actual = mes_actual + 1;
    END WHILE;
       UPDATE prestamo 
		SET fk_est_pres = 1 
		WHERE pk_pres_id = prestamo_id;

   -- SELECT SUM(cuota_capital) as "Total Cuota Capital", SUM(interes) as "Total Interes" from resultados_amortizacion;
        
    SELECT * FROM amortizacion;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_calcular_suma_cuentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_calcular_suma_cuentas`()
BEGIN
    DECLARE suma_total DECIMAL(10, 2);

    SELECT SUM(cta_val) INTO suma_total
    FROM cuenta_caja;

    SELECT suma_total AS suma_cuentas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_generar_aportaciones_mensuales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_generar_aportaciones_mensuales`()
BEGIN
    DECLARE fecha_aportacion DATE;
    
    -- Obtener el primer día del mes actual
    SET fecha_aportacion = DATE_FORMAT(NOW(), '%Y-%m-01');
    
    -- Insertar aportaciones mensuales para socios activos
    INSERT INTO aportaciones (aprt_fech, fk_fon_id, fk_cert_id, fk_cta_sc_id)
    SELECT
        fecha_aportacion,
        1 AS fk_fon_id,  -- ID del fondo (por ejemplo, 1)
        1 AS fk_cert_id, -- ID del certificado (por ejemplo, 1)
        cs.pk_cta_sc_id AS fk_cta_sc_id
    FROM
        socio s
    JOIN
        cuenta_socio cs ON s.pk_sc_id = cs.fk_sc_id
    WHERE
        s.fk_est_id = 1; -- Estado activo (cambia según tus necesidades)
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_insertar_multa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_insertar_multa`()
BEGIN
    -- Verificar si ya existe una multa para los socios con más de dos fechas de aportaciones
    INSERT INTO multa (mult_total,mult_fech_emi, fk_tp_mult_id, fk_est_multa, fk_cta_sc_id)
    SELECT
        (DATEDIFF(CURRENT_DATE + INTERVAL 1 DAY, MAX(aprt_fech))) * (SELECT mult_val FROM tipo_multa WHERE pk_tp_mult_id = 1) AS multa_total, 
        CURDATE() AS mult_fech_emi, 
        1 AS fk_tp_mult_id,
        1 AS fk_est_multa,
        a.fk_cta_sc_id
    FROM aportaciones a
    WHERE (
        SELECT COUNT(DISTINCT aprt_fech)
        FROM aportaciones b
        WHERE a.fk_cta_sc_id = b.fk_cta_sc_id
    ) = 2
    AND NOT EXISTS (
        SELECT 1
        FROM multa m
        WHERE a.fk_cta_sc_id = m.fk_cta_sc_id AND m.fk_tp_mult_id = 1
    )
    AND aprt_fech = (
        SELECT MAX(aprt_fech)
        FROM aportaciones
        WHERE fk_cta_sc_id = a.fk_cta_sc_id
    )
    GROUP BY a.fk_cta_sc_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_pago_abono_aporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_pago_abono_aporte`()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE total_aporte DECIMAL(10, 2);
    DECLARE cur_fk_cta_sc_id INT;
    DECLARE abn_valor_actual DECIMAL(10, 2);

    -- Cursor para obtener cada cuenta y su total de aporte
    DECLARE cur CURSOR FOR
        SELECT ap.fk_cta_sc_id, SUM(c.cert_val + f.fon_val) AS total_aporte
        FROM aportaciones ap
        JOIN fondo_estrategico f ON ap.fk_fon_id = f.pk_fon_id
        JOIN certificado c ON ap.fk_cert_id = c.pk_cert_id
        GROUP BY ap.fk_cta_sc_id;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    SET SQL_SAFE_UPDATES = 0;

    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO cur_fk_cta_sc_id, total_aporte;
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Obtener el valor actual del abono para la cuenta actual
        SELECT abn_valor INTO abn_valor_actual
        FROM abono
        WHERE fk_cta_sc_id = cur_fk_cta_sc_id;

        -- Actualizar el campo abn_valor en la tabla abono solo si el abono es mayor o igual al total del aporte
        IF abn_valor_actual >= total_aporte THEN
            UPDATE abono AS a
            SET a.abn_valor = a.abn_valor - total_aporte
            WHERE a.fk_cta_sc_id = cur_fk_cta_sc_id;

            -- Eliminar las aportaciones correspondientes a la cuenta actual
            DELETE FROM aportaciones
            WHERE fk_cta_sc_id = cur_fk_cta_sc_id;
        END IF;
    END LOOP;

    CLOSE cur;

    SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_prestamos_vencidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_prestamos_vencidos`()
BEGIN
   UPDATE amortizacion set amrt_mora = amrt_mora + (amrt_cuot_cap*(select inte_moro_val from interes_morosidad where pk_inte_moro_id=1))/100, 
    amrt_val_cuot= amrt_val_cuot+(amrt_cuot_cap*(select inte_moro_val from interes_morosidad where pk_inte_moro_id=1))/100 
    WHERE amrt_fech_pag <current_date() AND fk_est_amrt_id NOT IN (2, 4, 5);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_prestamos_vigentes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_prestamos_vigentes`(fecha_actual DATE )
BEGIN
    
    SELECT 
    amortizacion.amrt_mes, 
    amortizacion.amrt_fech_pag, 
    amortizacion.amrt_cap, 
    amortizacion.amrt_cuot_cap, 
    amortizacion.amrt_inter, 
    amortizacion.amrt_mora,
    amortizacion.amrt_val_cuot, 
    amortizacion.amrt_sal_cap, 
    prestamo.pk_pres_id,
    estado_prestamo.est_dsc
FROM 
    amortizacion
INNER JOIN 
    estado_prestamo ON amortizacion.fk_est_pres = estado_prestamo.pk_est_pres
INNER JOIN 
	prestamo ON amortizacion.fk_pres_id = prestamo.pk_pres_id
WHERE 
MONTH (amortizacion.amrt_fech_pag) = MONTH (fecha_actual)
AND YEAR(amortizacion.amrt_fech_pag) = YEAR (fecha_actual);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_total_aportaciones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_total_aportaciones`()
BEGIN
  DECLARE total_saldo DECIMAL(10, 2);

  -- Calcula la suma de cta_sc_saldo de la tabla cuenta_socio
  SELECT SUM(cta_sc_saldo) INTO total_saldo FROM cuenta_socio;

  -- Actualiza la tabla cuenta_caja con la suma calculada
  UPDATE cuenta_caja
  SET cta_val = total_saldo
  WHERE cta_dsc = 'Cta.Aportes Capital' and pk_cta_id = 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_total_cuenta_general` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_total_cuenta_general`()
BEGIN
    DECLARE suma_total DECIMAL(10, 2);

    SELECT SUM(cta_val) INTO suma_total
    FROM cuenta_caja;

    SELECT suma_total AS suma_cuentas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pra_total__cuenta_general` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pra_total__cuenta_general`()
BEGIN
    DECLARE suma_total DECIMAL(10, 2);

    SELECT SUM(cta_val) INTO suma_total
    FROM cuenta_caja;

    SELECT suma_total AS suma_cuentas;
END ;;
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

-- Dump completed on 2024-03-22 22:13:35
