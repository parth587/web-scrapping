-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: scraper_db
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `predictions`
--

DROP TABLE IF EXISTS `predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predictions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `predicted_price` decimal(10,2) NOT NULL,
  `prediction_date` date NOT NULL,
  `model_used` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `predictions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predictions`
--

LOCK TABLES `predictions` WRITE;
/*!40000 ALTER TABLE `predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `original_price` decimal(10,2) NOT NULL,
  `current_price` decimal(10,2) NOT NULL,
  `source` enum('Amazon','Flipkart') NOT NULL,
  `date` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,1,79900.00,60900.00,'Amazon','2025-03-30'),(2,2,69900.00,64999.00,'Flipkart','2025-03-30'),(5,3,149999.00,79999.00,'Amazon','2025-03-30'),(6,4,149999.00,84990.00,'Flipkart','2025-03-30'),(7,5,98170.00,78490.00,'Amazon','2025-03-30'),(8,6,96579.00,78900.00,'Flipkart','2025-03-30'),(9,7,83990.00,63990.00,'Amazon','2025-03-30'),(10,8,92990.00,69999.00,'Flipkart','2025-03-30'),(12,12,50999.00,24999.00,'Amazon','2025-03-30'),(13,13,45999.00,23999.00,'Flipkart','2025-03-30'),(14,14,29990.00,20990.00,'Amazon','2025-03-30'),(15,15,29990.00,20990.00,'Flipkart','2025-03-30'),(16,14,29990.00,20990.00,'Amazon','2025-03-31'),(17,15,29990.00,20990.00,'Flipkart','2025-03-31'),(18,7,83990.00,63990.00,'Amazon','2025-03-31'),(19,8,92990.00,69999.00,'Flipkart','2025-03-31'),(20,5,98170.00,78490.00,'Amazon','2025-03-31'),(21,6,96579.00,78900.00,'Flipkart','2025-03-31'),(22,1,79900.00,60900.00,'Amazon','2025-03-31'),(23,2,69900.00,64999.00,'Flipkart','2025-03-31'),(24,3,2999.00,93999.00,'Amazon','2025-03-31'),(25,4,149999.00,84990.00,'Flipkart','2025-03-31'),(26,12,50999.00,24999.00,'Amazon','2025-03-31'),(27,13,45999.00,23999.00,'Flipkart','2025-03-31'),(28,14,29990.00,20990.00,'Amazon','2025-04-01'),(29,15,29990.00,20990.00,'Flipkart','2025-04-01'),(30,7,83990.00,67990.00,'Amazon','2025-04-01'),(31,8,92990.00,69999.00,'Flipkart','2025-04-01'),(32,5,98170.00,78490.00,'Amazon','2025-04-01'),(33,6,96579.00,78900.00,'Flipkart','2025-04-01'),(34,1,79900.00,60900.00,'Amazon','2025-04-01'),(35,2,749.00,69900.00,'Flipkart','2025-04-01'),(36,3,50999.00,95747.00,'Amazon','2025-04-01'),(37,4,149999.00,84990.00,'Flipkart','2025-04-01'),(38,12,50999.00,24999.00,'Amazon','2025-04-01'),(39,13,45999.00,23999.00,'Flipkart','2025-04-01'),(40,14,29990.00,20990.00,'Amazon','2025-04-02'),(41,15,29990.00,20990.00,'Flipkart','2025-04-02'),(42,7,83990.00,67990.00,'Amazon','2025-04-02'),(43,8,92990.00,69999.00,'Flipkart','2025-04-02'),(44,5,98170.00,78490.00,'Amazon','2025-04-02'),(45,6,96579.00,78900.00,'Flipkart','2025-04-02'),(46,1,79900.00,61400.00,'Amazon','2025-04-02'),(47,2,69900.00,64400.00,'Flipkart','2025-04-02'),(48,3,149999.00,84999.00,'Amazon','2025-04-02'),(49,4,149999.00,83990.00,'Flipkart','2025-04-02'),(50,12,50999.00,24999.00,'Amazon','2025-04-02'),(51,13,45999.00,23999.00,'Flipkart','2025-04-02'),(52,14,29990.00,20990.00,'Amazon','2025-04-03'),(53,15,29990.00,20990.00,'Flipkart','2025-04-03'),(54,7,83990.00,67990.00,'Amazon','2025-04-03'),(55,8,92990.00,69999.00,'Flipkart','2025-04-03'),(56,5,98170.00,78990.00,'Amazon','2025-04-03'),(57,6,96579.00,78900.00,'Flipkart','2025-04-03'),(58,1,79900.00,61400.00,'Amazon','2025-04-03'),(59,2,69900.00,64400.00,'Flipkart','2025-04-03'),(60,3,31999.00,95890.00,'Amazon','2025-04-03'),(61,4,149999.00,84990.00,'Flipkart','2025-04-03'),(62,12,50999.00,24999.00,'Amazon','2025-04-03'),(63,13,45999.00,23999.00,'Flipkart','2025-04-03'),(64,14,29990.00,20990.00,'Amazon','2025-04-04'),(65,15,29990.00,20990.00,'Flipkart','2025-04-04'),(66,7,83990.00,65990.00,'Amazon','2025-04-04'),(67,8,92990.00,69999.00,'Flipkart','2025-04-04'),(68,5,98170.00,78990.00,'Amazon','2025-04-04'),(69,6,96579.00,78900.00,'Flipkart','2025-04-04'),(70,1,79900.00,61400.00,'Amazon','2025-04-04'),(71,2,69900.00,64400.00,'Flipkart','2025-04-04'),(72,3,149999.00,84999.00,'Amazon','2025-04-04'),(73,4,149999.00,76949.00,'Flipkart','2025-04-04'),(74,12,50999.00,24999.00,'Amazon','2025-04-04'),(75,13,45999.00,23999.00,'Flipkart','2025-04-04'),(76,14,29990.00,20990.00,'Amazon','2025-04-05'),(77,15,29990.00,20990.00,'Flipkart','2025-04-05'),(78,7,83990.00,64990.00,'Amazon','2025-04-05'),(79,8,92990.00,69999.00,'Flipkart','2025-04-05'),(80,5,98170.00,78990.00,'Amazon','2025-04-05'),(81,6,96579.00,78900.00,'Flipkart','2025-04-05'),(82,1,79900.00,61400.00,'Amazon','2025-04-05'),(83,2,69900.00,64400.00,'Flipkart','2025-04-05'),(84,3,1299.00,91250.00,'Amazon','2025-04-05'),(85,4,149999.00,84999.00,'Flipkart','2025-04-05'),(86,12,50999.00,24999.00,'Amazon','2025-04-05'),(87,13,45999.00,23999.00,'Flipkart','2025-04-05'),(88,14,29990.00,22990.00,'Amazon','2025-04-09'),(89,15,29990.00,22990.00,'Flipkart','2025-04-09'),(90,7,83990.00,64990.00,'Amazon','2025-04-09'),(91,8,92990.00,69999.00,'Flipkart','2025-04-09'),(92,16,98170.00,76990.00,'Amazon','2025-04-09'),(93,6,96579.00,78900.00,'Flipkart','2025-04-09'),(94,1,79900.00,61400.00,'Amazon','2025-04-09'),(95,2,69900.00,64400.00,'Flipkart','2025-04-09'),(96,3,1099.50,92349.00,'Amazon','2025-04-09'),(97,4,149999.00,84990.00,'Flipkart','2025-04-09'),(98,12,50999.00,24999.00,'Amazon','2025-04-09'),(99,13,45999.00,37999.00,'Flipkart','2025-04-09'),(100,14,29990.00,22990.00,'Amazon','2025-04-10'),(101,15,29990.00,22990.00,'Flipkart','2025-04-10'),(102,7,83990.00,64990.00,'Amazon','2025-04-10'),(103,8,92990.00,69999.00,'Flipkart','2025-04-10'),(104,16,98170.00,76990.00,'Amazon','2025-04-10'),(105,6,96579.00,78900.00,'Flipkart','2025-04-10'),(106,1,79900.00,61400.00,'Amazon','2025-04-10'),(107,2,69900.00,64400.00,'Flipkart','2025-04-10'),(108,3,50999.00,91343.00,'Amazon','2025-04-10'),(109,4,149999.00,84990.00,'Flipkart','2025-04-10'),(110,12,50999.00,24999.00,'Amazon','2025-04-10'),(111,13,45999.00,37999.00,'Flipkart','2025-04-10'),(112,14,29990.00,22990.00,'Amazon','2025-04-13'),(113,15,29990.00,22990.00,'Flipkart','2025-04-13'),(114,7,83990.00,64990.00,'Amazon','2025-04-13'),(115,8,92990.00,69999.00,'Flipkart','2025-04-13'),(116,16,98170.00,78990.00,'Amazon','2025-04-13'),(117,6,96579.00,78900.00,'Flipkart','2025-04-13'),(118,1,79900.00,61400.00,'Amazon','2025-04-13'),(119,2,69900.00,64400.00,'Flipkart','2025-04-13'),(120,3,149999.00,89999.00,'Amazon','2025-04-13'),(121,4,149999.00,77999.00,'Flipkart','2025-04-13'),(122,12,50999.00,23249.00,'Amazon','2025-04-13'),(123,13,45999.00,23999.00,'Flipkart','2025-04-13'),(124,14,29990.00,22990.00,'Amazon','2025-04-14'),(125,15,29990.00,22990.00,'Flipkart','2025-04-14'),(126,7,83990.00,64990.00,'Amazon','2025-04-14'),(127,8,92990.00,69999.00,'Flipkart','2025-04-14'),(128,16,98170.00,78990.00,'Amazon','2025-04-14'),(129,6,96579.00,78900.00,'Flipkart','2025-04-14'),(130,1,79900.00,61390.00,'Amazon','2025-04-14'),(131,2,69900.00,64400.00,'Flipkart','2025-04-14'),(132,3,149999.00,89499.00,'Amazon','2025-04-14'),(133,4,149999.00,77999.00,'Flipkart','2025-04-14'),(134,12,50999.00,23249.00,'Amazon','2025-04-14'),(135,13,45999.00,39999.00,'Flipkart','2025-04-14'),(136,14,29990.00,22990.00,'Amazon','2025-04-16'),(137,15,29990.00,22990.00,'Flipkart','2025-04-16'),(138,7,83990.00,64990.00,'Amazon','2025-04-16'),(139,8,92990.00,69999.00,'Flipkart','2025-04-16'),(140,16,98170.00,78990.00,'Amazon','2025-04-16'),(141,6,96579.00,78900.00,'Flipkart','2025-04-16'),(142,1,79900.00,61390.00,'Amazon','2025-04-16'),(143,2,69900.00,64400.00,'Flipkart','2025-04-16'),(144,3,149999.00,89399.00,'Amazon','2025-04-16'),(145,4,149999.00,75990.00,'Flipkart','2025-04-16'),(146,12,50999.00,24999.00,'Amazon','2025-04-16'),(147,13,45999.00,23999.00,'Flipkart','2025-04-16'),(148,14,29990.00,22990.00,'Amazon','2025-04-17'),(149,15,29990.00,22990.00,'Flipkart','2025-04-17'),(150,17,83990.00,64990.00,'Amazon','2025-04-17'),(151,8,92990.00,54331.00,'Flipkart','2025-04-17'),(152,16,98170.00,78990.00,'Amazon','2025-04-17'),(153,6,96579.00,78900.00,'Flipkart','2025-04-17'),(154,1,79900.00,61390.00,'Amazon','2025-04-17'),(155,2,69900.00,64400.00,'Flipkart','2025-04-17'),(156,3,149999.00,89499.00,'Amazon','2025-04-17'),(157,4,149999.00,73738.00,'Flipkart','2025-04-17'),(158,12,50999.00,24999.00,'Amazon','2025-04-17'),(159,13,45999.00,23999.00,'Flipkart','2025-04-17'),(160,14,29990.00,20990.00,'Amazon','2025-04-19'),(161,15,29990.00,20990.00,'Flipkart','2025-04-19'),(162,17,83990.00,64900.00,'Amazon','2025-04-19'),(163,8,92990.00,54331.00,'Flipkart','2025-04-19'),(164,16,98170.00,78990.00,'Amazon','2025-04-19'),(165,6,96579.00,78900.00,'Flipkart','2025-04-19'),(166,1,79900.00,61390.00,'Amazon','2025-04-19'),(167,2,69900.00,64400.00,'Flipkart','2025-04-19'),(168,3,149999.00,84990.00,'Amazon','2025-04-19'),(169,4,149999.00,75989.00,'Flipkart','2025-04-19'),(170,12,50999.00,24999.00,'Amazon','2025-04-19'),(171,13,45999.00,23999.00,'Flipkart','2025-04-19'),(172,14,29990.00,20990.00,'Amazon','2025-04-19'),(173,17,83990.00,64400.00,'Amazon','2025-04-19'),(174,17,83990.00,64400.00,'Amazon','2025-04-19'),(175,17,83990.00,64400.00,'Amazon','2025-04-19'),(176,17,83990.00,64400.00,'Amazon','2025-04-19'),(177,17,83990.00,64400.00,'Amazon','2025-04-19');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `common_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Apple iPhone 15 (128 GB) - Black','Apple iPhone 15 128GB'),(2,'Apple iPhone 15 (Black, 128 GB)','Apple iPhone 15 128GB'),(3,'Samsung Galaxy S23 Ultra 5G AI Smartphone (Phantom Black, 12GB, 256GB Storage)','Samsung Galaxy S23 Ultra 256GB'),(4,'SAMSUNG Galaxy S23 Ultra 5G (Phantom Black, 256 GB)  (12 GB RAM)','Samsung Galaxy S23 Ultra 256GB'),(5,'HP Victus, 13th Gen Intel Core i5-13420H, 6GB NVIDIA RTX 4050, 16GB DDR4, 512GB SSD (Win11, Office 21, Silver, 2.29kg) 144Hz, 9MS, IPS, 15.6-inch(39.6cm) FHD Gaming Laptop, Enhanced Cooling, fa1319TX','hp victus gaming laptop'),(6,'HP Victus AMD Ryzen 5 Hexa Core 6600H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050) 16-e1062AX Gaming Laptop  (16.1 inch, Mica Silver, 2.48 kg, With MS Office)','hp victus gaming laptop'),(7,'ASUS TUF Gaming A15, AMD Ryzen 7 7435Hs, NVIDIA Geforce RTX 3050, 16GB RAM, 512GB SSD, FHD 144Hz, 15.6\", Windows 11, Graphite Black, 2.3KG, FA506NCR-HN054W, 48WHR Gaming Laptop','asus tuf a15 gaming laptop'),(8,'ASUS TUF GAMING A15 AMD Ryzen 7 Octa Core 4800H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce RTX 3050/144 Hz) FA506ICB-HN005W Gaming Laptop  (15.6 inch, Graphite Black, 2.3 kg)','asus tuf a15 gaming laptop'),(9,'Apple Watch Series 9 [GPS + Cellular 41mm] Smartwatch with Graphite Stainless steel Case with Midnight Sport Band M/L. Fitness Tracker,Blood Oxygen & ECG Apps, Always-On Retina Display,Water Resistant',NULL),(10,'Apple Watch Series 9 GPS 45mm Aluminium Case with Sport Band - S/M  (Midnight Strap, Free Size)',NULL),(11,'Apple Watch Series 9 GPS 45mm Midnight Aluminium Case with Midnight Sport Band - M/L  (Midnight Strap, Free Size)','samsung watch 6'),(12,'Samsung Galaxy Watch6 Classic LTE (47mm, Silver, Compatible with Android only) | Introducing BP & ECG Features','samsung watch 6'),(13,'SAMSUNG Galaxy Watch6 Classic LTE  (Silver Strap, 43mm)','samsung watch 6'),(14,'Sony WH-1000XM4 Industry Leading Wireless Noise Cancellation Bluetooth Over Ear Headphones with Mic for Phone Calls, 30 Hours Battery Life, Quick Charge, AUX, Touch Control and Voice Control - Black','sony headphone'),(15,'SONY WH-1000XM4 Bluetooth  (Black, On the Ear)','sony headphone'),(16,'HP Victus, 13th Gen Intel Core i5-13420H, 6GB NVIDIA RTX 4050, 16GB DDR4, 512GB SSD (Win11, Office 21, Mica Silver, 2.29kg) 144Hz, IPS, 15.6-inch(39.6cm) FHD Gaming Laptop, Enhanced Cooling, fa1319TX',NULL),(17,'ASUS TUF Gaming A15, AMD Ryzen 7 7435HS Gaming Laptop(NVIDIA RTX 3050-4GB/60W TGP/16GB RAM/512GB SSD/FHD/15.6\"/144Hz/RGB KB/48WHr/Windows 11//Graphite Black/2.30 Kg) FA506NCR-HN054W',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sorted_tb`
