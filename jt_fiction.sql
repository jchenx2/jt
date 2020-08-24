/*
 Navicat Premium Data Transfer

 Source Server         : 小说
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 39.97.243.226:3306
 Source Schema         : jt_fiction_bak

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 19/08/2020 16:56:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jt_account_log
-- ----------------------------
DROP TABLE IF EXISTS `jt_account_log`;
CREATE TABLE `jt_account_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `amount` int(11) NULL DEFAULT 0 COMMENT '变动数量',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '类型：1=收入，2=支出',
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '内容',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `goods_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '账户变动记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_account_log
-- ----------------------------
INSERT INTO `jt_account_log` VALUES (1, 3, 10, '2', '购买【斗罗大陆】小说章节', '2020-06-22 04:33:57', '1');
INSERT INTO `jt_account_log` VALUES (2, 3, 3000, '1', '充值', '2020-06-22 08:33:42', '1');
INSERT INTO `jt_account_log` VALUES (3, 3, 100, '1', '首冲赠送', '2020-06-22 08:33:42', '1');
INSERT INTO `jt_account_log` VALUES (4, 10, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-06 22:29:23', '1');
INSERT INTO `jt_account_log` VALUES (5, 10, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-06 22:29:33', '1');
INSERT INTO `jt_account_log` VALUES (6, 3, 2000, '1', '充值', '2020-07-07 21:02:50', '1');
INSERT INTO `jt_account_log` VALUES (7, 3, 550, '1', '充值', '2020-07-07 21:03:34', '1');
INSERT INTO `jt_account_log` VALUES (8, 3, 5000, '1', '充值', '2020-07-07 21:04:05', '1');
INSERT INTO `jt_account_log` VALUES (9, 3, 3000, '1', '充值', '2020-07-07 21:04:52', '1');
INSERT INTO `jt_account_log` VALUES (10, 3, 5000, '1', '充值', '2020-07-07 21:15:18', '1');
INSERT INTO `jt_account_log` VALUES (11, 3, 4000, '1', '充值', '2020-07-07 21:17:04', '1');
INSERT INTO `jt_account_log` VALUES (12, 3, 10000, '1', '充值', '2020-07-07 21:20:24', '1');
INSERT INTO `jt_account_log` VALUES (13, 20, 10000, '1', '充值', '2020-07-07 21:22:39', '1');
INSERT INTO `jt_account_log` VALUES (14, 20, 550, '1', '充值', '2020-07-07 21:48:18', '1');
INSERT INTO `jt_account_log` VALUES (15, 4, 550, '1', '充值', '2020-07-09 10:56:22', '1');
INSERT INTO `jt_account_log` VALUES (16, 4, 200, '1', '首冲赠送', '2020-07-09 10:56:22', '1');
INSERT INTO `jt_account_log` VALUES (17, 4, 550, '1', '充值', '2020-07-09 10:56:50', '1');
INSERT INTO `jt_account_log` VALUES (18, 20, 3000, '1', '充值', '2020-07-10 14:20:36', '1');
INSERT INTO `jt_account_log` VALUES (19, 0, 100, '1', '首冲赠送', '2020-07-10 14:20:36', '1');
INSERT INTO `jt_account_log` VALUES (20, 20, 3000, '1', '充值', '2020-07-10 14:21:16', '1');
INSERT INTO `jt_account_log` VALUES (21, 20, 10000, '1', '充值', '2020-07-10 17:36:33', '1');
INSERT INTO `jt_account_log` VALUES (22, 13, 100, '1', '首冲赠送', '2020-07-10 17:36:33', '1');
INSERT INTO `jt_account_log` VALUES (23, 13, 10, '2', '购买【斗罗大陆2】小说章节', '2020-07-10 17:40:02', '1');
INSERT INTO `jt_account_log` VALUES (24, 13, 10, '2', '购买【斗罗大陆2】小说章节', '2020-07-10 17:40:06', '1');
INSERT INTO `jt_account_log` VALUES (25, 13, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-10 17:49:30', '1');
INSERT INTO `jt_account_log` VALUES (26, 13, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-10 17:49:40', '1');
INSERT INTO `jt_account_log` VALUES (27, 7, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-10 19:55:00', '1');
INSERT INTO `jt_account_log` VALUES (28, 7, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-10 19:55:08', '1');
INSERT INTO `jt_account_log` VALUES (29, 7, 5000, '1', '充值', '2020-07-11 13:55:08', '1');
INSERT INTO `jt_account_log` VALUES (30, 7, 10, '2', '购买【斗罗大陆2】小说章节', '2020-07-12 12:42:13', '1');
INSERT INTO `jt_account_log` VALUES (31, 7, 10, '2', '购买【斗罗大陆2】小说章节', '2020-07-12 12:42:22', '1');
INSERT INTO `jt_account_log` VALUES (32, 7, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-12 12:45:01', '1');
INSERT INTO `jt_account_log` VALUES (33, 7, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-12 12:45:07', '1');
INSERT INTO `jt_account_log` VALUES (34, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 15:41:15', '1');
INSERT INTO `jt_account_log` VALUES (35, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 15:41:22', '1');
INSERT INTO `jt_account_log` VALUES (36, 13, 10, '2', '购买【龙王传说】小说章节', '2020-07-13 15:44:44', '1');
INSERT INTO `jt_account_log` VALUES (37, 13, 10, '2', '购买【龙王传说】小说章节', '2020-07-13 15:44:48', '1');
INSERT INTO `jt_account_log` VALUES (38, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:07:44', '1');
INSERT INTO `jt_account_log` VALUES (39, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:08:31', '1');
INSERT INTO `jt_account_log` VALUES (40, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:09:14', '1');
INSERT INTO `jt_account_log` VALUES (41, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:09:35', '1');
INSERT INTO `jt_account_log` VALUES (42, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:15:08', '1');
INSERT INTO `jt_account_log` VALUES (43, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:15:46', '1');
INSERT INTO `jt_account_log` VALUES (44, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:16:51', '1');
INSERT INTO `jt_account_log` VALUES (45, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:18:16', '1');
INSERT INTO `jt_account_log` VALUES (46, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:20:06', '1');
INSERT INTO `jt_account_log` VALUES (47, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:20:14', '1');
INSERT INTO `jt_account_log` VALUES (48, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:20:23', '1');
INSERT INTO `jt_account_log` VALUES (49, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:20:59', '1');
INSERT INTO `jt_account_log` VALUES (50, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:21:05', '1');
INSERT INTO `jt_account_log` VALUES (51, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:21:19', '1');
INSERT INTO `jt_account_log` VALUES (52, 4, 10, '2', '购买【校花的贴身高手】小说章节', '2020-07-13 20:21:25', '1');
INSERT INTO `jt_account_log` VALUES (53, 4, 1, '1', '', '2020-07-13 20:45:10', '1');
INSERT INTO `jt_account_log` VALUES (54, 4, 1, '1', '', '2020-07-13 20:46:33', '1');
INSERT INTO `jt_account_log` VALUES (55, 13, 1, '1', '', '2020-07-15 09:25:53', '1');
INSERT INTO `jt_account_log` VALUES (56, 14, 1, '1', '', '2020-07-15 09:48:28', '1');
INSERT INTO `jt_account_log` VALUES (57, 13, 10, '2', '购买【斗罗大陆】小说章节', '2020-07-15 09:49:51', '1');
INSERT INTO `jt_account_log` VALUES (58, 14, 100000, '1', '充值', '2020-07-15 09:58:15', '1');
INSERT INTO `jt_account_log` VALUES (59, 14, 100, '1', '首冲赠送', '2020-07-15 09:58:15', '1');
INSERT INTO `jt_account_log` VALUES (60, 18, 45, '1', '', '2020-07-17 16:26:52', '1');
INSERT INTO `jt_account_log` VALUES (61, 21, 45, '1', '', '2020-07-22 09:48:34', '1');
INSERT INTO `jt_account_log` VALUES (62, 15, 45, '1', '', '2020-07-22 10:33:45', '1');
INSERT INTO `jt_account_log` VALUES (63, 19, 45, '1', '', '2020-07-23 11:24:10', '1');
INSERT INTO `jt_account_log` VALUES (64, 26, 45, '1', '', '2020-07-28 12:15:11', '1');
INSERT INTO `jt_account_log` VALUES (65, 19, 45, '1', '', '2020-07-28 12:19:37', '1');
INSERT INTO `jt_account_log` VALUES (66, 25, 45, '1', '', '2020-07-28 17:09:42', '1');
INSERT INTO `jt_account_log` VALUES (67, 17, 45, '1', '', '2020-07-28 17:19:28', '1');
INSERT INTO `jt_account_log` VALUES (68, 29, 45, '1', '', '2020-07-28 18:50:22', '1');
INSERT INTO `jt_account_log` VALUES (69, 19, 45, '1', '', '2020-08-02 12:14:55', '1');
INSERT INTO `jt_account_log` VALUES (70, 33, 45, '1', '', '2020-08-03 10:31:12', '1');
INSERT INTO `jt_account_log` VALUES (71, 19, 500, '1', '充值', '2020-08-06 15:49:17', '1');
INSERT INTO `jt_account_log` VALUES (72, 19, 500, '1', '首冲赠送', '2020-08-06 15:49:17', '1');
INSERT INTO `jt_account_log` VALUES (73, 19, 45, '1', '', '2020-08-06 15:49:49', '1');
INSERT INTO `jt_account_log` VALUES (74, 33, 45, '1', '', '2020-08-07 16:58:04', '1');
INSERT INTO `jt_account_log` VALUES (75, 20, 100, '1', '推荐用户赠送', '2020-08-08 17:17:32', '1');
INSERT INTO `jt_account_log` VALUES (76, 19, 35, '2', '购买【重生之1998首富人生】小说章节', '2020-08-10 13:14:45', '1');
INSERT INTO `jt_account_log` VALUES (77, 19, 35, '2', '购买【重生之1998首富人生】小说章节', '2020-08-10 13:14:58', '1');
INSERT INTO `jt_account_log` VALUES (78, 33, 45, '1', '', '2020-08-10 13:32:27', '1');
INSERT INTO `jt_account_log` VALUES (79, 47, 45, '1', '', '2020-08-10 14:13:30', '1');
INSERT INTO `jt_account_log` VALUES (80, 19, 45, '1', '', '2020-08-11 03:33:20', '1');
INSERT INTO `jt_account_log` VALUES (81, 33, 45, '1', '', '2020-08-11 16:15:21', '1');
INSERT INTO `jt_account_log` VALUES (82, 19, 45, '1', '', '2020-08-13 20:20:51', '1');

-- ----------------------------
-- Table structure for jt_admin
-- ----------------------------
DROP TABLE IF EXISTS `jt_admin`;
CREATE TABLE `jt_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `role_id` int(11) NULL DEFAULT 0 COMMENT '角色id',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_admin
-- ----------------------------
INSERT INTO `jt_admin` VALUES (1, 'admin', '470ef6f660e3b64b4f330cb3435f3d88', 0, '1', '');
INSERT INTO `jt_admin` VALUES (2, 'huangke', '250cf8b51c773f3f8dc8b4be867a9a02', 0, '1', '');
INSERT INTO `jt_admin` VALUES (9, 'mawenting', 'e10adc3949ba59abbe56e057f20f883e', 3, '1', '马文婷');
INSERT INTO `jt_admin` VALUES (10, 'yeyuchen', 'e10adc3949ba59abbe56e057f20f883e', 3, '1', '叶瑜晨');
INSERT INTO `jt_admin` VALUES (11, 'xuchengjuan', 'e10adc3949ba59abbe56e057f20f883e', 3, '1', '许程娟');
INSERT INTO `jt_admin` VALUES (12, 'miniao', 'e10adc3949ba59abbe56e057f20f883e', 4, '1', '迷鸟');
INSERT INTO `jt_admin` VALUES (13, 'lzchc', 'e10adc3949ba59abbe56e057f20f883e', 4, '1', '李子超好吃');
INSERT INTO `jt_admin` VALUES (14, 'zhuzilu', 'e10adc3949ba59abbe56e057f20f883e', 4, '1', '竹子路');

-- ----------------------------
-- Table structure for jt_banner
-- ----------------------------
DROP TABLE IF EXISTS `jt_banner`;
CREATE TABLE `jt_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '图片',
  `target_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '跳转类型：1=不跳转，2=富文本，3=内部页面',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '轮播图表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_banner
-- ----------------------------
INSERT INTO `jt_banner` VALUES (1, 'https://xiaoshuo.huapiaoliang.com/jt-api/public/uploads/2020-08-09/kZHpdsSGw35Q8sDLh0dOAJQ8CzhpYiZ9VTULfbD0.jpeg', '2', '3', '17', '2020-06-19 14:38:56', '2020-08-09 10:41:18');
INSERT INTO `jt_banner` VALUES (2, 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1769510885,3114890406&fm=26&gp=0.jpg', '1', '1', NULL, '2020-06-19 14:38:56', '2020-07-16 18:12:58');
INSERT INTO `jt_banner` VALUES (3, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1593626077818&di=9b96042437aa1a4a699e55c662eb84bf&imgtype=0&src=http%3A%2F%2Fb.hiphotos.baidu.com%2Fzhidao%2Fpic%2Fitem%2Ffaedab64034f78f01e87a7727c310a55b2191ca6.jpg', '1', '1', NULL, '2020-06-19 14:38:56', '2020-07-04 13:41:49');

-- ----------------------------
-- Table structure for jt_card_config
-- ----------------------------
DROP TABLE IF EXISTS `jt_card_config`;
CREATE TABLE `jt_card_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '类型',
  `original_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '原价',
  `present_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '现价',
  `options_title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '选项标题',
  `amount` int(11) NULL DEFAULT 0 COMMENT '阅读币数量',
  `login_receive_amount` int(11) NULL DEFAULT 0 COMMENT '每日登录领取数量',
  `receive_days` int(11) NULL DEFAULT 0 COMMENT '连续领取天数',
  `first_amount` int(11) NULL DEFAULT 0 COMMENT '首次充值奖励阅读币数量',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '卡信息配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_card_config
-- ----------------------------
INSERT INTO `jt_card_config` VALUES (1, '1', 360.00, 180.00, '年卡', 18000, 100, 30, 18000, 1, '1', '2020-06-22 14:54:58', '2020-07-15 17:42:32');
INSERT INTO `jt_card_config` VALUES (2, '2', 50.00, 25.00, '季卡', 5000, 100, 30, 500, 1, '3', '2020-06-22 14:54:58', '2020-07-15 17:13:21');
INSERT INTO `jt_card_config` VALUES (3, '2', 100.00, 0.01, '夏季', 5000, 100, 30, 100, 2, '3', '2020-06-22 14:54:58', '2020-07-15 17:03:41');
INSERT INTO `jt_card_config` VALUES (4, '2', 100.00, 0.01, '秋季', 4000, 100, 30, 100, 3, '3', '2020-06-22 14:54:58', '2020-07-15 17:03:36');
INSERT INTO `jt_card_config` VALUES (5, '2', 100.00, 0.01, '冬季', 3000, 100, 30, 100, 4, '3', '2020-06-22 14:54:58', '2020-07-15 17:03:31');
INSERT INTO `jt_card_config` VALUES (6, '3', 100.00, 0.01, '1个月', 3000, 100, 30, 100, 1, '3', '2020-06-22 14:54:58', '2020-07-15 17:04:53');
INSERT INTO `jt_card_config` VALUES (7, '3', 30.00, 15.00, '月卡', 1500, 100, 30, 1500, 2, '1', '2020-06-22 14:54:58', '2020-07-15 17:41:40');
INSERT INTO `jt_card_config` VALUES (8, '3', 100.00, 0.01, '12个月', 7000, 100, 30, 100, 3, '3', '2020-06-22 14:54:58', '2020-07-11 20:04:37');
INSERT INTO `jt_card_config` VALUES (9, '4', 10.00, 5.00, '充5送5', 500, 0, 0, 500, 1, '1', '2020-06-22 14:59:05', '2020-07-15 17:44:34');
INSERT INTO `jt_card_config` VALUES (10, '4', 20.00, 10.00, '充10送10', 1000, 0, 0, 1000, 2, '1', '2020-06-22 14:59:05', '2020-07-15 17:44:53');
INSERT INTO `jt_card_config` VALUES (11, '4', 40.00, 20.00, '充20送20', 2000, 0, 0, 2000, 3, '1', '2020-06-22 14:59:05', '2020-07-15 17:45:13');
INSERT INTO `jt_card_config` VALUES (15, '4', 10.00, 3.00, '周卡', 1000, NULL, NULL, 100, 4, '3', '2020-07-08 08:19:47', '2020-07-15 17:00:27');
INSERT INTO `jt_card_config` VALUES (16, '2', 90.00, 45.00, '季卡', 4500, NULL, NULL, 4500, 5, '1', '2020-07-15 17:15:53', '2020-07-15 17:41:05');
INSERT INTO `jt_card_config` VALUES (17, '4', 60.00, 30.00, '充30送30', 3000, NULL, NULL, 3000, 5, '1', '2020-07-15 17:38:01', '2020-07-15 17:45:33');

-- ----------------------------
-- Table structure for jt_comment
-- ----------------------------
DROP TABLE IF EXISTS `jt_comment`;
CREATE TABLE `jt_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NULL DEFAULT 0,
  `user_id` int(11) NULL DEFAULT 0,
  `nums` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_comment
-- ----------------------------
INSERT INTO `jt_comment` VALUES (13, 13, 19, 5);
INSERT INTO `jt_comment` VALUES (14, 13, 26, 5);
INSERT INTO `jt_comment` VALUES (15, 16, 19, 5);
INSERT INTO `jt_comment` VALUES (16, 17, 19, 5);
INSERT INTO `jt_comment` VALUES (17, 13, 19, 5);
INSERT INTO `jt_comment` VALUES (18, 16, 19, 5);
INSERT INTO `jt_comment` VALUES (19, 17, 46, 4);
INSERT INTO `jt_comment` VALUES (20, 17, 46, 5);
INSERT INTO `jt_comment` VALUES (21, 17, 47, 5);
INSERT INTO `jt_comment` VALUES (22, 17, 49, 5);
INSERT INTO `jt_comment` VALUES (23, 17, 33, 5);
INSERT INTO `jt_comment` VALUES (24, 17, 33, 5);
INSERT INTO `jt_comment` VALUES (25, 17, 33, 5);
INSERT INTO `jt_comment` VALUES (26, 17, 33, 5);
INSERT INTO `jt_comment` VALUES (27, 19, 51, 5);

-- ----------------------------
-- Table structure for jt_failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `jt_failed_jobs`;
CREATE TABLE `jt_failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `zmt_jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jt_fiction
-- ----------------------------
DROP TABLE IF EXISTS `jt_fiction`;
CREATE TABLE `jt_fiction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NULL DEFAULT 0 COMMENT '分类id',
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '封面图',
  `author` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '作者',
  `see_num` int(11) NULL DEFAULT 0 COMMENT '查看数量',
  `score` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '分数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名字',
  `words_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字数',
  `introduction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '简介',
  `currency_income_num` int(11) NULL DEFAULT 0 COMMENT '阅读币收入总数',
  `is_end` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否已完结',
  `is_home` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否主页推荐',
  `free_chapter_num` int(11) NULL DEFAULT 0 COMMENT '免费章节数',
  `chapter_price` int(11) NULL DEFAULT 0 COMMENT '每章节阅读币数量',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态 ',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `channels` int(11) NULL DEFAULT 0 COMMENT '频道：男频，女频',
  `wid` int(11) NULL DEFAULT NULL COMMENT '抓包到的小说id',
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小说信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_fiction
-- ----------------------------
-- INSERT INTO `jt_fiction` VALUES (17, 15, 'https://xiaoshuo.huapiaoliang.com/uploads/2020-08-19/uaW76UiWLXSpLWTRUG8FBzNd5DNz1HNLTyi77Ous.jpeg', '阿迷', 178, 4.00, '滋味', '10万', '【此中滋味，甘苦共尝。】你尝过被生活打压的滋味吗？\n\n他们都是普通人，却又不普通。精神上都有缺陷的两个人相遇，在一次又一次地放弃与被放弃中，拉紧对方的手，他们互相救赎，他们是彼此的光。\n\n脑子不好顾清欢×狂野男孩俞彬子\n人前高冷人后易傻乐疯狂宠溺攻×人前狂野人后也狂野撩人不自知受\n\n生活流水账，现实风治愈向，1v1，攻追受，he。\n\n甜甜甜甜甜甜甜甜白月光与初恋没有狗血雷点！俩智障儿童互相救赎后的咕噜咕噜爱情故事！', 0, '0', '1', 25, 35, '1', '2020-08-02 09:40:56', '2020-08-13 23:02:24', 2, NULL);

-- ----------------------------
-- Table structure for jt_fiction_chapter
-- ----------------------------
DROP TABLE IF EXISTS `jt_fiction_chapter`;
CREATE TABLE `jt_fiction_chapter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NULL DEFAULT 0 COMMENT '小说id',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '章节名字',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '章节内容',
  `sort` int(11) NULL DEFAULT 0 COMMENT '排序',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `wid` int(11) NULL DEFAULT NULL COMMENT '抓包到的小说id',
  `cid` int(11) NULL DEFAULT NULL COMMENT '章节id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 771 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小说章节表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_fiction_chapter
-- ----------------------------
-- INSERT INTO `jt_fiction_chapter` VALUES (36, 13, '第一章', '　　节哥，这小娘们怎么处理？老虎问。\n　　沈知节低着头用布条缠手掌上的血口子，闻言瞥一眼缩在车轮旁瑟瑟发抖的女人，神色依旧淡漠，干净点，别留后患。\n　　很好听的声音，音色干净微沉，却又隐隐透着凉意。\n　　瞧好吧您那！老虎应了一声，提了根尺多长的铁棍子往女人那走。\n　　那是根拇指粗的螺纹钢筋，是何妍从建筑工地上捡回来的，就放在副驾驶座前的工具箱里，她本来是用来防身的，放那个的时候，怎么也没想到它会落到歹徒手里，成为要她性命的凶器。\n　　活下去，无论如何也要活下去！\n　　何妍身体抖得如同筛糠，心里却有个声音在狂喊，她双亲尚在，一辈子温顺良和，绝接受不了她惨死野外，而且，她还有梁远泽，他在等着她过去相聚。\n　　她真的不该独自开车走这条乡间公路，不该以为开着车就安全，更不该在看到路面上趴着个人时就好心地踩了刹车??她真该踩一脚油门直接压过去的！\n　　可现在不是后悔自责的时候，她正濒临着死亡。\n　　求求你们，别杀我，车、钱我全给你们！我也绝不会报警，只求求你们别杀我！她怯怯地哭着，跪伏着往路边上坐着的那个眉目冷厉的男人身前爬了两步，哀求：大哥，求您别杀我，看在我刚才停车救您的份上，您放了我行吗？我绝对不会乱说话的，今天晚上我什么也没看到，什么也没遇到，真的，真的！\n　　这是一个还算聪明的女人，沈知节不禁抬眼多看了她一眼，泪涕横流的脸，五官端正秀气，却因恐惧而微微变形，眼睛里都是泪，闪着渴求的光芒。不过，这并不能软化他冷硬的心，他依旧无动于衷，又低下头去包扎手上伤口，那是他从货车上跳下时伤到的，手掌摁到了路边一块带着利茬的石头上，差点被割成了两半。\n　　女人还在他脚边不停地磕头哭求，他觉得有些烦躁，单手系结又不方便，只得把手掌伸递给了身边的瘦猴，又冷声问老虎：还磨叽什么？\n　　老虎走过来，像拎小鸡仔一样把她拎了起来，往路边草丛里拖。\n　　何妍奋力地挣扎着，却不敢尖叫，在这个前不找村后不着店的荒郊野外，叫了也不会有人来，只能叫她死得更快些，所以，她依旧只是哀求，哭着哀求。\n　　老虎，等一下！倒是给沈知节包扎手掌的瘦猴心先软了，出声叫住老虎，又小心地请示沈知节：节哥，先留着这女人吧，就她这样的，还能把咱们怎么着呀？\n　　沈知节剑眉微皱，抿唇不语，老虎却忍不住讥笑兄弟：你是小子色心动了吧？\n　　瘦猴嘿嘿笑，目光在何妍因挣扎而愈显饱满的胸口打了个转，毫不遮掩自己的情欲，反问老虎：动了又怎么样？都一个多月没碰女人了，难道你小子不想？\n　　借着明亮的月光，老虎低头看手里拎着的女人，也忍不住有点动心，这的确是个年轻漂亮的女人，五官精致，身材诱人。\n　　他两个都有些动摇，齐齐看向沈知节。\n　　沈知节冷漠狠厉的视线从已被吓傻了的何妍身上扫过，吐出的字眼冰冷无情，我们正在逃命，要玩女人等安全了随便你们玩。\n　　何妍不受控制地瑟缩了一下，她竭力不要自己晕过去，把哀求的目光投向那个瘦猴一样的男人，争取这唯一活命的机会，小哥，只要你们别杀我，我什么都愿意做，我家里还有父母，他们就我一个女儿。\n　　瘦猴实在是动心，又硬着头皮，嬉皮笑脸地去求沈知节：节哥，就现在玩也耽误不了多少时间的。\n　　沈知节还未有所表示，老虎倒是先忍不住笑了，骂道：瞧你这点出息！\n　　虽这样骂着，却也没继续把何妍往远处拖，和瘦猴一同眼巴巴地瞅着自家老大。\n　　这是跟着他一起出生入死的两个兄弟，沈知节抬眼扫了扫他们，顺手从路边掐了根草径叼进嘴里，棱角分明的脸庞上第一次露出冷漠之外的神色，颇有些不耐烦地说道：你们两个动作迅速点！\n　　瘦猴欢呼了一声从他身边一跃而起，径直向何妍走过来，老虎笑了笑，很大方地松开了手，让你小子占个先。\n　　何妍没有躲避，顺从地就着瘦猴的力道，只不停地央求他：小哥，你别杀我，我求求你别杀我，我真的什么也不会说的。\n　　不杀你，我不杀你，只要你乖乖听话！瘦猴口中应付着，手却急不可耐地先往何妍胸口上重重抓了一把，布料下那女性特有的温软柔腻盈满他的手掌，他更加着急了，四下里扫望了一眼，急慌慌地把她往草丛里扯。\n　　车里，咱们去车里吧。何妍声音细若蚊鸣，却依旧惊动了远处那个男人，两道冰冷的视线往她身上落过来，吓得她又赶紧磕磕巴巴地解释：车后座还舒服点，不扎人。\n　　瘦猴被色迷了心窍，就真的扯着她往路中间的那辆车去了，一把拽开后座车门，把她推了进去。沈知节冷冷地瞧着这边，向老虎微微偏了下头，老虎明白了他的意思，抱着怀在后面跟了上去。\n　　车是一辆白色的SUV，车身高大宽敞，老虎倚靠在车身上，透过半开的车窗玻璃，和车里的瘦猴开玩笑：你小子还行吗？\n　　瘦猴含糊不清地骂了声滚蛋，车里传来一阵衣料的摩擦声和女人的几声闷吭，在一声压抑的、痛苦的呜咽之后，很快，伴随着男人兴奋的低喘，车身一下下有节奏地上下震了起来。\n　　草！老虎身体有了反应，忍不住骂了一声，起身离开车身往前走了两步，回头骂车里的人：猴子，你他妈悠着点！\n　　这丫头还是个雏！瘦猴的声音里透着惊喜和得意，气喘吁吁地叫道：老子今天才是赚到了！\n　　老虎愣了一下，往地上啐了口吐沫，又笑着向不远处一直沉默着的沈知节，节哥，瞅瞅这劲头，别他妈把车再给咱摇散架了！\n　　竟还是个雏？倒是叫人意想不到。沈知节轻轻地扯了下嘴角，露出些许嘲弄，缓缓地收回了视线。\n　　车子还在不停地摇晃着，这节奏又刺激了车里的人，叫他顶撞得越发卖力，嘴里胡乱叫着心肝宝贝，屡次凑过来试图亲吻身下的人。\n　　何妍咬着唇忍耐，尽管她已经努力打开自己的身体，可剧烈的疼痛依旧不能避免。她深吸一口气，单臂搂住男人的脖子，忍受着他的侵犯，不露痕迹地把他的身体往下压，另只手却偷偷地摸向副驾驶椅背后的袋子。\n　　那里有一把刀，很小却很锋利的水果刀。上次梁远泽开车带她去春游，回来的路上她发懒在后座上睡觉，睡醒后就是用那把刀给他削的水果。那时她就坐在后座上，用小刀把苹果切成小块，再喂进梁远泽的嘴里，他会突然叼住她的手指，在她的惊叫声中使坏地用舌尖舔她的指尖，不肯松开。\n　　她得活下去，何妍在心里一遍遍地告诉自己，爸爸，妈妈，还有远泽，他们都还在等着她，她不能死在这里，死在这样一场屈辱的、不堪的奸杀里。\n　　何妍终于摸到了那把刀，而这个凶徒还压在她的身上施暴，她却从未像此刻这样冷静过，手滑过他的背，试图确认心脏的位置，可她不能确定，又怕刀子太短，一刀下去刺不穿他的心脏，无法一击夺命。\n　　身上男人的速度在加快，何妍知道自己没有时间再犹豫了，她勾住他的后脑，扬起头用力堵住了他的嘴。男人并不知她的企图，甚至有点惊喜她的反应，双手紧紧搂着她的腰肢，拼命地亲吻她。\n　　就在他身体不受控制地绷紧那一瞬，何妍手中的刀毫不犹豫地刺进了他的后颈。\n　　那也是能一刀毙命的地方，男人干瘦的身体于一瞬间僵滞，他拼命地往上抬头，瞪大了眼睛，似是想要看清被他压在身下的女人。可惜他再没机会了，何妍的双腿紧紧地盘住他的下肢，手上死死地摁在他的后脑，另只手握住刀柄，使尽了力气地往下划去，颈椎、大动脉、喉管??所有的一切在锐利的刀锋下都不堪一击。\n　　这真是一把好刀，不亏她大老远地从瑞士带回来。\n　　血喷洒一般地往外窜，她不得不伸手去捂，半个身体都被浸湿，视线几乎被血糊住，身上的人才终于停止了挣扎，温热的身体只剩下了隐隐的抽搐。何妍却不敢随意松手，她偷偷地瞥向车外，凶悍高大的男人立在车外不远处，而另外那个节哥则坐在更前面。\n　　车子一直没熄火，她当初下车查看的时候就没灭车。她必须不惊动他们，快速地爬到前面去，锁上车门，然后开车逃走。\n　　这是她唯一能够活命的机会。\n　　何妍深吸了口气，轻轻地推开了还压在她身上的干瘦男人。\n　　沈知节在闭目养神，同时也在思考接下来该怎么走，他们已经逃出来一千多公里，南昭市就在不远的地方，可前途依旧莫测。也许，他真不该在这个时候放纵老虎和瘦猴两个。可他们两个一路跟着他杀出来，逃亡的三十多个日夜里没有一天放松过，就任他们荒唐个把小时又能怎样？\n　　他有些失神，一直紧绷的神经也有点松懈，甚至叫他都没能在第一时间听到车门上锁时发出的那一声轻响。怕引人注意而熄灭的车灯猛地亮了起来，他有些错愕地抬头，就看到那辆白色的SUV发疯一般向他歇冲了过来。\n　　强烈的灯光叫他有短暂的失明，可只一需眼他就看清了开车的人，是刚才那个只知道哭泣哀求的女人，现在带着半脸的鲜血，另外半张却惨白得如同鬼魅，只有那双眼睛还是那样漆黑，没了泪水的掩盖，充满了疯狂的恨意，亮得灼目。\n　　节哥——老虎惊叫，毫不犹豫地扑过来，把来不及起身的他推向一边，不用思考，沈知节身体本能地往路边滚去，车轮擦着他的肩头而过，而老虎却被车头撞飞，直出去十多米远才落下来，发出一声沉闷的声音。\n　　那车丝毫未停，径直碾过老虎的双腿，扬长而去。\n　　何妍双手死死地握着方向盘，只知道猛踩油门，车子沿着乡间公路一直往前疯飙，直到冲上城市里明亮的街道，这才猛地刹住。她整个身体都在不受控制地抖动，手抖动连手机都握不住，更别说按下梁远泽的号码。\n　　啊——她如野兽般发出一声低低的低吼，张口用力咬住自己的手腕，直到那疼痛遏止住抖动，这才能摁通了梁远泽的电话，泣不成声地说道：报警，远泽，报警，我出事了。\n　　她深夜独自开车来到他所在的城市，原本，只是想给他一个惊喜的。', 1, '2020-07-17 19:28:55', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for jt_fiction_type
-- ----------------------------
DROP TABLE IF EXISTS `jt_fiction_type`;
CREATE TABLE `jt_fiction_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名称',
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '封面图',
  `num` int(11) NULL DEFAULT 0 COMMENT '小说数量',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '类型（男频，女频）',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 222 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小说分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_fiction_type
-- ----------------------------
INSERT INTO `jt_fiction_type` VALUES (1, '现代言情', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '2', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (2, '古代言情', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '2', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (3, '都市婚姻', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '2', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (4, '职场言情', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '2', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (5, '男生都市', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (6, '男生玄幻', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (7, '女生短篇', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '2', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (8, '男生游戏', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (9, '男生历史', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (14, '校园言情', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '2', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (15, '耽美同人', 'http://120.27.61.96/jt-api/public/uploads/2020-07-17/dNyiUF4Bt4jCStb8lspmT47eW2eAmsdrMYJnGxRg.jpeg', 3, '2', '1', '2020-07-17 17:10:04', '2020-08-04 12:49:16');
INSERT INTO `jt_fiction_type` VALUES (16, '都市言情', 'http://120.27.61.96/jt-api/public/uploads/2020-07-17/PVNhugqBekQmjjtX6DNzdE6iKGE8QFkByCgDGVmH.jpeg', -1, '2', '3', '2020-07-17 18:41:04', '2020-08-19 11:06:36');
INSERT INTO `jt_fiction_type` VALUES (17, '穿越重生', 'https://xiaoshuo.huapiaoliang.com/uploads/2020-08-19/DUcDnpn96Tmiw3ZNTFLM6p9uC0SGoGvQzKm9PvPi.jpeg', -1, '2', '1', '2020-07-27 16:08:18', '2020-08-19 11:06:27');
INSERT INTO `jt_fiction_type` VALUES (19, '玄幻奇幻', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/N1StzRlHwhhonm6OK1c6OwgyB2IfshPwdicTwBfg.jpeg', 0, '1', '3', '2020-08-14 16:26:05', '2020-08-14 16:26:48');
INSERT INTO `jt_fiction_type` VALUES (20, '男生仙侠', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (21, '男生悬疑', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);
INSERT INTO `jt_fiction_type` VALUES (22, '男生其他', 'http://120.27.61.96/jt-api/public/uploads/2020-08-14/xMQaN6WVtRgz7cnKyuNskSQ6UgmKzV5vGbCJPGzL.jpeg', 0, '1', '1', '2020-08-14 16:31:07', NULL);

-- ----------------------------
-- Table structure for jt_fiction_type_copy3
-- ----------------------------
DROP TABLE IF EXISTS `jt_fiction_type_copy3`;
CREATE TABLE `jt_fiction_type_copy3`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '名称',
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '封面图',
  `num` int(11) NULL DEFAULT 0 COMMENT '小说数量',
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '类型（男频，女频）',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小说分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_fiction_type_copy3
-- ----------------------------
INSERT INTO `jt_fiction_type_copy3` VALUES (15, '耽美同人', 'https://xiaoshuo.huapiaoliang.com/jt-api/public/uploads/2020-07-17/dNyiUF4Bt4jCStb8lspmT47eW2eAmsdrMYJnGxRg.jpeg', 2, '2', '1', '2020-07-17 17:10:04', '2020-08-04 12:49:16');
INSERT INTO `jt_fiction_type_copy3` VALUES (16, '都市言情', 'https://xiaoshuo.huapiaoliang.com/jt-api/public/uploads/2020-07-17/PVNhugqBekQmjjtX6DNzdE6iKGE8QFkByCgDGVmH.jpeg', 1, '2', '1', '2020-07-17 18:41:04', NULL);
INSERT INTO `jt_fiction_type_copy3` VALUES (17, '穿越重生', 'https://xiaoshuo.huapiaoliang.com/jt-api/public/uploads/2020-07-29/9zdrbLp3gsu9o1nkz17Hwxx6mtfH8ycVzCLHowXT.jpeg', 1, '1', '1', '2020-07-27 16:08:18', '2020-08-10 13:12:09');
INSERT INTO `jt_fiction_type_copy3` VALUES (18, '1', NULL, 0, '1', '3', '2020-08-11 11:43:10', '2020-08-11 11:43:25');

-- ----------------------------
-- Table structure for jt_give_log
-- ----------------------------
DROP TABLE IF EXISTS `jt_give_log`;
CREATE TABLE `jt_give_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `amount` int(11) NULL DEFAULT 0 COMMENT '数量',
  `content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '内容',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '赠送记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_give_log
-- ----------------------------
INSERT INTO `jt_give_log` VALUES (1, 3, 100, '首冲赠送', '2020-06-22 08:33:43');
INSERT INTO `jt_give_log` VALUES (2, 4, 200, '首冲赠送', '2020-07-09 10:56:22');
INSERT INTO `jt_give_log` VALUES (3, 7, 100, '首冲赠送', '2020-07-10 14:20:36');
INSERT INTO `jt_give_log` VALUES (4, 13, 100, '首冲赠送', '2020-07-10 17:36:33');
INSERT INTO `jt_give_log` VALUES (5, 14, 100, '首冲赠送', '2020-07-15 09:58:15');
INSERT INTO `jt_give_log` VALUES (6, 19, 500, '首冲赠送', '2020-08-06 15:49:17');

-- ----------------------------
-- Table structure for jt_jobs
-- ----------------------------
DROP TABLE IF EXISTS `jt_jobs`;
CREATE TABLE `jt_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `zmt_jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1098 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_jobs
-- ----------------------------
INSERT INTO `jt_jobs` VALUES (1097, 'fictionSeeNumIncrement', '{\"uuid\":\"56e7700e-a8ce-4cd9-9396-8334a1d3620d\",\"displayName\":\"App\\\\Listeners\\\\FictionSeeNumIncrementListeners\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"delay\":null,\"timeout\":120,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:45:\\\"App\\\\Listeners\\\\FictionSeeNumIncrementListeners\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:38:\\\"App\\\\Events\\\\FictionSeeNumIncrementEvent\\\":3:{s:3:\\\"fid\\\";s:2:\\\"17\\\";s:6:\\\"userId\\\";i:19;s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";i:3;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";i:120;s:3:\\\"job\\\";N;}\"}}', 0, NULL, 1597823390, 1597823390);

-- ----------------------------
-- Table structure for jt_login_receive
-- ----------------------------
DROP TABLE IF EXISTS `jt_login_receive`;
CREATE TABLE `jt_login_receive`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `amount` int(11) NULL DEFAULT 0 COMMENT '每次领取数量',
  `number` int(11) NULL DEFAULT 0 COMMENT '剩余可领次数',
  `card_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '卡类型',
  `options_title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '卡选项',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录可领取信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_login_receive
-- ----------------------------
INSERT INTO `jt_login_receive` VALUES (1, 3, 100, 30, '1', '年卡', '2020-06-22 08:33:43');
INSERT INTO `jt_login_receive` VALUES (2, 3, 100, 30, '1', '年卡', '2020-07-07 21:04:52');
INSERT INTO `jt_login_receive` VALUES (3, 3, 100, 30, '3', '3个月', '2020-07-07 21:15:18');
INSERT INTO `jt_login_receive` VALUES (4, 3, 100, 30, '2', '秋季', '2020-07-07 21:17:04');
INSERT INTO `jt_login_receive` VALUES (5, 3, 100, 30, '1', '年卡', '2020-07-07 21:20:24');
INSERT INTO `jt_login_receive` VALUES (6, 3, 100, 30, '1', '年卡', '2020-07-07 21:22:39');
INSERT INTO `jt_login_receive` VALUES (7, 7, 100, 30, '3', '1个月', '2020-07-10 14:20:36');
INSERT INTO `jt_login_receive` VALUES (8, 7, 100, 30, '3', '1个月', '2020-07-10 14:21:16');
INSERT INTO `jt_login_receive` VALUES (9, 13, 100, 30, '1', '年卡', '2020-07-10 17:36:33');
INSERT INTO `jt_login_receive` VALUES (10, 7, 100, 30, '3', '3个月', '2020-07-11 13:55:08');
INSERT INTO `jt_login_receive` VALUES (11, 14, 100, 30, '1', '年卡', '2020-07-15 09:58:15');

-- ----------------------------
-- Table structure for jt_login_receive_log
-- ----------------------------
DROP TABLE IF EXISTS `jt_login_receive_log`;
CREATE TABLE `jt_login_receive_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `amount` int(11) NULL DEFAULT 0 COMMENT '领取数量',
  `receive_id` int(11) NULL DEFAULT 0 COMMENT '领取的记录id',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录每天领取记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jt_menu
-- ----------------------------
DROP TABLE IF EXISTS `jt_menu`;
CREATE TABLE `jt_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端路由',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父级id',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_menu
-- ----------------------------
INSERT INTO `jt_menu` VALUES (1, '', 0, '用户管理');
INSERT INTO `jt_menu` VALUES (2, 'user/index', 1, '用户列表');
INSERT INTO `jt_menu` VALUES (3, 'user/recharge', 1, '充值列表');
INSERT INTO `jt_menu` VALUES (4, '', 0, '小说管理');
INSERT INTO `jt_menu` VALUES (5, 'fiction/type', 4, '分类列表');
INSERT INTO `jt_menu` VALUES (6, 'fiction/index', 4, '小说列表');
INSERT INTO `jt_menu` VALUES (7, '', 0, '财务管理');
INSERT INTO `jt_menu` VALUES (8, 'finance/index', 7, '收入列表');
INSERT INTO `jt_menu` VALUES (9, 'finance/coinRecordList', 7, '阅读币消费记录');
INSERT INTO `jt_menu` VALUES (10, '', 0, '系统管理');
INSERT INTO `jt_menu` VALUES (11, 'system/banner', 10, '轮播图列表');
INSERT INTO `jt_menu` VALUES (12, 'system/recharge', 10, '充值配置');
INSERT INTO `jt_menu` VALUES (13, 'system/year', 10, '年卡配置');
INSERT INTO `jt_menu` VALUES (14, 'system/ji', 10, '季卡配置');
INSERT INTO `jt_menu` VALUES (15, 'system/month', 10, '月卡配置');
INSERT INTO `jt_menu` VALUES (16, 'system/keyword', 10, '热搜关键字');
INSERT INTO `jt_menu` VALUES (17, '', 0, '权限管理');
INSERT INTO `jt_menu` VALUES (18, 'auth/userList', 17, '管理员列表');
INSERT INTO `jt_menu` VALUES (19, 'auth/role', 17, '角色列表');
INSERT INTO `jt_menu` VALUES (20, 'system/updateSign', 10, '签到奖励配置');

-- ----------------------------
-- Table structure for jt_migrations
-- ----------------------------
DROP TABLE IF EXISTS `jt_migrations`;
CREATE TABLE `jt_migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_migrations
-- ----------------------------
INSERT INTO `jt_migrations` VALUES (1, '2020_03_23_111623_create_jobs_table', 1);

-- ----------------------------
-- Table structure for jt_order
-- ----------------------------
DROP TABLE IF EXISTS `jt_order`;
CREATE TABLE `jt_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `order_sn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单号',
  `fid` int(11) NULL DEFAULT 0 COMMENT '小说id',
  `state` int(11) NULL DEFAULT 0 COMMENT '订单状态',
  `prepaid_content` json NULL COMMENT '预支付信息',
  `notify_content` json NULL COMMENT '支付回调信息',
  `order_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '订单总金额',
  `pay_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '支付方式',
  `pay_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '实际支付金额',
  `discounts_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '优惠总金额',
  `pay_info` json NULL COMMENT '支付明细',
  `discount_info` json NULL COMMENT '优惠明细',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_order
-- ----------------------------
INSERT INTO `jt_order` VALUES (32, 15, '2020071517104755100995', 0, 1, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx15171048581885b0e2e0870a1128233900\", \"paySign\": \"6521299741C6E31F9FE7F4B0D97E11E4\", \"nonceStr\": \"3u1lqpjdsq59rgabm2229r03khtcx6q1\", \"signType\": \"MD5\", \"timeStamp\": \"1594804248\"}', NULL, 25.00, '1', 25.00, 0.00, NULL, NULL, '2020-07-15 17:10:47', '2020-07-15 17:10:48');
INSERT INTO `jt_order` VALUES (33, 19, '2020080615490751561025', 0, 2, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx06154908207134b9a99dec94ae12250000\", \"paySign\": \"C7879C900017CDBF5A3597AA71D6E9E9\", \"nonceStr\": \"gyea7on52nzrg0zmlugkikmmkfetxcmf\", \"signType\": \"MD5\", \"timeStamp\": \"1596700148\"}', '{\"sign\": \"416EC96CED384E9B3AFEDCD64E04D2BE\", \"appid\": \"wxefb23ea12244d68b\", \"attach\": \"金谭小说充值\", \"mch_id\": \"1600818668\", \"openid\": \"oGTw547Jl-Tamcy0xs0jctdMeoG4\", \"cash_fee\": \"500\", \"fee_type\": \"CNY\", \"time_end\": \"20200806154916\", \"bank_type\": \"COMM_CREDIT\", \"nonce_str\": \"qildq6nmaw0cmvg4dhrkodk44bu31l8u\", \"total_fee\": \"500\", \"trade_type\": \"JSAPI\", \"result_code\": \"SUCCESS\", \"return_code\": \"SUCCESS\", \"is_subscribe\": \"N\", \"out_trade_no\": \"2020080615490751561025\", \"transaction_id\": \"4200000585202008060061152228\"}', 5.00, '1', 5.00, 0.00, '{\"wechatSmallProPay\": \"5.00\"}', NULL, '2020-08-06 15:49:07', '2020-08-06 15:49:17');
INSERT INTO `jt_order` VALUES (34, 20, '2020081018585410110051', 0, 1, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx1018585559029957f7985d3041c77e0000\", \"paySign\": \"48E2CF31A5C1DD018E2862F55C29FA1C\", \"nonceStr\": \"3f7y6yvbuntaqw1q1jzzbfrlc5ayk316\", \"signType\": \"MD5\", \"timeStamp\": \"1597057135\"}', NULL, 5.00, '1', 5.00, 0.00, NULL, NULL, '2020-08-10 18:58:54', '2020-08-10 18:58:55');
INSERT INTO `jt_order` VALUES (35, 20, '2020081019031753499849', 0, 1, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx10190317748709ee61f32b5737867f0000\", \"paySign\": \"957B1DEA5C6B838F09605C0D0DE04C6C\", \"nonceStr\": \"ij33vnuplvlik8zlnc694f8y8c9mi08l\", \"signType\": \"MD5\", \"timeStamp\": \"1597057397\"}', NULL, 15.00, '1', 15.00, 0.00, NULL, NULL, '2020-08-10 19:03:17', '2020-08-10 19:03:17');
INSERT INTO `jt_order` VALUES (36, 20, '2020081019032157561015', 0, 1, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx10190322249974e48ed022dea563cd0000\", \"paySign\": \"3A418C15EC8BB51F58156C5A833CBBAF\", \"nonceStr\": \"6rzcdqskdx2fd85hh1gqhc8hwqfyqnf6\", \"signType\": \"MD5\", \"timeStamp\": \"1597057402\"}', NULL, 45.00, '1', 45.00, 0.00, NULL, NULL, '2020-08-10 19:03:21', '2020-08-10 19:03:22');
INSERT INTO `jt_order` VALUES (37, 20, '2020081019032510098511', 0, 1, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx10190326393761b83595b8c2f308f50000\", \"paySign\": \"A7D6EA1057AAABD35185268C8EABB28F\", \"nonceStr\": \"6b9ui93z2tba8650lus8j9a922ipfpa7\", \"signType\": \"MD5\", \"timeStamp\": \"1597057406\"}', NULL, 180.00, '1', 180.00, 0.00, NULL, NULL, '2020-08-10 19:03:25', '2020-08-10 19:03:26');
INSERT INTO `jt_order` VALUES (38, 20, '2020081019033897545049', 0, 1, '{\"appId\": \"wxefb23ea12244d68b\", \"package\": \"prepay_id=wx101903391250338e37327874e4a0970000\", \"paySign\": \"86C02D7DFF082BDF06BEDFF1E548C5ED\", \"nonceStr\": \"lm737phbeq43cmbqcym45a3bpn7oxzwz\", \"signType\": \"MD5\", \"timeStamp\": \"1597057419\"}', NULL, 30.00, '1', 30.00, 0.00, NULL, NULL, '2020-08-10 19:03:38', '2020-08-10 19:03:39');

-- ----------------------------
-- Table structure for jt_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `jt_order_goods`;
CREATE TABLE `jt_order_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT 0 COMMENT '订单id',
  `goods_id` int(11) NULL DEFAULT 0 COMMENT '商品id',
  `goods_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_order_goods
-- ----------------------------
INSERT INTO `jt_order_goods` VALUES (32, 32, 2, '4');
INSERT INTO `jt_order_goods` VALUES (33, 33, 9, '4');
INSERT INTO `jt_order_goods` VALUES (34, 34, 9, '4');
INSERT INTO `jt_order_goods` VALUES (35, 35, 7, '3');
INSERT INTO `jt_order_goods` VALUES (36, 36, 16, '2');
INSERT INTO `jt_order_goods` VALUES (37, 37, 1, '1');
INSERT INTO `jt_order_goods` VALUES (38, 38, 17, '4');

-- ----------------------------
-- Table structure for jt_recommend_log
-- ----------------------------
DROP TABLE IF EXISTS `jt_recommend_log`;
CREATE TABLE `jt_recommend_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '父级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '推荐记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_recommend_log
-- ----------------------------
INSERT INTO `jt_recommend_log` VALUES (1, 41, 20);

-- ----------------------------
-- Table structure for jt_role
-- ----------------------------
DROP TABLE IF EXISTS `jt_role`;
CREATE TABLE `jt_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '角色名称',
  `menu_url` json NULL COMMENT '菜单路由列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_role
-- ----------------------------
INSERT INTO `jt_role` VALUES (3, '网络编辑', '[\"user/index\", \"user/recharge\", \"fiction/type\", \"fiction/index\", \"system/banner\"]');
INSERT INTO `jt_role` VALUES (4, '作家', '[\"fiction/type\", \"fiction/index\"]');

-- ----------------------------
-- Table structure for jt_search_keyword
-- ----------------------------
DROP TABLE IF EXISTS `jt_search_keyword`;
CREATE TABLE `jt_search_keyword`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '热门搜索关键词' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_search_keyword
-- ----------------------------
INSERT INTO `jt_search_keyword` VALUES (3, '穿越');
INSERT INTO `jt_search_keyword` VALUES (4, '重生');
INSERT INTO `jt_search_keyword` VALUES (5, '修仙');

-- ----------------------------
-- Table structure for jt_session
-- ----------------------------
DROP TABLE IF EXISTS `jt_session`;
CREATE TABLE `jt_session`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT 0 COMMENT '角色id',
  `role_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '角色类型',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'session表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_session
-- ----------------------------
INSERT INTO `jt_session` VALUES (6, 3, 'USER', 'eOAPsMIUdC9DZDFg4IcuWTbWkplTyBKn6cwlhPnIF81H3D4Jhre0194eSg5R64pGZpLfhj', '2020-06-18 09:57:16', '2020-07-07 20:41:42');
INSERT INTO `jt_session` VALUES (9, 4, 'USER', 'jnMYLgRozv8btRTpBIfBsUZNYkIETONZJwciG1H112bylmKXghn9XW2U1wTTORw1CcUoZF', '2020-07-04 15:17:02', '2020-07-13 21:12:57');
INSERT INTO `jt_session` VALUES (10, 5, 'USER', '4dlUUhXSacUHyEEayfvqGlw9eTtRHIBj6UKFZIjvU5GQt8Nxyrp56fsoKEFRmewZ8W6ZTF', '2020-07-06 16:41:04', NULL);
INSERT INTO `jt_session` VALUES (11, 2, 'CONSOLE', 'wNmm3Z7KNbiVSC8VA2c4qgKY6pCl9q6k4fwCBkMdrVmKH7XbfTLSFBOLSiETzheJamBest', '2020-07-06 16:43:54', '2020-08-11 16:45:36');
INSERT INTO `jt_session` VALUES (12, 6, 'USER', 'tXzbEW5BT91VuugW38iIZwG25Oe8d2ZMPMHvLEktiJ4IVCDOCBj01q7R3RKc0rJEfyBskD', '2020-07-06 17:34:32', NULL);
INSERT INTO `jt_session` VALUES (13, 7, 'USER', 'oXdNHdvcaWfrccvFFDswAszYkkGpFh53LEIi8doGZdLoMDtgMw4WM1oWf8dCds2wYwP6p7', '2020-07-06 17:41:26', NULL);
INSERT INTO `jt_session` VALUES (14, 8, 'USER', '8kNPkASaXW3Q3vaTIkLs1Px4ZsGpIdNJUXiT3JCZHPdbCyQOkSPufspUD7u2FUPVzxk5Y8', '2020-07-06 17:46:03', NULL);
INSERT INTO `jt_session` VALUES (15, 9, 'USER', 'wJ9IdEcCUPfGLjYXh1Ioe5IM5Ic0Wnzo1QZ6TryNyTUTqZO9AtSjiXByb56tByGOzTR7wm', '2020-07-06 19:28:01', NULL);
INSERT INTO `jt_session` VALUES (18, 10, 'USER', 'ZEqpcgr8DL7YWnnocz7gFpxvIfpLPV2Bx16snLyvODWEJeyKShK1YO7MsSiQqte6aUuFtQ', '2020-07-06 22:21:20', '2020-07-07 22:04:27');
INSERT INTO `jt_session` VALUES (20, 11, 'USER', 'EZocEE2ldRHxiTn7S5S9l0LhzcbYurckcbNG74B1YEgCMuQalgu3U0p7rBjhkfkDr8BTIb', '2020-07-08 10:46:14', NULL);
INSERT INTO `jt_session` VALUES (21, 12, 'USER', 'QVGKReEtx3UEqhXYe1t8UMafbjvPQWf2aAPfqxwRkFjLLCXkM8e8gC3OfT1brcT16BFwYS', '2020-07-08 17:09:22', NULL);
INSERT INTO `jt_session` VALUES (23, 13, 'USER', 'NzxKijA2PufATSx5nvuOXcei4dPJWxc5sezml8pSe2stlYj34UFrkMg6ede2pD8IofwpaK', '2020-07-10 17:14:12', NULL);
INSERT INTO `jt_session` VALUES (26, 14, 'USER', 'b9vttACZD4qktYFSfhlo1kwKaSGrWJAQ8AfG9gTT3Z400kP9X7tMBlQWlPppo4GUM1kros', '2020-07-15 09:47:12', NULL);
INSERT INTO `jt_session` VALUES (27, 1, 'CONSOLE', 'VOjFnYy5NpjyFa5gDGRgsLKDIGYeL1DZEegkZlIdJA0nG7b4taPvKGCgAmnStPi4WmpsbQ', '2020-07-15 15:55:59', '2020-08-19 15:36:50');
INSERT INTO `jt_session` VALUES (28, 9, 'CONSOLE', 'o2NVMVKCtQ1pk2DVXICDjNf0BhDhd9Knxc3iIcNyV1XPMC8vI7D8YEiz2AbsMC6Buy6yct', '2020-07-15 15:56:28', '2020-07-28 11:22:03');
INSERT INTO `jt_session` VALUES (29, 15, 'USER', 'x0n1RXLJlbJg7AjaGSgNm6ulrfxemn1bieqstWcxDcBmphU0euT3FAkrkFcCLbr6FSvko9', '2020-07-15 17:08:35', '2020-07-17 17:53:00');
INSERT INTO `jt_session` VALUES (30, 16, 'USER', '8FPhp5aMvdysBjd5cYE0KFa8g1zeEF4SghCLDerr0cwsmalwJJvHCaELe9sSoZ8HKteFmW', '2020-07-16 20:11:18', NULL);
INSERT INTO `jt_session` VALUES (31, 17, 'USER', 'jfZ0PiufKYtefiStmRvONCVZaWyvWNyACyG4aN1p8y7Mlvm5OR54WXLJ6RTLuyUrAznbAM', '2020-07-17 09:27:11', '2020-08-08 17:07:28');
INSERT INTO `jt_session` VALUES (32, 10, 'CONSOLE', 'svoqArE1SYvxNyK2WBtZmOG9nd0VSF5LpUQI3f28pvCLD5dSecqVbwTwYY6Rtcxr6weI7J', '2020-07-17 15:51:36', '2020-07-18 14:49:43');
INSERT INTO `jt_session` VALUES (33, 18, 'USER', 'QFNmk0uqu80IxfvUljrEdTWyddkKATTaVh7XjwdIv1ftzDzmez9NxNBgCusQutzuIPNYNx', '2020-07-17 16:26:25', NULL);
INSERT INTO `jt_session` VALUES (34, 19, 'USER', 'xvpOw27x2hw1W3jQD3PpRwy9OeqvUsluouFzkmUtFFS4klO6CYDIXSZ8DrLhDJ3iHuXXTW', '2020-07-17 17:15:17', '2020-08-19 15:49:40');
INSERT INTO `jt_session` VALUES (35, 11, 'CONSOLE', 'QDlZCuOMQSW3u7C42tqCErY6vfHn4NwSKuYy78dY60SX89814n9AwnjFUk6hyRE8iunehj', '2020-07-18 16:21:21', NULL);
INSERT INTO `jt_session` VALUES (36, 20, 'USER', 'UrRATfTjRFaYUCewWyyHcDZwHm9tV3W6P4KjGoh6znn8Mfs5lTnhMUgj9NAl6aFkhnPxDS', '2020-07-20 16:11:25', '2020-08-08 18:08:24');
INSERT INTO `jt_session` VALUES (37, 21, 'USER', 'vlWtFDQt4GNwCcrjyeC5LVrqixhIfUlbDPMZkfirV9XWBX3R6WGoqaHghCa4fCdVVMLC57', '2020-07-22 09:48:23', '2020-07-28 17:45:49');
INSERT INTO `jt_session` VALUES (38, 22, 'USER', 'Azn2FyjIMjDzl6PE86hUEPdOpXSgM2Q9dbs5qL03j3zTX1yvCfpo1WUh7TTc7DTw0cgBLC', '2020-07-22 10:12:43', '2020-07-22 10:44:09');
INSERT INTO `jt_session` VALUES (39, 23, 'USER', 'bbama4MnQ23iAqYQyYivRik7ZLPEk2gmjN79f6vArpYlbhup1ihE2G90cIvKzc2I17s5Jg', '2020-07-27 19:01:32', '2020-07-27 19:06:02');
INSERT INTO `jt_session` VALUES (40, 24, 'USER', 'Zy685EAEhwKe4NOSdcY6LnkevoPfohsLH5NjB8sQjTX4qx9LbYxMQVVsxJXFDz7TWictAI', '2020-07-28 10:46:01', NULL);
INSERT INTO `jt_session` VALUES (41, 12, 'CONSOLE', 'pAQIpTuhOqgxJHjm2CEZZcDEtABpQi3ihxpVNwNUQnauPMmBnC3qCNtsiz0IQodQmYuBZy', '2020-07-28 10:54:51', '2020-08-13 19:40:17');
INSERT INTO `jt_session` VALUES (42, 25, 'USER', '0HznnUogGSkCU9PQ1Uuyh4jHboyWkxGPm7EK9w2LGiLUm15FtLFzfyBLiL381qTQm9FBK8', '2020-07-28 11:41:00', NULL);
INSERT INTO `jt_session` VALUES (43, 26, 'USER', 'cbD3tpUJQIcGElK1d8MWiDiV1X0hXtL3u7wbjvN1gvWUgR0oth1IFc8BLsRNMAgBCDfEID', '2020-07-28 12:13:50', '2020-08-11 15:46:55');
INSERT INTO `jt_session` VALUES (44, 27, 'USER', 'xPyZZ9srJHV4ArJelSzSgKpp2VwLRSVWABFFOpy9Tlbk402g2XCD21Tv4F2VRsiWD7jyQp', '2020-07-28 16:49:34', NULL);
INSERT INTO `jt_session` VALUES (45, 28, 'USER', 'nYmr2RQzi8YF3sgGVM3pLRYdCTGZNDc3FaSOyGRX0ZFXs8DkI2QsInARzBRG2IquDdLkLu', '2020-07-28 17:47:09', NULL);
INSERT INTO `jt_session` VALUES (46, 29, 'USER', 'T4fF9foKxEeuo84A4RwrBMTTPGdIhz6hrnSwUfE988C7GmfyaptowMHbEedtLmHwLotakI', '2020-07-28 17:57:06', NULL);
INSERT INTO `jt_session` VALUES (47, 30, 'USER', 'KqShvFp9oi3AI1raXNxu8o1sB4l8f0ilcvAseO7KP9PzCloFuvi9ZvVAaltavU3MUllveh', '2020-07-28 19:03:08', NULL);
INSERT INTO `jt_session` VALUES (48, 31, 'USER', 'sWb1wELooRHDtNJiFrTezOvyq0lVyJgh9ji5CQjkUCxlHlV2c8OixKWnsTD2cuPDJodiI9', '2020-07-28 22:47:58', NULL);
INSERT INTO `jt_session` VALUES (49, 32, 'USER', 'nByvJkrt5Lb2uONKj8rQoqiTWcMfecHbormHt82pSMsJcS6iEICcIlDDhKXgDPlbjaJ67F', '2020-07-31 14:12:21', NULL);
INSERT INTO `jt_session` VALUES (50, 33, 'USER', 'fIET7i5K6DKX0oCkVk9VhdWHLtnHPiyBNCpDLuAl1Owl3nMp1KhzJxk93rXtgSQLebqfSj', '2020-08-03 10:31:00', NULL);
INSERT INTO `jt_session` VALUES (51, 34, 'USER', 'WZxjv8JzSwpdIcufhOPLLSSLtDq5uiwQ1cDdxzU34Nbf5Wkenn8Kc9YUIF5Q9lGD4qzxMg', '2020-08-03 12:15:18', NULL);
INSERT INTO `jt_session` VALUES (52, 35, 'USER', 'Cn2VFw2fKjIWMuvMl6sYejqv5SOHuGZtoYECo8xzrlx3otv4LyXPAI93FEOEA3kF0TLCLi', '2020-08-06 07:53:20', '2020-08-06 08:18:15');
INSERT INTO `jt_session` VALUES (53, 36, 'USER', 'AvMZtpYlYeurAHTYQAG7RfJ43e15xJYxkMTy9RAQya6Kbb19uCA16xoUjsQ3zuWrVhU8rf', '2020-08-06 08:17:39', NULL);
INSERT INTO `jt_session` VALUES (54, 37, 'USER', 'S9veHSmXvXulqzlq9r59zvP6BFU7tcplO0EQeCzMJzeoFizpXuuw4yxXagMtbQjMXWDMt3', '2020-08-06 08:17:39', NULL);
INSERT INTO `jt_session` VALUES (55, 38, 'USER', '0wxWbtF1ZHP1NkkmyF90Wc0y14X73oImhx09uX1UlcyxPQ26xCxsDHmmzVbmTFnmfiLlns', '2020-08-06 08:18:02', NULL);
INSERT INTO `jt_session` VALUES (56, 39, 'USER', 'mkZb2lCTIer8D6fPD5IhhvMiAJ2iV1axZM7ZU2PNGdrAgph6t0JSy6iu2zudhbrCe4afLh', '2020-08-06 08:18:14', NULL);
INSERT INTO `jt_session` VALUES (57, 40, 'USER', 'sfpHG7zrGwNBa9DEFdoN9zQTRwRzyfdKe8OGsxaqbWyIIK9PD4GXokk1tYDs2QSXM5fjhX', '2020-08-08 10:56:00', NULL);
INSERT INTO `jt_session` VALUES (58, 41, 'USER', 'w5G424Q8XIeMCAznXmyRe44idBpAB4dUSRRQWoiq3V2qSVjQ9f79MPCadMtR1Ezr2ianYw', '2020-08-08 17:17:32', NULL);
INSERT INTO `jt_session` VALUES (59, 42, 'USER', 'LFd8Hb4AxrFynNEnvaUgR4Z0lWACFeLeKpDqMWFKOHBrV6DKdq3UopJaaix8mccLgXnKMu', '2020-08-09 06:53:16', '2020-08-09 06:53:45');
INSERT INTO `jt_session` VALUES (60, 43, 'USER', 'kiRFiobeZ9aobpmwreQdNgp9hBSyFDfdov7szBfqiubhcUQplXuQ7dH3ujAOFcIrL7ZA8O', '2020-08-09 06:54:02', NULL);
INSERT INTO `jt_session` VALUES (61, 44, 'USER', 'ZO7rww8k8C2mi3CvyQdxEszzl9SwtD2uCXhvolbgYZO60QQbHCtPLiCjM9TGG1kcujc927', '2020-08-10 12:40:44', '2020-08-10 12:41:11');
INSERT INTO `jt_session` VALUES (62, 45, 'USER', 'v1DfceGMqRjEJdOu8nkidzY4BJnKZspaPvhIURl4tCK3tN3BLKDdHUnFO6YUMwQvq0J1gM', '2020-08-10 13:46:18', NULL);
INSERT INTO `jt_session` VALUES (63, 46, 'USER', 'YydhGaLrJUCiE25IGhKL9SbJkIMcZzcHmjPV1LXe2Aef9jrHXkcwrfdnUkToF2aARiZWFV', '2020-08-10 14:06:02', NULL);
INSERT INTO `jt_session` VALUES (64, 47, 'USER', 'Hu2XbJCHymqiySTneIGjE3fpTbphNAwqTLlrEHd17AcjbsJ8haXSekzURq0SdN8x6IFT8I', '2020-08-10 14:11:36', NULL);
INSERT INTO `jt_session` VALUES (65, 48, 'USER', 'lWvB0Duw2VFRvBCDOHehiUY822QU3IQR1sjF1faiWr8u2rgapZOaTxUTbmcXYywc04MPiN', '2020-08-10 15:29:18', NULL);
INSERT INTO `jt_session` VALUES (66, 49, 'USER', 'WbJprGBWV882q5x9qN6nE9oLSMoPfCHSJEE7ZnoHYpbTUK1GqEtpqXQMyZIpkJq96iIltL', '2020-08-10 16:45:07', NULL);
INSERT INTO `jt_session` VALUES (67, 14, 'CONSOLE', 'VZPcgg0DQ7HgeEyQqiALhrJBV4nasGhdHcAjzOz5DXqX5V4adYX8KAkxMp8uGpc7tP5Vb5', '2020-08-13 21:27:25', '2020-08-13 21:31:18');
INSERT INTO `jt_session` VALUES (68, 50, 'USER', '6c2j78EEizqXfnRHfyU6b04BWMK4wf31lVTMtEJb74Ko0MkDgyVfIXYFv2yzCa32cZnbXF', '2020-08-13 22:30:40', NULL);
INSERT INTO `jt_session` VALUES (69, 51, 'USER', 'Spb94ZuZUQqfFu1tG0NwLGrZ6U5pOTMv3pGnMNTppo1utm7bDCPtAbT3NroI7jy6gkPcWb', '2020-08-13 22:31:59', NULL);
INSERT INTO `jt_session` VALUES (70, 52, 'USER', 'HRCzKZCncjOfMojV5grIE9zUWKyIOAzEB5Bi0xgaZVbqHEJWdx2Rt6SYHtFPrnf3ULPch8', '2020-08-14 04:53:23', NULL);
INSERT INTO `jt_session` VALUES (71, 53, 'USER', '1MsWqFqYaZ11kUJchYNwED4cY2jaQr1Z0kQKxy7f3wjkiaQwtkbylV4yaZf4wdfr2T0eYk', '2020-08-14 05:34:18', NULL);

-- ----------------------------
-- Table structure for jt_sign
-- ----------------------------
DROP TABLE IF EXISTS `jt_sign`;
CREATE TABLE `jt_sign`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `times` date NULL DEFAULT NULL COMMENT '时间',
  `nums` int(10) NULL DEFAULT 0 COMMENT '阅读币数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '签到记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_sign
-- ----------------------------
INSERT INTO `jt_sign` VALUES (18, 18, '2020-07-17', 45);
INSERT INTO `jt_sign` VALUES (19, 21, '2020-07-22', 45);
INSERT INTO `jt_sign` VALUES (20, 15, '2020-07-22', 45);
INSERT INTO `jt_sign` VALUES (21, 19, '2020-07-23', 45);
INSERT INTO `jt_sign` VALUES (22, 26, '2020-07-28', 45);
INSERT INTO `jt_sign` VALUES (23, 19, '2020-07-28', 45);
INSERT INTO `jt_sign` VALUES (24, 25, '2020-07-28', 45);
INSERT INTO `jt_sign` VALUES (25, 17, '2020-07-28', 45);
INSERT INTO `jt_sign` VALUES (26, 29, '2020-07-28', 45);
INSERT INTO `jt_sign` VALUES (27, 19, '2020-08-02', 45);
INSERT INTO `jt_sign` VALUES (28, 33, '2020-08-03', 45);
INSERT INTO `jt_sign` VALUES (29, 19, '2020-08-06', 45);
INSERT INTO `jt_sign` VALUES (30, 33, '2020-08-07', 45);
INSERT INTO `jt_sign` VALUES (31, 33, '2020-08-10', 45);
INSERT INTO `jt_sign` VALUES (32, 47, '2020-08-10', 45);
INSERT INTO `jt_sign` VALUES (33, 19, '2020-08-11', 45);
INSERT INTO `jt_sign` VALUES (34, 33, '2020-08-11', 45);
INSERT INTO `jt_sign` VALUES (35, 19, '2020-08-13', 45);

-- ----------------------------
-- Table structure for jt_system_config
-- ----------------------------
DROP TABLE IF EXISTS `jt_system_config`;
CREATE TABLE `jt_system_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month_card_bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '月卡背景图',
  `season_card_bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '季卡背景图',
  `year_card_bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '年卡背景图',
  `sign_num` int(11) NULL DEFAULT NULL COMMENT '签到奖励数量',
  `service_mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '客服电话',
  `user_agreement` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '用户协议',
  `privacy_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '隐私策略',
  `version_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '版本号',
  `share_num` int(11) NULL DEFAULT 0 COMMENT '分享赠送阅读币数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统信息配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_system_config
-- ----------------------------
INSERT INTO `jt_system_config` VALUES (1, '', '', '', 45, '028-84847847', '<p>待发布</p>', '<p>待发布</p>', '1.0.0', 100);

-- ----------------------------
-- Table structure for jt_user
-- ----------------------------
DROP TABLE IF EXISTS `jt_user`;
CREATE TABLE `jt_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '性别',
  `open_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '微信openId',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最近登录时间',
  `last_login_ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最近登录ip',
  `channels` int(11) NULL DEFAULT 0 COMMENT '小说频道',
  `state` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '状态',
  `rem_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '推荐码',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_user
-- ----------------------------
INSERT INTO `jt_user` VALUES (15, '微醺', 'https://wx.qlogo.cn/mmopen/vi_32/CwJ3DnD39NV6pmsUTh4V4Pib7dz4pW17IdU96hH0ZiaDvJmhfm6tyoOov3WgtB4N4fxicpxL1tBNRJAb68RjvSdxA/132', '1', 'oGTw54x_B7Zpp_ULMcAPIDXSOQDs', '2020-07-17 00:00:00', '117.132.193.209', 1, '1', '000P', '2020-07-15 17:08:35', '2020-07-17 17:53:00');
INSERT INTO `jt_user` VALUES (16, '被逼无奈改个名', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erDYnAOtHHNfJIanicCAU3iclZdAEjVwbm3nN8o3x0iaUiaWvSXicBWTGGAaNCslWIgQRonTCaBTTrKP9g/132', '2', 'oGTw54406cvQ-oxH9PtEQcblQCEw', '2020-07-16 00:00:00', '112.32.16.103', 2, '1', '000I', '2020-07-16 20:11:18', '2020-07-16 20:11:22');
INSERT INTO `jt_user` VALUES (17, '十一', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIf1sb7hVymuXQfPuhicJWiblokRgKvl7niasZogkIAibt21vXMGdkU3bQk4muPL5TVPKe2fVLmvAVDeQ/132', '2', 'oGTw54wmclAPTomzNsSbiLFSFkgw', '2020-08-08 00:00:00', '222.209.59.127', 2, '1', '000J', '2020-07-17 09:27:11', '2020-08-08 17:07:28');
INSERT INTO `jt_user` VALUES (18, '耶耶耶耶耶耶', 'https://wx.qlogo.cn/mmopen/vi_32/eEDzxUNI1tiah5HAuswqqtamibw9HdHtJ1nc9pI3B20mIgND3WX43DXODBqElfVJ7ibviaRwQzDTwllmI925vfMEqA/132', '1', 'oGTw549dAoWE3FrTSuw-MIkaGxPU', '2020-07-17 00:00:00', '117.136.101.15', 2, '1', '0002', '2020-07-17 16:26:25', '2020-07-17 16:26:32');
INSERT INTO `jt_user` VALUES (19, '路德利', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ1ROpicSWMP3iaJpyK5pFX4SKn1W9EGgtf1TDjFcbV2exqIzG0HCA4PtCt7e9xq7Uia5mS48olOiabAg/132', '1', 'oGTw547Jl-Tamcy0xs0jctdMeoG4', '2020-08-19 00:00:00', '117.136.119.79', 1, '1', '000R', '2020-07-17 17:15:17', '2020-08-19 15:49:40');
INSERT INTO `jt_user` VALUES (20, '紧到长不帅', 'https://wx.qlogo.cn/mmopen/vi_32/gFIiaia7D5eMqD5euiceWicR8Q2UMXyEUkPIm2aP3WovBTuueRH3w60sPy4fdAE27VDOuO8vlNs5uNb5841P9akK1g/132', '1', 'oGTw543PP6V0LY_sOQRv0E5NoFls', '2020-08-08 00:00:00', '36.170.34.173', 1, '1', '000S', '2020-07-20 16:11:25', '2020-08-08 18:08:24');
INSERT INTO `jt_user` VALUES (21, '钢铁侠', 'https://wx.qlogo.cn/mmopen/vi_32/0SSJDNafWnDx8coH9F1X3onhgcwsEAkQ2hibYjXbIUz6cnIGY8gF5wJnnb34OrKFL2g30J31wyrdptfoAdrgd0g/132', '1', 'oGTw545RTyQF5crAjdx3-01rekD0', '2020-07-28 00:00:00', '139.207.2.12', 1, '1', '000T', '2020-07-22 09:48:23', '2020-07-28 17:45:49');
INSERT INTO `jt_user` VALUES (22, '蝙蝠侠', 'https://wx.qlogo.cn/mmopen/vi_32/gnbClianDhogriaceCeRpurr3EnOe5Jj6raQS0KDa1nllAAt9UMnRkIXEJX2UW2wxNDKYp4uCx0uGr2vLbrzMR6A/132', '1', 'oGTw541miP1TPtsDGZT6_MvK5qig', '2020-07-22 00:00:00', '118.112.207.152', 2, '1', '000U', '2020-07-22 10:12:42', '2020-07-22 10:44:09');
INSERT INTO `jt_user` VALUES (23, '微小信`神助攻🤒', 'https://wx.qlogo.cn/mmopen/vi_32/AibDMsskN70r2iaonbQDNHAMGtDj8W1DmcAYISAfBqPK7agPabJzH1ahbLG1c1kia8jYIVBUZ03FLibxKmFmomabicQ/132', '1', 'oGTw543fDPmM3Vl6E2RZihkIt2I8', '2020-07-27 00:00:00', '59.62.14.242', 1, '1', '000V', '2020-07-27 19:01:32', '2020-07-27 19:06:02');
INSERT INTO `jt_user` VALUES (24, '九头鱼', 'https://wx.qlogo.cn/mmopen/vi_32/Dic9D0DVl9FOmS77E7icqwFMk8eu9htibkTATsB4dH66l5yBaVKibC0hel3ukichvjZjh8qEyq180xQK3eiaSWJkPcrw/132', '1', 'oGTw54yxzOYpXjWDmk7lZNHi_NZY', '2020-07-28 00:00:00', '180.139.213.102', 0, '1', '0006', '2020-07-28 10:46:01', '2020-07-28 10:46:02');
INSERT INTO `jt_user` VALUES (25, '与你常在', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJr3UFm81OqaSONVd8acZhDggvtojuP8v9rB0ZIFA7vKib6bODwOsfuVLibfeBicMfky5yfjhAticibEnA/132', '1', 'oGTw542EDfcpNc7ZVPJN8hHhWS8o', '2020-07-28 00:00:00', '139.207.105.253', 2, '1', '0007', '2020-07-28 11:41:00', '2020-07-28 11:41:05');
INSERT INTO `jt_user` VALUES (26, 'Jack（大骋医疗）', 'https://wx.qlogo.cn/mmopen/vi_32/YH9R7ShGQekcK4HT2Td3BSHzcqPd9GpwzLiaanSTic8mvAvyibhlzoXroPZxgxYYBkmLMxVtic6kXHDMJeM38NIeIg/132', '1', 'oGTw548g57sEQVLsgrih7lC85g94', '2020-08-11 00:00:00', '114.88.133.17', 1, '1', '000M', '2020-07-28 12:13:50', '2020-08-11 15:46:55');
INSERT INTO `jt_user` VALUES (27, 'enjoy', 'https://wx.qlogo.cn/mmopen/vi_32/O5BVJdsM5Oka8KFRDNbA4a6Ue7thlj8zRYpmtt1Cjhbaib0jq3YRSiadTBxcrNgw9hn7d8PXC583ONNlAxs2mKnw/132', '2', 'oGTw54yY6SAtErLjwo2Ye0ViFQTI', '2020-07-28 00:00:00', '118.112.204.20', 0, '1', '000W', '2020-07-28 16:49:34', '2020-07-28 16:49:34');
INSERT INTO `jt_user` VALUES (28, '857', 'https://wx.qlogo.cn/mmopen/vi_32/G9f5lGR5BqlL190kw8tmgNv2zEyC5npYjuHW4VicQ9jXoCDamIF2xtyZyjiaVEwsV47X6iaex2uH49INkVFEMsDvQ/132', '0', 'oGTw54zJhJ5W33rPGhPN2eUTw-LA', '2020-07-28 00:00:00', '171.210.175.80', 1, '1', '000X', '2020-07-28 17:47:09', '2020-07-28 17:47:13');
INSERT INTO `jt_user` VALUES (29, '城离', 'https://wx.qlogo.cn/mmopen/vi_32/uvr9zVwK1eloJ4yUQX9AozdUVQm2RriaTnplGehjaeeYpfbzgxnkqwjo8yjmSA9pS833UUGAT8kBKrw79nDF51g/132', '2', 'oGTw54zFR0zzWUSYRlblX_RSoAQA', '2020-07-28 00:00:00', '123.147.246.104', 2, '1', '0008', '2020-07-28 17:57:05', '2020-07-28 17:57:09');
INSERT INTO `jt_user` VALUES (30, '许程娟', 'https://wx.qlogo.cn/mmopen/vi_32/RNyEGaEI0oZKk2T2QOe9wNnGeO8lmX96Lu7TBhAUTgCdDeE8wrW0N39Wbr2PEyicBicfbGIrbRoWwia84nkuGSlyA/132', '0', 'oGTw54-daGkQAP0Z1PPKzaXGIDQw', '2020-07-28 00:00:00', '36.161.208.84', 2, '1', '0009', '2020-07-28 19:03:08', '2020-07-28 19:03:12');
INSERT INTO `jt_user` VALUES (31, '魏花生', 'https://wx.qlogo.cn/mmopen/vi_32/L9eh43jgNzz4aP3nLyWvmv0fBdU1Oe1au45lLSCr3HRNSnlkoZdHu8V8Jus0VbHG6mUCoU2sjbzpoG1tOa4MQw/132', '1', 'oGTw54ymo3rVn-Jc4g9S4NlhPlpk', '2020-07-28 00:00:00', '36.61.182.92', 1, '1', '000K', '2020-07-28 22:47:58', '2020-07-28 22:48:02');
INSERT INTO `jt_user` VALUES (32, '晨曦', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erzPHQmreXicBk8Cj52Euv1QWeMPnia55GOYlH5RKicIk8TCmu2aQzRMyJOGbaWejLfETHQfmbibkaPGw/132', '1', 'oGTw54xUBLYJZypspKtiirxLHYrg', '2020-07-31 00:00:00', '114.97.139.21', 1, '1', '000L', '2020-07-31 14:12:21', '2020-07-31 14:12:24');
INSERT INTO `jt_user` VALUES (33, '阿迷', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eorR1qbVISPI6h094WGPvXQz6RSrM4Z8NiaibWypjJWOaLyAbjS9jb7AxAx2Pwt3KvhMQCZkDqZuiasw/132', '2', 'oGTw54998CIsEvQF3-KaMn0xKvFg', '2020-08-03 00:00:00', '112.32.122.247', 2, '1', '000Y', '2020-08-03 10:31:00', '2020-08-03 10:31:06');
INSERT INTO `jt_user` VALUES (34, '不停', 'https://wx.qlogo.cn/mmopen/vi_32/AFdyEe4LEbUYibzX4aR8fkia4iabZibEdlpykYgjVKwjMribiahhWR00GBegl0ctDEYTYcg3nXvWhmcAcdibIPmGf7vKw/132', '2', 'oGTw541_V6lm0MqEF03N5Ij-BFFM', '2020-08-03 00:00:00', '223.104.190.179', 2, '1', '000Z', '2020-08-03 12:15:18', '2020-08-03 12:15:22');
INSERT INTO `jt_user` VALUES (35, '陈怡春', 'https://wx.qlogo.cn/mmhead/66CydP2XaWI2I47WwRF1ibDnh3OOpjULoHelZo4cap9E/132', '0', 'oGTw54-D6DDTvPmzxML9hVU0Gi3U', '2020-08-06 00:00:00', '175.24.9.184', 0, '1', '005E', '2020-08-06 07:53:20', '2020-08-06 08:18:15');
INSERT INTO `jt_user` VALUES (36, '吴珮君', 'https://wx.qlogo.cn/mmhead/Y1CaPMTANibfheqQJibKmfz1OSTW59f5p6YsELDaehUpU/132', '0', 'oGTw543qralMzA2ZQ6VG10LCbfFs', '2020-08-06 00:00:00', '175.24.88.232', 0, '1', '0055', '2020-08-06 08:17:38', '2020-08-06 08:17:39');
INSERT INTO `jt_user` VALUES (37, '黄原霞', 'https://wx.qlogo.cn/mmhead/u7CWKUExfq2rWccn96JWIqo2oZxibtxsHia8NvtvIOG1A/132', '0', 'oGTw546x8bi6KbKsmjmBj6Zl_51M', '2020-08-06 00:00:00', '81.68.168.234', 0, '1', '005F', '2020-08-06 08:17:39', '2020-08-06 08:17:39');
INSERT INTO `jt_user` VALUES (38, '林凯文', 'https://wx.qlogo.cn/mmhead/DAStBzzFoWlhSu73NrXx6rlzeqp4riacLTQQBwsic56p0/132', '0', 'oGTw546kd5Qvr-NdilQhvuiBb4v8', '2020-08-06 00:00:00', '49.235.69.27', 0, '1', '005C', '2020-08-06 08:18:01', '2020-08-06 08:18:02');
INSERT INTO `jt_user` VALUES (39, '陈怡萱', 'https://wx.qlogo.cn/mmhead/J0J071PaZnP2KqaOIlyL5I9etv46244M1qlm5tjJ0Sc/132', '0', 'oGTw54xEN1LKZBoOCuFUogCGrpA0', '2020-08-06 00:00:00', '123.207.214.187', 0, '1', '005D', '2020-08-06 08:18:14', '2020-08-06 08:18:14');
INSERT INTO `jt_user` VALUES (40, '蜡笔小心.', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erXNPkTmjcZ1kuibHZsK2mwZcaRnCORVYTCxZib7c1T2NRYN90sqM0ErrHZdXrJFKcBdibiaxwSr2zVCA/132', '1', 'oGTw54ywLox48zAl127WCWLGeb40', '2020-08-08 00:00:00', '119.36.212.94', 1, '1', '005G', '2020-08-08 10:56:00', '2020-08-08 10:56:04');
INSERT INTO `jt_user` VALUES (41, '莎莎', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJFaVDRIqxpiblT5rjLOJSJZZbZKZR8G0cyfBrUkxicT6xRv8ogMhgYfwbj8iazMejTBTq7oolurLJZg/132', '2', 'oGTw545n6SjLPSaQw0E_avZiiX4I', '2020-08-08 00:00:00', '36.170.34.173', 1, '1', '0053', '2020-08-08 17:17:32', '2020-08-08 17:17:35');
INSERT INTO `jt_user` VALUES (42, '吴惠珊', 'https://wx.qlogo.cn/mmhead/Xkvp7uC7uP94U44hFJ0XVJUy7pq3chJ7LPYTS2gfOr4/132', '0', 'oGTw54z_Q7p8yCmmR3u-LVh6hqFE', '2020-08-09 00:00:00', '49.235.114.129', 0, '1', '005H', '2020-08-09 06:53:16', '2020-08-09 06:53:45');
INSERT INTO `jt_user` VALUES (43, '杜惠茹', 'https://wx.qlogo.cn/mmhead/sPwJtFzjFVuCKKicd2JnDsCuoX8Zfu8N5bXdNEKSJy6U/132', '0', 'oGTw54zaPCMiypluKNYkmnBBHNrs', '2020-08-09 00:00:00', '49.234.40.41', 0, '1', '005Q', '2020-08-09 06:54:02', '2020-08-09 06:54:02');
INSERT INTO `jt_user` VALUES (44, '吴思汉', 'https://wx.qlogo.cn/mmhead/sqQgKibuRZS9fbTG4dicGwu71smcttBupUgSwf01ly9Lo/132', '0', 'oGTw54773TcDu2k3kjGbDirQkyAY', '2020-08-10 00:00:00', '81.68.169.55', 0, '1', '005A', '2020-08-10 12:40:43', '2020-08-10 12:41:11');
INSERT INTO `jt_user` VALUES (45, '林哲玮', 'https://wx.qlogo.cn/mmhead/Vh9jibqXngf8RLQzCuJX7yeFS1y9uxG1XUDCru8ibmp50/132', '0', 'oGTw5464IcRRFJ2rELz3Z98oNA5o', '2020-08-10 00:00:00', '175.24.19.63', 0, '1', '0054', '2020-08-10 13:46:18', '2020-08-10 13:46:18');
INSERT INTO `jt_user` VALUES (46, '是我的海', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIBIQKyibEibjwicdLFZLQvyiaOHWjcdZOOic4kiay3jqIKXlXV8GLJQxxcib6n2O1dtXE3icOWr7OfVMrRGA/132', '2', 'oGTw545FC_cf5le-PNfOsa2bMMyo', '2020-08-10 00:00:00', '183.160.230.157', 0, '1', '005B', '2020-08-10 14:06:02', '2020-08-10 14:06:02');
INSERT INTO `jt_user` VALUES (47, 'LIVE', 'https://wx.qlogo.cn/mmopen/vi_32/U5iak9giaAC7bWxTE1EDfxHZrf5c5NJMue90bS7ibpD7HSPLGFvjGf9g1uMfYogtazzy9sey9hbvCSBWIPUr9uapw/132', '2', 'oGTw5414ITfaKztqRLvp-6Vr5W7E', '2020-08-10 00:00:00', '112.32.20.50', 2, '1', '0051', '2020-08-10 14:11:36', '2020-08-10 14:11:40');
INSERT INTO `jt_user` VALUES (48, '李', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eruiaiab7OMsD9BPK5McI6SafjEia2UZXDrklZ40Iqof19QCqUahfZRTPH6ab0FNsgMic8xAchoP1XUXw/132', '0', 'oGTw545IzevlBDCUzr0FlDQSZyxY', '2020-08-10 00:00:00', '106.19.29.42', 2, '1', '005N', '2020-08-10 15:29:18', '2020-08-10 15:29:22');
INSERT INTO `jt_user` VALUES (49, '一蓑烟雨任平生', 'https://wx.qlogo.cn/mmopen/vi_32/y4x2eN8sKibeNYOE0caKRPuWJVzuQsglsIc0HWaibVTerYuVcicnktQCoEDWVbia2CKD17vfajFOTc4a5TA0wGrurw/132', '0', 'oGTw548SdC7DDhnn7NSZhu0WJDr0', '2020-08-10 00:00:00', '183.160.230.187', 2, '1', '005O', '2020-08-10 16:45:07', '2020-08-10 16:45:11');
INSERT INTO `jt_user` VALUES (50, '橘生淮南', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIoEwHBWIVu6ahRCm1lQ7NVw0VI0KbQrxic2svHrqx5M9IseelrNUeRShLBrYSSD4ppxPFp2cTstYA/132', '2', 'oGTw543aef1oGy_So97EOqqeBQlw', '2020-08-13 00:00:00', '120.243.222.233', 2, '1', '005P', '2020-08-13 22:30:40', '2020-08-13 22:30:44');
INSERT INTO `jt_user` VALUES (51, '旺', 'https://wx.qlogo.cn/mmopen/vi_32/WEjbteEN8NucChb27IWajia4VJ3tkiapMveeLBWJfZjMWOqicKHT7OZWaKicVsQJNtgQhr2agHxywau4gUJvicGKM4Q/132', '1', 'oGTw54zXSOx1JS-1ZbDMh6at6jck', '2020-08-13 00:00:00', '116.149.209.23', 1, '1', '005I', '2020-08-13 22:31:59', '2020-08-13 22:32:11');
INSERT INTO `jt_user` VALUES (52, '林伦凯', 'https://wx.qlogo.cn/mmhead/2icbUHa3WRz5Tc9ZcwtdVNsPX8HBMOFmL1dEGZDYukQw/132', '0', 'oGTw54_YKGVVz5QaOurTwGcq8Abg', '2020-08-14 00:00:00', '81.68.172.78', 0, '1', '005J', '2020-08-14 04:53:23', '2020-08-14 04:53:23');
INSERT INTO `jt_user` VALUES (53, '蔡雅娟', 'https://wx.qlogo.cn/mmhead/NHv0SWN7foh8k4uX4icpjoDicl2gTCAtIGdlGtia7TXxMM/132', '0', 'oGTw54-IxqDMttc0s1FswkSXfCtQ', '2020-08-14 00:00:00', '175.24.110.223', 0, '1', '0052', '2020-08-14 05:34:18', '2020-08-14 05:34:18');

-- ----------------------------
-- Table structure for jt_user_bookcase
-- ----------------------------
DROP TABLE IF EXISTS `jt_user_bookcase`;
CREATE TABLE `jt_user_bookcase`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `fid` int(11) NULL DEFAULT 0 COMMENT '小说id',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户书架表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_user_bookcase
-- ----------------------------
INSERT INTO `jt_user_bookcase` VALUES (25, 41, 13, '2020-08-08 17:20:28');
INSERT INTO `jt_user_bookcase` VALUES (26, 19, 16, '2020-08-08 17:25:45');
INSERT INTO `jt_user_bookcase` VALUES (27, 47, 17, '2020-08-10 14:11:59');
INSERT INTO `jt_user_bookcase` VALUES (28, 51, 19, '2020-08-13 22:33:21');

-- ----------------------------
-- Table structure for jt_user_buy_fiction
-- ----------------------------
DROP TABLE IF EXISTS `jt_user_buy_fiction`;
CREATE TABLE `jt_user_buy_fiction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `chapter_id` int(11) NULL DEFAULT 0 COMMENT '章节id',
  `fid` int(11) NULL DEFAULT 0 COMMENT '小说id',
  `currency_num` int(11) NULL DEFAULT 0 COMMENT '花费阅读币数量',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `search`(`user_id`, `chapter_id`, `fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户购买小说表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_user_buy_fiction
-- ----------------------------
INSERT INTO `jt_user_buy_fiction` VALUES (1, 19, 90, 16, 35, '2020-08-10 13:14:45', NULL);
INSERT INTO `jt_user_buy_fiction` VALUES (2, 19, 89, 16, 35, '2020-08-10 13:14:58', NULL);

-- ----------------------------
-- Table structure for jt_user_goods
-- ----------------------------
DROP TABLE IF EXISTS `jt_user_goods`;
CREATE TABLE `jt_user_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT 0 COMMENT '用户id',
  `goods_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '商品类型',
  `amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  `updated_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_user_goods
-- ----------------------------
INSERT INTO `jt_user_goods` VALUES (1, 3, '1', 43490.00, '2020-06-22 11:47:07', '2020-07-07 21:48:18');
INSERT INTO `jt_user_goods` VALUES (2, 10, '1', 4980.00, '2020-07-06 22:29:10', '2020-07-06 22:29:33');
INSERT INTO `jt_user_goods` VALUES (3, 4, '1', 1132.00, '2020-07-09 10:56:22', '2020-07-13 20:46:33');
INSERT INTO `jt_user_goods` VALUES (4, 7, '1', 11040.00, '2020-07-10 14:20:36', '2020-07-12 12:45:07');
INSERT INTO `jt_user_goods` VALUES (5, 13, '1', 10031.00, '2020-07-10 17:36:33', '2020-07-15 09:49:51');
INSERT INTO `jt_user_goods` VALUES (6, 14, '1', 100101.00, '2020-07-15 09:48:28', '2020-07-15 09:58:15');
INSERT INTO `jt_user_goods` VALUES (7, 18, '1', 45.00, '2020-07-17 16:26:52', NULL);
INSERT INTO `jt_user_goods` VALUES (8, 21, '1', 45.00, '2020-07-22 09:48:34', NULL);
INSERT INTO `jt_user_goods` VALUES (9, 15, '1', 45.00, '2020-07-22 10:33:45', NULL);
INSERT INTO `jt_user_goods` VALUES (10, 19, '1', 1200.00, '2020-07-23 11:24:10', '2020-08-13 20:20:51');
INSERT INTO `jt_user_goods` VALUES (11, 26, '1', 45.00, '2020-07-28 12:15:11', NULL);
INSERT INTO `jt_user_goods` VALUES (12, 25, '1', 45.00, '2020-07-28 17:09:42', NULL);
INSERT INTO `jt_user_goods` VALUES (13, 17, '1', 45.00, '2020-07-28 17:19:28', NULL);
INSERT INTO `jt_user_goods` VALUES (14, 29, '1', 45.00, '2020-07-28 18:50:22', NULL);
INSERT INTO `jt_user_goods` VALUES (15, 33, '1', 180.00, '2020-08-03 10:31:12', '2020-08-11 16:15:21');
INSERT INTO `jt_user_goods` VALUES (16, 20, '1', 100.00, '2020-08-08 17:17:32', NULL);
INSERT INTO `jt_user_goods` VALUES (17, 47, '1', 45.00, '2020-08-10 14:13:30', NULL);

-- ----------------------------
-- Table structure for jt_wechat_user_temporary
-- ----------------------------
DROP TABLE IF EXISTS `jt_wechat_user_temporary`;
CREATE TABLE `jt_wechat_user_temporary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_id` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '微信opeId',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '微信昵称',
  `gender` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '性别',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '微信用户注册临时表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jt_wechat_user_temporary
-- ----------------------------
INSERT INTO `jt_wechat_user_temporary` VALUES (5, 'oiOrs4vZ8WCM87iP0dehpExy_a98', '紧到长不帅', '1', 'https://wx.qlogo.cn/mmopen/vi_32/rLOZSYaQYbbicpDDJNZkskicuAFcRVCec4gibstPib4R0DzCqZTaPgDSa2CI6buLMfPfKFiaHtE8RRVrY8d6UUrvfOw/132', '2020-06-18 09:14:08');

SET FOREIGN_KEY_CHECKS = 1;
