/*
Navicat MySQL Data Transfer

Source Server         : xie
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : end_tv_web

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-06 17:09:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hos_web_user`
-- ----------------------------
DROP TABLE IF EXISTS `hos_web_user`;
CREATE TABLE `hos_web_user` (
  `id` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `login_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hos_web_user
-- ----------------------------
INSERT INTO `hos_web_user` VALUES ('test', 'xzc', 'xzc', 'xzc', 'sadasd', null);

-- ----------------------------
-- Table structure for `movie`
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` varchar(255) NOT NULL,
  `img_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `director` varchar(255) DEFAULT NULL,
  `score` varchar(255) NOT NULL,
  `short_message` varchar(255) NOT NULL,
  `staror` varchar(255) DEFAULT NULL,
  `ownerId` varchar(255) NOT NULL,
  `createData` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '2', 'dfs', 'movie', 'sdf', '11', 'sdfs', 'sdfsd', '123', '2016-04-05');
INSERT INTO `movie` VALUES ('2', '3', 'dfd', 'movie', 'sdf', '11', 'sdfs', 'sdf', '5465', '2016-04-06');
INSERT INTO `movie` VALUES ('3', '4', 'df', 'tv', 'sdf', '12', 'sdfsd', 'sdf', 'sdf', '2016-04-19');
INSERT INTO `movie` VALUES ('4', '5', 'df', 'movie', 'sdf', '2', 'sdf', 'sdf', 'sdf', '2016-04-25');

-- ----------------------------
-- Table structure for `movie_message`
-- ----------------------------
DROP TABLE IF EXISTS `movie_message`;
CREATE TABLE `movie_message` (
  `id` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_message
-- ----------------------------
INSERT INTO `movie_message` VALUES ('2', 'F:\\ng_workspace\\tv_photos\\main\\a1.jpg');
INSERT INTO `movie_message` VALUES ('3', 'F:\\ng_workspace\\tv_photos\\main\\a2.jpg');
INSERT INTO `movie_message` VALUES ('4', 'F:\\ng_workspace\\tv_photos\\main\\a3.jpg');
INSERT INTO `movie_message` VALUES ('5', 'F:\\ng_workspace\\tv_photos\\main\\a3.jpg');
