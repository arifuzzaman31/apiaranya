-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: vnbfkgtjux
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB-1:10.4.20+maria~buster-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Aranya','admin@admin.com',NULL,'$2y$10$ca9Xk39ikzsamtmFt/E.WeiDJpX0dsgzRbiRxh4N4zxu4uaS9NwQa',NULL,NULL,NULL,'2023-03-06 09:57:17','2023-03-06 09:57:17');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'qwt','qwt',NULL,1,NULL,'2023-03-07 04:56:43','2023-03-07 04:56:43'),(2,'abn','abn',NULL,1,NULL,'2023-03-07 04:56:50','2023-03-07 04:56:50'),(3,'Ryan Leon','ryan-leon',NULL,1,NULL,'2023-03-07 05:56:11','2023-03-07 05:56:11'),(4,'Dominic Stevenson','dominic-stevenson',NULL,1,NULL,'2023-03-07 05:56:18','2023-03-07 05:56:18');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Aranya','aranya',NULL,1,NULL,'2023-03-07 04:55:52','2023-03-11 09:19:42'),(2,'abc','abc',NULL,1,'2023-03-11 09:19:45','2023-03-07 04:55:58','2023-03-11 09:19:45'),(3,'avt','avt',NULL,1,'2023-03-11 09:19:47','2023-03-07 05:54:34','2023-03-11 09:19:47'),(4,'xyz','xyz',NULL,1,'2023-03-11 09:19:49','2023-03-07 05:54:39','2023-03-11 09:19:49');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_products`
--

DROP TABLE IF EXISTS `campaign_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `campaign_id` bigint(20) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_products`
--

LOCK TABLES `campaign_products` WRITE;
/*!40000 ALTER TABLE `campaign_products` DISABLE KEYS */;
INSERT INTO `campaign_products` VALUES (1,1,2,1,NULL,NULL);
/*!40000 ALTER TABLE `campaign_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_start_date` date NOT NULL,
  `campaign_expire_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES (1,'Baishakh','baishakh',NULL,NULL,NULL,NULL,NULL,'2023-03-15','2023-03-31',1,'2023-03-07 05:30:25','2023-03-07 05:30:18','2023-03-07 05:30:25'),(2,'Eid ul azha','eid-ul-azha',NULL,NULL,NULL,NULL,NULL,'2023-03-11','2023-03-29',1,NULL,'2023-03-07 05:30:35','2023-03-07 07:55:46');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cares`
--

DROP TABLE IF EXISTS `cares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `care_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cares`
--

