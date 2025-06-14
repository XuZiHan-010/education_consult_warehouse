/*
Navicat MySQL Data Transfer

Source Server         : hadoop01
Source Server Version : 50730
Source Host           : hadoop01:3306
Source Database       : scrm

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-09-04 21:27:39
*/
use scrm_bi;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `scrm_department`
-- ----------------------------
DROP TABLE IF EXISTS `scrm_department`;
CREATE TABLE `scrm_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父部门id',
  `create_date_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '删除标志',
  `id_path` varchar(1000) COLLATE utf8_bin DEFAULT NULL COMMENT '编码全路径',
  `tdepart_code` int(11) DEFAULT NULL COMMENT '直属部门',
  `creator` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '创建者',
  `depart_level` int(4) DEFAULT NULL COMMENT '部门层级',
  `depart_sign` int(4) DEFAULT NULL COMMENT '部门标志，暂时默认1',
  `depart_line` int(11) DEFAULT NULL COMMENT '业务线，存储业务线编码',
  `depart_sort` int(5) DEFAULT NULL COMMENT '排序字段',
  `disable_flag` int(1) DEFAULT NULL COMMENT '禁用标志',
  `tenant` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of scrm_department
-- ----------------------------
INSERT INTO `scrm_department` VALUES ('1', 'scrm', '1', '2019-07-14 22:56:23', '2019-09-26 21:36:24', '', '1', '1', 'admin', '0', '1', '1', '0', '1', '0');
INSERT INTO `scrm_department` VALUES ('2', '总部咨询中心', '1', '2019-09-18 21:20:44', '2019-09-24 14:53:59', '', '1^2', '2', '71', '1', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('3', '未分配组成员', '2', '2019-09-18 21:20:44', '2019-09-20 15:32:33', '', '1^2^3', '2', '71', '2', '1', '2', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('4', '总经办', '1', '2019-09-18 21:20:56', '2019-09-18 21:20:56', '', '1^4', '4', '71', '1', '1', '4', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('5', '未分配组成员', '4', '2019-09-18 21:20:56', '2019-09-20 15:42:14', '', '1^4^5', '4', '71', '2', '1', '4', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('6', '学工就业部', '1', '2019-09-18 21:21:02', '2019-09-18 21:21:02', '', '1^6', '6', '71', '1', '1', '6', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('7', '未分配组成员', '6', '2019-09-18 21:21:02', '2019-09-20 15:42:14', '', '1^6^7', '6', '71', '2', '1', '6', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('8', '网络营销部', '1', '2019-09-18 21:21:09', '2019-09-18 21:21:09', '', '1^8', '8', '71', '1', '1', '8', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('9', '未分配组成员', '8', '2019-09-18 21:21:09', '2019-09-20 15:42:14', '', '1^8^9', '8', '71', '2', '1', '8', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('10', '市场部', '1', '2019-09-18 21:21:39', '2019-09-18 21:21:39', '', '1^10', '10', '71', '1', '1', '10', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('11', '未分配组成员', '10', '2019-09-18 21:21:39', '2019-09-20 15:42:14', '', '1^10^11', '10', '71', '2', '1', '10', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('12', '财务部', '1', '2019-09-18 21:21:59', '2019-09-18 21:21:59', '', '1^12', '12', '71', '1', '1', '12', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('13', '未分配组成员', '12', '2019-09-18 21:21:59', '2019-09-20 15:42:14', '', '1^12^13', '12', '71', '2', '1', '12', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('14', '行政部', '1', '2019-09-18 21:22:18', '2019-09-18 21:22:18', '', '1^14', '14', '71', '1', '1', '14', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('15', '未分配组成员', '14', '2019-09-18 21:22:18', '2019-09-20 15:42:14', '', '1^14^15', '14', '71', '2', '1', '14', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('16', '人事部', '1', '2019-09-18 21:22:25', '2019-09-18 21:22:25', '', '1^16', '16', '71', '1', '1', '16', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('17', '未分配组成员', '16', '2019-09-18 21:22:26', '2019-09-20 15:42:14', '', '1^16^17', '16', '71', '2', '1', '16', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('18', '院校产品部', '1', '2019-09-18 21:22:32', '2019-09-18 21:22:32', '', '1^18', '18', '71', '1', '1', '18', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('19', '未分配组成员', '18', '2019-09-18 21:22:32', '2019-09-20 15:42:14', '', '1^18^19', '18', '71', '2', '1', '18', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('20', 'Java教研部', '1', '2019-09-18 21:22:41', '2019-09-18 21:22:41', '', '1^20', '20', '71', '1', '1', '20', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('21', '未分配组成员', '20', '2019-09-18 21:22:41', '2019-09-20 15:42:14', '', '1^20^21', '20', '71', '2', '1', '20', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('22', '.Net教研部', '1', '2019-09-18 21:22:47', '2019-09-18 21:22:47', '', '1^22', '22', '71', '1', '1', '22', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('23', '未分配组成员', '22', '2019-09-18 21:22:47', '2019-09-20 15:42:14', '', '1^22^23', '22', '71', '2', '1', '22', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('24', 'PHP教研部', '1', '2019-09-18 21:22:55', '2019-09-18 21:22:55', '', '1^24', '24', '71', '1', '1', '24', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('25', '未分配组成员', '24', '2019-09-18 21:22:55', '2019-09-20 15:42:14', '', '1^24^25', '24', '71', '2', '1', '24', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('26', 'UI设计教研部', '1', '2019-09-18 21:23:03', '2019-09-18 21:23:03', '', '1^26', '26', '71', '1', '1', '26', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('27', '未分配组成员', '26', '2019-09-18 21:23:03', '2019-09-20 15:42:14', '', '1^26^27', '26', '71', '2', '1', '26', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('28', 'iOS教研部', '1', '2019-09-18 21:23:13', '2019-09-18 21:23:13', '', '1^28', '28', '71', '1', '1', '28', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('29', '未分配组成员', '28', '2019-09-18 21:23:13', '2019-09-20 15:42:14', '', '1^28^29', '28', '71', '2', '1', '28', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('30', 'C/C++教研部', '1', '2019-09-18 21:23:19', '2019-09-18 21:23:19', '', '1^30', '30', '71', '1', '1', '30', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('31', '未分配组成员', '30', '2019-09-18 21:23:19', '2019-09-20 15:42:14', '', '1^30^31', '30', '71', '2', '1', '30', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('32', '就业服务部', '1', '2019-09-18 21:23:32', '2019-09-18 21:23:32', '', '1^32', '32', '71', '1', '1', '32', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('33', '未分配组成员', '32', '2019-09-18 21:23:32', '2019-09-20 15:42:14', '', '1^32^33', '32', '71', '2', '1', '32', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('34', '院校合作部', '1', '2019-09-18 21:23:42', '2019-09-18 21:23:42', '', '1^34', '34', '71', '1', '1', '34', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('35', '未分配组成员', '34', '2019-09-18 21:23:42', '2019-09-20 15:42:14', '', '1^34^35', '34', '71', '2', '1', '34', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('36', '企管部', '1', '2019-09-18 21:23:51', '2019-09-18 21:23:51', '', '1^36', '36', '71', '1', '1', '36', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('37', '未分配组成员', '36', '2019-09-18 21:23:51', '2019-09-20 15:42:14', '', '1^36^37', '36', '71', '2', '1', '36', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('38', '双元产品部', '1', '2019-09-18 21:24:06', '2019-09-18 21:24:06', '', '1^38', '38', '71', '1', '1', '38', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('39', '未分配组成员', '38', '2019-09-18 21:24:07', '2019-09-20 15:42:14', '', '1^38^39', '38', '71', '2', '1', '38', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('40', '学工部-软件园分部', '1', '2019-09-18 21:24:14', '2019-09-18 21:24:14', '', '1^40', '40', '71', '1', '1', '40', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('41', '未分配组成员', '40', '2019-09-18 21:24:14', '2019-09-20 15:42:14', '', '1^40^41', '40', '71', '2', '1', '40', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('42', '学习服务部', '1', '2019-09-18 21:24:24', '2019-09-18 21:24:24', '', '1^42', '42', '71', '1', '1', '42', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('43', '未分配组成员', '42', '2019-09-18 21:24:24', '2019-09-20 15:42:14', '', '1^42^43', '42', '71', '2', '1', '42', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('44', '产品体验与运营部', '1', '2019-09-18 21:24:32', '2019-09-18 21:24:32', '', '1^44', '44', '71', '1', '1', '44', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('45', '未分配组成员', '44', '2019-09-18 21:24:32', '2019-09-20 15:42:14', '', '1^44^45', '44', '71', '2', '1', '44', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('46', '电子商务教研部', '1', '2019-09-18 21:24:39', '2019-09-18 21:24:39', '', '1^46', '46', '71', '1', '1', '46', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('47', '未分配组成员', '46', '2019-09-18 21:24:39', '2019-09-20 15:42:14', '', '1^46^47', '46', '71', '2', '1', '46', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('48', '前端与移动教研部', '1', '2019-09-18 21:24:46', '2019-09-18 21:24:46', '', '1^48', '48', '71', '1', '1', '48', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('49', '未分配组成员', '48', '2019-09-18 21:24:46', '2019-09-20 15:42:14', '', '1^48^49', '48', '71', '2', '1', '48', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('50', '考试与接待服务部', '1', '2019-09-18 21:24:54', '2019-09-18 21:24:54', '', '1^50', '50', '71', '1', '1', '50', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('51', '未分配组成员', '50', '2019-09-18 21:24:54', '2019-09-20 15:42:14', '', '1^50^51', '50', '71', '2', '1', '50', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('52', '运营办公室', '1', '2019-09-18 21:25:01', '2019-09-18 21:25:01', '', '1^52', '52', '71', '1', '1', '52', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('53', '未分配组成员', '52', '2019-09-18 21:25:01', '2019-09-20 15:42:14', '', '1^52^53', '52', '71', '2', '1', '52', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('54', '博学谷事业部', '1', '2019-09-18 21:25:16', '2019-10-31 14:42:18', '', '1^54', '54', '71', '1', '1', '54', '0', '0', '2');
INSERT INTO `scrm_department` VALUES ('55', '未分配组成员', '54', '2019-09-18 21:25:16', '2019-10-31 14:42:23', '', '1^54^55', '54', '71', '2', '1', '54', '0', '0', '2');
INSERT INTO `scrm_department` VALUES ('56', '教学办公室', '1', '2019-09-18 21:25:23', '2019-09-18 21:25:23', '', '1^56', '56', '71', '1', '1', '56', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('57', '未分配组成员', '56', '2019-09-18 21:25:23', '2019-09-20 15:42:14', '', '1^56^57', '56', '71', '2', '1', '56', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('58', '学工部', '1', '2019-09-18 21:25:27', '2019-09-18 21:25:27', '', '1^58', '58', '71', '1', '1', '58', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('59', '未分配组成员', '58', '2019-09-18 21:25:27', '2019-09-20 15:42:14', '', '1^58^59', '58', '71', '2', '1', '58', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('60', '院校业务办公室', '1', '2019-09-18 21:25:33', '2019-09-18 21:25:33', '', '1^60', '60', '71', '1', '1', '60', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('61', '未分配组成员', '60', '2019-09-18 21:25:33', '2019-09-20 15:42:14', '', '1^60^61', '60', '71', '2', '1', '60', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('62', '质量质量监控中心', '1', '2019-09-18 21:25:42', '2019-09-18 21:25:42', '', '1^62', '62', '71', '1', '1', '62', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('63', '未分配组成员', '62', '2019-09-18 21:25:42', '2019-09-20 15:42:14', '', '1^62^63', '62', '71', '2', '1', '62', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('64', 'Android学院', '1', '2019-09-18 21:25:51', '2019-09-18 21:25:51', '', '1^64', '64', '71', '1', '1', '64', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('65', '未分配组成员', '64', '2019-09-18 21:25:51', '2019-09-20 15:42:14', '', '1^64^65', '64', '71', '2', '1', '64', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('66', '电子商务学院', '1', '2019-09-18 21:25:57', '2019-09-18 21:25:57', '', '1^66', '66', '71', '1', '1', '66', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('67', '未分配组成员', '66', '2019-09-18 21:25:57', '2019-09-20 15:42:14', '', '1^66^67', '66', '71', '2', '1', '66', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('68', '研究院', '1', '2019-09-18 21:26:04', '2019-09-18 21:26:04', '', '1^68', '68', '71', '1', '1', '68', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('69', '未分配组成员', '68', '2019-09-18 21:26:04', '2019-09-20 15:42:14', '', '1^68^69', '68', '71', '2', '1', '68', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('70', '企业合作部', '1', '2019-09-18 21:26:15', '2019-09-18 21:26:15', '', '1^70', '70', '71', '1', '1', '70', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('71', '未分配组成员', '70', '2019-09-18 21:26:15', '2019-09-20 15:42:14', '', '1^70^71', '70', '71', '2', '1', '70', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('72', '武汉咨询中心', '1', '2019-09-18 21:26:24', '2019-09-18 21:26:24', '', '1^72', '72', '71', '1', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('73', '未分配组成员', '72', '2019-09-18 21:26:24', '2019-09-20 15:42:14', '', '1^72^73', '72', '71', '2', '1', '72', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('74', '接待服务部', '1', '2019-09-18 21:26:29', '2019-09-18 21:26:29', '', '1^74', '74', '71', '1', '1', '74', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('75', '未分配组成员', '74', '2019-09-18 21:26:29', '2019-09-20 15:42:14', '', '1^74^75', '74', '71', '2', '1', '74', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('76', '传智汇', '1', '2019-09-18 21:26:34', '2019-09-18 21:26:34', '', '1^76', '76', '71', '1', '1', '76', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('77', '未分配组成员', '76', '2019-09-18 21:26:34', '2019-09-20 15:42:14', '', '1^76^77', '76', '71', '2', '1', '76', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('78', '信息中心', '1', '2019-09-18 21:26:39', '2019-09-18 21:26:39', '', '1^78', '78', '71', '1', '1', '78', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('79', '未分配组成员', '78', '2019-09-18 21:26:39', '2019-09-20 15:42:14', '', '1^78^79', '78', '71', '2', '1', '78', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('80', '大数据教研部', '1', '2019-09-18 21:26:45', '2019-09-18 21:26:45', '', '1^80', '80', '71', '1', '1', '80', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('81', '未分配组成员', '80', '2019-09-18 21:26:45', '2019-09-20 15:42:14', '', '1^80^81', '80', '71', '2', '1', '80', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('82', '南京咨询中心', '1', '2019-09-18 21:26:51', '2019-09-18 21:26:51', '', '1^82', '82', '71', '1', '1', '82', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('83', '未分配组成员', '82', '2019-09-18 21:26:51', '2019-09-20 15:42:14', '', '1^82^83', '82', '71', '2', '1', '82', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('84', '产品经理教研部', '1', '2019-11-05 04:52:02', '2019-11-05 04:53:46', '', '1^84', '84', '71', '1', '1', '84', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('85', '未分配组成员', '84', '2019-11-05 04:53:12', '2019-11-05 04:53:44', '', '1^84^85', '84', '71', '2', '1', '84', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('86', '软件测试教研部', '1', '2019-11-05 04:54:18', '2019-11-05 04:54:41', '', '1^86', '86', '71', '1', '1', '86', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('87', '未分配组成员', '86', '2019-11-05 04:55:13', '2019-11-05 04:55:47', '', '1^86^87', '86', '71', '2', '1', '86', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('88', 'Python教研部', '1', '2019-11-05 04:56:20', '2019-11-05 04:56:42', '', '1^88', '88', '71', '1', '1', '88', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('89', '未分配组成员', '88', '2019-11-05 04:56:58', '2019-11-05 04:57:23', '', '1^88^89', '88', '71', '2', '1', '88', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('90', 'Go语言与区块链教研部', '1', '2019-11-05 04:57:53', '2019-11-05 04:58:36', '', '1^90', '90', '71', '1', '1', '90', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('91', '未分配组成员', '90', '2019-11-05 04:58:51', '2019-11-05 04:59:09', '', '1^90^91', '90', '71', '2', '1', '90', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('92', '新媒体运营教研部', '1', '2019-11-05 04:59:46', '2019-11-05 04:59:59', '', '1^92', '92', '71', '1', '1', '92', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('93', '未分配组成员', '92', '2019-11-05 05:00:31', '2019-11-05 05:00:39', '', '1^92^93', '92', '71', '2', '1', '92', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('94', 'Linux云计算+运维开发教研部', '1', '2019-11-05 05:00:58', '2019-11-05 05:01:20', '', '1^94', '94', '71', '1', '1', '94', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('95', '未分配组成员', '94', '2019-11-05 05:01:35', '2019-11-05 05:01:53', '', '1^94^95', '94', '71', '2', '1', '94', '1', '0', '1');
INSERT INTO `scrm_department` VALUES ('96', '院校事业部销售部', '2', '2019-11-07 11:50:28', '2019-11-07 11:50:28', '', '1^2^96', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('97', '电销组', '96', '2019-11-07 11:51:07', '2019-11-07 11:51:07', '', '1^2^96^97', '2', '3779', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('98', '网咨部', '2', '2019-11-07 12:07:04', '2019-11-07 12:07:04', '', '1^2^98', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('99', '网咨一组', '98', '2019-11-07 12:13:07', '2019-11-07 12:17:57', '', '1^2^98^99', '2', '3782', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('100', '网咨二组', '98', '2019-11-07 12:18:37', '2019-11-07 12:18:37', '', '1^2^98^100', '2', '3782', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('101', '网咨三组', '98', '2019-11-07 12:18:47', '2019-11-07 12:18:47', '', '1^2^98^101', '2', '3782', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('111', '咨询一部', '2', '2019-11-07 20:57:24', '2019-11-07 20:57:24', '', '1^2^111', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('112', '恒心队', '111', '2019-11-07 21:32:17', '2019-11-07 21:32:17', '', '1^2^111^112', '2', '3779', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('114', '咨询二部', '2', '2019-11-07 21:53:33', '2019-11-07 21:53:33', '', '1^2^114', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('115', '咨询五部', '2', '2019-11-07 21:54:01', '2019-11-07 21:54:01', '', '1^2^115', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('117', '月之阳', '111', '2019-11-07 21:58:01', '2019-12-03 10:26:25', '', '1^2^111^117', '2', '3779', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('118', '玫瑰利剑', '111', '2019-11-07 21:58:13', '2019-11-07 21:58:13', '', '1^2^111^118', '2', '3779', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('119', '逐日战队', '111', '2019-11-07 21:58:22', '2019-11-07 21:58:22', '', '1^2^111^119', '2', '3779', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('120', '咨询三部', '2', '2019-11-07 22:17:14', '2019-11-07 22:17:14', '', '1^2^120', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('121', '咨询四部', '2', '2019-11-07 22:17:25', '2019-11-07 22:17:25', '', '1^2^121', '2', '3779', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('122', '武汉网咨', '72', '2019-11-08 17:29:44', '2019-11-08 17:33:22', '', '1^72^122', '72', '3784', '2', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('123', '网咨组', '122', '2019-11-08 17:30:04', '2019-11-08 17:30:04', '', '1^72^122^123', '72', '3784', '3', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('124', '武汉电咨', '72', '2019-11-08 17:38:11', '2019-11-08 17:38:11', '', '1^72^124', '72', '3784', '2', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('125', '咨询一组', '124', '2019-11-08 17:38:31', '2019-11-08 17:38:31', '', '1^72^124^125', '72', '3784', '3', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('126', '咨询二组', '124', '2019-11-08 17:38:40', '2019-11-08 17:38:40', '', '1^72^124^126', '72', '3784', '3', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('127', '咨询三组', '124', '2019-11-08 17:38:47', '2019-11-08 17:38:47', '', '1^72^124^127', '72', '3784', '3', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('128', '咨询四组', '124', '2019-11-08 17:38:54', '2019-11-08 17:38:54', '', '1^72^124^128', '72', '3784', '3', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('129', '咨询五组', '124', '2019-11-11 09:41:59', '2019-11-11 09:41:59', '', '1^72^124^129', '72', '3784', '3', '1', '72', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('130', '咨询中心', '82', '2019-11-11 09:46:27', '2019-11-11 09:46:27', '', '1^82^130', '82', '3784', '2', '1', '82', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('131', '咨询一部', '130', '2019-11-11 09:46:37', '2019-11-11 09:46:37', '', '1^82^130^131', '82', '3784', '3', '1', '82', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('132', '网咨部', '130', '2019-11-11 09:46:53', '2019-11-11 09:46:53', '', '1^82^130^132', '82', '3784', '3', '1', '82', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('135', '开拓者', '114', '2019-11-28 14:48:42', '2019-11-28 14:48:42', '', '1^2^114^135', '2', '2231', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('136', '铸梦队', '120', '2019-11-28 15:41:03', '2019-11-28 15:41:03', '', '1^2^120^136', '2', '1095', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('137', '火凤凰', '114', '2019-11-28 15:41:05', '2019-11-28 15:41:05', '', '1^2^114^137', '2', '2231', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('138', '天秀精灵', '121', '2019-11-28 15:41:26', '2019-11-28 15:41:26', '', '1^2^121^138', '2', '2231', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('139', '火箭战队', '120', '2019-11-28 15:41:27', '2019-11-28 15:41:27', '', '1^2^120^139', '2', '1095', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('140', '稽核部', '2', '2019-11-29 10:10:42', '2019-11-29 10:10:42', '', '1^2^140', '2', '2231', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('141', '四部本部', '121', '2019-11-29 10:15:10', '2019-11-29 10:15:10', '', '1^2^121^141', '2', '2135', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('143', '三部本部', '120', '2019-11-29 10:16:41', '2019-11-29 10:16:41', '', '1^2^120^143', '2', '327', '3', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('145', '总部本部', '2', '2019-11-29 13:56:28', '2019-11-29 13:56:28', '', '1^2^145', '2', '2231', '2', '1', '2', '0', '0', '1');
INSERT INTO `scrm_department` VALUES ('148', '广告部', '111', '2019-12-03 10:26:04', '2019-12-03 10:26:04', '', '1^2^111^148', '2', '2017', '3', '1', '2', '0', '0', '1');
