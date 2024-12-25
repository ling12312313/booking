/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : crm

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 09/07/2021 14:13:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flight
-- ----------------------------
DROP TABLE IF EXISTS `flight`;
CREATE TABLE `flight`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fly_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '航班号',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机型',
  `takeoff_time` datetime NOT NULL COMMENT '起飞时间',
  `land_time` datetime NOT NULL COMMENT '降落时间',
  `start_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出发地',
  `end_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '降落地',
  `economy_tickect` int UNSIGNED NOT NULL COMMENT '经济票数',
  `bussiness_tickect` int UNSIGNED NOT NULL COMMENT '商务票数',
  `price` decimal(18, 2) NOT NULL COMMENT '经机票价格',
  `discount` int NOT NULL DEFAULT 0 COMMENT '折扣',
  PRIMARY KEY (`id`, `fly_name`) USING BTREE,
  INDEX `fly_name`(`fly_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flight
-- ----------------------------
INSERT INTO `flight` VALUES (1, 'AA578', '波音456', '2019-01-18 10:05:00', '2019-01-18 10:10:00', '北京', '纽约', 48, 49, 5000.00, 11);
INSERT INTO `flight` VALUES (2, 'AA123', '波音777', '2020-05-27 16:47:10', '2020-05-29 16:47:14', '北京', '上海', 50, 49, 2000.00, 0);
INSERT INTO `flight` VALUES (5, 'AS432', '波音666', '2020-06-16 23:01:00', '2020-06-18 00:59:00', '济南', '华盛顿', 99, 20, 10000.00, 5);
INSERT INTO `flight` VALUES (6, 'AE563', '波音543', '2020-06-19 22:56:00', '2020-06-20 00:04:00', '上海', '北京', 200, 20, 500.00, 0);
INSERT INTO `flight` VALUES (7, 'AB853', '波音753', '2020-06-19 23:58:00', '2020-06-20 23:00:00', '新疆', '海南', 150, 10, 900.00, 8);
INSERT INTO `flight` VALUES (8, 'AW231', '波音901', '2020-06-20 19:03:00', '2020-06-21 01:58:00', '武汉', '北京', 100, 19, 1000.00, 0);
INSERT INTO `flight` VALUES (9, 'AS432', 'affect', '2020-06-06 23:00:00', '2020-06-18 03:04:00', 'fas', 'asdf', 0, 20, 32.00, 0);

-- ----------------------------
-- Table structure for order_tickect
-- ----------------------------
DROP TABLE IF EXISTS `order_tickect`;
CREATE TABLE `order_tickect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `fly_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '航班号',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `takeoff_time` datetime NOT NULL,
  `land_time` datetime NOT NULL,
  `start_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `end_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tickect_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购票类型',
  `price` decimal(18, 2) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未付款' COMMENT '付款状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `1`(`fly_name`) USING BTREE,
  INDEX `2`(`idcard`) USING BTREE,
  CONSTRAINT `1` FOREIGN KEY (`fly_name`) REFERENCES `flight` (`fly_name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `2` FOREIGN KEY (`idcard`) REFERENCES `user` (`idcard`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_tickect
-- ----------------------------
INSERT INTO `order_tickect` VALUES (2, 'AA578', '波音456', '2019-01-18 10:05:00', '2019-01-18 10:10:00', '北京', '纽约', '经济舱', 4450.00, '东方', '371002199505249658', '已付款');
INSERT INTO `order_tickect` VALUES (3, 'AW231', '波音901', '2020-06-20 19:03:00', '2020-06-21 01:58:00', '武汉', '北京', '商务舱', 2000.00, '东方', '371002199505249658', '已付款');
INSERT INTO `order_tickect` VALUES (4, 'AA578', '波音456', '2019-01-18 10:05:00', '2019-01-18 10:10:00', '北京', '纽约', '商务舱', 5340.00, '东方', '371002199505249658', '已付款');
INSERT INTO `order_tickect` VALUES (5, 'AS432', '波音666', '2020-06-16 23:01:00', '2020-06-18 00:59:00', '济南', '华盛顿', '经济舱', 9500.00, '黄金', '371002199906295431', '已付款');
INSERT INTO `order_tickect` VALUES (33, 'AA123', '波音777', '2020-05-27 16:47:10', '2020-05-29 16:47:14', '北京', '上海', '商务舱', 3000.00, '东方', '371002199505249658', '已付款');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `telnumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT 0 COMMENT '0为用户，1为管理员',
  PRIMARY KEY (`id`, `idcard`) USING BTREE,
  INDEX `idcard`(`idcard`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '371002200003240492', '阿达', '123', '123', '8948374853@qq.com', 1);
INSERT INTO `user` VALUES (2, '371002199505249658', '东方', '1', '1', '9432876443@163.com', 0);
INSERT INTO `user` VALUES (3, '371002199906295431', '黄金', '123456', '123456', '2847320883@qq.com', 0);

-- ----------------------------
-- View structure for 概览
-- ----------------------------
DROP VIEW IF EXISTS `概览`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `概览` AS select `order_tickect`.`fly_name` AS `fly_name`,`order_tickect`.`takeoff_time` AS `takeoff_time`,`order_tickect`.`land_time` AS `land_time`,`order_tickect`.`start_place` AS `start_place`,`order_tickect`.`end_place` AS `end_place`,`order_tickect`.`tickect_type` AS `tickect_type`,`order_tickect`.`price` AS `price`,`order_tickect`.`name` AS `name`,`order_tickect`.`id` AS `id` from `order_tickect`;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('AA578', '2019-01-18 10:05:00', '2019-01-18 10:10:00', '北京', '纽约', '经济舱', 4450.00, '东方', 2);
INSERT INTO `user` VALUES ('AW231', '2020-06-20 19:03:00', '2020-06-21 01:58:00', '武汉', '北京', '商务舱', 2000.00, '东方', 3);
INSERT INTO `user` VALUES ('AA578', '2019-01-18 10:05:00', '2019-01-18 10:10:00', '北京', '纽约', '商务舱', 5340.00, '东方', 4);
INSERT INTO `user` VALUES ('AS432', '2020-06-16 23:01:00', '2020-06-18 00:59:00', '济南', '华盛顿', '经济舱', 9500.00, '黄金', 5);
INSERT INTO `user` VALUES ('AA123', '2020-05-27 16:47:10', '2020-05-29 16:47:14', '北京', '上海', '商务舱', 3000.00, '东方', 33);

-- ----------------------------
-- Procedure structure for 最终价
-- ----------------------------
DROP PROCEDURE IF EXISTS `最终价`;
delimiter ;;
CREATE PROCEDURE `最终价`(IN `na` decimal,OUT `ee` decimal)
BEGIN
	
	DECLARE ee DECIMAL(8,2); 
  select price,discount from  flight where fly_name=na;
	set @ee = price*(1-discount/100) ;


END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
