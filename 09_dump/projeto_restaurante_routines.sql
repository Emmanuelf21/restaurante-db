CREATE DATABASE  IF NOT EXISTS `projeto_restaurante` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `projeto_restaurante`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_restaurante
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `entrada_ingredientes`
--

DROP TABLE IF EXISTS `entrada_ingredientes`;
/*!50001 DROP VIEW IF EXISTS `entrada_ingredientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entrada_ingredientes` AS SELECT 
 1 AS `identrada`,
 1 AS `entrada_nome`,
 1 AS `ingrediente 1`,
 1 AS `ingrediente 2`,
 1 AS `ingrediente 3`,
 1 AS `ingrediente 4`,
 1 AS `ingrediente 5`,
 1 AS `ingrediente 6`,
 1 AS `ingrediente 7`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_pedidos`
--

DROP TABLE IF EXISTS `view_pedidos`;
/*!50001 DROP VIEW IF EXISTS `view_pedidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_pedidos` AS SELECT 
 1 AS `idpedidos`,
 1 AS `entrada_nome`,
 1 AS `entrada_preco`,
 1 AS `principal_nome`,
 1 AS `principal_preco`,
 1 AS `guarnicao_nome`,
 1 AS `guarnicao_preco`,
 1 AS `sobremesa_nome`,
 1 AS `sobremesa_preco`,
 1 AS `bebida_nome`,
 1 AS `bebida_preco`,
 1 AS `Valor total`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `entrada_ingredientes`
--

/*!50001 DROP VIEW IF EXISTS `entrada_ingredientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entrada_ingredientes` AS select `entrada`.`identrada` AS `identrada`,`entrada`.`entrada_nome` AS `entrada_nome`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente1` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 1`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente2` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 2`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente3` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 3`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente4` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 4`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente5` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 5`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente6` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 6`,(select `estoque_ingredientes`.`ingrediente_nome` from `estoque_ingredientes` where (`entrada`.`fk_idingrediente7` = `estoque_ingredientes`.`idingrediente`)) AS `ingrediente 7` from `entrada` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_pedidos`
--

/*!50001 DROP VIEW IF EXISTS `view_pedidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_pedidos` AS select `pedidos`.`idpedidos` AS `idpedidos`,`entrada`.`entrada_nome` AS `entrada_nome`,`entrada`.`entrada_preco` AS `entrada_preco`,`prato_principal`.`principal_nome` AS `principal_nome`,`prato_principal`.`principal_preco` AS `principal_preco`,`guarnicao`.`guarnicao_nome` AS `guarnicao_nome`,`guarnicao`.`guarnicao_preco` AS `guarnicao_preco`,`sobremesa`.`sobremesa_nome` AS `sobremesa_nome`,`sobremesa`.`sobremesa_preco` AS `sobremesa_preco`,`bebidas`.`bebida_nome` AS `bebida_nome`,`bebidas`.`bebida_preco` AS `bebida_preco`,`pagamento`.`pagamento_valor` AS `Valor total` from ((((((`pedidos` join `entrada`) join `prato_principal`) join `guarnicao`) join `sobremesa`) join `bebidas`) join `pagamento`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'projeto_restaurante'
--

--
-- Dumping routines for database 'projeto_restaurante'
--
/*!50003 DROP FUNCTION IF EXISTS `pagamento_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `pagamento_total`(id_pedido int) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
		set @varBebida = (select bebida_preco from bebidas where idbebida = (select fk_idbebida from pedidos where idpedidos = id_pedido));
		set @varEntrada = (select entrada_preco from entrada where identrada = (select fk_identrada from pedidos where idpedidos = id_pedido));
		set @varPratoPrincipal = (select principal_preco from prato_principal where idprincipal = (select fk_idprincipal from pedidos where idpedidos = id_pedido));
		set @varGuarnicao = (select guarnicao_preco from guarnicao where idguarnicao = (select fk_idguarnicao from pedidos where idpedidos = id_pedido));
		set @varSobremesa = (select sobremesa_preco from sobremesa where idsobremesa = (select fk_idsobremesa from pedidos where idpedidos = id_pedido));
        
        set @varValorTotal = @varBebida + @varEntrada + @varPratoPrincipal + @varGuarnicao + @varSobremesa;
        return @varValorTotal;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_bebida` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_bebida`(idingrediente int, nome_bebida varchar(100), preco decimal(10,2))
BEGIN
		insert into bebidas values(null, nome_bebida, preco, idingrediente);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_cliente`(nome varchar(100), telefone varchar(11), cpf varchar(11))
BEGIN
		insert into cliente values(null,nome, telefone, cpf);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_entrada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_entrada`(identrada int, entrada_nome varchar(60), entrada_preco decimal(10,2), fk_idingrediente1 int, fk_idingrediente2 int, fk_idingrediente3 int, fk_idingrediente4 int, fk_idingrediente5 int, fk_idingrediente6 int, fk_idingrediente7 int)
BEGIN
		insert into bebidas values(null, entrada_nome, entrada_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_guarnicao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_guarnicao`(idguarnicao int, guarnicao_nome varchar(60), guarnicao_preco decimal(10,2), fk_idingrediente1 int, fk_idingrediente2 int, fk_idingrediente3 int, fk_idingrediente4 int, fk_idingrediente5 int, fk_idingrediente6 int, fk_idingrediente7 int)
BEGIN
		insert into bebidas values(null, guarnicao_nome, guarnicao_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_ingrediente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_ingrediente`(nome_ingrediente varchar(100), quantidade varchar(11))
BEGIN
		insert into estoque_ingredientes values(null,nome_ingrediente, quantidade);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_pagamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_pagamento`(idpedidos int, idcliente int)
BEGIN
		set @varPagar = (select pagamento_total(idpedidos) as "pagamento");
		insert into pagamento values(null, @varPagar, idpedidos, idcliente);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_pedido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_pedido`(identrada int, idprincipal int, idguarnicao int, idsobremesa int,  idbebida int, idcliente int, idfuncionario int)
BEGIN
		insert into pedidos values(null, idcliente, idfuncionario, identrada, idprincipal, idguarnicao, idsobremesa, idbebida);
        set @varIdPedido = (select idpedidos from pedidos where fk_idcliente = idcliente);
        call inserir_pagamento(@varIdPedido,idcliente);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_principal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_principal`(idprincipal int, principal_nome varchar(60), principal_preco decimal(10,2), fk_idingrediente1 int, fk_idingrediente2 int, fk_idingrediente3 int, fk_idingrediente4 int, fk_idingrediente5 int, fk_idingrediente6 int, fk_idingrediente7 int)
BEGIN
		insert into bebidas values(null, principal_nome, principal_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserir_sobremesa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserir_sobremesa`(idsobremesa int, sobremesa_nome varchar(60), sobremesa_preco decimal(10,2), fk_idingrediente1 int, fk_idingrediente2 int, fk_idingrediente3 int, fk_idingrediente4 int, fk_idingrediente5 int, fk_idingrediente6 int, fk_idingrediente7 int)
BEGIN
		insert into bebidas values(null, guarnicao_nome, guarnicao_preco, fk_idingrediente1, fk_idingrediente2, fk_idingrediente3, fk_idingrediente4, fk_idingrediente5, fk_idingrediente6, fk_idingrediente7);
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

-- Dump completed on 2025-03-08 19:19:34
