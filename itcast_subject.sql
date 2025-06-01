/*
Navicat MySQL Data Transfer

Source Server         : hadoop01
Source Server Version : 50730
Source Host           : hadoop01:3306
Source Database       : scrm

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-09-04 21:27:45
*/
use scrm_bi;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `itcast_subject`
-- ----------------------------
DROP TABLE IF EXISTS `itcast_subject`;
CREATE TABLE `itcast_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime NOT NULL COMMENT '创建时间',
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否被删除（禁用）',
  `name` varchar(32) COLLATE utf8_bin DEFAULT '' COMMENT '学科名称',
  `code` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `tenant` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of itcast_subject
-- ----------------------------
INSERT INTO `itcast_subject` VALUES ('1', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '在线学习', 'ONLINE', '1');
INSERT INTO `itcast_subject` VALUES ('2', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '机器人开发', 'ROBOT', '1');
INSERT INTO `itcast_subject` VALUES ('3', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '古诗', 'PHP', '0');
INSERT INTO `itcast_subject` VALUES ('4', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '语文', 'UIDESIGN', '1');
INSERT INTO `itcast_subject` VALUES ('5', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '历史', 'UIWEB', '0');
INSERT INTO `itcast_subject` VALUES ('6', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '英语', 'PYTHON', '0');
INSERT INTO `itcast_subject` VALUES ('7', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '数学', 'JAVAEE', '0');
INSERT INTO `itcast_subject` VALUES ('8', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '政治', 'CPP', '0');
INSERT INTO `itcast_subject` VALUES ('9', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '奥数', 'BIGDATA', '0');
INSERT INTO `itcast_subject` VALUES ('10', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '高考补习', 'FULLSTACK', '1');
INSERT INTO `itcast_subject` VALUES ('11', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '新媒体', 'NEWMEDIA', '0');
INSERT INTO `itcast_subject` VALUES ('12', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '电商运营', 'WEBSHOP', '0');
INSERT INTO `itcast_subject` VALUES ('13', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '视觉设计', 'VISUALDESIGN', '1');
INSERT INTO `itcast_subject` VALUES ('14', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '产品经理', 'PRODUCTMANAGER', '0');
INSERT INTO `itcast_subject` VALUES ('15', '2019-09-04 11:12:23', '2020-07-28 04:30:02', '', '化学', 'SOFTWARETEST', '0');
INSERT INTO `itcast_subject` VALUES ('16', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', 'Linux运维', 'DEVOPS', '0');
INSERT INTO `itcast_subject` VALUES ('17', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '物联网区块链', 'IOTBLOCKCHAIN', '1');
INSERT INTO `itcast_subject` VALUES ('18', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', 'Go区块链', 'GOBLOCKCHAIN', '1');
INSERT INTO `itcast_subject` VALUES ('19', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '微信小程序', 'WECHATAPPLETS', '1');
INSERT INTO `itcast_subject` VALUES ('20', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', '影视制作', 'VIDEOPRODECTION', '0');
INSERT INTO `itcast_subject` VALUES ('21', '2019-09-04 11:12:23', '2019-09-19 09:49:20', '', 'PMP认证', 'PMP', '0');
