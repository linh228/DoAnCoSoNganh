CREATE DATABASE  IF NOT EXISTS `taphoa2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taphoa2`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: taphoa2
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `ct_hoadon`
--

DROP TABLE IF EXISTS `ct_hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ct_hoadon` (
  `MaHD` int NOT NULL,
  `MaSP` varchar(50) NOT NULL,
  `SoLuong` int DEFAULT NULL,
  `Gia` int DEFAULT '0',
  PRIMARY KEY (`MaHD`,`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_hoadon`
--

LOCK TABLES `ct_hoadon` WRITE;
/*!40000 ALTER TABLE `ct_hoadon` DISABLE KEYS */;
INSERT INTO `ct_hoadon` VALUES (23,'1',1,2000),(24,'2',1,3000),(25,'1',1,2000),(26,'1',1,2000),(28,'3',5,25000),(28,'4',7,56000),(29,'1',1,2000),(31,'1',1,2000),(33,'1',5,10000),(33,'2',2,6000),(33,'4',1,8000),(33,'5',7,14000),(34,'1',3,6000),(35,'5',1,2000),(36,'1',1,2000),(36,'2',1,3000),(36,'3',1,5000),(36,'6',2,44000);
/*!40000 ALTER TABLE `ct_hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_nhaphang`
--

DROP TABLE IF EXISTS `ct_nhaphang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ct_nhaphang` (
  `MaDN` int NOT NULL,
  `MaSP` varchar(50) NOT NULL,
  `SoLuong` int DEFAULT NULL,
  `Gia` int DEFAULT NULL,
  `TongGia` int DEFAULT '0',
  PRIMARY KEY (`MaDN`,`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_nhaphang`
--

LOCK TABLES `ct_nhaphang` WRITE;
/*!40000 ALTER TABLE `ct_nhaphang` DISABLE KEYS */;
INSERT INTO `ct_nhaphang` VALUES (10,'1',5,1500,7500),(10,'2',5,2500,12500),(18,'2',7,2000,14000),(20,'2',7,3200,22400),(21,'3',5,2500,12500),(22,'5',100,1000,100000),(25,'6',20,19000,380000),(26,'6',20,19000,380000),(29,'1',50,1000,50000),(31,'1',20,1000,20000),(31,'2',57,2100,119700),(31,'3',15,3000,45000),(31,'6',15,15000,225000);
/*!40000 ALTER TABLE `ct_nhaphang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `MaHD` int NOT NULL AUTO_INCREMENT,
  `NgayBan` date DEFAULT NULL,
  `TongTien` int DEFAULT '0',
  `MaKH` varchar(50) DEFAULT NULL,
  `MaNV` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaHD`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,'2020-02-03',15000,NULL,NULL),(24,'2020-11-29',2580,'3','0'),(25,'2020-11-29',2000,'3','0'),(26,'2020-11-29',1430,'3','0'),(27,'2020-11-29',0,'0','0'),(28,'2020-11-29',81000,'0','4'),(29,'2020-11-29',2000,'3','4'),(30,'2020-11-29',0,'3','4'),(31,'2020-11-29',1880,'3','3'),(32,'2020-11-29',0,'0','3'),(33,'2020-11-29',37940,'3','3'),(34,'2020-11-29',0,'0','3'),(35,'2020-11-29',0,'0','3'),(36,'2020-11-30',52860,'3','3');
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `MaKH` int NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `DiemThuong` int DEFAULT '0',
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Linh','2000-05-03','0000',0),(2,'Long','1998-06-01','0110',0),(3,'Ân','1997-03-04','1111',1620),(6,'Quang','1997-07-12','11100020',0),(7,'Dung','2008-11-04','23123',0);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kho` (
  `MaSP` varchar(50) NOT NULL,
  `TenSP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SoLuong` int DEFAULT '0',
  `GiaBan` int DEFAULT '0',
  PRIMARY KEY (`MaSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho`
--

LOCK TABLES `kho` WRITE;
/*!40000 ALTER TABLE `kho` DISABLE KEYS */;
INSERT INTO `kho` VALUES ('1','Bút chì',49,2000),('2','Bút mực',16,3000),('3','Vở 100 trang',21,5000),('4','Vở 200 trang',30,8000),('5','Kẹo',24,2000),('6','kẹo play more',18,22000);
/*!40000 ALTER TABLE `kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL AUTO_INCREMENT,
  `MatKhau` varchar(50) DEFAULT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `SDT` varchar(15) DEFAULT NULL,
  `Anh` varchar(50) DEFAULT NULL,
  `QuanLy` int DEFAULT '0',
  `TaiKhoan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaNV`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (3,'123','Linh','2000-01-28','tdm, Bình Dương','0001123',NULL,1,'NV3'),(4,'222','Long','2000-01-01','Phú Lợi','110011',NULL,0,'NV4'),(5,'001100','Ân Lý','2000-11-03','','001100',NULL,0,'NV5');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaphang`
--

DROP TABLE IF EXISTS `nhaphang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaphang` (
  `MaDN` int NOT NULL AUTO_INCREMENT,
  `NgayNhap` date DEFAULT NULL,
  `TongGia` int DEFAULT '0',
  PRIMARY KEY (`MaDN`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaphang`
--

LOCK TABLES `nhaphang` WRITE;
/*!40000 ALTER TABLE `nhaphang` DISABLE KEYS */;
INSERT INTO `nhaphang` VALUES (10,'2020-11-28',50000),(18,'2020-11-28',50000),(19,'2020-11-28',50000),(20,'2020-11-28',50000),(21,'2020-11-28',50000),(22,'2020-11-29',50000),(23,'2020-11-29',50000),(24,'2020-11-29',50000),(25,'2020-11-29',50000),(26,'2020-11-29',50000),(27,'2020-11-29',50000),(28,'2020-11-29',50000),(29,'2020-11-29',50000),(30,'2020-11-29',0),(31,'2020-11-30',0);
/*!40000 ALTER TABLE `nhaphang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 21:36:40
