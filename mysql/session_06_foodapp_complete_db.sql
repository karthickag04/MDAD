-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 192.168.29.244    Database: foodapp
-- ------------------------------------------------------
-- Server version	8.0.37

drop database if exists foodapp1;
create database foodapp1;
use foodapp1;


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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('SuperAdmin','Manager','Support') NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Alice Johnson','alice@example.com','hashedpassword1','SuperAdmin','2024-07-25 10:10:22'),(2,'Bob Smith','bob@example.com','hashedpassword2','Support','2024-07-25 10:10:22'),(3,'Charlie Davis','davis@example.com','hashedpassword3','Manager','2024-07-25 10:10:22'),(4,'Diana Wilson','wilson@example.com','hashedpassword4','Support','2024-07-25 10:10:22'),(5,'Edward Harris','harris@example.com','hashedpassword5','SuperAdmin','2024-07-25 10:10:22'),(6,'Fiona Lee','lee@example.com','hashedpassword6','Manager','2024-07-25 10:10:22'),(7,'George Walker','walker@example.com','hashedpassword7','Support','2024-07-25 10:10:22'),(8,'Hannah Green','green@example.com','hashedpassword8','SuperAdmin','2024-07-25 10:10:22'),(9,'Ian Clark','clark@example.com','hashedpassword9','Manager','2024-07-25 10:10:22'),(10,'Jane White','white@example.com','hashedpassword10','Support','2024-07-25 10:10:22'),(21,'Alice Johnson','alice.johnson@example.com','hashedpassword1','SuperAdmin','2024-07-25 06:35:19'),(22,'Bob Smith','bob.smith@example.com','hashedpassword2','Support','2024-07-25 06:35:19'),(23,'Charlie Davis','charlie.davis@example.com','hashedpassword3','Manager','2024-07-25 06:35:19'),(24,'Diana Wilson','diana.wilson@example.com','hashedpassword4','Support','2024-07-25 06:35:19'),(25,'Edward Harris','edward.harris@example.com','hashedpassword5','SuperAdmin','2024-07-25 06:35:19'),(26,'Fiona Lee','fiona.lee@example.com','hashedpassword6','Manager','2024-07-25 06:35:19'),(27,'George Walker','george.walker@example.com','hashedpassword7','Support','2024-07-25 06:35:19'),(28,'Hannah Green','hannah.green@example.com','hashedpassword8','SuperAdmin','2024-07-25 06:35:19'),(29,'Ian Clark','ian.clark@example.com','hashedpassword9','Manager','2024-07-25 06:35:19'),(30,'Jane White','jane.white@example.com','hashedpassword10','Support','2024-07-25 06:35:19');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditlogs`
--

DROP TABLE IF EXISTS `auditlogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditlogs` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `auditlogs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlogs`
--