LOCK TABLES `cares` WRITE;
/*!40000 ALTER TABLE `cares` DISABLE KEYS */;
INSERT INTO `cares` VALUES (1,'diy','diy',NULL,1,'2023-03-11 10:07:52','2023-03-07 04:59:33','2023-03-11 10:07:52'),(2,'wash','wash',NULL,1,'2023-03-11 10:07:54','2023-03-07 04:59:42','2023-03-11 10:07:54'),(3,'Indigo Mcdowell','indigo-mcdowell',NULL,1,'2023-03-11 10:07:57','2023-03-07 05:58:16','2023-03-11 10:07:57'),(4,'Angela Potter','angela-potter',NULL,1,'2023-03-11 10:08:00','2023-03-07 05:58:21','2023-03-11 10:08:00');
/*!40000 ALTER TABLE `cares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Set precedency',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the category',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Women','women',NULL,'0',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(2,'Men','men',NULL,'0',NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(3,'Kids','kids',NULL,'0',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL),(4,'Home Furnishings','home-furnishings',NULL,'0',NULL,NULL,NULL,NULL,4,1,NULL,NULL,NULL),(5,'Beauty Collection','beauty-collection',NULL,'0',NULL,NULL,NULL,NULL,5,1,NULL,NULL,NULL),(6,'Accessories','accessories',NULL,'0',NULL,NULL,NULL,NULL,6,1,NULL,NULL,NULL),(7,'Saree','saree',NULL,'1',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(8,'Salwar Kameez','salwar-kameez',NULL,'1',NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(9,'Kurti & Fatua','kurti-fatua',NULL,'1',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL),(10,'Tops & Shirts','tops-shirts',NULL,'1',NULL,NULL,NULL,NULL,4,1,NULL,NULL,NULL),(11,'Kimono','kimono',NULL,'1',NULL,NULL,NULL,NULL,5,1,NULL,NULL,NULL),(12,'Kaftan','kaftan',NULL,'1',NULL,NULL,NULL,NULL,6,1,NULL,NULL,NULL),(13,'Panjabi','panjabi',NULL,'2',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(14,'Vest','vest',NULL,'2',NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(15,'T-Shirt','t-shirt',NULL,'2',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL),(16,'Fatua','fatua',NULL,'2',NULL,NULL,NULL,NULL,4,1,NULL,NULL,NULL),(17,'Shirts','shirts',NULL,'2',NULL,NULL,NULL,NULL,5,1,NULL,NULL,NULL),(18,'Jackets','jackets',NULL,'2',NULL,NULL,NULL,NULL,6,1,NULL,NULL,NULL),(19,'Baby Kantha','baby-kantha',NULL,'4',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(20,'Cushion Cover','cushion-cover',NULL,'4',NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(21,'Ceramic','ceramic',NULL,'4',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL),(22,'Table Cloth','table-cloth',NULL,'4',NULL,NULL,NULL,NULL,4,1,NULL,NULL,NULL),(23,'Bed Cover','bed-cover',NULL,'4',NULL,NULL,NULL,NULL,5,1,NULL,NULL,NULL),(24,'Basket','basket',NULL,'4',NULL,NULL,NULL,NULL,6,1,NULL,NULL,NULL),(25,'Napkin','napkin',NULL,'4',NULL,NULL,NULL,NULL,7,1,NULL,NULL,NULL),(26,'Table Runner','table-runner',NULL,'4',NULL,NULL,NULL,NULL,8,1,NULL,NULL,NULL),(27,'Aatong','aatong',NULL,'6',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(28,'Cangbuk','cangbuk',NULL,'6',NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(29,'Ashtodhatu Jewellery','ashtodhatu-jewellery',NULL,'6',NULL,NULL,NULL,NULL,3,1,NULL,NULL,NULL),(30,'Silver Jewellery','silver-jewellery',NULL,'6',NULL,NULL,NULL,NULL,4,1,NULL,NULL,NULL),(31,'Metal Jewellery','metal-jewellery',NULL,'6',NULL,NULL,NULL,NULL,5,1,NULL,NULL,NULL),(32,'Other Jewellery','other-jewellery',NULL,'6',NULL,NULL,NULL,NULL,6,1,NULL,NULL,NULL),(33,'Scarves','scarves',NULL,'6',NULL,NULL,NULL,NULL,7,1,NULL,NULL,NULL),(34,'Orna','orna',NULL,'6',NULL,NULL,NULL,NULL,8,1,NULL,NULL,NULL),(35,'Stoles','stoles',NULL,'6',NULL,NULL,NULL,NULL,9,1,NULL,NULL,NULL),(36,'Shawls','shawls',NULL,'6',NULL,NULL,NULL,NULL,10,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_fabric`
--

DROP TABLE IF EXISTS `category_fabric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_fabric` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `fabric_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_fabric`
--

LOCK TABLES `category_fabric` WRITE;
/*!40000 ALTER TABLE `category_fabric` DISABLE KEYS */;
INSERT INTO `category_fabric` VALUES (1,9,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,9,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,13,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,18,2,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,10,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(6,10,1,'2023-03-09 06:13:15','2023-03-09 06:13:15');
/*!40000 ALTER TABLE `category_fabric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colours`
--

DROP TABLE IF EXISTS `colours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colours` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colours`
--

LOCK TABLES `colours` WRITE;
/*!40000 ALTER TABLE `colours` DISABLE KEYS */;
INSERT INTO `colours` VALUES (1,'Red','#ff0000','red',NULL,1,NULL,'2023-03-06 16:06:30','2023-03-11 08:24:07'),(2,'Blue','#0000ff','blue',NULL,1,NULL,'2023-03-06 16:06:50','2023-03-11 08:32:43'),(3,'Green','#00ff00','green',NULL,1,NULL,'2023-03-06 16:07:02','2023-03-11 08:44:30'),(5,'Pink','#ffc0cb','pink',NULL,1,NULL,'2023-03-09 06:01:37','2023-03-11 08:20:01'),(8,'Purple','#9933ff','purple',NULL,1,NULL,'2023-03-09 06:02:52','2023-03-11 08:47:14'),(9,'Beige','#f5f5dc','beige',NULL,1,NULL,'2023-03-11 07:53:39','2023-03-11 07:57:57'),(10,'Brown','#964b00','brown',NULL,1,NULL,'2023-03-11 07:57:22','2023-03-11 07:57:22'),(11,'Golden','#ffd700','golden',NULL,1,NULL,'2023-03-11 08:01:32','2023-03-11 08:01:57'),(12,'Gray','#808080','gray',NULL,1,NULL,'2023-03-11 08:03:47','2023-03-11 08:03:47'),(13,'Olive','#808000','olive',NULL,1,NULL,'2023-03-11 08:05:03','2023-03-11 08:05:03'),(14,'Teal','#008080','teal',NULL,1,NULL,'2023-03-11 08:06:27','2023-03-11 08:06:27'),(15,'Annatto','#8c5341','annatto',NULL,1,NULL,'2023-03-11 08:09:28','2023-03-11 08:09:28'),(16,'Manjit','#b12525','manjit',NULL,1,NULL,'2023-03-11 08:11:40','2023-03-11 08:11:40'),(17,'Navy','#002f6c','navy',NULL,1,NULL,'2023-03-11 08:14:16','2023-03-11 08:14:16'),(18,'Off-White','#f5f5f5','off-white',NULL,1,NULL,'2023-03-11 08:16:02','2023-03-11 08:16:41'),(19,'White','#ffffff','white',NULL,1,NULL,'2023-03-11 08:22:44','2023-03-11 08:22:44');
/*!40000 ALTER TABLE `colours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consignments`
--

DROP TABLE IF EXISTS `consignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consignments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consignment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consignments`
--

LOCK TABLES `consignments` WRITE;
/*!40000 ALTER TABLE `consignments` DISABLE KEYS */;
INSERT INTO `consignments` VALUES (1,'avd','avd',NULL,1,'2023-03-11 09:47:08','2023-03-07 04:58:52','2023-03-11 09:47:08'),(2,'rty','rty',NULL,1,'2023-03-11 09:47:10','2023-03-07 04:59:02','2023-03-11 09:47:10'),(3,'Briar Kirkland','briar-kirkland',NULL,1,'2023-03-11 09:47:12','2023-03-07 05:57:40','2023-03-11 09:47:12'),(4,'Bo Hendrix','bo-hendrix',NULL,1,'2023-03-11 09:47:14','2023-03-07 05:57:46','2023-03-11 09:47:14');
/*!40000 ALTER TABLE `consignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `tracking_id` int(11) NOT NULL,
  `process_date` date DEFAULT NULL,
  `process_state` tinyint(4) DEFAULT NULL,
  `process_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_delivery_date` date DEFAULT NULL,
  `on_delivery_state` tinyint(4) DEFAULT NULL,
  `on_delivery_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_state` tinyint(4) DEFAULT NULL,
  `delivery_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designers`
--

DROP TABLE IF EXISTS `designers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `designers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `designer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designer_sort_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designers`
--

LOCK TABLES `designers` WRITE;
/*!40000 ALTER TABLE `designers` DISABLE KEYS */;
INSERT INTO `designers` VALUES (1,'CS','CS','cs',NULL,1,NULL,'2023-03-07 04:56:13','2023-03-11 09:21:32'),(2,'BA','BA','ba',NULL,1,NULL,'2023-03-07 04:56:27','2023-03-11 09:21:23'),(3,'AR','AR','ar',NULL,1,NULL,'2023-03-07 05:55:51','2023-03-11 09:21:04'),(4,'AA','AA','aa',NULL,1,NULL,'2023-03-07 05:56:01','2023-03-11 09:20:55'),(5,'FF','FF','ff',NULL,1,NULL,'2023-03-11 09:21:51','2023-03-11 09:21:51'),(6,'IJ','IJ','ij',NULL,1,NULL,'2023-03-11 09:22:02','2023-03-11 09:22:02'),(7,'MA','MA','ma',NULL,1,NULL,'2023-03-11 09:22:14','2023-03-11 09:22:14'),(8,'MC','MC','mc',NULL,1,NULL,'2023-03-11 09:22:32','2023-03-11 09:22:32'),(9,'NH','NH','nh',NULL,1,NULL,'2023-03-11 09:22:42','2023-03-11 09:22:42'),(10,'NK','NK','nk',NULL,1,NULL,'2023-03-11 09:23:05','2023-03-11 09:23:05'),(11,'RG','RG','rg',NULL,1,NULL,'2023-03-11 09:23:14','2023-03-11 09:23:14'),(12,'SF','SF','sf',NULL,1,NULL,'2023-03-11 09:23:44','2023-03-11 09:23:44'),(13,'SM','SM','sm',NULL,1,NULL,'2023-03-11 09:24:02','2023-03-11 09:24:02'),(14,'SR','SR','sr',NULL,1,NULL,'2023-03-11 09:24:11','2023-03-11 09:24:11'),(15,'TA','TA','ta',NULL,1,NULL,'2023-03-11 09:24:38','2023-03-11 09:24:38');
/*!40000 ALTER TABLE `designers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_type` enum('percentage','flat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_amount` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,1,3,'percentage',345,1,NULL,'2023-03-07 05:31:33','2023-03-07 05:31:33');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embellishments`
--

DROP TABLE IF EXISTS `embellishments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `embellishments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `embellishment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embellishments`
--

LOCK TABLES `embellishments` WRITE;
/*!40000 ALTER TABLE `embellishments` DISABLE KEYS */;
INSERT INTO `embellishments` VALUES (1,'Cotton Print','cotton-print',NULL,1,NULL,'2023-03-07 04:57:04','2023-03-11 09:28:07'),(2,'Block Print','block-print',NULL,1,NULL,'2023-03-07 04:57:11','2023-03-11 09:27:43'),(3,'Anokhi Wax Print','anokhi-wax-print',NULL,1,NULL,'2023-03-07 05:56:30','2023-03-11 09:27:22'),(4,'Anokhi Print','anokhi-print',NULL,1,NULL,'2023-03-07 05:56:35','2023-03-11 09:26:58'),(5,'Crush Dye','crush-dye',NULL,1,NULL,'2023-03-11 09:28:27','2023-03-11 09:28:27'),(6,'Hand Loom','hand-loom',NULL,1,NULL,'2023-03-11 09:28:45','2023-03-11 09:28:45'),(7,'Kantha','kantha',NULL,1,NULL,'2023-03-11 09:29:06','2023-03-11 09:29:06'),(8,'Plain Dye','plain-dye',NULL,1,NULL,'2023-03-11 09:29:39','2023-03-11 09:29:39'),(9,'Karchupi Dye','karchupi-dye',NULL,1,NULL,'2023-03-11 09:30:10','2023-03-11 09:30:10'),(10,'Kota Wax Print','kota-wax-print',NULL,1,NULL,'2023-03-11 09:30:28','2023-03-11 09:30:28'),(11,'Patch Print','patch-print',NULL,1,NULL,'2023-03-11 09:30:56','2023-03-11 09:30:56'),(12,'Pipe Tie Dye','pipe-tie-dye',NULL,1,NULL,'2023-03-11 09:31:31','2023-03-11 09:31:31'),(13,'Print','print',NULL,1,NULL,'2023-03-11 09:31:56','2023-03-11 09:31:56'),(14,'Shibori Dye','shibori-dye',NULL,1,NULL,'2023-03-11 09:32:23','2023-03-11 09:32:23'),(15,'Silver & Rudrksha','silver-rudrksha',NULL,1,NULL,'2023-03-11 09:32:49','2023-03-11 09:32:49'),(16,'Tie Dye','tie-dye',NULL,1,NULL,'2023-03-11 09:33:29','2023-03-11 09:33:29'),(17,'Voil Print','voil-print',NULL,1,NULL,'2023-03-11 09:33:49','2023-03-11 09:33:49'),(18,'Wax Print','wax-print',NULL,1,NULL,'2023-03-11 09:34:20','2023-03-11 09:34:20'),(19,'Embroidery','embroidery',NULL,1,NULL,'2023-03-11 09:36:18','2023-03-11 09:36:18');
/*!40000 ALTER TABLE `embellishments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabrics`
--

DROP TABLE IF EXISTS `fabrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fabric_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabrics`
--

LOCK TABLES `fabrics` WRITE;
/*!40000 ALTER TABLE `fabrics` DISABLE KEYS */;
INSERT INTO `fabrics` VALUES (1,'Balaka Silk','Balaka Silk','balaka-silk',NULL,1,NULL,'2023-03-07 04:55:22','2023-03-11 09:05:11'),(2,'Aatong','Aatong','aatong',NULL,1,NULL,'2023-03-07 04:55:32','2023-03-11 09:04:36'),(3,'Bexi Voil','Bexi Voil','bexi-voil',NULL,1,NULL,'2023-03-11 09:05:42','2023-03-11 09:05:42'),(4,'Cotton','Cotton','cotton',NULL,1,NULL,'2023-03-11 09:06:08','2023-03-11 09:06:08'),(5,'Cotton Allover Print','Cotton Allover Print','cotton-allover-print',NULL,1,NULL,'2023-03-11 09:06:28','2023-03-11 09:06:28'),(6,'Cotton Kota','Cotton Kota','cotton-kota',NULL,1,NULL,'2023-03-11 09:06:47','2023-03-11 09:06:47'),(7,'Cotton Paar Anchol','Cotton Paar Anchol','cotton-paar-anchol',NULL,1,NULL,'2023-03-11 09:07:05','2023-03-11 09:07:05'),(8,'Cotton Paar Anchol Print','Cotton Paar Anchol Print','cotton-paar-anchol-print',NULL,1,NULL,'2023-03-11 09:07:31','2023-03-11 09:07:31'),(9,'Cotton Than','Cotton Than','cotton-than',NULL,1,NULL,'2023-03-11 09:07:51','2023-03-11 09:07:51'),(10,'Cotton Voil','Cotton Voil','cotton-voil',NULL,1,NULL,'2023-03-11 09:08:13','2023-03-11 09:08:13'),(11,'Crepe Silk','Crepe Silk','crepe-silk',NULL,1,NULL,'2023-03-11 09:08:53','2023-03-11 09:08:53'),(12,'Denim','Denim','denim',NULL,1,NULL,'2023-03-11 09:09:16','2023-03-11 09:09:16'),(13,'Denim','Denim','denim',NULL,1,NULL,'2023-03-11 09:09:16','2023-03-11 09:09:16'),(14,'Endi Cotton','Endi Cotton','endi-cotton',NULL,1,NULL,'2023-03-11 09:09:40','2023-03-11 09:09:40'),(15,'Endi Cotton Paar Anchol Dye','Endi Cotton Paar Anchol Dye','endi-cotton-paar-anchol-dye',NULL,1,NULL,'2023-03-11 09:10:06','2023-03-11 09:10:06'),(16,'Endi H/Silk','Endi H/Silk','endi-hsilk',NULL,1,NULL,'2023-03-11 09:10:48','2023-03-11 09:10:48'),(17,'Endi Half Silk Anchol Print','Endi Half Silk Anchol Print','endi-half-silk-anchol-print',NULL,1,NULL,'2023-03-11 09:11:16','2023-03-11 09:11:16'),(18,'Endi Silk','Endi Silk','endi-silk',NULL,1,NULL,'2023-03-11 09:11:43','2023-03-11 09:11:43'),(19,'Endi Silk EMB Paar Anchol Print','Endi Silk EMB Paar Anchol Print','endi-silk-emb-paar-anchol-print',NULL,1,NULL,'2023-03-11 09:12:09','2023-03-11 09:12:09'),(20,'Eri Cotton','Eri Cotton','eri-cotton',NULL,1,NULL,'2023-03-11 09:12:39','2023-03-11 09:12:39'),(21,'Khadi','Khadi','khadi',NULL,1,NULL,'2023-03-11 09:13:03','2023-03-11 09:13:03'),(22,'Knit Cotton','Knit Cotton','knit-cotton',NULL,1,NULL,'2023-03-11 09:13:42','2023-03-11 09:13:42'),(23,'Linen','Linen','linen',NULL,1,NULL,'2023-03-11 09:14:06','2023-03-11 09:14:06'),(24,'Linen Anokhi Wax Print','Linen Anokhi Wax Print','linen-anokhi-wax-print',NULL,1,NULL,'2023-03-11 09:14:32','2023-03-11 09:14:32'),(25,'Silk','Silk','silk',NULL,1,NULL,'2023-03-11 09:15:04','2023-03-11 09:15:04'),(26,'Silk Allover Dye','Silk Allover Dye','silk-allover-dye',NULL,1,NULL,'2023-03-11 09:15:30','2023-03-11 09:15:30'),(27,'Silk Paar Anchol Nakshi Dye','Silk Paar Anchol Nakshi Dye','silk-paar-anchol-nakshi-dye',NULL,1,NULL,'2023-03-11 09:15:56','2023-03-11 09:15:56'),(28,'Voil','Voil','voil',NULL,1,NULL,'2023-03-11 09:16:19','2023-03-11 09:16:19');
/*!40000 ALTER TABLE `fabrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fits`
--

DROP TABLE IF EXISTS `fits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fits`
--

LOCK TABLES `fits` WRITE;
/*!40000 ALTER TABLE `fits` DISABLE KEYS */;
INSERT INTO `fits` VALUES (1,'Slim Fit','slim-fit',NULL,1,NULL,'2023-03-07 04:58:21','2023-03-11 09:46:14'),(2,'yop','yop',NULL,1,'2023-03-11 09:46:17','2023-03-07 04:58:31','2023-03-11 09:46:17'),(3,'Cooper Shields','cooper-shields',NULL,1,'2023-03-11 09:46:19','2023-03-07 05:57:26','2023-03-11 09:46:19'),(4,'Colton Weaver','colton-weaver',NULL,1,'2023-03-11 09:46:22','2023-03-07 05:57:31','2023-03-11 09:46:22');
/*!40000 ALTER TABLE `fits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ingredient_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,'Betelnut','betelnut',NULL,1,NULL,'2023-03-07 04:59:12','2023-03-11 09:48:08'),(2,'Catechu','catechu',NULL,1,NULL,'2023-03-07 04:59:21','2023-03-11 09:48:28'),(3,'Indigo','indigo',NULL,1,NULL,'2023-03-07 05:57:55','2023-03-11 09:48:55'),(4,'Khasmi','khasmi',NULL,1,NULL,'2023-03-07 05:58:05','2023-03-11 09:49:25'),(5,'Lotkom','lotkom',NULL,1,NULL,'2023-03-11 09:49:47','2023-03-11 09:49:47'),(6,'Madder','madder',NULL,1,NULL,'2023-03-11 09:50:08','2023-03-11 09:50:08'),(7,'Myrabalan','myrabalan',NULL,1,NULL,'2023-03-11 09:50:38','2023-03-11 09:50:38'),(8,'Raintree','raintree',NULL,1,NULL,'2023-03-11 09:51:09','2023-03-11 09:51:09'),(9,'Annatto','annatto',NULL,1,NULL,'2023-03-11 09:55:13','2023-03-11 09:57:26'),(10,'Pomegranate','pomegranate',NULL,1,NULL,'2023-03-11 09:55:39','2023-03-11 09:55:39'),(11,'Manjit','manjit',NULL,1,NULL,'2023-03-11 09:56:32','2023-03-11 09:56:32'),(12,'Black Kashmi','black-kashmi',NULL,1,NULL,'2023-03-11 10:06:04','2023-03-11 10:06:04'),(13,'Sagupest','sagupest',NULL,1,NULL,'2023-03-11 10:07:06','2023-03-11 10:07:06');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `colour_id` bigint(20) unsigned NOT NULL,
  `size_id` bigint(20) unsigned NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_amount` int(11) NOT NULL DEFAULT 10,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (1,1,4,5,5,'345',10,NULL,NULL,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,2,4,6,'56',10,NULL,NULL,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,1,67,'567',10,NULL,NULL,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,3,5,345,'89',10,NULL,NULL,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,3,5,5,'345',10,NULL,NULL,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,6,5,23,'345',10,NULL,NULL,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,2,4,10,'23',10,NULL,NULL,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,6,5,7,'45',10,NULL,NULL,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makings`
--

DROP TABLE IF EXISTS `makings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `making_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makings`
--

LOCK TABLES `makings` WRITE;
/*!40000 ALTER TABLE `makings` DISABLE KEYS */;
INSERT INTO `makings` VALUES (1,'Stitched','stitched',NULL,1,NULL,'2023-03-07 04:57:23','2023-03-11 09:37:43'),(2,'Unstitched','unstitched',NULL,1,NULL,'2023-03-07 04:57:29','2023-03-11 09:38:01'),(3,'Holmes Patton','holmes-patton',NULL,1,'2023-03-11 09:38:05','2023-03-07 05:56:44','2023-03-11 09:38:05'),(4,'Christen Glover','christen-glover',NULL,1,'2023-03-11 09:38:08','2023-03-07 05:56:50','2023-03-11 09:38:08');
/*!40000 ALTER TABLE `makings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_12_01_105900_create_admins_table',1),(6,'2022_12_13_061800_create_categories_table',1),(7,'2022_12_13_061932_create_products_table',1),(8,'2022_12_13_061957_create_orders_table',1),(9,'2022_12_13_062042_create_inventories_table',1),(10,'2022_12_13_062113_create_deliveries_table',1),(11,'2023_01_03_112319_create_payments_table',1),(12,'2023_01_22_090936_create_discounts_table',1),(13,'2023_01_24_121207_create_colours_table',1),(14,'2023_01_24_121348_create_sizes_table',1),(15,'2023_01_24_121418_create_fabrics_table',1),(16,'2023_01_30_124951_create_product_colours_table',1),(17,'2023_01_30_125118_create_product_sizes_table',1),(18,'2023_01_30_125155_create_product_fabrics_table',1),(19,'2023_02_05_052839_create_order_details_table',1),(20,'2023_02_06_132655_create_campaigns_table',1),(21,'2023_02_07_071912_create_campaign_products_table',1),(22,'2023_02_13_080837_create_pages_table',1),(23,'2023_02_18_200445_create_user_shipping_infos_table',1),(24,'2023_02_18_201457_create_user_billing_infos_table',1),(25,'2023_02_23_044707_create_category_fabric_table',1),(26,'2023_02_28_140135_create_vendors_table',1),(27,'2023_02_28_140532_create_brands_table',1),(28,'2023_02_28_140556_create_designers_table',1),(29,'2023_02_28_142633_create_artists_table',1),(30,'2023_03_02_065627_create_embellishments_table',1),(31,'2023_03_05_060339_create_makings_table',1),(32,'2023_03_05_060519_create_seasons_table',1),(33,'2023_03_05_060553_create_varieties_table',1),(34,'2023_03_05_060617_create_fits_table',1),(35,'2023_03_05_060647_create_consignments_table',1),(36,'2023_03_05_061200_create_ingredients_table',1),(37,'2023_03_05_151612_create_product_tags_table',1),(38,'2023_03_06_052323_create_cares_table',1),(39,'2023_03_06_070719_create_product_vendors_table',1),(40,'2023_03_06_070742_create_product_brands_table',1),(41,'2023_03_06_070758_create_product_designers_table',1),(42,'2023_03_06_070828_create_product_embellishments_table',1),(43,'2023_03_06_070956_create_product_makings_table',1),(44,'2023_03_06_071021_create_product_seasons_table',1),(45,'2023_03_06_071044_create_product_varieties_table',1),(46,'2023_03_06_071108_create_product_fits_table',1),(47,'2023_03_06_071132_create_product_artists_table',1),(48,'2023_03_06_092224_create_product_consignments_table',1),(49,'2023_03_06_092741_create_product_cares_table',1),(50,'2023_03_06_104956_create_product_ingredients_table',1),(51,'2023_03_06_134546_create_vat_taxes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` bigint(20) unsigned NOT NULL,
  `colour_id` bigint(20) unsigned DEFAULT 0,
  `size_id` bigint(20) unsigned DEFAULT 0,
  `fabric_id` bigint(20) unsigned DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'customer_id',
  `quantity` int(11) NOT NULL,
  `selling_price` double(8,4) NOT NULL,
  `buying_price` double(8,4) NOT NULL,
  `total_buying_price` double(8,4) NOT NULL,
  `total_selling_price` double(8,4) NOT NULL,
  `unit_discount` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `total_price` double(8,4) NOT NULL,
  `vat_rate` double NOT NULL DEFAULT 0 COMMENT 'vat rate in percentage ''%''',
  `vat_amount` double NOT NULL DEFAULT 0 COMMENT 'value added vat amount',
  `total_item` int(11) NOT NULL DEFAULT 0,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 for COD/1 for MPAY/ 2 for POS/ 3 for CCRD/4 for BOD if not set default COD',
  `payment_method_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ssl,amex,stripe',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `coupon_discount` double NOT NULL DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 not paid 1 = paid',
  `validation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` date NOT NULL,
  `requested_delivery_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_same_address` tinyint(4) NOT NULL DEFAULT 0,
  `order_position` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending 1=process 2=OnProcess 3=Delivered',
  `delivery_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for home, 1 for pickup point',
  `percel_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for Box, 1 for DOC',
  `pickup_point_no` int(11) DEFAULT NULL COMMENT 'pickup point id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_artists`
--

DROP TABLE IF EXISTS `product_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_artists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `artist_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_artists`
--

LOCK TABLES `product_artists` WRITE;
/*!40000 ALTER TABLE `product_artists` DISABLE KEYS */;
INSERT INTO `product_artists` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(3,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(9,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_brands`
--

DROP TABLE IF EXISTS `product_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_brands`
--

LOCK TABLES `product_brands` WRITE;
/*!40000 ALTER TABLE `product_brands` DISABLE KEYS */;
INSERT INTO `product_brands` VALUES (1,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,3,2,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,1,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_cares`
--

DROP TABLE IF EXISTS `product_cares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_cares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `care_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_cares`
--

LOCK TABLES `product_cares` WRITE;
/*!40000 ALTER TABLE `product_cares` DISABLE KEYS */;
INSERT INTO `product_cares` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_cares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_colours`
--

DROP TABLE IF EXISTS `product_colours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_colours` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `colour_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_colours`
--

LOCK TABLES `product_colours` WRITE;
/*!40000 ALTER TABLE `product_colours` DISABLE KEYS */;
INSERT INTO `product_colours` VALUES (1,1,4,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,3,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,6,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,6,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_colours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_consignments`
--

DROP TABLE IF EXISTS `product_consignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_consignments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `consignment_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_consignments`
--

LOCK TABLES `product_consignments` WRITE;
/*!40000 ALTER TABLE `product_consignments` DISABLE KEYS */;
INSERT INTO `product_consignments` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_consignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_designers`
--

DROP TABLE IF EXISTS `product_designers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_designers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `designer_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_designers`
--

LOCK TABLES `product_designers` WRITE;
/*!40000 ALTER TABLE `product_designers` DISABLE KEYS */;
INSERT INTO `product_designers` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,2,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,2,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_designers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_embellishments`
--

DROP TABLE IF EXISTS `product_embellishments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_embellishments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `embellishment_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_embellishments`
--

LOCK TABLES `product_embellishments` WRITE;
/*!40000 ALTER TABLE `product_embellishments` DISABLE KEYS */;
INSERT INTO `product_embellishments` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_embellishments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_fabrics`
--

DROP TABLE IF EXISTS `product_fabrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_fabrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `fabric_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_fabrics`
--

LOCK TABLES `product_fabrics` WRITE;
/*!40000 ALTER TABLE `product_fabrics` DISABLE KEYS */;
INSERT INTO `product_fabrics` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,3,2,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,4,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(6,4,1,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,5,2,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(8,5,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_fabrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_fits`
--

DROP TABLE IF EXISTS `product_fits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_fits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `fit_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_fits`
--

LOCK TABLES `product_fits` WRITE;
/*!40000 ALTER TABLE `product_fits` DISABLE KEYS */;
INSERT INTO `product_fits` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_fits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_ingredients`
--

DROP TABLE IF EXISTS `product_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_ingredients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `ingredients_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_ingredients`
--

LOCK TABLES `product_ingredients` WRITE;
/*!40000 ALTER TABLE `product_ingredients` DISABLE KEYS */;
INSERT INTO `product_ingredients` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(9,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_makings`
--

DROP TABLE IF EXISTS `product_makings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_makings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `making_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_makings`
--

LOCK TABLES `product_makings` WRITE;
/*!40000 ALTER TABLE `product_makings` DISABLE KEYS */;
INSERT INTO `product_makings` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(3,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(9,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_makings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_seasons`
--

DROP TABLE IF EXISTS `product_seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_seasons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `season_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_seasons`
--

LOCK TABLES `product_seasons` WRITE;
/*!40000 ALTER TABLE `product_seasons` DISABLE KEYS */;
INSERT INTO `product_seasons` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,5,2,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(10,5,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `size_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizes`
--

LOCK TABLES `product_sizes` WRITE;
/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;
INSERT INTO `product_sizes` VALUES (1,1,5,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,4,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,5,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,5,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,5,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,5,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `keyword_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,1,'\"shirt,tops\"',NULL,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,2,'\"kaftan\"',NULL,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(3,3,'\"katan saree,silk\"',NULL,1,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(4,4,'\"skirt,top\"',NULL,1,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(5,5,'\"skirt\"',NULL,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_varieties`
--

DROP TABLE IF EXISTS `product_varieties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_varieties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `variety_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_varieties`
--

LOCK TABLES `product_varieties` WRITE;
/*!40000 ALTER TABLE `product_varieties` DISABLE KEYS */;
INSERT INTO `product_varieties` VALUES (1,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(5,3,3,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(7,4,3,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(8,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(9,5,3,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_varieties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_vendors`
--

DROP TABLE IF EXISTS `product_vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_vendors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `vendor_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_vendors`
--

LOCK TABLES `product_vendors` WRITE;
/*!40000 ALTER TABLE `product_vendors` DISABLE KEYS */;
INSERT INTO `product_vendors` VALUES (1,1,2,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(2,1,1,'2023-03-07 05:26:13','2023-03-07 05:26:13'),(3,2,1,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(4,2,2,'2023-03-07 05:29:32','2023-03-07 05:29:32'),(5,3,4,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(6,3,1,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(7,3,2,'2023-03-07 06:05:51','2023-03-07 06:05:51'),(8,4,4,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(9,4,2,'2023-03-09 06:13:15','2023-03-09 06:13:15'),(10,5,4,'2023-03-09 06:40:58','2023-03-09 06:40:58'),(11,5,1,'2023-03-09 06:40:58','2023-03-09 06:40:58');
/*!40000 ALTER TABLE `product_vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `sub_category_id` bigint(20) unsigned DEFAULT NULL,
  `vat_tax_id` bigint(20) unsigned DEFAULT NULL,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `mrp_price` int(11) NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the product',
  `is_discount` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Kurti','kurti',1,9,NULL,'34','https://res.cloudinary.com/diyc1dizi/image/upload/v1678166209/aranya/qugivjip9yeptnpvjr5g.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678166209/aranya/qugivjip9yeptnpvjr5g.jpg',NULL,NULL,NULL,NULL,34,789,'29 X 5 X 6',NULL,'5','Et vitae est similiq','<p>ab</p>',1,0,'2023-03-07 05:26:13',NULL,'2023-03-07 05:26:13'),(2,'Punjabi','punjabi',2,13,NULL,'45','https://res.cloudinary.com/diyc1dizi/image/upload/v1678166874/aranya/c8renezhtz6h2efsrfuz.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678166874/aranya/c8renezhtz6h2efsrfuz.jpg',NULL,NULL,NULL,NULL,4,233,'4 x 5 x6',NULL,'5','wert5','<p>girls wear</p>',1,0,'2023-03-07 05:29:32',NULL,'2023-03-07 05:29:32'),(3,'Jacket','jacket',2,18,NULL,'9','https://res.cloudinary.com/diyc1dizi/image/upload/v1678168964/aranya/o7gfzbz4uzwedijow0nd.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678168964/aranya/o7gfzbz4uzwedijow0nd.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678168989/aranya/wgawrosbxvexnrjxufgc.jpg',NULL,NULL,NULL,10,856,'4 x 5 x6',NULL,'34','Perspiciatis id dol','<p>saree</p>',1,0,'2023-03-07 06:05:51',NULL,'2023-03-07 06:05:51'),(4,'Skirt','skirt',1,10,NULL,'3','https://res.cloudinary.com/diyc1dizi/image/upload/v1678342258/aranya/jvpdha2rwb5gln4maprq.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678342258/aranya/jvpdha2rwb5gln4maprq.jpg',NULL,NULL,NULL,NULL,24,9,'4 x 5 x6',NULL,'67','234','<p>floral skirt</p>',1,0,'2023-03-09 06:13:15',NULL,'2023-03-09 06:13:15'),(5,'Kaftan','kaftan',1,9,NULL,'7','https://res.cloudinary.com/diyc1dizi/image/upload/v1678343918/aranya/j9ltpkad5lmariibvqsw.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678343918/aranya/j9ltpkad5lmariibvqsw.jpg','https://res.cloudinary.com/diyc1dizi/image/upload/v1678343891/aranya/efmuf7tyhjthrnogzcui.jpg',NULL,NULL,NULL,7,9,'4 x 5 x6',NULL,'6','234','<p>skirt</p>',1,0,'2023-03-09 06:40:58',NULL,'2023-03-09 06:40:58');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seasons`
--

DROP TABLE IF EXISTS `seasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seasons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `season_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seasons`
--

LOCK TABLES `seasons` WRITE;
/*!40000 ALTER TABLE `seasons` DISABLE KEYS */;
INSERT INTO `seasons` VALUES (1,'0871','0871',NULL,1,NULL,'2023-03-07 04:57:43','2023-03-11 09:40:42'),(2,'1017','1017',NULL,1,NULL,'2023-03-07 04:57:50','2023-03-11 09:41:01'),(3,'E118','e118',NULL,1,NULL,'2023-03-07 05:56:59','2023-03-11 09:41:23'),(4,'E120','e120',NULL,1,NULL,'2023-03-07 05:57:04','2023-03-11 09:41:41'),(5,'E217','e217',NULL,1,NULL,'2023-03-11 09:41:59','2023-03-11 09:41:59'),(6,'E218','e218',NULL,1,NULL,'2023-03-11 09:42:16','2023-03-11 09:42:16'),(7,'NA-1','na-1',NULL,1,NULL,'2023-03-11 09:42:43','2023-03-11 09:42:43'),(8,'NO-1','no-1',NULL,1,NULL,'2023-03-11 09:42:50','2023-03-11 09:42:50'),(9,'S117','s117',NULL,1,NULL,'2023-03-11 09:43:18','2023-03-11 09:43:18'),(10,'S118','s118',NULL,1,NULL,'2023-03-11 09:43:36','2023-03-11 09:43:36'),(11,'S118','s118',NULL,1,NULL,'2023-03-11 09:43:36','2023-03-11 09:43:36'),(12,'S119','s119',NULL,1,NULL,'2023-03-11 09:43:53','2023-03-11 09:43:53'),(13,'S120','s120',NULL,1,NULL,'2023-03-11 09:44:10','2023-03-11 09:44:10');
/*!40000 ALTER TABLE `seasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sizes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'S','s',NULL,1,NULL,'2023-03-06 16:07:31','2023-03-06 16:07:31'),(2,'L','l',NULL,1,NULL,'2023-03-06 16:07:37','2023-03-06 16:07:37'),(3,'M','m',NULL,1,NULL,'2023-03-06 16:07:44','2023-03-06 16:07:44'),(4,'XL','xl',NULL,1,NULL,'2023-03-06 16:07:50','2023-03-06 16:07:50'),(5,'XXL','xxl',NULL,1,NULL,'2023-03-06 16:08:08','2023-03-06 16:08:08'),(6,'0-3 Month','0-3-month',NULL,1,NULL,'2023-03-11 08:49:10','2023-03-11 08:49:10'),(7,'10-11','10-11',NULL,1,NULL,'2023-03-11 08:50:10','2023-03-11 08:50:10'),(8,'1-2','1-2',NULL,1,NULL,'2023-03-11 08:50:50','2023-03-11 08:50:50'),(9,'12-13','12-13',NULL,1,NULL,'2023-03-11 08:51:14','2023-03-11 08:51:14'),(10,'14-15','14-15',NULL,1,NULL,'2023-03-11 08:51:39','2023-03-11 08:51:39'),(11,'2-3','2-3',NULL,1,NULL,'2023-03-11 08:54:34','2023-03-11 08:54:34'),(12,'3-4','3-4',NULL,1,NULL,'2023-03-11 08:54:43','2023-03-11 08:54:43'),(13,'3-6 Month','3-6-month',NULL,1,NULL,'2023-03-11 08:55:14','2023-03-11 08:55:14'),(14,'6-9 Month','6-9-month',NULL,1,NULL,'2023-03-11 08:55:42','2023-03-11 08:55:42'),(15,'9-12 Month','9-12-month',NULL,1,NULL,'2023-03-11 08:56:13','2023-03-11 08:56:13'),(16,'4-5','4-5',NULL,1,NULL,'2023-03-11 08:57:06','2023-03-11 08:57:06'),(17,'6-7','6-7',NULL,1,NULL,'2023-03-11 08:57:30','2023-03-11 08:57:30'),(18,'8-9','8-9',NULL,1,NULL,'2023-03-11 08:57:56','2023-03-11 08:57:56'),(19,'38','38',NULL,1,NULL,'2023-03-11 08:58:28','2023-03-11 08:58:28'),(20,'40','40',NULL,1,NULL,'2023-03-11 08:58:35','2023-03-11 08:58:35'),(21,'42','42',NULL,1,NULL,'2023-03-11 08:58:40','2023-03-11 08:58:40'),(22,'44','44',NULL,1,NULL,'2023-03-11 08:58:45','2023-03-11 08:58:45'),(23,'46','46',NULL,1,NULL,'2023-03-11 08:58:59','2023-03-11 08:58:59');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_billing_infos`
--

DROP TABLE IF EXISTS `user_billing_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_billing_infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_billing_infos`
--

LOCK TABLES `user_billing_infos` WRITE;
/*!40000 ALTER TABLE `user_billing_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_billing_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_shipping_infos`
--

DROP TABLE IF EXISTS `user_shipping_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_shipping_infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_shipping_infos`
--

LOCK TABLES `user_shipping_infos` WRITE;
/*!40000 ALTER TABLE `user_shipping_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_shipping_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for dissable the user',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `varieties`
--

DROP TABLE IF EXISTS `varieties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `varieties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `variety_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `varieties`
--

LOCK TABLES `varieties` WRITE;
/*!40000 ALTER TABLE `varieties` DISABLE KEYS */;
INSERT INTO `varieties` VALUES (1,'3 Pcs','3-pcs',NULL,1,NULL,'2023-03-07 04:58:05','2023-03-11 09:44:50'),(2,'qrt','qrt',NULL,1,'2023-03-11 09:44:54','2023-03-07 04:58:11','2023-03-11 09:44:54'),(3,'Rose Harrell','rose-harrell',NULL,1,'2023-03-11 09:44:56','2023-03-07 05:57:13','2023-03-11 09:44:56'),(4,'Norman Odonnell','norman-odonnell',NULL,1,'2023-03-11 09:44:58','2023-03-07 05:57:17','2023-03-11 09:44:58');
/*!40000 ALTER TABLE `varieties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_taxes`
--

DROP TABLE IF EXISTS `vat_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vat_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_taxes`
--

LOCK TABLES `vat_taxes` WRITE;
/*!40000 ALTER TABLE `vat_taxes` DISABLE KEYS */;
INSERT INTO `vat_taxes` VALUES (1,'Tax',7.5,1,NULL,'2023-03-07 05:01:10','2023-03-11 10:08:55'),(2,'cd',20,1,'2023-03-11 10:09:00','2023-03-07 05:03:29','2023-03-11 10:09:00'),(3,'cd',20,1,'2023-03-11 10:09:08','2023-03-07 05:04:01','2023-03-11 10:09:08'),(4,'ab',4,1,'2023-03-11 10:09:02','2023-03-07 05:10:25','2023-03-11 10:09:02'),(5,'Otto Houston',18,1,'2023-03-11 10:09:06','2023-03-07 05:58:33','2023-03-11 10:09:06'),(6,'Angelica Blackwell',65,1,'2023-03-11 10:09:04','2023-03-07 05:58:38','2023-03-11 10:09:04');
/*!40000 ALTER TABLE `vat_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'Aranya','aranya',NULL,1,NULL,'2023-03-06 16:16:46','2023-03-06 16:16:46'),(2,'B. Crafts','b-crafts',NULL,1,NULL,'2023-03-07 04:55:42','2023-03-11 09:17:35'),(3,'typ','typ',NULL,1,'2023-03-11 09:17:38','2023-03-07 05:49:11','2023-03-11 09:17:38'),(4,'pyo','pyo',NULL,1,'2023-03-11 09:17:41','2023-03-07 05:54:20','2023-03-11 09:17:41');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-11 10:15:28
