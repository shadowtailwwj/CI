/*
Navicat MySQL Data Transfer

Source Server         : wj
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : menber_center

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-15 17:53:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for menber
-- ----------------------------
DROP TABLE IF EXISTS `menber`;
CREATE TABLE `menber` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `sex` int(2) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL,
  `edit_date` datetime NOT NULL,
  `login_date` datetime NOT NULL,
  `login_ip` int(10) NOT NULL,
  `last_ip` int(10) NOT NULL,
  `state` int(2) NOT NULL,
  `flag` int(2) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menber
-- ----------------------------
INSERT INTO `menber` VALUES ('1', '随便起个名字吧', '', '', '', '1', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', '0', '0', '0', '');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '支付方式',
  `state` int(2) NOT NULL DEFAULT '0',
  `preferential_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `total_amount` decimal(10,2) NOT NULL COMMENT '总金额',
  `amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `add_date` datetime NOT NULL,
  `firm_date` datetime NOT NULL,
  `finish_date` datetime NOT NULL,
  ` illustration` text NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', '0', '0', '0.00', '0.00', '123.30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '会员续费');
