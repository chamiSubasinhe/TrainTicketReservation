CREATE DATABASE  IF NOT EXISTS `train_ticket_reservation` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `train_ticket_reservation`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: train_ticket_reservation
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `cancellation`
--

DROP TABLE IF EXISTS `cancellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cancellation` (
  `idcancellation` int(11) NOT NULL,
  `From` varchar(45) NOT NULL,
  `To` varchar(45) NOT NULL,
  `Date` datetime NOT NULL,
  `noOfTicket` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`idcancellation`),
  CONSTRAINT `ReservationId` FOREIGN KEY (`idcancellation`) REFERENCES `reservation` (`ReservationId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation`
--

LOCK TABLES `cancellation` WRITE;
/*!40000 ALTER TABLE `cancellation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `massage` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passenger` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(80) NOT NULL,
  `Lastname` varchar(80) NOT NULL,
  `email` varchar(70) DEFAULT NULL,
  `mobileNo` varchar(45) DEFAULT NULL,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1018 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1001,'kamal','dissanayaka','kamal123@gmail.com ',NULL,'kamal@'),(1002,'shanuki','wijesekara','shanu@gmail.com',NULL,'shanu@#'),(1003,'wwfqe','qwfqwf','fwefwe@eget.ert','wreg','wrgwg'),(1004,'dqwdqw','wdqwd','wdqwdwdqw@effwef.fccwef','qwdqw','qwd'),(1005,'aegzergerg','rgwrgwerg','weger@getger.drd','rgerg','ergerg'),(1006,'efwefwf','wefwef','efqwe@fvf.gf','fwef','fwef'),(1007,'sdvv','dfdvvd','asca@erfrvwr.rt','fwefw','fwef'),(1008,'qaaaaaaaaaaaaaaaaaaaaa','aaaaaaaaaaaaa','sdvs@frgr.hm','csdvs','vsdv'),(1009,'bbbbbbbbbb','aaaaaaaaaaaaa','sdvs@frgr.hm','csdvs','fefwf'),(1010,'vsdsdsf','sffffffffffffffffff','sdfs@dg.dfd','gsg','gdfgdfgd'),(1011,'ffffffffffffff','fffffffffff','afd@rgrrg.tdbfv','dvsdv','vsdv'),(1012,'fffffffffffffascasf','fffffffffff','afd@rgrrg.tdbfv','dvsdvcasca','scasc'),(1013,'xfdhgfs','hdfgndfh','hdfhd@gnrg.srgsr','sfbfb','gbdfgbdfb'),(1014,'xfhdtjdfj','jdtjhdt','dtjdtjd@ftgnf.ftthd','jftjd','jdj'),(1015,'xfxhdhdhdf','dfhdfhd','hdfhd@vsg.sdsfsdf','dgsdg','dgsdg'),(1016,'xfxhdhdhdf','dfhdfhd','hdfhd@vsg.sdsfsdf','dgsdg','dgsdg'),(1017,'asdas','dcascasca','cas@efewe.rt','fwe','wefwef');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `payType` char(14) NOT NULL,
  `cardNo` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`payId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `ReservationId` int(11) NOT NULL AUTO_INCREMENT,
  `From` varchar(45) NOT NULL,
  `To` varchar(45) NOT NULL,
  `noOfTicket` varchar(5) NOT NULL,
  `Date` datetime NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ReservationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `TicketId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `End` varchar(45) DEFAULT NULL,
  `Start` varchar(45) DEFAULT NULL,
  `noOfTickets` int(11) DEFAULT NULL,
  `paymethod` char(14) DEFAULT NULL,
  `Totalprice` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`TicketId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,'jbdcikj wc','wgegwrgw','egwrgwergw',3,'ggrg',456.30),(2,'dfefsf','dssdfsdf','sdfsdfs',2,'fdsfsdf',456.00);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `train` (
  `trainId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `To` varchar(45) NOT NULL,
  `From` varchar(45) NOT NULL,
  `Time` varchar(45) NOT NULL,
  PRIMARY KEY (`trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-20 20:44:58
