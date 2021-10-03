-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `accommodation_list`
--

DROP TABLE IF EXISTS `accommodation_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accommodation_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `guest` int NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlaof2nqfky3nxkrnblir6rdt3` (`address_id`),
  KEY `FK6a290ypclr1mh4g5yocws9jqf` (`user_id`),
  CONSTRAINT `FK6a290ypclr1mh4g5yocws9jqf` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKlaof2nqfky3nxkrnblir6rdt3` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_list`
--

LOCK TABLES `accommodation_list` WRITE;
/*!40000 ALTER TABLE `accommodation_list` DISABLE KEYS */;
INSERT INTO `accommodation_list` VALUES (1,_binary '','Experience a warm and cozy stay in the suburbs of Mumbai.Across the street is FoodHall a fully equipped supermarket for all your basic needs. Situated on main Linking road in the center of Santacruz,Bandra West.',2,'Mumbai',3000,'535ae39e8e06418aab4e94d4ac77bfe4','MoonStone Villa','Viila',1,3),(2,_binary '','Looking for a special place to come stay in the Great Smoky Mountains.Great Smoky Mountains National Park on almost 2 acres of land.You are just moments from fishing,hiking,tubing,golfing and horseback riding.',3,'Banglore',2500,'bb2ac775c9794ad094f396b9cc507f9f','Hill Top Paradise','Tree House',2,3),(3,_binary '','1 KING BED WITH CITY VIEW\nAverage 360 square feet.Separate workspace and relaxing chair.Oversized windows with city views',2,'Panaji',8400,'49b761116cb3465fa26f07d549061679','Queen\'s Luxury Cruise','Cruise',3,5),(4,_binary '\0','Pine view Hotels has been serving the souls in search of eternal peace for two decades now Our philosophy of value hospitality has found flavors with people from all walks of life The Resort is located in the paradise of North Kashmir at Main Town Gulmarg',4,'Gulmarg',6300,'ed0ddd5b09e34e4e94f5e573fe767171','Hotel Gulmarg','Hotel',4,5),(5,_binary '','The House is located upstairs 2nd floor as separate entrance as an individual house and privacy. It is simply furnished with air-conditioned rooms, having a common balcony and an open terrace with artificial grass lawn seating area and work desk.',2,'Kochi',1000,'ba0efed6a0d342d9a6c5a47f5ff50359','Sunshine Garden Home','Bunglow',5,8);
/*!40000 ALTER TABLE `accommodation_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` int NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Bandra West Central Station ','Near Tata Motors Showroom','Mumbai',430004,'Maharashtra'),(2,'Banglore Bakery street','Near malabar Gold and Diamonds HeadOffice','Banglore',520002,'Karnataka'),(3,'Panaji River Dam','Cricket Stadium,Goa','Panaji',440010,'Goa'),(4,'Gulmarg white house','Gul Street View','Gulmarg',700011,'Kashmir'),(5,'The St.Peter Church ','Near Coffee Farm ','Kochi',621400,'Kerala');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `approval_status` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `id_proof` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,NULL,'1995-06-22','pratiksha@gmail.com','Pratiksha','12416378100','Gacche','$2a$10$liuC9fHKh3icOqBr/FD3zeLyD3WLbEPj4kIjCjirnnLz9Y8NHJG/.','8830297817','user'),(2,NULL,'1996-01-10','pratik@gmail.com','Pratik','95478123645','Khairnar','$2a$10$V7Vj3VPUbjeFx9XXWmk.xOsuOZEdM.qBmBc/gMv7aIKrozeOd1ww2','7757964844','user'),(3,NULL,'1997-09-18','komal@gmail.com','Komal','45678123657','Gaidhani','$2a$10$Gqz/aHJcTXleWXtwW3Io5uHgFay5KHHaCbaibeWOZKKTuCT6EhHJu','8698444372','host'),(4,NULL,'1996-04-23','shubham@gmail.com','Shubham','654782233445','Khelkar','$2a$10$jVMeFhaYlM2C6guzsrdDZO0u23n0kDyM1i3Z4PmMiPD.4fc/CdJdO','9860816506','user'),(5,'approved','1991-10-26','kartik@gmail.com','Kartik','77554441245','Goenka','$2a$10$mItNxoCPosTlgR67QoGfKuyUE/Mi/z3xZQTJCxjG5ajX5RpwbCXIy','9988774455','host'),(6,NULL,'2012-12-12','admin@gmail.com','Admin','15478296354','Admin','$2a$10$m7Bhciv4W1BB0epl5j2CfOJ.pVo3VUFmF9zZW0K5hC5VSzT76VVqe','8745962145','admin'),(7,NULL,'1989-10-28','ran@gmail.com','Ranbeer','25478296457','Kappor','$2a$10$B4SmNd8B.ERTYh5IKFK1.OwlAOb3U6utD/Hb5eTTrhybPZENbcUgm','7899621478','user'),(8,'approved','1993-03-23','aalu@gmail.com','Alia','52416378921','Bhatt','$2a$10$G7ZyXw0PnfQsPBRpInVXne0l/0855rSJGM2HnazQ/lAiLtpfBCWYK','9859621452','host'),(9,NULL,'1986-07-16','kat@gmail.com','Katrina','32416378145','Kaif','$2a$10$5mNks0a1yBkuS9PuDNCs/eAEhkkfr0EZQ0iPOFxea.Z4ssqdpzmre','7759621145','user'),(10,NULL,'1992-05-01','kiara@gmail.com','Kiara','12416378100','Advani','$2a$10$OFsr.Ey7Ojpy0zSLbP9the3LmL9O/tvG0pnSiS7qsyD8TxwYG9KGW','8759621245','user'),(11,NULL,'1998-09-22','neeraj@gmail.com','Neeraj','14785236489','Chopra','$2a$10$kdUnnjEkWDMrkibNpNBgS.T1tjVw45qXxsSxrt08uKPifv9gFwTx.','9966221453','user');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `order_amount` float NOT NULL,
  `payment_status` bit(1) NOT NULL,
  `acco_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlvt7ttggqyir4yuetqprurcxo` (`acco_id`),
  KEY `FKf31jqtsy70cb3p4nqysbv8s2v` (`user_id`),
  CONSTRAINT `FKf31jqtsy70cb3p4nqysbv8s2v` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKlvt7ttggqyir4yuetqprurcxo` FOREIGN KEY (`acco_id`) REFERENCES `accommodation_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-09-22','2021-09-24','2021-09-21 12:53:11.090280',6000,_binary '',1,8),(2,'2021-09-22','2021-09-30','2021-09-22 15:38:48.474660',0,_binary '\0',5,10),(3,'2021-09-22','2021-09-25','2021-09-22 15:39:35.262571',18900,_binary '',4,10);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pay_method` varchar(255) DEFAULT NULL,
  `payment_amount` float NOT NULL,
  `created_timestamp` datetime(6) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK81gagumt0r8y3rmudcgpbk42l` (`order_id`),
  CONSTRAINT `FK81gagumt0r8y3rmudcgpbk42l` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'Card',6000,NULL,1),(2,'Net Banking',18900,NULL,3);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `review_date` datetime(6) DEFAULT NULL,
  `review_text` varchar(255) DEFAULT NULL,
  `acco_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh7lma75wrfbsgpvwo052r51jw` (`acco_id`),
  KEY `FK2wdccnlffwil177f5bb8i5mca` (`user_id`),
  CONSTRAINT `FK2wdccnlffwil177f5bb8i5mca` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `FKh7lma75wrfbsgpvwo052r51jw` FOREIGN KEY (`acco_id`) REFERENCES `accommodation_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (2,5,'2021-09-22 16:12:17.330229','Everything is perfect-The location-Top Notch',4,10);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-24 21:13:09
