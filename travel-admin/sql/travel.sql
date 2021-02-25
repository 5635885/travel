/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2021-02-25 21:32:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `info_hotel`
-- ----------------------------
DROP TABLE IF EXISTS `info_hotel`;
CREATE TABLE `info_hotel` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hotel_name` varchar(20) NOT NULL COMMENT '酒店名',
  `introduc` text COMMENT '酒店介绍',
  `province` varchar(32) NOT NULL COMMENT '省',
  `city` varchar(32) NOT NULL COMMENT '市',
  `county` varchar(32) NOT NULL COMMENT '县',
  `village` varchar(32) NOT NULL COMMENT '乡',
  `address` varchar(100) NOT NULL COMMENT '详细地址',
  `price` decimal(10,0) NOT NULL COMMENT '价格',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='酒店数据表';

-- ----------------------------
-- Records of info_hotel
-- ----------------------------

-- ----------------------------
-- Table structure for `info_hotel_image_relation`
-- ----------------------------
DROP TABLE IF EXISTS `info_hotel_image_relation`;
CREATE TABLE `info_hotel_image_relation` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `image_url` varchar(70) NOT NULL COMMENT '图片资源地址',
  `hote_id` bigint(19) DEFAULT NULL COMMENT '酒店主键',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='酒店图片映射表';

-- ----------------------------
-- Records of info_hotel_image_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `info_revolution_scenic_area`
-- ----------------------------
DROP TABLE IF EXISTS `info_revolution_scenic_area`;
CREATE TABLE `info_revolution_scenic_area` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '景区名',
  `category` varchar(99) DEFAULT NULL COMMENT '景区A级',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `country` varchar(255) DEFAULT NULL COMMENT '县',
  `villager` varchar(255) DEFAULT NULL COMMENT '乡',
  `address` varchar(255) DEFAULT NULL COMMENT '详细地址',
  `opening_hours` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '开放时间',
  `tickets` decimal(10,0) DEFAULT NULL COMMENT '门票',
  `surrounding_nearby` bigint(19) DEFAULT NULL COMMENT '周边景区',
  `crated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='景区数据表';

-- ----------------------------
-- Records of info_revolution_scenic_area
-- ----------------------------

-- ----------------------------
-- Table structure for `info_revolution_scenic_area_image_relation`
-- ----------------------------
DROP TABLE IF EXISTS `info_revolution_scenic_area_image_relation`;
CREATE TABLE `info_revolution_scenic_area_image_relation` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `scenic_area_image` varchar(255) NOT NULL COMMENT '图片地址',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `scenic_area_id` bigint(19) NOT NULL COMMENT '景区主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='景区图片映射表';

-- ----------------------------
-- Records of info_revolution_scenic_area_image_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `login_user`
-- ----------------------------
DROP TABLE IF EXISTS `login_user`;
CREATE TABLE `login_user` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nick_name` varchar(128) DEFAULT NULL COMMENT '用户昵称',
  `avatar_url` varchar(128) DEFAULT NULL COMMENT '用户头像',
  `gender` int(11) DEFAULT '0' COMMENT '用户性别 ，值为 1 时是男性，值为 2 时是女性，值为 0 时是未知',
  `city` varchar(32) DEFAULT NULL COMMENT '用户所在城市',
  `province` varchar(32) DEFAULT NULL COMMENT '用户所在省份',
  `country` varchar(32) DEFAULT NULL COMMENT '用户所在国家',
  `language` varchar(32) DEFAULT NULL COMMENT '用户所在国家',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`pk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='微信用户登陆';

-- ----------------------------
-- Records of login_user
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL COMMENT '头像',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int(10) DEFAULT NULL COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户表';

-- ----------------------------
-- Records of ums_admin
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_admin_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(19) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `user_agent` varchar(100) DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户登录日志表';

-- ----------------------------
-- Records of ums_admin_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_admin_role_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(19) DEFAULT NULL,
  `role_id` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户和角色关系表';

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(19) DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) DEFAULT NULL COMMENT '菜单名称',
  `level` int(10) DEFAULT NULL COMMENT '菜单级数',
  `sort` int(10) DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) DEFAULT NULL COMMENT '前端图标',
  `hidden` int(10) DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of ums_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_resource`
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `category_id` bigint(19) DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台资源表';

-- ----------------------------
-- Records of ums_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_resource_category`
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源分类表';

-- ----------------------------
-- Records of ums_resource_category
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_role`
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `admin_count` int(10) DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `status` int(10) DEFAULT NULL COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台用户角色表';

-- ----------------------------
-- Records of ums_role
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_role_menu_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(19) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台角色菜单关系表';

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `ums_role_resource_relation`
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(19) DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint(19) DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台角色资源关系表';

-- ----------------------------
-- Records of ums_role_resource_relation
-- ----------------------------
