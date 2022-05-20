/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.61 : Database - student_practice
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`student_practice` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `student_practice`;

/*Table structure for table `admin` */

CREATE TABLE `admin` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `username` varchar(40) DEFAULT NULL,
                         `password` varchar(100) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values
    (1,'admin','admin');

/*Table structure for table `category` */

CREATE TABLE `category` (
                            `id` int(11) NOT NULL AUTO_INCREMENT,
                            `name` varchar(40) DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values
                                         (1,'认识实习'),
                                         (3,'生产实习'),
                                         (4,'毕业实习');

/*Table structure for table `company` */

CREATE TABLE `company` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `name` varchar(40) DEFAULT NULL,
                           `address` varchar(100) DEFAULT NULL,
                           `total` int(11) DEFAULT NULL,
                           `category` int(11) DEFAULT NULL,
                           `stuids` varchar(1000) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`id`,`name`,`address`,`total`,`category`,`stuids`) values
                                                                              (2,'小米科技','北京昌平科技园',55,1,'1,7,'),
                                                                              (3,'花呗','杭州白马湖',333,4,NULL),
                                                                              (4,'华为','四川成都',132,3,'5,');

/*Table structure for table `project` */

CREATE TABLE `project` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `name` varchar(40) DEFAULT NULL,
                           `other` varchar(1000) DEFAULT NULL,
                           `company` int(11) DEFAULT NULL,
                           `stuids` varchar(1000) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `project` */

insert  into `project`(`id`,`name`,`other`,`company`,`stuids`) values
                                                                   (4,'智慧交通','智慧交通开发',2,NULL),
                                                                   (5,'hodoop开发','hodoop开发hodoop开发',2,'1,'),
                                                                   (6,'最强大脑C#测试','最强大脑C#测试-花呗专属测试',4,'5,'),
                                                                   (7,'C++算法实习','C++算法实习，学习leetcode',2,'7,');

/*Table structure for table `record` */

CREATE TABLE `record` (
                          `id` int(11) NOT NULL AUTO_INCREMENT,
                          `starttime` varchar(100) DEFAULT NULL,
                          `endtime` varchar(100) DEFAULT NULL,
                          `stuid` int(11) DEFAULT NULL,
                          `other` varchar(1000) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `record` */

insert  into `record`(`id`,`starttime`,`endtime`,`stuid`,`other`) values
    (1,'2022-04-07','2022-05-11',1,'从0开始开发实现一个web后端系统');

/*Table structure for table `student` */

CREATE TABLE `student` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `name` varchar(40) DEFAULT NULL,
                           `sex` varchar(20) DEFAULT NULL,
                           `stuclass` varchar(100) DEFAULT NULL,
                           `birthday` varchar(100) DEFAULT NULL,
                           `address` varchar(100) DEFAULT NULL,
                           `phone` varchar(20) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`sex`,`stuclass`,`birthday`,`address`,`phone`) values
                                                                                      (1,'杨青','男','计算机','2022-04-05','湖北武汉','1818117775'),
                                                                                      (5,'李明','男','计算机学院','2022-04-07','湖北武汉','18181818111');

/*Table structure for table `teacher` */

CREATE TABLE `teacher` (
                           `id` int(11) NOT NULL AUTO_INCREMENT,
                           `name` varchar(40) DEFAULT NULL,
                           `sex` varchar(20) DEFAULT NULL,
                           `age` int(11) DEFAULT NULL,
                           `idcard` varchar(100) DEFAULT NULL,
                           `teanum` varchar(100) DEFAULT NULL,
                           `phone` varchar(20) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`name`,`sex`,`age`,`idcard`,`teanum`,`phone`) values
                                                                              (1,'张三','男',55,'423423142343','12','18181177711'),
                                                                              (2,'李四','男',52,'423423142346','14','18181177715'),
                                                                              (4,'王丽菊','女',18,'41918188181818111112','234','19988181113'),
                                                                              (6,'李四','女',33,'4191818818181812','13','18181818159');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
