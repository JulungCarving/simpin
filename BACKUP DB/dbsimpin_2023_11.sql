/*
Navicat MySQL Data Transfer

Source Server         : Localhost_MySQL
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : dbsimpin

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2023-11-13 21:02:53
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
-- Table structure for data_pinjaman
-- ----------------------------
DROP TABLE IF EXISTS `data_pinjaman`;
CREATE TABLE `data_pinjaman` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_pinjaman
-- ----------------------------
INSERT INTO `data_pinjaman` VALUES ('1', '1');

-- ----------------------------
-- Table structure for data_pinjaman_detail
-- ----------------------------
DROP TABLE IF EXISTS `data_pinjaman_detail`;
CREATE TABLE `data_pinjaman_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_pinjaman_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_pinjaman_detail
-- ----------------------------

-- ----------------------------
-- Table structure for data_potongan
-- ----------------------------
DROP TABLE IF EXISTS `data_potongan`;
CREATE TABLE `data_potongan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int DEFAULT NULL,
  `thn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bln` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `debet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `kredit` varchar(255) DEFAULT NULL,
  `potongan_id` bigint DEFAULT NULL,
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
  `users_id` int DEFAULT NULL,
  `thn` varchar(255) DEFAULT NULL,
  `bln` varchar(255) DEFAULT NULL,
  `saldo_awal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `saldo_masuk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `saldo_keluar` varchar(255) DEFAULT NULL,
  `saldo_akhir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_shu
-- ----------------------------
INSERT INTO `data_shu` VALUES ('1', '1', '2017', '1', '200000', null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('2', '1', '2018', '2', null, '200000', null, null, null, '400000');
INSERT INTO `data_shu` VALUES ('3', '1', '2019', '3', null, '200000', null, null, null, '600000');
INSERT INTO `data_shu` VALUES ('4', '1', '2020', '4', null, '300000', null, null, null, '900000');
INSERT INTO `data_shu` VALUES ('5', '1', '2021', '5', null, '500000', null, null, null, '1400000');
INSERT INTO `data_shu` VALUES ('6', '1', '2022', '6', null, '550000', null, null, null, '1950000');
INSERT INTO `data_shu` VALUES ('7', '1', '2023', '7', null, '600000', null, null, null, '2550000');
INSERT INTO `data_shu` VALUES ('8', '2', '2017', '8', '100000', null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('9', '2', '2018', '9', null, '100000', null, null, null, '200000');
INSERT INTO `data_shu` VALUES ('10', '2', '2019', '10', null, '100000', null, null, null, '300000');
INSERT INTO `data_shu` VALUES ('11', '2', '2020', '11', null, '100000', null, null, null, '400000');
INSERT INTO `data_shu` VALUES ('12', '2', '2021', '12', null, '100000', null, null, null, '500000');
INSERT INTO `data_shu` VALUES ('13', '2', '2022', '1', null, '100000', null, null, null, '600000');
INSERT INTO `data_shu` VALUES ('14', '2', '2023', '2', null, '100000', null, null, null, '700000');
INSERT INTO `data_shu` VALUES ('15', '0', '2023', '3', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('16', '0', '2018', '4', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('17', '0', '2018', '5', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('18', '0', '2018', '6', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('19', '0', '2018', '7', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('20', '0', '2018', '8', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('21', '0', '2018', '9', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('22', '0', '2018', '10', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('23', '0', '2018', '11', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('24', '0', '2018', '12', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('25', '0', '2019', '1', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('26', '0', '2019', '2', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('27', '0', '2019', '3', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('28', '0', '2019', '4', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('29', '0', '2019', '5', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('30', '0', '2019', '6', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('31', '0', '2019', '7', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('32', '0', '2019', '8', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('33', '0', '2019', '9', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('34', '0', '2019', '10', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('35', '0', '2019', '11', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('36', '0', '2019', '12', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('37', '0', '2020', '1', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('38', '0', '2020', '2', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('39', '0', '2020', '3', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('40', '0', '2020', '4', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('41', '0', '2020', '5', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('42', '0', '2020', '6', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('43', '0', '2020', '7', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('44', '0', '2020', '8', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('45', '0', '2020', '9', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('46', '0', '2020', '10', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('47', '0', '2020', '11', null, null, null, null, null, null);
INSERT INTO `data_shu` VALUES ('48', '0', '2020', '12', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for data_simpanan
-- ----------------------------
DROP TABLE IF EXISTS `data_simpanan`;
CREATE TABLE `data_simpanan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of data_simpanan
-- ----------------------------

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
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_reset_tokens_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2019_12_14_000001_create_personal_access_tokens_table', '1');

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
-- Table structure for potongan
-- ----------------------------
DROP TABLE IF EXISTS `potongan`;
CREATE TABLE `potongan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `potongan_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of potongan
-- ----------------------------
INSERT INTO `potongan` VALUES ('1', 'OMI');

-- ----------------------------
-- Table structure for simpanan
-- ----------------------------
DROP TABLE IF EXISTS `simpanan`;
CREATE TABLE `simpanan` (
  `id` int NOT NULL,
  `simpanan_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of simpanan
-- ----------------------------
INSERT INTO `simpanan` VALUES ('1', 'Berjangka Bulanan');
INSERT INTO `simpanan` VALUES ('2', 'Berjangka Tahunan');

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
  `norek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `is_admin` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'Panji Jaya Kusumah', 'julungcarving@gmail.com', null, '$2y$10$nXkqkYPlImGbc4RIyyGC/u8WnS0sE5HzSZX246mboa8Mv/if7FBWq', '9UD2qkng33FribzDIW5lU96DP6TQYf8QiWZKov2Jh9A00aI6OYuKtMVtgyqZ', '2023-10-05 07:57:55', '2023-11-10 09:01:24', '916010169', '5333', '2016-11-20', '082208262646', '1', '57', '1570005311486', '1', '1');
INSERT INTO `users` VALUES ('2', '1', 'Yusuf Kurniawan', 'ucheucup@gmail.com', null, null, null, '2023-11-10 09:12:48', '2023-11-10 10:06:23', '914010105', '4985', '2016-01-20', '081315925123', '1', '57', '1570004862919', '1', '0');
INSERT INTO `users` VALUES ('5', '1', 'ansdfasdf', 'asdf@gmail.com', null, null, null, '2023-11-13 11:00:41', '2023-11-13 11:00:41', null, '145123', null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('6', '1', 'ansdfewr', 'asdf1@gmail.com', null, null, null, '2023-11-13 11:00:41', '2023-11-13 11:00:41', null, '145124', null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('7', '1', 'ansdfasa', 'asdf2@gmail.com', null, null, null, '2023-11-13 11:00:41', '2023-11-13 11:00:41', null, '145125', null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('8', '1', 'ansdfkhjk', 'asdf3@gmail.com', null, null, null, '2023-11-13 11:00:41', '2023-11-13 11:00:41', null, '145125', null, null, null, null, null, null, null);

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
