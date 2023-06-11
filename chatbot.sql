/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50734 (5.7.34)
 Source Host           : localhost:3306
 Source Schema         : chatbot

 Target Server Type    : MySQL
 Target Server Version : 50734 (5.7.34)
 File Encoding         : 65001

 Date: 12/06/2023 01:40:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for informasi
-- ----------------------------
DROP TABLE IF EXISTS `informasi`;
CREATE TABLE `informasi` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of informasi
-- ----------------------------
BEGIN;
INSERT INTO `informasi` (`id`, `no`, `parameter`, `deskripsi`) VALUES (1, 1, 'UTS Ganjil', 'UTS dilaksanakan tgl 12 juni 2023 - 12 juli 2023');
INSERT INTO `informasi` (`id`, `no`, `parameter`, `deskripsi`) VALUES (2, 2, 'UTS Genap', 'UTS dilaksanakan tgl 12 desember 2023 - 24 desember 2023');
INSERT INTO `informasi` (`id`, `no`, `parameter`, `deskripsi`) VALUES (3, 3, 'Syarat PKL', 'Lulus Mata Kuliah Metpen, Bayar Administrasi 750.000');
COMMIT;

-- ----------------------------
-- Table structure for percakapan
-- ----------------------------
DROP TABLE IF EXISTS `percakapan`;
CREATE TABLE `percakapan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `chat_id` char(10) DEFAULT NULL,
  `response_bot` varchar(255) DEFAULT NULL,
  `response_user` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of percakapan
-- ----------------------------
BEGIN;
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (1, 'x2enmt', NULL, 'hi', '2023-06-12 00:30:56', '2023-06-12 00:30:56');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (2, 'sayx0f', NULL, 'hi', '2023-06-12 00:34:58', '2023-06-12 00:34:58');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (3, 'sayx0f', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 00:35:01', '2023-06-12 00:35:01');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (4, 'sayx0f', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 00:35:01', '2023-06-12 00:35:01');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (5, 'sayx0f', 'apa email anda?', 'asrani.27@gmail.com', '2023-06-12 00:35:03', '2023-06-12 00:35:03');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (6, 'sayx0f', 'Terima kasih asrani', NULL, '2023-06-12 00:35:03', '2023-06-12 00:35:03');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (7, 'sayx0f', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 00:35:03', '2023-06-12 00:35:03');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (8, 'wdyrim', NULL, 'hi', '2023-06-12 00:35:54', '2023-06-12 00:35:54');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (9, 'wdyrim', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 00:35:55', '2023-06-12 00:35:55');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (10, 'wdyrim', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 00:35:55', '2023-06-12 00:35:55');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (11, 'wdyrim', 'apa email anda?', 'asrani.27@gmail.com', '2023-06-12 00:35:57', '2023-06-12 00:35:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (12, 'wdyrim', 'Terima kasih asrani', NULL, '2023-06-12 00:35:57', '2023-06-12 00:35:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (13, 'wdyrim', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 00:35:57', '2023-06-12 00:35:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (14, 'wdyrim', 'UTS Ganjil', NULL, '2023-06-12 00:35:57', '2023-06-12 00:35:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (15, 'wdyrim', 'UTS Genap', NULL, '2023-06-12 00:35:57', '2023-06-12 00:35:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (16, 'wdyrim', 'Syarat PKL', NULL, '2023-06-12 00:35:57', '2023-06-12 00:35:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (17, 'bq06ng', NULL, 'hi', '2023-06-12 00:38:07', '2023-06-12 00:38:07');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (18, 'bq06ng', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 00:38:09', '2023-06-12 00:38:09');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (19, 'bq06ng', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 00:38:09', '2023-06-12 00:38:09');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (20, 'bq06ng', 'apa email anda?', 'asd', '2023-06-12 00:38:10', '2023-06-12 00:38:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (21, 'bq06ng', 'Terima kasih asrani', NULL, '2023-06-12 00:38:10', '2023-06-12 00:38:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (22, 'bq06ng', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 00:38:10', '2023-06-12 00:38:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (23, 'bq06ng', '1. UTS Ganjil', NULL, '2023-06-12 00:38:10', '2023-06-12 00:38:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (24, 'bq06ng', '2. UTS Genap', NULL, '2023-06-12 00:38:10', '2023-06-12 00:38:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (25, 'bq06ng', '3. Syarat PKL', NULL, '2023-06-12 00:38:10', '2023-06-12 00:38:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (26, 'e72wn0', NULL, 'hi', '2023-06-12 00:44:42', '2023-06-12 00:44:42');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (27, 'e72wn0', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 00:44:44', '2023-06-12 00:44:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (28, 'e72wn0', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 00:44:44', '2023-06-12 00:44:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (29, 'e72wn0', 'apa email anda?', 'asrani.27@gmail.com', '2023-06-12 00:44:46', '2023-06-12 00:44:46');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (30, 'e72wn0', 'Terima kasih asrani', NULL, '2023-06-12 00:44:46', '2023-06-12 00:44:46');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (31, 'e72wn0', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 00:44:46', '2023-06-12 00:44:46');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (32, 'e72wn0', '1. UTS Ganjil', NULL, '2023-06-12 00:44:46', '2023-06-12 00:44:46');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (33, 'e72wn0', '2. UTS Genap', NULL, '2023-06-12 00:44:46', '2023-06-12 00:44:46');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (34, 'e72wn0', '3. Syarat PKL', NULL, '2023-06-12 00:44:46', '2023-06-12 00:44:46');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (35, 'f0lesj', NULL, 'hi', '2023-06-12 00:48:01', '2023-06-12 00:48:01');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (36, 'f0lesj', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 00:48:02', '2023-06-12 00:48:02');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (37, 'f0lesj', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 00:48:02', '2023-06-12 00:48:02');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (38, 'f0lesj', 'apa email anda?', 'asrani.27@gmail.com', '2023-06-12 00:48:05', '2023-06-12 00:48:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (39, 'f0lesj', 'Terima kasih asrani', NULL, '2023-06-12 00:48:05', '2023-06-12 00:48:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (40, 'f0lesj', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 00:48:05', '2023-06-12 00:48:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (41, 'f0lesj', '1. UTS Ganjil', NULL, '2023-06-12 00:48:05', '2023-06-12 00:48:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (42, 'f0lesj', '2. UTS Genap', NULL, '2023-06-12 00:48:05', '2023-06-12 00:48:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (43, 'f0lesj', '3. Syarat PKL', NULL, '2023-06-12 00:48:05', '2023-06-12 00:48:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (44, 'f0lesj', NULL, '2', '2023-06-12 00:48:06', '2023-06-12 00:48:06');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (45, 'f0lesj', '2. UTS Genap, Deskripsi : UTS dilaksanakan tgl 12 desember 2023 - 24 desember 2023<br/><br/>--STMIK IB--', NULL, '2023-06-12 00:48:06', '2023-06-12 00:48:06');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (46, '4izm0q', NULL, 'hi', '2023-06-12 00:53:50', '2023-06-12 00:53:50');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (47, '4izm0q', 'Halo, Dengan siapa saya berbicara?', 'udin', '2023-06-12 00:53:54', '2023-06-12 00:53:54');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (48, '4izm0q', 'Senang bertemu Dengan mu udin', NULL, '2023-06-12 00:53:54', '2023-06-12 00:53:54');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (49, '4izm0q', 'apa email anda?', 'udin@gmail.com', '2023-06-12 00:53:57', '2023-06-12 00:53:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (50, '4izm0q', 'Terima kasih udin', NULL, '2023-06-12 00:53:57', '2023-06-12 00:53:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (51, '4izm0q', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 00:53:57', '2023-06-12 00:53:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (52, '4izm0q', '1. UTS Ganjil', NULL, '2023-06-12 00:53:57', '2023-06-12 00:53:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (53, '4izm0q', '2. UTS Genap', NULL, '2023-06-12 00:53:57', '2023-06-12 00:53:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (54, '4izm0q', '3. Syarat PKL', NULL, '2023-06-12 00:53:57', '2023-06-12 00:53:57');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (55, '4izm0q', NULL, '1', '2023-06-12 00:54:05', '2023-06-12 00:54:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (56, '4izm0q', '1. UTS Ganjil, Deskripsi : UTS dilaksanakan tgl 12 juni 2023 - 12 juli 2023<br/><br/>--STMIK IB--', NULL, '2023-06-12 00:54:05', '2023-06-12 00:54:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (57, '4izm0q', NULL, '2', '2023-06-12 00:54:06', '2023-06-12 00:54:06');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (58, '4izm0q', '2. UTS Genap, Deskripsi : UTS dilaksanakan tgl 12 desember 2023 - 24 desember 2023<br/><br/>--STMIK IB--', NULL, '2023-06-12 00:54:06', '2023-06-12 00:54:06');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (59, '4izm0q', NULL, '3', '2023-06-12 00:54:09', '2023-06-12 00:54:09');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (60, '4izm0q', '3. Syarat PKL, Deskripsi : Lulus Mata Kuliah Metpen, Bayar Administrasi 750.000<br/><br/>--STMIK IB--', NULL, '2023-06-12 00:54:09', '2023-06-12 00:54:09');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (61, 'f12ryq', NULL, 'hi', '2023-06-12 01:02:58', '2023-06-12 01:02:58');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (62, 'f12ryq', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 01:03:01', '2023-06-12 01:03:01');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (63, 'f12ryq', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 01:03:01', '2023-06-12 01:03:01');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (64, 'f12ryq', 'apa email anda?', 'asrani.27@gmail.com', '2023-06-12 01:03:05', '2023-06-12 01:03:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (65, 'f12ryq', 'Terima kasih asrani', NULL, '2023-06-12 01:03:05', '2023-06-12 01:03:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (66, 'f12ryq', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 01:03:05', '2023-06-12 01:03:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (67, 'f12ryq', '1. UTS Ganjil', NULL, '2023-06-12 01:03:05', '2023-06-12 01:03:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (68, 'f12ryq', '2. UTS Genap', NULL, '2023-06-12 01:03:05', '2023-06-12 01:03:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (69, 'f12ryq', '3. Syarat PKL', NULL, '2023-06-12 01:03:05', '2023-06-12 01:03:05');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (70, 'f12ryq', NULL, '3', '2023-06-12 01:03:06', '2023-06-12 01:03:06');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (71, 'f12ryq', '3. Syarat PKL, Deskripsi : Lulus Mata Kuliah Metpen, Bayar Administrasi 750.000<br/><br/>--STMIK IB--', NULL, '2023-06-12 01:03:06', '2023-06-12 01:03:06');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (72, 'f12ryq', NULL, '4', '2023-06-12 01:03:07', '2023-06-12 01:03:07');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (73, 'f12ryq', 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.', NULL, '2023-06-12 01:03:07', '2023-06-12 01:03:07');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (74, 'f12ryq', NULL, '2', '2023-06-12 01:03:13', '2023-06-12 01:03:13');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (75, 'f12ryq', '2. UTS Genap, Deskripsi : UTS dilaksanakan tgl 12 desember 2023 - 24 desember 2023<br/><br/>--STMIK IB--', NULL, '2023-06-12 01:03:13', '2023-06-12 01:03:13');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (76, 'um1mra', NULL, 'hi', '2023-06-12 01:13:03', '2023-06-12 01:13:03');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (77, 'um1mra', 'Halo, Dengan siapa saya berbicara?', 'asrani', '2023-06-12 01:13:07', '2023-06-12 01:13:07');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (78, 'um1mra', 'Senang bertemu Dengan mu asrani', NULL, '2023-06-12 01:13:07', '2023-06-12 01:13:07');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (79, 'um1mra', 'apa email anda?', 'asrani.27@gmail.com', '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (80, 'um1mra', 'Terima kasih asrani', NULL, '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (81, 'um1mra', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (82, 'um1mra', '1. UTS Ganjil', NULL, '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (83, 'um1mra', '2. UTS Genap', NULL, '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (84, 'um1mra', '3. Syarat PKL', NULL, '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (85, 'um1mra', '4. Daftar Skripsi', NULL, '2023-06-12 01:13:10', '2023-06-12 01:13:10');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (86, 'um1mra', NULL, '4', '2023-06-12 01:13:15', '2023-06-12 01:13:15');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (87, 'um1mra', '4. Daftar Skripsi, Deskripsi : syarat nya lulus semua mata kuliah<br/><br/>--STMIK IB--', NULL, '2023-06-12 01:13:15', '2023-06-12 01:13:15');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (88, 'adarot', NULL, 'hi', '2023-06-12 01:17:50', '2023-06-12 01:17:50');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (89, 'dug7jp', NULL, 'hi', '2023-06-12 01:35:39', '2023-06-12 01:35:39');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (90, 'dug7jp', 'Halo, Dengan siapa saya berbicara?', 'thanks', '2023-06-12 01:35:41', '2023-06-12 01:35:41');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (91, 'dug7jp', 'Senang bertemu Dengan mu thanks', NULL, '2023-06-12 01:35:41', '2023-06-12 01:35:41');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (92, 'dug7jp', 'apa email anda?', 'asd', '2023-06-12 01:35:44', '2023-06-12 01:35:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (93, 'dug7jp', 'Terima kasih thanks', NULL, '2023-06-12 01:35:44', '2023-06-12 01:35:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (94, 'dug7jp', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 01:35:44', '2023-06-12 01:35:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (95, 'dug7jp', '1. UTS Ganjil', NULL, '2023-06-12 01:35:44', '2023-06-12 01:35:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (96, 'dug7jp', '2. UTS Genap', NULL, '2023-06-12 01:35:44', '2023-06-12 01:35:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (97, 'dug7jp', '3. Syarat PKL', NULL, '2023-06-12 01:35:44', '2023-06-12 01:35:44');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (98, 'dug7jp', NULL, 'thank', '2023-06-12 01:35:47', '2023-06-12 01:35:47');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (99, 'dug7jp', 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.', NULL, '2023-06-12 01:35:47', '2023-06-12 01:35:47');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (100, 'dug7jp', NULL, 'thanks', '2023-06-12 01:35:55', '2023-06-12 01:35:55');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (101, 'dug7jp', 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.', NULL, '2023-06-12 01:35:55', '2023-06-12 01:35:55');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (102, 'dug7jp', NULL, 'Thanks', '2023-06-12 01:36:28', '2023-06-12 01:36:28');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (103, 'dug7jp', 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.', NULL, '2023-06-12 01:36:28', '2023-06-12 01:36:28');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (104, 'dug7jp', NULL, '2', '2023-06-12 01:37:00', '2023-06-12 01:37:00');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (105, 'dug7jp', '2. UTS Genap, Deskripsi : UTS dilaksanakan tgl 12 desember 2023 - 24 desember 2023<br/><br/>--STMIK IB--', NULL, '2023-06-12 01:37:00', '2023-06-12 01:37:00');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (106, 'x4e3ew', NULL, 'hi', '2023-06-12 01:37:22', '2023-06-12 01:37:22');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (107, 'x4e3ew', 'Halo, Dengan siapa saya berbicara?', 'asdsdfsdf', '2023-06-12 01:37:24', '2023-06-12 01:37:24');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (108, 'x4e3ew', 'Senang bertemu Dengan mu asdsdfsdf', NULL, '2023-06-12 01:37:24', '2023-06-12 01:37:24');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (109, 'x4e3ew', 'apa email anda?', 'asdasdasddsf', '2023-06-12 01:37:26', '2023-06-12 01:37:26');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (110, 'x4e3ew', 'Terima kasih asdsdfsdf', NULL, '2023-06-12 01:37:26', '2023-06-12 01:37:26');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (111, 'x4e3ew', 'Silahkan ketik Nomor informasi di bawah Ini :', NULL, '2023-06-12 01:37:26', '2023-06-12 01:37:26');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (112, 'x4e3ew', '1. UTS Ganjil', NULL, '2023-06-12 01:37:26', '2023-06-12 01:37:26');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (113, 'x4e3ew', '2. UTS Genap', NULL, '2023-06-12 01:37:26', '2023-06-12 01:37:26');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (114, 'x4e3ew', '3. Syarat PKL', NULL, '2023-06-12 01:37:26', '2023-06-12 01:37:26');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (115, 'x4e3ew', NULL, '3', '2023-06-12 01:37:27', '2023-06-12 01:37:27');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (116, 'x4e3ew', '3. Syarat PKL, Deskripsi : Lulus Mata Kuliah Metpen, Bayar Administrasi 750.000<br/><br/>--STMIK IB--', NULL, '2023-06-12 01:37:27', '2023-06-12 01:37:27');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (117, 'x4e3ew', NULL, '4', '2023-06-12 01:37:28', '2023-06-12 01:37:28');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (118, 'x4e3ew', 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.', NULL, '2023-06-12 01:37:28', '2023-06-12 01:37:28');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (119, 'x4e3ew', NULL, 'f', '2023-06-12 01:37:29', '2023-06-12 01:37:29');
INSERT INTO `percakapan` (`id`, `chat_id`, `response_bot`, `response_user`, `created_at`, `updated_at`) VALUES (120, 'x4e3ew', 'Maaf keyword yang anda minta tidak ada dalam database kami,, silahkan ketik nomor informasi yang tersedia.', NULL, '2023-06-12 01:37:29', '2023-06-12 01:37:29');
COMMIT;

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of role_users
-- ----------------------------
BEGIN;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES (1, 1);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35');
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'pemohon', '2022-10-19 14:20:54', '2022-10-19 14:20:54');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `password_superadmin` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `api_token` varchar(255) DEFAULT NULL,
  `last_session` varchar(255) DEFAULT NULL,
  `change_password` int(1) unsigned DEFAULT '0' COMMENT '0: belum, 1: sudah',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `password_superadmin`, `remember_token`, `created_at`, `updated_at`, `api_token`, `last_session`, `change_password`) VALUES (1, 'chatbot', NULL, 'chatbot', '2023-06-12 00:50:59', '$2y$10$xvtiegv7EF07VL.PHrHFkOS3IaR3vC4hnswMHoFN4Wgr8mmwmwUAu', NULL, NULL, '2023-06-12 00:50:59', '2023-06-12 00:50:59', '$2y$10$tjMANlV25IUwvKuPxEODW.3qE3zPSKjwhmgTcZUgsPDZRGcpgGAN.', NULL, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
