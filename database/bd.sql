-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bd
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dinosaurio`
--

DROP TABLE IF EXISTS `dinosaurio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dinosaurio` (
  `nombre` varchar(30) DEFAULT NULL,
  `dieta` varchar(20) DEFAULT NULL,
  `era` varchar(30) DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `longitud` float DEFAULT NULL,
  `peso` varchar(10) DEFAULT NULL,
  `esperanza` int DEFAULT NULL,
  `familia` varchar(30) DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinosaurio`
--

LOCK TABLES `dinosaurio` WRITE;
/*!40000 ALTER TABLE `dinosaurio` DISABLE KEYS */;
INSERT INTO `dinosaurio` VALUES ('Spinosaurus','Carnívoro','Cretácico tardío',6.38,15,'18,140',59,'Spinosauridae',1),('Tyrannosaurus','Carnívoro','Cretácico tardío',5.89,13.5,'16,326',66,'Tyrannosauridae',2),('Stegoceratops','Herbívoro','Holoceno',5.2,11.58,'-',30,'Híbrido',3),('Stegosaurus','Herbívoro','Jurásico tardío',4.93,10.1,'3,083.8',86,' Stegosauridae',4);
/*!40000 ALTER TABLE `dinosaurio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-09 15:37:23
