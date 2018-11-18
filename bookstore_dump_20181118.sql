-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstoreweb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','admin'),(2,'halo','123456'),(3,'halo1','123456');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Street` varchar(255) DEFAULT NULL,
  `Number` varchar(255) DEFAULT NULL,
  `WardId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKAddress503909` (`WardId`),
  CONSTRAINT `FKAddress503909` FOREIGN KEY (`WardId`) REFERENCES `ward` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Giai Phong','123',1),(3,'Dinh cong ha hoang mai','30',1),(4,'Dinh cong ha hoang mai','30',1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `PaymentMethod3Id` int(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Desc` varchar(255) DEFAULT NULL,
  `BankPaymentId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKBank810263` (`BankPaymentId`),
  CONSTRAINT `FKBank810263` FOREIGN KEY (`BankPaymentId`) REFERENCES `bankpayment` (`PaymentMethodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankpayment`
--

DROP TABLE IF EXISTS `bankpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankpayment` (
  `Id` int(10) NOT NULL,
  `Bank` int(10) DEFAULT NULL,
  `OwnerName` varchar(255) DEFAULT NULL,
  `CardNo` varchar(255) DEFAULT NULL,
  `Duration` int(10) DEFAULT NULL,
  `PaymentMethodId` int(10) NOT NULL,
  PRIMARY KEY (`PaymentMethodId`),
  CONSTRAINT `FKBankPaymen145467` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankpayment`
--

LOCK TABLES `bankpayment` WRITE;
/*!40000 ALTER TABLE `bankpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `TotalPrice` double NOT NULL,
  `DateCreated` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL,
  `ShippingInvoiceId` int(10) DEFAULT NULL,
  `SellerId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKBill337618` (`SellerId`),
  KEY `FKBill676138` (`ShippingInvoiceId`),
  CONSTRAINT `FKBill337618` FOREIGN KEY (`SellerId`) REFERENCES `seller` (`Id`),
  CONSTRAINT `FKBill676138` FOREIGN KEY (`ShippingInvoiceId`) REFERENCES `shippinginvoice` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `PublishDate` date DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `NumberOfPages` int(10) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Category` int(10) DEFAULT NULL,
  `Author` varchar(125) DEFAULT NULL,
  `PublisherId` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Van hoc','2018-02-02',10000,120,1,1,'Nguyen Hoai',1),(2,'dac nhan tam','2018-11-18',100000,120,1,1,'Kim Lan',1),(3,'van hoc','2018-11-18',100000,120,1,1,'Kim Lan',1);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookcart`
--

DROP TABLE IF EXISTS `bookcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookcart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `BookId` int(10) NOT NULL,
  `CartId` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKBookCart670675` (`BookId`),
  CONSTRAINT `FKBookCart670675` FOREIGN KEY (`BookId`) REFERENCES `book` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookcart`
--

LOCK TABLES `bookcart` WRITE;
/*!40000 ALTER TABLE `bookcart` DISABLE KEYS */;
INSERT INTO `bookcart` VALUES (1,1,1),(2,1,2),(3,1,1),(4,1,2),(5,1,1),(6,1,2),(7,1,1),(8,1,2),(9,1,1),(10,1,2),(11,1,1),(12,1,2),(13,1,3),(14,1,1),(15,1,2),(16,1,3),(17,1,1),(18,1,2),(19,1,3),(20,1,2),(21,2,2),(22,3,2);
/*!40000 ALTER TABLE `bookcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `TimeCreated` date DEFAULT NULL,
  `OrderID` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKCart92266` (`OrderID`),
  CONSTRAINT `FKCart92266` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2018-11-18',5),(2,'2018-11-18',6);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Van hoc','Cho nguoi hoc van');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Zipcode` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `CountryId` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'10000','Hanoi',1),(2,'10001','HCM',1);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codpayment`
--

DROP TABLE IF EXISTS `codpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codpayment` (
  `Id` int(10) NOT NULL,
  `Fee` float NOT NULL,
  `PaymentMethodId` int(10) NOT NULL,
  PRIMARY KEY (`PaymentMethodId`),
  CONSTRAINT `FKCoDPayment293182` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codpayment`
--

LOCK TABLES `codpayment` WRITE;
/*!40000 ALTER TABLE `codpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `codpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `GMT` varchar(255) DEFAULT NULL,
  `Zipcode` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Vietnam','+7',10000),(2,'China','+7',10001),(3,'USA','-7',10002);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditcardpayment`
--

DROP TABLE IF EXISTS `creditcardpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditcardpayment` (
  `Id` int(10) NOT NULL,
  `CardNo` varchar(255) DEFAULT NULL,
  `OwnerName` varchar(255) DEFAULT NULL,
  `Exp` date DEFAULT NULL,
  `Pin` varchar(255) DEFAULT NULL,
  `PaymentMethodId` int(10) NOT NULL,
  PRIMARY KEY (`PaymentMethodId`),
  CONSTRAINT `FKCreditCard542164` FOREIGN KEY (`PaymentMethodId`) REFERENCES `paymentmethod` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditcardpayment`
--

LOCK TABLES `creditcardpayment` WRITE;
/*!40000 ALTER TABLE `creditcardpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `creditcardpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `AddressId` int(10) NOT NULL,
  `FullNameId` int(10) NOT NULL,
  `AccountId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKCustomer673480` (`AddressId`),
  KEY `FKCustomer394362` (`FullNameId`),
  KEY `FKCustomer95429` (`AccountId`),
  CONSTRAINT `FKCustomer394362` FOREIGN KEY (`FullNameId`) REFERENCES `fullname` (`Id`),
  CONSTRAINT `FKCustomer673480` FOREIGN KEY (`AddressId`) REFERENCES `address` (`Id`),
  CONSTRAINT `FKCustomer95429` FOREIGN KEY (`AccountId`) REFERENCES `account` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,1,1),(3,4,4,3);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(125) DEFAULT NULL,
  `CityId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKDistrict563462` (`CityId`),
  CONSTRAINT `FKDistrict563462` FOREIGN KEY (`CityId`) REFERENCES `city` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Hoang Mai',1);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fullname`
--

DROP TABLE IF EXISTS `fullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fullname` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `MiddleName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fullname`
--

LOCK TABLES `fullname` WRITE;
/*!40000 ALTER TABLE `fullname` DISABLE KEYS */;
INSERT INTO `fullname` VALUES (1,'Nguyen','Van','A'),(2,'Nguyen','Van ','B'),(3,'Hoang','Van','B'),(4,'Hoang','Van','B');
/*!40000 ALTER TABLE `fullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manager` (
  `Id` int(10) NOT NULL,
  `StaffId` int(10) NOT NULL,
  KEY `FKManager752472` (`StaffId`),
  CONSTRAINT `FKManager752472` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Status` int(10) DEFAULT NULL,
  `CreateTime` date DEFAULT NULL,
  `PaymentMethodId` int(10) NOT NULL,
  `CustomerId` int(10) NOT NULL,
  `cartId` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKOrder556775` (`CustomerId`),
  CONSTRAINT `FKOrder556775` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (2,1,'2018-10-10',1,1,1),(3,1,'2018-11-18',1,1,1),(4,1,'2018-11-18',1,1,1),(5,1,'2018-11-18',1,1,1),(6,1,'2018-11-18',1,1,1);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatus` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Status` varchar(255) DEFAULT NULL,
  `OrderID` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKOrderStatu19005` (`OrderID`),
  CONSTRAINT `FKOrderStatu19005` FOREIGN KEY (`OrderID`) REFERENCES `order` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethod`
--

DROP TABLE IF EXISTS `paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmethod` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Discriminator` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethod`
--

LOCK TABLES `paymentmethod` WRITE;
/*!40000 ALTER TABLE `paymentmethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premium`
--

DROP TABLE IF EXISTS `premium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premium` (
  `DailyGift` int(10) DEFAULT NULL,
  `MonthlyGift` int(10) DEFAULT NULL,
  `BirthdayGift` int(10) DEFAULT NULL,
  `SpecialOffer` int(10) DEFAULT NULL,
  `RequiredPoint` int(10) DEFAULT NULL,
  `TypeId2` int(10) NOT NULL,
  PRIMARY KEY (`TypeId2`),
  CONSTRAINT `FKPremium3271525` FOREIGN KEY (`TypeId2`) REFERENCES `type` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premium`
--

LOCK TABLES `premium` WRITE;
/*!40000 ALTER TABLE `premium` DISABLE KEYS */;
/*!40000 ALTER TABLE `premium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publisher` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Address` varchar(125) DEFAULT NULL,
  `License` int(10) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES (1,'Kimdong','Hanoi',1,'kimdong@gmail.com','123456');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regular`
--

DROP TABLE IF EXISTS `regular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regular` (
  `Id` int(10) NOT NULL,
  `DailyGift` int(10) DEFAULT NULL,
  `BirthdayGift` int(10) DEFAULT NULL,
  `RequiredPoint` int(10) DEFAULT NULL,
  `TypeId2` int(10) NOT NULL,
  PRIMARY KEY (`Id`,`TypeId2`),
  KEY `FKRegular2453263` (`TypeId2`),
  CONSTRAINT `FKRegular2453263` FOREIGN KEY (`TypeId2`) REFERENCES `type` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regular`
--

LOCK TABLES `regular` WRITE;
/*!40000 ALTER TABLE `regular` DISABLE KEYS */;
/*!40000 ALTER TABLE `regular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Rating` int(10) NOT NULL,
  `Book` int(10) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `BookId` int(10) NOT NULL,
  `customer` int(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKReview43923` (`BookId`),
  CONSTRAINT `FKReview43923` FOREIGN KEY (`BookId`) REFERENCES `book` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `StaffId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKSeller846497` (`StaffId`),
  CONSTRAINT `FKSeller846497` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipper`
--

DROP TABLE IF EXISTS `shipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipper` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Vehicle` varchar(255) DEFAULT NULL,
  `StaffId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKShipper454490` (`StaffId`),
  CONSTRAINT `FKShipper454490` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipper`
--

LOCK TABLES `shipper` WRITE;
/*!40000 ALTER TABLE `shipper` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippinginvoice`
--

DROP TABLE IF EXISTS `shippinginvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippinginvoice` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `ExpectedDeliveryTime` time DEFAULT NULL,
  `CreatedTime` time DEFAULT NULL,
  `Status` int(10) DEFAULT NULL,
  `BillId` int(10) NOT NULL,
  `ShipperId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKShippingIn790411` (`ShipperId`),
  CONSTRAINT `FKShippingIn790411` FOREIGN KEY (`ShipperId`) REFERENCES `shipper` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippinginvoice`
--

LOCK TABLES `shippinginvoice` WRITE;
/*!40000 ALTER TABLE `shippinginvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippinginvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingstatus`
--

DROP TABLE IF EXISTS `shippingstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippingstatus` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Status` varchar(255) DEFAULT NULL,
  `ShippingInvoiceId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKShippingSt809966` (`ShippingInvoiceId`),
  CONSTRAINT `FKShippingSt809966` FOREIGN KEY (`ShippingInvoiceId`) REFERENCES `shippinginvoice` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingstatus`
--

LOCK TABLES `shippingstatus` WRITE;
/*!40000 ALTER TABLE `shippingstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `shippingstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `AccountId` int(10) NOT NULL,
  `FullNameId` int(10) NOT NULL,
  `AddressId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKStaff288917` (`AddressId`),
  CONSTRAINT `FKStaff288917` FOREIGN KEY (`AddressId`) REFERENCES `address` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocker`
--

DROP TABLE IF EXISTS `stocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocker` (
  `Id` int(10) NOT NULL,
  `StaffId` int(10) NOT NULL,
  KEY `FKStocker755291` (`StaffId`),
  CONSTRAINT `FKStocker755291` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocker`
--

LOCK TABLES `stocker` WRITE;
/*!40000 ALTER TABLE `stocker` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `CashBack` float NOT NULL,
  `Discriminator` varchar(255) NOT NULL,
  `Person2Id2` int(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ward`
--

DROP TABLE IF EXISTS `ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ward` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `DistrictId` int(10) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FKWard816978` (`DistrictId`),
  CONSTRAINT `FKWard816978` FOREIGN KEY (`DistrictId`) REFERENCES `district` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ward`
--

LOCK TABLES `ward` WRITE;
/*!40000 ALTER TABLE `ward` DISABLE KEYS */;
INSERT INTO `ward` VALUES (1,'Dinh Cong',1);
/*!40000 ALTER TABLE `ward` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-18 11:17:26
