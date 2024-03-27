-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: crs
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.23.10.1

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
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaint` (
  `id` int NOT NULL,
  `address` varchar(255) NOT NULL,
  `assigned_engineer` varchar(255) DEFAULT NULL,
  `complaint` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `pin_code` int NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `is_assigned` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaint`
--

LOCK TABLES `complaint` WRITE;
/*!40000 ALTER TABLE `complaint` DISABLE KEYS */;
INSERT INTO `complaint` VALUES (78,'2119, Near RadhaSwami Satsang, South-West Delhi','Engineer-1@110005','Unable to make a call','9857484564','Feb 12, 2023','Aditi',_binary '','Trivedi',110004,'Assigned to Engineer','New Delhi','RAISED','customer8_110004@abc.com',_binary ''),(106,'kn,','ramukaka17','Unable to make a call','1234567890','Feb 18, 2024','ramu',_binary '\0','kaka16',123456,'hgfd','mh','RESOLVED','ramukaka16',_binary ''),(107,'kn,','ramukaka17','Phone dead','1234567890','Feb 18, 2024','ramu',_binary '\0','kaka16',123456,'lkjhg','mh','RESOLVED','ramukaka16',_binary ''),(108,'srthg','ramukaka17','Slow broadband speed','1234567890','Feb 18, 2024','ramu',_binary '\0','kaka16',123456,'lkjhg','mh','RESOLVED','ramukaka16',_binary ''),(109,'srthg','ramukaka17','Unable to receive a call','1234567890','Feb 18, 2024','ramu',_binary '\0','kaka16',123456,'jhgfcx','mh','RESOLVED','ramukaka16',_binary ''),(110,'kn,','Engineer-1@110005','Unable to receive a call','1234567890','Feb 19, 2024','ramu',_binary '','kaka16',123456,'Assigned to Engineer','mh','RAISED','ramukaka16',_binary ''),(112,'srthg','Engineer-1@110005','Phone dead','1234567890','Feb 19, 2024','ramu',_binary '','kaka16',123456,'Assigned to Engineer','mh','RAISED','ramukaka16',_binary ''),(113,'srthg','ramukaka17','Noisy voice','1234567890','Feb 19, 2024','ramu',_binary '','kaka16',123456,'Assigned to Engineer','mh','RAISED','ramukaka16',_binary ''),(114,'kn,','Engineer-1@110005','Slow broadband speed','1234567890','Feb 19, 2024','ramu',_binary '','kaka16',123456,'Assigned to Engineer','mh','RAISED','ramukaka16',_binary ''),(115,'srthg',NULL,'Unable to make a call','1234567890','Feb 19, 2024','ramu',_binary '','kaka16',123455,'Ticket Raised.','mh','RAISED','ramukaka16',_binary '\0'),(120,'nanded',NULL,'Unable to receive a call','12345677890','Mar 13, 2024','Subodh',_binary '','Athavale',431605,'Ticket Raised.','MH','RAISED','Subodh@gmail.com',_binary '\0');
/*!40000 ALTER TABLE `complaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `fid` int NOT NULL,
  `cid` int NOT NULL,
  `complaint` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (40,38,'Noisy voice','Good customer service.','customer16_110005@abc.com'),(41,36,'Unable to make a call','Thanks for resolving my issue.','customer16_110005@abc.com'),(42,37,'Unable to receive a call','I am satisfied with your complaint redressal system.','customer16_110005@abc.com'),(44,43,'Unable to make a call','Please improve your network connection.','customer16_110005@abc.com'),(46,45,'Slow broadband speed','Thanks for resolving my issue.','customer16_110005@abc.com'),(48,47,'No signal','Good Service.','customer14_110005@abc.com'),(72,71,'Unable to make a call','Kindly improve your network connectivity.','customer14_110002@abc.com'),(74,73,'Slow broadband speed','Thanks for your support. My issue is resolved.','customer8_110004@abc.com'),(105,100,'Unable to receive a call',NULL,'ramukaka16'),(111,106,'Unable to make a call','gfd','ramukaka16');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (121);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (101,'ADMIN'),(102,'CUSTOMER'),(104,'MANAGER'),(106,'ENGINEER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` int NOT NULL,
  `role_role_id` int DEFAULT NULL,
  `user_user_id` int DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK7u21823ktfhu9bmx2350x6n8s` (`role_role_id`),
  KEY `FK8gqp8vkivwjo8us69ct7b35vl` (`user_user_id`),
  CONSTRAINT `FK7u21823ktfhu9bmx2350x6n8s` FOREIGN KEY (`role_role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `FK8gqp8vkivwjo8us69ct7b35vl` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (2,101,1),(10,106,9),(82,101,81),(84,102,83),(86,104,85),(90,104,89),(92,102,91),(95,102,94),(97,106,96),(99,104,98),(117,102,116),(119,102,118);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pin_code` int NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2020bcs008@gmail.com',_binary '','Chaitanya','Talware','$2a$10$J5F5f5u/2VmVV/Uo4IGupeiN7VJmJ6mTmLSgAkiLLhOxvkz.MMzm.','+919158947001',110001,'ADMIN','2020bcs008@gmail.com'),(9,'sushant@gmail.com',_binary '','Sushant','Joshi','$2a$10$b4rHsdTpp7RgTTSuNSmZPOu/35L6YsyR/WfKreNga4uX/v3xc2JAq','9854679856',431605,'ENGINEER','Engineer-1@110005'),(81,'twarit.soni@gmail.com',_binary '','Twarit','Soni','$2a$10$KvL9X64ZQvdTvCGzPAmIveRZcUQI0gyX5TeaIoZHJ2yrihxvsWy..','+916265458854',110001,'ADMIN','crs-admin@abc.com'),(83,'ramu@gmail.com',_binary '','ramu','kaka','$2a$10$XZrr0UUX1d0xa73Hw4R0EOM/2AXvinYSn95AnQS2hpVbozkxQaMJe','1234567890',123456,'CUSTOMER','ramukaka'),(85,'ramu2@gmail.com',_binary '','ramu','kaka2','$2a$10$xIBO7HP.jPNhueNN2O2.v.4BK0oFQo/D29JQQQbsSJYkuYQxEosRC','1234567890',123456,'MANAGER','ramukaka2'),(89,'ramu6@gmail.com',_binary '','ramu','kaka6','$2a$10$Vtkbfp0d6bqHHmuUlg72Lud0T9Ofzun1rIZv7MVeL7KFx4lD5rWXO','1234567890',123456,'MANAGER','ramukaka6'),(91,'ramu7@gmail.com',_binary '','ramu','kaka7','$2a$10$APFLYNWG37VxTdMzy19E7uzhDOYGEtbKumz3Sv9uU/EjXsGYmHYDq','1234567890',123456,'CUSTOMER','ramukaka7'),(94,'ramu16@gmail.com',_binary '','ramu','kaka16','$2a$10$idPfODPoXX8am.Xlv2dfI.ubi.2zuZKsKIPmkWHvUfU6H8kAQ/bWW','1234567890',123456,'CUSTOMER','ramukaka16'),(96,'ramu17@gmail.com',_binary '','ramu','kaka17','$2a$10$8Fsq/QQl/f9nFLUJCnDKGeg26mdYFqQ5UtaBCnYaIAi8vIvk291Hi','1234567890',123456,'ENGINEER','ramukaka17'),(98,'ramu18@gmail.com',_binary '','ramu','kaka18','$2a$10$wPa7LfvDRzxufcTkLy.33.DSiiYJvU9kQrBc.yNaXYNytQxrwRBwC','1234567890',123456,'MANAGER','ramukaka18'),(116,'2020bcs0088@gmail.com',_binary '','dfghj','hhjkkl','$2a$10$pR5jex5MTjL5gyfnH16xke9LQLa7n4Pt2haiXfLztB0jaY1nsbHVe','12333333333444',123456,'CUSTOMER','2020bcs0088@gmail.com'),(118,'Subodh@gmail.com',_binary '','Subodh','Athavale','$2a$10$d3Tosw2S.MaPhpieBPlREeozDC3wZI7PCve2h31O3xgK14/OXU6n.','12345677890',431606,'CUSTOMER','Subodh@gmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 21:30:34
