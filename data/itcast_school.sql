/*
Navicat MySQL Data Transfer

Source Server         : hadoop01
Source Server Version : 50730
Source Host           : hadoop01:3306
Source Database       : scrm

Target Server Type    : MYSQL
Target Server Version : 50730
File Encoding         : 65001

Date: 2020-09-04 21:27:50
*/
USE scrm_bi;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `itcast_school`
-- ----------------------------
DROP TABLE IF EXISTS `itcast_school`;
CREATE TABLE `itcast_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否被删除（禁用）',
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '校区名称',
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `tenant` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of itcast_school
-- ----------------------------
INSERT INTO `itcast_school` VALUES ('1', '2019-09-04 10:36:32', '2019-09-19 09:45:39', '', '北京', 'BEIJING', '0');
INSERT INTO `itcast_school` VALUES ('2', '2019-09-04 10:39:06', '2019-09-19 09:45:40', '', '北京金燕龙', 'BEIJINGJINYANLONG', '0');
INSERT INTO `itcast_school` VALUES ('3', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '北京顺义', 'BEIJINGSHUNYI', '0');
INSERT INTO `itcast_school` VALUES ('4', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '北京修正', 'BEIJINGXIUZHENG', '0');
INSERT INTO `itcast_school` VALUES ('5', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '长春', 'CHANGCHUN', '0');
INSERT INTO `itcast_school` VALUES ('6', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '长沙', 'CHANGSHA', '0');
INSERT INTO `itcast_school` VALUES ('7', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '成都', 'CHENGDOU', '0');
INSERT INTO `itcast_school` VALUES ('8', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '重庆', 'CHONGQING', '0');
INSERT INTO `itcast_school` VALUES ('9', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '大连', 'DALIAN', '0');
INSERT INTO `itcast_school` VALUES ('10', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '广州', 'GUANGZHOU', '0');
INSERT INTO `itcast_school` VALUES ('11', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '贵阳', 'GUIYANG', '0');
INSERT INTO `itcast_school` VALUES ('12', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '哈尔滨', 'HAERBIN', '0');
INSERT INTO `itcast_school` VALUES ('13', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '杭州', 'HANGZHOU', '0');
INSERT INTO `itcast_school` VALUES ('14', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '合肥', 'HEFEI', '0');
INSERT INTO `itcast_school` VALUES ('15', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '济南', 'JINAN', '0');
INSERT INTO `itcast_school` VALUES ('16', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '昆明', 'KUNMING', '0');
INSERT INTO `itcast_school` VALUES ('17', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '南昌', 'NANCHANG', '0');
INSERT INTO `itcast_school` VALUES ('18', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '南京', 'NANJING', '0');
INSERT INTO `itcast_school` VALUES ('19', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '南宁', 'NANNING', '0');
INSERT INTO `itcast_school` VALUES ('20', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '青岛', 'QINGDAO', '0');
INSERT INTO `itcast_school` VALUES ('21', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '厦门', 'SHAMEN', '0');
INSERT INTO `itcast_school` VALUES ('22', '2019-09-04 10:39:06', '2019-09-19 09:45:50', '', '上海', 'SHANGHAI', '0');
INSERT INTO `itcast_school` VALUES ('23', '2019-09-04 10:39:06', '2019-09-19 09:45:58', '', '沈阳', 'SHENYANG', '0');
INSERT INTO `itcast_school` VALUES ('24', '2019-09-04 10:39:06', '2019-09-19 09:46:01', '', '深圳', 'SHENZHEN', '0');
INSERT INTO `itcast_school` VALUES ('25', '2019-09-04 10:39:06', '2019-09-24 16:34:00', '', '石家庄', 'SHIJIAZHUANG', '0');
INSERT INTO `itcast_school` VALUES ('26', '2019-09-04 10:39:06', '2019-09-19 09:46:05', '', '太原', 'TAIYUAN', '0');
INSERT INTO `itcast_school` VALUES ('27', '2019-09-04 10:39:06', '2019-09-19 09:46:07', '', '武汉', 'WUHAN', '0');
INSERT INTO `itcast_school` VALUES ('28', '2019-09-04 10:39:06', '2019-09-19 09:46:08', '', '西安', 'XIAN', '0');
INSERT INTO `itcast_school` VALUES ('29', '2019-09-04 10:39:06', '2019-09-19 09:46:12', '', '郑州', 'ZHENGZHOU', '0');
