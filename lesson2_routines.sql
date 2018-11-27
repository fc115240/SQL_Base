-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: lesson2
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `view_employes_count_by_otdel`
--

DROP TABLE IF EXISTS `view_employes_count_by_otdel`;
/*!50001 DROP VIEW IF EXISTS `view_employes_count_by_otdel`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_employes_count_by_otdel` AS SELECT 
 1 AS `depname`,
 1 AS `employes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_avg_zp_by_otdel_mod`
--

DROP TABLE IF EXISTS `view_avg_zp_by_otdel_mod`;
/*!50001 DROP VIEW IF EXISTS `view_avg_zp_by_otdel_mod`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_avg_zp_by_otdel_mod` AS SELECT 
 1 AS `avg_salary`,
 1 AS `otdel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_avg_zp_by_otdel`
--

DROP TABLE IF EXISTS `view_avg_zp_by_otdel`;
/*!50001 DROP VIEW IF EXISTS `view_avg_zp_by_otdel`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_avg_zp_by_otdel` AS SELECT 
 1 AS `dep_id`,
 1 AS `dep_name`,
 1 AS `avg_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_max_zp_by_otdel`
--

DROP TABLE IF EXISTS `view_max_zp_by_otdel`;
/*!50001 DROP VIEW IF EXISTS `view_max_zp_by_otdel`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_max_zp_by_otdel` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `birthday`,
 1 AS `salary`,
 1 AS `otdel`,
 1 AS `depname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_max_zp`
--

DROP TABLE IF EXISTS `view_max_zp`;
/*!50001 DROP VIEW IF EXISTS `view_max_zp`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_max_zp` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `birthday`,
 1 AS `salary`,
 1 AS `otdel`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_zp_by_otdel`
--

DROP TABLE IF EXISTS `view_zp_by_otdel`;
/*!50001 DROP VIEW IF EXISTS `view_zp_by_otdel`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_zp_by_otdel` AS SELECT 
 1 AS `depname`,
 1 AS `employes`,
 1 AS `otdel_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_shtat`
--

DROP TABLE IF EXISTS `view_shtat`;
/*!50001 DROP VIEW IF EXISTS `view_shtat`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `view_shtat` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `birthday`,
 1 AS `salary`,
 1 AS `otdel`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_employes_count_by_otdel`
--

/*!50001 DROP VIEW IF EXISTS `view_employes_count_by_otdel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_employes_count_by_otdel` AS select `depart`.`depname` AS `depname`,count(0) AS `employes` from (`shtat` left join `depart` on((`depart`.`id` = `shtat`.`otdel`))) group by `shtat`.`otdel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_avg_zp_by_otdel_mod`
--

/*!50001 DROP VIEW IF EXISTS `view_avg_zp_by_otdel_mod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_avg_zp_by_otdel_mod` AS select round(avg(`a`.`salary`),2) AS `avg_salary`,`a`.`otdel` AS `otdel` from `shtat` `a` group by `a`.`otdel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_avg_zp_by_otdel`
--

/*!50001 DROP VIEW IF EXISTS `view_avg_zp_by_otdel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_avg_zp_by_otdel` AS select `depart`.`id` AS `dep_id`,`depart`.`depname` AS `dep_name`,avg(`shtat`.`salary`) AS `avg_salary` from (`depart` left join `shtat` on((`depart`.`id` = `shtat`.`otdel`))) group by `depart`.`id` having (`avg_salary` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_max_zp_by_otdel`
--

/*!50001 DROP VIEW IF EXISTS `view_max_zp_by_otdel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_max_zp_by_otdel` AS select `a`.`id` AS `id`,`a`.`firstname` AS `firstname`,`a`.`lastname` AS `lastname`,`a`.`birthday` AS `birthday`,`a`.`salary` AS `salary`,`a`.`otdel` AS `otdel`,`d`.`depname` AS `depname` from (`shtat` `a` left join `depart` `d` on((`a`.`otdel` = `d`.`id`))) where (`a`.`salary` = (select max(`b`.`salary`) from `shtat` `b` where (`b`.`otdel` = `a`.`otdel`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_max_zp`
--

/*!50001 DROP VIEW IF EXISTS `view_max_zp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_max_zp` AS select `a`.`id` AS `id`,`a`.`firstname` AS `firstname`,`a`.`lastname` AS `lastname`,`a`.`birthday` AS `birthday`,`a`.`salary` AS `salary`,`a`.`otdel` AS `otdel` from `shtat` `a` where (`a`.`salary` = (select max(`shtat`.`salary`) from `shtat`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_zp_by_otdel`
--

/*!50001 DROP VIEW IF EXISTS `view_zp_by_otdel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_zp_by_otdel` AS select `depart`.`depname` AS `depname`,count(0) AS `employes`,sum(`shtat`.`salary`) AS `otdel_salary` from (`shtat` left join `depart` on((`depart`.`id` = `shtat`.`otdel`))) group by `shtat`.`otdel` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_shtat`
--

/*!50001 DROP VIEW IF EXISTS `view_shtat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_shtat` AS select `shtat`.`id` AS `id`,`shtat`.`firstname` AS `firstname`,`shtat`.`lastname` AS `lastname`,`shtat`.`birthday` AS `birthday`,`shtat`.`salary` AS `salary`,`shtat`.`otdel` AS `otdel` from `shtat` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-24 14:16:01
