-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema gfgc_gems
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ gfgc_gems;
USE gfgc_gems;

--
-- Table structure for table `gfgc_gems`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`name`) VALUES 
 ('Diamonds'),
 ('Gems'),
 ('Juwels');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL,
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`email`,`password`,`firstname`,`lastname`,`country`,`zip`,`state`,`address`,`question`,`answer`,`customerid`) VALUES 
 ('ravishkumar@gmail.com','dfgsdfgsdfg','fgsf','sfgs','sfgsdf','577777','sfgs','sfgsfd','sfdgdsf','dfsgdsf',1),
 ('ramesh@gmail.com','ramesh123','lokesh','kumar','india','577222','karnataka','shimoga','which is your best school','sports school',2),
 ('meghana@gmail.com','megha123','megha','mg','india','577201','karnataka','shimohs','where is air','everywhere',3),
 ('savi@gmail.com','savi1234','savi','k','india','577222','karnataka','shimoga','my color','black',4),
 ('ravi@gmail.com','Ravish12345','ravi','kumar','india','577222','karnataka','shimoga','favorite color','black',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`dealer`
--

DROP TABLE IF EXISTS `dealer`;
CREATE TABLE `dealer` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_gems`.`dealer`
--

/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` (`name`,`address`,`phone`,`password`,`status`) VALUES 
 ('ravish','shimoga','9988588555',NULL,'pending'),
 ('varun','shimoga','9965852228',NULL,'pending'),
 ('ram','shimoga','9993939939','ram123','Reject'),
 ('ravi','shimoga','8838838383','ravi123','Accept');
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `feeds` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gfgc_gems`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`feeds`) VALUES 
 ('ravish','feedabck'),
 ('ravish','nic shop');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`orderlist`
--

DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `productname` varchar(50) DEFAULT NULL,
  `productCast` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `totalAmount` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `cardHolderName` varchar(50) DEFAULT NULL,
  `cardtype` varchar(50) DEFAULT NULL,
  `cardNum` varchar(50) DEFAULT NULL,
  `cvv` varchar(50) DEFAULT NULL,
  `charity` varchar(50) DEFAULT NULL,
  `orderid` int(50) NOT NULL AUTO_INCREMENT,
  `storephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`orderlist`
--

/*!40000 ALTER TABLE `orderlist` DISABLE KEYS */;
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`,`storephone`) VALUES 
 ('hp','30000','1','30000.0','sfgsdfgdg','ravi','credit card','534534534534534','566','60.000003999999997',1,NULL),
 ('maruthi','500000','1','500000.0','shimoga','ragvasjgfjg','credit card','38573953758357385','343','1000.00006',2,NULL),
 ('maruthi','500000','1','500000.0','','','credit card','','','1000.00006',3,NULL),
 ('hp','30000','1','30000.0','','ravi','credit card','123456789012345','123','60.000004',4,NULL),
 ('samsung','36000','1','36000.0','','','credit card','','','3600.0',5,NULL),
 ('samsung','36000','1','36000.0','','ravi','credit card','12345678989988','667','3600.0',6,NULL),
 ('dell','29970','1','29970.0','','ravi','credit card','13993939393883','332','29.970001',7,NULL),
 ('dell','29970','1','29970.0','shimoga','ravvi','debit card','9473467364343','343','29.970001',8,'9999999999'),
 ('ktm','9990000','1','9990000.0','shimoga','ravi','credit card','4234234324232','323','9990.0',9,'1234567890'),
 ('ktm','9990000','1','9990000.0','shimoga','ravi','credit card','234567896786789','123','9990.0',10,'1234567890');
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`,`storephone`) VALUES 
 ('ear rings','997','2','1994.0','shimoga','vivek','credit card','12345678908989','123','5.982',11,'9590324417'),
 ('benz','9990000','1','9990000.0','shimoga','ravi','debit card','56745645343445','123','9990.0',12,'1234567890'),
 ('ktm','9990000','1','9990000.0','shimoga','ravi','debit card','123456789012345','433','9990.0',13,'1234567890'),
 ('samsung galaxy','9980','1','9980.0','','savi@gmail.com','credit card','125417225841','123','19.960001',14,'9999999999'),
 ('samsung galaxy','9980','1','9980.0','','savi@gmail.com','credit card','342423423424','233','19.960001',15,'9999999999'),
 ('nokia c2','12974','1','12974.0','shimoga','ramesh@gmail.com','debit card','123456789098','123','25.948002',16,'1234567890'),
 ('samsung','49950','1','49950.0','shimoga','ramesh@gmail.com','debit card','12345678909876','123','49.95',17,'null'),
 ('perls new','70000','1','70000.0','shimoga','ravi@gmail.com','credit card','74774741477','123','140.0',18,NULL);
