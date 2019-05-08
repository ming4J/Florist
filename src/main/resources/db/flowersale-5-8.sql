/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : flowersale

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 08/05/2019 20:36:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `openId` char(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openid',
  `adressId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'addressid',
  `receName` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '收货人姓名',
  `gender` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '性别',
  `phoneNum` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '详细地址',
  `def` int(1) NOT NULL DEFAULT '0' COMMENT '是否为默认地址',
  PRIMARY KEY (`adressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` VALUES ('12345', '98173718794076207', 'shellmingsss', '男', '18511337814', '北京市昌平区阳坊镇富民街58号', 1);
INSERT INTO `address` VALUES ('12345', '98173718794076208', 'shellming', '男', '18511337814', '北京市昌平区阳坊镇富民街58号', 1);
INSERT INTO `address` VALUES ('12345', '98173718794076209', 'shellming', '男', '18511337814', '北京市昌平区阳坊镇富民街58号', 1);
INSERT INTO `address` VALUES ('12345', '98173718794076210', 'shellming', '男', '18511337814', '北京市昌平区阳坊镇富民街58号', 1);
COMMIT;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `openId` char(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openid',
  `flowerId` int(5) NOT NULL COMMENT '花id',
  `flowerNum` int(255) NOT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------
BEGIN;
INSERT INTO `cart` VALUES ('12345', 2, 48);
INSERT INTO `cart` VALUES ('12345', 3, 11);
INSERT INTO `cart` VALUES ('12345', 4, 2);
COMMIT;

-- ----------------------------
-- Table structure for classifyindex
-- ----------------------------
DROP TABLE IF EXISTS `classifyindex`;
CREATE TABLE `classifyindex` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `content` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of classifyindex
-- ----------------------------
BEGIN;
INSERT INTO `classifyindex` VALUES (1, '热门推荐');
INSERT INTO `classifyindex` VALUES (2, '鲜花');
INSERT INTO `classifyindex` VALUES (3, '永生花');
INSERT INTO `classifyindex` VALUES (4, '送花场景');
COMMIT;

-- ----------------------------
-- Table structure for classifyitem
-- ----------------------------
DROP TABLE IF EXISTS `classifyitem`;
CREATE TABLE `classifyitem` (
  `itemId` int(3) NOT NULL AUTO_INCREMENT,
  `parentId` int(2) NOT NULL,
  `imgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `itemContent` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `redirectUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of classifyitem
-- ----------------------------
BEGIN;
INSERT INTO `classifyitem` VALUES (4, 2, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhe03n84j20by0d1ta8.jpg', '一生一世', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhe03n84j20by0d1ta8.jpg');
INSERT INTO `classifyitem` VALUES (5, 2, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhggqslqj20ku0mqk00.jpg', '爱在心头', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhggqslqj20ku0mqk00.jpg');
INSERT INTO `classifyitem` VALUES (6, 2, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhi4qg71j20ku0mqqcj.jpg', '你的香气', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhi4qg71j20ku0mqqcj.jpg');
INSERT INTO `classifyitem` VALUES (7, 3, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhe03n84j20by0d1ta8.jpg', '一生一世', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhe03n84j20by0d1ta8.jpg');
INSERT INTO `classifyitem` VALUES (8, 3, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhggqslqj20ku0mqk00.jpg', '爱在心头', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhggqslqj20ku0mqk00.jpg');
INSERT INTO `classifyitem` VALUES (9, 3, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhi4qg71j20ku0mqqcj.jpg', '你的香气', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhi4qg71j20ku0mqqcj.jpg');
INSERT INTO `classifyitem` VALUES (10, 4, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhe03n84j20by0d1ta8.jpg', '一生一世', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhe03n84j20by0d1ta8.jpg');
INSERT INTO `classifyitem` VALUES (11, 4, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhggqslqj20ku0mqk00.jpg', '爱在心头', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhggqslqj20ku0mqk00.jpg');
INSERT INTO `classifyitem` VALUES (12, 4, 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhi4qg71j20ku0mqqcj.jpg', '你的香气', 'https://ws1.sinaimg.cn/large/b04b21b7ly1g2rhi4qg71j20ku0mqqcj.jpg');
COMMIT;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `flowerId` int(11) NOT NULL COMMENT '花id',
  `openId` char(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openid',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `crated` int(1) NOT NULL COMMENT '评分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
BEGIN;
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (3, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (1, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花�', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花', 5);
INSERT INTO `comment` VALUES (2, '12345', '很不错的花花花�', 5);
COMMIT;

-- ----------------------------
-- Table structure for flower
-- ----------------------------
DROP TABLE IF EXISTS `flower`;
CREATE TABLE `flower` (
  `flowerId` int(5) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `flowerName` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '花名',
  `flowerDesc` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '描述',
  `disPrice` double(10,2) NOT NULL COMMENT '折扣价',
  `price` double(10,2) NOT NULL COMMENT '价格',
  `salesVol` int(255) DEFAULT NULL COMMENT '销量',
  `stock` int(255) NOT NULL COMMENT '库存',
  `category` char(30) COLLATE utf8mb4_general_ci NOT NULL COMMENT '分类',
  `rated` int(1) DEFAULT NULL COMMENT '评分',
  `scene` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '送花场景',
  `color` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '颜色',
  `material` char(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT '花材',
  `banner` json NOT NULL COMMENT '焦点图',
  `flowerSpec` json NOT NULL COMMENT '规格',
  `detailPic` json NOT NULL COMMENT '详情图',
  `showIndex` int(1) NOT NULL COMMENT '展示类型',
  `flowerThumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '展示缩略图',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`flowerId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of flower
-- ----------------------------
BEGIN;
INSERT INTO `flower` VALUES (1, '留住好时光', '留住好时光鲜花', 418.00, 318.00, 100, 100, '1', 4, '送病号', '红', '玫瑰', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 1, 'https://s2.ax1x.com/2019/03/06/kjg8SS.jpg', '2019-05-07 00:59:52');
INSERT INTO `flower` VALUES (2, '留住好时光', '留住好时光鲜花', 318.00, 118.00, 200, 100, '1', 4, '送病号', '红', '玫瑰', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjgQFP.jpg', '2019-05-06 00:59:40');
INSERT INTO `flower` VALUES (3, '留住好时光', '留住好时光鲜花', 218.00, 218.00, 300, 100, '1', 4, '送病号', '红', '康乃馨', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 1, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-05 00:58:18');
INSERT INTO `flower` VALUES (4, '留住好时光', '留住好时光鲜花', 118.00, 418.00, 400, 100, '1', 4, '送病号', '红', '康乃馨', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjgKot.jpg', '2019-05-04 00:59:48');
INSERT INTO `flower` VALUES (5, '留住好时光', '留住好时光鲜花', 218.00, 518.00, 500, 100, '1', 4, '送病号', '红', '百合', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 1, 'https://s2.ax1x.com/2019/03/06/kjg1W8.jpg', '2019-05-03 00:58:25');
INSERT INTO `flower` VALUES (6, '留住好时光', '留住好时光鲜花', 218.00, 318.00, 600, 100, '1', 4, '送病号', '红', '百合', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjg8SS.jpg', '2019-05-02 21:18:18');
INSERT INTO `flower` VALUES (7, '留住好时光', '留住好时光鲜花', 518.00, 318.00, 700, 100, '1', 4, '送病号', '红', '扶郎', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 1, 'https://s2.ax1x.com/2019/03/06/kjgQFP.jpg', '2019-05-07 00:59:57');
INSERT INTO `flower` VALUES (8, '留住好时光', '留住好时光鲜花', 618.00, 318.00, 800, 100, '1', 4, '送病号', '红', '扶郎', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-07 01:00:00');
INSERT INTO `flower` VALUES (128, '留住好时光', '留住好时光鲜花', 218.00, 318.00, 900, 100, '1', 4, '送病号', '红', '向日葵', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-06 21:18:18');
INSERT INTO `flower` VALUES (129, '留住好时光', '留住好时光鲜花', 218.00, 318.00, 1000, 100, '1', 4, '送病号', '红', '向日葵', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-06 21:18:18');
INSERT INTO `flower` VALUES (130, '留住好时光', '留住好时光鲜花', 218.00, 318.00, 1100, 100, '1', 4, '送病号', '红', '郁金香', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-06 21:18:18');
INSERT INTO `flower` VALUES (131, '留住好时光', '留住好时光鲜花', 218.00, 318.00, 1200, 100, '1', 4, '送病号', '红', '郁金香', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-06 21:18:18');
INSERT INTO `flower` VALUES (132, '留住好时光', '留住好时光鲜花', 218.00, 318.00, 1300, 100, '1', 4, '送病号', '红', '马蹄莲', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5zwbwj20ku0mqaes.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5pf81j20by0d1jsy.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5q841j20by0d1wf5.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', '[{\"id\": 1, \"content\": 6}, {\"id\": 2, \"content\": 9}, {\"id\": 3, \"content\": 10}, {\"id\": 4, \"content\": 66}]', '[{\"id\": 1, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnwlrqij20ku0kkabd.jpg\"}, {\"id\": 2, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxvhbej20kk1jrk08.jpg\"}, {\"id\": 3, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnx6euhj20ku0m1q4v.jpg\"}, {\"id\": 4, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxft72j20ku0qhacj.jpg\"}, {\"id\": 5, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0ucnxojxij20ku0fv75v.jpg\"}, {\"id\": 6, \"url\": \"https://ws1.sinaimg.cn/large/b04b21b7ly1g0u6r5xz4gj20by0d1jtj.jpg\"}]', 2, 'https://s2.ax1x.com/2019/03/06/kjglJf.jpg', '2019-05-06 21:18:18');
COMMIT;

-- ----------------------------
-- Table structure for indexshow
-- ----------------------------
DROP TABLE IF EXISTS `indexshow`;
CREATE TABLE `indexshow` (
  `id` int(1) NOT NULL,
  `imgurl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of indexshow
-- ----------------------------
BEGIN;
INSERT INTO `indexshow` VALUES (1, 'https://s2.ax1x.com/2019/03/06/kjgudI.png');
INSERT INTO `indexshow` VALUES (2, 'https://s2.ax1x.com/2019/03/06/kjgneA.png');
INSERT INTO `indexshow` VALUES (3, 'https://s2.ax1x.com/2019/03/06/kjgeLd.png');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(1) NOT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` VALUES (1, '本店开业：特价优惠，欢迎广大顾客前来选购');
COMMIT;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'orderid',
  `openId` char(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderStatus` int(1) unsigned zerofill NOT NULL,
  `payStatus` int(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES ('1', '12345', 0, 0);
COMMIT;

-- ----------------------------
-- Table structure for orderDetail
-- ----------------------------
DROP TABLE IF EXISTS `orderDetail`;
CREATE TABLE `orderDetail` (
  `openId` char(28) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `orderId` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `flowerId` int(5) DEFAULT NULL,
  `flowerName` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `disPrice` double(10,2) DEFAULT NULL,
  `flowerNum` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of orderDetail
-- ----------------------------
BEGIN;
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
INSERT INTO `orderDetail` VALUES ('12345', '1', 1, 'sss', 199.00, 5);
COMMIT;

-- ----------------------------
-- Table structure for SequelizeMeta
-- ----------------------------
DROP TABLE IF EXISTS `SequelizeMeta`;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of SequelizeMeta
-- ----------------------------
BEGIN;
INSERT INTO `SequelizeMeta` VALUES ('20190117132136-init-yio_qrcodes.js');
INSERT INTO `SequelizeMeta` VALUES ('20190118093805-init-yio_orders.js');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `openid` char(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openid',
  `nickname` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '昵称',
  `status` int(1) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('12345', '12345', 1, 'https://www.baidu.com/link?url=EGVDJ2CeqUgBU7aWjPQn5uGojHU77JE89kac71Hs4ExHOsJn20JEWODHwA6Rc0tvbUhojyaLwWiemJPTtBU7EqT7HlMXzBeQI21FE2GTbj5Dl_wyqAVCnc2LlAvfaB_0y3WpvzE9XgNxb205QIndseb_r--HMiqgZZR9CyhDXSW&wd=&eqid=88ec65870006a059000000025cd0747e');
COMMIT;

-- ----------------------------
-- Table structure for yio_orders
-- ----------------------------
DROP TABLE IF EXISTS `yio_orders`;
CREATE TABLE `yio_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `order_type` enum('wechat','alipay') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'wechat',
  `order_price` decimal(7,2) NOT NULL,
  `order_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pay_status` enum('未支付','已支付','已过期') COLLATE utf8mb4_general_ci NOT NULL DEFAULT '未支付',
  `qr_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qr_price` decimal(7,2) NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Table structure for yio_qrcodes
-- ----------------------------
DROP TABLE IF EXISTS `yio_qrcodes`;
CREATE TABLE `yio_qrcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qr_type` enum('wechat','alipay') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'wechat',
  `qr_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qr_price` decimal(7,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

SET FOREIGN_KEY_CHECKS = 1;
