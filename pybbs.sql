/*
Navicat MySQL Data Transfer

Source Server         : 192.168.199.124
Source Server Version : 50505
Source Host           : 192.168.199.124:3306
Source Database       : badu_user

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-09-21 01:11:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pybbs_collect
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_collect`;
CREATE TABLE `pybbs_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `in_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pybbs_notification
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_notification`;
CREATE TABLE `pybbs_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read` tinyint(1) NOT NULL COMMENT '是否已读：0默认 1已读',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '发起通知用户昵称',
  `target_author` varchar(50) NOT NULL COMMENT '要通知用户的昵称',
  `in_time` datetime NOT NULL COMMENT '录入时间',
  `action` varchar(255) NOT NULL DEFAULT '' COMMENT '通知动作',
  `tid` int(11) NOT NULL COMMENT '话题id',
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_permission
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_permission`;
CREATE TABLE `pybbs_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '权限名称',
  `url` varchar(255) DEFAULT NULL COMMENT '授权路径',
  `description` varchar(255) NOT NULL COMMENT '权限描述',
  `pid` int(11) NOT NULL COMMENT '父节点0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_reply
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_reply`;
CREATE TABLE `pybbs_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL COMMENT '话题id',
  `content` longtext NOT NULL COMMENT '回复内容',
  `in_time` datetime NOT NULL COMMENT '录入时间',
  `author` varchar(32) NOT NULL COMMENT '当前回复用户id',
  `isdelete` tinyint(1) NOT NULL COMMENT '是否删除0 默认 1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_role
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_role`;
CREATE TABLE `pybbs_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_role_permission`;
CREATE TABLE `pybbs_role_permission` (
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  KEY `fk_role_permission` (`rid`),
  KEY `fk_permission_role` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_section
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_section`;
CREATE TABLE `pybbs_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '' COMMENT '板块名称',
  `tab` varchar(45) NOT NULL DEFAULT '' COMMENT '板块标签',
  `show_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示，0不显示1显示',
  `display_index` int(11) NOT NULL COMMENT '板块排序',
  `default_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '默认显示板块 0默认，1显示',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tabunique` (`tab`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_subsection
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_subsection`;
CREATE TABLE `pybbs_subsection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '类型：1作品、2文章',
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `show_status` int(11) NOT NULL DEFAULT '1' COMMENT '是否显示，0不显示1显示',
  `display_index` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for pybbs_topic
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_topic`;
CREATE TABLE `pybbs_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tab` varchar(50) NOT NULL COMMENT '版块标识',
  `subsection_id` int(11) DEFAULT NULL COMMENT '子分类',
  `type` int(11) DEFAULT '2' COMMENT '类型 1、作品 2、文章',
  `title` varchar(128) NOT NULL COMMENT '话题标题',
  `sub_title` varchar(200) DEFAULT NULL COMMENT '帖子簡介',
  `cover_uri` varchar(120) DEFAULT NULL COMMENT '帖子封面',
  `content` longtext COMMENT '话题内容',
  `in_time` datetime NOT NULL COMMENT '录入时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `last_reply_time` datetime DEFAULT NULL COMMENT '最后回复话题时间，用于排序',
  `last_reply_author` varchar(50) DEFAULT '' COMMENT '最后回复话题的用户id',
  `view` int(11) NOT NULL COMMENT '浏览量',
  `author` varchar(50) NOT NULL COMMENT '话题作者id',
  `top` tinyint(1) NOT NULL COMMENT '1置顶 0默认',
  `good` tinyint(1) NOT NULL COMMENT '1精华(推荐) 0默认',
  `show_status` tinyint(1) NOT NULL COMMENT '1显示0不显示',
  `recommend_count` int(1) NOT NULL DEFAULT '0' COMMENT '推荐数',
  `reply_count` int(11) NOT NULL DEFAULT '0' COMMENT '回复数量',
  `isdelete` tinyint(1) NOT NULL COMMENT '1删除0默认',
  `original` varchar(10) DEFAULT NULL COMMENT '原作者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_topic_append
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_topic_append`;
CREATE TABLE `pybbs_topic_append` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `in_time` datetime NOT NULL,
  `isdelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pybbs_user
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_user`;
CREATE TABLE `pybbs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `passwprd` varchar(100) DEFAULT NULL,
  `score` int(11) NOT NULL COMMENT '积分',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `url` varchar(255) DEFAULT NULL COMMENT '个人主页',
  `signature` varchar(1000) DEFAULT NULL COMMENT '个性签名',
  `third_id` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方账户id',
  `access_token` varchar(45) NOT NULL,
  `receive_msg` tinyint(1) NOT NULL COMMENT '邮箱是否接收社区消息',
  `in_time` datetime NOT NULL COMMENT '录入时间',
  `expire_time` datetime NOT NULL,
  `channel` varchar(50) NOT NULL,
  `isblock` tinyint(1) NOT NULL COMMENT '禁用0默认 1禁用',
  `third_access_token` varchar(50) DEFAULT NULL COMMENT '第三方登录获取的access_token',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NICKNAME_UNIQUE` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Table structure for pybbs_user_extend
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_user_extend`;
CREATE TABLE `pybbs_user_extend` (
  `user_id` int(11) NOT NULL COMMENT 'user表的Id',
  `fans_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `concern_cum` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关注数',
  `heat` int(11) NOT NULL COMMENT '0',
  `introduce_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for pybbs_user_role
-- ----------------------------
DROP TABLE IF EXISTS `pybbs_user_role`;
CREATE TABLE `pybbs_user_role` (
  `uid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  KEY `fk_user_role` (`uid`),
  KEY `fk_role_user` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
