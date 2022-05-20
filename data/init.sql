/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.61 : Database - sysstu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sysstu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sysstu`;

/*Table structure for table `admin` */

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values 
(2,'admin','admin');

/*Table structure for table `stu` */

CREATE TABLE `stu` (
  `id` varchar(100) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `classno` varchar(100) DEFAULT NULL,
  `worktime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu` */

insert  into `stu`(`id`,`name`,`sex`,`classno`,`worktime`) values 
('1','张志','男','1002','2022-04-19'),
('2','何波','女','1111','2022-04-25');
