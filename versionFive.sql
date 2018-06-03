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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_car_info`
--

LOCK TABLES `driver_car_info` WRITE;
/*!40000 ALTER TABLE `driver_car_info` DISABLE KEYS */;
INSERT INTO `driver_car_info` VALUES (3,'moustafa','123456789','portsaid','2019-01-01','nissan','gol',1994,2500,'red',38,'a','a','1234'),(4,'hegazy','123456789','portsaid','2019-01-01','nisaaan','gool',1994,2500,'blue',40,'a','a','1258'),(5,'sayed','123456799','alex','2019-01-01','ssssss','ssss',994,2500,'gold',41,'a','a','8888');
/*!40000 ALTER TABLE `driver_car_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip` (
  `idTrip` int(11) NOT NULL AUTO_INCREMENT,
  `tripName` varchar(45) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `driverId` int(11) NOT NULL,
  `ttime` varchar(45) NOT NULL,
  `tfrom` varchar(60) NOT NULL,
  `tto` varchar(60) NOT NULL,
  `numberOfSeats` int(11) NOT NULL,
  `cost` float NOT NULL,
  `day` varchar(45) NOT NULL,
  PRIMARY KEY (`idTrip`),
  KEY `tripdriver_idx` (`driverId`),
  CONSTRAINT `tripdriver` FOREIGN KEY (`driverId`) REFERENCES `driver_car_info` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (4,'visit','moustafa',38,'18:48','portsaid','alex',0,19.5,'01/06/2018'),(5,'family','meet at portfouad',40,'14:30','portsaid','alex',3,20,'04/03/2018'),(6,'try','ssssss',41,'15:00','alex','portsaid',3,50,'01/02/2018'),(7,'try2','qqqqq',40,'20:00','alex','portsaid',3,50,'01/02/2018'),(8,'aa','aa',38,'20:00','a','a',2,20,'01/01/2019'),(9,'aa','aa',38,'20:00','a','a',2,20,'01/01/2019'),(10,'aa','aa',38,'20:00','a','a',1,20,'01/01/2019');
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_reservation`
--

DROP TABLE IF EXISTS `trip_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_reservation` (
  `trip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_reservation`
--

LOCK TABLES `trip_reservation` WRITE;
/*!40000 ALTER TABLE `trip_reservation` DISABLE KEYS */;
INSERT INTO `trip_reservation` VALUES (4,37),(4,38),(10,38),(5,40);
/*!40000 ALTER TABLE `trip_reservation` ENABLE KEYS */;
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
  `Birth_Date` varchar(45) NOT NULL,
  `User_photo` varchar(100) NOT NULL,
  `National_id` varchar(14) NOT NULL,
  `pending` varchar(45) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `E_Mail_UNIQUE` (`E_Mail`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (35,'moustafa','1234','Moustafa@gmail.com','male','01259100002','1994-01-01','a','29408220300518','2'),(36,'hegazy','1234','h@gmail.com','male','01259100002','1994-01-01','a','29408220300518','1'),(37,'s','1234','s@gmail.com','male','01259100002','1994-01-01','a','29408220300518','-1'),(38,'aa','1234','a@gmail.com','male','01259100002','1994-01-01','a','29408220300518','1'),(39,'ddddd','12345','aaaaa@gmail.com','Male','01013362851','1994-01-01','aaa','29502081300563','1'),(40,'ahmed','1234','ahmed@gmail.com','male','01020303040','1994-01-01','a','29408220300518','1'),(41,'sayed','1234','sayed@gmail.com','male','01202020202','1994-01-01','a','29408220300518','1'),(42,'mazen','1234','mazen@gmail.com','male','012591000002','1994-01-01','a','29408220300518','1');
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

-- Dump completed on 2018-06-03  2:05:30
