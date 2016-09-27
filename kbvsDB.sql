/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : 127.0.0.1:3306
Source Database       : kbvs

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-27 16:00:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for folder_info
-- ----------------------------
DROP TABLE IF EXISTS `folder_info`;
CREATE TABLE `folder_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `before_owner` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `creator_id` varchar(255) NOT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `members` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for library_info
-- ----------------------------
DROP TABLE IF EXISTS `library_info`;
CREATE TABLE `library_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `res_author` varchar(255) DEFAULT NULL,
  `res_content` varchar(255) DEFAULT NULL,
  `res_name` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `filtration` longtext,
  `resource_ids` longtext,
  `type` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  `res_content2` varchar(255) NOT NULL,
  `res_content3` varchar(255) NOT NULL,
  `res_content1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for resource_info
-- ----------------------------
DROP TABLE IF EXISTS `resource_info`;
CREATE TABLE `resource_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `md5` varchar(255) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `convert_name` varchar(255) NOT NULL,
  `creation_date` varchar(255) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `encoding` varchar(255) DEFAULT NULL,
  `ext_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `is_pdf_done` int(11) DEFAULT NULL,
  `is_swf_done` int(11) DEFAULT NULL,
  `metadata` longtext,
  `name` varchar(255) NOT NULL,
  `owner_id` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `pdf_path` varchar(255) DEFAULT NULL,
  `pre_img_path` varchar(255) DEFAULT NULL,
  `relation` longtext,
  `special` varchar(255) DEFAULT NULL,
  `swf_path` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `remark` longtext,
  `duration` longtext,
  `equipment` varchar(255) DEFAULT NULL,
  `common` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for share_info
-- ----------------------------
DROP TABLE IF EXISTS `share_info`;
CREATE TABLE `share_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `date_created` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner_id` longtext NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(255) NOT NULL,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `group_ids` longtext,
  `image_path` varchar(255) DEFAULT NULL,
  `login_name` varchar(255) NOT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
