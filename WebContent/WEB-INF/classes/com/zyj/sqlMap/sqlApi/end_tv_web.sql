/*
Navicat MySQL Data Transfer

Source Server         : xie
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : end_tv_web

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-04-07 18:48:46
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
INSERT INTO `movie` VALUES ('1', '1', 'dfs', 'carouselBg', 'sdf', '11', 'sdfs', 'sdfsd', '123', '2016-04-05');
INSERT INTO `movie` VALUES ('10', '10', 'sdf', 'likeMovie', 'sf', '7', 'sf', null, '23', null);
INSERT INTO `movie` VALUES ('100', '100', 'sdfsd', 'artCarousel', null, '4', 'ad', null, '5', null);
INSERT INTO `movie` VALUES ('101', '101', 'sdf', 'artCarousel', null, '5', 'ds', null, '6', null);
INSERT INTO `movie` VALUES ('102', '102', 'sf', 'artCarousel', null, '3', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('103', '103', 'sdf', 'artCarousel', null, '4', 'df', null, '3', null);
INSERT INTO `movie` VALUES ('104', '104', 'sdf', 'artCarousel', null, '4', 'af', null, '4', null);
INSERT INTO `movie` VALUES ('105', '105', 'sdf', 'art', null, '5', 'sd', null, '5', null);
INSERT INTO `movie` VALUES ('106', '106', 'sdf', 'art', null, '6', 'af', null, '6', null);
INSERT INTO `movie` VALUES ('107', '107', 'sdf', 'art', null, '3', 'df', null, '2', null);
INSERT INTO `movie` VALUES ('108', '108', 'sdf', 'art', null, '2', 'w', null, '4', null);
INSERT INTO `movie` VALUES ('109', '109', 'sdf', 'art', null, '4', 'sdf', null, '6', null);
INSERT INTO `movie` VALUES ('11', '11', 'sdf', 'likeMovie', null, '4', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('110', '110', 'sdf', 'art', null, '6', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('111', '111', 'sdf', 'art', null, '7', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('112', '112', 'sdf', 'art', null, '7', 'sf', null, '6', null);
INSERT INTO `movie` VALUES ('113', '113', 'sdf', 'art', null, '4', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('114', '114', 'sdf', 'art', null, '2', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('115', '115', 'sdf', 'art', null, '4', 'sf', null, '8', null);
INSERT INTO `movie` VALUES ('116', '116', 'sdf', 'art', null, '7', 'sf', null, '5', null);
INSERT INTO `movie` VALUES ('117', '117', 'adf', 'animationCarousel', null, '5', 'dfg', null, '3', null);
INSERT INTO `movie` VALUES ('118', '118', 'adf', 'animationCarousel', null, '6', 'fg', null, '4', null);
INSERT INTO `movie` VALUES ('119', '119', 'afd', 'animationCarousel', null, '7', 'dfg', null, '6', null);
INSERT INTO `movie` VALUES ('12', '12', 'sdf', 'likeMovie', null, '5', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('120', '120', 'adf', 'animationCarousel', null, '9', 'dg', null, '7', null);
INSERT INTO `movie` VALUES ('121', '121', 'af', 'animationCarousel', null, '4', 'g', null, '2', null);
INSERT INTO `movie` VALUES ('122', '122', 'af', 'animationCarousel', null, '4', 'd', null, '3', null);
INSERT INTO `movie` VALUES ('123', '123', 'df', 'animationCarousel', null, '7', 'g', null, '6', null);
INSERT INTO `movie` VALUES ('124', '124', 'sdf', 'newAnimation', null, '6', 'sdf', null, '5', null);
INSERT INTO `movie` VALUES ('125', '125', 'sf', 'newAnimation', null, '8', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('126', '126', 'sdf', 'newAnimation', null, '9', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('127', '127', 'adf', 'newAnimation', null, '6', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('128', '128', 'af', 'newAnimation', null, '5', 'sdf', null, '45', null);
INSERT INTO `movie` VALUES ('129', '129', 'sdf', 'newAnimation', null, '7', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('13', '13', 'sdf', 'likeMovie', null, '6', 'sf', null, '23', null);
INSERT INTO `movie` VALUES ('130', '130', 'sa', 'newAnimation', null, '8', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('131', '131', 'af', 'newAnimation', null, '3', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('132', '132', 'sd', 'newAnimation', null, '4', 'df', null, '5', null);
INSERT INTO `movie` VALUES ('133', '133', 'adf', 'newAnimation', null, '3', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('134', '134', 'saf', 'newAnimation', null, '3', 'sdf', null, '8', null);
INSERT INTO `movie` VALUES ('135', '135', 'df', 'newAnimation', null, '9', 'sdf', null, '9', null);
INSERT INTO `movie` VALUES ('136', '136', 'df', 'popularAnimation', null, '4', 'fg', null, '1', null);
INSERT INTO `movie` VALUES ('137', '137', 'sdf', 'popularAnimation', null, '4', 'df', null, '2', null);
INSERT INTO `movie` VALUES ('138', '138', 'sd', 'popularAnimation', null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('139', '139', 'sd', 'popularAnimation', null, '4', 'sf', null, '2', null);
INSERT INTO `movie` VALUES ('14', '14', 'sdf', 'likeMovie', null, '5', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('140', '140', 'fd', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('141', '141', 'df', 'popularAnimation', null, '4', 'sd', null, '1', null);
INSERT INTO `movie` VALUES ('142', '142', 'adf', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('143', '143', 'sd', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('144', '144', 'df', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('145', '145', 'fd', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('146', '146', 'sd', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('147', '147', 'fd', 'popularAnimation', null, '4', 'sdf', null, '1', null);
INSERT INTO `movie` VALUES ('148', '148', 'sdf', 'popularAnimation', null, '4', 'fd', null, '1', null);
INSERT INTO `movie` VALUES ('149', '149', 'gf', 'fitnessCarousel', null, '5', 'dgf', null, '2', null);
INSERT INTO `movie` VALUES ('15', '15', 'sdf', 'likeMovie', null, '45', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('150', '150', 'sdf', 'fitnessCarousel', null, '5', 'dfg', null, '2', null);
INSERT INTO `movie` VALUES ('151', '151', 'sdf', 'fitnessCarousel', null, '5', 'df', null, '5', null);
INSERT INTO `movie` VALUES ('152', '152', 'sdf', 'fitnessCarousel', null, '5', 'g', null, '2', null);
INSERT INTO `movie` VALUES ('153', '153', 'sf', 'fitnessCarousel', null, '5', 'fd', null, '8', null);
INSERT INTO `movie` VALUES ('154', '154', 'sf', 'fitnessCarousel', null, '5', 'df', null, '8', null);
INSERT INTO `movie` VALUES ('155', '155', 'sf', 'fitnessCarousel', null, '5', 'df', null, '8', null);
INSERT INTO `movie` VALUES ('156', '156', 'sdf', 'fitness', null, '56', 'gh', null, '9', null);
INSERT INTO `movie` VALUES ('157', '157', 'sdf', 'fitness', null, '2', 'gfh', null, '5', null);
INSERT INTO `movie` VALUES ('158', '158', 'sd', 'fitness', null, '3', 'fgh', null, '2', null);
INSERT INTO `movie` VALUES ('159', '159', 'sd', 'fitness', null, '8', 'fgh', null, '1', null);
INSERT INTO `movie` VALUES ('16', '16', 'sdf', 'likeMovie', null, '23', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('160', '160', 'sf', 'fitness', null, '2', 'fgh', null, '2', null);
INSERT INTO `movie` VALUES ('161', '161', 'sf', 'fitness', null, '1', 'fh', null, '6', null);
INSERT INTO `movie` VALUES ('162', '162', 'df', 'fitness', null, '7', 'fgh', null, '6', null);
INSERT INTO `movie` VALUES ('163', '163', 'sdf', 'fitness', null, '1', 'fh', null, '5', null);
INSERT INTO `movie` VALUES ('164', '164', 'sf', 'fitness', null, '3', 'fh', null, '2', null);
INSERT INTO `movie` VALUES ('165', '165', 'sf', 'fitness', null, '1', 'fh', null, '4', null);
INSERT INTO `movie` VALUES ('166', '166', 'sdf', 'fitness', null, '6', 'fgh', null, '2', null);
INSERT INTO `movie` VALUES ('167', '167', 'sdf', 'fitness', null, '2', 'gh', null, '4', null);
INSERT INTO `movie` VALUES ('168', '168', 'sf', 'fitness', null, '1', 'fhg', null, '4', null);
INSERT INTO `movie` VALUES ('169', '169', 'sf', 'fitness', null, '4', 'fh', null, '9', null);
INSERT INTO `movie` VALUES ('17', '17', 'sdf', 'likeMovie', null, '2', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('170', '170', 'ssd', 'teach', null, '1', 'sd', null, '2', null);
INSERT INTO `movie` VALUES ('171', '171', 'df', 'teach', null, '2', 'sdf', null, '5', null);
INSERT INTO `movie` VALUES ('172', '172', 'sdf', 'teach', null, '1', 'sd', null, '4', null);
INSERT INTO `movie` VALUES ('173', '173', 'sdf', 'teach', null, '1', 'sd', null, '2', null);
INSERT INTO `movie` VALUES ('174', '174', 'sd', 'teach', null, '1', 'd', null, '6', null);
INSERT INTO `movie` VALUES ('175', '175', 'dsf', 'teach', null, '1', 'f', null, '4', null);
INSERT INTO `movie` VALUES ('176', '176', 'sdf', 'teach', null, '1', 'a', null, '5', null);
INSERT INTO `movie` VALUES ('177', '177', 'sdfsd', 'teach', null, '1', 'df', null, '8', null);
INSERT INTO `movie` VALUES ('178', '178', 'ds', 'teach', null, '1', 'sd', null, '6', null);
INSERT INTO `movie` VALUES ('179', '179', 'hd', 'teach', null, '1', 'we', null, '9', null);
INSERT INTO `movie` VALUES ('18', '18', 'sf', 'likeMovie', null, '1', 'sdf', null, '233', null);
INSERT INTO `movie` VALUES ('180', '180', 'qe', 'teach', null, '1', 'we', null, '4', null);
INSERT INTO `movie` VALUES ('181', '181', 'df', 'teach', null, '1', 'g', null, '1', null);
INSERT INTO `movie` VALUES ('182', '182', 'df', 'teach', null, '1', 'd', null, '2', null);
INSERT INTO `movie` VALUES ('19', '19', 'sf', 'likeMovie', null, '2', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('2', '2', 'dfd', 'carouselBg', 'sdf', '11', 'sdfs', 'sdf', '5465', '2016-04-06');
INSERT INTO `movie` VALUES ('20', '20', 'sf', 'likeMovie', null, '3', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('21', '21', 'sdf', 'likeMovie', null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('22', '22', 'sg', 'likeMovie', null, '5', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('23', '23', 'sdf', 'likeMovie', null, '6', 'df', null, '23', null);
INSERT INTO `movie` VALUES ('24', '24', 'we', 'likeMovie', null, '7', 'sdf', null, '43', null);
INSERT INTO `movie` VALUES ('25', '25', 'gs', 'likeMovie', null, '8', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('26', '26', 'sg', 'likeMovie', null, '9', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('27', '27', 'sgs', 'likeMovie', null, '0', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('28', '28', 'sg', 'likeMovie', null, '0', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('29', '29', 'sg', 'likeMovie', null, '0', 'sd', null, '23', null);
INSERT INTO `movie` VALUES ('3', '3', 'df', 'tv', 'sdf', '12', 'sdfsd', 'sdf', 'sdf', '2016-04-19');
INSERT INTO `movie` VALUES ('30', '30', 'xcv', 'likeMovie', null, '0', 'dsf', null, '34', null);
INSERT INTO `movie` VALUES ('31', '31', 'adf', 'liquidCarousel', null, '23', 'dfs', null, '34', null);
INSERT INTO `movie` VALUES ('32', '32', 'sd', 'liquidCarousel', null, '12', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('33', '33', 'sdf', 'liquidCarousel', null, '22', 'df', null, '43', null);
INSERT INTO `movie` VALUES ('34', '34', 'sdf', 'liquidCarousel', null, '1', 'dsf', null, '23', null);
INSERT INTO `movie` VALUES ('35', '35', 'sdf', 'liquidCarousel', null, '2', 'sdf', null, '123', null);
INSERT INTO `movie` VALUES ('36', '36', 'sdf', 'liquidCarousel', null, '3', 'sdf', null, '32', null);
INSERT INTO `movie` VALUES ('37', '37', 'sd', 'liquidCarousel', null, '4', 'g', null, '34', null);
INSERT INTO `movie` VALUES ('38', '38', 'sd', 'liquidCarousel', null, '5', 'ds', null, '34', null);
INSERT INTO `movie` VALUES ('39', '39', 'df', 'liquidCarousel', null, '6', 'sdf', null, '34', null);
INSERT INTO `movie` VALUES ('4', '4', 'df', 'carouselBg', 'sdf', '2', 'sdf', 'sdf', 'sdf', '2016-04-25');
INSERT INTO `movie` VALUES ('40', '40', 'df', 'liquidCarousel', null, '7', 'we', null, '23', null);
INSERT INTO `movie` VALUES ('41', '41', 'df', 'liquidCarousel', null, '4', 'wer', null, '23', null);
INSERT INTO `movie` VALUES ('42', '42', 'df', 'liquidCarousel', null, '3', 'gs', null, '53', null);
INSERT INTO `movie` VALUES ('43', '43', 'df', 'liquidCarousel', null, '5', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('44', '44', 'df', 'liquidCarousel', null, '6', 'gsd', null, '23', null);
INSERT INTO `movie` VALUES ('45', '45', 'dsf', 'liquidCarousel', null, '7', 'gs', null, '23', null);
INSERT INTO `movie` VALUES ('46', '46', 'df', 'liquidCarousel', null, '9', 'we', null, '234', null);
INSERT INTO `movie` VALUES ('47', '47', 'sdf', 'oldMovie', null, '5', 'dg', null, '2', null);
INSERT INTO `movie` VALUES ('48', '48', 'sdf', 'oldMovie', null, '4', 'df', null, '3', null);
INSERT INTO `movie` VALUES ('49', '49', 'saf', 'oldMovie', null, '5', 'dfg', null, '4', null);
INSERT INTO `movie` VALUES ('5', '5', '大话西游', 'likeMovie', 'ddf', '8', 'sfs', 'dfds', 'sdf', '2016-04-14');
INSERT INTO `movie` VALUES ('50', '50', 'sdf', 'oldMovie', null, '6', 'dfg', null, '5', null);
INSERT INTO `movie` VALUES ('51', '51', 'sdf', 'oldMovie', null, '3', 'dg', null, '6', null);
INSERT INTO `movie` VALUES ('52', '52', 'dsf', 'oldMovie', null, '4', 'gd', null, '2', null);
INSERT INTO `movie` VALUES ('53', '53', 'sdf', 'newTv', null, '3', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('54', '54', 'sdf', 'newTv', null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('55', '55', 'sdf', 'newTv', null, '5', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('56', '56', 'sdf', 'newTv', null, '6', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('57', '57', 'sdf', 'newTv', null, '7', 'gd', null, '5', null);
INSERT INTO `movie` VALUES ('58', '58', 'sdf', 'newTv', null, '2', 'sd', null, '6', null);
INSERT INTO `movie` VALUES ('59', '59', 'sdf', 'newTv', null, '3', 'we', null, '7', null);
INSERT INTO `movie` VALUES ('6', '6', 'sdf', 'likeMovie', 'df', '7', 'dg', 'dfg', 'fdg', '2016-04-20');
INSERT INTO `movie` VALUES ('60', '60', 'sdf', 'newTv', null, '4', 'gg', null, '8', null);
INSERT INTO `movie` VALUES ('61', '61', 'sdf', 'newTv', null, '5', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('62', '62', 'sdf', 'koreaTv', null, '6', 'adf', null, '5', null);
INSERT INTO `movie` VALUES ('63', '63', 'sdf', 'koreaTv', null, '7', 'gdd', null, '7', null);
INSERT INTO `movie` VALUES ('64', '64', 'sdf', 'koreaTv', null, '2', 'we', null, '8', null);
INSERT INTO `movie` VALUES ('65', '65', 'sdf', 'koreaTv', null, '3', 'dfg', null, '9', null);
INSERT INTO `movie` VALUES ('66', '66', 'sdf', 'koreaTv', null, '5', 'wer', null, '0', null);
INSERT INTO `movie` VALUES ('67', '67', 'sf', 'koreaTv', null, '6', 'wer', null, '8', null);
INSERT INTO `movie` VALUES ('68', '68', 'ad', 'koreaTv', null, '4', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('69', '69', 'sdf', 'koreaTv', null, '7', 'sa', null, '4', null);
INSERT INTO `movie` VALUES ('7', '7', 'dg', 'likeMovie', 'sf', '6', 'sdf', 'sdf', 'sdf', '2016-04-20');
INSERT INTO `movie` VALUES ('70', '70', 'adf', 'koreaTv', null, '4', 'sdf', null, '5', null);
INSERT INTO `movie` VALUES ('71', '71', 'sdf', 'englishTv', null, '3', 'sdf', null, '6', null);
INSERT INTO `movie` VALUES ('72', '72', 'adf', 'englishTv', null, '4', 'dsf', null, '4', null);
INSERT INTO `movie` VALUES ('73', '73', 'df', 'englishTv', null, '5', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('74', '74', 'df', 'englishTv', null, '2', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('75', '75', 'sd', 'englishTv', null, '3', 'aa', null, '5', null);
INSERT INTO `movie` VALUES ('76', '76', 'sa', 'englishTv', null, '5', 'we', null, '4', null);
INSERT INTO `movie` VALUES ('77', '77', 'sdf', 'englishTv', null, '3', 'df', null, '3', null);
INSERT INTO `movie` VALUES ('78', '78', 'ad', 'englishTv', null, '5', 'gd', null, '5', null);
INSERT INTO `movie` VALUES ('79', '79', 'sf', 'englishTv', null, '6', 'gd', null, '6', null);
INSERT INTO `movie` VALUES ('8', '8', 'gd', 'likeMovie', 'sdf', '4', 'sdf', 'sf', 'sdf', '2016-04-20');
INSERT INTO `movie` VALUES ('80', '80', 'sdf', 'hkTv', null, '6', 'sd', null, '6', null);
INSERT INTO `movie` VALUES ('81', '81', 'sdf', 'hkTv', null, '4', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('82', '82', 'sdf', 'hkTv', null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('83', '83', 'sdf', 'hkTv', null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('84', '84', 'sdf', 'hkTv', null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('85', '85', 'sdf', 'hkTv', null, '3', 'sfd', null, '7', null);
INSERT INTO `movie` VALUES ('86', '86', 'gsdg', 'hkTv', null, '6', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('87', '87', 'sdf', 'hkTv', null, '6', 'sdf', null, '7', null);
INSERT INTO `movie` VALUES ('88', '88', 'sd', 'hkTv', null, '6', 'sf', null, '7', null);
INSERT INTO `movie` VALUES ('89', '89', 'sdf', 'movie', null, '6', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('9', '9', 'sdf', 'likeMovie', 'sdf', '7', 'sdf', 'sdf', 'sdf', '2016-04-12');
INSERT INTO `movie` VALUES ('90', '90', 'sdf', 'movie', null, '4', 'sf', null, '4', null);
INSERT INTO `movie` VALUES ('91', '91', 'sdf', 'movie', null, '7', 'sd', null, '5', null);
INSERT INTO `movie` VALUES ('92', '92', 'sd', 'movie', null, '8', 'df', null, '6', null);
INSERT INTO `movie` VALUES ('93', '93', 'sdf', 'movie', null, '5', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('94', '94', 'sdf', 'movie', null, '6', 'sdf', null, '23', null);
INSERT INTO `movie` VALUES ('95', '95', 'sdf', 'movie', null, '8', 'sdf', null, '4', null);
INSERT INTO `movie` VALUES ('96', '96', 'dsf', 'movie', null, '9', 'sd', null, '5', null);
INSERT INTO `movie` VALUES ('97', '97', 'sdf', 'movie', null, '0', 'sdf', null, '2', null);
INSERT INTO `movie` VALUES ('98', '98', 'sdf', 'movie', null, '7', 'sdf', null, '3', null);
INSERT INTO `movie` VALUES ('99', '99', 'sdf', 'movie', null, '3', 'sd', null, '5', null);

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
