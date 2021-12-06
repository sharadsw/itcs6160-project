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
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) DEFAULT NULL,
  `item_desc` varchar(200) DEFAULT NULL,
  `item_price` float DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_restaurant_id` (`restaurant_id`),
  KEY `menu_index` (`item_name`),
  CONSTRAINT `fk_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Cappuccino','Dark, rich espresso lies in wait under a smoothed and stretched layer of thick milk foam. An alchemy of barista artistry and craft.',3.5,107),(3,'Burrito','Your choice of freshly grilled meat or sofritas wrapped in a warm flour tortilla with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese.',7.35,106),(4,'Burrito Bowl','Your choice of freshly grilled meat or sofritas served in a delicious bowl with rice, beans, or fajita veggies, and topped with guac, salsa, queso blanco, sour cream or cheese.',7.8,106),(5,'Quesadilla','Cheese in a Flour Tortilla with your choice of meat, sofritas or fajita veggies and three included sides.',7.9,106),(7,'Tacos','Your choice of freshly grilled meat or sofritas served in a soft or hard-shell tortilla with queso blanco, sour cream or cheese, and topped with hand-cut romaine lettuce.',7.35,106),(8,'PEPPERONI PIZZA','Your choice of crust covered with our signature pizza sauce, real cheese made from mozzarella, and pepperoni. With a pepperoni in almost every bite, its one of our most popular pizzas.',13.59,108),(9,'SAUSAGE PIZZA','Our signature pizza sauce layered with sausage and real cheese made from mozzarella for a taste you’ll crave. Your choice of crust.',13.59,108),(10,'CHEESE PIZZA','Simple, yet simply delicious. Real cheese made from mozzarella on top of our signature pizza sauce with your choice of crust, then baked to a golden brown. ',8,108),(11,'ZESTY ITALIAN TRIO PIZZA','A tasty trio of zesty Italian sausage, salami, and pepperoni, plus banana peppers, a three-cheese blend, and real cheese made from mozzarella on our signature sauce and original fresh dough.',17,108),(12,'GARDEN FRESH PIZZA','All your favorite veggies together on a delightfully delicious pizza. Loaded with crisp green peppers, fresh-cut onions, mushrooms, ripe black olives, vine-ripened Roma tomatoes',15.49,108),(13,'Chicken sandwich','A boneless breast of chicken seasoned to perfection, freshly breaded, pressure cooked in 100% refined peanut oil and served on a toasted.',14,105),(14,'Spicy chicken sandwich','A boneless breast of chicken seasoned with a spicy blend of peppers, freshly breaded, pressure cooked in 100% refined peanut oil and served on a toasted.',12,105),(15,'Grilled chicken sandwich',' A lemon-herb marinated boneless breast of chicken, grilled for a tender and juicy backyard-smoky taste, served on a toasted multigrain bun',18,105),(16,'Grilled nuggets','Bite-sized pieces of freshly marinated boneless breast of chicken, grilled for a tender and juicy backyard-smoky taste.',18,105),(17,'Bo’s chicken sandwich',' A juicy chicken breast, marinated in a secret blend of bold spices and hand-breaded with a crispy, crunchy buttermilk coating',12,104),(18,'8pc Chicken',' 8 pieces of boldly seasoned chicken served with 4 made-from-scratch biscuits',12,104),(19,'Cajun Chicken filet biscuit','All white meat chicken breast marinated with a bold blend of seasonings and served on a made-from-scratch buttermilk biscuit.',12,104),(20,'Grilled Chicken salad','Grilled slices of chicken breast served on a bed of fresh romaine lettuce, iceberg lettuce and red cabbage.',7,104),(21,'Caffe Americano','Espresso shots topped with hot water create a light layer of crema culminating in this wonderfully rich cup with depth and nuance. ',4,107),(22,'Chai Tea Latte','Black tea infused with cinnamon, clove and other warming spices is combined with steamed milk ',2,107),(23,'Strawberry Creme Frappunico','Summer\'s favorite berry is the star of this delicious Frappuccino',8,107),(24,'4 pc Spicy Chicken Nuggets','100% white-meat chicken breaded and marinated in our unique, fiery blend of peppers and spices',1.49,110),(25,'Spicy Chicken Sandwich','A juicy chicken breast marinated and breaded in our unique, fiery blend of peppers and spices to deliver more flavor inside and out, cooled down with crisp lettuce, tomato, and mayo.',4.79,110),(26,'Baconator','A half-pound* of fresh beef, American cheese, 6 pieces of crispy Applewood smoked bacon, ketchup, and mayo. Carnivores rejoice!',7,110),(27,'Small Natural-Cut Fries','Natural-cut, skin-on, sea-salted fries served hot and crispy.',1.39,110),(28,'Chili','​​Perfectly seasoned and positively irresistible. Red’s kind of our thing, you know.',2.4,110);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 14:08:33