LOCK TABLES `auditlogs` WRITE;
/*!40000 ALTER TABLE `auditlogs` DISABLE KEYS */;
INSERT INTO `auditlogs` VALUES (11,21,'Created a new user account','2024-07-25 06:37:57'),(12,22,'Updated user permissions','2024-07-25 06:37:57'),(13,23,'Deleted a user account','2024-07-25 06:37:57'),(14,24,'Reviewed security logs','2024-07-25 06:37:57'),(15,25,'Reset user password','2024-07-25 06:37:57'),(16,26,'Changed site settings','2024-07-25 06:37:57'),(17,27,'Updated profile information','2024-07-25 06:37:57'),(18,28,'Reviewed audit logs','2024-07-25 06:37:57'),(19,29,'Managed user roles','2024-07-25 06:37:57'),(20,30,'Deleted audit logs','2024-07-25 06:37:57');
/*!40000 ALTER TABLE `auditlogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatsupport`
--

DROP TABLE IF EXISTS `chatsupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatsupport` (
  `chat_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int DEFAULT NULL,
  `user_type` enum('Customer','Partner','Admin') DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `chatsupport_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatsupport`
--

LOCK TABLES `chatsupport` WRITE;
/*!40000 ALTER TABLE `chatsupport` DISABLE KEYS */;
INSERT INTO `chatsupport` VALUES (1,1,'Customer','How can I reset my password?','2024-07-25 10:44:57'),(2,2,'Customer','What is the delivery time?','2024-07-25 10:44:57'),(3,3,'Customer','I need to change my address.','2024-07-25 10:44:57'),(4,4,'Customer','Where is my order?','2024-07-25 10:44:57'),(5,5,'Partner','How do I update my menu?','2024-07-25 10:44:57'),(6,6,'Partner','Can I change my delivery hours?','2024-07-25 10:44:57'),(7,7,'Partner','How do I get more orders?','2024-07-25 10:44:57'),(8,8,'Partner','What is the commission rate?','2024-07-25 10:44:57'),(9,21,'Admin','Please approve the new user registrations.','2024-07-25 10:44:57'),(10,22,'Admin','There is an issue with the payment gateway.','2024-07-25 10:44:57');
/*!40000 ALTER TABLE `chatsupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporateaccounts`
--

DROP TABLE IF EXISTS `corporateaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporateaccounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `billing_address` text NOT NULL,
  `credit_limit` decimal(10,2) DEFAULT '0.00',
  `current_balance` decimal(10,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `company_email` (`company_email`),
  UNIQUE KEY `contact_phone` (`contact_phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporateaccounts`
--

LOCK TABLES `corporateaccounts` WRITE;
/*!40000 ALTER TABLE `corporateaccounts` DISABLE KEYS */;
INSERT INTO `corporateaccounts` VALUES (1,'Tech Innovations Inc.','info@techinnovations.com','Alice Johnson','123-456-7890','456 Tech Lane, Silicon Valley, CA 94043',50000.00,12000.00,'2024-07-25 09:49:17'),(2,'Green Solutions Ltd.','contact@greensolutions.com','Bob Smith','234-567-8901','789 Green St, Portland, OR 97201',30000.00,8000.00,'2024-07-25 09:49:17'),(3,'MediCare Solutions','support@medicaresolutions.com','Charlie Davis','345-678-9012','101 Health Ave, New York, NY 10001',25000.00,15000.00,'2024-07-25 09:49:17'),(4,'Retail Hub LLC','info@retailhub.com','Diana Wilson','456-789-0123','202 Commerce Dr, Chicago, IL 60614',40000.00,5000.00,'2024-07-25 09:49:17'),(5,'EduTech Systems','hello@edutechsystems.com','Edward Harris','567-890-1234','303 Edu Lane, Boston, MA 02108',15000.00,3000.00,'2024-07-25 09:49:17'),(6,'AutoWorld Corp.','info@autoworldcorp.com','Fiona Lee','678-901-2345','404 Auto Blvd, Detroit, MI 48201',60000.00,22000.00,'2024-07-25 09:49:17'),(7,'Home & Living Inc.','contact@homeandliving.com','George Walker','789-012-3456','505 Living St, Austin, TX 73301',35000.00,7000.00,'2024-07-25 09:49:17'),(8,'BuildIt Construction','support@buildit.com','Hannah Green','890-123-4567','606 Build Rd, Denver, CO 80202',45000.00,12000.00,'2024-07-25 09:49:17'),(9,'FinTech Solutions','info@fintechsolutions.com','Ian Clark','901-234-5678','707 Finance Blvd, San Francisco, CA 94105',55000.00,3000.00,'2024-07-25 09:49:17'),(10,'Global Services Ltd.','contact@globalservices.com','Jane White','012-345-6789','808 Global St, Seattle, WA 98101',70000.00,35000.00,'2024-07-25 09:49:17');
/*!40000 ALTER TABLE `corporateaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corporateorders`
--

DROP TABLE IF EXISTS `corporateorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corporateorders` (
  `corporate_order_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `billing_status` enum('Pending','Billed','Paid') DEFAULT 'Pending',
  PRIMARY KEY (`corporate_order_id`),
  KEY `account_id` (`account_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `corporateorders_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `corporateaccounts` (`account_id`),
  CONSTRAINT `corporateorders_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corporateorders`
--

LOCK TABLES `corporateorders` WRITE;
/*!40000 ALTER TABLE `corporateorders` DISABLE KEYS */;
INSERT INTO `corporateorders` VALUES (1,1,1,'Pending'),(2,2,2,'Billed'),(3,3,3,'Paid'),(4,4,4,'Pending'),(5,5,5,'Billed'),(6,6,6,'Paid'),(7,7,7,'Pending'),(8,8,8,'Billed'),(9,9,9,'Paid'),(10,10,10,'Pending');
/*!40000 ALTER TABLE `corporateorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_registration`
--

DROP TABLE IF EXISTS `customer_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_registration` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_registration`
--

LOCK TABLES `customer_registration` WRITE;
/*!40000 ALTER TABLE `customer_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customeraddresses`
--

DROP TABLE IF EXISTS `customeraddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customeraddresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `label` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customeraddresses_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customeraddresses`
--

LOCK TABLES `customeraddresses` WRITE;
/*!40000 ALTER TABLE `customeraddresses` DISABLE KEYS */;
INSERT INTO `customeraddresses` VALUES (1,1,'Home','123 Main St, Springfield, IL 62701',39.781700,-89.650100,1,'2024-07-25 06:40:43'),(2,2,'Work','456 Elm St, Springfield, IL 62701',39.782000,-89.651000,0,'2024-07-25 06:40:43'),(3,3,'Home','789 Oak St, Springfield, IL 62701',39.782500,-89.652000,1,'2024-07-25 06:40:43'),(4,4,'Work','101 Pine St, Springfield, IL 62701',39.783000,-89.653000,0,'2024-07-25 06:40:43'),(5,5,'Home','202 Maple St, Springfield, IL 62701',39.783500,-89.654000,1,'2024-07-25 06:40:43'),(6,6,'Home','303 Cedar St, Springfield, IL 62701',39.784000,-89.655000,1,'2024-07-25 06:40:43'),(7,7,'Work','404 Birch St, Springfield, IL 62701',39.784500,-89.656000,0,'2024-07-25 06:40:43'),(8,8,'Home','505 Walnut St, Springfield, IL 62701',39.785000,-89.657000,1,'2024-07-25 06:40:43'),(9,9,'Work','606 Chestnut St, Springfield, IL 62701',39.785500,-89.658000,0,'2024-07-25 06:40:43'),(10,10,'Home','707 Redwood St, Springfield, IL 62701',39.786000,-89.659000,1,'2024-07-25 06:40:43');
/*!40000 ALTER TABLE `customeraddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerpreferences`
--

DROP TABLE IF EXISTS `customerpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerpreferences` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `cuisine_preferences` text,
  `dietary_restrictions` text,
  `payment_preferences` text,
  PRIMARY KEY (`preference_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customerpreferences_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpreferences`
--

LOCK TABLES `customerpreferences` WRITE;
/*!40000 ALTER TABLE `customerpreferences` DISABLE KEYS */;
INSERT INTO `customerpreferences` VALUES (1,1,'Italian, Mexican','Vegetarian','Credit Card'),(2,2,'Chinese, Indian','Gluten-Free','PayPal'),(3,3,'American','None','Debit Card'),(4,4,'Japanese, Korean','Vegan','Cash'),(5,5,'Thai','Nut Allergy','Credit Card'),(6,6,'Mediterranean','None','PayPal'),(7,7,'French','Dairy-Free','Debit Card'),(8,8,'Spanish','None','Cash'),(9,9,'Indian','Halal','Credit Card'),(10,10,'Greek','None','PayPal');
/*!40000 ALTER TABLE `customerpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `loyalty_points` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alice Johnson','alice.johnson@example.com','555-0101','123 Elm Street, Springfield','hashed_password1',150,'2024-07-25 06:13:14'),(2,'Bob Smith','bob.smith@example.com','555-0102','456 Oak Avenue, Springfield','hashed_password2',200,'2024-07-25 06:13:14'),(3,'Charlie Brown','charlie.brown@example.com','555-0103','789 Pine Road, Springfield','hashed_password3',250,'2024-07-25 06:13:14'),(4,'David Wilson','david.wilson@example.com','555-0104','101 Maple Street, Springfield','hashed_password4',100,'2024-07-25 06:13:14'),(5,'Eva Davis','eva.davis@example.com','555-0105','202 Birch Lane, Springfield','hashed_password5',300,'2024-07-25 06:13:14'),(6,'Fiona Martinez','fiona.martinez@example.com','555-0106','303 Cedar Drive, Springfield','hashed_password6',180,'2024-07-25 06:13:14'),(7,'George Lee','george.lee@example.com','555-0107','404 Spruce Avenue, Springfield','hashed_password7',120,'2024-07-25 06:13:14'),(8,'Hannah Clark','hannah.clark@example.com','555-0108','505 Fir Street, Springfield','hashed_password8',220,'2024-07-25 06:13:14'),(9,'Ivy Adams','ivy.adams@example.com','555-0109','606 Redwood Road, Springfield','hashed_password9',170,'2024-07-25 06:13:14'),(10,'Jack Taylor','jack.taylor@example.com','555-0110','707 Willow Way, Springfield','hashed_password10',90,'2024-07-25 06:13:14');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverypersonnel`
--

DROP TABLE IF EXISTS `deliverypersonnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverypersonnel` (
  `personnel_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`personnel_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverypersonnel`
--

LOCK TABLES `deliverypersonnel` WRITE;
/*!40000 ALTER TABLE `deliverypersonnel` DISABLE KEYS */;
INSERT INTO `deliverypersonnel` VALUES (1,'John Doe','john.doe@example.com','123-456-7890','XYZ 1234','2024-07-25 06:29:52'),(2,'Jane Smith','jane.smith@example.com','234-567-8901','ABC 5678','2024-07-25 06:29:52'),(3,'Sam Wilson','sam.wilson@example.com','345-678-9012','LMN 9101','2024-07-25 06:29:52'),(4,'Lisa Brown','lisa.brown@example.com','456-789-0123','OPQ 2345','2024-07-25 06:29:52'),(5,'Mike Johnson','mike.johnson@example.com','567-890-1234','RST 6789','2024-07-25 06:29:52'),(6,'Emma Davis','emma.davis@example.com','678-901-2345','UVW 3456','2024-07-25 06:29:52'),(7,'Olivia Moore','olivia.moore@example.com','789-012-3456','XYZ 7890','2024-07-25 06:29:52'),(8,'Liam Taylor','liam.taylor@example.com','890-123-4567','ABC 3456','2024-07-25 06:29:52'),(9,'Noah Anderson','noah.anderson@example.com','901-234-5678','LMN 6789','2024-07-25 06:29:52'),(10,'Ava Thomas','ava.thomas@example.com','012-345-6789','OPQ 7890','2024-07-25 06:29:52');
/*!40000 ALTER TABLE `deliverypersonnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driverperformance`
--

DROP TABLE IF EXISTS `driverperformance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driverperformance` (
  `performance_id` int NOT NULL AUTO_INCREMENT,
  `personnel_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `feedback` text,
  `on_time` tinyint(1) DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`performance_id`),
  KEY `personnel_id` (`personnel_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `driverperformance_ibfk_1` FOREIGN KEY (`personnel_id`) REFERENCES `deliverypersonnel` (`personnel_id`),
  CONSTRAINT `driverperformance_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `driverperformance_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driverperformance`
--

LOCK TABLES `driverperformance` WRITE;
/*!40000 ALTER TABLE `driverperformance` DISABLE KEYS */;
INSERT INTO `driverperformance` VALUES (1,1,1,5,'Excellent service, very prompt.',1,'2024-07-24 04:45:00'),(2,2,2,4,'Good delivery, but slightly delayed.',0,'2024-07-24 06:00:00'),(3,3,3,3,'Average performance, could be improved.',1,'2024-07-24 07:15:00'),(4,4,4,5,'On time and professional.',1,'2024-07-24 07:30:00'),(5,5,5,2,'Delivery was late and incomplete.',0,'2024-07-24 08:45:00'),(6,6,6,4,'Good job, but delivery could be faster.',1,'2024-07-24 10:00:00'),(7,7,7,3,'Delivery was okay, not on time.',0,'2024-07-24 11:15:00'),(8,8,8,5,'Great experience, very timely.',1,'2024-07-24 11:30:00'),(9,9,9,4,'Very good service, but slight delay.',1,'2024-07-24 12:45:00'),(10,10,10,1,'Poor service, very late.',0,'2024-07-24 14:00:00'),(11,1,1,5,'Excellent service, very prompt.',1,'2024-07-24 04:45:00'),(12,2,2,4,'Good delivery, but slightly delayed.',0,'2024-07-24 06:00:00'),(13,3,3,3,'Average performance, could be improved.',1,'2024-07-24 07:15:00'),(14,4,4,5,'On time and professional.',1,'2024-07-24 07:30:00'),(15,5,5,2,'Delivery was late and incomplete.',0,'2024-07-24 08:45:00'),(16,6,6,4,'Good job, but delivery could be faster.',1,'2024-07-24 10:00:00'),(17,7,7,3,'Delivery was okay, not on time.',0,'2024-07-24 11:15:00'),(18,8,8,5,'Great experience, very timely.',1,'2024-07-24 11:30:00'),(19,9,9,4,'Very good service, but slight delay.',1,'2024-07-24 12:45:00'),(20,10,10,1,'Poor service, very late.',0,'2024-07-24 14:00:00');
/*!40000 ALTER TABLE `driverperformance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamicpricing`
--

DROP TABLE IF EXISTS `dynamicpricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamicpricing` (
  `pricing_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `base_price` decimal(10,2) NOT NULL,
  `surge_multiplier` decimal(3,2) DEFAULT '1.00',
  `effective_price` decimal(10,2) GENERATED ALWAYS AS ((`base_price` * `surge_multiplier`)) STORED,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pricing_id`),
  KEY `partner_id` (`partner_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `dynamicpricing_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`),
  CONSTRAINT `dynamicpricing_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicpricing`
--

LOCK TABLES `dynamicpricing` WRITE;
/*!40000 ALTER TABLE `dynamicpricing` DISABLE KEYS */;
INSERT INTO `dynamicpricing` (`pricing_id`, `partner_id`, `item_id`, `base_price`, `surge_multiplier`, `last_updated`) VALUES (1,1,1,100.00,1.00,'2024-07-25 09:30:33'),(2,2,2,150.00,1.05,'2024-07-25 09:30:33'),(3,3,3,200.00,1.10,'2024-07-25 09:30:33'),(4,4,4,250.00,1.15,'2024-07-25 09:30:33'),(5,5,5,300.00,1.20,'2024-07-25 09:30:33'),(6,6,6,350.00,1.25,'2024-07-25 09:30:33'),(7,7,7,400.00,1.30,'2024-07-25 09:30:33'),(8,8,8,450.00,1.35,'2024-07-25 09:30:33'),(9,9,9,500.00,1.40,'2024-07-25 09:30:33'),(10,10,10,550.00,1.45,'2024-07-25 09:30:33');
/*!40000 ALTER TABLE `dynamicpricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `environmentalinitiatives`
--

DROP TABLE IF EXISTS `environmentalinitiatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `environmentalinitiatives` (
  `initiative_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `description` text NOT NULL,
  `impact_score` decimal(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`initiative_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `environmentalinitiatives_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `environmentalinitiatives`
--

LOCK TABLES `environmentalinitiatives` WRITE;
/*!40000 ALTER TABLE `environmentalinitiatives` DISABLE KEYS */;
INSERT INTO `environmentalinitiatives` VALUES (1,1,'Installed solar panels to reduce carbon footprint.',8.75,'2024-07-25 10:47:28'),(2,2,'Implemented a recycling program for all waste materials.',7.50,'2024-07-25 10:47:28'),(3,3,'Switched to biodegradable packaging for all products.',9.20,'2024-07-25 10:47:28'),(4,4,'Initiated a tree planting campaign in local communities.',8.00,'2024-07-25 10:47:28'),(5,5,'Reduced water usage by 30% through efficient practices.',7.80,'2024-07-25 10:47:28'),(6,6,'Partnered with local farms for organic produce.',8.90,'2024-07-25 10:47:28'),(7,7,'Started a bike-to-work program for employees.',7.25,'2024-07-25 10:47:28'),(8,8,'Reduced energy consumption by upgrading to LED lighting.',8.40,'2024-07-25 10:47:28'),(9,9,'Eliminated single-use plastics from operations.',9.00,'2024-07-25 10:47:28'),(10,10,'Conducted environmental awareness workshops for staff.',8.10,'2024-07-25 10:47:28');
/*!40000 ALTER TABLE `environmentalinitiatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackcomplaints`
--

DROP TABLE IF EXISTS `feedbackcomplaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedbackcomplaints` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `partner_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `type` enum('Feedback','Complaint') NOT NULL,
  `description` text NOT NULL,
  `status` enum('Open','In Progress','Resolved','Closed') DEFAULT 'Open',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`feedback_id`),
  KEY `customer_id` (`customer_id`),
  KEY `partner_id` (`partner_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `feedbackcomplaints_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `feedbackcomplaints_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`),
  CONSTRAINT `feedbackcomplaints_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackcomplaints`
--

LOCK TABLES `feedbackcomplaints` WRITE;
/*!40000 ALTER TABLE `feedbackcomplaints` DISABLE KEYS */;
INSERT INTO `feedbackcomplaints` VALUES (1,1,1,1,'Feedback','Great service, but the food was a bit cold.','Resolved','2024-07-25 06:45:02'),(2,2,2,2,'Complaint','Received wrong order.','In Progress','2024-07-25 06:45:02'),(3,3,3,3,'Feedback','Delicious meal, but delivery was late.','Closed','2024-07-25 06:45:02'),(4,4,4,4,'Complaint','Food was not as described.','Open','2024-07-25 06:45:02'),(5,5,5,5,'Feedback','Loved the new dish on the menu.','Resolved','2024-07-25 06:45:02'),(6,6,6,6,'Complaint','Unprofessional delivery personnel.','In Progress','2024-07-25 06:45:02'),(7,7,7,7,'Feedback','Excellent quality, will order again.','Closed','2024-07-25 06:45:02'),(8,8,8,8,'Complaint','Overcharged on the bill.','Open','2024-07-25 06:45:02'),(9,9,9,9,'Feedback','Good experience overall.','Resolved','2024-07-25 06:45:02'),(10,10,10,10,'Complaint','Food was not fresh.','In Progress','2024-07-25 06:45:02');
/*!40000 ALTER TABLE `feedbackcomplaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fraudreports`
--

DROP TABLE IF EXISTS `fraudreports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fraudreports` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int DEFAULT NULL,
  `user_type` enum('Customer','Partner','Admin','DeliveryPersonnel') DEFAULT NULL,
  `report_type` enum('Order','Payment','Account') DEFAULT NULL,
  `description` text,
  `status` enum('Investigating','Confirmed','Dismissed') DEFAULT 'Investigating',
  `reported_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`report_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `fraudreports_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fraudreports`
--

LOCK TABLES `fraudreports` WRITE;
/*!40000 ALTER TABLE `fraudreports` DISABLE KEYS */;
INSERT INTO `fraudreports` VALUES (1,1,'Customer','Order','Suspicious order activity detected.','Investigating','2024-07-25 10:57:28'),(2,2,'Partner','Payment','Unusual payment patterns observed.','Investigating','2024-07-25 10:57:28'),(3,3,'Admin','Account','Unauthorized account access attempt.','Confirmed','2024-07-25 10:57:28'),(4,4,'DeliveryPersonnel','Order','Report of fraudulent delivery.','Investigating','2024-07-25 10:57:28'),(5,5,'Customer','Payment','Payment discrepancy reported.','Dismissed','2024-07-25 10:57:28'),(6,6,'Partner','Account','Account information tampering detected.','Confirmed','2024-07-25 10:57:28'),(7,7,'Admin','Order','Suspected order fraud.','Investigating','2024-07-25 10:57:28'),(8,8,'DeliveryPersonnel','Payment','Incorrect payment reported.','Dismissed','2024-07-25 10:57:28'),(9,9,'Customer','Account','Suspicious login attempt.','Investigating','2024-07-25 10:57:28'),(10,10,'Partner','Order','Fraudulent order processing issue.','Confirmed','2024-07-25 10:57:28');
/*!40000 ALTER TABLE `fraudreports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geolocation`
--

DROP TABLE IF EXISTS `geolocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geolocation` (
  `geolocation_id` int NOT NULL AUTO_INCREMENT,
  `entity_id` int DEFAULT NULL,
  `entity_type` enum('Customer','Partner','DeliveryPersonnel') DEFAULT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`geolocation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geolocation`
--

LOCK TABLES `geolocation` WRITE;
/*!40000 ALTER TABLE `geolocation` DISABLE KEYS */;
INSERT INTO `geolocation` VALUES (1,1,'Customer',40.712776,-74.005974,'2024-07-25 06:32:58'),(2,2,'Partner',34.052235,-118.243683,'2024-07-25 06:32:58'),(3,3,'DeliveryPersonnel',37.774929,-122.419418,'2024-07-25 06:32:58'),(4,4,'Customer',51.507351,-0.127758,'2024-07-25 06:32:58'),(5,5,'Partner',48.856613,2.352222,'2024-07-25 06:32:58'),(6,6,'DeliveryPersonnel',40.730610,-73.935242,'2024-07-25 06:32:58'),(7,7,'Customer',34.052235,-118.243683,'2024-07-25 06:32:58'),(8,8,'Partner',41.878113,-87.629799,'2024-07-25 06:32:58'),(9,9,'DeliveryPersonnel',39.099727,-94.578567,'2024-07-25 06:32:58'),(10,10,'Customer',47.606209,-122.332069,'2024-07-25 06:32:58');
/*!40000 ALTER TABLE `geolocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `stock_quantity` int NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_id`),
  KEY `partner_id` (`partner_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,1,50,'2024-07-25 06:14:17'),(2,1,2,30,'2024-07-25 06:14:17'),(3,2,3,40,'2024-07-25 06:14:17'),(4,2,4,20,'2024-07-25 06:14:17'),(5,3,5,25,'2024-07-25 06:14:17'),(6,3,6,35,'2024-07-25 06:14:17'),(7,4,7,15,'2024-07-25 06:14:17'),(8,4,8,40,'2024-07-25 06:14:17'),(9,5,9,60,'2024-07-25 06:14:17'),(10,5,10,45,'2024-07-25 06:14:17'),(11,1,1,50,'2024-07-25 06:19:44'),(12,1,2,30,'2024-07-25 06:19:44'),(13,2,3,40,'2024-07-25 06:19:44'),(14,2,4,20,'2024-07-25 06:19:44'),(15,3,5,25,'2024-07-25 06:19:44'),(16,3,6,35,'2024-07-25 06:19:44'),(17,4,7,15,'2024-07-25 06:19:44'),(18,4,8,40,'2024-07-25 06:19:44'),(19,5,9,60,'2024-07-25 06:19:44'),(20,5,10,45,'2024-07-25 06:19:44');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemcategorymapping`
--

DROP TABLE IF EXISTS `itemcategorymapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemcategorymapping` (
  `mapping_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`mapping_id`),
  KEY `item_id` (`item_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `itemcategorymapping_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `itemcategorymapping_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `menucategories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcategorymapping`
--

LOCK TABLES `itemcategorymapping` WRITE;
/*!40000 ALTER TABLE `itemcategorymapping` DISABLE KEYS */;
INSERT INTO `itemcategorymapping` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,3),(6,6,4),(7,7,5),(8,8,6),(9,9,7),(10,10,8);
/*!40000 ALTER TABLE `itemcategorymapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `available` tinyint(1) DEFAULT '1',
  `category` varchar(50) DEFAULT NULL,
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,1,'Gourmet Burger','A juicy beef burger with gourmet toppings.',12.99,1,'Burgers',4.50,'2024-07-25 06:14:15'),(2,1,'Truffle Fries','Fries with truffle oil and Parmesan cheese.',7.99,1,'Sides',4.70,'2024-07-25 06:14:15'),(3,2,'Spicy Tacos','Tacos with a spicy kick.',9.99,1,'Tacos',4.20,'2024-07-25 06:14:15'),(4,2,'Guacamole','Fresh guacamole with tortilla chips.',6.99,1,'Sides',4.30,'2024-07-25 06:14:15'),(5,3,'California Roll','Sushi roll with avocado, cucumber, and crab.',13.99,1,'Sushi',4.80,'2024-07-25 06:14:15'),(6,3,'Miso Soup','Traditional miso soup with tofu and seaweed.',4.99,1,'Soup',4.50,'2024-07-25 06:14:15'),(7,4,'Vegan Burger','Plant-based burger with fresh vegetables.',11.99,1,'Burgers',4.40,'2024-07-25 06:14:15'),(8,4,'Quinoa Salad','Quinoa salad with mixed greens and vegetables.',8.99,1,'Salads',4.60,'2024-07-25 06:14:15'),(9,5,'Cheeseburger','Classic cheeseburger with lettuce and tomato.',10.99,1,'Burgers',4.30,'2024-07-25 06:14:15'),(10,5,'Onion Rings','Crispy onion rings with dipping sauce.',5.99,1,'Sides',4.40,'2024-07-25 06:14:15'),(11,1,'Gourmet Burger','A juicy beef burger with gourmet toppings.',12.99,1,'Burgers',4.50,'2024-07-25 06:19:05'),(12,1,'Truffle Fries','Fries with truffle oil and Parmesan cheese.',7.99,1,'Sides',4.70,'2024-07-25 06:19:05'),(13,2,'Spicy Tacos','Tacos with a spicy kick.',9.99,1,'Tacos',4.20,'2024-07-25 06:19:05'),(14,2,'Guacamole','Fresh guacamole with tortilla chips.',6.99,1,'Sides',4.30,'2024-07-25 06:19:05'),(15,3,'California Roll','Sushi roll with avocado, cucumber, and crab.',13.99,1,'Sushi',4.80,'2024-07-25 06:19:05'),(16,3,'Miso Soup','Traditional miso soup with tofu and seaweed.',4.99,1,'Soup',4.50,'2024-07-25 06:19:05'),(17,4,'Vegan Burger','Plant-based burger with fresh vegetables.',11.99,1,'Burgers',4.40,'2024-07-25 06:19:05'),(18,4,'Quinoa Salad','Quinoa salad with mixed greens and vegetables.',8.99,1,'Salads',4.60,'2024-07-25 06:19:05'),(19,5,'Cheeseburger','Classic cheeseburger with lettuce and tomato.',10.99,1,'Burgers',4.30,'2024-07-25 06:19:05'),(20,5,'Onion Rings','Crispy onion rings with dipping sauce.',5.99,1,'Sides',4.40,'2024-07-25 06:19:05');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loyaltyredemptions`
--

DROP TABLE IF EXISTS `loyaltyredemptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loyaltyredemptions` (
  `redemption_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `points_redeemed` int DEFAULT NULL,
  `redemption_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`redemption_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `loyaltyredemptions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loyaltyredemptions`
--

LOCK TABLES `loyaltyredemptions` WRITE;
/*!40000 ALTER TABLE `loyaltyredemptions` DISABLE KEYS */;
INSERT INTO `loyaltyredemptions` VALUES (1,1,100,'2024-01-15 05:00:00'),(2,2,150,'2024-01-16 06:15:00'),(3,3,200,'2024-01-17 03:30:00'),(4,4,250,'2024-01-18 08:50:00'),(5,5,300,'2024-01-19 11:05:00'),(6,6,350,'2024-01-20 06:30:00'),(7,7,400,'2024-01-21 07:55:00'),(8,8,450,'2024-01-22 10:10:00'),(9,9,500,'2024-01-23 05:25:00'),(10,10,550,'2024-01-24 06:00:00');
/*!40000 ALTER TABLE `loyaltyredemptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menucategories`
--

DROP TABLE IF EXISTS `menucategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menucategories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `menucategories_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menucategories`
--

LOCK TABLES `menucategories` WRITE;
/*!40000 ALTER TABLE `menucategories` DISABLE KEYS */;
INSERT INTO `menucategories` VALUES (1,1,'Appetizers','Starters and small dishes to begin your meal.','2024-07-25 09:57:19'),(2,2,'Main Courses','Hearty and filling main dishes.','2024-07-25 09:57:19'),(3,3,'Desserts','Sweet treats and desserts to end your meal.','2024-07-25 09:57:19'),(4,4,'Beverages','Drinks and beverages for all tastes.','2024-07-25 09:57:19'),(5,5,'Specials','Daily and seasonal specials.','2024-07-25 09:57:19'),(6,6,'Seafood','Fresh seafood dishes and platters.','2024-07-25 09:57:19'),(7,7,'Vegetarian','Delicious vegetarian options.','2024-07-25 09:57:19'),(8,8,'Grill','Grilled meats and BBQ dishes.','2024-07-25 09:57:19'),(9,9,'Salads','Fresh and healthy salad options.','2024-07-25 09:57:19'),(10,10,'Soups','Varieties of soups and broths.','2024-07-25 09:57:19');
/*!40000 ALTER TABLE `menucategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationpreferences`
--

DROP TABLE IF EXISTS `notificationpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificationpreferences` (
  `preference_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `notification_type` enum('Email','SMS','Push Notification') DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`preference_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `notificationpreferences_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationpreferences`
--

LOCK TABLES `notificationpreferences` WRITE;
/*!40000 ALTER TABLE `notificationpreferences` DISABLE KEYS */;
INSERT INTO `notificationpreferences` VALUES (1,1,'Email',1),(2,1,'SMS',0),(3,1,'Push Notification',1),(4,2,'Email',1),(5,2,'SMS',1),(6,2,'Push Notification',0),(7,3,'Email',0),(8,3,'SMS',1),(9,3,'Push Notification',1),(10,4,'Email',1),(11,4,'SMS',0),(12,4,'Push Notification',1),(13,5,'Email',1),(14,5,'SMS',1),(15,5,'Push Notification',0),(16,6,'Email',0),(17,6,'SMS',1),(18,6,'Push Notification',1),(19,7,'Email',1),(20,7,'SMS',0),(21,7,'Push Notification',1),(22,8,'Email',1),(23,8,'SMS',1),(24,8,'Push Notification',0),(25,9,'Email',0),(26,9,'SMS',1),(27,9,'Push Notification',1),(28,10,'Email',1),(29,10,'SMS',0),(30,10,'Push Notification',1);
/*!40000 ALTER TABLE `notificationpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdelivery`
--

DROP TABLE IF EXISTS `orderdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdelivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `personnel_id` int DEFAULT NULL,
  `delivery_status` enum('Pending','Picked Up','On the Way','Delivered') NOT NULL DEFAULT 'Pending',
  `assigned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `delivered_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `order_id` (`order_id`),
  KEY `personnel_id` (`personnel_id`),
  CONSTRAINT `orderdelivery_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `orderdelivery_ibfk_2` FOREIGN KEY (`personnel_id`) REFERENCES `deliverypersonnel` (`personnel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdelivery`
--

LOCK TABLES `orderdelivery` WRITE;
/*!40000 ALTER TABLE `orderdelivery` DISABLE KEYS */;
INSERT INTO `orderdelivery` VALUES (1,1,1,'Delivered','2024-07-24 18:30:00',NULL),(2,2,2,'Picked Up','2024-07-25 18:30:00',NULL),(3,3,3,'On the Way','2024-07-26 18:30:00',NULL),(4,4,4,'Delivered','2024-07-27 18:30:00',NULL),(5,5,5,'Pending','2024-07-28 18:30:00',NULL),(6,6,6,'Delivered','2024-07-29 18:30:00',NULL),(7,7,7,'Picked Up','2024-07-30 18:30:00',NULL),(8,8,8,'On the Way','2024-07-31 18:30:00',NULL),(9,9,9,'Delivered','2024-08-01 18:30:00',NULL),(10,10,10,'On the Way','2024-08-02 18:30:00',NULL);
/*!40000 ALTER TABLE `orderdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `special_instructions` text,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,1,1,1,12.99,NULL),(2,1,2,1,7.99,NULL),(3,2,3,2,9.99,NULL),(4,2,4,1,6.99,NULL),(5,3,5,1,13.99,NULL),(6,3,6,1,4.99,NULL),(7,4,7,1,11.99,NULL),(8,4,8,1,8.99,NULL),(9,5,9,2,10.99,NULL),(10,5,10,1,5.99,NULL),(11,1,1,1,12.99,NULL),(12,1,2,1,7.99,NULL),(13,2,3,2,9.99,NULL),(14,2,4,1,6.99,NULL),(15,3,5,1,13.99,NULL),(16,3,6,1,4.99,NULL),(17,4,7,1,11.99,NULL),(18,4,8,1,8.99,NULL),(19,5,9,2,10.99,NULL),(20,5,10,1,5.99,NULL),(21,1,1,1,12.99,NULL),(22,1,2,1,7.99,NULL),(23,2,3,2,9.99,NULL),(24,2,4,1,6.99,NULL),(25,3,5,1,13.99,NULL),(26,3,6,1,4.99,NULL),(27,4,7,1,11.99,NULL),(28,4,8,1,8.99,NULL),(29,5,9,2,10.99,NULL),(30,5,10,1,5.99,NULL);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderpromotions`
--

DROP TABLE IF EXISTS `orderpromotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderpromotions` (
  `order_promotion_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `promotion_id` int DEFAULT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_promotion_id`),
  KEY `order_id` (`order_id`),
  KEY `promotion_id` (`promotion_id`),
  CONSTRAINT `orderpromotions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `orderpromotions_ibfk_2` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderpromotions`
--

LOCK TABLES `orderpromotions` WRITE;
/*!40000 ALTER TABLE `orderpromotions` DISABLE KEYS */;
INSERT INTO `orderpromotions` VALUES (1,1,1,10.00),(2,2,2,15.00),(3,3,3,20.00),(4,4,4,5.00),(5,5,5,25.00),(6,6,6,30.00),(7,7,7,12.00),(8,8,8,18.00),(9,9,9,22.00),(10,10,10,8.00);
/*!40000 ALTER TABLE `orderpromotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `partner_id` int DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` enum('Pending','Accepted','In Preparation','Out for Delivery','Delivered','Cancelled') NOT NULL DEFAULT 'Pending',
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `delivery_address` text NOT NULL,
  `scheduled_delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,20.98,'Delivered','2024-07-25 06:14:20','123 Elm Street, Springfield','2024-07-26 12:00:00'),(2,2,2,16.98,'Pending','2024-07-25 06:14:20','456 Oak Avenue, Springfield','2024-07-27 13:00:00'),(3,3,3,18.98,'In Preparation','2024-07-25 06:14:20','789 Pine Road, Springfield','2024-07-28 14:00:00'),(4,4,4,20.98,'Out for Delivery','2024-07-25 06:14:20','101 Maple Street, Springfield','2024-07-29 15:00:00'),(5,5,5,16.98,'Cancelled','2024-07-25 06:14:20','202 Birch Lane, Springfield','2024-07-30 16:00:00'),(6,6,6,25.98,'Delivered','2024-07-25 06:14:20','303 Cedar Drive, Springfield','2024-07-31 17:00:00'),(7,7,7,14.98,'Accepted','2024-07-25 06:14:20','404 Spruce Avenue, Springfield','2024-08-01 18:00:00'),(8,8,8,19.98,'Pending','2024-07-25 06:14:20','505 Fir Street, Springfield','2024-08-02 19:00:00'),(9,9,9,22.98,'Delivered','2024-07-25 06:14:20','606 Redwood Road, Springfield','2024-08-03 20:00:00'),(10,10,10,17.98,'In Preparation','2024-07-25 06:14:20','707 Willow Way, Springfield','2024-08-04 21:00:00'),(11,1,1,20.98,'Delivered','2024-07-25 06:20:01','123 Elm Street, Springfield','2024-07-26 12:00:00'),(12,2,2,16.98,'Pending','2024-07-25 06:20:01','456 Oak Avenue, Springfield','2024-07-27 13:00:00'),(13,3,3,18.98,'In Preparation','2024-07-25 06:20:01','789 Pine Road, Springfield','2024-07-28 14:00:00'),(14,4,4,20.98,'Out for Delivery','2024-07-25 06:20:01','101 Maple Street, Springfield','2024-07-29 15:00:00'),(15,5,5,16.98,'Cancelled','2024-07-25 06:20:01','202 Birch Lane, Springfield','2024-07-30 16:00:00'),(16,6,6,25.98,'Delivered','2024-07-25 06:20:01','303 Cedar Drive, Springfield','2024-07-31 17:00:00'),(17,7,7,14.98,'Accepted','2024-07-25 06:20:01','404 Spruce Avenue, Springfield','2024-08-01 18:00:00'),(18,8,8,19.98,'Pending','2024-07-25 06:20:01','505 Fir Street, Springfield','2024-08-02 19:00:00'),(19,9,9,22.98,'Delivered','2024-07-25 06:20:01','606 Redwood Road, Springfield','2024-08-03 20:00:00'),(20,10,10,17.98,'In Preparation','2024-07-25 06:20:01','707 Willow Way, Springfield','2024-08-04 21:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatushistory`
--

DROP TABLE IF EXISTS `orderstatushistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstatushistory` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `status` enum('Pending','Accepted','In Preparation','Out for Delivery','Delivered','Cancelled') NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`status_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `orderstatushistory_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatushistory`
--

LOCK TABLES `orderstatushistory` WRITE;
/*!40000 ALTER TABLE `orderstatushistory` DISABLE KEYS */;
INSERT INTO `orderstatushistory` VALUES (1,1,'Pending','2024-07-25 06:42:21'),(2,2,'Accepted','2024-07-25 06:42:21'),(3,3,'In Preparation','2024-07-25 06:42:21'),(4,4,'Out for Delivery','2024-07-25 06:42:21'),(5,5,'Delivered','2024-07-25 06:42:21'),(6,6,'Cancelled','2024-07-25 06:42:21'),(7,7,'Pending','2024-07-25 06:42:21'),(8,8,'Accepted','2024-07-25 06:42:21'),(9,9,'In Preparation','2024-07-25 06:42:21'),(10,10,'Out for Delivery','2024-07-25 06:42:21');
/*!40000 ALTER TABLE `orderstatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partnerlicenses`
--

DROP TABLE IF EXISTS `partnerlicenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partnerlicenses` (
  `license_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `license_type` varchar(100) NOT NULL,
  `license_number` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`license_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `partnerlicenses_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partnerlicenses`
--

LOCK TABLES `partnerlicenses` WRITE;
/*!40000 ALTER TABLE `partnerlicenses` DISABLE KEYS */;
INSERT INTO `partnerlicenses` VALUES (1,1,'Food Safety','FS123456','2022-01-01','2024-01-01','2024-07-25 10:46:39'),(2,2,'Health Permit','HP654321','2022-02-01','2024-02-01','2024-07-25 10:46:39'),(3,3,'Alcohol License','AL789012','2022-03-01','2024-03-01','2024-07-25 10:46:39'),(4,4,'Business License','BL345678','2022-04-01','2024-04-01','2024-07-25 10:46:39'),(5,5,'Fire Safety Certificate','FSC567890','2022-05-01','2024-05-01','2024-07-25 10:46:39'),(6,6,'Environmental Clearance','EC123789','2022-06-01','2024-06-01','2024-07-25 10:46:39'),(7,7,'Hygiene Certificate','HC234890','2022-07-01','2024-07-01','2024-07-25 10:46:39'),(8,8,'Trade License','TL345901','2022-08-01','2024-08-01','2024-07-25 10:46:39'),(9,9,'Sanitation Certificate','SC456012','2022-09-01','2024-09-01','2024-07-25 10:46:39'),(10,10,'Employee Training Certificate','ETC567123','2022-10-01','2024-10-01','2024-07-25 10:46:39');
/*!40000 ALTER TABLE `partnerlicenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partnerpayouts`
--

DROP TABLE IF EXISTS `partnerpayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partnerpayouts` (
  `payout_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payout_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`payout_id`),
  KEY `partner_id` (`partner_id`),
  CONSTRAINT `partnerpayouts_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partnerpayouts`
--

LOCK TABLES `partnerpayouts` WRITE;
/*!40000 ALTER TABLE `partnerpayouts` DISABLE KEYS */;
INSERT INTO `partnerpayouts` VALUES (1,1,1000.00,'2024-07-25 09:55:36'),(2,2,1500.00,'2024-07-25 09:55:36'),(3,3,2000.00,'2024-07-25 09:55:36'),(4,4,2500.00,'2024-07-25 09:55:36'),(5,5,3000.00,'2024-07-25 09:55:36'),(6,6,3500.00,'2024-07-25 09:55:36'),(7,7,4000.00,'2024-07-25 09:55:36'),(8,8,4500.00,'2024-07-25 09:55:36'),(9,9,5000.00,'2024-07-25 09:55:36'),(10,10,5500.00,'2024-07-25 09:55:36');
/*!40000 ALTER TABLE `partnerpayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `partner_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`partner_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'The Gourmet Bistro','contact@gourmetbistro.com','555-0201','123 Culinary Street, Springfield',40.712776,-74.005974,'08:00:00','22:00:00',4.50,'2024-07-25 06:14:12'),(2,'Spicy Delights','info@spicydelights.com','555-0202','456 Flavor Road, Springfield',34.052235,-118.243683,'10:00:00','23:00:00',4.00,'2024-07-25 06:14:12'),(3,'Sushi Haven','hello@sushihaven.com','555-0203','789 Sushi Avenue, Springfield',37.774929,-122.419418,'11:00:00','21:00:00',4.70,'2024-07-25 06:14:12'),(4,'The Vegan Table','contact@vegantable.com','555-0204','101 Green Street, Springfield',47.606209,-122.332069,'09:00:00','20:00:00',4.20,'2024-07-25 06:14:12'),(5,'Burger House','info@burgerhouse.com','555-0205','202 Burger Lane, Springfield',36.169941,-115.139832,'11:00:00','22:00:00',4.30,'2024-07-25 06:14:12'),(6,'Pasta Palace','support@pastapalace.com','555-0206','303 Pasta Street, Springfield',51.507351,-0.127758,'12:00:00','23:00:00',4.10,'2024-07-25 06:14:12'),(7,'Seafood Central','contact@seafoodcentral.com','555-0207','404 Ocean Drive, Springfield',52.367984,4.903561,'10:00:00','22:00:00',4.60,'2024-07-25 06:14:12'),(8,'Taco Town','info@tacotown.com','555-0208','505 Taco Boulevard, Springfield',35.689487,139.691711,'11:00:00','21:00:00',4.40,'2024-07-25 06:14:12'),(9,'The Cake Shop','hello@cakeshop.com','555-0209','606 Dessert Street, Springfield',40.730610,-73.935242,'09:00:00','20:00:00',4.80,'2024-07-25 06:14:12'),(10,'Coffee Corner','contact@coffeecorner.com','555-0210','707 Coffee Lane, Springfield',48.856613,2.352222,'08:00:00','18:00:00',4.00,'2024-07-25 06:14:12');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int DEFAULT NULL,
  `payment_method` enum('Credit Card','Debit Card','Net Banking','UPI','Cash on Delivery') NOT NULL,
  `payment_status` enum('Pending','Completed','Failed','Refunded') NOT NULL DEFAULT 'Pending',
  `payment_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` double NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'Credit Card','Completed','2024-07-25 06:26:32',20.98),(2,2,'Debit Card','Pending','2024-07-25 06:26:32',16.98),(3,3,'Credit Card','Completed','2024-07-25 06:26:32',18.98),(4,4,'Credit Card','Completed','2024-07-25 06:26:32',20.98),(5,5,'Credit Card','Refunded','2024-07-25 06:26:32',16.98),(6,6,'Debit Card','Completed','2024-07-25 06:26:32',25.98),(7,7,'Credit Card','Completed','2024-07-25 06:26:32',14.98),(8,8,'Debit Card','Pending','2024-07-25 06:26:32',19.98),(9,9,'Credit Card','Completed','2024-07-25 06:26:32',22.98),(10,10,'Credit Card','Completed','2024-07-25 06:26:32',17.98);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `promotion_id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `description` text,
  `discount_percent` decimal(5,2) DEFAULT NULL,
  `discount_amount` decimal(10,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `max_uses` int DEFAULT NULL,
  `min_order_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`promotion_id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'PROMO10','10% off on orders above $30',10.00,NULL,'2024-07-01','2024-07-31',100,30.00,'2024-07-25 06:30:22'),(2,'FREESHIP','Free shipping on orders above $20',NULL,NULL,'2024-07-01','2024-07-31',200,20.00,'2024-07-25 06:30:22'),(3,'SUMMER20','20% off on all items',20.00,NULL,'2024-07-01','2024-07-31',150,0.00,'2024-07-25 06:30:22'),(4,'BOGO50','Buy one get one 50% off',50.00,NULL,'2024-07-01','2024-07-31',75,15.00,'2024-07-25 06:30:22'),(5,'WELCOME5','5% off on your first order',5.00,NULL,'2024-07-01','2024-07-31',500,0.00,'2024-07-25 06:30:22'),(6,'MIDWEEK10','10% off on Wednesdays',10.00,NULL,'2024-07-01','2024-07-31',250,10.00,'2024-07-25 06:30:22'),(7,'HAPPYHOUR15','15% off during happy hours',15.00,NULL,'2024-07-01','2024-07-31',100,0.00,'2024-07-25 06:30:22'),(8,'LOYALTY20','20% off for loyal customers',20.00,NULL,'2024-07-01','2024-07-31',50,0.00,'2024-07-25 06:30:22'),(9,'SEASONAL30','30% off seasonal specials',30.00,NULL,'2024-07-01','2024-07-31',80,25.00,'2024-07-25 06:30:22'),(10,'FLASHSALE25','25% off flash sale items',25.00,NULL,'2024-07-01','2024-07-31',120,0.00,'2024-07-25 06:30:22');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotionusage`
--

DROP TABLE IF EXISTS `promotionusage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotionusage` (
  `usage_id` int NOT NULL AUTO_INCREMENT,
  `promotion_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `used_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usage_id`),
  KEY `promotion_id` (`promotion_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `promotionusage_ibfk_1` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`promotion_id`),
  CONSTRAINT `promotionusage_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `promotionusage_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotionusage`
--

LOCK TABLES `promotionusage` WRITE;
/*!40000 ALTER TABLE `promotionusage` DISABLE KEYS */;
INSERT INTO `promotionusage` VALUES (1,1,1,1,'2024-07-24 18:30:00'),(2,2,2,2,'2024-07-25 18:30:00'),(3,3,3,3,'2024-07-26 18:30:00'),(4,4,4,4,'2024-07-27 18:30:00'),(5,5,5,5,'2024-07-28 18:30:00'),(6,6,6,6,'2024-07-29 18:30:00'),(7,7,7,7,'2024-07-30 18:30:00'),(8,8,8,8,'2024-07-31 18:30:00'),(9,9,9,9,'2024-08-01 18:30:00'),(10,10,10,10,'2024-08-02 18:30:00');
/*!40000 ALTER TABLE `promotionusage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `partner_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rating_id`),
  KEY `customer_id` (`customer_id`),
  KEY `partner_id` (`partner_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`),
  CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `ratings_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,1,1,1,4,'Great food, will order again.','2024-07-25 06:26:45'),(2,2,2,2,5,'Excellent service and tasty dishes.','2024-07-25 06:26:45'),(3,3,3,3,3,'Average experience. Could be better.','2024-07-25 06:26:45'),(4,4,4,4,2,'Not satisfied with the quality.','2024-07-25 06:26:45'),(5,5,5,5,4,'Good value for money.','2024-07-25 06:26:45'),(6,6,6,6,5,'Amazing flavors and quick delivery.','2024-07-25 06:26:45'),(7,7,7,7,4,'Food was good, but delivery was late.','2024-07-25 06:26:45'),(8,8,8,8,5,'Excellent as always. Highly recommended.','2024-07-25 06:26:45'),(9,9,9,9,3,'Okay experience, nothing special.','2024-07-25 06:26:45'),(10,10,10,10,4,'Good food and prompt service.','2024-07-25 06:26:45');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrals`
--

DROP TABLE IF EXISTS `referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referrals` (
  `referral_id` int NOT NULL AUTO_INCREMENT,
  `referrer_id` int DEFAULT NULL,
  `referee_id` int DEFAULT NULL,
  `referral_code` varchar(50) DEFAULT NULL,
  `reward_points` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`referral_id`),
  UNIQUE KEY `referral_code` (`referral_code`),
  KEY `referrer_id` (`referrer_id`),
  KEY `referee_id` (`referee_id`),
  CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`referrer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`referee_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrals`
--

LOCK TABLES `referrals` WRITE;
/*!40000 ALTER TABLE `referrals` DISABLE KEYS */;
INSERT INTO `referrals` VALUES (11,1,2,'REF12345',50,'2024-07-25 06:44:48'),(12,3,4,'REF67890',30,'2024-07-25 06:44:48'),(13,5,6,'REF11223',70,'2024-07-25 06:44:48'),(14,7,8,'REF44556',40,'2024-07-25 06:44:48'),(15,9,10,'REF78901',60,'2024-07-25 06:44:48'),(16,2,3,'REF23456',20,'2024-07-25 06:44:48'),(17,4,5,'REF34567',50,'2024-07-25 06:44:48'),(18,6,7,'REF45678',80,'2024-07-25 06:44:48'),(19,8,9,'REF56789',30,'2024-07-25 06:44:48'),(20,10,1,'REF67891',90,'2024-07-25 06:44:48');
/*!40000 ALTER TABLE `referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolepermissions`
--

DROP TABLE IF EXISTS `rolepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolepermissions` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `permission_name` varchar(100) NOT NULL,
  PRIMARY KEY (`permission_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `rolepermissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `userroles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolepermissions`
--

LOCK TABLES `rolepermissions` WRITE;
/*!40000 ALTER TABLE `rolepermissions` DISABLE KEYS */;
INSERT INTO `rolepermissions` VALUES (1,1,'Manage Users'),(2,2,'Manage Projects'),(3,3,'View Reports'),(4,4,'Access Public Pages'),(5,5,'Full Access'),(6,6,'Moderate Content'),(7,7,'Edit Content'),(8,8,'View Content'),(9,9,'Contribute Content'),(10,10,'Analyze Data'),(11,1,'Manage Users'),(12,2,'Manage Projects'),(13,3,'View Reports'),(14,4,'Access Public Pages'),(15,5,'Full Access'),(16,6,'Moderate Content'),(17,7,'Edit Content'),(18,8,'View Content'),(19,9,'Contribute Content'),(20,10,'Analyze Data');
/*!40000 ALTER TABLE `rolepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasonalspecials`
--

DROP TABLE IF EXISTS `seasonalspecials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seasonalspecials` (
  `special_id` int NOT NULL AUTO_INCREMENT,
  `partner_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `special_name` varchar(100) NOT NULL,
  `description` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`special_id`),
  KEY `partner_id` (`partner_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `seasonalspecials_ibfk_1` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`partner_id`),
  CONSTRAINT `seasonalspecials_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasonalspecials`
--

LOCK TABLES `seasonalspecials` WRITE;
/*!40000 ALTER TABLE `seasonalspecials` DISABLE KEYS */;
INSERT INTO `seasonalspecials` VALUES (1,1,1,'Summer Splash','Refreshing summer special with tropical flavors.','2023-06-01','2023-08-31'),(2,2,2,'Winter Wonderland','Cozy winter special with warm spices.','2023-12-01','2023-12-31'),(3,3,3,'Spring Delight','Bright and fresh spring special.','2023-03-01','2023-05-31'),(4,4,4,'Autumn Harvest','Rich and hearty fall special.','2023-09-01','2023-11-30'),(5,5,5,'Christmas Cheer','Festive Christmas special with holiday flavors.','2023-12-15','2023-12-25'),(6,6,6,'New Year Celebration','Sparkling New Year special.','2023-12-31','2024-01-01'),(7,7,7,'Halloween Treat','Spooky and sweet Halloween special.','2023-10-25','2023-10-31'),(8,8,8,'Easter Eggstravaganza','Colorful and fun Easter special.','2023-04-07','2023-04-09'),(9,9,9,'Thanksgiving Feast','Delicious Thanksgiving special with all the trimmings.','2023-11-20','2023-11-27'),(10,10,10,'Valentine\'s Delight','Romantic Valentine\'s special with sweet treats.','2024-02-10','2024-02-14');
/*!40000 ALTER TABLE `seasonalspecials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporttickets`
--

DROP TABLE IF EXISTS `supporttickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supporttickets` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text,
  `status` enum('Open','In Progress','Closed') DEFAULT 'Open',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `supporttickets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporttickets`
--

LOCK TABLES `supporttickets` WRITE;
/*!40000 ALTER TABLE `supporttickets` DISABLE KEYS */;
INSERT INTO `supporttickets` VALUES (1,1,'Delivery Issue','My order was delivered late.','Open','2024-07-25 06:30:59'),(2,2,'Wrong Item','Received the wrong item in my order.','In Progress','2024-07-25 06:30:59'),(3,3,'Refund Request','Requesting a refund for a damaged item.','Open','2024-07-25 06:30:59'),(4,4,'Order Not Received','I did not receive my order.','In Progress','2024-07-25 06:30:59'),(5,5,'Complaint','Food quality was poor.','Closed','2024-07-25 06:30:59'),(6,6,'Account Issue','Having trouble logging into my account.','Open','2024-07-25 06:30:59'),(7,7,'Missing Items','Some items were missing from my order.','In Progress','2024-07-25 06:30:59'),(8,8,'Billing Issue','Incorrect charge on my bill.','Closed','2024-07-25 06:30:59'),(9,9,'Service Feedback','Great service and friendly staff.','Closed','2024-07-25 06:30:59'),(10,10,'Technical Problem','App is crashing frequently.','Open','2024-07-25 06:30:59');
/*!40000 ALTER TABLE `supporttickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrolemapping`
--

DROP TABLE IF EXISTS `userrolemapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrolemapping` (
  `user_role_mapping_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `user_type` enum('Customer','Partner','Admin') DEFAULT NULL,
  PRIMARY KEY (`user_role_mapping_id`),
  KEY `u_id` (`u_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `userrolemapping_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE,
  CONSTRAINT `userrolemapping_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `userroles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrolemapping`
--

LOCK TABLES `userrolemapping` WRITE;
/*!40000 ALTER TABLE `userrolemapping` DISABLE KEYS */;
INSERT INTO `userrolemapping` VALUES (1,1,1,'Customer'),(2,2,2,'Customer'),(3,3,3,'Customer'),(4,4,4,'Customer'),(5,5,5,'Partner'),(6,6,6,'Partner'),(7,7,7,'Partner'),(8,8,8,'Partner'),(9,21,9,'Admin'),(10,22,10,'Admin');
/*!40000 ALTER TABLE `userrolemapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,'Admin'),(2,'Manager'),(3,'User'),(4,'Guest'),(5,'SuperAdmin'),(6,'Moderator'),(7,'Editor'),(8,'Viewer'),(9,'Contributor'),(10,'Analyst');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `user_type` enum('Customer','Partner','Admin','DeliveryPersonnel') NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Customer'),(2,2,'Customer'),(3,3,'Customer'),(4,4,'Customer'),(5,5,'Customer'),(6,6,'Customer'),(7,7,'Customer'),(8,8,'Customer'),(9,9,'Customer'),(10,10,'Customer'),(16,1,'Partner'),(17,2,'Partner'),(18,3,'Partner'),(19,4,'Partner'),(20,5,'Partner'),(21,6,'Partner'),(22,7,'Partner'),(23,8,'Partner'),(24,9,'Partner'),(25,10,'Partner'),(31,21,'Admin'),(32,1,'Admin'),(33,22,'Admin'),(34,2,'Admin'),(35,23,'Admin'),(36,9,'Admin'),(37,3,'Admin'),(38,24,'Admin'),(39,25,'Admin'),(40,26,'Admin'),(41,27,'Admin'),(42,8,'Admin'),(43,28,'Admin'),(44,5,'Admin'),(45,29,'Admin'),(46,30,'Admin'),(47,6,'Admin'),(48,7,'Admin'),(49,10,'Admin'),(50,4,'Admin'),(62,10,'DeliveryPersonnel'),(63,1,'DeliveryPersonnel'),(64,2,'DeliveryPersonnel'),(65,3,'DeliveryPersonnel'),(66,4,'DeliveryPersonnel'),(67,5,'DeliveryPersonnel'),(68,6,'DeliveryPersonnel'),(69,7,'DeliveryPersonnel'),(70,8,'DeliveryPersonnel'),(71,9,'DeliveryPersonnel');
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

-- Dump completed on 2024-07-25 17:06:30