INSERT INTO `orderlist` (`productname`,`productCast`,`quantity`,`totalAmount`,`address`,`cardHolderName`,`cardtype`,`cardNum`,`cvv`,`charity`,`orderid`,`storephone`) VALUES 
 ('perls new','70000','1','70000.0','shimoga','ravi@gmail.com','credit card','123456789876787','356','140.0',19,NULL);
/*!40000 ALTER TABLE `orderlist` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `category` varchar(50) DEFAULT NULL,
  `productname` varchar(50) DEFAULT NULL,
  `productprice` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `storephone` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`category`,`productname`,`productprice`,`quantity`,`image`,`description`,`discount`,`productid`,`storephone`,`gst`,`units`) VALUES 
 ('Gems','diamonds','60000','600','bg.jpg','nice diamonds','0.3',14,'9965658585',NULL,NULL),
 ('Diamonds','pers','70000','800','9.jpg','nice perls','0.3',15,'9965658585','null',NULL),
 ('Gems','perls new','70000','48','8.jpg','nice perls','0.2',16,'9965658585','4',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `productID` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`rating`
--

/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`productID`,`rating`) VALUES 
 (NULL,'3'),
 ('hp','3'),
 ('maruthi','4'),
 ('samsung','4'),
 ('dolls','4'),
 ('dolls','1'),
 ('ear rings','4'),
 ('','2'),
 ('','4');
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`shoprating`
--

DROP TABLE IF EXISTS `shoprating`;
CREATE TABLE `shoprating` (
  `shopname` varchar(50) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`shoprating`
--

/*!40000 ALTER TABLE `shoprating` DISABLE KEYS */;
INSERT INTO `shoprating` (`shopname`,`rate`) VALUES 
 ('harshni stores',3),
 ('ravish store',4),
 ('ravish store',4),
 ('ravish store',4),
 ('ravish store',4),
 ('harshni stores',3),
 ('harshni stores',3),
 ('harshni stores',3),
 ('vivek Stores',5),
 ('vivek Stores',5),
 ('harshni stores',4),
 ('harshni stores',5),
 ('harshni stores',5),
 ('vivek Stores',1),
 ('vivek Stores',1),
 ('harshni stores',5),
 ('harshni stores',5),
 ('abc',2),
 ('abc',2),
 ('abc',2),
 ('abc',2),
 ('abc',2),
 ('Bavani',4),
 ('Bavani',4);
/*!40000 ALTER TABLE `shoprating` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `locationname` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `phoneno` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `description` text,
  `image` varchar(50) DEFAULT NULL,
  `location` text,
  PRIMARY KEY (`locationname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`shops`
--

/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` (`locationname`,`address`,`category`,`phoneno`,`email`,`description`,`image`,`location`) VALUES 
 ('bheem','shimoga','Diamonds','9965858525','bheem@gmail.com','diamonds ','5.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3872.4885453895286!2d75.56910011431341!3d13.929491396905119!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbba8d85431d68b%3A0x90ccdef6e9750d66!2sBhima%20Jewellers%20-%20Shivamogga!5e0!3m2!1sen!2sin!4v1660734762125!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
 ('Ashok','shimoga','Juwels','9965888585','ashok@gmail.com','nic shop','aeroplane.jpg','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7745.175243090236!2d75.56980062236394!3d13.923579824571867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bbba8d8f3f384a5%3A0x750874e3d7ef9c50!2sGandhi%20Bazar%2C%20KR%20Puram%2C%20Shivamogga%2C%20Karnataka!5e0!3m2!1sen!2sin!4v1659917366531!5m2!1sen!2sin\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;


--
-- Table structure for table `gfgc_gems`.`stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `storename` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `storemobileno` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  PRIMARY KEY (`storeid`),
  UNIQUE KEY `storemobileno` (`storemobileno`),
  UNIQUE KEY `storename` (`storename`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gfgc_gems`.`stores`
--

/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` (`storeid`,`storename`,`address`,`storemobileno`,`password`,`email`,`status`) VALUES 
 (1,'harshni stores','shimoga','9999999999','harshini',NULL,'Reject'),
 (2,'ravish store','shimoga','1234567890','ravi',NULL,'Reject'),
 (3,'vivek Stores','vinobanagara','9590324417','vivek123',NULL,'pending'),
 (4,'abc','shimoga','2335435453','Abcd112345',NULL,'pending'),
 (5,'Bavani','shimoga','9965658585','Bhavani1236',NULL,'Accept');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
