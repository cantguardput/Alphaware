/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - alphaware
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alphaware` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `alphaware`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`adminid`,`username`,`password`) values 
(1,'admin','admin');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`contact_id`,`email`,`message`) values 
(1,'',''),
(2,'',''),
(3,'',''),
(4,'',''),
(5,'',''),
(6,'',''),
(7,'',''),
(8,'',''),
(9,'',''),
(10,'',''),
(11,'',''),
(12,'',''),
(13,'',''),
(14,'',''),
(15,'',''),
(16,'',''),
(17,'',''),
(18,'r@gmail.com',''),
(19,'',''),
(20,'',''),
(21,'',''),
(22,'',''),
(23,'',''),
(24,'',''),
(25,'',''),
(26,'',''),
(27,'',''),
(28,'',''),
(29,'',''),
(30,'',''),
(31,'',''),
(32,'',''),
(33,'',''),
(34,'',''),
(35,'',''),
(36,'',''),
(37,'',''),
(38,'',''),
(39,'',''),
(40,'',''),
(41,'',''),
(42,'',''),
(43,'',''),
(44,'',''),
(45,'',''),
(46,'',''),
(47,'',''),
(48,'',''),
(49,'',''),
(50,'',''),
(51,'',''),
(52,'',''),
(53,'',''),
(54,'',''),
(55,'',''),
(56,'','');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`customerid`,`firstname`,`lastname`,`address`,`mobile`,`email`,`password`) values 
(1,'Rafi','Antaresa','Perum Gsp Km 14','08123456780','r@gmail.com','1234');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(500) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`product_id`,`product_name`,`product_price`,`product_image`,`category`) values 
(3,'Cakalang','15000/kg','cakalang.jpg','ikanlaut'),
(4,'Kakap','12000/kg','kakap.png','ikanlaut'),
(6,'Salmon','50000/kg','salmon.png','ikanlaut'),
(7,'Tenggiri','10000/kg','tenggiri.png','ikanlaut'),
(8,'Sarden','6000/kg','sarden.png','ikanlaut'),
(9,'Teri','5000/kg','teri.png','ikanlaut'),
(10,'Tongkol','20000/kg','tongkol.png','ikanlaut'),
(11,'COD','18000/kg','cod.png','ikanlaut');

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`stock_id`,`product_id`,`qty`) values 
(1,71339,20),
(2,82631,30),
(3,3,20),
(4,4,8),
(5,6,20),
(6,7,15),
(7,8,20),
(8,9,20),
(9,10,7),
(10,11,25),
(11,13,20),
(12,14,20),
(13,15,20),
(14,16,20),
(15,17,20),
(16,19,20),
(17,20,20),
(18,21,20),
(19,26,13),
(20,28,21),
(21,29,18),
(22,30,20),
(23,31,22),
(26,431860,39),
(27,21561,30),
(28,358159,30),
(29,157,25),
(30,51292,20),
(31,961461,20),
(32,4795,0),
(33,49,10);

/*Table structure for table `transaction` */

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_stat` varchar(100) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transaction` */

/*Table structure for table `transaction_detail` */

DROP TABLE IF EXISTS `transaction_detail`;

CREATE TABLE `transaction_detail` (
  `transacton_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  PRIMARY KEY (`transacton_detail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `transaction_detail` */

insert  into `transaction_detail`(`transacton_detail_id`,`product_id`,`order_qty`,`transaction_id`) values 
(1,28,2,36),
(2,4,1,48),
(3,11,1,48),
(4,10,2,6),
(5,10,3,668426);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
