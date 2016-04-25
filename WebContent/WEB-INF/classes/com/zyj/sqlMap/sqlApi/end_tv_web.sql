/*
Navicat MySQL Data Transfer

Source Server         : xie
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : end_tv_web

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-25 17:33:06
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
  `imgId` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `tip` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `score` varchar(255) NOT NULL,
  `shortMessage` varchar(255) NOT NULL,
  `staror` varchar(255) DEFAULT NULL,
  `ownerId` varchar(255) NOT NULL,
  `createData` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '1', 'dfs', 'tv', null, 'sdf', '11', 'sdfs', 'sdfsd', '123', '2016-04-05');
INSERT INTO `movie` VALUES ('10', '10', 'sdf', 'movie', null, 'sf', '7', 'sf', null, '23', null);
INSERT INTO `movie` VALUES ('100', '100', 'sdfsd', 'art', null, null, '4', 'ad', null, '5', null);
INSERT INTO `movie` VALUES ('101', '101', 'sdf', 'art', null, null, '5', 'ds', null, '6', null);
INSERT INTO `movie` VALUES ('102', '102', 'sf', 'art', null, null, '3', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('103', '103', 'sdf', 'art', null, null, '4', 'df', null, '3', null);
INSERT INTO `movie` VALUES ('104', '104', 'sdf', 'art', null, null, '4', 'af', null, '4', null);
INSERT INTO `movie` VALUES ('105', '105', 'sdf', 'art', null, null, '5', 'sd', null, '5', null);
INSERT INTO `movie` VALUES ('106', '106', 'sdf', 'art', null, null, '6', 'af', null, '6', null);
INSERT INTO `movie` VALUES ('107', '107', 'sdf', 'art', null, null, '3', 'df', null, '2', null);
INSERT INTO `movie` VALUES ('108', '108', 'sdf', 'art', null, null, '2', 'w', null, '4', null);
INSERT INTO `movie` VALUES ('109', '109', 'sdf', 'art', null, null, '4', 'sdf', null, '6', null);
INSERT INTO `movie` VALUES ('11', '11', 'sdf', 'movie', null, null, '4', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('110', '110', 'sdf', 'art', null, null, '6', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('111', '111', 'sdf', 'art', null, null, '7', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('112', '112', 'sdf', 'art', null, null, '7', 'sf', null, '6', null);
INSERT INTO `movie` VALUES ('113', '113', 'sdf', 'art', null, null, '4', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('114', '114', '海贼王', 'art', null, null, '2', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('115', '115', 'sdf', 'art', null, null, '4', 'sf', null, '8', null);
INSERT INTO `movie` VALUES ('116', '116', 'sdf', 'art', null, null, '7', 'sf', null, '5', null);
INSERT INTO `movie` VALUES ('117', '117', 'adf', 'animation', null, null, '5', 'dfg', null, '3', null);
INSERT INTO `movie` VALUES ('118', '118', 'adf', 'animation', null, null, '6', 'fg', null, '4', null);
INSERT INTO `movie` VALUES ('119', '119', 'afd', 'animation', null, null, '7', 'dfg', null, '6', null);
INSERT INTO `movie` VALUES ('12', '12', 'sdf', 'movie', null, null, '5', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('120', '120', 'adf', 'animation', null, null, '9', 'dg', null, '7', null);
INSERT INTO `movie` VALUES ('121', '121', 'af', 'animation', null, null, '4', 'g', null, '2', null);
INSERT INTO `movie` VALUES ('122', '122', 'af', 'animation', null, null, '4', 'd', null, '3', null);
INSERT INTO `movie` VALUES ('123', '123', 'df', 'animationCarousel', null, null, '7', 'g', null, '6', null);
INSERT INTO `movie` VALUES ('124', '124', 'sdf', 'animation', null, null, '6', 'sdf', null, '5', null);
INSERT INTO `movie` VALUES ('125', '125', 'sf', 'animation', null, null, '8', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('126', '126', 'sdf', 'animation', null, null, '9', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('127', '127', 'adf', 'animation', null, null, '6', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('128', '128', 'af', 'animation', null, null, '5', 'sdf', null, '45', null);
INSERT INTO `movie` VALUES ('129', '129', 'sdf', 'animation', null, null, '7', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('13', '13', 'sdf', 'movie', null, null, '6', 'sf', null, '23', null);
INSERT INTO `movie` VALUES ('130', '130', 'sa', 'animation', null, null, '8', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('131', '131', 'af', 'animation', null, null, '3', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('132', '132', 'sd', 'animation', null, null, '4', 'df', null, '5', null);
INSERT INTO `movie` VALUES ('133', '133', 'adf', 'animation', null, null, '3', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('134', '134', 'saf', 'animation', null, null, '3', 'sdf', null, '8', null);
INSERT INTO `movie` VALUES ('135', '135', 'df', 'animation', null, null, '9', 'sdf', null, '9', null);
INSERT INTO `movie` VALUES ('136', '136', 'df', 'animation', null, null, '4', 'fg', null, '1', null);
INSERT INTO `movie` VALUES ('137', '137', 'sdf', 'animation', null, null, '4', 'df', null, '2', null);
INSERT INTO `movie` VALUES ('138', '138', 'sd', 'animation', null, null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('139', '139', 'sd', 'animation', null, null, '4', 'sf', null, '2', null);
INSERT INTO `movie` VALUES ('14', '14', 'sdf', 'animation', null, null, '5', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('140', '140', 'fd', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('141', '141', 'df', 'animation', null, null, '4', 'sd', null, '1', null);
INSERT INTO `movie` VALUES ('142', '142', 'adf', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('143', '143', 'sd', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('144', '144', 'df', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('145', '145', 'fd', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('146', '146', 'sd', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('147', '147', 'fd', 'animation', null, null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('148', '148', 'sdf', 'animation', null, null, '4', 'fd', null, '1', null);
INSERT INTO `movie` VALUES ('149', '149', 'gf', 'fitness', null, null, '5', 'dgf', null, '2', null);
INSERT INTO `movie` VALUES ('15', '15', 'sdf', 'movie', null, null, '45', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('150', '150', 'sdf', 'fitness', null, null, '5', 'dfg', null, '2', null);
INSERT INTO `movie` VALUES ('151', '151', 'sdf', 'fitness', null, null, '5', 'df', null, '5', null);
INSERT INTO `movie` VALUES ('152', '152', 'sdf', 'fitness', null, null, '5', 'g', null, '2', null);
INSERT INTO `movie` VALUES ('153', '153', 'sf', 'fitness', null, null, '5', 'fd', null, '8', null);
INSERT INTO `movie` VALUES ('154', '154', 'sf', 'fitness', null, null, '5', 'df', null, '8', null);
INSERT INTO `movie` VALUES ('155', '155', 'sf', 'fitness', null, null, '5', 'df', null, '8', null);
INSERT INTO `movie` VALUES ('156', '156', 'sdf', 'fitness', null, null, '56', 'gh', null, '9', null);
INSERT INTO `movie` VALUES ('157', '157', 'sdf', 'fitness', null, null, '2', 'gfh', null, '5', null);
INSERT INTO `movie` VALUES ('158', '158', 'sd', 'fitness', null, null, '3', 'fgh', null, '2', null);
INSERT INTO `movie` VALUES ('159', '159', 'sd', 'fitness', null, null, '8', 'fgh', null, '1', null);
INSERT INTO `movie` VALUES ('16', '16', 'sdf', 'movie', null, null, '23', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('160', '160', 'sf', 'fitness', null, null, '2', 'fgh', null, '2', null);
INSERT INTO `movie` VALUES ('161', '161', 'sf', 'fitness', null, null, '1', 'fh', null, '6', null);
INSERT INTO `movie` VALUES ('162', '162', 'df', 'fitness', null, null, '7', 'fgh', null, '6', null);
INSERT INTO `movie` VALUES ('163', '163', 'sdf', 'fitness', null, null, '1', 'fh', null, '5', null);
INSERT INTO `movie` VALUES ('164', '164', 'sf', 'fitness', null, null, '3', 'fh', null, '2', null);
INSERT INTO `movie` VALUES ('165', '165', 'sf', 'fitness', null, null, '1', 'fh', null, '4', null);
INSERT INTO `movie` VALUES ('166', '166', 'sdf', 'fitness', null, null, '6', 'fgh', null, '2', null);
INSERT INTO `movie` VALUES ('167', '167', 'sdf', 'fitness', null, null, '2', 'gh', null, '4', null);
INSERT INTO `movie` VALUES ('168', '168', 'sf', 'fitness', null, null, '1', 'fhg', null, '4', null);
INSERT INTO `movie` VALUES ('169', '169', 'sf', 'fitness', null, null, '4', 'fh', null, '9', null);
INSERT INTO `movie` VALUES ('17', '17', 'sdf', 'movie', null, null, '2', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('170', '170', 'ssd', 'teach', null, null, '1', 'sd', null, '2', null);
INSERT INTO `movie` VALUES ('171', '171', 'df', 'teach', null, null, '2', 'sdf', null, '5', null);
INSERT INTO `movie` VALUES ('172', '172', 'sdf', 'teach', null, null, '1', 'sd', null, '4', null);
INSERT INTO `movie` VALUES ('173', '173', 'sdf', 'teach', null, null, '1', 'sd', null, '2', null);
INSERT INTO `movie` VALUES ('174', '174', 'sd', 'teach', null, null, '1', 'd', null, '6', null);
INSERT INTO `movie` VALUES ('175', '175', 'dsf', 'teach', null, null, '1', 'f', null, '4', null);
INSERT INTO `movie` VALUES ('176', '176', 'sdf', 'teach', null, null, '1', 'a', null, '5', null);
INSERT INTO `movie` VALUES ('177', '177', 'sdfsd', 'teach', null, null, '1', 'df', null, '8', null);
INSERT INTO `movie` VALUES ('178', '178', 'ds', 'teach', null, null, '1', 'sd', null, '6', null);
INSERT INTO `movie` VALUES ('179', '179', 'hd', 'teach', null, null, '1', 'we', null, '9', null);
INSERT INTO `movie` VALUES ('18', '18', 'sf', 'movie', null, null, '1', 'sdf', null, '233', null);
INSERT INTO `movie` VALUES ('180', '180', 'qe', 'teach', null, null, '1', 'we', null, '4', null);
INSERT INTO `movie` VALUES ('181', '181', 'df', 'teach', null, null, '1', 'g', null, '1', null);
INSERT INTO `movie` VALUES ('182', '182', 'df', 'teach', null, null, '1', 'd', null, '2', null);
INSERT INTO `movie` VALUES ('19', '19', 'sf', 'movie', null, null, '2', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('2', '2', 'dfd', 'tv', null, 'sdf', '11', 'sdfs', 'sdf', '5465', '2016-04-06');
INSERT INTO `movie` VALUES ('20', '20', 'sf', 'movie', null, null, '3', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('21', '21', 'sdf', 'movie', null, null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('22', '22', 'sg', 'movie', null, null, '5', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('23', '23', 'sdf', 'movie', null, null, '6', 'df', null, '23', null);
INSERT INTO `movie` VALUES ('24', '24', 'we', 'movie', null, null, '7', 'sdf', null, '43', null);
INSERT INTO `movie` VALUES ('25', '25', 'gs', 'movie', null, null, '8', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('26', '26', 'sg', 'movie', null, null, '9', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('27', '27', 'sgs', 'movie', null, null, '0', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('28', '28', 'sg', 'movie', null, null, '0', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('29', '29', 'sg', 'movie', null, null, '0', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('3', '3', 'df', 'tv', null, 'sdf', '12', 'sdfsd', 'sdf', 'sdf', '2016-04-19');
INSERT INTO `movie` VALUES ('30', '30', 'xcv', 'movie', null, null, '0', 'dsf', null, '34', null);
INSERT INTO `movie` VALUES ('31', '31', 'adf', 'tv', null, null, '23', 'dfs', null, '34', null);
INSERT INTO `movie` VALUES ('32', '32', 'sd', 'tv', null, null, '12', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('33', '33', 'sdf', 'tv', null, null, '22', 'df', null, '43', null);
INSERT INTO `movie` VALUES ('34', '34', 'sdf', 'tv', null, null, '1', 'dsf', null, '23', null);
INSERT INTO `movie` VALUES ('35', '35', 'sdf', 'tv', null, null, '2', 'sdf', null, '123', null);
INSERT INTO `movie` VALUES ('36', '36', 'sdf', 'tv', null, null, '3', 'sdf', null, '32', null);
INSERT INTO `movie` VALUES ('37', '37', 'sd', 'tv', null, null, '4', 'g', null, '34', null);
INSERT INTO `movie` VALUES ('38', '38', 'sd', 'tv', null, null, '5', 'ds', null, '34', null);
INSERT INTO `movie` VALUES ('39', '39', 'df', 'tv', null, null, '6', 'sdf', null, '34', null);
INSERT INTO `movie` VALUES ('4', '4', 'df', 'tv', null, 'sdf', '2', 'sdf', 'sdf', 'sdf', '2016-04-25');
INSERT INTO `movie` VALUES ('40', '40', 'df', 'tv', null, null, '7', 'we', null, '23', null);
INSERT INTO `movie` VALUES ('41', '41', 'df', 'tv', null, null, '4', 'wer', null, '23', null);
INSERT INTO `movie` VALUES ('42', '42', 'df', 'tv', null, null, '3', 'gs', null, '53', null);
INSERT INTO `movie` VALUES ('43', '43', 'df', 'tv', null, null, '5', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('44', '44', 'df', 'tv', null, null, '6', 'gsd', null, '23', null);
INSERT INTO `movie` VALUES ('45', '45', 'dsf', 'tv', null, null, '7', 'gs', null, '23', null);
INSERT INTO `movie` VALUES ('46', '46', 'df', 'tv', null, null, '9', 'we', null, '234', null);
INSERT INTO `movie` VALUES ('47', '47', 'sdf', 'movie', null, null, '5', 'dg', null, '2', null);
INSERT INTO `movie` VALUES ('48', '48', 'sdf', 'movie', null, null, '4', 'df', null, '3', null);
INSERT INTO `movie` VALUES ('49', '49', 'saf', 'movie', null, null, '5', 'dfg', null, '4', null);
INSERT INTO `movie` VALUES ('5', '5', '大话西游', 'movie', null, 'ddf', '8', 'sfs', 'dfds', 'sdf', '2016-04-14');
INSERT INTO `movie` VALUES ('50', '50', 'sdf', 'movie', null, null, '6', 'dfg', null, '5', null);
INSERT INTO `movie` VALUES ('51', '51', 'sdf', 'movie', null, null, '3', 'dg', null, '6', null);
INSERT INTO `movie` VALUES ('52', '52', 'dsf', 'tv', null, null, '4', 'gd', null, '2', null);
INSERT INTO `movie` VALUES ('53', '53', 'sdf', 'tv', null, null, '3', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('54', '54', 'sdf', 'tv', null, null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('55', '55', 'sdf', 'tv', null, null, '5', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('56', '56', 'sdf', 'tv', null, null, '6', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('57', '57', 'sdf', 'tv', null, null, '7', 'gd', null, '5', null);
INSERT INTO `movie` VALUES ('58', '58', 'sdf', 'tv', null, null, '2', 'sd', null, '6', null);
INSERT INTO `movie` VALUES ('59', '59', 'sdf', 'tv', null, null, '3', 'we', null, '7', null);
INSERT INTO `movie` VALUES ('6', '6', 'sdf', 'tv', null, 'df', '7', 'dg', 'dfg', 'fdg', '2016-04-20');
INSERT INTO `movie` VALUES ('60', '60', 'sdf', 'tv', null, null, '4', 'gg', null, '8', null);
INSERT INTO `movie` VALUES ('61', '61', 'sdf', 'tv', null, null, '5', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('62', '62', 'sdf', 'tv', null, null, '6', 'adf', null, '5', null);
INSERT INTO `movie` VALUES ('63', '63', 'sdf', 'tv', null, null, '7', 'gdd', null, '7', null);
INSERT INTO `movie` VALUES ('64', '64', 'sdf', 'tv', null, null, '2', 'we', null, '8', null);
INSERT INTO `movie` VALUES ('65', '65', 'sdf', 'tv', null, null, '3', 'dfg', null, '9', null);
INSERT INTO `movie` VALUES ('66', '66', 'sdf', 'tv', null, null, '5', 'wer', null, '0', null);
INSERT INTO `movie` VALUES ('67', '67', 'sf', 'tv', null, null, '6', 'wer', null, '8', null);
INSERT INTO `movie` VALUES ('68', '68', 'ad', 'tv', null, null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('69', '69', 'sdf', 'tv', null, null, '7', 'sa', null, '4', null);
INSERT INTO `movie` VALUES ('7', '7', 'dg', 'tv', null, 'sf', '6', 'sdf', 'sdf', 'sdf', '2016-04-20');
INSERT INTO `movie` VALUES ('70', '70', 'adf', 'tv', null, null, '4', 'sdf', null, '5', null);
INSERT INTO `movie` VALUES ('71', '71', 'sdf', 'tv', null, null, '3', 'sdf', null, '6', null);
INSERT INTO `movie` VALUES ('72', '72', 'adf', 'tv', null, null, '4', 'dsf', null, '4', null);
INSERT INTO `movie` VALUES ('73', '73', 'df', 'tv', null, null, '5', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('74', '74', 'df', 'tv', null, null, '2', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('75', '75', 'sd', 'tv', null, null, '3', 'aa', null, '5', null);
INSERT INTO `movie` VALUES ('76', '76', 'sa', 'tv', null, null, '5', 'we', null, '4', null);
INSERT INTO `movie` VALUES ('77', '77', 'sdf', 'tv', null, null, '3', 'df', null, '3', null);
INSERT INTO `movie` VALUES ('78', '78', 'ad', 'tv', null, null, '5', 'gd', null, '5', null);
INSERT INTO `movie` VALUES ('79', '79', 'sf', 'tv', null, null, '6', 'gd', null, '6', null);
INSERT INTO `movie` VALUES ('8', '8', 'gd', 'movie', null, 'sdf', '4', 'sdf', 'sf', 'sdf', '2016-04-20');
INSERT INTO `movie` VALUES ('80', '80', 'sdf', 'tv', null, null, '6', 'sd', null, '6', null);
INSERT INTO `movie` VALUES ('81', '81', 'sdf', 'tv', null, null, '4', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('82', '82', 'sdf', 'tv', null, null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('83', '83', 'sdf', 'tv', null, null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('84', '84', 'sdf', 'tv', null, null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('85', '85', 'sdf', 'tv', null, null, '3', 'sfd', null, '7', null);
INSERT INTO `movie` VALUES ('86', '86', 'gsdg', 'tv', null, null, '6', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('87', '87', 'sdf', 'tv', null, null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('88', '88', 'sd', 'tv', null, null, '6', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('89', '89', 'sdf', 'tv', null, null, '6', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('9', '9', 'sdf', 'movie', null, 'sdf', '7', 'sdf', 'sdf', 'sdf', '2016-04-12');
INSERT INTO `movie` VALUES ('90', '90', 'sdf', 'movie', null, null, '4', 'sf', null, '4', null);
INSERT INTO `movie` VALUES ('91', '91', 'sdf', 'movie', null, null, '7', 'sd', null, '5', null);
INSERT INTO `movie` VALUES ('92', '92', 'sd', 'movie', null, null, '8', 'df', null, '6', null);
INSERT INTO `movie` VALUES ('93', '93', 'sdf', 'movie', null, null, '5', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('94', '94', 'sdf', 'movie', null, null, '6', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('95', '95', 'sdf', 'movie', null, null, '8', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('96', '96', 'dsf', 'movie', null, null, '9', 'sd', null, '5', null);
INSERT INTO `movie` VALUES ('97', '97', 'sdf', 'movie', null, null, '0', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('98', '98', 'sdf', 'movie', null, null, '7', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('99', '99', 'sdf', 'movie', null, null, '3', 'sd', null, '5', null);

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
INSERT INTO `movie_message` VALUES ('1', 'F:\\tv_photos\\main\\a1.jpg');
INSERT INTO `movie_message` VALUES ('10', 'F:\\tv_photos\\like\\b6.jpg');
INSERT INTO `movie_message` VALUES ('100', 'F:\\tv_photos\\art\\01.jpg');
INSERT INTO `movie_message` VALUES ('101', 'F:\\tv_photos\\art\\02.jpg');
INSERT INTO `movie_message` VALUES ('102', 'F:\\tv_photos\\art\\03.jpg');
INSERT INTO `movie_message` VALUES ('103', 'F:\\tv_photos\\art\\04.jpg');
INSERT INTO `movie_message` VALUES ('104', 'F:\\tv_photos\\art\\05.jpg');
INSERT INTO `movie_message` VALUES ('105', 'F:\\tv_photos\\art\\a1.jpg');
INSERT INTO `movie_message` VALUES ('106', 'F:\\tv_photos\\art\\a2.jpg');
INSERT INTO `movie_message` VALUES ('107', 'F:\\tv_photos\\art\\a3.jpg');
INSERT INTO `movie_message` VALUES ('108', 'F:\\tv_photos\\art\\a4.jpg');
INSERT INTO `movie_message` VALUES ('109', 'F:\\tv_photos\\art\\a5.jpg');
INSERT INTO `movie_message` VALUES ('11', 'F:\\tv_photos\\like\\b7.jpg');
INSERT INTO `movie_message` VALUES ('110', 'F:\\tv_photos\\art\\a6.jpg');
INSERT INTO `movie_message` VALUES ('111', 'F:\\tv_photos\\art\\a7.jpg');
INSERT INTO `movie_message` VALUES ('112', 'F:\\tv_photos\\art\\a8.jpg');
INSERT INTO `movie_message` VALUES ('113', 'F:\\tv_photos\\art\\a9.jpg');
INSERT INTO `movie_message` VALUES ('114', 'F:\\tv_photos\\art\\a9.jpg');
INSERT INTO `movie_message` VALUES ('115', 'F:\\tv_photos\\art\\a1.jpg');
INSERT INTO `movie_message` VALUES ('116', 'F:\\tv_photos\\art\\a2.jpg');
INSERT INTO `movie_message` VALUES ('117', 'F:\\tv_photos\\animation\\01.jpg');
INSERT INTO `movie_message` VALUES ('118', 'F:\\tv_photos\\animation\\02.jpg');
INSERT INTO `movie_message` VALUES ('119', 'F:\\tv_photos\\animation\\03.jpg');
INSERT INTO `movie_message` VALUES ('12', 'F:\\tv_photos\\like\\b8.jpg');
INSERT INTO `movie_message` VALUES ('120', 'F:\\tv_photos\\animation\\04.jpg');
INSERT INTO `movie_message` VALUES ('121', 'F:\\tv_photos\\animation\\05.jpg');
INSERT INTO `movie_message` VALUES ('122', 'F:\\tv_photos\\animation\\06.jpg');
INSERT INTO `movie_message` VALUES ('123', 'F:\\tv_photos\\animation\\06.jpg');
INSERT INTO `movie_message` VALUES ('124', 'F:\\tv_photos\\animation\\a1.jpg');
INSERT INTO `movie_message` VALUES ('125', 'F:\\tv_photos\\animation\\a2.jpg');
INSERT INTO `movie_message` VALUES ('126', 'F:\\tv_photos\\animation\\a3.jpg');
INSERT INTO `movie_message` VALUES ('127', 'F:\\tv_photos\\animation\\a4.jpg');
INSERT INTO `movie_message` VALUES ('128', 'F:\\tv_photos\\animation\\a5.jpg');
INSERT INTO `movie_message` VALUES ('129', 'F:\\tv_photos\\animation\\a6.jpg');
INSERT INTO `movie_message` VALUES ('13', 'F:\\tv_photos\\like\\b9.jpg');
INSERT INTO `movie_message` VALUES ('130', 'F:\\tv_photos\\animation\\a7.jpg');
INSERT INTO `movie_message` VALUES ('131', 'F:\\tv_photos\\animation\\a8.jpg');
INSERT INTO `movie_message` VALUES ('132', 'F:\\tv_photos\\animation\\a9.jpg');
INSERT INTO `movie_message` VALUES ('133', 'F:\\tv_photos\\animation\\a10.jpg');
INSERT INTO `movie_message` VALUES ('134', 'F:\\tv_photos\\animation\\a11.jpg');
INSERT INTO `movie_message` VALUES ('135', 'F:\\tv_photos\\animation\\a12.jpg');
INSERT INTO `movie_message` VALUES ('136', 'F:\\tv_photos\\animation\\b1.jpg');
INSERT INTO `movie_message` VALUES ('137', 'F:\\tv_photos\\animation\\b1.jpg');
INSERT INTO `movie_message` VALUES ('138', 'F:\\tv_photos\\animation\\b1.jpg');
INSERT INTO `movie_message` VALUES ('139', 'F:\\tv_photos\\animation\\b2.jpg');
INSERT INTO `movie_message` VALUES ('14', 'F:\\tv_photos\\like\\b10.jpg');
INSERT INTO `movie_message` VALUES ('140', 'F:\\tv_photos\\animation\\b2.jpg');
INSERT INTO `movie_message` VALUES ('141', 'F:\\tv_photos\\animation\\b2.jpg');
INSERT INTO `movie_message` VALUES ('142', 'F:\\tv_photos\\animation\\b3.jpg');
INSERT INTO `movie_message` VALUES ('143', 'F:\\tv_photos\\animation\\b3.jpg');
INSERT INTO `movie_message` VALUES ('144', 'F:\\tv_photos\\animation\\b3.jpg');
INSERT INTO `movie_message` VALUES ('145', 'F:\\tv_photos\\animation\\b3.jpg');
INSERT INTO `movie_message` VALUES ('146', 'F:\\tv_photos\\animation\\b4.jpg');
INSERT INTO `movie_message` VALUES ('147', 'F:\\tv_photos\\animation\\b4.jpg');
INSERT INTO `movie_message` VALUES ('148', 'F:\\tv_photos\\animation\\b4.jpg');
INSERT INTO `movie_message` VALUES ('149', 'F:\\tv_photos\\fitness\\a1.jpg');
INSERT INTO `movie_message` VALUES ('15', 'F:\\tv_photos\\like\\b10.jpg');
INSERT INTO `movie_message` VALUES ('150', 'F:\\tv_photos\\fitness\\a2.jpg');
INSERT INTO `movie_message` VALUES ('151', 'F:\\tv_photos\\fitness\\a3.jpg');
INSERT INTO `movie_message` VALUES ('152', 'F:\\tv_photos\\fitness\\a4.jpg');
INSERT INTO `movie_message` VALUES ('153', 'F:\\tv_photos\\fitness\\a5.jpg');
INSERT INTO `movie_message` VALUES ('154', 'F:\\tv_photos\\fitness\\a6.jpg');
INSERT INTO `movie_message` VALUES ('155', 'F:\\tv_photos\\fitness\\a7.jpg');
INSERT INTO `movie_message` VALUES ('156', 'F:\\tv_photos\\fitness\\01.jpeg');
INSERT INTO `movie_message` VALUES ('157', 'F:\\tv_photos\\fitness\\01.jpeg');
INSERT INTO `movie_message` VALUES ('158', 'F:\\tv_photos\\fitness\\02.jpeg');
INSERT INTO `movie_message` VALUES ('159', 'F:\\tv_photos\\fitness\\03.jpg');
INSERT INTO `movie_message` VALUES ('16', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('160', 'F:\\tv_photos\\fitness\\04.jpeg');
INSERT INTO `movie_message` VALUES ('161', 'F:\\tv_photos\\fitness\\05.jpg');
INSERT INTO `movie_message` VALUES ('162', 'F:\\tv_photos\\fitness\\06.jpg');
INSERT INTO `movie_message` VALUES ('163', 'F:\\tv_photos\\fitness\\07.jpg');
INSERT INTO `movie_message` VALUES ('164', 'F:\\tv_photos\\fitness\\08.jpg');
INSERT INTO `movie_message` VALUES ('165', 'F:\\tv_photos\\fitness\\09.jpg');
INSERT INTO `movie_message` VALUES ('166', 'F:\\tv_photos\\fitness\\10.jpg');
INSERT INTO `movie_message` VALUES ('167', 'F:\\tv_photos\\fitness\\11.jpg');
INSERT INTO `movie_message` VALUES ('168', 'F:\\tv_photos\\fitness\\12.jpg');
INSERT INTO `movie_message` VALUES ('169', 'F:\\tv_photos\\fitness\\13.jpg');
INSERT INTO `movie_message` VALUES ('17', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('170', 'F:\\tv_photos\\teach\\01.jpg');
INSERT INTO `movie_message` VALUES ('171', 'F:\\tv_photos\\teach\\02.jpg');
INSERT INTO `movie_message` VALUES ('172', 'F:\\tv_photos\\teach\\03.jpg');
INSERT INTO `movie_message` VALUES ('173', 'F:\\tv_photos\\teach\\04.jpg');
INSERT INTO `movie_message` VALUES ('174', 'F:\\tv_photos\\teach\\05.jpg');
INSERT INTO `movie_message` VALUES ('175', 'F:\\tv_photos\\teach\\06.jpg');
INSERT INTO `movie_message` VALUES ('176', 'F:\\tv_photos\\teach\\07.jpg');
INSERT INTO `movie_message` VALUES ('177', 'F:\\tv_photos\\teach\\08.jpg');
INSERT INTO `movie_message` VALUES ('178', 'F:\\tv_photos\\teach\\01.jpg');
INSERT INTO `movie_message` VALUES ('179', 'F:\\tv_photos\\teach\\02.jpg');
INSERT INTO `movie_message` VALUES ('18', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('180', 'F:\\tv_photos\\teach\\03.jpg');
INSERT INTO `movie_message` VALUES ('181', 'F:\\tv_photos\\teach\\04.jpg');
INSERT INTO `movie_message` VALUES ('182', 'F:\\tv_photos\\teach\\05.jpg');
INSERT INTO `movie_message` VALUES ('19', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('2', 'F:\\tv_photos\\main\\a2.jpg');
INSERT INTO `movie_message` VALUES ('20', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('21', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('22', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('23', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('24', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('25', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('26', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('27', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('28', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('29', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('3', 'F:\\tv_photos\\main\\a3.jpg');
INSERT INTO `movie_message` VALUES ('30', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('31', 'F:\\tv_photos\\liquidcarousel\\01.jpg');
INSERT INTO `movie_message` VALUES ('32', 'F:\\tv_photos\\liquidcarousel\\02.jpg');
INSERT INTO `movie_message` VALUES ('33', 'F:\\tv_photos\\liquidcarousel\\03.jpg');
INSERT INTO `movie_message` VALUES ('34', 'F:\\tv_photos\\liquidcarousel\\04.jpg');
INSERT INTO `movie_message` VALUES ('35', 'F:\\tv_photos\\liquidcarousel\\05.jpg');
INSERT INTO `movie_message` VALUES ('36', 'F:\\tv_photos\\liquidcarousel\\06.jpg');
INSERT INTO `movie_message` VALUES ('37', 'F:\\tv_photos\\liquidcarousel\\07.jpg');
INSERT INTO `movie_message` VALUES ('38', 'F:\\tv_photos\\liquidcarousel\\08.jpg');
INSERT INTO `movie_message` VALUES ('39', 'F:\\tv_photos\\liquidcarousel\\09.jpg');
INSERT INTO `movie_message` VALUES ('4', 'F:\\tv_photos\\main\\a3.jpg');
INSERT INTO `movie_message` VALUES ('40', 'F:\\tv_photos\\liquidcarousel\\10.jpg');
INSERT INTO `movie_message` VALUES ('41', 'F:\\tv_photos\\liquidcarousel\\11.jpg');
INSERT INTO `movie_message` VALUES ('42', 'F:\\tv_photos\\liquidcarousel\\12.jpg');
INSERT INTO `movie_message` VALUES ('43', 'F:\\tv_photos\\liquidcarousel\\13.jpg');
INSERT INTO `movie_message` VALUES ('44', 'F:\\tv_photos\\liquidcarousel\\14.jpg');
INSERT INTO `movie_message` VALUES ('45', 'F:\\tv_photos\\liquidcarousel\\15.jpg');
INSERT INTO `movie_message` VALUES ('46', 'F:\\tv_photos\\liquidcarousel\\16.jpg');
INSERT INTO `movie_message` VALUES ('47', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('48', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('49', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('5', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('50', 'F:\\tv_photos\\like\\b5.jpg');
INSERT INTO `movie_message` VALUES ('51', 'F:\\tv_photos\\like\\b6.jpg');
INSERT INTO `movie_message` VALUES ('52', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('53', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('54', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('55', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('56', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('57', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('58', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('59', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('6', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('60', 'F:\\tv_photos\\like\\b1.jpg');
INSERT INTO `movie_message` VALUES ('61', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('62', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('63', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('64', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('65', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('66', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('67', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('68', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('69', 'F:\\tv_photos\\like\\b2.jpg');
INSERT INTO `movie_message` VALUES ('7', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('70', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('71', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('72', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('73', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('74', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('75', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('76', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('77', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('78', 'F:\\tv_photos\\like\\b3.jpg');
INSERT INTO `movie_message` VALUES ('79', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('8', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('80', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('81', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('82', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('83', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('84', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('85', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('86', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('87', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('88', 'F:\\tv_photos\\like\\b4.jpg');
INSERT INTO `movie_message` VALUES ('89', 'F:\\tv_photos\\movie\\a1.jpg');
INSERT INTO `movie_message` VALUES ('9', 'F:\\tv_photos\\like\\b5.jpg');
INSERT INTO `movie_message` VALUES ('90', 'F:\\tv_photos\\movie\\a2.jpg');
INSERT INTO `movie_message` VALUES ('91', 'F:\\tv_photos\\movie\\a3.jpg');
INSERT INTO `movie_message` VALUES ('92', 'F:\\tv_photos\\movie\\a4.jpg');
INSERT INTO `movie_message` VALUES ('93', 'F:\\tv_photos\\movie\\a5.jpg');
INSERT INTO `movie_message` VALUES ('94', 'F:\\tv_photos\\movie\\a6.jpg');
INSERT INTO `movie_message` VALUES ('95', 'F:\\tv_photos\\movie\\a7.jpg');
INSERT INTO `movie_message` VALUES ('96', 'F:\\tv_photos\\movie\\a8.jpg');
INSERT INTO `movie_message` VALUES ('97', 'F:\\tv_photos\\movie\\a9.jpg');
INSERT INTO `movie_message` VALUES ('98', 'F:\\tv_photos\\movie\\a10.jpg');
INSERT INTO `movie_message` VALUES ('99', 'F:\\tv_photos\\movie\\a11.jpg');

-- ----------------------------
-- Table structure for `movie_recommand`
-- ----------------------------
DROP TABLE IF EXISTS `movie_recommand`;
CREATE TABLE `movie_recommand` (
  `id` varchar(255) NOT NULL,
  `movieId` varchar(255) NOT NULL,
  `recommand` varchar(255) NOT NULL,
  `tip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_recommand
-- ----------------------------
INSERT INTO `movie_recommand` VALUES ('01336689561949daa2e49a47653f8312', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('0156f6516b0d437ab36ceede628bd841', '162', 'mainFitness', null);
INSERT INTO `movie_recommand` VALUES ('019ca4ae87cf49c78677b7943ec81554', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('021f8d7aa03946b4a1799568622e4b56', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('030495f2ce254750b73c068467afef85', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('0664f5711a1941be9ba4598dcb579ae1', '59', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('081691e44e9d4827ad3c15291eb46961', '17', 'comedyMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('0872049df00d494aa15532773da1920a', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('0a8d96f4b027486498914f7baddde392', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('0abac2bdf5254cdb957d62e161f65ec8', '17', 'cantoneseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('0d57b7d65f59496c9d5c67b00afac0fd', '16', 'hotMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('0fd2e64538274719ba816eb7e0eb76c1', '34', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('101baf55a8874b5794b642610fcd1606', '40', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('13f253568e7a44729beddfcae4a351cc', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('149a89e229a94d8e9f6c9a945dee2d2f', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('18735233592f4750b7f51688fe6af8be', '53', 'guessLike', null);
INSERT INTO `movie_recommand` VALUES ('18bc75e4b7c8465bbcc0a5b742aa09ca', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('1ae2aa78a7534cf0bbe3d9450b03092d', '60', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('1bf99ac648aa41ffae576844f13ec85a', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('1c9ddeeb9acf4128941bf95ecdc2242f', '17', 'comedyMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('1d881def7ec049eab7c1f419052860c4', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('1e798b9dfa8a4ec8b69837c7151d1f4d', '6', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('209dbc2135234531b050e9354144d68c', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('21234b9febdc4d3698c4ecf101ea8767', '17', 'cantoneseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('224510403a5f4817a55c562425227c7e', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('23ce2d5e50f14049826cf549cfec0fda', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('243c072b2fbd4ef78195927e0c06d66a', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('248ce50120494b3f9650c28f4268dba1', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('249a977ca0164dd28cd9920719c1a9ef', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('24f2d171c0a246f781067d42465a3ef5', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('26ff1a989249421caa5080ea4ead3c69', '66', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('278f7b89783244898ed5e1554deb5e5e', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('28b94f0669434223a377443858c37b09', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('28ffc4e45bf64affac7357e595e3cf5f', '52', 'guessLike', null);
INSERT INTO `movie_recommand` VALUES ('293d7539b5d842fda63247aeb57acadf', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('294753d816a14b82b8ebeeebd6cbebc7', '12', 'upToDateMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('29a15f88a3634dd8b95d256efdc50970', '66', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('29f881032ece4da78ce38a5915af675c', '3', 'carouselBg', null);
INSERT INTO `movie_recommand` VALUES ('2a8613c28b45418fb930399d7df903d0', '56', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('2a96874195024627aceb7e28a18c6bf1', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('2ca60cc1ae8c42309048e30b05b63381', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('2cb2bd6b747d46ccac770cfa786a5ce3', '17', 'cantoneseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('2d00ccdbb74947d29749bba213f451f1', '97', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('2d4b5549d29f41aba6eb35841acb4fae', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('2dbd69d9f9d941d8bd46a720805d8102', '16', 'hotMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('2fc4024e3e164394977c194ed2aaab43', '2', 'carouselTv', 'null');
INSERT INTO `movie_recommand` VALUES ('305eb0d219404b7f8354615e84bd0d71', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('30a5a127861a4dcdaf6fd15f439613b1', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('31b85a763bec4ce69f39b6c5d0aa77cf', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('3214e68b1eac47e6b0139512d9a18a45', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('32e099b635f4488e9f6a86ba05c85d8d', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('3434b30060944ae7b4238b5d7e841323', '41', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('3555a30d9b794e78b5c2431de2f6980e', '178', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('3605e88fbe3145559f9298fe86410090', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('36ab64f887cf46e291f6a74bc2b1cb97', '12', 'upToDateMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('386bf1b200eb4358962c9442c11328e9', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('39673d7b15fa479fa29c8cc088ac52fe', '16', 'hotMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('39f0f4e7510a483ca848e67f6c2b1e13', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('3a85912977c24d2582eb453b8d34fa0d', '99', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('3afdb0c75235427085f2550fc9821f11', '17', 'cantoneseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('3b701e0e18884bcfa1fdd52c886bc253', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('3be3208bf77e4b5692bbfba6e536d3f0', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('3e6662ea2a2f4defa6d5e420137c568f', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('3e9a41dd98ff44f6987939c176447947', '53', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('40675969518345c4bcf06378133bd26a', '17', 'cantoneseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('410fb56f624247f29050b05dd186a104', '12', 'upToDateMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('413eda9be7644ca78bc38724b8b70a52', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('43aca1974ad84ca59aca909fc80ebe35', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('43bdcfd4b0a94c1f89deb03c50c29568', '56', 'guessLike', null);
INSERT INTO `movie_recommand` VALUES ('45e94f03dc2d4ee4a346c7986354910b', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('467d841a5f2c478484f7e184855b341f', '89', 'likeTv', 'null');
INSERT INTO `movie_recommand` VALUES ('47cf71f83ae34ef4be3e1c67bfc8b83d', '43', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('48227ec1643c4bdfaf98158266e68e56', '32', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('49556674a28945f8abd61f4221e72be7', '95', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('498eedab525d49c3acb84fb99c875c59', '17', 'comedyMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('4994427999e94917b81e0ae3d8dfd5e9', '89', 'likeTv', 'null');
INSERT INTO `movie_recommand` VALUES ('4a61a4733be8430c9a6d4c4c574017d6', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('4a86f8c854554b6d804d56918c36b674', '38', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('4ba4795b1fa54d69bf03974c7d4f7eed', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('4e2ebf8d4aa54933a69bb46a16b0f3f0', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('4ee9fba2a11848a0a8ebd7642ac56250', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('4f35beebe9aa4898b848c53ac496b1f6', '98', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('506d88aa59b747459d4b20af9d8ecc9a', '6', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('53a7ae2297c9470bb450885938b3e2d1', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('56c58c52f5054fc4b692905ca6e95da9', '43', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('574197ce84df48469efd335d848fbefd', '58', 'globalTv', 'null');
INSERT INTO `movie_recommand` VALUES ('574494155b6b41979c91d3bde109000a', '89', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('578165fba98447e3942fd8174d84be9a', '44', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('57a6e719ddca452fa0bde9d3d6ba100e', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('5a571fd7fe5e412cb2cfad70593357ac', '36', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('5bd5d59a8c8a406eb1e762b4c2a051e8', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('5c0e1fa8aba848679df4f603f6d4e49e', '91', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('5d0495072cba483ab6858a9497ca3a20', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('5f48f6370d2743f9a54216bd29ea7105', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('5f66671771844931813578e51bf4ba4d', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('61a51f4ed8e742328b2a9dbb33546a8f', '3', 'carouselTv', 'null');
INSERT INTO `movie_recommand` VALUES ('6275f6dd76224dcd9204b6594e4181f7', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('63335e4714a34cddb144e951c3018a22', '65', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('65de21c1c0794b0e9257cce19cf11079', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('65ebc1949ce240f9873b8b24971e8b16', '66', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('67b13c66d8d44331aeb28d9e6bebc4ff', '17', 'comedyMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('67cbfc57994e4b20b644b11966568de3', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('683a62caee00494bae68557dd13344f0', '94', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('6ad541179a0347149916176d7b649fad', '90', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('6d0fe7002e6c4189b85341af9d96da0e', '55', 'guessLike', null);
INSERT INTO `movie_recommand` VALUES ('6dda70bbc07948e28e524c980d725953', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('6e44bc04be62414a90d4196e48c23225', '172', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('6f79d137117d44ac848792143687924d', '57', 'guessLike', null);
INSERT INTO `movie_recommand` VALUES ('7019bc2522bb490a80d5aa392e6c522a', '63', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('71df240523114e09ab98ee39742cf1c7', '89', 'likeTv', 'null');
INSERT INTO `movie_recommand` VALUES ('71f3dde3dcbb4ef39259f8bf9c348d9a', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('7227989b264a48d890c078f78817046e', '17', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('73ddd98c94bd4fc896785f0c16176952', '46', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('742b16afcd1944c09f3256becb53b549', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('77be5f375b16447bb3b4bfd674915e7c', '175', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('77e5e91608c448b1be03ee75ce66907a', '40', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('78bb880689ca49d8a173116a3d0403f3', '42', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('79c443cc680c45b9b685e2c9dfb0f838', '89', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('7acd3559f92147acbc810adef148b49b', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('7adde7980c424d8f9f4e0501983eef3f', '57', 'globalTv', 'null');
INSERT INTO `movie_recommand` VALUES ('7b58a782551a47b780317d13db25d46e', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('7b8ba06dd94d4bb791528d5076598fc6', '73', 'thrillerTv', 'null');
INSERT INTO `movie_recommand` VALUES ('7bba4d32649c4a55b6f5d75da7f5b1c7', '149', 'mainFitness', null);
INSERT INTO `movie_recommand` VALUES ('7c8a1feff1764a9391164ed44197beb8', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('7d3ab2efd1c3429f9bf0713435d0081a', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('7e746a20ae894ae6b50bf8ee1e5db6d6', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('7f899124f2fd4945870e21b0a6af4ce7', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('80e2047d9a884590b90824389e0d2bc0', '64', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('81e4990333ef45f188c35f4f46537576', '89', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('81fce5736cdc442bb5ac29313c8ce435', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('820d5a88b0f04509bef9657b8db7088d', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('8659137b19564a84be6e72d1ce0ad85d', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('869d0f8a90e2480c902122ced2a38ac4', '172', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('873bdcd3e184470784b1b019badb56b9', '35', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('8a6c64ead5354851995b9799d41741c5', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('8aff4fb258d541b8ab6500d947c5cd17', '58', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('8c98edac62614c90b4af611ff2231573', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('8cee6fe5a33640799dd0066d5ef3eb27', '33', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('8d65752ee74b46af943a9d67564daaec', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('8e1016ef96294daeb7a67c293f9c46a0', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('8ea7735049db43148a3b270fc5ec90fa', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('9050a857a4b34d9187ee348815f88b0d', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('928f9a9b812047a4a270a58a0016bb63', '36', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('92c0c46e21e24c7bbaaa32ba6038c0b0', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('93c766c3800f45e583ece3788f6154b2', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('94093ed18045460b938a91f5ff8be722', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('9538def9408b46f5b9c01305605b3d69', '31', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('96670675e5d841758090672438f6294e', '73', 'thrillerTv', 'null');
INSERT INTO `movie_recommand` VALUES ('99f78bb2ed1e4e2887bf423c264147ac', '96', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('9c4098dfcb444169a57b464957fc9ae3', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('9c6788a36b954b1785e38a5af9f4382b', '42', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('9ce3181963974eaeb835648d9d542ac0', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('9d58806e281a4f9b9fcaaab719174c19', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('9da6136fafdb46a4b57cfcf07f8c4880', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('9eaa43176b204f05b17b7e199ec68fdd', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('a03cd1a788044affa60cd4a07ad40f74', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('a04d14399f0f4089a0759293647cf54b', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('a1edc57ccec141ef9861f92b8011c274', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('a2188c9f04c84319a29f6ee3cadf4ddc', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('a2683d1845dd4a01a21a5f48fc888677', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('a371113d30004dd690ab00b2cdf00fea', '16', 'hotMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('a6650016380e4281846d00239934cdfb', '73', 'thrillerTv', 'null');
INSERT INTO `movie_recommand` VALUES ('a6e41b2da8914829b31f6f8e5fb17fd4', '2', 'carouselBg', null);
INSERT INTO `movie_recommand` VALUES ('a8fb6c577d4f46aa87fc40d09e3a66aa', '53', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('a99d9092589a46aba91563f749e5b6c8', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('a9f9919987ee46e9920db5caaf260813', '73', 'thrillerTv', 'null');
INSERT INTO `movie_recommand` VALUES ('aa637ace25fd4faeb154504bcf15c19f', '167', 'mainFitness', null);
INSERT INTO `movie_recommand` VALUES ('aa7e9cb923e44cf684e9285c0ccc7310', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('abb910f2025247b0a6af1216b5307711', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('b01f640e08744a8caea5fe4654b6d67d', '17', 'cantoneseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('b13090db8b0d4a91a7f4128416b0a509', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('b15ab02544e84a9a8d1d2f3fa22ecc49', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('b1869bc8ca95422b82ecd4830d7cfefe', '62', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('b34d14532ab240baa2be0be225d55e06', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('b361679e927a404e958b5e9e55060baa', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('b3e717e804294a88b0d4f80b85da2d1e', '89', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('b439b006ebb1468497170a0c71658daf', '1', 'carouselTv', 'null');
INSERT INTO `movie_recommand` VALUES ('b4fe27b192fb4ec8899d7b3864b4867c', '89', 'likeTv', 'null');
INSERT INTO `movie_recommand` VALUES ('b5778728a9fd4b678151e2b5a2511bd5', '35', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('b763eb8e25f7420da4550a938219cab6', '89', 'likeTv', 'null');
INSERT INTO `movie_recommand` VALUES ('b8696374f42e498c8bf0b5e87750d60b', '31', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('ba6e411135664bca9fdee4128607504a', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('ba703a911ec848b8999282be21a26090', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('bb92eec9fd2546f6b13cae9017189b8a', '109', 'mainArt', 'china');
INSERT INTO `movie_recommand` VALUES ('bccd24206f27497db69715d28db26f65', '171', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('bd5a578dcb634cce8c926447ca1e21d4', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('bd6209cef73f45138ba34d0e92c0075b', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('be7037f9c34a47cca5d902883eaa88ef', '37', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('be821e972714466c85014c960ceeabf4', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('c0f194f1355045cba605687dd46bfdd4', '165', 'mainFitness', null);
INSERT INTO `movie_recommand` VALUES ('c12deb3407f54f49bb3a885bee26c6e5', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('c211d4e700284f10903d85c41028fc79', '16', 'hotMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('c3a793667f624c40985bd58948671be8', '34', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('c4fccdb113104642b38c25a9a9331d6a', '92', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('c53f240d06574c8f9630342dffe0c00b', '93', 'mainMovie', null);
INSERT INTO `movie_recommand` VALUES ('c5a6c60e366a4b4db675a528ff374069', '63', 'hkongTv', 'null');
INSERT INTO `movie_recommand` VALUES ('c632559aa261473bad2d1e773adc1970', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('c6c6cd567a3a4491a495d6974ce839c8', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('c716384f470c4b5fa951a3dc2be3dc79', '56', 'globalTv', 'null');
INSERT INTO `movie_recommand` VALUES ('c7240571dab3425a9063233258d40175', '17', 'comedyMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('c740fda617ea4ee190d926f773a1d01d', '61', 'classicRetro', null);
INSERT INTO `movie_recommand` VALUES ('c7b2c09a49394e7bab4ab3516a64d500', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('ca6b7df588184d16a6b3447676c94327', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('cb82d31bb08d40b4808eaa57f2445840', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('cbba9727aab34b03a3921b83c5ae853d', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('cef83102eada48b1901fa45a32a02d96', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('cfbc3223237447beb84f70e0da2b3547', '17', 'comedyMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('d2544c10f31e4df3b199e14373068a54', '3', 'carouselTv', 'null');
INSERT INTO `movie_recommand` VALUES ('d2eb8090e83241ab8ad5a476a035c75f', '12', 'upToDateMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('d33eb229581243acb8be399fa2e1070c', '33', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('d369b0e8c2664db6af007447963db77e', '32', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('d3dc2e9a6a8e4cb48de4caa472fe7ed8', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('d575d44d9cfa4ade805af23c9ba3306e', '11', 'likeMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('d882feced5f64354a2ca923c121c4368', '16', 'hotMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('d9aff0293f08474b84afe92d084973ea', '38', 'hotTv', 'null');
INSERT INTO `movie_recommand` VALUES ('d9c4a85d7d294e15ad0bf9caf3cd5980', '59', 'globalTv', 'null');
INSERT INTO `movie_recommand` VALUES ('dc6dcd9ba9a04cffaff62dc6645c2b4e', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('e0fd9a16c08449a298b12425cf71d7ea', '68', 'mainTv', 'hkong');
INSERT INTO `movie_recommand` VALUES ('e1d2603776c54b728866cb3aa13436f7', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('e25497cc54f54ea08928ea8a4b851e94', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('e2b724e9d4fd483bb777c41f3d373c04', '89', 'likeTv', 'null');
INSERT INTO `movie_recommand` VALUES ('e2c41c4536394bcebda5f33571ea4050', '89', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('e382c5f1cf3148a4a84a251feb0252a0', '80', 'artTv', 'null');
INSERT INTO `movie_recommand` VALUES ('e44ce6b33fd24ac5a50de7308e0a6be2', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('e53598ef41464dcab0339e64256bab22', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('e62b5ce68f8b463d869764392ba5e88b', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('e72e4b65dbec4579aa6ee7c2460e6bdd', '61', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('e85276e7235447679df3630d2d72e99e', '84', 'mainTv', 'japan');
INSERT INTO `movie_recommand` VALUES ('eb1a441241f34efb9db2c27cc3d6db4d', '12', 'upToDateMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('eb3e4af574b94defb077d400cc14c932', '61', 'copTv', 'null');
INSERT INTO `movie_recommand` VALUES ('eeedd035da1d42b0b1d77050f6a688e6', '54', 'guessLike', null);
INSERT INTO `movie_recommand` VALUES ('efe2f72eac724025bd1b908cd0675ae3', '55', 'globalTv', 'null');
INSERT INTO `movie_recommand` VALUES ('f16f6a45e65c45c8afbfe9cd7b25ecd5', '73', 'thrillerTv', 'null');
INSERT INTO `movie_recommand` VALUES ('f1ef8dd2183d479e9f231e34946656eb', '112', 'mainArt', 'overseas');
INSERT INTO `movie_recommand` VALUES ('f2a1b9ade79744cf916d061d95835a18', '56', 'americanTv', 'null');
INSERT INTO `movie_recommand` VALUES ('f301ffadcef0452799583772f3c76005', '13', 'chineseMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('f41163e781e04f3aa4998a9a00618299', '15', 'artMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('f5471f1db05d44c6bcccb8759a5024fc', '173', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('f6492d7c78c9462f8a58f873e8832394', '113', 'mainArt', 'japan');
INSERT INTO `movie_recommand` VALUES ('f7bc3efc5b6f45a6acd09feb33875ed9', '108', 'mainArt', 'hot');
INSERT INTO `movie_recommand` VALUES ('f7ca216d345c41d88143a68d7e804df8', '65', 'mainTv', 'upToDate');
INSERT INTO `movie_recommand` VALUES ('f923a97c9b424b44a91f1ab502c0ba24', '45', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('f96b3fe426fc477bb245bb1176f1b882', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('f98af8a165b14dfa88a51dd05b488533', '89', 'japanaTv', 'null');
INSERT INTO `movie_recommand` VALUES ('fa036f14bc1c41788589857352b3bad9', '10', 'hollywoodMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('fb88bbb0e45e4246900812ca24c29b0d', '170', 'mainTeach', null);
INSERT INTO `movie_recommand` VALUES ('fbadd8f1abdc4db7ae4b319e33ef28c8', '7', 'loveTv', 'null');
INSERT INTO `movie_recommand` VALUES ('fd8efd04f68c4f4fb0ccb362f2bc586e', '73', 'thrillerTv', 'null');
INSERT INTO `movie_recommand` VALUES ('fd9313ecccc14ef7aa92b36751ad4ee6', '37', 'currentHot', null);
INSERT INTO `movie_recommand` VALUES ('ff02ec56f621488ba023d5d2f9e59e15', '12', 'upToDateMovie', 'null');
INSERT INTO `movie_recommand` VALUES ('ff36c212655b47aa81dd170ef86ef150', '110', 'mainArt', 'hkong');
INSERT INTO `movie_recommand` VALUES ('ffe1b3f70e3a4fb7923297991f8ae608', '41', 'currentHot', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loginTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('40fb818eeef54d3ba71acabf45af8d3a', 'bbb', 'bbb', 'xzc524813657@sina.com', '2016-04-08 15:55:16');
INSERT INTO `user` VALUES ('6d88afe91eb14aba9e1e9b36e72846e5', 'aaa', 'aaa', 'xzc524813657@sina.com', '2016-04-08 15:53:35');
INSERT INTO `user` VALUES ('cb6f473bf9724deb832638bb67bb0fd0', 'ddd', 'ddd', 'xzc524813657@sina.com', '2016-04-08 15:56:15');
INSERT INTO `user` VALUES ('dec797bdc96f4931923fc7bd0a14fa39', 'xzc', 'xzc', 'xzc524813657@sina.com', '2016-04-08 15:38:51');
