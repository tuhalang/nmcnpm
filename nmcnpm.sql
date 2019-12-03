-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: nmcnpm
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `account_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'2019-11-16 06:49:45','2019-11-16 06:49:45','fedcc1e311982c59e21acd3b834e94c2ff9d66aef692f9b96322041a94ce31e8',_binary '','tuhalang'),(2,'2019-11-16 06:49:45','2019-11-16 06:49:45','fedcc1e311982c59e21acd3b834e94c2ff9d66aef692f9b96322041a94ce31e8',_binary '','admin'),(3,'2019-12-02 16:35:42','2019-12-02 16:35:42','b5f9fb77e0acab109b00e419df1a9096fad3e4e29be46cdbe8e3f568ee6a5be9',_binary '','tranvanhoang'),(4,'2019-12-03 06:03:11','2019-12-03 06:03:11','b5f9fb77e0acab109b00e419df1a9096fad3e4e29be46cdbe8e3f568ee6a5be9',_binary '','Hiddenpants');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_role` (
  `account_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`),
  KEY `FKrs2s3m3039h0xt8d5yhwbuyam` (`role_id`),
  CONSTRAINT `FK1f8y4iy71kb1arff79s71j0dh` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  CONSTRAINT `FKrs2s3m3039h0xt8d5yhwbuyam` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1),(3,1),(4,1),(2,2);
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `quantity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/73/0b/bb/89bb46e6dbfe8f2f6a36cefa88f808be.png','Điện thoại','2'),(2,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/d7/26/e2/d4baf158b6bc56b3cddd4915870bab8e.png','Máy tính bảng','2'),(3,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/d7/26/e2/d4baf158b6bc56b3cddd4915870bab8e.png','Tủ lạnh','2'),(4,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/f7/b3/25/6ccf76723c2c8b29d2e519abb93294ac.png','Máy giặt','2'),(5,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/d5/6c/ef/6498463f16ae8dabd4cdb1a32bd9035a.png','Ti vi','2'),(6,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/8c/a3/fb/8cc9ccc3e202ebe3e2f4dbb9929b16ed.png','Thiết bị game','2'),(7,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/2c/3b/98/59ddc2a214b765ad93a9818fd6bba7c9.png','Thiết bị văn phòng','2'),(8,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/b7/3c/5e/8f14517c116b777fd61f9e943cff6a17.png','Thiết bị âm thanh','2'),(9,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/74/94/d7/25eca218b0de9360f120abc9870a8df1.png','Phụ kiện điện thoại','2'),(10,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/ts/categoryblock/74/94/d7/25eca218b0de9360f120abc9870a8df1.png','Laptop','2'),(11,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/media/upload/2018/03/08/85f30661542516e21f98c1450836fa3a.jpg','Máy tính bàn','2'),(12,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/media/upload/2018/01/29/c2d21942a223c4d4ff9ded6ea070e1ff.png','Máy ảnh','2'),(13,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/media/upload/2018/01/29/4c7e47d592fa4e642970ebb3349b3022.png','Len - ống kính','2'),(14,'2019-11-22 11:02:06','2019-11-22 11:02:06','https://salt.tikicdn.com/media/upload/2018/01/30/17ab71b174aa29cd2a968c8b38c082d4.png','Phụ kiện máy ảnh','2');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `city_region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `FKn9x2k8svpxj3r328iy1rpur83` (`account_id`),
  CONSTRAINT `FKn9x2k8svpxj3r328iy1rpur83` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'2019-11-16 06:49:45','2019-11-16 06:49:45','Ninh Bình',NULL,'vanhung101299@gmail.com','Pham Hung','0394675935',1),(2,'2019-12-02 16:35:42','2019-12-02 16:35:42','cacasc fa','','sktt1nhox1999@gmail.com','Hoangf','0386458775',3),(3,'2019-12-03 06:03:11','2019-12-03 06:03:11','cacasc faaa','','abcde@gmail.com','fas àvafa','0386458772',4);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `confirm_number` int(11) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `payment_method` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKf9abd30bhiqvugayxlpq8ryq9` (`customer_id`),
  CONSTRAINT `FKf9abd30bhiqvugayxlpq8ryq9` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (1,'2019-12-02 17:48:25','2019-12-02 17:48:25',10000000,1234567,2,NULL,NULL),(2,'2019-12-02 17:52:34','2019-12-02 17:52:34',10000000,1234567,2,NULL,NULL),(3,'2019-12-03 06:03:56','2019-12-03 06:03:56',20000000,1234567,3,NULL,NULL);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`product_id`,`order_id`),
  KEY `FKmx4qjk512djj1adniweb0599c` (`order_id`),
  CONSTRAINT `FKhnfgqyjx3i80qoymrssls3kno` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  CONSTRAINT `FKmx4qjk512djj1adniweb0599c` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES ('2019-12-02 17:48:25','2019-12-02 17:48:25',1,1,15),('2019-12-02 17:52:34','2019-12-02 17:52:34',1,2,15),('2019-12-03 06:03:56','2019-12-03 06:03:56',1,3,16),('2019-12-03 06:03:56','2019-12-03 06:03:56',1,3,17);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `description_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `thumb_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `product_detail_id` bigint(20) NOT NULL,
  `quantity` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKr9faxumx2401v6n081g0ju9u` (`product_detail_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FKr9faxumx2401v6n081g0ju9u` FOREIGN KEY (`product_detail_id`) REFERENCES `product_detail` (`product_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (15,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' aa','https://salt.tikicdn.com/cache/200x200/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(1).u425.d20160531.t123434.jpg',' Loa Bluetooth JBL Charge 3 20W - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/175x175/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(1).u425.d20160531.t123434.jpg',8,1,'100',_binary ''),(16,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/04/5b/c7/c9dbbae07496a89855b803f787cbd119.jpg','Tai Nghe Bluetooth Thể Thao Jabra Elite 65t - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/04/5b/c7/c9dbbae07496a89855b803f787cbd119.jpg',8,2,'100',_binary ''),(17,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/b6/42/82/c33991d58757de0bd95308c7680ee8b1.jpg','Dây Cáp Dù Sạc Điện Thoại 3 Đầu Lightning/Micro USB/Type C Orico UTS-12-BK (Đen) - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/10/97/82/b9709820d6708da89483d77bd2822671.jpg',9,3,'100',_binary ''),(18,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u4064.d20170701.t072018.697940.jpg',' Pin Sạc Dự Phòng Anker PowerCore Elite 20000mAh - A1273H11 (Đen) - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/media/catalog/product/1/_/1.u4064.d20170701.t072018.697940.jpg',9,4,'100',_binary ''),(19,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/d4/db/de/93f48f8bd78621903011961ac870d325.jpg','Asus F570ZD FY415T AMD R5-2500U/ VGA GTX1050/ Win10 (15.6 FHD) - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/d4/db/de/93f48f8bd78621903011961ac870d325.jpg',10,5,'100',_binary ''),(20,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/4d/b1/db/3e4ed7f0a02d017d7086bbce1d640820.jpg','Laptop Asus ASUSPRO B9440UA-GV0495T Core i5-8250U/ Win10 (14\" FHD IPS) - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/4d/b1/db/3e4ed7f0a02d017d7086bbce1d640820.jpg',10,6,'100',_binary ''),(21,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/6a/34/84/d268b3c4f52c6751e4c9bd076a930831.jpg','Bộ máy tính để bàn DELL Optiplex (Chip core i7 2600, Ram 8gb, SSD 120GB+ HDD 500gb )',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg',11,7,'100',_binary ''),(22,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg','Bộ máy tính để bàn Dell Optiplex Core i5 3470, Ram 8gb, SSD 120GB',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg',11,8,'100',_binary ''),(23,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','Máy Ảnh Canon 750D + Lens 18-55 IS STM (Lê Bảo Minh) - Hàng Chính hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',12,9,'100',_binary ''),(24,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2769.d20170622.t164957.150266.jpg','Máy ảnh Nikon D5600 KIT AF-P 18-55 VR - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/media/catalog/product/1/_/1.u2769.d20170622.t164957.150266.jpg',12,10,'100',_binary ''),(25,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/s/e/sel%2016.70_1.u504.d20160916.t160438.43252.jpg','Lens Sony Vario-Tessar T* SEL 16-70mm F/4 ZA OSS - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/media/catalog/product/s/e/sel 16.70_1.u504.d20160916.t160438.43252.jpg',13,11,'100',_binary ''),(26,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2566.d20170418.t120802.488399.jpg','Ống Kính Sony FE 50mm F1.8 - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/media/catalog/product/1/_/1.u2566.d20170418.t120802.488399.jpg',13,12,'100',_binary ''),(27,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/ab/c1/69/00a248a6b7849f83ea1d9cb630ac89d5.jpg','Thẻ Nhớ SDXC Sandisk Extreme Pro 170MB/s V30 64GB - Hàng Nhập Khẩu',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/ab/c1/69/00a248a6b7849f83ea1d9cb630ac89d5.jpg',14,13,'100',_binary ''),(28,'2019-11-22 11:04:09','2019-11-22 11:04:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/20/55/83/2102f00d33d9e500311897ad9ec74b08.jpg','Tay cầm chống rung cho điện thoại Gimbal Zhiyun Smooth 4 - Chính hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/20/55/83/2102f00d33d9e500311897ad9ec74b08.jpg',14,14,'100',_binary ''),(29,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/61/bd/7b/e2117706b7b4f42e4680fd3275c518f1.jpg','Điện thoại Vsmart Live (64GB/6GB) - Hàng chính hãng',3470000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/61/bd/7b/e2117706b7b4f42e4680fd3275c518f1.jpg',1,15,'100',_binary ''),(30,'2019-11-22 11:06:59','2019-11-22 11:06:59',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/47/40/70/48a601dde91cf13873471009364690a8.jpg','Điện Thoại Pocophone F1 (64GB/6GB) - Hàng Chính Hãng',7600000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/47/40/70/48a601dde91cf13873471009364690a8.jpg',1,16,'100',_binary ''),(31,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','Smart Tivi Samsung 55 inch 4K UHD UA55NU7090KXXV - Hàng Chính Hãng',10999000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg',5,17,'100',_binary ''),(32,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/c2/73/18/22879b35f72c0eceaddbffa464c7aa54.jpg',' Smart Tivi LG 55 inch 4K UHD 55UM7300PTA - Hàng Chính Hãng',11300000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/c2/73/18/22879b35f72c0eceaddbffa464c7aa54.jpg',5,18,'100',_binary ''),(33,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/ee/91/73/9b74354498138aecf37f12a415ed6f01.jpg',' \r\nTủ Lạnh Inverter Samsung RT19M300BGS/SV (208L) - Hàng Chính Hãng',4600000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/ee/91/73/9b74354498138aecf37f12a415ed6f01.jpg',3,19,'100',_binary ''),(34,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/80/89/aa/f3735094f91e6f0395fcc3c4e15f51ee.jpg',' Tủ Lạnh Mini Electrolux EUM0900SA (90L) - Hàng Chính Hãng',2500000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/80/89/aa/f3735094f91e6f0395fcc3c4e15f51ee.jpg',3,20,'100',_binary ''),(35,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/6e/18/9a/30269b567d78c39b8cc7671f8586628c.jpg','iPad WiFi 32GB New 2018 - Hàng Nhập Khẩu Chính Hãng',6999000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/2c/58/0a/583de02752e70295f6cbffae3f0b3d0a.jpg',2,21,'100',_binary ''),(36,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/9f/13/87/0d1dca5b6f328c05620a59caa63bdfec.jpg','iPad Air 10.5 Wi-Fi 64GB New 2019 - Nhập Khẩu Chính Hãng',12000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/9f/13/87/0d1dca5b6f328c05620a59caa63bdfec.jpg',2,22,'100',_binary ''),(37,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/media/catalog/product/p/r/produto_aoc_4_serie_70_p_62.jpg','Màn Hình AOC E2070SWN 20inch HD 5ms 60Hz TN - Hàng Chính Hãng',1500000.00,'https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_4_serie_70_p_62.jpg',6,23,'100',_binary ''),(38,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/84/29/e6/73a646212c81b603a0f855009e0787a5.jpg','Màn Hình Gaming Dell Alienware AW2518H 25inch FullHD 1ms 240Hz G-Sync TN - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/84/29/e6/73a646212c81b603a0f855009e0787a5.jpg',6,24,'100',_binary ''),(39,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg','Thiết Bị Trình Chiếu Trợ Giảng bằng tia Lazer R400',139000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg',7,25,'100',_binary ''),(40,'2019-11-22 11:06:59','2019-11-22 11:06:59','','','https://salt.tikicdn.com/cache/200x200/ts/product/16/a9/c9/ec0f9f08636284b3a703caa4c566b2f0.jpg','Máy In Laser Đơn Năng Canon LBP 2900 - Hàng chính hãng',2779000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/16/a9/c9/ec0f9f08636284b3a703caa4c566b2f0.jpg',7,26,'100',_binary ''),(41,'2019-11-22 11:06:59','2019-11-22 11:06:59',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/a5/e8/f6/bc2858e1be1844a6f9248aa2f3ca884c.jpg','MÁY GIẶT ÂM TỦ 8KG HAFELE HW-B60A 538.91.080 - HÀNG CHÍNH HÃNG',22000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/c5/c0/27/2b846abda863abe438aa1dbd1b5ba6c7.jpg',4,27,'100',_binary ''),(42,'2019-11-22 11:06:59','2019-11-22 11:06:59',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/0f/4d/3a/51ef4d2e5c513596fd6a737a60a77b32.png','Máy Giặt Sấy PANASONIC 10.0/6.0 Kg NA-D106X1WVT - HÀNG CHÍNH HÃNG',28000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/0f/4d/3a/51ef4d2e5c513596fd6a737a60a77b32.png',4,28,'100',_binary '');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `product_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `accessories` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `guarantee` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `image1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `image5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  PRIMARY KEY (`product_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
INSERT INTO `product_detail` VALUES (1,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(1).u425.d20160531.t123434.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(3).u425.d20160531.t123434.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(4).u425.d20160531.t123434.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(2).u425.d20160531.t123434.jpg','https://salt.tikicdn.com/cache/550x550/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(3).u425.d20160531.t123434.jpg',' Loa Bluetooth JBL Charge 3 20W - Hàng Chính Hãng'),(2,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/04/5b/c7/c9dbbae07496a89855b803f787cbd119.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/04/5b/c7/c9dbbae07496a89855b803f787cbd119.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/0f/e1/5253d2cfee516a143e0ea0477d474e58.jpg',' ',' ','Tai Nghe Bluetooth Thể Thao Jabra Elite 65t - Hàng Chính Hãng'),(3,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/b6/42/82/c33991d58757de0bd95308c7680ee8b1.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/10/97/82/b9709820d6708da89483d77bd2822671.jpg',' ',' ',' ','Trang bị 3 cổng kết nối: Lightning, Micro USB, Type C'),(4,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u4064.d20170701.t072018.697940.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/1/_/1.u4064.d20170701.t072018.697940.jpg','https://salt.tikicdn.com/cache/w75/media/catalog/product/1/2/1232.u4064.d20170701.t115627.317881.jpg','https://salt.tikicdn.com/cache/w75/media/catalog/product/1/4/14114.u4064.d20170701.t115627.365554.jpg','','Chất liệu bền bỉ, chống chịu va đập Tương thích tốt với nhiều thiết bị Smartphone Trang bị công nghệ sạc nhanh PowerIQ và VoltageBoost hiện đại Hệ thống an toàn MultiProtect chống đoản mạch và cháy nổ Dung lượng lớn 20.000mAh sạc được nhiều lần'),(5,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/d4/db/de/93f48f8bd78621903011961ac870d325.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/d4/db/de/93f48f8bd78621903011961ac870d325.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/c6/b2/fe/11444c29030c89c0f843c8a85269d082.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/9f/57/0b/591ec23e4072f9fc118aec6924811a50.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/83/96/5e/8c659fe308c58f737a1339b043e6b167.jpg','CPU: AMD Ryzen 5 2500U Mobile Processor(2.00Ghz upto 3.60GHz, 4Cores, 8Threads, 4MB Cache) Memory: 8GB DDr4 Bus 2400Mhz (2 Slot, Max 32GB Ram) HDD: 1TB (1000GB) 5400rpm Hard Drive Sata (Support SSD M.2) VGA: NVIDIA GeForce GTX1050 with 4GB GDDR5 / AMD Radeon Vega 8 Graphics Display: 15.6 inch Full HD (1920 x 1080) 60Hz Anti Glare IPS Level Panel 45% NTSC'),(6,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/4d/b1/db/3e4ed7f0a02d017d7086bbce1d640820.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/4d/b1/db/3e4ed7f0a02d017d7086bbce1d640820.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/63/7a/d2/3f67cc111db673c8115ae4a2f4a86869.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/d7/77/80/a3af4ae1467162e3c6b5163501cafebd.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/da/3d/1d/0554c936b560b81b2f4940301e9253b6.jpg','Chip: Intel Core i5-8250U (1.6GHz upto 3.4GHz, 4Cores, 8Threads, 6MB Cache, FSB 4GT/s) RAM: 8GB LPDDR3-2133MHz Ổ cứng: 256GB SSD M.2 Sata Chipset đồ họa: Intel UHD Graphics 620 Màn hình: 14.0-inch FHD (1920x1080) IPS 60Hz Anti-Glare Panel with 72% NTSC Hệ điều hành: Windows 10 bản quyền Pin: 4-Cells 48 Whrs'),(7,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/6a/34/84/d268b3c4f52c6751e4c9bd076a930831.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/6f/05/b2/e536ff46915a4e8e84b9c8ab2d60e8c0.jpg',' ',' ','Nhà sản xuất : DELL Màn hình DELL : E2216hv 22inch FULL HD hàng chính hãng Model : Dell Optiplex SFF Chipset bo mạch chủ : Intel Q77 Express Chipset Bộ vi xử lý : Intel Core i5 3470 Processor (6M Cache, up to 3.60 GHz) Dung lượng Ổ cứng : SSD 120GB Dung lượng RAM DDR3 : 8GB bus 1333/1600Mhz Ổ quang ( Optical drive ) : DVDRom SATA VGA : Graphics on Card VGA 1G onboard Integrated Intel HD Graphics Media Accelerator Card mạng : 10/100/1000Mbps Card âm thanh : Onboard 2.1 Hight Definition Nguồn : auto 100v-240v 265w Tính năng cổng giao tiếp : USB 4 cổng 3.0, 6 Cổng USB 2.0. PS2 có 2 cổng Free cài sẵn hệ điều hành windows 7 64bit hoặc Windows 10 64bit'),(8,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/6f/05/b2/e536ff46915a4e8e84b9c8ab2d60e8c0.jpg',' ',' ','Nhà sản xuất : DELL Màn hình DELL : E2216hv 22inch FULL HD hàng chính hãng Model : Dell Optiplex SFF Chipset bo mạch chủ : Intel Q77 Express Chipset Bộ vi xử lý : Intel Core i5 3470 Processor (6M Cache, up to 3.60 GHz) Dung lượng Ổ cứng : SSD 120GB Dung lượng RAM DDR3 : 8GB bus 1333/1600Mhz Ổ quang ( Optical drive ) : DVDRom SATA VGA : Graphics on Card VGA 1G onboard Integrated Intel HD Graphics Media Accelerator Card mạng : 10/100/1000Mbps Card âm thanh : Onboard 2.1 Hight Definition Nguồn : auto 100v-240v 265w Tính năng cổng giao tiếp : USB 4 cổng 3.0, 6 Cổng USB 2.0. PS2 có 2 cổng Free cài sẵn hệ điều hành windows 7 64bit hoặc Windows 10 64bit'),(9,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/c/a/canon_750 2.u2470.d20160627.t172653.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/c/a/canon_750 5.u2470.d20160627.t172653.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/c/a/canon_750 6.u2470.d20160627.t172653.jpg','Cảm biến: CMOS 24.2MP Bộ xử lý hình ảnh: DIGIC 6 ISO: ISO 100 - ISO 6400 Hệ thống lấy nét: 19 điểm Chụp ảnh liên tục: tối đa khoảng 5,0 ảnh/giây Truyền hình ảnh nhanh với kết nối Wifi'),(10,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2769.d20170622.t164957.150266.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/1/_/1.u2769.d20170622.t164957.150266.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u2769.d20170622.t164957.201293.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/3/_/3.u2769.d20170622.t164957.244404.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/4/_/4.u2769.d20170622.t164957.289951.jpg','Cảm biến: CMOS APS-C 25MP Bộ xử lý hình ảnh: Nikon EXPEED 4 ISO: Auto, 100 - 25.600 Hệ thống lấy nét: 39. Có thể chọn 39 hoặc 11 điểm Chụp ảnh liên tục: Tối đa khoảng 5 ảnh/giây'),(11,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/s/e/sel%2016.70_1.u504.d20160916.t160438.43252.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/s/e/sel 16.70_1.u504.d20160916.t160438.43252.jpg',' https://salt.tikicdn.com/cache/75x75/media/catalog/product/s/e/sel 16.70_3.u504.d20160916.t160438.95617.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/s/e/sel 16.70_4.u504.d20160916.t160438.152590.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/88/eb/e6/0ce9da7de077fe73ff3bc5c7d1184511.jpg','Ngàm Sony E-Mount Tiêu cự tương đương 24-105mm theo định dạng 35mm Khẩu độ F/4-F/22 Ổn định hình ảnh OSS 4 thấu kính phi cầu Lớp tráng phủ Carl Zeiss T* Khẩu độ tối đa cố định F/4 Thiết kế lá khẩu tròn'),(12,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2566.d20170418.t120802.488399.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/1/_/1.u2566.d20170418.t120802.488399.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u2566.d20170418.t120802.539126.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/3/_/3.u2566.d20170418.t120802.581471.jpg',' ','Độ dài tiêu cự: 50mm Tương thích Sony E-mount (Full-Frame) Khoảng cách lấy nét tối thiểu: 1,48\" (45 cm) Tỷ lệ phóng đại hình ảnh tối đa (x): 0.15'),(13,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/ab/c1/69/00a248a6b7849f83ea1d9cb630ac89d5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/ab/c1/69/00a248a6b7849f83ea1d9cb630ac89d5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/8f/0e/e6/889f845eb70efdfce7a15afc06123e50.jpg',' ',' ','Loại thẻ: SDXC dùng cho máy ảnh, máy quay phim Dòng sản phẩm: Extreme Pro V30 Tốc độ đọc: 170MB/s (Tốc độ ghi trung bình thực tế sẽ thấp hơn) Tốc độ ghi: 90MB/s (Tốc độ ghi trung bình thực tế sẽ thấp hơn) Hỗ trợ quay 4K UHD Dung lượng: 64GB'),(14,'2019-11-22 11:02:06','2019-11-22 11:02:06',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/20/55/83/2102f00d33d9e500311897ad9ec74b08.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/20/55/83/2102f00d33d9e500311897ad9ec74b08.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/22/57/2d/6ddeff306375ddd6c8c7fd9af2a8fb5d.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/6c/35/25/faa56e34ccc9a63b27650ae919be4470.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/05/5e/91/6675b51f501feacf7393943543c7700f.jpg','Thiết kế thông minh tối ưu cho điện thoại Smartphone Tương thích với Điện thoại sử dụng hệ điều hành Android và IOS Thời gian sử dụng pin của Zhiyun Smooth 4 lên tới 10 giờ Bánh Xoay điều chính zoom và focus theo ý muốn Chế độ \"PhoneGo\" giúp phản ứng nhanh Chế độ hiệu ứng Vertigo Dolly/ Zoom Kiểm soát chọn chức năng cho điện thoại Hổ trợ chế độ Time-Lapse & Tracking 360° Pan, 240° Nghiêng & Cuộn Có thể vừa sạc khi gimbal đang hoạt động'),(15,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/b1/19/44/c545e8cad39320ef1bb21e90ba544406.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/19/44/c545e8cad39320ef1bb21e90ba544406.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/27/cf/ad/3909d5dad1aa8a5af56465fe721360b8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/56/9c/1a/fde394d013b354e81aa92e2ae185edde.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/61/bd/7b/e2117706b7b4f42e4680fd3275c518f1.jpg','Chính hãng, nguyên seal, mới 100%, chưa Active Màn hình: AMOLED, 6.2\", Full HD+ Camera trước: 20 MP Camera sau: Chính 48 MP & Phụ 8 MP, 5 MP Bộ vi xử lý: Qualcomm Snapdragon 675 8 nhân 64-bit Bộ nhớ ROM: 64GB RAM: 6GB Sim tương thích: 2 Nano SIM, Hỗ trợ 4G Tính năng: Mở khoá vân tay dưới màn hình'),(16,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/47/40/70/48a601dde91cf13873471009364690a8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/9f/fa/a9/8df89714e77a2d28724d65317ab8eab2.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/98/2f/d5/da147be9ca543b81d634b6b3bd86bad5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/98/2f/d5/da147be9ca543b81d634b6b3bd86bad5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/e5/ec/68/f0e6a839aa9f41572d7651e72edc4b95.jpg','Chính hãng, Nguyên seal, Mới 100% Bản quốc tế, Sẵn Tiếng Việt Miễn phí giao hàng toàn quốc Thiết kế: Nguyên khối Màn hình: 6.18 inch IPS LCD, Full HD+ (1080 x 2246 pixels) 16M colors Camera Trước/Sau: 20 MP, f/2.0, 0.9µm / 12 MP, f/1.9, 1/2.55\", 1.4µm, dual pixel PDAF 5 MP, depth sensor CPU: Qualcomm SDM845 Snapdragon 845 Octa-core Bộ Nhớ: 64GB RAM: 6GB SIM tương thích: Nano SIM Tính năng: Mở khóa bằng vân tay, Mở khóa bằng khuôn mặt, Chụp ảnh xóa phông, sạc pin nhanh,...'),(17,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/1b/63/af/d5572bb5d9e50c932749af6acaa82e10.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/ca/be/94/233950acb1f9df15675c38e0f1507571.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','Loại Tivi: Smart Tivi, 55 inch Độ phân giải: 4K UHD (3840 x 2160) Tần số quét: 100 Hz Ứng dụng có sẵn: Zing MP3, FPT Play, Trình duyệt web, Youtube, Karaoke Ứng dụng có thể tải thêm: Zing TV, Nhạc của tui, Facebook, Spotify, ClipTV, Karaoke Công nghệ hình ảnh: HDR, UHD Dimming, Purcolour Điều khiển Tivi bằng điện thoại: Ứng dụng Samsung Smart Things'),(18,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/c2/73/18/22879b35f72c0eceaddbffa464c7aa54.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/8f/89/2f/2cf913257e158ecaa730f1131459b133.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/77/fa/d1/c26204c987a3a570881c770f024a6ef7.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/18/ff/69/d17604f304f4537c87b48559f64209a3.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/18/ff/69/d17604f304f4537c87b48559f64209a3.jpg','Loại Tivi: Smart TV Độ phân giải: 4K Tần số quét: TruMotion 100 (Refresh Rate 50Hz) Hệ điều hành: webOS Smart TV Các ứng dụng sẵn có :FPT play, Youtube, VTV go, Zing Mp3, Kho ứng dụng Các ứng dụng có thể tải thêm: Benthanh Karaoke, Nhaccuatui, Zing TV, Zing MP3 Công nghệ âm thanh: DTS Virtual X Điều khiển tivi bằng điện thoại: Bằng ứng dụng LG TV Plus'),(19,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/ee/91/73/9b74354498138aecf37f12a415ed6f01.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u5395.d20170824.t162040.468900.jpg',' https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u5395.d20170824.t162040.468900.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/3/_/3.u5395.d20170824.t162040.497745.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/4/_/4.u5395.d20170824.t162040.525535.jpg','Dung tích sử dụng 208L Duy trì độ ẩm đồng đều tại khắp các ngăn Công nghệ Digital Inverter hoạt động bền bỉ Miếng đệm kháng khuẩn, chống nấm mốc'),(20,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/80/89/aa/f3735094f91e6f0395fcc3c4e15f51ee.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/73/53/46/87018ff8f2810bd09f599da9176f954f.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/73/53/46/87018ff8f2810bd09f599da9176f954f.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/c6/56/c3/a5f948bf789c48defadbad2e76f059b3.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/fd/0d/b6/f24c5492177ee3eebbbbdbc5bfadab8a.jpg','Dung tích: 90L Kiểu tủ: 1 Cửa Công nghệ: Non-Inverter Làm lạnh: Hệ thống làm lạnh trực tiếp Khay: Kính chịu lực'),(21,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/21/72/44/210faec56722151a70c28f2aefe36087.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/73/53/46/87018ff8f2810bd09f599da9176f954f.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/5d/8d/de/6140d49f0c179c0068d55f0591b47a12.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b5/ee/22/ed958baf197b4fd4267ca7ff9baa3c7c.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b5/ee/22/ed958baf197b4fd4267ca7ff9baa3c7c.jpg','Mã part : LL, ZP,... Nguyên seal, mới 100% Miễn phí giao hàng toàn quốc Thiết kế: Nhôm nguyên khối Màn hình: Retina 9.7 inch Camera Trước/Sau: 1.2MP/8MP CPU: Apple A10 Fusion 4 nhân 2.34GHz Bộ Nhớ: 32GB RAM: 2GB SIM: Không Tính năng: Mở khóa bằng vân tay'),(22,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/9f/13/87/0d1dca5b6f328c05620a59caa63bdfec.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/2c/e5/eb/0626d649085ed4f47795e71072e41085.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/1e/16/c7/6df72573cfec183512670d0ee85f5a4a.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b7/db/46/f0ddf1abe5cbd4228842bde74f2c6a09.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/3c/ae/1b/29f06e4e59c6a83fcc894e68644a3365.jpg','Chính hãng, nguyên seal, mới 100%, chưa Active Miễn phí giao hàng toàn quốc Thiết kế: Nhôm nguyên khối Màn hình: 10.5\", (2224 x 1668 pixels) Camera Trước/Sau: 7MP/ 8MP Chipset: Apple A12 Bionic (7 nm) CPU: Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest) Bộ Nhớ: 64GB RAM: 3GB Tính năng: Mở khóa bằng vân tay Mã part: LL, ZP,...'),(23,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_4_serie_70_p_62.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_5_serie_70_t_77.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_6_serie_70_p_73.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_1_serie_70_f_90.u600.d20160629.t131854.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_1_serie_70_f_90.u600.d20160629.t131854.jpg','Màn Hình AOC E2070SWN 20inch HD 5ms 60Hz TN - Hàng Chính Hãng'),(24,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/84/29/e6/73a646212c81b603a0f855009e0787a5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','Công nghệ màn hình: tấm nền TN Tỉ lệ tương phản: 1000 : 1 Độ sáng: 400 nits Tốc độ phản hồi: 1ms Tỉ lệ màn hình: 16:9 Độ phân giải: 1920 x 1080 pixels Trang bị công nghệ NVidia GSync'),(25,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','Kết nối dễ dàng Điều khiển slideshow Con trỏ laser màu đỏ Khoảng cách kết nối lên đến 15m'),(26,'2019-11-22 11:04:09','2019-11-22 11:04:09','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/7d/69/f6/ff3ea2eb9f1c4a78927f265908f184e5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/7d/69/f6/ff3ea2eb9f1c4a78927f265908f184e5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/7d/69/f6/ff3ea2eb9f1c4a78927f265908f184e5.jpg','Loại máy: Máy in lazer Tốc độ in: 12 trang/phút (A4) Bộ nhớ: Dùng bộ nhớ PC (bộ nhớ chuẩn 2 MB trên board) Khay giấy: 150 tờ Kết nối: USB 2.0 tốc độ cao Mực in: Cartridge 303'),(27,'2019-11-22 11:06:59','2019-11-22 11:06:59',' ',' ','https://salt.tikicdn.com/cache/75x75/ts/product/c5/c0/27/2b846abda863abe438aa1dbd1b5ba6c7.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/c5/c0/27/2b846abda863abe438aa1dbd1b5ba6c7.jpg',' ',' ',' ','MÁY GIẶT ÂM TỦ 8KG HAFELE HW-B60A 538.91.080 - HÀNG CHÍNH HÃNG'),(28,'2019-11-22 11:06:59','2019-11-22 11:06:59',' ',' ','https://salt.tikicdn.com/cache/75x75/ts/product/0f/4d/3a/51ef4d2e5c513596fd6a737a60a77b32.png','https://salt.tikicdn.com/cache/75x75/ts/product/c6/94/66/f1139156b80952ec7e009cb1746afc18.png','https://salt.tikicdn.com/cache/75x75/ts/product/67/1e/98/f092ad2295231bc636b8fca7cb076391.png','https://salt.tikicdn.com/cache/75x75/ts/product/4e/59/c7/c952c7b69730d482feb1fe249712cca1.png',' ','Máy Giặt Sấy PANASONIC 10.0/6.0 Kg NA-D106X1WVT - HÀNG CHÍNH HÃNG');
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2019-11-16 13:49:45','2019-11-16 13:49:45','ROLE_USER'),(2,'2019-11-16 13:49:45','2019-11-16 13:49:45','ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-03 21:42:06
