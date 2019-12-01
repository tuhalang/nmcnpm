-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: nmcnpm
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'2019-11-16 06:49:45','2019-11-16 06:49:45','fedcc1e311982c59e21acd3b834e94c2ff9d66aef692f9b96322041a94ce31e8',_binary '','tuhalang'),(2,'2019-11-16 06:49:45','2019-11-16 06:49:45','fedcc1e311982c59e21acd3b834e94c2ff9d66aef692f9b96322041a94ce31e8',_binary '','admin');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `account_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`),
  KEY `FKrs2s3m3039h0xt8d5yhwbuyam` (`role_id`),
  CONSTRAINT `FK1f8y4iy71kb1arff79s71j0dh` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`),
  CONSTRAINT `FKrs2s3m3039h0xt8d5yhwbuyam` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2019-11-22 11:25:18','2019-11-30 23:08:00','https://salt.tikicdn.com/ts/categoryblock/73/0b/bb/89bb46e6dbfe8f2f6a36cefa88f808be.png','Điện thoại',2),(2,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/d7/26/e2/d4baf158b6bc56b3cddd4915870bab8e.png','Máy tính bảng',2),(3,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/d7/26/e2/d4baf158b6bc56b3cddd4915870bab8e.png','Tủ lạnh',2),(4,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/f7/b3/25/6ccf76723c2c8b29d2e519abb93294ac.png','Máy giặt',2),(5,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/d5/6c/ef/6498463f16ae8dabd4cdb1a32bd9035a.png','Ti vi',2),(6,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/8c/a3/fb/8cc9ccc3e202ebe3e2f4dbb9929b16ed.png','Thiết bị game',2),(7,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/2c/3b/98/59ddc2a214b765ad93a9818fd6bba7c9.png','Thiết bị văn phòng',2),(8,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/b7/3c/5e/8f14517c116b777fd61f9e943cff6a17.png','Thiết bị âm thanh',2),(9,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/74/94/d7/25eca218b0de9360f120abc9870a8df1.png','Phụ kiện điện thoại',2),(10,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/ts/categoryblock/74/94/d7/25eca218b0de9360f120abc9870a8df1.png','Laptop',2),(11,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/media/upload/2018/03/08/85f30661542516e21f98c1450836fa3a.jpg','Máy tính bàn',2),(12,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/media/upload/2018/01/29/c2d21942a223c4d4ff9ded6ea070e1ff.png','Máy ảnh',2),(13,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/media/upload/2018/01/29/4c7e47d592fa4e642970ebb3349b3022.png','Len - ống kính',2),(14,'2019-11-22 11:25:18','2019-11-22 11:25:18','https://salt.tikicdn.com/media/upload/2018/01/30/17ab71b174aa29cd2a968c8b38c082d4.png','Phụ kiện máy ảnh',2),(15,'2019-11-30 23:05:51','2019-11-30 23:05:51','TEST','TEST',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `city_region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `FKn9x2k8svpxj3r328iy1rpur83` (`account_id`),
  CONSTRAINT `FKn9x2k8svpxj3r328iy1rpur83` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'2019-11-16 06:49:45','2019-11-16 06:49:45','Ninh Bình',NULL,'vanhung101299@gmail.com','Pham Hung','0394675935',1);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `confirm_number` int(11) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `payment_method` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKf9abd30bhiqvugayxlpq8ryq9` (`customer_id`),
  CONSTRAINT `FKf9abd30bhiqvugayxlpq8ryq9` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (1,'2019-11-30 04:50:54','2019-11-30 04:50:54',70000000,1234567,1,NULL,NULL),(2,'2019-11-30 20:13:50','2019-11-30 20:13:50',101309000,1234567,1,NULL,NULL);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES ('2019-11-30 04:50:54','2019-11-30 04:50:54',7,1,29),('2019-11-30 20:13:51','2019-11-30 20:13:51',7,2,29),('2019-11-30 20:13:50','2019-11-30 20:13:50',3,2,44),('2019-11-30 20:13:50','2019-11-30 20:13:50',1,2,58);
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `description_detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `image` varchar(255) DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `thumb_image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `product_detail_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKr9faxumx2401v6n081g0ju9u` (`product_detail_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FKr9faxumx2401v6n081g0ju9u` FOREIGN KEY (`product_detail_id`) REFERENCES `product_detail` (`product_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (29,'2019-11-22 11:36:02','2019-11-30 22:05:31','DETAIL 12345 78910 11121314 15161718 202122 232425','asdasd','https://salt.tikicdn.com/cache/200x200/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(1).u425.d20160531.t123434.jpg',' Loa Bluetooth JBL Charge 3 20W - Hàng Chính Hãng',10000000.00,'',8,1,100,_binary ''),(30,'2019-11-22 11:41:09','2019-11-29 13:13:12',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(1).u425.d20160531.t123434.jpg',' Loa Bluetooth JBL Charge 3 20W - Hàng Chính Hãng',10000000.00,' ',8,1,100,_binary ''),(31,'2019-11-22 11:41:09','2019-11-29 13:13:15',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/04/5b/c7/c9dbbae07496a89855b803f787cbd119.jpg','Tai Nghe Bluetooth Thể Thao Jabra Elite 65t - Hàng Chính Hãng',10000000.00,' ',8,2,100,_binary ''),(32,'2019-11-22 11:41:09','2019-11-29 13:13:16',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/b6/42/82/c33991d58757de0bd95308c7680ee8b1.jpg','Dây Cáp Dù Sạc Điện Thoại 3 Đầu Lightning/Micro USB/Type C Orico UTS-12-BK (Đen) - Hàng Chính Hãng',10000000.00,' ',9,3,100,_binary ''),(33,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u4064.d20170701.t072018.697940.jpg',' Pin Sạc Dự Phòng Anker PowerCore Elite 20000mAh - A1273H11 (Đen) - Hàng Chính Hãng',10000000.00,' ',9,4,100,_binary ''),(34,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/d4/db/de/93f48f8bd78621903011961ac870d325.jpg','Asus F570ZD FY415T AMD R5-2500U/ VGA GTX1050/ Win10 (15.6 FHD) - Hàng Chính Hãng',10000000.00,' ',10,5,100,_binary ''),(35,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/4d/b1/db/3e4ed7f0a02d017d7086bbce1d640820.jpg','Laptop Asus ASUSPRO B9440UA-GV0495T Core i5-8250U/ Win10 (14\" FHD IPS) - Hàng Chính Hãng',10000000.00,' ',10,6,100,_binary ''),(36,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/6a/34/84/d268b3c4f52c6751e4c9bd076a930831.jpg','Bộ máy tính để bàn DELL Optiplex (Chip core i7 2600, Ram 8gb, SSD 120GB+ HDD 500gb )',10000000.00,' ',11,7,100,_binary ''),(37,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg','Bộ máy tính để bàn Dell Optiplex Core i5 3470, Ram 8gb, SSD 120GB',10000000.00,' ',11,8,100,_binary ''),(38,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg','Máy Ảnh Canon 750D + Lens 18-55 IS STM (Lê Bảo Minh) - Hàng Chính hãng',10000000.00,' ',12,9,100,_binary ''),(39,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2769.d20170622.t164957.150266.jpg','Máy ảnh Nikon D5600 KIT AF-P 18-55 VR - Hàng Chính Hãng',10000000.00,' ',12,10,100,_binary ''),(40,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/s/e/sel%2016.70_1.u504.d20160916.t160438.43252.jpg','Lens Sony Vario-Tessar T* SEL 16-70mm F/4 ZA OSS - Hàng Chính Hãng',10000000.00,' ',13,11,100,_binary ''),(41,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2566.d20170418.t120802.488399.jpg','Ống Kính Sony FE 50mm F1.8 - Hàng Chính Hãng',10000000.00,' ',13,12,100,_binary ''),(42,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/ab/c1/69/00a248a6b7849f83ea1d9cb630ac89d5.jpg','Thẻ Nhớ SDXC Sandisk Extreme Pro 170MB/s V30 64GB - Hàng Nhập Khẩu',10000000.00,' ',14,13,100,_binary ''),(43,'2019-11-22 11:41:09','2019-11-22 11:41:09',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/20/55/83/2102f00d33d9e500311897ad9ec74b08.jpg','Tay cầm chống rung cho điện thoại Gimbal Zhiyun Smooth 4 - Chính hãng',10000000.00,' ',14,14,100,_binary ''),(44,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/61/bd/7b/e2117706b7b4f42e4680fd3275c518f1.jpg','Điện thoại Vsmart Live (64GB/6GB) - Hàng chính hãng',3470000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/61/bd/7b/e2117706b7b4f42e4680fd3275c518f1.jpg',1,15,100,_binary ''),(45,'2019-11-22 11:43:38','2019-11-22 11:43:38',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/47/40/70/48a601dde91cf13873471009364690a8.jpg','Điện Thoại Pocophone F1 (64GB/6GB) - Hàng Chính Hãng',7600000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/47/40/70/48a601dde91cf13873471009364690a8.jpg',1,16,100,_binary ''),(46,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','Smart Tivi Samsung 55 inch 4K UHD UA55NU7090KXXV - Hàng Chính Hãng',10999000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg',5,17,100,_binary ''),(47,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/c2/73/18/22879b35f72c0eceaddbffa464c7aa54.jpg',' Smart Tivi LG 55 inch 4K UHD 55UM7300PTA - Hàng Chính Hãng',11300000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/c2/73/18/22879b35f72c0eceaddbffa464c7aa54.jpg',5,18,100,_binary ''),(48,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/ee/91/73/9b74354498138aecf37f12a415ed6f01.jpg',' \nTủ Lạnh Inverter Samsung RT19M300BGS/SV (208L) - Hàng Chính Hãng',4600000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/ee/91/73/9b74354498138aecf37f12a415ed6f01.jpg',3,19,100,_binary ''),(49,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/80/89/aa/f3735094f91e6f0395fcc3c4e15f51ee.jpg',' Tủ Lạnh Mini Electrolux EUM0900SA (90L) - Hàng Chính Hãng',2500000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/80/89/aa/f3735094f91e6f0395fcc3c4e15f51ee.jpg',3,20,100,_binary ''),(50,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/6e/18/9a/30269b567d78c39b8cc7671f8586628c.jpg','iPad WiFi 32GB New 2018 - Hàng Nhập Khẩu Chính Hãng',6999000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/2c/58/0a/583de02752e70295f6cbffae3f0b3d0a.jpg',2,21,100,_binary ''),(51,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/9f/13/87/0d1dca5b6f328c05620a59caa63bdfec.jpg','iPad Air 10.5 Wi-Fi 64GB New 2019 - Nhập Khẩu Chính Hãng',12000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/9f/13/87/0d1dca5b6f328c05620a59caa63bdfec.jpg',2,22,100,_binary ''),(52,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/media/catalog/product/p/r/produto_aoc_4_serie_70_p_62.jpg','Màn Hình AOC E2070SWN 20inch HD 5ms 60Hz TN - Hàng Chính Hãng',1500000.00,'https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_4_serie_70_p_62.jpg',6,23,100,_binary ''),(53,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/84/29/e6/73a646212c81b603a0f855009e0787a5.jpg','Màn Hình Gaming Dell Alienware AW2518H 25inch FullHD 1ms 240Hz G-Sync TN - Hàng Chính Hãng',10000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/84/29/e6/73a646212c81b603a0f855009e0787a5.jpg',6,24,100,_binary ''),(54,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg','Thiết Bị Trình Chiếu Trợ Giảng bằng tia Lazer R400',139000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg',7,25,100,_binary ''),(55,'2019-11-22 11:43:38','2019-11-22 11:43:38','','','https://salt.tikicdn.com/cache/200x200/ts/product/16/a9/c9/ec0f9f08636284b3a703caa4c566b2f0.jpg','Máy In Laser Đơn Năng Canon LBP 2900 - Hàng chính hãng',2779000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/16/a9/c9/ec0f9f08636284b3a703caa4c566b2f0.jpg',7,26,100,_binary ''),(56,'2019-11-22 11:43:38','2019-11-22 11:43:38',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/a5/e8/f6/bc2858e1be1844a6f9248aa2f3ca884c.jpg','MÁY GIẶT ÂM TỦ 8KG HAFELE HW-B60A 538.91.080 - HÀNG CHÍNH HÃNG',22000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/c5/c0/27/2b846abda863abe438aa1dbd1b5ba6c7.jpg',4,27,100,_binary ''),(57,'2019-11-22 11:43:38','2019-11-22 11:43:38',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/0f/4d/3a/51ef4d2e5c513596fd6a737a60a77b32.png','Máy Giặt Sấy PANASONIC 10.0/6.0 Kg NA-D106X1WVT - HÀNG CHÍNH HÃNG',28000000.00,'https://salt.tikicdn.com/cache/75x75/ts/product/0f/4d/3a/51ef4d2e5c513596fd6a737a60a77b32.png',4,28,100,_binary ''),(58,'2019-11-23 03:45:57','2019-11-23 03:45:57','Macbook Air 2017 MQD32 (13.3 inch) - Hàng Chính Hãng','Chip: Intel Core i5 Dual-core 1.8 GHz\r\n\r\nRAM: 8GB 1600 MHz LPDDR3\r\n\r\nỔ cứng: 128GB PCIe-Based Flash\r\n\r\nChipset đồ họa: Intel HD Graphics 6000\r\n\r\nMàn hình: 13.3 inch (900 x 1440 pixels) LED-backlit IPS LCD\r\n\r\nHệ điều hành: macOS Sierra\r\n\r\nPin: Li-Po 54 Wh','https://salt.tikicdn.com/cache/200x200/ts/product/24/1b/e9/0771b005d8b7d4547b2a5fc0012d4721.jpg','Macbook Air 2017 MQD32 (13.3 inch) - Hàng Chính Hãng',20899000.00,'',1,29,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_detail` (
  `product_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_modified_at` timestamp NULL DEFAULT NULL,
  `accessories` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `guarantee` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `image5` varchar(255) DEFAULT NULL,
  `information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  PRIMARY KEY (`product_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
INSERT INTO `product_detail` VALUES (1,'2019-11-22 11:25:18','2019-11-30 22:05:31',' abcdef',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/l/o/loa-jbl-charge-3_6_xam%20(1).u425.d20160531.t123434.jpg',' ',' ',' ',' ',' Loa Bluetooth JBL Charge 3 20W - Hàng Chính Hãng'),(2,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/04/5b/c7/c9dbbae07496a89855b803f787cbd119.jpg',' ',' ',' ',' ','Tai Nghe Bluetooth Thể Thao Jabra Elite 65t - Hàng Chính Hãng'),(3,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/b6/42/82/c33991d58757de0bd95308c7680ee8b1.jpg',' ',' ',' ',' ','Dây Cáp Dù Sạc Điện Thoại 3 Đầu Lightning/Micro USB/Type C Orico UTS-12-BK (Đen) - Hàng Chính Hãng'),(4,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u4064.d20170701.t072018.697940.jpg',' ',' ',' ',' ',' Pin Sạc Dự Phòng Anker PowerCore Elite 20000mAh - A1273H11 (Đen) - Hàng Chính Hãng'),(5,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/d4/db/de/93f48f8bd78621903011961ac870d325.jpg',' ',' ',' ',' ','Asus F570ZD FY415T AMD R5-2500U/ VGA GTX1050/ Win10 (15.6 FHD) - Hàng Chính Hãng'),(6,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/4d/b1/db/3e4ed7f0a02d017d7086bbce1d640820.jpg',' ',' ',' ',' ','Laptop Asus ASUSPRO B9440UA-GV0495T Core i5-8250U/ Win10 (14\" FHD IPS) - Hàng Chính Hãng'),(7,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/6a/34/84/d268b3c4f52c6751e4c9bd076a930831.jpg',' ',' ',' ',' ','Bộ máy tính để bàn DELL Optiplex (Chip core i7 2600, Ram 8gb, SSD 120GB+ HDD 500gb ) Và Màn Hình DELL 22 inch- Tặng USB wifi + Bộ Bàn phím chuột - bàn di chuột - Hàng Nhập Khẩu'),(8,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/03/75/af/00c042770e43dd7760a2350736cbf023.jpg',' ',' ',' ',' ','Bộ máy tính để bàn Dell Optiplex Core i5 3470, Ram 8gb, SSD 120GB Và Màn hình máy tính Dell 22 inch - Hàng Nhập Khẩu'),(9,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/00/47/df/b02b462394bc3c59e5876ec0d9cb6ae8.jpg',' ',' ',' ',' ','Máy Ảnh Canon 750D + Lens 18-55 IS STM (Lê Bảo Minh) - Hàng Chính hãng'),(10,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2769.d20170622.t164957.150266.jpg',' ',' ',' ',' ','Máy ảnh Nikon D5600 KIT AF-P 18-55 VR - Hàng Chính Hãng'),(11,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/s/e/sel%2016.70_1.u504.d20160916.t160438.43252.jpg',' ',' ',' ',' ','Lens Sony Vario-Tessar T* SEL 16-70mm F/4 ZA OSS - Hàng Chính Hãng'),(12,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/media/catalog/product/1/_/1.u2566.d20170418.t120802.488399.jpg',' ',' ',' ',' ','Ống Kính Sony FE 50mm F1.8 - Hàng Chính Hãng'),(13,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/ab/c1/69/00a248a6b7849f83ea1d9cb630ac89d5.jpg',' ',' ',' ',' ','Thẻ Nhớ SDXC Sandisk Extreme Pro 170MB/s V30 64GB - Hàng Nhập Khẩu'),(14,'2019-11-22 11:25:18','2019-11-22 11:25:18',' ',' ','https://salt.tikicdn.com/cache/200x200/ts/product/20/55/83/2102f00d33d9e500311897ad9ec74b08.jpg',' ',' ',' ',' ','Tay cầm chống rung cho điện thoại Gimbal Zhiyun Smooth 4 - Chính hãng'),(15,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/b1/19/44/c545e8cad39320ef1bb21e90ba544406.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/19/44/c545e8cad39320ef1bb21e90ba544406.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/27/cf/ad/3909d5dad1aa8a5af56465fe721360b8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/56/9c/1a/fde394d013b354e81aa92e2ae185edde.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/61/bd/7b/e2117706b7b4f42e4680fd3275c518f1.jpg','   '),(16,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/47/40/70/48a601dde91cf13873471009364690a8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/9f/fa/a9/8df89714e77a2d28724d65317ab8eab2.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/98/2f/d5/da147be9ca543b81d634b6b3bd86bad5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/98/2f/d5/da147be9ca543b81d634b6b3bd86bad5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/e5/ec/68/f0e6a839aa9f41572d7651e72edc4b95.jpg','   '),(17,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/1b/63/af/d5572bb5d9e50c932749af6acaa82e10.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/ca/be/94/233950acb1f9df15675c38e0f1507571.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/a5/bd/5c/a8cf273bb33c67d409881164119782fa.jpg','   '),(18,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/c2/73/18/22879b35f72c0eceaddbffa464c7aa54.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/8f/89/2f/2cf913257e158ecaa730f1131459b133.jpg',' https://salt.tikicdn.com/cache/75x75/ts/product/77/fa/d1/c26204c987a3a570881c770f024a6ef7.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/18/ff/69/d17604f304f4537c87b48559f64209a3.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/18/ff/69/d17604f304f4537c87b48559f64209a3.jpg','   '),(19,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/ee/91/73/9b74354498138aecf37f12a415ed6f01.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u5395.d20170824.t162040.468900.jpg',' https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u5395.d20170824.t162040.468900.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/3/_/3.u5395.d20170824.t162040.497745.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/4/_/4.u5395.d20170824.t162040.525535.jpg','   '),(20,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/80/89/aa/f3735094f91e6f0395fcc3c4e15f51ee.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/73/53/46/87018ff8f2810bd09f599da9176f954f.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/73/53/46/87018ff8f2810bd09f599da9176f954f.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/c6/56/c3/a5f948bf789c48defadbad2e76f059b3.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/fd/0d/b6/f24c5492177ee3eebbbbdbc5bfadab8a.jpg','   '),(21,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/21/72/44/210faec56722151a70c28f2aefe36087.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/73/53/46/87018ff8f2810bd09f599da9176f954f.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/5d/8d/de/6140d49f0c179c0068d55f0591b47a12.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b5/ee/22/ed958baf197b4fd4267ca7ff9baa3c7c.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b5/ee/22/ed958baf197b4fd4267ca7ff9baa3c7c.jpg','   '),(22,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/9f/13/87/0d1dca5b6f328c05620a59caa63bdfec.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/2c/e5/eb/0626d649085ed4f47795e71072e41085.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/1e/16/c7/6df72573cfec183512670d0ee85f5a4a.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b7/db/46/f0ddf1abe5cbd4228842bde74f2c6a09.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/3c/ae/1b/29f06e4e59c6a83fcc894e68644a3365.jpg','   '),(23,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_4_serie_70_p_62.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_5_serie_70_t_77.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_6_serie_70_p_73.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_1_serie_70_f_90.u600.d20160629.t131854.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/p/r/produto_aoc_1_serie_70_f_90.u600.d20160629.t131854.jpg','   '),(24,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/84/29/e6/73a646212c81b603a0f855009e0787a5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/b1/7b/a8/e6329c5f8795c606bd89f4e77e131941.jpg','   '),(25,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','   '),(26,'2019-11-22 11:43:38','2019-11-22 11:43:38','   ','   ','https://salt.tikicdn.com/cache/75x75/ts/product/ad/0a/2a/b571732c6178ceac4ab992b625d89595.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/12/b1/76/21fe962fa4676ec2c57a9a5e37bdfbc8.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/7d/69/f6/ff3ea2eb9f1c4a78927f265908f184e5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/7d/69/f6/ff3ea2eb9f1c4a78927f265908f184e5.jpg','https://salt.tikicdn.com/cache/75x75/ts/product/7d/69/f6/ff3ea2eb9f1c4a78927f265908f184e5.jpg','   '),(27,'2019-11-22 11:43:38','2019-11-22 11:43:38',' ',' ','https://salt.tikicdn.com/cache/75x75/ts/product/c5/c0/27/2b846abda863abe438aa1dbd1b5ba6c7.jpg','',' ',' ',' ','MÁY GIẶT ÂM TỦ 8KG HAFELE HW-B60A 538.91.080 - HÀNG CHÍNH HÃNG'),(28,'2019-11-22 11:43:38','2019-11-22 11:43:38',' ',' ','https://salt.tikicdn.com/cache/75x75/ts/product/0f/4d/3a/51ef4d2e5c513596fd6a737a60a77b32.png','https://salt.tikicdn.com/cache/75x75/ts/product/c6/94/66/f1139156b80952ec7e009cb1746afc18.png','https://salt.tikicdn.com/cache/75x75/ts/product/67/1e/98/f092ad2295231bc636b8fca7cb076391.png','https://salt.tikicdn.com/cache/75x75/ts/product/4e/59/c7/c952c7b69730d482feb1fe249712cca1.png',' ','Máy Giặt Sấy PANASONIC 10.0/6.0 Kg NA-D106X1WVT - HÀNG CHÍNH HÃNG'),(29,'2019-11-23 03:45:33','2019-11-23 03:45:33','nothing','nothing','https://salt.tikicdn.com/cache/75x75/media/catalog/product/2/_/2.u5395.d20170714.t174351.352.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/3/_/3.u5395.d20170714.t174352.40164.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/4/_/4.u5395.d20170714.t174352.80598.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/4/_/4.u5395.d20170714.t174352.80598.jpg','https://salt.tikicdn.com/cache/75x75/media/catalog/product/4/_/4.u5395.d20170714.t174352.80598.jpg','nothing');
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `last_modified_at` datetime DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
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

-- Dump completed on 2019-12-01 12:44:39
