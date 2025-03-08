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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `fk_idcliente` int DEFAULT NULL,
  `fk_idfuncionario` int DEFAULT NULL,
  `fk_identrada` int DEFAULT NULL,
  `fk_idprincipal` int DEFAULT NULL,
  `fk_idguarnicao` int DEFAULT NULL,
  `fk_idsobremesa` int DEFAULT NULL,
  `fk_idbebida` int DEFAULT NULL,
  PRIMARY KEY (`idpedidos`),
  KEY `fk_idcliente` (`fk_idcliente`),
  KEY `fk_idfuncionario` (`fk_idfuncionario`),
  KEY `fk_identrada` (`fk_identrada`),
  KEY `fk_idprincipal` (`fk_idprincipal`),
  KEY `fk_idguarnicao` (`fk_idguarnicao`),
  KEY `fk_idsobremesa` (`fk_idsobremesa`),
  KEY `fk_idbebida` (`fk_idbebida`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`fk_idcliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`fk_idfuncionario`) REFERENCES `funcionarios` (`idfuncionario`),
  CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`fk_identrada`) REFERENCES `entrada` (`identrada`),
  CONSTRAINT `pedidos_ibfk_4` FOREIGN KEY (`fk_idprincipal`) REFERENCES `prato_principal` (`idprincipal`),
  CONSTRAINT `pedidos_ibfk_5` FOREIGN KEY (`fk_idguarnicao`) REFERENCES `guarnicao` (`idguarnicao`),
  CONSTRAINT `pedidos_ibfk_6` FOREIGN KEY (`fk_idsobremesa`) REFERENCES `sobremesa` (`idsobremesa`),
  CONSTRAINT `pedidos_ibfk_7` FOREIGN KEY (`fk_idbebida`) REFERENCES `bebidas` (`idbebida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-08 19:19:33
