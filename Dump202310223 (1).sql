-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dbeda
-- ------------------------------------------------------
-- Server version	8.0.34-1ubuntu1

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
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login_admin` varchar(45) NOT NULL,
  `password_admin` varchar(45) NOT NULL,
  `Voice_id_voice` int NOT NULL,
  PRIMARY KEY (`id`,`Voice_id_voice`),
  KEY `fk_Admin_Voice1_idx` (`Voice_id_voice`),
  CONSTRAINT `fk_Admin_Voice1` FOREIGN KEY (`Voice_id_voice`) REFERENCES `Voice` (`id_voice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Korzina`
--

DROP TABLE IF EXISTS `Korzina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Korzina` (
  `id` int NOT NULL,
  `e_a` varchar(45) DEFAULT NULL,
  `id_product` varchar(45) DEFAULT NULL,
  `Voice_id_voice` int NOT NULL,
  PRIMARY KEY (`id`,`Voice_id_voice`),
  KEY `fk_Korzina_Voice1_idx` (`Voice_id_voice`),
  CONSTRAINT `fk_Korzina_Voice1` FOREIGN KEY (`Voice_id_voice`) REFERENCES `Voice` (`id_voice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Korzina`
--

LOCK TABLES `Korzina` WRITE;
/*!40000 ALTER TABLE `Korzina` DISABLE KEYS */;
/*!40000 ALTER TABLE `Korzina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Otzivi`
--

DROP TABLE IF EXISTS `Otzivi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Otzivi` (
  `id` int NOT NULL,
  `Name` varchar(15) DEFAULT NULL,
  `Second_name` varchar(15) DEFAULT NULL,
  `Otziv` varchar(300) DEFAULT NULL,
  `User_id` int NOT NULL,
  `Voice_id_voice` int NOT NULL,
  PRIMARY KEY (`id`,`User_id`,`Voice_id_voice`),
  KEY `fk_Otzivi_User_idx` (`User_id`),
  KEY `fk_Otzivi_Voice1_idx` (`Voice_id_voice`),
  CONSTRAINT `fk_Otzivi_User` FOREIGN KEY (`User_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Otzivi_Voice1` FOREIGN KEY (`Voice_id_voice`) REFERENCES `Voice` (`id_voice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Otzivi`
--

LOCK TABLES `Otzivi` WRITE;
/*!40000 ALTER TABLE `Otzivi` DISABLE KEYS */;
/*!40000 ALTER TABLE `Otzivi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `id` int NOT NULL,
  `Money` int NOT NULL,
  `See_info` varchar(45) NOT NULL,
  `Korzina_id` int NOT NULL,
  `Voice_id_voice` int NOT NULL,
  PRIMARY KEY (`id`,`Korzina_id`,`Voice_id_voice`),
  KEY `fk_Product_Korzina1_idx` (`Korzina_id`),
  KEY `fk_Product_Voice1_idx` (`Voice_id_voice`),
  CONSTRAINT `fk_Product_Korzina1` FOREIGN KEY (`Korzina_id`) REFERENCES `Korzina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Product_Voice1` FOREIGN KEY (`Voice_id_voice`) REFERENCES `Voice` (`id_voice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci KEY_BLOCK_SIZE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `Voice_id_voice` int NOT NULL,
  PRIMARY KEY (`id`,`Voice_id_voice`),
  KEY `fk_User_Voice1_idx` (`Voice_id_voice`),
  CONSTRAINT `fk_User_Voice1` FOREIGN KEY (`Voice_id_voice`) REFERENCES `Voice` (`id_voice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Voice`
--

DROP TABLE IF EXISTS `Voice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Voice` (
  `id_voice` int NOT NULL,
  `id_product` int DEFAULT NULL,
  `id_admin` int DEFAULT NULL,
  `id_korzina` int DEFAULT NULL,
  `id_otzivi` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `Voice_id_voice` int NOT NULL,
  PRIMARY KEY (`id_voice`,`Voice_id_voice`),
  KEY `fk_Voice_1_idx` (`id_admin`),
  KEY `fk_Voice_2_idx` (`id_korzina`),
  KEY `fk_Voice_3_idx` (`id_otzivi`),
  KEY `fk_Voice_4_idx` (`id_user`),
  KEY `fk_Voice_5_idx` (`id_product`),
  KEY `fk_Voice_Voice1_idx` (`Voice_id_voice`),
  CONSTRAINT `fk_Voice_1` FOREIGN KEY (`id_admin`) REFERENCES `Admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Voice_2` FOREIGN KEY (`id_korzina`) REFERENCES `Korzina` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Voice_3` FOREIGN KEY (`id_otzivi`) REFERENCES `Otzivi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Voice_4` FOREIGN KEY (`id_user`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Voice_5` FOREIGN KEY (`id_product`) REFERENCES `Product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Voice_Voice1` FOREIGN KEY (`Voice_id_voice`) REFERENCES `Voice` (`id_voice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci CHECKSUM=1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Voice`
--

LOCK TABLES `Voice` WRITE;
/*!40000 ALTER TABLE `Voice` DISABLE KEYS */;
/*!40000 ALTER TABLE `Voice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbeda'
--

--
-- Dumping routines for database 'dbeda'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 12:51:47
