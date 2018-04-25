-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ride_share_pro
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `driver_car_info`
--

DROP TABLE IF EXISTS `driver_car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_car_info` (
  `driveCarID` int(11) NOT NULL AUTO_INCREMENT,
  `Owner_name` varchar(60) NOT NULL,
  `driver_license_num` varchar(20) NOT NULL,
  `Owner_Address` varchar(60) NOT NULL,
  `license_EndDate` date NOT NULL,
  `Car_Brand` varchar(60) NOT NULL,
  `car_Model` varchar(60) NOT NULL,
  `Car_Year` int(11) NOT NULL,
  `Car_CC` int(11) NOT NULL,
  `Car_Color` varchar(45) NOT NULL,
  `UserId` int(11) NOT NULL,
  `National_id_Photo` varchar(100) NOT NULL,
  `license_id_photo` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`driveCarID`),
  UNIQUE KEY `driveCarID_UNIQUE` (`driveCarID`),
  UNIQUE KEY `UserId_UNIQUE` (`UserId`),
  CONSTRAINT `UserIdFK` FOREIGN KEY (`UserId`) REFERENCES `user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_car_info`
--

LOCK TABLES `driver_car_info` WRITE;
/*!40000 ALTER TABLE `driver_car_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_car_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `E_Mail` varchar(45) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `Mobile` varchar(12) NOT NULL,
  `Birth_Date` date NOT NULL,
  `User_photo` varchar(100) NOT NULL,
  `National_id` varchar(14) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `E_Mail_UNIQUE` (`E_Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ride_share_pro'
--

--
-- Dumping routines for database 'ride_share_pro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 19:02:23
