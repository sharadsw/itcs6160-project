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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `location_id` int NOT NULL,
  `driver_id` int NOT NULL,
  `restaurant_id` int NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,1,1,1,1,15.63,6.63,'2021-12-04'),(2,2,2,2,2,2,18.03,9.43,'2021-12-05'),(3,3,3,3,3,3,11.91,7.42,'2021-11-24'),(4,4,4,4,4,4,19.13,6.26,'2021-12-05'),(5,5,5,5,5,5,13.76,6.24,'2021-11-26'),(6,6,6,6,6,6,5.4,4.83,'2021-12-01'),(7,7,7,7,7,7,14.05,8.57,'2021-11-27'),(8,8,8,8,8,8,3.81,2.38,'2021-12-04'),(9,9,9,9,1,9,17.1,6.72,'2021-11-24'),(10,10,10,10,2,10,12.71,1.82,'2021-11-28'),(11,11,11,11,3,11,3.9,7.26,'2021-12-01'),(12,12,12,12,4,12,6.82,7.4,'2021-11-22'),(13,13,13,13,5,13,4.73,7.43,'2021-11-22'),(14,14,14,14,6,14,12.08,1.21,'2021-11-25'),(15,15,15,15,7,15,3.83,4.77,'2021-12-04'),(16,16,16,16,8,16,12.43,2.76,'2021-12-04'),(17,17,17,17,1,17,6.61,4.85,'2021-12-02'),(18,18,18,18,2,18,7.89,5.69,'2021-12-05'),(19,19,19,19,3,19,16.54,4.88,'2021-12-02'),(20,20,20,20,4,20,3.21,4.98,'2021-12-01'),(21,21,21,21,5,21,5.19,4.17,'2021-11-24'),(22,22,22,22,6,22,19,1.39,'2021-11-22'),(23,23,23,23,7,23,14.5,3.28,'2021-11-28'),(24,24,24,24,8,24,11.81,2.71,'2021-11-27'),(25,25,25,25,1,25,6.83,4.85,'2021-11-30'),(26,26,26,26,2,26,7.24,5.65,'2021-12-01'),(27,27,27,27,3,27,10.56,1.73,'2021-12-01'),(28,28,28,28,4,28,4.25,4.98,'2021-11-24'),(29,29,29,29,5,29,6.68,8.66,'2021-12-05'),(30,30,30,30,6,30,14.5,6.47,'2021-11-26'),(31,31,31,31,7,31,14.92,9.53,'2021-12-03'),(32,32,32,32,8,32,4.12,9.42,'2021-11-23'),(33,33,33,33,1,33,7.02,7.99,'2021-11-22'),(34,34,34,34,2,34,8.6,6.69,'2021-12-04'),(35,35,35,35,3,35,8.98,4.72,'2021-11-26'),(36,36,36,36,4,36,7.94,4.78,'2021-12-03'),(37,37,37,37,5,37,14.8,2.13,'2021-11-23'),(38,38,38,38,6,38,19.05,6.61,'2021-11-25'),(39,39,39,39,7,39,12.49,5.97,'2021-12-04'),(40,40,40,40,8,40,15.56,6.01,'2021-12-01'),(41,41,41,41,1,41,8.85,7.06,'2021-12-04'),(42,42,42,42,2,42,12.28,5.52,'2021-11-25'),(43,43,43,43,3,43,9.28,9.63,'2021-11-28'),(44,44,44,44,4,44,9.78,8,'2021-12-02'),(45,45,45,45,5,45,12.43,5.11,'2021-11-26'),(46,46,46,46,6,46,4.11,9.65,'2021-11-27'),(47,47,47,47,7,47,14.29,6.65,'2021-12-04'),(48,48,48,48,8,48,5.69,3.31,'2021-11-26'),(49,49,49,49,1,49,12.52,6.38,'2021-12-05'),(50,50,50,50,2,50,8.84,9.92,'2021-12-03'),(51,51,51,51,3,51,5.69,1.5,'2021-11-24'),(52,52,52,52,4,52,14.53,4.58,'2021-11-26'),(53,53,53,53,5,53,10.23,3.61,'2021-11-25'),(54,54,54,54,6,54,10.7,7.36,'2021-11-26'),(55,55,55,55,7,55,14.03,8.66,'2021-12-02'),(56,56,56,56,8,56,13.46,1.26,'2021-12-03'),(57,57,57,57,1,57,13.98,8.85,'2021-12-03'),(58,58,58,58,2,58,15.21,6.59,'2021-11-30'),(59,59,59,59,3,59,4.6,8.25,'2021-12-01'),(60,60,60,60,4,60,3.27,6.39,'2021-11-29'),(61,61,61,61,5,61,9.39,2.63,'2021-12-02'),(62,62,62,62,6,62,3.7,2.47,'2021-11-24'),(63,63,63,63,7,63,18.49,7.01,'2021-11-30'),(64,64,64,64,8,64,15.51,8.26,'2021-11-29'),(65,65,65,65,1,65,6.8,9.41,'2021-12-01'),(66,66,66,66,2,66,12.57,1.88,'2021-12-03'),(67,67,67,67,3,67,8.69,6.21,'2021-11-23'),(68,68,68,68,4,68,9.38,9.56,'2021-11-22'),(69,69,69,69,5,69,18.23,3.89,'2021-12-03'),(70,70,70,70,6,70,13.39,9.65,'2021-11-22'),(71,71,71,71,7,71,17.71,3.01,'2021-12-03'),(72,72,72,72,8,72,10.59,2.03,'2021-12-04'),(73,73,73,73,1,73,6.99,9.8,'2021-12-05'),(74,74,74,74,2,74,14.14,3.98,'2021-11-23'),(75,75,75,75,3,75,16.73,7.27,'2021-11-30'),(76,76,76,76,4,76,6.64,5.09,'2021-12-02'),(77,77,77,77,5,77,16.48,1.15,'2021-12-05'),(78,78,78,78,6,78,18.61,6.49,'2021-11-29'),(79,79,79,79,7,79,18.66,8.19,'2021-12-04'),(80,80,80,80,8,80,7.6,9.54,'2021-12-03'),(81,81,81,81,1,81,16.72,4.05,'2021-11-29'),(82,82,82,82,2,82,5.64,7.18,'2021-12-05'),(83,83,83,83,3,83,7.39,9.14,'2021-11-28'),(84,84,84,84,4,84,11.61,1.57,'2021-11-25'),(85,85,85,85,5,85,16.74,8.84,'2021-12-03'),(86,86,86,86,6,86,19.88,2.43,'2021-11-29'),(87,87,87,87,7,87,7.52,4.32,'2021-11-23'),(88,88,88,88,8,88,14.63,4.4,'2021-12-05'),(89,89,89,89,1,89,19.45,9.89,'2021-11-27'),(90,90,90,90,2,90,12.5,8.23,'2021-11-24'),(91,91,91,91,3,91,10.34,3.69,'2021-11-30'),(92,92,92,92,4,92,11.34,6.34,'2021-11-30'),(93,93,93,93,5,93,15.05,8.26,'2021-11-23'),(94,94,94,94,6,94,7.89,7.05,'2021-12-04'),(95,95,95,95,7,95,16.69,9.19,'2021-12-04'),(96,96,96,96,8,96,5.71,8.39,'2021-11-22'),(97,97,97,97,1,97,16.9,9.15,'2021-11-26'),(98,98,98,98,2,98,15.63,8.92,'2021-11-27'),(99,99,99,99,3,99,3.71,2.53,'2021-11-24'),(100,100,100,100,4,100,5.08,2.74,'2021-12-02'),(101,1,2,3,4,5,6,1,'2021-11-23');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_AFTER_INSERT` AFTER INSERT ON `order` FOR EACH ROW BEGIN
	insert into niner_eats.delivery (driver_id, vehicle_id) values(new.driver_id, 2);
END */;;
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

-- Dump completed on 2021-12-05 19:34:59
