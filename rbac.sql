/*
Navicat MySQL Data Transfer

Source Server         : localhost_phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : rbac

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-24 13:58:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL,
  `truename` varchar(50) DEFAULT NULL,
  `sex` int(1) DEFAULT '0',
  `password` char(32) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL COMMENT '院系 id',
  `sp_id` int(11) DEFAULT NULL COMMENT '专业id',
  `class` varchar(15) DEFAULT NULL COMMENT '班别',
  `year` varchar(15) DEFAULT NULL,
  `company` varchar(25) DEFAULT NULL COMMENT '公司',
  `zhicheng` varchar(10) DEFAULT NULL,
  `zhiwu` varchar(10) DEFAULT NULL,
  `jibie` char(5) DEFAULT NULL,
  `honor` text,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `tel` int(15) DEFAULT NULL,
  `qq` int(15) DEFAULT NULL,
  `province` char(10) DEFAULT NULL,
  `city` char(12) DEFAULT NULL,
  `county` char(6) DEFAULT NULL,
  `join` int(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `update_time` int(11) unsigned DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `role_id` mediumint(9) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account` (`account`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('109', '韦小宝', '韦小宝', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '11', '2008', '钦州市', '广西钦州市树正网络科', '工程师', '经理', '0', '::1', '0', '774294449@qq.com', '5987765', '774294448', null, '计科本083', null, '0', '副处', '0', null, '0', '0');
INSERT INTO `member` VALUES ('110', '韦小宝', '韦小宝', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '11', '2008', '钦州市', '广西钦州市树正网络科', '工程师', '经理', '0', '::1', '0', '774294449@qq.com', '5987765', '774294448', null, '计科本083', null, '0', '副处', '0', null, '0', '0');
INSERT INTO `member` VALUES ('111', '韦小宝', '韦小宝', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '11', '2008', '钦州市', '广西钦州市树正网络科', '工程师', '经理', '0', '::1', '0', '774294449@qq.com', '5987765', '774294448', null, '计科本083', null, '0', '副处', '0', null, '0', '0');
INSERT INTO `member` VALUES ('112', '韦小宝', '韦小宝', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '11', '2008', '钦州市', '广西钦州市树正网络科', '工程师', '经理', '0', '::1', '0', '774294449@qq.com', '5987765', '774294448', null, '计科本083', null, '0', '副处', '0', null, '0', '0');
INSERT INTO `member` VALUES ('114', '韦小宝', '韦小宝', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '11', '2008', '钦州市', '广西钦州市树正网络科', '工程师', '经理', '0', '::1', '0', '774294449@qq.com', '5987765', '774294448', null, '计科本083', null, '0', '副处', '0', null, '0', '0');
INSERT INTO `member` VALUES ('117', '韦小宝', '韦小宝', '1', 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, '11', '2008', '钦州市', '广西钦州市树正网络科', '工程师', '经理', '0', '::1', '0', '774294449@qq.com', '5987765', '774294448', null, '计科本083', null, '0', '副处', '0', null, '0', '0');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员');
INSERT INTO `role` VALUES ('2', '运营');
INSERT INTO `role` VALUES ('3', '客服');
INSERT INTO `role` VALUES ('8', '管理员二号');
INSERT INTO `role` VALUES ('7', '谌麒丞');

-- ----------------------------
-- Table structure for `role_rules`
-- ----------------------------
DROP TABLE IF EXISTS `role_rules`;
CREATE TABLE `role_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_rules
-- ----------------------------
INSERT INTO `role_rules` VALUES ('78', '3', '4');
INSERT INTO `role_rules` VALUES ('79', '3', '11');
INSERT INTO `role_rules` VALUES ('223', '7', '12');
INSERT INTO `role_rules` VALUES ('224', '2', '5');
INSERT INTO `role_rules` VALUES ('225', '2', '11');
INSERT INTO `role_rules` VALUES ('229', '8', '1');
INSERT INTO `role_rules` VALUES ('230', '8', '2');
INSERT INTO `role_rules` VALUES ('231', '8', '3');
INSERT INTO `role_rules` VALUES ('232', '8', '11');
INSERT INTO `role_rules` VALUES ('240', '1', '1');
INSERT INTO `role_rules` VALUES ('241', '1', '2');
INSERT INTO `role_rules` VALUES ('242', '1', '3');
INSERT INTO `role_rules` VALUES ('243', '1', '4');
INSERT INTO `role_rules` VALUES ('244', '1', '5');
INSERT INTO `role_rules` VALUES ('245', '1', '11');
INSERT INTO `role_rules` VALUES ('246', '1', '12');
INSERT INTO `role_rules` VALUES ('247', '1', '23');

-- ----------------------------
-- Table structure for `rules`
-- ----------------------------
DROP TABLE IF EXISTS `rules`;
CREATE TABLE `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL COMMENT '跳转的控制器',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rules
-- ----------------------------
INSERT INTO `rules` VALUES ('1', '用户管理', 'setUserRole');
INSERT INTO `rules` VALUES ('2', '角色管理', 'roleManage');
INSERT INTO `rules` VALUES ('3', '功能管理', 'rulesManage');
INSERT INTO `rules` VALUES ('4', '客服管理', 'serviceManage');
INSERT INTO `rules` VALUES ('5', '运营管理', 'operateManage');
INSERT INTO `rules` VALUES ('11', '导入导出', 'checkWorkManage');
INSERT INTO `rules` VALUES ('12', '谌麒丞', 'chenqicheng');
INSERT INTO `rules` VALUES ('23', '测试功能', 'ceshi');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '123456');
INSERT INTO `users` VALUES ('2', 'zhangsan', '123456');
INSERT INTO `users` VALUES ('3', 'wangwu', '123456');
INSERT INTO `users` VALUES ('4', 'chenqicheng', '123456');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('65', '3', '3');
INSERT INTO `user_role` VALUES ('80', '2', '2');
INSERT INTO `user_role` VALUES ('81', '1', '1');
INSERT INTO `user_role` VALUES ('84', '4', '8');
INSERT INTO `user_role` VALUES ('85', '4', '7');
INSERT INTO `user_role` VALUES ('90', '7', '1');
