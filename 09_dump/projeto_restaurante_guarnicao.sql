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
-- Table structure for table `guarnicao`
--

DROP TABLE IF EXISTS `guarnicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guarnicao` (
  `idguarnicao` int NOT NULL AUTO_INCREMENT,
  `guarnicao_nome` varchar(60) DEFAULT NULL,
  `guarnicao_preco` decimal(10,2) DEFAULT NULL,
  `fk_idingrediente1` int DEFAULT NULL,
  `fk_idingrediente2` int DEFAULT NULL,
  `fk_idingrediente3` int DEFAULT NULL,
  `fk_idingrediente4` int DEFAULT NULL,
  `fk_idingrediente5` int DEFAULT NULL,
  `fk_idingrediente6` int DEFAULT NULL,
  `fk_idingrediente7` int DEFAULT NULL,
  PRIMARY KEY (`idguarnicao`),
  KEY `fk_idingrediente1` (`fk_idingrediente1`),
  KEY `fk_idingrediente2` (`fk_idingrediente2`),
  KEY `fk_idingrediente3` (`fk_idingrediente3`),
  KEY `fk_idingrediente4` (`fk_idingrediente4`),
  KEY `fk_idingrediente5` (`fk_idingrediente5`),
  KEY `fk_idingrediente6` (`fk_idingrediente6`),
  KEY `fk_idingrediente7` (`fk_idingrediente7`),
  CONSTRAINT `guarnicao_ibfk_1` FOREIGN KEY (`fk_idingrediente1`) REFERENCES `estoque_ingredientes` (`idingrediente`),
  CONSTRAINT `guarnicao_ibfk_2` FOREIGN KEY (`fk_idingrediente2`) REFERENCES `estoque_ingredientes` (`idingrediente`),
  CONSTRAINT `guarnicao_ibfk_3` FOREIGN KEY (`fk_idingrediente3`) REFERENCES `estoque_ingredientes` (`idingrediente`),
  CONSTRAINT `guarnicao_ibfk_4` FOREIGN KEY (`fk_idingrediente4`) REFERENCES `estoque_ingredientes` (`idingrediente`),
  CONSTRAINT `guarnicao_ibfk_5` FOREIGN KEY (`fk_idingrediente5`) REFERENCES `estoque_ingredientes` (`idingrediente`),
  CONSTRAINT `guarnicao_ibfk_6` FOREIGN KEY (`fk_idingrediente6`) REFERENCES `estoque_ingredientes` (`idingrediente`),
  CONSTRAINT `guarnicao_ibfk_7` FOREIGN KEY (`fk_idingrediente7`) REFERENCES `estoque_ingredientes` (`idingrediente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guarnicao`
--

LOCK TABLES `guarnicao` WRITE;
/*!40000 ALTER TABLE `guarnicao` DISABLE KEYS */;
INSERT INTO `guarnicao` VALUES (1,'Mix de Tubérculos',17.50,25,26,18,20,1,1,1),(2,'Anéis de Cebola',19.99,9,27,28,29,30,31,18),(3,'Brócolis e couve-flor sautée',21.99,32,33,9,34,20,19,1);
/*!40000 ALTER TABLE `guarnicao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-10 13:06:53
