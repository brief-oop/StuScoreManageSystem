/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : javaee_ks

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 04/06/2020 15:44:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `math` int(10) NULL DEFAULT NULL,
  `english` int(10) NULL DEFAULT NULL,
  `computer` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 676 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '孙丹', 89, 70, 90);
INSERT INTO `course` VALUES (2, '李娜', 79, 50, 49);
INSERT INTO `course` VALUES (3, '李四', 88, 59, 67);
INSERT INTO `course` VALUES (5, '严新世', 55, 87, 96);
INSERT INTO `course` VALUES (6, '梁永贵', 60, 60, 60);

-- ----------------------------
-- Table structure for information
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 676 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of information
-- ----------------------------
INSERT INTO `information` VALUES (1, 20, '男', '汉族', '9986846');
INSERT INTO `information` VALUES (2, 21, '女', '朝鲜族', '1546899');
INSERT INTO `information` VALUES (3, 22, '男', '维吾尔族', '2679766');
INSERT INTO `information` VALUES (5, 23, '男', '汉族', '5658486');
INSERT INTO `information` VALUES (6, 22, '女', '傣族', '1156688');
INSERT INTO `information` VALUES (11, 35, '男', '汉族', '4648846');
INSERT INTO `information` VALUES (12, 45, '女', '回族', '6548845');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 676 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '孙丹', '333', 'student', '1703');
INSERT INTO `user` VALUES (2, '李娜', '222', 'student', '1703');
INSERT INTO `user` VALUES (3, '李四', '444', 'student', '1703');
INSERT INTO `user` VALUES (5, '严新世', '456', 'student', '1704');
INSERT INTO `user` VALUES (6, '梁永贵', '909', 'student', '1704');
INSERT INTO `user` VALUES (11, '张三', '111', 'teacher', '1703');
INSERT INTO `user` VALUES (12, '周斌', '353', 'teacher', '1704');
INSERT INTO `user` VALUES (666, '管理员', '666', 'admin', NULL);

SET FOREIGN_KEY_CHECKS = 1;
