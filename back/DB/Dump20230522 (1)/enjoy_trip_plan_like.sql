-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: enjoy_trip
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `plan_like`
--

DROP TABLE IF EXISTS `plan_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_like` (
  `like_no` int NOT NULL AUTO_INCREMENT,
  `like_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_no` int DEFAULT NULL,
  `plan_no` int NOT NULL,
  PRIMARY KEY (`like_no`),
  KEY `plan_no_idx` (`plan_no`),
  KEY `user_no_idx` (`user_no`),
  CONSTRAINT `plan_no` FOREIGN KEY (`plan_no`) REFERENCES `plan` (`plan_no`) ON DELETE CASCADE,
  CONSTRAINT `user_no` FOREIGN KEY (`user_no`) REFERENCES `user` (`user_no`) ON DELETE CASCADE ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_like`
--

LOCK TABLES `plan_like` WRITE;
/*!40000 ALTER TABLE `plan_like` DISABLE KEYS */;
INSERT INTO `plan_like` VALUES (1,'2023-05-02 06:00:00',4,1),(2,'2023-05-02 06:00:00',5,1),(3,'2023-05-02 06:00:00',6,1),(5,'2023-05-14 23:21:36',3,1),(6,'2023-05-14 23:21:36',4,2),(7,'2023-05-14 23:21:36',5,2),(8,'2023-05-14 23:21:36',6,2),(9,'2023-05-14 23:21:36',5,3),(10,'2023-05-14 23:21:36',6,3),(12,'2023-05-20 09:25:53',1,1),(13,'2023-05-20 09:26:07',2,1),(14,'2023-05-20 09:26:08',3,1),(15,'2023-05-20 09:26:12',7,1),(16,'2023-05-20 09:26:15',8,1),(17,'2023-05-20 09:26:16',9,1),(18,'2023-05-20 09:26:19',10,1),(19,'2023-05-20 10:09:57',1,2),(20,'2023-05-20 18:14:20',1,3);
/*!40000 ALTER TABLE `plan_like` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 13:06:23
