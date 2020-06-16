-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: songyadong
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `code` int DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `fathercode` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (51,'手机',0),(5101,'苹果',51),(510101,'iPhone5',5101),(510103,'iPhone5s',5101),(510104,'iPhone6',5101),(510105,'iPhone 6 Plus',5101),(510106,'iPhone 6s',5101),(510107,'iPhone 6s Plus',5101),(510108,'iPhone 7',5101),(510109,'iPhone 7 Plus',5101),(510102,'iPhone5c',5101),(510110,'iPhone SE',5101),(5102,'三星',51),(510201,'Galaxy S7 Edge',5102),(510202,'Galaxy S6',5102),(510203,'Galaxy S6 Edge',5102),(510204,'Galaxy S6 Edge+',5102),(510205,'Galaxy S7',5102),(510206,'Galaxy Note4',5102),(510207,'Galaxy Note5',5102),(510208,'Galaxy Note7',5102),(5103,'华为',51),(510301,'Mate 7',5103),(510302,'Mate 8',5103),(5104,'小米',51),(510401,'小米手机5',5104),(52,'平板',0),(5201,'Apple',52),(520101,'iPad mini 2',5201),(520102,'iPad mini',5201),(520103,'iPad 4',5201),(520104,'iPad Air',5201),(520105,'iPad Air 2',5201),(520106,'iPad mini 3',5201),(520107,'iPad mini',5201),(520108,'iPad Pro 12.9英寸',5201),(520109,'iPad Pro 9.7英寸',5201),(5202,'亚马逊',52),(520201,'Kindle Oasis',5202),(53,'笔记本',0),(5301,'苹果',53),(530101,'MacBook Air(11\",Early 2015)',5301),(530102,'MacBook Air(13\",Early 2015)',5301),(530103,'MacBook (12\",Early 2015)',5301),(530104,'MacBook Pro (13\",Early 2015)',5301),(530105,'MacBook Pro (15\",Mid 2015)',5301),(530106,'MacBook Pro (15\",Mid 2014)',5301),(530107,'MacBook Pro (13\",Mid 2014)',5301),(54,'配件',0),(5401,'数据线',54),(540101,'Apple',5401),(5402,'耳机',54),(540101,'Apple',5402),(5403,'充电器',54),(540301,'Apple',5403),(5404,'转换器',54),(540401,'Apple',5404),(5405,'贴膜',54),(540501,'定制',5405),(5406,'保护套',54),(540601,'定制',5406),(NULL,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `receiverinfo` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (42,899,'Nanjing','iPhone 5s 16G 联通4G/移动4G','2020-06-16 03:03:37',3),(43,899,'NanjingJiangsu','iPhone 5s 16G 联通4G/移动4G','2020-06-16 03:09:31',3),(44,899,'hhhhhhh','iPhone 5s 16G 联通4G/移动4G','2020-06-16 03:09:42',3),(45,1149,'江苏省南京市栖霞区文苑路9号南京邮电大学','iPad mini 2 16G 国行WIFI版','2020-06-16 11:18:33',4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `pnum` int DEFAULT NULL,
  `c3code` int DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Apple',949,122,510103,'1.png','iPhone 5s 16G 移动4G','黑色'),(2,'Apple',899,23,510101,'2.png','iPhone 5s 16G 联通4G/移动4G','金色'),(3,'Apple',1199,152,510103,'3.png','iPhone 5s 16G 联通4G/移动4G','白色'),(4,'三星',1099,220,510206,'4.png','Galaxy Note 4 16G 移动4G','白色'),(5,'Apple',1899,123,510104,'5.png','iPhone 6 16G 联通4G/移动4G/电信4G','黑色'),(6,'Apple',1949,360,510110,'6.jpg','iPhone SE 16G 联通4G/移动4G/电信4G','金色'),(7,'Apple',2549,999,510106,'6.png','iPhone 6s 16G 联通4G/移动4G/电信4G','玫瑰金'),(8,'三星',2749,456,510201,'7.jpg','Galaxy S7 Edge 32G 移动4G/联通4G/电信4G','白色'),(9,'Apple',4099,123,510108,'8.jpg','iPhone 7 32G 联通4G/移动4G/电信4G','金色'),(10,'Apple',6099,5665,510109,'9.jpg','iPhone 7 Plus 128G 联通4G/移动4G/电信4G','亮黑色'),(11,'Apple',6249,500,510109,'10.jpg','iPhone 7 Plus 128G 联通4G/移动4G/电信4G','玫瑰金'),(12,'Apple',649,266,520102,'11.png','iPad mini 16G 港行WIFI版','白色'),(13,'Apple',749,555,520102,'12.png','iPad mini 16G 国行WIFI版','白色'),(14,'Apple',1149,9999,520101,'13.png','iPad mini 2 16G 国行WIFI版','白色'),(15,'Apple',1499,200,520101,'14.png','iPad mini 2 32G 港行Cellular版','白色'),(16,'Apple',4499,12,520108,'15.jpg','iPad Pro 128G WIFI版','黑色'),(17,'Apple',999,265,520102,'16.png','iPad mini 32G 国行Cellular版','银色'),(18,'苹果',7299,999,530104,'17.jpg','MacBook Pro(13\",Early 2015)256G','银色'),(19,'苹果',8399,999,530106,'18.jpg','MookBook Pro(15\",Mid 2014)256G','银色'),(20,'Apple',69,999,540101,'19.png','Lighting to USB 数据线','白色'),(21,'Apple',89,999,540101,'20.png','Apple EarPods 耳机','白色'),(22,'Apple',69,999,540301,'21.png','Apple 5W USB 电源适配器 ','白色'),(23,'爱否FView',14.9,9999,540501,'22.jpg','iPhone6/6s HR+高透保护膜（非钢化）','透明'),(24,'爱否FView',24.9,6756,540601,'23.jpg','iPhone 6/6s 纤薄透明保护壳','黑色'),(25,'爱否FView',29.9,26,540501,'25.jpg','iPhone 6 Plus/6s Plus 软边钢化膜','透明'),(26,'Apple',2999,265,510106,'26.png','iPhone 6s 64G 联通4G/移动4G/电信4G','银色'),(27,'Apple',3149,255,510105,'27.png','iPhone 6 Plus 64G 联通4G/移动4G/电信4G','白色'),(28,'Apple',128,45,540101,'28.jpg','Apple 5W USB 电源适配器&Lightning to USB 数据线','白色');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','123'),(3,'devotion','mysunshine'),(4,'B17041530','123456');
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

-- Dump completed on 2020-06-16 19:57:42
