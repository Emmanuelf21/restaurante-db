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
-- Table structure for table `estoque_ingredientes`
--

DROP TABLE IF EXISTS `estoque_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque_ingredientes` (
  `idingrediente` int NOT NULL AUTO_INCREMENT,
  `ingrediente_nome` varchar(60) DEFAULT NULL,
  `ingrediente_qtd` int DEFAULT NULL,
  PRIMARY KEY (`idingrediente`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque_ingredientes`
--

LOCK TABLES `estoque_ingredientes` WRITE;
/*!40000 ALTER TABLE `estoque_ingredientes` DISABLE KEYS */;
INSERT INTO `estoque_ingredientes` VALUES (1,'Sem Ingrediente',0),(2,'Alface Americana',999),(3,'Peito de Frango',999),(4,'Croutons',999),(5,'Parmesão Ralado',999),(6,'Molho Caesar',999),(7,'Alface Crespa',999),(8,'Tomate',999),(9,'Cebola',999),(10,'Pepino',999),(11,'Azeite',999),(12,'Peito de Peru',999),(13,'Rúcula',999),(14,'Pão de Forma',999),(15,'Ricota',999),(16,'Peça Tomahawk',999),(17,'Pimenta do Reino',999),(18,'Sal',999),(19,'Alho',999),(20,'Ervas Finas',999),(21,'Molho de Tomate',999),(22,'Manjericão',999),(23,'Salmão',999),(24,'Limão',999),(25,'Batata',999),(26,'Mandioca',999),(27,'Farinha de Trigo',999),(28,'Ovo',999),(29,'Orégano',999),(30,'Farinha de Rosca',999),(31,'Leite',999),(32,'Brócolis',999),(33,'Couve-Flor',999),(34,'Manteiga',999),(35,'Leite Condensado',999),(36,'Creme de Leite',999),(37,'Chocolate',999),(38,'Morango',999),(39,'Maracujá',999),(40,'Gelatina de Uva',999),(41,'Uva',999),(42,'Água',999),(43,'Suco de Laranja',999),(44,'Refrigerante de Cola',999);
/*!40000 ALTER TABLE `estoque_ingredientes` ENABLE KEYS */;
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
