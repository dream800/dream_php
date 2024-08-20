/*
Navicat MySQL Data Transfer

Source Server         : phpstudy_pro
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : bank

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-04-24 16:46:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) DEFAULT NULL COMMENT 'Banner描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='banner管理表';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '首页的热点轮播图', '描述描述', '2020-04-23 17:57:46', '2020-04-23 17:57:46');
INSERT INTO `banner` VALUES ('2', '首页的热点轮播图', '描述描述', '2020-04-23 18:00:58', '2020-04-23 18:00:58');
INSERT INTO `banner` VALUES ('3', '首页的热点轮播图', '描述描述', '2020-04-23 18:01:18', '2020-04-23 18:01:18');
INSERT INTO `banner` VALUES ('4', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:24', '2020-04-23 18:02:24');
INSERT INTO `banner` VALUES ('5', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:25', '2020-04-23 18:02:25');
INSERT INTO `banner` VALUES ('6', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:26', '2020-04-23 18:02:26');
INSERT INTO `banner` VALUES ('7', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:33', '2020-04-23 18:02:33');
INSERT INTO `banner` VALUES ('8', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:33', '2020-04-23 18:02:33');
INSERT INTO `banner` VALUES ('9', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:33', '2020-04-23 18:02:33');
INSERT INTO `banner` VALUES ('10', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:34', '2020-04-23 18:02:34');
INSERT INTO `banner` VALUES ('11', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:34', '2020-04-23 18:02:34');
INSERT INTO `banner` VALUES ('12', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:34', '2020-04-23 18:02:34');
INSERT INTO `banner` VALUES ('13', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `banner` VALUES ('14', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `banner` VALUES ('15', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `banner` VALUES ('16', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `banner` VALUES ('17', '首页的热点轮播图', '描述描述', '2020-04-23 18:02:35', '2020-04-23 18:02:35');

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='banner子项表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_04_23_175236_create_notifications_table', '1');

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('143a16be-b8b6-4945-8b1b-2666c9af049c', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '17', '{\"id\":17,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `notifications` VALUES ('1c4a8f97-1243-4904-891d-6b4ecdef5528', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '5', '{\"id\":5,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:25', '2020-04-23 18:02:25');
INSERT INTO `notifications` VALUES ('23800157-6859-4c42-b887-66d232abd8f3', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '3', '{\"id\":3,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:01:18', '2020-04-23 18:01:18');
INSERT INTO `notifications` VALUES ('2ca53a1a-d5a8-4c47-8122-16055ec48082', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '6', '{\"id\":6,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:26', '2020-04-23 18:02:26');
INSERT INTO `notifications` VALUES ('459418ca-a9cb-4c40-b292-5ae17738abf2', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '7', '{\"id\":7,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:33', '2020-04-23 18:02:33');
INSERT INTO `notifications` VALUES ('5e74edeb-8f51-498e-9706-05e2d6ce83d2', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '11', '{\"id\":11,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:34', '2020-04-23 18:02:34');
INSERT INTO `notifications` VALUES ('613bf24d-1aa1-4b45-b7b3-485d12eadae8', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '14', '{\"id\":14,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `notifications` VALUES ('62e604cf-6a6b-4520-9663-94bfb61c1e16', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '12', '{\"id\":12,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:34', '2020-04-23 18:02:34');
INSERT INTO `notifications` VALUES ('797a5c6f-ee34-4fd0-aa89-99dfc6cda14c', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '10', '{\"id\":10,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:34', '2020-04-23 18:02:34');
INSERT INTO `notifications` VALUES ('853ca262-a585-4e1b-853f-90740411fb2a', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '9', '{\"id\":9,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:33', '2020-04-23 18:02:33');
INSERT INTO `notifications` VALUES ('8f47943e-b073-4c1d-b822-6cee37867804', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '13', '{\"id\":13,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `notifications` VALUES ('a9139447-8727-4008-8554-84d95aed5c86', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '8', '{\"id\":8,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:33', '2020-04-23 18:02:33');
INSERT INTO `notifications` VALUES ('b2b585e5-c0ef-4716-87c3-f76fc5746bdc', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '15', '{\"id\":15,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:35', '2020-04-23 18:02:35');
INSERT INTO `notifications` VALUES ('dc4d1d14-8b50-47b1-8635-726110722e86', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '4', '{\"id\":4,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:24', '2020-04-23 18:02:24');
INSERT INTO `notifications` VALUES ('f1a2a421-2f62-4fcd-a4a8-ddb09736c2dd', 'App\\Notifications\\TestNum', 'App\\Models\\Banner', '16', '{\"id\":16,\"name\":\"\\u9996\\u9875\\u7684\\u70ed\\u70b9\\u8f6e\\u64ad\\u56fe\",\"description\":\"\\u63cf\\u8ff0\\u63cf\\u8ff0\"}', null, '2020-04-23 18:02:35', '2020-04-23 18:02:35');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for tests
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tests
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_category
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_category`;
CREATE TABLE `warehouse_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_root` tinyint(3) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `index` int(10) DEFAULT NULL,
  `online` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_category
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_sku
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_sku`;
CREATE TABLE `warehouse_sku` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) DEFAULT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `online` tinyint(3) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `spu_id` int(10) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `root_category_id` int(10) DEFAULT NULL,
  `specs` json DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_sku
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_sku_spec
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_sku_spec`;
CREATE TABLE `warehouse_sku_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) DEFAULT NULL,
  `sku_id` int(10) DEFAULT NULL,
  `key_id` int(10) DEFAULT NULL,
  `value_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_sku_spec
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_spec_key
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_spec_key`;
CREATE TABLE `warehouse_spec_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `standard` tinyint(3) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_spec_key
-- ----------------------------
INSERT INTO `warehouse_spec_key` VALUES ('1', '颜色', null, '1', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('2', '尺寸', '英寸', '0', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('3', '图案', null, '0', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('4', '尺码', null, '1', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('5', '颜色与规格', null, '0', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('6', '数量', '个', '0', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('7', '双色沙发尺寸', '米', '0', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('8', '台灯高低', null, '0', null, null, null);
INSERT INTO `warehouse_spec_key` VALUES ('9', '颜色', null, '1', null, null, null);

-- ----------------------------
-- Table structure for warehouse_spec_value
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_spec_value`;
CREATE TABLE `warehouse_spec_value` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `spec_id` int(10) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_spec_value
-- ----------------------------
INSERT INTO `warehouse_spec_value` VALUES ('1', '青蓝色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('2', '藏青色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('3', '深白色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('4', '少女粉', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('5', '7英寸', '2', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('6', '4.3英寸', '2', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('7', '10英寸', '2', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('8', '七龙珠', '3', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('9', '灌篮高手', '3', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('10', '圣斗士', '3', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('11', '黑色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('12', '墨绿色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('13', '小号 S', '4', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('14', '中号 M', '4', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('15', '大号 L', '4', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('16', '加大 XL', '4', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('17', '银色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('18', '金色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('19', '桌旗 30 x 100 cm', '5', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('20', '桌旗 30 x 220 cm', '5', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('21', '桌布 140 x 360 cm', '5', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('22', '桌布 160 x 330 cm', '5', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('23', '棕色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('24', '咖色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('25', '红色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('26', '金色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('27', '一盒30个', '6', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('28', '一盒50个', '6', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('29', '鹅暖青', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('30', '驼色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('31', '1.5米 * 1米', '7', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('32', '2米 * 1米', '7', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('33', 'L型 2米 + 0.8米', '7', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('34', '米黄色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('35', '海蓝色', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('36', '象牙白', '1', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('37', '落地灯', '8', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('38', '台灯', '8', null, null, null);
INSERT INTO `warehouse_spec_value` VALUES ('39', '抹茶绿', '1', null, null, null);

-- ----------------------------
-- Table structure for warehouse_spu
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_spu`;
CREATE TABLE `warehouse_spu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(800) DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  `root_category_id` int(10) DEFAULT NULL,
  `online` tinyint(3) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `sketch_spec_id` int(10) DEFAULT NULL,
  `default_sku_id` int(10) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `discount_price` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `tags` varchar(30) DEFAULT NULL,
  `is_test` tinyint(3) DEFAULT NULL,
  `spu_theme_img` json DEFAULT NULL,
  `for_theme_img` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_spu
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_spu_detail_img
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_spu_detail_img`;
CREATE TABLE `warehouse_spu_detail_img` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `spu_id` int(11) DEFAULT NULL,
  `index` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_spu_detail_img
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_spu_key
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_spu_key`;
CREATE TABLE `warehouse_spu_key` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `spu_id` int(10) DEFAULT NULL,
  `spec_key_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_spu_key
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_theme
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_theme`;
CREATE TABLE `warehouse_theme` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tpl_name` varchar(30) DEFAULT NULL,
  `entrance_img` varchar(255) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `internal_top_img` varchar(255) DEFAULT NULL,
  `title_img` varchar(255) DEFAULT NULL,
  `online` tinyint(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_theme
-- ----------------------------

-- ----------------------------
-- Table structure for warehouse_theme_spu
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_theme_spu`;
CREATE TABLE `warehouse_theme_spu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) DEFAULT NULL,
  `spu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of warehouse_theme_spu
-- ----------------------------
