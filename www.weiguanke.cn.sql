# Host: localhost  (Version: 5.5.47)
# Date: 2023-02-03 17:29:31
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "flight"
#

DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fly_name` varchar(255) NOT NULL COMMENT '航班号',
  `type` varchar(255) NOT NULL COMMENT '机型',
  `takeoff_time` datetime NOT NULL COMMENT '起飞时间',
  `land_time` datetime NOT NULL COMMENT '降落时间',
  `start_place` varchar(255) NOT NULL COMMENT '出发地',
  `end_place` varchar(255) NOT NULL COMMENT '降落地',
  `economy_tickect` int(10) unsigned NOT NULL COMMENT '经济票数',
  `bussiness_tickect` int(10) unsigned NOT NULL COMMENT '商务票数',
  `price` decimal(18,2) NOT NULL COMMENT '经机票价格',
  `discount` int(11) NOT NULL DEFAULT '0' COMMENT '折扣',
  PRIMARY KEY (`id`,`fly_name`) USING BTREE,
  KEY `fly_name` (`fly_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "flight"
#

INSERT INTO `flight` VALUES (2,'AA123','波音777','2020-05-27 16:47:10','2020-05-29 16:47:14','北京','上海',50,49,2000.00,0),(5,'AS432','波音666','2020-06-16 23:01:00','2020-06-18 00:59:00','济南','华盛顿',99,20,10000.00,5),(6,'AE563','波音543','2020-06-19 22:56:00','2020-06-20 00:04:00','上海','北京',200,20,500.00,0),(7,'AB853','波音753','2020-06-19 23:58:00','2020-06-20 23:00:00','新疆','海南',150,10,900.00,8),(9,'AS432','affect','2020-06-06 23:00:00','2020-06-18 03:04:00','fas','asdf',0,20,32.00,0),(10,'AA125','波音888','2023-02-03 17:12:00','2023-02-10 17:12:00','北京','火星',4,5,888.00,95),(11,'AB223','波音222','2023-02-03 17:21:00','2023-02-09 17:21:00','北京','外太空',11,12,999.00,88);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `telnumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0为用户，1为管理员',
  PRIMARY KEY (`id`,`idcard`) USING BTREE,
  KEY `idcard` (`idcard`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'371002200003240492','阿达','123','123','8948374853@qq.com',1),(2,'371002199505249658','东方','1','1','9432876443@163.com',0),(3,'371002199906295431','黄金','123456','123456','2847320883@qq.com',0);

#
# Structure for table "order_tickect"
#

DROP TABLE IF EXISTS `order_tickect`;
CREATE TABLE `order_tickect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `fly_name` varchar(255) NOT NULL COMMENT '航班号',
  `type` varchar(255) NOT NULL,
  `takeoff_time` datetime NOT NULL,
  `land_time` datetime NOT NULL,
  `start_place` varchar(255) NOT NULL,
  `end_place` varchar(255) NOT NULL,
  `tickect_type` varchar(255) NOT NULL COMMENT '购票类型',
  `price` decimal(18,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `idcard` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '未付款' COMMENT '付款状态',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `1` (`fly_name`) USING BTREE,
  KEY `2` (`idcard`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`fly_name`) REFERENCES `flight` (`fly_name`) ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`idcard`) REFERENCES `user` (`idcard`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

#
# Data for table "order_tickect"
#

INSERT INTO `order_tickect` VALUES (33,'AA123','波音777','2020-05-27 16:47:10','2020-05-29 16:47:14','北京','上海','商务舱',3000.00,'东方','371002199505249658','已付款'),(34,'AA125','波音888','2023-02-03 17:12:00','2023-02-10 17:12:00','北京','火星','经济舱',44.40,'东方','371002199505249658','已付款'),(35,'AB223','波音222','2023-02-03 17:21:00','2023-02-09 17:21:00','北京','外太空','经济舱',119.88,'东方','371002199505249658','已付款');