--

DROP TABLE IF EXISTS `sorted_tb`;
/*!50001 DROP VIEW IF EXISTS `sorted_tb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sorted_tb` AS SELECT 
 1 AS `product_id`,
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_apple_iphone_15_128gb`
--

DROP TABLE IF EXISTS `view_apple_iphone_15_128gb`;
/*!50001 DROP VIEW IF EXISTS `view_apple_iphone_15_128gb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_apple_iphone_15_128gb` AS SELECT 
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_asus_tuf_a15_gaming_laptop`
--

DROP TABLE IF EXISTS `view_asus_tuf_a15_gaming_laptop`;
/*!50001 DROP VIEW IF EXISTS `view_asus_tuf_a15_gaming_laptop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_asus_tuf_a15_gaming_laptop` AS SELECT 
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_hp_victus_gaming_laptop`
--

DROP TABLE IF EXISTS `view_hp_victus_gaming_laptop`;
/*!50001 DROP VIEW IF EXISTS `view_hp_victus_gaming_laptop`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_hp_victus_gaming_laptop` AS SELECT 
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_samsung_galaxy_s23_ultra_256gb`
--

DROP TABLE IF EXISTS `view_samsung_galaxy_s23_ultra_256gb`;
/*!50001 DROP VIEW IF EXISTS `view_samsung_galaxy_s23_ultra_256gb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_samsung_galaxy_s23_ultra_256gb` AS SELECT 
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_samsung_watch_6`
--

DROP TABLE IF EXISTS `view_samsung_watch_6`;
/*!50001 DROP VIEW IF EXISTS `view_samsung_watch_6`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_samsung_watch_6` AS SELECT 
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_sony_headphone`
--

DROP TABLE IF EXISTS `view_sony_headphone`;
/*!50001 DROP VIEW IF EXISTS `view_sony_headphone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_sony_headphone` AS SELECT 
 1 AS `common_name`,
 1 AS `original_price`,
 1 AS `current_price`,
 1 AS `source`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sorted_tb`
--

/*!50001 DROP VIEW IF EXISTS `sorted_tb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sorted_tb` AS select `p`.`product_id` AS `product_id`,`pr`.`common_name` AS `common_name`,`p`.`original_price` AS `original_price`,`p`.`current_price` AS `current_price`,`p`.`source` AS `source`,`p`.`date` AS `date` from (`prices` `p` join `products` `pr` on((`p`.`product_id` = `pr`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_apple_iphone_15_128gb`
--

/*!50001 DROP VIEW IF EXISTS `view_apple_iphone_15_128gb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_apple_iphone_15_128gb` AS select `sorted_tb`.`common_name` AS `common_name`,`sorted_tb`.`original_price` AS `original_price`,`sorted_tb`.`current_price` AS `current_price`,`sorted_tb`.`source` AS `source`,`sorted_tb`.`date` AS `date` from `sorted_tb` where (`sorted_tb`.`common_name` = 'Apple iPhone 15 128GB') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_asus_tuf_a15_gaming_laptop`
--

/*!50001 DROP VIEW IF EXISTS `view_asus_tuf_a15_gaming_laptop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_asus_tuf_a15_gaming_laptop` AS select `sorted_tb`.`common_name` AS `common_name`,`sorted_tb`.`original_price` AS `original_price`,`sorted_tb`.`current_price` AS `current_price`,`sorted_tb`.`source` AS `source`,`sorted_tb`.`date` AS `date` from `sorted_tb` where (`sorted_tb`.`common_name` = 'asus tuf a15 gaming laptop') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_hp_victus_gaming_laptop`
--

/*!50001 DROP VIEW IF EXISTS `view_hp_victus_gaming_laptop`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_hp_victus_gaming_laptop` AS select `sorted_tb`.`common_name` AS `common_name`,`sorted_tb`.`original_price` AS `original_price`,`sorted_tb`.`current_price` AS `current_price`,`sorted_tb`.`source` AS `source`,`sorted_tb`.`date` AS `date` from `sorted_tb` where (`sorted_tb`.`common_name` = 'hp victus gaming laptop') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_samsung_galaxy_s23_ultra_256gb`
--

/*!50001 DROP VIEW IF EXISTS `view_samsung_galaxy_s23_ultra_256gb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_samsung_galaxy_s23_ultra_256gb` AS select `sorted_tb`.`common_name` AS `common_name`,`sorted_tb`.`original_price` AS `original_price`,`sorted_tb`.`current_price` AS `current_price`,`sorted_tb`.`source` AS `source`,`sorted_tb`.`date` AS `date` from `sorted_tb` where (`sorted_tb`.`common_name` = 'Samsung Galaxy S23 Ultra 256GB') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_samsung_watch_6`
--

/*!50001 DROP VIEW IF EXISTS `view_samsung_watch_6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_samsung_watch_6` AS select `sorted_tb`.`common_name` AS `common_name`,`sorted_tb`.`original_price` AS `original_price`,`sorted_tb`.`current_price` AS `current_price`,`sorted_tb`.`source` AS `source`,`sorted_tb`.`date` AS `date` from `sorted_tb` where (`sorted_tb`.`common_name` = 'samsung watch 6') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_sony_headphone`
--

/*!50001 DROP VIEW IF EXISTS `view_sony_headphone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_sony_headphone` AS select `sorted_tb`.`common_name` AS `common_name`,`sorted_tb`.`original_price` AS `original_price`,`sorted_tb`.`current_price` AS `current_price`,`sorted_tb`.`source` AS `source`,`sorted_tb`.`date` AS `date` from `sorted_tb` where (`sorted_tb`.`common_name` = 'sony headphone') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-19 19:15:31
