/*
Navicat MySQL Data Transfer

Source Server         : Localhost_MySQL
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : dbsimpin

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2023-12-12 10:37:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES ('1', 'BCA (Bank Central of Asia)');
INSERT INTO `banks` VALUES ('3', 'BNI');
INSERT INTO `banks` VALUES ('4', 'BRI');
INSERT INTO `banks` VALUES ('53', 'Danamon');
INSERT INTO `banks` VALUES ('54', 'Mayapada');
INSERT INTO `banks` VALUES ('55', 'HSBC');
INSERT INTO `banks` VALUES ('56', 'Muamalat');
INSERT INTO `banks` VALUES ('57', 'Mandiri');

-- ----------------------------
-- Table structure for data_omi
-- ----------------------------
DROP TABLE IF EXISTS `data_omi`;
CREATE TABLE `data_omi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `thn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bln` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nominal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `potongan_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_omi
-- ----------------------------
INSERT INTO `data_omi` VALUES ('1', '4378', '2023', '9', '388,800', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('2', '5218', '2023', '9', '0', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('3', '3598', '2023', '9', '0', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('4', '3599', '2023', '9', '950,400', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('5', '3975', '2023', '9', '556,100', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('6', '6796', '2023', '9', '0', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('7', '5664', '2023', '9', '150,500', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('8', '3337', '2023', '9', '1,000,000', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('9', '5623', '2023', '9', '498,500', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('10', '6795', '2023', '9', '41,100', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('11', '6621', '2023', '9', '94,500', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('12', '3608', '2023', '9', '0', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('13', '4965', '2023', '9', '643,000', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('14', '5663', '2023', '9', '130,000', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('15', '3600', '2023', '9', '0', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('16', '3618', '2023', '9', '484,900', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('17', '5175', '2023', '9', '991,900', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('18', '6805', '2023', '9', '0', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('19', '4384', '2023', '9', '983,200', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('20', '6564', '2023', '9', '464,300', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('21', '3968', '2023', '9', '230,000', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('22', '3616', '2023', '9', '1,000,000', null, '2023-12-06 11:32:23', '2023-12-06 11:32:23');
INSERT INTO `data_omi` VALUES ('23', '3748', '2023', '9', '159,650', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('24', '3746', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('25', '5919', '2023', '9', '164,700', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('26', '6372', '2023', '9', '1,000,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('27', '4967', '2023', '9', '81,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('28', '6807', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('29', '3970', '2023', '9', '298,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('30', '3360', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('31', '3961', '2023', '9', '254,300', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('32', '6812', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('33', '6870', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('34', '4271', '2023', '9', '801,300', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('35', '4969', '2023', '9', '338,800', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('36', '6799', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('37', '4884', '2023', '9', '237,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('38', '6658', '2023', '9', '1,000,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('39', '2574', '2023', '9', '997,550', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('40', '4970', '2023', '9', '177,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('41', '3967', '2023', '9', '213,600', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('42', '3611', '2023', '9', '999,600', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('43', '6813', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('44', '6375', '2023', '9', '320,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('45', '2079', '2023', '9', '142,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('46', '4273', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('47', '3613', '2023', '9', '995,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('48', '6521', '2023', '9', '118,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('49', '5521', '2023', '9', '192,150', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('50', '6723', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('51', '6802', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('52', '6659', '2023', '9', '554,200', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('53', '6236', '2023', '9', '308,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('54', '4276', '2023', '9', '678,300', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('55', '4277', '2023', '9', '486,600', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('56', '6168', '2023', '9', '598,650', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('57', '6801', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('58', '3964', '2023', '9', '977,800', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('59', '3340', '2023', '9', '514,400', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('60', '6626', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('61', '6549', '2023', '9', '63,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('62', '4972', '2023', '9', '775,150', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('63', '3607', '2023', '9', '990,850', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('64', '6798', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('65', '6808', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('66', '4973', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('67', '3602', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('68', '4974', '2023', '9', '373,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('69', '6806', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('70', '5907', '2023', '9', '44,600', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('71', '4975', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('72', '6800', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('73', '6871', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('74', '6695', '2023', '9', '473,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('75', '6809', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('76', '3965', '2023', '9', '242,500', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('77', '3622', '2023', '9', '873,950', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('78', '6900', '2023', '9', '496,325', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('79', '6884', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('80', '4060', '2023', '9', '226,400', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('81', '2587', '2023', '9', '1,000,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('82', '5622', '2023', '9', '244,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('83', '6843', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('84', '6877', '2023', '9', '254,300', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('85', '4979', '2023', '9', '199,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('86', '3609', '2023', '9', '993,200', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('87', '3623', '2023', '9', '1,000,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('88', '6741', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('89', '3406', '2023', '9', '218,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('90', '6090', '2023', '9', '287,400', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('91', '4980', '2023', '9', '379,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('92', '5817', '2023', '9', '630,800', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('93', '3971', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('94', '3758', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('95', '3341', '2023', '9', '105,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('96', '6887', '2023', '9', '142,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('97', '5333', '2023', '9', '892,900', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('98', '4981', '2023', '9', '873,400', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('99', '4284', '2023', '9', '505,400', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('100', '6875', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('101', '6622', '2023', '9', '79,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('102', '5773', '2023', '9', '955,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('103', '3974', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('104', '6749', '2023', '9', '192,300', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('105', '6811', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('106', '3597', '2023', '9', '543,800', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('107', '2636', '2023', '9', '228,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('108', '6804', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('109', '6688', '2023', '9', '411,800', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('110', '4982', '2023', '9', '500,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('111', '5520', '2023', '9', '504,500', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('112', '3615', '2023', '9', '998,350', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('113', '6906', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('114', '6797', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('115', '4376', '2023', '9', '984,700', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('116', '6084', '2023', '9', '234,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('117', '2589', '2023', '9', '0', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('118', '4889', '2023', '9', '140,700', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('119', '5363', '2023', '9', '123,300', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('120', '3604', '2023', '9', '999,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('121', '3969', '2023', '9', '1,000,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('122', '3747', '2023', '9', '729,250', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('123', '3972', '2023', '9', '369,400', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('124', '4385', '2023', '9', '729,100', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('125', '4382', '2023', '9', '500,000', null, '2023-12-06 11:32:24', '2023-12-06 11:32:24');
INSERT INTO `data_omi` VALUES ('126', '4379', '2023', '9', '228,400', null, '2023-12-06 11:32:25', '2023-12-06 11:32:25');
INSERT INTO `data_omi` VALUES ('127', '6810', '2023', '9', '0', null, '2023-12-06 11:32:25', '2023-12-06 11:32:25');
INSERT INTO `data_omi` VALUES ('128', '5365', '2023', '9', '225,100', null, '2023-12-06 11:32:25', '2023-12-06 11:32:25');
INSERT INTO `data_omi` VALUES ('129', '5366', '2023', '9', '464,850', null, '2023-12-06 11:32:25', '2023-12-06 11:32:25');
INSERT INTO `data_omi` VALUES ('130', '4985', '2023', '9', '223,800', null, '2023-12-06 11:32:25', '2023-12-06 11:32:25');

-- ----------------------------
-- Table structure for data_pinjaman
-- ----------------------------
DROP TABLE IF EXISTS `data_pinjaman`;
CREATE TABLE `data_pinjaman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `jenis_pinjaman_id` int DEFAULT NULL,
  `nag` varchar(50) DEFAULT NULL,
  `no_berkas` varchar(255) DEFAULT NULL,
  `disetujui` varchar(255) DEFAULT NULL,
  `angsuran` varchar(255) DEFAULT NULL,
  `mulai` date DEFAULT NULL,
  `selesai` date DEFAULT NULL,
  `is_lunas` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_pinjaman
-- ----------------------------
INSERT INTO `data_pinjaman` VALUES ('1', '4', '5333', null, '40000000', '24', '2022-04-20', '2024-03-20', '0', '2023-12-08 11:20:35', '2023-12-08 11:20:35');

-- ----------------------------
-- Table structure for data_pinjaman_detail
-- ----------------------------
DROP TABLE IF EXISTS `data_pinjaman_detail`;
CREATE TABLE `data_pinjaman_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_pinjaman_id` int DEFAULT NULL,
  `periode` date DEFAULT NULL,
  `angsuran_pinjaman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bunga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `total_angsuran` varchar(255) DEFAULT NULL,
  `sisa_pinjaman` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_pinjaman_detail
-- ----------------------------
INSERT INTO `data_pinjaman_detail` VALUES ('1', '1', '2022-04-20', '1667000   ', '500000', '2167000   ', '38333000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('2', '1', '2022-05-20', '1667000   ', '479163', '2146163   ', '36666000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('3', '1', '2022-06-20', '1667000   ', '458325', '2125325   ', '34999000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('4', '1', '2022-07-20', '1667000   ', '437488', '2104488   ', '33332000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('5', '1', '2022-08-20', '1667000   ', '416650', '2083650   ', '31665000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('6', '1', '2022-09-20', '1667000   ', '395813', '2062813   ', '29998000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('7', '1', '2022-10-20', '1667000   ', '374975', '2041975   ', '28331000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('8', '1', '2022-11-20', '1667000   ', '354138', '2021138   ', '26664000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('9', '1', '2022-12-20', '1667000   ', '333300', '2000300   ', '24997000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('10', '1', '2023-01-20', '1667000   ', '312463', '1979463   ', '23330000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('11', '1', '2023-02-20', '1667000   ', '291625', '1958625   ', '21663000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('12', '1', '2023-03-20', '1667000   ', '270788', '1937788   ', '19996000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('13', '1', '2023-04-20', '1667000   ', '249950', '1916950   ', '18329000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('14', '1', '2023-05-20', '1667000   ', '229113', '1896113   ', '16662000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('15', '1', '2023-06-20', '1667000   ', '208275', '1875275   ', '14995000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('16', '1', '2023-07-20', '1667000   ', '187438', '1854438   ', '13328000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('17', '1', '2023-08-20', '1667000   ', '166600', '1833600   ', '11661000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('18', '1', '2023-09-20', '1667000   ', '145763', '1812763   ', '9994000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('19', '1', '2023-10-20', '1667000   ', '124925', '1791925   ', '8327000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('20', '1', '2023-11-20', '1667000   ', '104088', '1771088   ', '6660000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('21', '1', '2023-12-20', '1667000   ', '83250', '1750250   ', '4993000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('22', '1', '2024-01-20', '1667000   ', '62413', '1729413   ', '3326000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('23', '1', '2024-02-20', '1667000   ', '41575', '1708575   ', '1659000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');
INSERT INTO `data_pinjaman_detail` VALUES ('24', '1', '2024-03-20', '1667000   ', '20738', '1687738   ', '-8000   ', '2023-12-12 10:35:32', '2023-12-12 10:35:32');

-- ----------------------------
-- Table structure for data_potongan
-- ----------------------------
DROP TABLE IF EXISTS `data_potongan`;
CREATE TABLE `data_potongan` (
  `id` int NOT NULL,
  `users_id` int DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_potongan
-- ----------------------------

-- ----------------------------
-- Table structure for data_shu
-- ----------------------------
DROP TABLE IF EXISTS `data_shu`;
CREATE TABLE `data_shu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nag` varchar(50) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `thn_input` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bln_input` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_awal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_keluar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_akhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_shu
-- ----------------------------
INSERT INTO `data_shu` VALUES ('1', '5333', null, '2017', '1', '200000', null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('2', '5333', null, '2018', '2', null, '200000', null, '400000', null, null);
INSERT INTO `data_shu` VALUES ('3', '5333', null, '2019', '3', null, '200000', null, '600000', null, null);
INSERT INTO `data_shu` VALUES ('4', '5333', null, '2020', '4', null, '300000', null, '900000', null, null);
INSERT INTO `data_shu` VALUES ('5', '5333', null, '2021', '5', null, '500000', null, '1400000', null, null);
INSERT INTO `data_shu` VALUES ('6', '5333', '2021', '2022', '6', null, '550000', null, '1950000', null, null);
INSERT INTO `data_shu` VALUES ('7', '5333', '2022', '2023', '7', null, '600000', null, '2550000', null, null);
INSERT INTO `data_shu` VALUES ('8', '4985', null, '2017', '8', '100000', null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('9', '4985', null, '2018', '9', null, '100000', null, '200000', null, null);
INSERT INTO `data_shu` VALUES ('10', '4985', null, '2019', '10', null, '100000', null, '300000', null, null);
INSERT INTO `data_shu` VALUES ('11', '4985', null, '2020', '11', null, '100000', null, '400000', null, null);
INSERT INTO `data_shu` VALUES ('12', '4985', null, '2021', '12', null, '100000', null, '500000', null, null);
INSERT INTO `data_shu` VALUES ('13', '4985', '2021', '2022', '1', null, '100000', null, '600000', null, null);
INSERT INTO `data_shu` VALUES ('14', '4985', '2022', '2023', '2', null, '100000', null, '700000', null, null);
INSERT INTO `data_shu` VALUES ('15', '0', null, '2023', '3', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('16', '0', null, '2018', '4', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('17', '0', null, '2018', '5', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('18', '0', null, '2018', '6', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('19', '0', null, '2018', '7', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('20', '0', null, '2018', '8', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('21', '0', null, '2018', '9', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('22', '0', null, '2018', '10', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('23', '0', null, '2018', '11', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('24', '0', null, '2018', '12', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('25', '0', null, '2019', '1', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('26', '0', null, '2019', '2', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('27', '0', null, '2019', '3', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('28', '0', null, '2019', '4', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('29', '0', null, '2019', '5', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('30', '0', null, '2019', '6', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('31', '0', null, '2019', '7', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('32', '0', null, '2019', '8', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('33', '0', null, '2019', '9', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('34', '0', null, '2019', '10', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('35', '0', null, '2019', '11', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('36', '0', null, '2019', '12', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('37', '0', null, '2020', '1', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('38', '0', null, '2020', '2', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('39', '0', null, '2020', '3', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('40', '0', null, '2020', '4', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('41', '0', null, '2020', '5', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('42', '0', null, '2020', '6', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('43', '0', null, '2020', '7', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('44', '0', null, '2020', '8', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('45', '0', null, '2020', '9', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('46', '0', null, '2020', '10', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('47', '0', null, '2020', '11', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('48', '0', null, '2020', '12', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for data_simpanan
-- ----------------------------
DROP TABLE IF EXISTS `data_simpanan`;
CREATE TABLE `data_simpanan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int DEFAULT NULL,
  `data_simpanan_pokok_id` int DEFAULT NULL,
  `data_simpanan_wajib_id` int DEFAULT NULL,
  `data_simpanan_berjangka_id` int DEFAULT NULL,
  `data_simpanan_bertajngka_tahunan_id` int DEFAULT NULL,
  `data_shu_id` int DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_simpanan
-- ----------------------------

-- ----------------------------
-- Table structure for data_simpanan_berjangka_bln
-- ----------------------------
DROP TABLE IF EXISTS `data_simpanan_berjangka_bln`;
CREATE TABLE `data_simpanan_berjangka_bln` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nag` varchar(50) DEFAULT NULL,
  `thn` varchar(255) DEFAULT NULL,
  `bln` varchar(255) DEFAULT NULL,
  `saldo_awal` varchar(255) DEFAULT NULL,
  `saldo_masuk` varchar(255) DEFAULT NULL,
  `saldo_keluar` varchar(255) DEFAULT NULL,
  `bunga` varchar(255) DEFAULT NULL,
  `saldo_akhir` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_simpanan_berjangka_bln
-- ----------------------------
INSERT INTO `data_simpanan_berjangka_bln` VALUES ('1', '5333', '2023', '10', null, '500000', '0', '11050', '2721028', '2023-12-06 23:03:46', '2023-12-06 23:03:46');
INSERT INTO `data_simpanan_berjangka_bln` VALUES ('2', '5333', '2023', '11', null, '500000', '0', '13605', '3234633', '2023-12-06 23:03:46', '2023-12-06 23:03:46');
INSERT INTO `data_simpanan_berjangka_bln` VALUES ('3', '4985', '2023', '10', null, null, null, null, null, '2023-12-06 23:03:59', '2023-12-06 23:03:59');
INSERT INTO `data_simpanan_berjangka_bln` VALUES ('4', '4985', '2023', '11', null, null, null, null, null, '2023-12-06 23:03:59', '2023-12-06 23:03:59');

-- ----------------------------
-- Table structure for data_simpanan_berjangka_thn
-- ----------------------------
DROP TABLE IF EXISTS `data_simpanan_berjangka_thn`;
CREATE TABLE `data_simpanan_berjangka_thn` (
  `id` int NOT NULL,
  `nag` varchar(50) DEFAULT NULL,
  `tgl_setor` date DEFAULT NULL,
  `tgl_ambil` date DEFAULT NULL,
  `saldo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bunga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_simpanan_berjangka_thn
-- ----------------------------

-- ----------------------------
-- Table structure for data_simpanan_pokok
-- ----------------------------
DROP TABLE IF EXISTS `data_simpanan_pokok`;
CREATE TABLE `data_simpanan_pokok` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nag` varchar(50) DEFAULT NULL,
  `thn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bln` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_keluar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_akhir` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_simpanan_pokok
-- ----------------------------
INSERT INTO `data_simpanan_pokok` VALUES ('1', '5333', '2023', '10', '0', '0', '500000', '2023-12-06 19:13:54', '2023-12-06 19:13:54');
INSERT INTO `data_simpanan_pokok` VALUES ('2', '4985', '2023', '10', '0', '0', '500000', '2023-12-06 19:19:58', '2023-12-06 19:19:58');
INSERT INTO `data_simpanan_pokok` VALUES ('3', '5333', '2023', '11', '0', '0', '500000', '2023-12-06 19:14:01', '2023-12-06 19:14:01');
INSERT INTO `data_simpanan_pokok` VALUES ('4', '4985', '2023', '11', '0', '0', '500000', '2023-12-06 23:02:21', '2023-12-06 23:02:21');

-- ----------------------------
-- Table structure for data_simpanan_wajib
-- ----------------------------
DROP TABLE IF EXISTS `data_simpanan_wajib`;
CREATE TABLE `data_simpanan_wajib` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nag` varchar(50) DEFAULT NULL,
  `thn` varchar(255) DEFAULT NULL,
  `bln` varchar(255) DEFAULT NULL,
  `saldo_masuk` varchar(255) DEFAULT NULL,
  `saldo_keluar` varchar(255) DEFAULT NULL,
  `saldo_akhir` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_simpanan_wajib
-- ----------------------------
INSERT INTO `data_simpanan_wajib` VALUES ('1', '5333', '2023', '10', '100000', '0', '8400000', '2023-12-06 23:00:52', '2023-12-06 23:00:52');
INSERT INTO `data_simpanan_wajib` VALUES ('2', '5333', '2023', '11', '100000', '0', '8500000', '2023-12-06 23:00:52', '2023-12-06 23:00:52');
INSERT INTO `data_simpanan_wajib` VALUES ('3', '4985', '2023', '10', '100000', '0', '9025000', '2023-12-06 23:01:12', '2023-12-06 23:01:12');
INSERT INTO `data_simpanan_wajib` VALUES ('4', '4985', '2023', '11', '100000', '0', '9125000', '2023-12-06 23:01:12', '2023-12-06 23:01:12');

-- ----------------------------
-- Table structure for failed_import_rows
-- ----------------------------
DROP TABLE IF EXISTS `failed_import_rows`;
CREATE TABLE `failed_import_rows` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data` json NOT NULL,
  `import_id` bigint unsigned NOT NULL,
  `validation_error` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `failed_import_rows_import_id_foreign` (`import_id`),
  CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_import_rows
-- ----------------------------
INSERT INTO `failed_import_rows` VALUES ('1', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"1;4378;A. SATRIO ARRY WIBOWO ;9170101106;Z30;2023;9;388.800\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('2', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"2;5218;ABDUL KALIM;9170101107;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('3', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"3;3598;ABDUL KHOIR;9170101108;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('4', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"4;3599;ABDUL ROHIM;9170101109;Z30;2023;9;950.400\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('5', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"5;3975;ACHMAD SOPIAN;9170101181;Z30;2023;9;556.100\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('6', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"6;6796;ADE RAYA MAULID;9170101184;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('7', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"7;5664;ADI MARDIANSYAH;9140101017;Z30;2023;9;150.500\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('8', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"8;3337;AGUS DRIVER;9170101110;Z30;2023;9;1.000.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('9', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"9;5623;AGUS IRAWAN;9170101104;Z30;2023;9;498.500\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('10', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"10;6795;AGUS PURNOMO;9170101187;Z30;2023;9;41.100\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('11', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"11;6621;AGUS RIYANDI;916010191;Z30;2023;9;94.500\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('12', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"12;3608;AGUSRIL;9170101111;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('13', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"13;4965;AHMAD HUDAYA;914010106;Z30;2023;9;643.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('14', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"14;5663;AHMAD RIDWAN;916010117;Z30;2023;9;130.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('15', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"15;3600;AHMAD SUHELI;9170101113;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:25', '2023-12-06 11:10:25');
INSERT INTO `failed_import_rows` VALUES ('16', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"16;3618;AKMAL;9170101114;Z30;2023;9;484.900\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('17', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"17;5175;ALI SAYIDIMAN;9170101102;Z30;2023;9;991.900\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('18', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"18;6805;AMINULLAH;9170101188;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('19', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"19;4384;ANDI LUKMAN ;917010182;Z30;2023;9;983.200\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('20', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"20;6564;ANDI SODIKIN;916010189;Z30;2023;9;464.300\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('21', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"21;3968;ANDRIANSYAH;9170101115;Z30;2023;9;230.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('22', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"22;3616;ARDIANSYAH;917010183;Z30;2023;9;1.000.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('23', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"23;3748;ARIKA KURNIAWATI;9170102178;Z30;2023;9;159.650\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('24', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"24;3746;ASEP HERI PURWANA;9170101180;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('25', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"25;5919;ASEP HERMAWAN;9170101103;Z30;2023;9;164.700\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('26', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"26;6372;ASEP RAHADIAN EFENDI;916010176;Z30;2023;9;1.000.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('27', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"27;4967;ASEP SYARIPUDIN;914010107;Z30;2023;9;81.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('28', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"28;6807;BAHRUN;9170101190;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('29', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"29;3970;BARECO;9170101118;Z30;2023;9;298.100\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('30', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"30;3360;BASUKI RAHMAT;9170101119;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('31', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"31;3961;BAYDILLAH;9170101120;Z30;2023;9;254.300\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('32', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"32;6812;BUDI LUBERTO;9170101201;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('33', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"33;6870;BUDI SANTOSO;916010210;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('34', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"34;4271; CALAM ;917010184;Z30;2023;9;801.300\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('35', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"35;4969;CARSAN SAHERI;914010110;Z30;2023;9;338.800\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('36', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"36;6799;CUCU NUR HASAN SAKIR;9170101179;Z30;2023;9;0\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('37', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"37;4884;DADAN SOPIYAN;9170101123;Z30;2023;9;237.900\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('38', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"38;6658;DADAN SUNTANA;916010201;Z30;2023;9;1.000.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('39', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"39;2574;DEDI RAMLAN;9170101124;Z30;2023;9;997.550\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('40', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"40;4970;DELTA PUTRA ASMARA;915010113;Z30;2023;9;177.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('41', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"41;3967;DENNY NOVIANTO;9170101125;Z30;2023;9;213.600\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('42', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"42;3611;DIANTO;9170101126;Z30;2023;9;999.600\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('43', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"43;6813;DODI ABDLILAH;9170101204;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('44', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"44;6375;DONNY PRIBADI;916010179;Z30;2023;9;320.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('45', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"45;2079;EDDY KUSMIADI;9170101130;Z30;2023;9;142.900\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('46', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"46;4273;EDI PARLIN;9170101182;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('47', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"47;3613;EDI PURWANTO;917010186;Z30;2023;9;995.900\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('48', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"48;6521;EDIH SUPRATMAN;916010183;Z30;2023;9;118.100\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('49', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"49;5521;EDIWART FRAMLY BOY HUTAGALUNG;916010175;Z30;2023;9;192.150\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('50', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"50;6723;FAISAL NOVIANSYAH;916010207;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('51', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"51;6802;FAJAR WIBOWO;9170101194;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('52', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"52;6659;FEBRI KUSUMA WIJAYA;916010185;Z30;2023;9;554.200\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('53', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"53;6236;FIHRI;9170101950;Z30;2023;9;308.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('54', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"54;4276; FIRMANSYAH ;917010189;Z30;2023;9;678.300\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('55', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"55;4277; GANA CAHYONO ;917010190;Z30;2023;9;486.600\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('56', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"56;6168;HABIBBAH ASHARI;916010178;Z30;2023;9;598.650\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('57', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"57;6801;HARDI;9170101178;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('58', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"58;3964;HARDIYAN;9170101132;Z30;2023;9;977.800\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('59', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"59;3340;HARIADI SAPUTRA;9170101133;Z30;2023;9;514.400\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('60', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"60;6626;HARIS SUPRIADI;9170101185;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('61', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"61;6549;HARWINTO UJIAN;916010181;Z30;2023;9;63.900\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('62', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"62;4972;HARYANA;914010101;Z30;2023;9;775.150\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('63', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"63;3607;HERMAN SUSILO;9170101134;Z30;2023;9;990.850\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('64', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"64;6798;IBNU RUSADI;9170101193;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('65', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"65;6808;ILHAM CHIKAL;9170101202;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('66', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"66;4973;ILYAS ABDULLAH;915010112;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('67', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"67;3602;IMAM ARIFIANTO;9170101135;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('68', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"68;4974;IRMAWATI;914010209;Z30;2023;9;373.100\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('69', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"69;6806;ISMAIL;9170101189;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('70', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"70;5907;JAMALUDDIN;916010168;Z30;2023;9;44.600\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('71', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"71;4975;JAMALUDIN SCRTY;914010102;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('72', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"72;6800;KUAT PRASMONO;9170101180;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('73', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"73;6871;KUSNADI;917010200;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('74', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"74;6695;KUSNO;916010186;Z30;2023;9;473.900\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('75', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"75;6809;LIGOD;9170101198;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('76', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"76;3965;MADIYONO;9170101140;Z30;2023;9;242.500\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('77', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"77;3622;MALIK;917010192;Z30;2023;9;873.950\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('78', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"78;6900;MAMAN SUHERMAN;916011088;Z30;2023;9;496.325\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('79', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"79;6884;MASHUDI;916010199;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('80', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"80;4060;MINDA HENDRA FAIRIYANTI;9170102179;Z30;2023;9;226.400\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('81', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"81;2587;MOCH  YAHYA ;9170101142;Z30;2023;9;1.000.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('82', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"82;5622;MOCH SYAIFUL;9170101173;Z30;2023;9;244.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('83', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"83;6843;MOCHAMAD ISHAK PRABOWO;916010208;Z30;2023;9;0\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('84', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"84;6877;MUHAMAD ADNAN;916010212;Z30;2023;9;254.300\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('85', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"85;4979;MUHAMMAD ADE;914010103;Z30;2023;9;199.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('86', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"86;3609;MUHAMMAD KOMAR;9170101143;Z30;2023;9;993.200\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('87', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"87;3623;MUHAMMAD SAHRONI;9170101144;Z30;2023;9;1.000.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('88', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"88;6741;MUSLIM DALIKA;916010580;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('89', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"89;3406;NANA RATNA FATRIANA;9170101147;Z30;2023;9;218.100\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('90', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"90;6090;NANANG HERMANSYAH;9170101154;Z30;2023;9;287.400\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('91', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"91;4980;NANDANG SUMANTRI;915010115;Z30;2023;9;379.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('92', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"92;5817;NASIMUN;TK171553;Z30;2023;9;630.800\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('93', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"93;3971;NUR FAIZAL;9170101183;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('94', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"94;3758;NUR QOLIK;916010132;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:26', '2023-12-06 11:10:26');
INSERT INTO `failed_import_rows` VALUES ('95', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"95;3341;NURALI  SANJAYA;9170101151;Z30;2023;9;105.100\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('96', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"96;6887;NURIDIN;916010202;Z30;2023;9;142.900\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('97', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"97;5333;PANJI JAYA KUSUMAH;916010169;Z30;2023;9;892.900\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('98', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"98;4981;PANJI SUSILA;914010111;Z30;2023;9;873.400\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('99', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"99;4284; PUJONO ;9170101154;Z30;2023;9;505.400\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('100', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"100;6875;RIADI;916010215;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('101', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"101;6622;RIMEIZA;916010182;Z30;2023;9;79.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('102', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"102;5773;ROHMADIN;9170101105;Z30;2023;9;955.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('103', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"103;3974;RUDI ASMORO;9170101184;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('104', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"104;6749;RUDI HANDOKO;916010217;Z30;2023;9;192.300\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('105', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"105;6811;S MIRAN;9170101200 ;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('106', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"106;3597;SARIYO SUPARNO;9170101158;Z30;2023;9;543.800\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('107', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"107;2636;SARJONO;9170101159;Z30;2023;9;228.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('108', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"108;6804;SIHABUDIN;9170101191;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('109', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"109;6688; SONY FERODIANSYAH ;9170101183;Z30;2023;9;411.800\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('110', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"110;4982;SRI RAHAYU;914010204;Z30;2023;9;500.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('111', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"111;5520;SUDIRMAN;916010176;Z30;2023;9;504.500\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('112', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"112;3615;SUGITO;9170101162;Z30;2023;9;998.350\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('113', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"113;6906;SUKISWO;916010213;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('114', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"114;6797;SUPARHARIANTO;9170101186;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('115', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"115;4376;SURATMIN ;917010194;Z30;2023;9;984.700\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('116', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"116;6084;SURURI;916010172;Z30;2023;9;234.000\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('117', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"117;2589;SUTOYO;9170101164;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('118', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"118;4889;SUYADI;9170101165;Z30;2023;9;140.700\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('119', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"119;5363;TOMMY ANDREANSYAH;916010170;Z30;2023;9;123.300\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('120', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"120;3604;TONY SUDIBYO;9170101168;Z30;2023;9;999.100\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('121', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"121;3969;TRI SUWASANA;9170101169;Z30;2023;9;1.000.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('122', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"122;3747;WAHYU NUR HALIM;9170101185;Z30;2023;9;729.250\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('123', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"123;3972;WAHYUDI SUHANDOYO;9170101186;Z30;2023;9;369.400\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('124', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"124;4385;WARDI LANDARI  ;917010197;Z30;2023;9;729.100\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('125', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"125;4382;WIDI ARI PURNOMO ;9170101171;Z30;2023;9;500.000\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('126', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"126;4379;WIDODO ;917010198;Z30;2023;9;228.400\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('127', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"127;6810;WIRA ADRIANSAH;9170101196;Z30;2023;9;0\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('128', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"128;5365;WULANDARI;916010173;Z30;2023;9;225.100\"}', '1', 'The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('129', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"129;5366;YUNAN FERDIAN ASNAR;916010174;Z30;2023;9;464.850\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');
INSERT INTO `failed_import_rows` VALUES ('130', '{\"no;nag;;nip;pat;thn;bln;nominal\": \"130;4985;YUSUF KURNIAWAN;914010105;Z30;2023;9;223.800\"}', '1', 'The nag field must not be greater than 50 characters. The potongan id field must be an integer.', '2023-12-06 11:10:27', '2023-12-06 11:10:27');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for imports
-- ----------------------------
DROP TABLE IF EXISTS `imports`;
CREATE TABLE `imports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int unsigned NOT NULL DEFAULT '0',
  `total_rows` int unsigned NOT NULL,
  `successful_rows` int unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_user_id_foreign` (`user_id`),
  CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of imports
-- ----------------------------
INSERT INTO `imports` VALUES ('1', '2023-12-06 11:10:27', 'omi-upload.csv', 'D:\\Laragon\\www\\simpin\\storage\\app\\livewire-tmp/J4moeq4Xq1nZjnT64dg6B6uG3kZlVf-metab21pLXVwbG9hZC5jc3Y=-.txt', 'App\\Filament\\Imports\\DataOmiImporter', '130', '130', '0', '1', '2023-12-06 11:10:25', '2023-12-06 11:10:27');
INSERT INTO `imports` VALUES ('2', null, 'omi-upload_2023_09_sdm.csv', 'D:\\Laragon\\www\\simpin\\storage\\app\\livewire-tmp/S9JsNqwH52fm15oFRfOjQAdvYCwG3G-metab21pLXVwbG9hZF8yMDIzXzA5X3NkbS5jc3Y=-.csv', 'App\\Filament\\Imports\\DataOmiImporter', '0', '130', '0', '1', '2023-12-06 11:30:14', '2023-12-06 11:30:14');
INSERT INTO `imports` VALUES ('3', '2023-12-06 11:32:25', 'omi-upload_2023_09_sdm.csv', 'D:\\Laragon\\www\\simpin\\storage\\app\\livewire-tmp/Yy8wUUijEc2Jhh27k0tQuERlFGblmI-metab21pLXVwbG9hZF8yMDIzXzA5X3NkbS5jc3Y=-.csv', 'App\\Filament\\Imports\\DataOmiImporter', '130', '130', '130', '1', '2023-12-06 11:32:23', '2023-12-06 11:32:25');

-- ----------------------------
-- Table structure for jenis_pinjaman
-- ----------------------------
DROP TABLE IF EXISTS `jenis_pinjaman`;
CREATE TABLE `jenis_pinjaman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pinjaman_name` varchar(255) DEFAULT NULL,
  `bunga_pertahun` varchar(255) DEFAULT NULL,
  `plafon` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jenis_pinjaman
-- ----------------------------
INSERT INTO `jenis_pinjaman` VALUES ('1', 'A', '0%', '1000000', '0% pertahun ', '2023-11-21 10:41:51', '2023-11-21 10:41:51');
INSERT INTO `jenis_pinjaman` VALUES ('2', 'B', '6%', '30000000', '6% pertahun', '2023-11-21 10:41:57', '2023-11-21 10:41:57');
INSERT INTO `jenis_pinjaman` VALUES ('3', 'C', '12%', '50000000', 'pakai dana kokar, 12% pertahun, OS max 24 bulan, organik dan terampil 36 bulan', '2023-11-21 10:42:02', '2023-11-21 10:42:02');
INSERT INTO `jenis_pinjaman` VALUES ('4', 'D', '15%', '100000000', 'pakai dana bank, 15% pertahun, harus organik dan terampil', '2023-11-21 10:42:08', '2023-11-21 10:42:08');

-- ----------------------------
-- Table structure for jenis_potongan
-- ----------------------------
DROP TABLE IF EXISTS `jenis_potongan`;
CREATE TABLE `jenis_potongan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `potongan_name` varchar(255) DEFAULT NULL,
  `bunga` varchar(255) DEFAULT NULL,
  `plafon` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jenis_potongan
-- ----------------------------
INSERT INTO `jenis_potongan` VALUES ('1', 'OMI Mini Market', '0%', '1000000', '2023-11-21 10:53:49', '2023-11-21 10:53:49');

-- ----------------------------
-- Table structure for jenis_simpanan
-- ----------------------------
DROP TABLE IF EXISTS `jenis_simpanan`;
CREATE TABLE `jenis_simpanan` (
  `id` int NOT NULL,
  `simpanan_name` varchar(255) DEFAULT NULL,
  `bunga_pertahun` varchar(255) DEFAULT NULL,
  `ppn_bunga` varchar(255) DEFAULT NULL,
  `plafon` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jenis_simpanan
-- ----------------------------
INSERT INTO `jenis_simpanan` VALUES ('1', 'Pokok', '0%', '0%', '500000', '500.000 dipotong 5 bulan pertama, tanpa bunga', '2023-11-21 10:51:49', '2023-11-21 10:51:49');
INSERT INTO `jenis_simpanan` VALUES ('2', 'Wajib', '0%', '0%', '0', '100.000 tanpa bunga', '2023-11-21 10:51:49', '2023-11-21 10:51:49');
INSERT INTO `jenis_simpanan` VALUES ('3', 'Berjangka Bulanan', '6%', '0%', '0', 'tidak wajib, 6% pertahun', '2023-11-21 10:51:49', '2023-11-21 10:51:49');
INSERT INTO `jenis_simpanan` VALUES ('4', 'Berjangka Tahunan', '6%', '11%', '0', 'tidak wajib, 6% pertahun, ppn 10%, bunga bisa ditransfer, apabila tidak, bunga terpisah', '2023-11-21 10:52:09', '2023-11-21 10:52:09');
INSERT INTO `jenis_simpanan` VALUES ('5', 'Sisa Hasil Usaha', '0%', '0%', '0', 'tidak bisa diambil, tidak ada bunga', '2023-11-21 10:51:49', '2023-11-21 10:51:49');

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
INSERT INTO `job_batches` VALUES ('9ac88a30-64ee-46ef-baca-de974d682d19', '', '2', '0', '0', '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2619:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:1;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}}s:8:\"function\";s:2174:\"function () use ($import) {\n                    $import->touch(\'completed_at\');\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title(__(\'filament-actions::import.notifications.completed.title\'))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Filament\\Support\\format_number($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import])),\n                            ]),\n                        )\n                        ->sendToDatabase($import->user);\n                }\";s:5:\"scope\";s:29:\"Filament\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000a180000000000000000\";}\";s:4:\"hash\";s:44:\"qyqkQ/F9SUND01F+qlGvpSXLSCYqHaeEJoNOJkX8MX8=\";}}}}', null, '1701861025', '1701861027');
INSERT INTO `job_batches` VALUES ('9ac8920b-4615-4708-853d-a323620e2049', '', '2', '0', '0', '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:2619:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:6:\"import\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Imports\\Models\\Import\";s:2:\"id\";i:3;s:9:\"relations\";a:1:{i:0;s:4:\"user\";}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}}s:8:\"function\";s:2174:\"function () use ($import) {\n                    $import->touch(\'completed_at\');\n\n                    if (! $import->user instanceof \\Illuminate\\Contracts\\Auth\\Authenticatable) {\n                        return;\n                    }\n\n                    $failedRowsCount = $import->getFailedRowsCount();\n\n                    \\Filament\\Notifications\\Notification::make()\n                        ->title(__(\'filament-actions::import.notifications.completed.title\'))\n                        ->body($import->importer::getCompletedNotificationBody($import))\n                        ->when(\n                            ! $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->success(),\n                        )\n                        ->when(\n                            $failedRowsCount && ($failedRowsCount < $import->total_rows),\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->warning(),\n                        )\n                        ->when(\n                            $failedRowsCount === $import->total_rows,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->danger(),\n                        )\n                        ->when(\n                            $failedRowsCount,\n                            fn (\\Filament\\Notifications\\Notification $notification) => $notification->actions([\n                                \\Filament\\Notifications\\Actions\\Action::make(\'downloadFailedRowsCsv\')\n                                    ->label(trans_choice(\'filament-actions::import.notifications.completed.actions.download_failed_rows_csv.label\', $failedRowsCount, [\n                                        \'count\' => \\Filament\\Support\\format_number($failedRowsCount),\n                                    ]))\n                                    ->color(\'danger\')\n                                    ->url(route(\'filament.imports.failed-rows.download\', [\'import\' => $import])),\n                            ]),\n                        )\n                        ->sendToDatabase($import->user);\n                }\";s:5:\"scope\";s:29:\"Filament\\Actions\\ImportAction\";s:4:\"this\";N;s:4:\"self\";s:32:\"00000000000009380000000000000000\";}\";s:4:\"hash\";s:44:\"HqOfN7qKUaCzy8KEHDrAcvYH/lHIDL/4P7t4wKPFzd0=\";}}}}', null, '1701862343', '1701862345');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');
INSERT INTO `migrations` VALUES ('5', '2023_12_06_105739_create_job_batches_table', '2');
INSERT INTO `migrations` VALUES ('6', '2023_12_06_105826_create_imports_table', '2');
INSERT INTO `migrations` VALUES ('7', '2023_12_06_105827_create_failed_import_rows_table', '2');

-- ----------------------------
-- Table structure for mutasi
-- ----------------------------
DROP TABLE IF EXISTS `mutasi`;
CREATE TABLE `mutasi` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of mutasi
-- ----------------------------

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for ukers
-- ----------------------------
DROP TABLE IF EXISTS `ukers`;
CREATE TABLE `ukers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unit_kerja` varchar(255) DEFAULT NULL,
  `kode_unit_kerja` varchar(255) DEFAULT NULL,
  `uker_kats_id` int DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ukers
-- ----------------------------
INSERT INTO `ukers` VALUES ('1', 'PT. Sembilan Daya Manunggal', null, '3', '2023-11-08 11:14:51', '2023-11-08 11:14:51');
INSERT INTO `ukers` VALUES ('2', 'Divisi Pusat Wijaya Karya', 'AAA001', '1', '2023-11-10 16:02:16', '2023-11-10 16:02:16');

-- ----------------------------
-- Table structure for uker_kats
-- ----------------------------
DROP TABLE IF EXISTS `uker_kats`;
CREATE TABLE `uker_kats` (
  `id` int NOT NULL,
  `uker_kategori` varchar(255) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of uker_kats
-- ----------------------------
INSERT INTO `uker_kats` VALUES ('1', 'Perusahaan Induk', '2023-11-08 11:09:55', '2023-11-08 11:09:55');
INSERT INTO `uker_kats` VALUES ('2', 'Anak Perusahaan', '2023-11-08 11:10:08', null);
INSERT INTO `uker_kats` VALUES ('3', 'Out Sourching', '2023-11-08 11:10:15', null);
INSERT INTO `uker_kats` VALUES ('4', 'Internal', null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ukers_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_joint` date DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_kats_id` bigint DEFAULT NULL,
  `bank_id` bigint DEFAULT NULL,
  `narek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `norek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `is_admin` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Panji Jaya Kusumah', 'julungcarving@gmail.com', null, '$2y$10$4eG40j9xkvfX2A/lKm.MCuAiFCMdb0I5kvSLSUizW6vKKWVNBsazK', 'EDtOkftpsfve4uLPeBt0GxnzG3jLfLwzfiQg86sf7cGHJwwlUHbGTDOry1XU', '2023-10-05 07:57:55', '2023-11-17 11:29:43', '916010169', '5333', '2016-11-20', '082208262646', '1', '57', 'Panji Jaya Kusumah', '1570005311486', '1', '1');
INSERT INTO `users` VALUES ('2', '1', 'Yusuf Kurniawan', 'ucheucup@gmail.com', null, null, null, '2023-11-10 09:12:48', '2023-11-27 08:12:18', '914010105', '4985', '2016-01-20', '081315925123', '1', '57', 'Yusuf Kurniawan', '1570004862919', '1', '1');
INSERT INTO `users` VALUES ('311', '1', 'A. SATRIO ARRY WIBOWO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 10:06:42', '9170101106', '4378', '2014-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('312', '1', 'ABDUL KALIM', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101107', '5218', '2016-09-22', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('313', '1', 'ABDUL KHOIR', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101108', '3598', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('314', '1', 'ABDUL ROHIM', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101109', '3599', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('315', '1', 'ACHMAD SOPIAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101181', '3975', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('316', '1', 'ADE RAYA MAULID', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101184', '6796', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('317', '1', 'ADI MARDIANSYAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9140101017', '5664', '2017-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('318', '1', 'AGUS DRIVER', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101110', '3337', '2009-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('319', '1', 'AGUS IRAWAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101104', '5623', '2017-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('320', '1', 'AGUS PURNOMO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101187', '6795', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('321', '1', 'AGUS RIYANDI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010191', '6621', '2020-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('322', '1', 'AGUSRIL', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101111', '3608', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('323', '1', 'AHMAD HUDAYA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010106', '4965', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('324', '1', 'AHMAD RIDWAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010117', '5663', '2017-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('325', '1', 'AHMAD SUHELI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101113', '3600', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('326', '1', 'AKMAL', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101114', '3618', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('327', '1', 'ALI SAYIDIMAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101102', '5175', '2016-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('328', '1', 'AMINULLAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101188', '6805', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('329', '1', 'ANDI LUKMAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010182', '4384', '2014-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('330', '1', 'ANDI SODIKIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010189', '6564', '2020-06-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('331', '1', 'ANDRIANSYAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101115', '3968', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('332', '1', 'ARDIANSYAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010183', '3616', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('333', '1', 'ARIKA KURNIAWATI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170102178', '3748', '2012-06-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('334', '1', 'ASEP HERI PURWANA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101180', '3746', '2012-06-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('335', '1', 'ASEP HERMAWAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101103', '5919', '2018-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('336', '1', 'ASEP RAHADIAN EFENDI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010176', '6372', '2019-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('337', '1', 'ASEP SYARIFUDIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010107', '4967', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('338', '1', 'BAHRUN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101190', '6807', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('339', '1', 'BARECO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101118', '3970', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('340', '1', 'BASUKI RAHMAT', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101119', '3360', '2009-12-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('341', '1', 'BAYDILLAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101120', '3961', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('342', '1', 'BIRUL WALIDAINI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101177', '6687', '2021-09-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('343', '1', 'BUDI LUBERTO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101201', '6812', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('344', '1', 'BUDI SANTOSO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010210', '6870', '2022-10-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('345', '1', 'CALAM', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '878010313', '4271', '2014-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('346', '1', 'CARSAN SAHERI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010110', '4969', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('347', '1', 'CUCU NUR HASAN SAKIR', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101179', '6799', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('348', '1', 'DADAN SOPIYAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101123', '4884', '2015-09-18', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('349', '1', 'DADAN SUNTANA ', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010201', '6658', '2021-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('350', '1', 'Dedi Ramlan', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101124', '2574', '2003-06-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('351', '1', 'DELTA PUTRA ASMARA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '915010113', '4970', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('352', '1', 'DENNY NOVIANTO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101125', '3967', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('353', '1', 'DIANTO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101126', '3611', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('354', '1', 'DODI ABDLILAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101204', '6813', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('355', '1', 'DONNY PRIBADI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010179', '6375', '2019-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('356', '1', 'EDDY KUSMIADI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101130', '2079', '2009-09-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('357', '1', 'EDI PARLIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101182', '4273', '2014-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('358', '1', 'EDI PURWANTO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010186', '3613', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('359', '1', 'EDIH SUPRATMAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010183', '6521', '2020-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('360', '1', 'EDUARD FRAMLY BOY HUTAGALUNG', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010175', '5521', '2017-05-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('361', '1', 'FAISAL NOVIANSYAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010207', '6723', '2021-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('362', '1', 'FAJAR WIBOWO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101194', '6802', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('363', '1', 'FEBRI KUSUMA WIJAYA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010185', '6659', '2021-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('364', '1', 'FIHRI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101950', '6236', '2019-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('365', '1', 'FIRMANSYAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010189', '4276', '2014-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('366', '1', 'GANA CAHYONO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010190', '4277', '2014-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('367', '1', 'HABIBBAH ASHARI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010175', '6168', '2019-04-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('368', '1', 'HARDI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101178', '6801', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('369', '1', 'HARDIYAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101132', '3964', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('370', '1', 'HARIADI SAPUTRA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101133', '3340', '2009-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('371', '1', 'HARIS SUPRIADI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101185', '6626', '2020-12-19', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('372', '1', 'HARWINTO IJIAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010181', '6549', '2020-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('373', '1', 'HARYANA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:39:02', '9140101101', '4972', '2016-01-20', '083898217525', '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('374', '1', 'HERMAN SUSILO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101134', '3607', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('375', '1', 'IBNU RUSADI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101193', '6798', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('376', '1', 'ILHAM CHIKAL', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101202', '6808', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('377', '1', 'ILYAS ABDULLAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '915010112', '4973', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('378', '1', 'IMAM ARIFIANTO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101135', '3602', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('379', '1', 'IRMAWATI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010209', '4974', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('380', '1', 'ISMAIL', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101189', '6806', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('381', '1', 'JAMALUDIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010168', '5907', '2018-05-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('382', '1', 'JAMALUDIN SCRTY', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010102', '4975', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('383', '1', 'KHOIRUDDIN RITONGA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101136', '3657', '2010-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('384', '1', 'KUAT PRASMONO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101180', '6800', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('385', '1', 'KUSNADI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010200', '6871', '2022-10-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('386', '1', 'KUSNO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010186', '6695', '2021-09-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('387', '1', 'LIGOD', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101198', '6809', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('388', '1', 'MADIYONO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101140', '3965', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('389', '1', 'MALIK', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '917010192', '3622', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('390', '1', 'MAMAN SUHERMAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916011088', '6900', '2023-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('391', '1', 'MASHUDI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010199', '6884', '2022-12-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('392', '1', 'MINDA HENDRA FAIRIYANTI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170102179', '4060', '2013-05-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('393', '1', 'MOCH SYAIFUL', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101173', '5622', '2017-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('394', '1', 'Moch. Yahya ', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '0306.8706.0122', '2587', '2003-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('395', '1', 'MOCHAMAD ISHAK PRABOWO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010208', '6843', '2022-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('396', '1', 'MOHAMMAD ADE', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010103', '4979', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('397', '1', 'MUHAMAD ADNAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010212', '6877', '2022-11-21', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('398', '1', 'MUHAMMAD KOMAR', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101143', '3609', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('399', '1', 'MUHAMMAD SAHRONI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101144', '3623', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('400', '1', 'MUNANDAR', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010216', '6912', '2023-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('401', '1', 'NANA RATNA FATRIANA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101147', '3406', '2010-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('402', '1', 'NANANG HERMANSYAH', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101154', '6090', '2019-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('403', '1', 'NANDANG SUMANTRI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '915010115', '4980', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('404', '1', 'NASIMUN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', 'TK171553', '5817', '2018-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('405', '1', 'NUR FAIZAL', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101183', '3971', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('406', '1', 'NUR QOLIK', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010132', '3758', '2012-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('407', '1', 'NURIDIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010202', '6887', '2023-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('408', '1', 'PANJI SUSILA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010111', '4981', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('409', '1', 'PUJONO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101154', '4284', '2014-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('410', '1', 'RIADI', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010215', '6875', '2022-11-21', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('411', '1', 'RIMEIZA', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010182', '6622', '2020-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('412', '1', 'ROHMADIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101105', '5773', '2017-11-17', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('413', '1', 'RUDI ASMORO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101184', '3974', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('414', '1', 'RUDI HANDOKO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '916010217', '6749', '2022-04-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('415', '1', 'S MIRAN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101200', '6811', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('416', '1', 'SARIYO SUPARNO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101158', '3597', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('417', '1', 'SARJONO', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101159', '2636', '2004-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('418', '1', 'SIHABUDIN', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101191', '6804', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('419', '1', 'SONY FERODIANSYAH ', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '9170101183', '6688', '2021-09-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('420', '1', 'SRI RAHAYU', null, null, null, null, '2023-11-16 08:13:37', '2023-11-16 08:13:37', '914010204', '4982', '2016-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('421', '1', 'SUDIRMAN', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010176', '5520', '2017-05-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('422', '1', 'SUGITO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101162', '3615', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('423', '1', 'SUKISWO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010213', '6906', '2023-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('424', '1', 'SUPARHARIANTO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101186', '6797', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('425', '1', 'SURATMIN', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '917010194', '4376', '2014-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('426', '1', 'SURURI', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010172', '6084', '2019-02-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('427', '1', 'SUTOYO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101164', '2589', '2003-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('428', '1', 'SUYADI', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101165', '4889', '2015-09-18', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('429', '1', 'TAKARI', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101166', '3610', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('430', '1', 'TOMMY ANDREANSYAH', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010170', '5363', '2017-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('431', '1', 'TONY SUDIBYO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101168', '3604', '2012-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('432', '1', 'TRI SUWASANA', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101169', '3969', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('433', '1', 'WAHYU NURHALIM', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101185', '3747', '2012-06-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('434', '1', 'WAHYUDI SUHANDOYO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101186', '3972', '2013-03-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('435', '1', 'WARDI LANDRI', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '974030314', '4385', '2014-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('436', '1', 'WIDI ARI PURNOMO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101171', '4382', '2014-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('437', '1', 'WIDODO', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '917010198', '4379', '2014-08-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('438', '1', 'WIRA ADRIANSAH', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '9170101196', '6810', '2022-07-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('439', '1', 'WULANDARI', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010173', '5365', '2017-01-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('440', '1', 'YULIANTI', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010264', '6915', '2023-11-20', null, '1', '57', null, null, '1', '0');
INSERT INTO `users` VALUES ('441', '1', 'YUNAN FERDIAN ASNAR', null, null, null, null, '2023-11-16 08:13:38', '2023-11-16 08:13:38', '916010174', '5366', '2017-01-20', null, '1', '57', null, null, '1', '0');

-- ----------------------------
-- Table structure for user_kats
-- ----------------------------
DROP TABLE IF EXISTS `user_kats`;
CREATE TABLE `user_kats` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user_kats
-- ----------------------------
INSERT INTO `user_kats` VALUES ('1', 'Employee');
INSERT INTO `user_kats` VALUES ('2', 'Purna Bakti');
