CREATE DATABASE  IF NOT EXISTS `ori_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ori_shop`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ori_shop
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Chăm sóc da mặt'),(2,'Trang điểm'),(3,'Chăm sóc tóc và da đầu'),(4,'Chăm sóc cơ thể'),(5,'Nước hoa'),(8,'Thực phẩm chức năng');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('admin','adminori@gmail.com',_binary '','Tôi là admin','$2a$10$1iPiIh9Mw/8jFkmrTzVhs.CrY8rBMn1hWHVSw2NPn92hRTK4kYwHu','','1'),('dong123','huudong297@gmail.com',_binary '','Trần Hữu Đồng','$2a$10$o55Jm17qNsCBwUSjL.dMEuJTNxUl.rYw2Fd1dhrJkk08kd/feemuu','','0'),('hoangan','hoanganngo469@gmail.com',_binary '','Ngô Hoàng Ân','$2a$10$oKBX6jHQMaiQujJnVF7yKujWrCYekMU3oFRjelefyHk5C4LgaDkiK','','0'),('lam','ngohoanglam13112008@gmail.com',_binary '','lam','$2a$10$8DZP3p6Wd20YDCk8oKZo/uwLujbmzGlEy3oHYeFzkBEU8H/sj4QuK','','0'),('thaochi6404','thaochi6404@gmail.com',_binary '','Trần Thảo Chi','$2a$10$s0mCvOK38vTl.BPhuChlCu.xi7wtRD95kAI0X/0JHSLbPJefGxI8.','','0'),('user1','tranhuuthach06@gmail.com',_binary '','Trần Hữu Thạch','$2a$10$nuHvdvtj/NfY87UyjHRJGOaJfxxAJmV4d3UUkzijFzMh2rL5thsku','','0'),('user2','user@gmail.com',_binary '','user2','$2a$10$rCkHrJ.6OW0j5m3bcZREuux/nvKKXDHCEDju2Cgj463zWa6XnmdUu','','0'),('user8','user8@gmail.com',_binary '','demo họ tên','$2a$10$i1BznT2AZlVshE8d/jVUguFzdMjuwRYlYVSNn46e1fByBgLJQouY.','','0');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
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
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `discount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  PRIMARY KEY (`orderDetailId`),
  KEY `FK3ohml2o6a85wh1nn65snnaind` (`orderId`),
  KEY `FK5pie1uapfd704usnm2loi3tex` (`productId`),
  CONSTRAINT `FK3ohml2o6a85wh1nn65snnaind` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `FK5pie1uapfd704usnm2loi3tex` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,NULL,60,2,'Đã Thanh Toán',120,1,5),(2,NULL,40,3,'Đã Thanh Toán',120,2,4),(3,NULL,300,2,'Đang Giao Dịch',540,3,25),(4,NULL,400,1,'Đã Thanh Toán',360,4,27),(5,NULL,650,1,'Đã Thanh Toán',585,5,43),(6,NULL,20,2,'Đang Chờ Xử Lý',36,6,2),(7,NULL,50,1,'Đang Chờ Xử Lý',45,6,3),(8,NULL,60,1,'Đang Chờ Xử Lý',54,6,5),(9,NULL,200,1,'Đang Chờ Xử Lý',200,7,26),(10,NULL,200,1,'Đang Chờ Xử Lý',200,8,26),(11,NULL,100,2,'Đang Chờ Xử Lý',200,9,12),(12,NULL,100,1,'Đang Chờ Xử Lý',100,10,12),(13,NULL,110,1,'Đang Chờ Xử Lý',104.5,10,13),(14,NULL,110,1,'Đang Chờ Xử Lý',104.5,11,13),(17,NULL,300,2,'Đang Chờ Xử Lý',570,14,20),(18,NULL,50,1,'Đang Chờ Xử Lý',50,14,8),(19,NULL,100,1,'Đang Chờ Xử Lý',100,14,12),(20,NULL,65,1,'Đang Chờ Xử Lý',65,15,32),(21,NULL,110,1,'Đang Chờ Xử Lý',104.5,15,13),(22,NULL,400,1,'Đang Chờ Xử Lý',360,16,27),(23,NULL,65,1,'Đang Chờ Xử Lý',65,17,32),(24,NULL,200,1,'Đang Chờ Xử Lý',200,18,26),(25,NULL,120,1,'Đang Chờ Xử Lý',114,19,37),(26,NULL,50,1,'Đang Chờ Xử Lý',45,20,3),(27,NULL,80,1,'Đang Chờ Xử Lý',80,21,30),(28,NULL,60,1,'Đang Chờ Xử Lý',54,22,5),(29,NULL,60,1,'Đang Chờ Xử Lý',57,23,11),(30,NULL,600,1,'Đang Chờ Xử Lý',570,24,41),(31,NULL,200,1,'Đang Chờ Xử Lý',200,25,26),(32,NULL,65,1,'Đang Chờ Xử Lý',65,26,32),(33,NULL,125,1,'Đang Chờ Xử Lý',118.75,27,38),(34,NULL,50,1,'Đang Chờ Xử Lý',45,28,3),(35,NULL,50,1,'Đang Chờ Xử Lý',50,28,8),(36,NULL,110,1,'Đang Chờ Xử Lý',104.5,29,13),(37,NULL,50,1,'Đang Chờ Xử Lý',45,30,3),(38,NULL,50,1,'Đang Chờ Xử Lý',45,31,3),(39,NULL,200,1,'Đã Thanh Toán',180,32,24),(40,NULL,125,2,'Đang Chờ Xử Lý',237.5,33,38),(41,NULL,110,1,'Đã Thanh Toán',104.5,34,13),(42,NULL,50,1,'Đang Chờ Xử Lý',45,35,3),(43,NULL,385,1,'Đang Chờ Xử Lý',346.5,36,4),(44,NULL,149,1,'Đang Chờ Xử Lý',134.1,37,2),(45,NULL,149,1,'Đang Chờ Xử Lý',134.1,38,2),(46,NULL,149,1,'Đang Chờ Xử Lý',134.1,39,2),(47,NULL,149,1,'Đang Chờ Xử Lý',134.1,40,2),(48,NULL,180,1,'Đang Chờ Xử Lý',144,41,9),(49,NULL,399,1,'Đang Chờ Xử Lý',319.2,41,11);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `requireDate` date DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  `orderDetailId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FK1bpj2iini89gbon333nm7tvht` (`customerId`),
  KEY `FK1gy3b3hqr3p2p1y5i8xuj6l5h` (`orderDetailId`),
  CONSTRAINT `FK1bpj2iini89gbon333nm7tvht` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  CONSTRAINT `FK1gy3b3hqr3p2p1y5i8xuj6l5h` FOREIGN KEY (`orderDetailId`) REFERENCES `orderdetails` (`orderDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-02','0917291997','Trần Hữu Đồng',NULL,120,'admin',NULL),(2,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-02','0917291997','Trần Hữu Đồng',NULL,114,'dong123',NULL),(3,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-02','0917291997','Trần Hữu Đồng',NULL,540,'dong123',NULL),(4,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-03','0915767465','Trần Hữu Thạch',NULL,360,'dong123',NULL),(5,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-03','0915999999','Nguyễn Ngọc Khánh',NULL,585,'dong123',NULL),(6,'Tp.Huế',0,NULL,'2021-09-03','0915767465','Nguyễn Thanh Lam',NULL,135,'dong123',NULL),(7,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-03','0976704644','Nguyễn Ngọc Khánh',NULL,200,'dong123',NULL),(8,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-03','0976704644','Nguyễn Ngọc Khánh',NULL,200,'dong123',NULL),(9,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-04','0915767465','Trần Hoài Nam',NULL,200,'dong123',NULL),(10,'TP. Hà Tĩnh',0,NULL,'2021-09-04','0976704644','Nguyễn Văn Tú',NULL,204.5,'dong123',NULL),(11,'TP. Hà Tĩnh',0,NULL,'2021-09-04','0915767465','Trần Hoài Nam',NULL,104.5,'dong123',NULL),(12,'68 Trung Tiết, Tp. Hà Tĩnh',0,NULL,'2021-09-04','0915999999','Trần Hữu Thạch',NULL,142.5,'user1',NULL),(13,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,NULL,'2021-09-05','0943231996','Trần Hoài Nam',NULL,72,NULL,NULL),(14,'Tp.Huế',0,NULL,'2021-09-05','0915767465','Nguyễn Thanh Lam',NULL,720,'dong123',NULL),(15,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Nước Revive và socola Misura','2021-09-05','0915767465','Trần Hữu Thạch',NULL,169.5,'user1',NULL),(16,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Nhân hạt óc chó Sunrise','2021-09-06','0915999999','Trần Hoài Nam',NULL,360,'dong123',NULL),(17,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Nước Revive','2021-09-06','0915767465','Nguyễn Ngọc Khánh',NULL,65,'dong123',NULL),(18,'Tp.Huế',0,'Hạt Macca Dinh Dưỡng','2021-09-06','0917291997','Nguyễn Thanh Lam',NULL,200,'dong123',NULL),(19,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Coca-Cola vị Original','2021-09-06','0915999999','Nguyễn Thanh Lam',NULL,114,'dong123',NULL),(20,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Snack Oishi Tom Toms','2021-09-06','0915767465','Trần Hữu Đồng',NULL,45,'dong123',NULL),(21,'Tp.Huế',0,'Mountain Dew','2021-09-06','0915999999','Nguyễn Thanh Lam',NULL,80,'dong123',NULL),(22,'TP. Quảng Trị',0,'Snack Oishi Pillows','2021-09-06','0915767465','Nguyễn Ngọc Khánh',NULL,54,'dong123',NULL),(23,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Snack Thái Martys','2021-09-06','0917291997','Trần Hữu Đồng',NULL,57,'dong123',NULL),(24,'Tp.Huế',0,'DIELAC ALPHA GOLD','2021-09-06','0915767465','Nguyễn Thanh Lam',NULL,570,'dong123',NULL),(25,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Hạt Macca Dinh Dưỡng','2021-09-06','0976704644','Nguyễn Văn Tú',NULL,200,'dong123',NULL),(26,'266 Dũng sĩ Thanh Khê -  Đà Nẵng',0,'Nước Revive','2021-09-06','0915767465','Nguyễn Thanh Lam',NULL,65,'dong123',NULL),(27,'68 Trung Tiết, Tp. Hà Tĩnh',0,'Coca-Cola','2021-09-06','0915999999','Nguyễn Thanh Lam',NULL,118.75,'dong123',NULL),(28,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915767465','Trần Hoài Nam',NULL,95,'user1',NULL),(29,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-09','0915767465','Nguyễn Ngọc Khánh',NULL,104.5,'dong123',NULL),(30,'demo dia chi',0,'Demo mô tả','2021-09-11','0915999999','demo user',NULL,45,'user2',NULL),(31,'TP. Hà Tĩnh',0,'Demo mô tả','2021-09-12','0915999999','Trần Hoài Nam',NULL,45,'dong123',NULL),(32,'Tp.Huế',0,'Demo mô tả','2021-09-12','0915767465','Nguyễn Thanh Lam',NULL,180,'dong123',NULL),(33,'Tp.Huế',0,'Demo mô tả','2021-09-12','0915999999','Nguyễn Thanh Lam',NULL,237.5,'user8',NULL),(34,'demo dia chi',0,'Demo mô tả','2021-09-12','0625648565','Trần Thảo Chi',NULL,104.5,'thaochi6404',NULL),(35,'abc',0,'ok','2023-12-09','0934059907','Ngô Hoàng Ân',NULL,45,'hoangan',NULL),(36,'abc',0,'ok','2023-12-10','0934059907','Ngô Hoàng Ân',NULL,346.5,'hoangan',NULL),(37,'85/23 Rạch Bùng Binh P9 Q3',0,'ok','2023-12-10','0934059907','Ngô Hoàng Ân',NULL,134.1,'hoangan',NULL),(38,'85/23 Rạch Bùng Binh P9 Q3',0,'ok','2023-12-10','0934059907','Ngô Hoàng Ân',NULL,134.1,'hoangan',NULL),(39,'85/23 Rạch Bùng Binh P9 Q3',0,'ok','2023-12-11','0934059907','Ngô Hoàng Ân',NULL,134.1,'hoangan',NULL),(40,'85/23 Rạch Bùng Binh P9 Q3',0,'ok','2023-12-11','0934059907','Ngô Hoàng Ân',NULL,134.1,'hoangan',NULL),(41,'85/23 Rạch Bùng Binh P9 Q3',0,'ok','2023-12-11','0934059907','lam',NULL,463.2,'lam',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `enteredDate` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `supplierId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `FKej2ob3ifydf846t2a2tntna4e` (`categoryId`),
  KEY `FKs2xbxi7wmu948op6qiho9yr8d` (`supplierId`),
  CONSTRAINT `FKej2ob3ifydf846t2a2tntna4e` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`categoryId`),
  CONSTRAINT `FKs2xbxi7wmu948op6qiho9yr8d` FOREIGN KEY (`supplierId`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Nước Tẩy Trang L\'Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml\r\nMicellar Water 3-in-1 Refreshing Even For Sensitive Skin',10,'2023-12-09','01.jpg','Nước Tẩy Trang L\'Oreal 400ml',149,30,1,1),(3,'Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới)\r\nGentle Skin Cleanser (New)',10,'2023-09-02','02.jpg','Sữa Rửa Mặt Cetaphil 500ml (Mới)',50,30,1,2),(4,'Sữa Rửa Mặt Kiềm Dầu La Roche-Posay Effaclar Purifying For Oily Sensitive Skin',10,'2023-09-02','03.jpg','Sữa Rửa Mặt Kiềm Dầu La Roche-Posay',385,300,1,3),(5,'Bột Vitamin C Giảm Thâm, Làm Sáng Da The Ordinary 100% L-Ascorbic Acid Powder 20g',20,'2023-09-01','04.jpg','Bột Vitamin C Giảm Thâm, Làm Sáng Da The Ordinary 100% L-Ascorbic Acid Powder 20g',189,60,1,3),(6,'Dung Dịch BHA Giảm Mụn, Dầu Nhờn Obagi Clenziderm MD Pore Therapy 30ml, 148mL',5,'2023-09-02','05.jpg','Dung Dịch BHA Giảm Mụn, Dầu Nhờn Obagi Clenziderm MD Pore Therapy 30ml, 148mL',209,60,1,3),(7,'Dung Dịch Chấm Mụn, Hỗ Trợ Giảm Mụn Viêm Sưng, Làm Nhanh Khô Đầu Mụn Ciracle Red Spot Pink Powder 16ml',10,'2023-09-01','06.jpg','Dung Dịch Chấm Mụn, Hỗ Trợ Giảm Mụn Viêm Sưng, Làm Nhanh Khô Đầu Mụn Ciracle Red Spot Pink Powder 16ml',289,80,1,3),(8,'Dung Dịch Ủ Mụn Đầu Đen Medi-peel Extra Super 9 Plus 100ml',5,'2023-09-02','07.jpg','Dung Dịch Ủ Mụn Đầu Đen Medi-peel Extra Super 9 Plus 100ml',169,300,1,3),(9,'TINH CHẤT TRỊ THÂM MỤN THE ORDINARY NIACINAMIDE 10% + ZINC 1% 30ML',20,'2023-09-02','08.jpg','TINH CHẤT TRỊ THÂM MỤN THE ORDINARY NIACINAMIDE 10% + ZINC 1% 30ML',180,40,1,3),(10,'TẨY DA CHẾT ROSETTE PEELING GEL 120G',30,'2023-09-02','09.jpg','TẨY DA CHẾT ROSETTE PEELING GEL 120G',170,60,1,3),(11,'\r\nNƯỚC HOA HỒNG KLAIRS SUPPLE PREPARATION UNSCENTED TONER 180ML',20,'2023-09-02','10.jpg',' NƯỚC HOA HỒNG KLAIRS SUPPLE PREPARATION UNSCENTED TONER 180ML',399,40,1,3),(12,'SON KEM BBIA LAST VELVET LIP TINT',10,'2023-09-02','11.jpg','SON KEM BBIA LAST VELVET LIP TINT',250,50,2,4),(13,'SON KEM BLACK ROUGE AIR FIT VELVET TINT',5,'2023-09-03','12.jpg','SON KEM BLACK ROUGE AIR FIT VELVET TINT',110,30,2,4),(14,'SON BLACK ROUGE DOUBLE LAYER OVER VELVET',10,'2023-09-02','13.jpg','SON BLACK ROUGE DOUBLE LAYER OVER VELVET',145,10,2,4),(15,'BẢNG TẠO KHỐI CITY COLOR CONTOUR EFFECTS – F0005',5,'2023-09-02','14.jpg','BẢNG TẠO KHỐI CITY COLOR CONTOUR EFFECTS – F0005',114,60,2,4),(16,'PHẤN TẠO KHỐI 3CE MAGIC TOUCH FACE MAKER',5,'2023-09-02','15.jpg','PHẤN TẠO KHỐI 3CE MAGIC TOUCH FACE MAKER',230,50,2,4),(17,'CHUỐT MI MASCARA MISSHA NEW 4D MASCARA 7G',0,'2023-09-03','16.jpg','CHUỐT MI MASCARA MISSHA NEW 4D MASCARA 7G',90,10,2,4),(18,'BÚT KẺ MẮT NƯỚC KARADIUM WATERPROOF BRUSH LINER BLACK\r\n',10,'2023-09-07','17.jpg','BÚT KẺ MẮT NƯỚC KARADIUM WATERPROOF BRUSH LINER BLACK',90,30,2,3),(19,'\r\n\r\n\r\n\r\n\r\n\r\nPHẤN MẮT 9 Ô COLOR SCHOOL VITALITY POCKET EYESHADOW PALETTE (NHẬP KHẨU)',5,'2023-09-04','18.jgp.png','      PHẤN MẮT 9 Ô COLOR SCHOOL VITALITY POCKET EYESHADOW PALETTE (NHẬP KHẨU)',90,10,2,4),(20,'PHẤN PHỦ CANMAKE MARSHMALLOW FINISH POWDER',5,'2023-09-05','18.jpg','PHẤN PHỦ CANMAKE MARSHMALLOW FINISH POWDER',300,50,2,4),(21,'PHẤN NƯỚC MISSHA VELVET FINISH CUSHION SPF50+/ PA+++',0,'2023-09-03','19.jpg','PHẤN NƯỚC MISSHA VELVET FINISH CUSHION SPF50+/ PA+++',150,100,2,6),(22,'\r\nTesori-Doriente-Lotus-Flower-Aromatic-Perfume-100mL.jpg\r\nChứng nhận đại lý Tesori d\'Oriente\r\n\r\n\r\n\r\n\r\n\r\n\r\nNƯỚC HOA TESORI D’ORIENTE LOTUS FLOWER AROMATIC PERFUME 100ML',5,'2023-09-14','20.jpg',' Tesori-Doriente-Lotus-Flower-Aromatic-Perfume-100mL.jpg Chứng nhận đại lý Tesori d\'Oriente       NƯỚC HOA TESORI D’ORIENTE LOTUS FLOWER AROMATIC PERFUME 100ML',300,200,5,6),(23,'Nước Hoa Nữ Armaf Club De Nuit EDP 105ml',10,'2023-09-01','21.jpg','Nước Hoa Nữ Armaf Club De Nuit EDP 105ml',880,100,5,6),(24,'Nước Hoa Nam Versace Eros Man EDT 5ml',10,'2023-09-15','22.jpg','Nước Hoa Nam Versace Eros Man EDT 5ml',250,200,5,6),(25,'Nước Hoa Nam Lalique Encre Noire A L\'Extreme Eau De Parfum 100ml',10,'2023-09-10','23.jpg','Nước Hoa Nam Lalique Encre Noire A L\'Extreme Eau De Parfum 100ml',1000,100,5,6),(26,'Nước Hoa Nam Chanel Bleu De Chanel EDP, 100ml',5,'2023-09-08','24.jpg','Nước Hoa Nam Chanel Bleu De Chanel EDP, 100ml',3200,100,5,6),(27,'Nước Hoa Nam Afnan 9PM EDP, 100ml',5,'2023-09-10','25.jpg','Nước Hoa Nam Afnan 9PM EDP, 100ml',770,300,5,6),(28,'DẦU GỘI KHÔ GIRLZ ONLY DRY SHAMPOO',0,'2023-09-03','26.jpg','DẦU GỘI KHÔ GIRLZ ONLY DRY SHAMPOO',100,100,3,2),(29,'BỘ GỘI XẢ OLEXRS+HAIRSALON ARGAN OIL COLLAGEN COMPLEX (NHẬP KHẨU)',10,'2023-09-10','27.jpg','BỘ GỘI XẢ OLEXRS+HAIRSALON ARGAN OIL COLLAGEN COMPLEX (NHẬP KHẨU)',280,60,4,5),(30,'SỮA TẮM HATOMUGI MOISTURIZING & WASHING 800ML',5,'2023-09-16','28.jpg','SỮA TẮM HATOMUGI MOISTURIZING & WASHING 800ML',110,300,4,5),(31,'LĂN KHỬ MÙI ĐẶC TRỊ ETIAXIL DETRANSPIRANT TRAITEMENT ROLL-ON PEAUX SENSIBLES 15ML',5,'2023-09-11','29.jpg','LĂN KHỬ MÙI ĐẶC TRỊ ETIAXIL DETRANSPIRANT TRAITEMENT ROLL-ON PEAUX SENSIBLES 15ML',200,50,4,5),(32,'TẨY LÔNG VEET 100ML (NỘI ĐỊA PHÁP)',5,'2023-09-17','30.jpg','TẨY LÔNG VEET 100ML (NỘI ĐỊA PHÁP)',130,200,4,5),(33,'DƯỠNG THỂ CHỐNG NẮNG HATOMUGI THE UV MILKY GEL',5,'2023-09-09','31.jpg','DƯỠNG THỂ CHỐNG NẮNG HATOMUGI THE UV MILKY GEL',135,300,4,5),(34,'XỊT THƠM TOÀN THÂN BATH & BODY WORKS FINE FRAGRANCE MIST',5,'2023-09-08','32.jpg','XỊT THƠM TOÀN THÂN BATH & BODY WORKS FINE FRAGRANCE MIST',100,200,4,5),(35,'\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nTẨY TẾ BÀO CHẾT DOVE CREME-DUSCH-PEELING 225ML',20,'2023-09-06','33.jpg','          TẨY TẾ BÀO CHẾT DOVE CREME-DUSCH-PEELING 225ML',145,300,4,5),(36,'\r\n\r\n\r\n\r\n\r\n\r\n\r\nKEM ĐÁNH RĂNG CREST 3D WHITE VIVID MINT ULTRA 147G',5,'2023-09-11','34.jpg','KEM ĐÁNH RĂNG CREST 3D WHITE VIVID MINT ULTRA 147G',145,100,4,5),(37,'\r\n\r\n\r\n\r\n\r\n\r\nMIẾNG DÁN RĂNG CREST 3D WHITESTRIPS LEVELS 18 WHITER – PROFESSIONAL EFFECTS 45 MINUTES',5,'2023-09-19','35.jpg','      MIẾNG DÁN RĂNG CREST 3D WHITESTRIPS LEVELS 18 WHITER – PROFESSIONAL EFFECTS 45 MINUTES',45,200,4,5),(38,'DUNG DỊCH VỆ SINH CORINE DE FARME INTIMATE WASH 250ML\r\n',5,'2023-09-17','36.jpg','DUNG DỊCH VỆ SINH CORINE DE FARME INTIMATE WASH 250ML',170,300,4,5),(39,'GEL RỬA TAY KHÔ BATH & BODY WORKS 29ML',10,'2023-09-11','37.jpg','GEL RỬA TAY KHÔ BATH & BODY WORKS 29ML',100,300,4,1),(40,'DẦU GỘI – XẢ DƯỠNG TÓC BÓNG MƯỢT TSUBAKI PREMIUM MOIST 490ML\r\n',10,'2023-09-09','38.jpg','DẦU GỘI – XẢ DƯỠNG TÓC BÓNG MƯỢT TSUBAKI PREMIUM MOIST 490ML',149,100,3,1),(41,'BỘ GỘI XẢ CHO DA ĐẦU DẦU MISE EN SCENE SCALP CARE\r\n',5,'2023-09-12','39.jpg','BỘ GỘI XẢ CHO DA ĐẦU DẦU MISE EN SCENE SCALP CARE',165,300,3,1),(42,'BỘ GỘI – XẢ WEILAIYA PERFUME REPAIR SERIES – WHITE TRUFFLE 2X450ML\r\n',15,'2023-09-11','40.jpg','BỘ GỘI – XẢ WEILAIYA PERFUME REPAIR SERIES – WHITE TRUFFLE 2X450ML',900,100,3,1),(43,'Dầu gội dược liệu Nguyên Xuân Dưỡng Tóc - Xanh (600ml)',10,'2023-09-08','46.jpg','Dầu gội dược liệu Nguyên Xuân Dưỡng Tóc - Xanh (600ml)',125,300,3,1),(47,'NHUỘM TÓC MISE EN SCENE HELLO BUBBLE\r\n',0,'2023-09-11','41.jpg','NHUỘM TÓC MISE EN SCENE HELLO BUBBLE',45,200,3,1),(48,'BỘ 4 MÓN DƯỠNG DA SOME BY MI SUPER MATCHA PORE CARE STARTER KIT',10,'2023-09-12','42.jpg','BỘ 4 MÓN DƯỠNG DA SOME BY MI SUPER MATCHA PORE CARE STARTER KIT',420,300,1,3),(49,'DẦU DƯỠNG TÓC RAIP R3 ARGAN HAIR OIL 100ML',5,'2023-09-05','43.jpg','DẦU DƯỠNG TÓC RAIP R3 ARGAN HAIR OIL 100ML',100,100,3,2),(54,'MẶT NẠ BANOBAGI VITA GENIC JELLY (MẪU MỚI)',5,'2023-09-09','44.jpg','MẶT NẠ BANOBAGI VITA GENIC JELLY (MẪU MỚI)',44,20,1,1),(55,'VIÊN UỐNG RAU CỦ QUẢ DHC PERFECT VEGETABLE – PREMIUM\r\n',5,'2023-10-02','45.jpg','VIÊN UỐNG RAU CỦ QUẢ DHC PERFECT VEGETABLE – PREMIUM',210,300,8,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcotftqap7by5m4ibph3ss3xvo` (`customerId`),
  CONSTRAINT `FKcotftqap7by5m4ibph3ss3xvo` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN','admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Simple@gmail.com','Simple','0915999999'),(2,'cetaphil@gmail.com','Cetaphil','0915999988'),(3,'chanel@gmail.com','Chanel','0915999966'),(4,'Dior@gmail.com','Dior','099999999'),(5,'LouisVuitton@gmail.com','Louis Vuitton','0915998888'),(6,'prada@gmail.com','Prada','0915998668');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ori_shop'
--

--
-- Dumping routines for database 'ori_shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11  1:29:24
