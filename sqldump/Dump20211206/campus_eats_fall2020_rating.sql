-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: campus_eats_fall2020
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL,
  `food_rating` int DEFAULT NULL,
  `delivery_rating` int DEFAULT NULL,
  `comments` varchar(200) DEFAULT NULL,
  `picture_link` varchar(100) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `fk_order_id` (`order_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,4,2,'Amazing','abc.com',1),(2,3,5,'good','abc.com',2),(3,5,1,'bad','abc.com',3),(4,3,2,'okay','abc.com',4),(5,2,3,'good','abc.com',5),(6,1,4,'worst','abc.com',6),(7,5,5,'best','abc.com',7),(8,4,3,'Amazing','abc.com',8),(9,3,2,'okay','abc.com',9),(10,4,4,'Amazing','abc.com',10),(11,4,3,'Moderate','abc.com',11),(12,4,2,'good','abc.com',12),(13,3,4,'bad','abc.com',13),(14,2,5,'okay','abc.com',14),(15,1,2,'good','abc.com',15),(16,4,2,'bad','abc.com',16),(17,5,3,'good','abc.com',17),(18,5,5,'bad','abc.com',18),(19,4,3,'okay','abc.com',19),(20,3,2,'good','abc.com',20),(21,2,1,'best','abc.com',21),(22,1,3,'good','abc.com',22),(23,5,5,'bad','abc.com',23),(24,5,5,'bad','abc.com',24),(25,2,3,'bad','abc.com',25),(26,4,2,'okay','abc.com',26),(27,5,5,'best','abc.com',27),(28,4,3,'good','abc.com',28),(29,3,5,'bad','abc.com',29),(30,2,4,'bad','abc.com',30),(32,3,2,'','abc.com',112),(33,4,5,'','abc.com',113),(34,3,1,'','abc.com',114),(35,2,1,'NA','',115),(36,2,4,'NA','abc.com',116),(37,3,4,'NA','abc.com',117),(38,2,4,'NA','',118),(39,2,5,'NA','abc.com',119),(40,5,1,'','abc.com',120),(41,3,5,'','',121),(42,4,4,'','abc.com',122),(43,3,1,'NA','abc.com',123),(44,3,4,'NA','',124),(45,2,4,'','',125),(46,4,2,'NA','',126),(47,3,5,'','',127),(48,3,3,'','abc.com',128),(49,4,2,'NA','',129),(50,1,4,'NA','',130),(51,1,3,'NA','',131),(52,3,5,'NA','abc.com',132),(53,1,2,'NA','abc.com',133),(54,2,2,'NA','abc.com',134),(55,2,5,'NA','abc.com',135),(56,2,3,'','',136),(57,2,3,'NA','abc.com',137),(58,2,3,'NA','',138),(59,3,3,'','abc.com',139),(60,4,3,'','',140),(61,3,2,'','',141),(62,2,4,'NA','abc.com',142),(63,3,3,'NA','abc.com',143),(64,3,4,'NA','abc.com',144),(65,2,3,'','abc.com',145),(66,4,4,'','',146),(67,4,5,'NA','abc.com',147),(68,3,4,'','abc.com',148),(69,4,3,'NA','',149),(70,2,3,'NA','abc.com',150),(71,2,3,'NA','abc.com',151),(72,4,2,'','',152),(73,3,4,'','',153),(74,3,3,'NA','',154),(75,4,1,'NA','abc.com',155),(76,5,2,'NA','abc.com',156),(77,3,2,'NA','',157),(78,4,3,'','',158),(79,4,5,'NA','abc.com',159);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 14:08:31
