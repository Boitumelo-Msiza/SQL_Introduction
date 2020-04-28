/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.11-MariaDB : Database - umuzi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`umuzi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `umuzi`;

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varbinary(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `customers` */

insert  into `customers`(`CustomerID`,`FirstName`,`LastName`,`Gender`,`Address`,`Phone`,`Email`,`City`,`Country`) values 
(1,'Lerato','Mabitso','Male','284 chaucer st','84789657','john@gmail.com','Johannesburg','South Africa'),
(3,'Leon','Glen','Male','81 Everton Rd,Gillits','820832830','Leon@gmail.com','Durban','South Africa'),
(4,'Charl','Muller','Male','290A Dorset Ecke','+44856872553','Charl.muller@yahoo.com','Berlin','Germany'),
(5,'Juliua','Stein','Female','2 Wernerring','+448672445058','Js234@yahoo.com','Frankfurt','Germany');

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `JobTitle` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `employees` */

insert  into `employees`(`EmployeeID`,`FirstName`,`LastName`,`Email`,`JobTitle`) values 
(1,'Kani','Matthew','mat@gmail.com','Manager'),
(2,'Lesly','Cronje','LesCgmail.com','Clerk'),
(3,'Gideon','Maduku','m@gmail.com','Accountant');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) DEFAULT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `FulfilledByEmployeeID` int(11) DEFAULT NULL,
  `DateRequired` datetime DEFAULT NULL,
  `DateShipped` datetime DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `orders` */

insert  into `orders`(`OrderID`,`ProductID`,`PaymentID`,`FulfilledByEmployeeID`,`DateRequired`,`DateShipped`,`Status`) values 
(1,1,1,2,'2018-09-05 13:58:58','0000-00-00 00:00:00','Not shipped'),
(2,1,2,2,'2018-09-04 11:00:51','2018-09-03 14:01:41','Shipped'),
(3,3,3,3,'2018-09-06 14:03:22','0000-00-00 00:00:00','Not shipped');

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentID` int(11) DEFAULT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `Amount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payments` */

insert  into `payments`(`CustomerID`,`PaymentID`,`PaymentDate`,`Amount`) values 
(1,1,'2018-09-01 14:34:31',151),
(4,3,'2018-09-03 14:40:28',151),
(5,2,'2018-09-03 14:37:26',701);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(200) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `BuyPrice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`ProductID`,`ProductName`,`Description`,`BuyPrice`) values 
(1,'Harley Davidson Chopper','This replica features working kickstand, front suspension, gear-shift lever',151),
(2,'Classic Car','Turnable front wheels, steering function',551),
(3,'Sports car','Turnable front wheels, steering function',701);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
