-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2026 at 10:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` char(255) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `active`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '0961680324', 1, '$2y$12$7NunF7mn9EEJQ/I4EjECPeL7YB3r1aWJ8//ytMXo0uYhzNNsvVL0i', NULL, NULL, '2024-05-05 02:28:54'),
(14, 'admin1', 'admin123@gmail.com', '0961680323', 1, '$2y$12$griOYBwhqrNQ9mxabC8ePugm2K38JF5a8OZkVlfS/vwzyWhiin7WO', NULL, '2024-05-05 01:50:23', '2024-05-18 08:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) DEFAULT NULL,
  `a_slug` varchar(255) NOT NULL,
  `a_description` varchar(255) DEFAULT NULL,
  `a_content` longtext DEFAULT NULL,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `b_name` varchar(255) DEFAULT NULL,
  `b_image` varchar(255) DEFAULT NULL,
  `b_discount` varchar(255) DEFAULT NULL,
  `b_active` tinyint(4) NOT NULL DEFAULT 1,
  `b_sale` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `b_name`, `b_image`, `b_discount`, `b_active`, `b_sale`, `created_at`, `updated_at`) VALUES
(1, 'banner 1', '/storage/photos/Banner/slide_3_img.webp', NULL, 0, 0, '2025-06-16 01:24:53', '2025-06-16 01:24:53'),
(2, 'banner 2', '/storage/photos/Banner/slide_7_img.webp', '15', 0, 0, '2024-04-17 08:19:58', '2025-06-16 00:45:04'),
(3, 'banner 3', '/storage/photos/Banner/slide_1_img.webp', '10', 0, 0, '2024-04-17 08:20:12', '2025-06-16 00:45:07'),
(4, 'banner 4', '/storage/photos/Banner/collection_banner1.webp', NULL, 0, 0, '2024-04-27 20:35:11', '2025-06-16 00:45:08'),
(5, 'banner 6', '/storage/photos/Banner/collection_banner5.webp', '5', 0, 0, '2025-06-16 00:43:45', '2025-06-16 00:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` varchar(255) DEFAULT NULL,
  `price` longtext DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_slug` varchar(255) NOT NULL,
  `c_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_slug`, `c_active`, `created_at`, `updated_at`, `c_parent`) VALUES
(17, 'CPU', 'cpu', 1, '2024-04-27 09:16:48', '2026-01-21 19:45:39', 0),
(18, 'BO MẠCH CHỦ', 'mainboard', 1, '2024-04-27 09:17:04', '2025-06-17 22:56:27', 0),
(19, 'RAM', 'ram', 1, '2024-04-27 09:17:22', '2025-06-17 22:56:29', 0),
(20, 'VGA', 'vga', 1, '2024-04-27 09:17:56', '2025-06-16 21:43:28', 0),
(21, 'Ổ cứng', 'o-cung', 1, '2024-04-27 09:18:11', '2025-06-16 21:43:30', 0),
(22, 'AMD', 'amd', 1, '2024-04-27 09:18:28', '2025-06-17 00:14:22', 17),
(24, 'INTEL', 'intel', 1, '2024-04-27 09:19:24', '2025-06-17 00:14:29', 17),
(25, 'MAINBOARD INTEL', 'm-intel', 1, '2024-04-27 09:19:46', '2025-06-16 21:43:38', 18),
(26, 'MAINBOARD AMD', 'm-amd', 1, '2024-04-27 09:20:04', '2025-06-16 21:43:39', 18),
(28, 'RTX 30 SERI', 'rtx30', 1, '2024-04-27 09:20:50', '2025-06-16 23:51:51', 20),
(29, 'RTX 40 SERI', 'rtx40', 1, '2024-04-27 09:21:10', '2025-06-16 23:51:54', 20),
(30, 'DDR4', 'ddr4', 1, '2024-04-27 09:21:24', '2025-06-16 23:51:56', 19),
(31, 'DDR5', 'ddr5', 1, '2024-04-27 09:21:59', '2025-06-16 23:51:59', 19),
(32, 'HDD', 'hdd', 1, '2024-04-27 09:22:23', '2025-06-16 23:52:02', 21),
(45, 'SSD', 'ssd', 1, '2024-05-18 09:23:36', '2025-06-16 23:52:08', 21),
(47, 'RTX 50 SERI', 'rtx50', 1, '2024-04-27 09:21:10', '2025-06-16 23:51:54', 20),
(50, 'Nguồn máy tính', 'psu', 1, '2024-04-27 09:18:11', '2025-06-16 21:43:30', 0),
(51, 'Case', 'case', 1, '2024-04-27 09:18:11', '2025-06-16 21:43:30', 0),
(52, 'Tản nhiệt', 'tan-nhiet', 1, '2024-04-27 09:18:11', '2025-06-16 21:43:30', 0),
(53, 'Tản nhiệt nước', 'tan-nhiet-nuoc', 1, '2024-04-27 09:18:11', '2025-06-16 21:43:30', 52),
(54, 'Tản nhiệt khí', 'tan-nhiet-khi', 1, '2024-04-27 09:18:11', '2025-06-16 21:43:30', 52);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `con_name` varchar(255) DEFAULT NULL,
  `con_phone` varchar(255) DEFAULT NULL,
  `con_email` varchar(255) DEFAULT NULL,
  `con_title` varchar(255) DEFAULT NULL,
  `con_message` text DEFAULT NULL,
  `con_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `con_name`, `con_phone`, `con_email`, `con_title`, `con_message`, `con_status`, `created_at`, `updated_at`) VALUES
(1, 'loi chu', '0987324324', 'l@gmail.com', 'dfdfgdf', '3e', 0, NULL, NULL),
(2, 'ggg', '67467', 'lv@gmail.com', 'yutyutu', 'sdddđ', 0, '2024-04-18 10:11:23', '2024-04-18 10:11:23'),
(3, 'e32e', '3e2e', '23e2', 'e23e32', 'e23e', 0, '2024-04-20 20:06:43', '2024-04-20 20:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `import_goods`
--

CREATE TABLE `import_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_goods`
--

INSERT INTO `import_goods` (`id`, `product_id`, `supplier_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(8, 15, 3, 10, 10000000, '2024-05-14 09:33:39', '2024-05-14 09:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_12_161756_create_category_table', 1),
(6, '2024_03_14_144043_create_products_table', 1),
(7, '2024_03_21_141004_create_article_table', 1),
(8, '2024_04_10_143146_create_banner_table', 1),
(9, '2024_04_15_043541_create_users_table', 1),
(10, '2024_04_17_032956_add_column_to_table_name', 1),
(11, '2024_04_17_033704_create_carts_table', 1),
(12, '2024_04_18_163511_create_contact_table', 2),
(13, '2024_04_18_170722_create_contact_table', 3),
(14, '2024_04_19_144228_create_transactions_tbale', 4),
(15, '2024_04_19_144318_create_oders_table', 4),
(16, '2024_04_19_150301_add_column_to_table_name', 5),
(17, '2024_04_19_155716_create_transaction_table', 6),
(18, '2024_04_20_025234_create_rating_table', 7),
(19, '2024_04_20_030238_add_column_to_table_name', 8),
(20, '2024_04_22_175804_alter_column_total_pay_in_table_users', 9),
(21, '2024_04_24_151325_add_column_to_table_name', 10),
(22, '2024_04_24_162551_create_admin_table', 11),
(23, '2024_04_26_024017_add_column_to_table_name', 12),
(24, '2024_04_26_042656_add_column_to_table_name', 13),
(25, '2024_04_26_172116_create_product_images_table', 14),
(26, '2024_04_26_172502_create_product_images_table', 15),
(27, '2024_04_27_030213_create_product_image_table', 16),
(28, '2024_04_27_032458_create_product_image_table', 17),
(29, '2024_04_27_153639_add_to_table_name', 18),
(30, '2024_05_14_082611_create_supplier_table', 19),
(31, '2024_05_14_090837_create_import_goods_table', 20),
(32, '2024_05_14_092516_create_import_goods_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE `oders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_quantity` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_sale` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `od_cart_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oders`
--

INSERT INTO `oders` (`id`, `od_transaction_id`, `od_product_id`, `od_quantity`, `od_price`, `od_sale`, `created_at`, `updated_at`, `od_cart_id`) VALUES
(51, 30, 26, 1, 90, 0, '2024-04-23 02:14:58', '2024-04-23 02:14:58', 0),
(52, 31, 24, 2, 1, 0, '2024-04-23 02:29:35', '2024-04-23 02:29:35', 0),
(53, 31, 25, 3, 100000, 0, '2024-04-23 02:29:35', '2024-04-23 02:29:35', 0),
(54, 31, 26, 1, 90, 0, '2024-04-23 02:29:35', '2024-04-23 02:29:35', 0),
(55, 32, 27, 1, 1, 0, '2024-04-23 21:30:30', '2024-04-23 21:30:30', 0),
(56, 33, 28, 2, 100000, 0, '2024-04-23 21:50:32', '2024-04-23 21:50:32', 0),
(57, 34, 29, 1, 100000, 0, '2024-04-25 19:02:14', '2024-04-25 19:02:14', 0),
(58, 35, 31, 1, 100000, 0, '2024-04-25 20:05:52', '2024-04-25 20:05:52', 0),
(59, 35, 32, 1, 1, 0, '2024-04-25 20:05:52', '2024-04-25 20:05:52', 0),
(60, 36, 33, 1, 1, 0, '2024-04-25 20:10:59', '2024-04-25 20:10:59', 0),
(61, 37, 34, 1, 1, 0, '2024-04-25 21:04:49', '2024-04-25 21:04:49', 0),
(62, 38, 0, 1, 342, 0, '2024-04-25 21:30:48', '2024-04-25 21:30:48', 35),
(63, 40, 1, 1, 1, 0, '2024-04-25 21:35:12', '2024-04-25 21:35:12', 36),
(64, 41, 1, 1, 1, 0, '2024-04-25 21:36:31', '2024-04-25 21:36:31', 37),
(65, 42, 1, 1, 1, 0, '2024-04-25 21:43:17', '2024-04-25 21:43:17', 38),
(66, 43, 1, 1, 1, 0, '2024-04-26 00:45:48', '2024-04-26 00:45:48', 39),
(67, 43, 2, 4, 100000, 0, '2024-04-26 00:45:48', '2024-04-26 00:45:48', 40),
(68, 43, 7, 5, 123, 0, '2024-04-26 00:45:48', '2024-04-26 00:45:48', 41),
(69, 44, 7, 1, 123, 0, '2024-04-26 00:50:51', '2024-04-26 00:50:51', 42),
(70, 45, 25, 2, 19000000, 0, '2024-05-04 01:58:11', '2024-05-04 01:58:11', 43),
(71, 46, 24, 1, 24900000, 0, '2024-05-04 02:06:34', '2024-05-04 02:06:34', 44),
(72, 47, 24, 2, 24900000, 0, '2024-05-04 02:16:37', '2024-05-04 02:16:37', 45),
(73, 48, 31, 4, 6490000, 0, '2024-05-04 02:18:46', '2024-05-04 02:18:46', 46),
(74, 49, 25, 1, 19000000, 0, '2024-05-04 03:04:40', '2024-05-04 03:04:40', 47),
(75, 50, 24, 3, 24900000, 0, '2024-05-04 09:35:59', '2024-05-04 09:35:59', 48),
(76, 50, 31, 2, 6490000, 0, '2024-05-04 09:35:59', '2024-05-04 09:35:59', 49),
(77, 50, 27, 4, 30000000, 0, '2024-05-04 09:35:59', '2024-05-04 09:35:59', 50),
(78, 51, 25, 1, 19000000, 0, '2024-05-05 09:41:24', '2024-05-05 09:41:24', 51),
(79, 51, 35, 4, 13600000, 0, '2024-05-05 09:41:24', '2024-05-05 09:41:24', 52),
(80, 51, 30, 4, 10000000, 0, '2024-05-05 09:41:24', '2024-05-05 09:41:24', 53),
(81, 52, 33, 1, 14900000, 0, '2024-05-05 20:24:18', '2024-05-05 20:24:18', 54),
(82, 53, 27, 1, 30000000, 0, '2024-05-06 21:42:33', '2024-05-06 21:42:33', 55),
(83, 53, 30, 3, 10000000, 0, '2024-05-06 21:42:33', '2024-05-06 21:42:33', 56),
(84, 54, 28, 1, 22990000, 0, '2024-05-06 21:45:07', '2024-05-06 21:45:07', 57),
(85, 55, 32, 3, 6100000, 0, '2024-05-06 21:48:26', '2024-05-06 21:48:26', 58),
(86, 55, 34, 2, 17900000, 0, '2024-05-06 21:48:26', '2024-05-06 21:48:26', 59),
(87, 56, 31, 2, 6490000, 0, '2024-05-07 01:41:28', '2024-05-07 01:41:28', 60),
(88, 57, 15, 6, 10900000, 0, '2024-05-08 08:14:49', '2024-05-08 08:14:49', 61),
(89, 57, 30, 3, 10000000, 0, '2024-05-08 08:14:49', '2024-05-08 08:14:49', 64),
(90, 57, 36, 1, 11990000, 0, '2024-05-08 08:14:49', '2024-05-08 08:14:49', 65),
(91, 57, 33, 3, 14900000, 0, '2024-05-08 08:14:49', '2024-05-08 08:14:49', 66),
(92, 58, 15, 1, 10900000, 0, '2024-05-13 08:20:20', '2024-05-13 08:20:20', 67),
(93, 58, 30, 1, 10000000, 0, '2024-05-13 08:20:20', '2024-05-13 08:20:20', 68),
(94, 58, 36, 2, 11990000, 0, '2024-05-13 08:20:20', '2024-05-13 08:20:20', 70),
(95, 59, 34, 1, 17900000, 0, '2024-05-13 09:22:35', '2024-05-13 09:22:35', 71),
(96, 60, 34, 1, 17900000, 0, '2024-05-13 09:24:43', '2024-05-13 09:24:43', 72),
(97, 61, 16, 1, 1190000, 0, '2024-05-13 19:38:48', '2024-05-13 19:38:48', 73),
(98, 61, 27, 5, 30000000, 0, '2024-05-13 19:38:48', '2024-05-13 19:38:48', 74),
(99, 61, 29, 1, 19000000, 0, '2024-05-13 19:38:48', '2024-05-13 19:38:48', 75),
(100, 62, 15, 1, 10900000, 0, '2024-05-14 07:42:32', '2024-05-14 07:42:32', 78),
(101, 63, 15, 1, 10900000, 0, '2024-05-14 07:44:38', '2024-05-14 07:44:38', 79),
(102, 64, 15, 2, 10900000, 0, '2024-05-14 08:10:45', '2024-05-14 08:10:45', 80),
(103, 64, 26, 2, 19900000, 0, '2024-05-14 08:10:45', '2024-05-14 08:10:45', 81),
(104, 65, 15, 1, 10900000, 0, '2024-05-14 08:20:40', '2024-05-14 08:20:40', 82),
(105, 66, 15, 1, 10900000, 0, '2024-05-14 08:22:05', '2024-05-14 08:22:05', 83),
(106, 67, 15, 1, 10900000, 0, '2024-05-14 08:23:27', '2024-05-14 08:23:27', 84),
(107, 68, 15, 1, 10900000, 0, '2024-05-14 08:24:32', '2024-05-14 08:24:32', 85),
(108, 69, 27, 1, 30000000, 0, '2024-05-14 08:38:47', '2024-05-14 08:38:47', 86),
(109, 70, 27, 2, 30000000, 0, '2024-05-14 08:40:29', '2024-05-14 08:40:29', 87),
(110, 71, 15, 1, 10900000, 0, '2024-05-14 08:41:32', '2024-05-14 08:41:32', 88),
(111, 72, 27, 1, 30000000, 0, '2024-05-14 08:43:23', '2024-05-14 08:43:23', 89),
(112, 73, 15, 1, 10900000, 0, '2024-05-14 09:03:06', '2024-05-14 09:03:06', 90),
(113, 74, 27, 1, 30000000, 0, '2024-05-14 09:04:51', '2024-05-14 09:04:51', 91),
(114, 75, 15, 1, 10900000, 0, '2024-05-17 08:39:56', '2024-05-17 08:39:56', 92),
(115, 76, 15, 1, 10900000, 0, '2024-05-17 08:58:33', '2024-05-17 08:58:33', 93),
(116, 77, 15, 1, 10900000, 0, '2024-05-17 09:05:28', '2024-05-17 09:05:28', 94),
(117, 78, 27, 1, 30000000, 0, '2024-05-17 09:29:00', '2024-05-17 09:29:00', 96),
(118, 79, 15, 1, 10900000, 0, '2024-05-17 09:32:15', '2024-05-17 09:32:15', 97),
(119, 80, 27, 1, 30000000, 0, '2024-05-17 09:32:47', '2024-05-17 09:32:47', 98),
(120, 81, 35, 1, 13600000, 0, '2024-05-17 09:35:28', '2024-05-17 09:35:28', 99),
(121, 82, 25, 1, 19000000, 0, '2024-05-17 18:14:56', '2024-05-17 18:14:56', 101),
(122, 83, 29, 1, 19000000, 0, '2024-05-17 18:30:50', '2024-05-17 18:30:50', 102),
(123, 84, 29, 1, 19000000, 0, '2024-05-17 18:32:13', '2024-05-17 18:32:13', 103),
(124, 85, 27, 1, 30000000, 0, '2024-05-18 07:55:11', '2024-05-18 07:55:11', 104),
(125, 86, 27, 1, 30000000, 0, '2024-05-18 19:59:24', '2024-05-18 19:59:24', 105),
(126, 86, 25, 3, 19000000, 0, '2024-05-18 19:59:24', '2024-05-18 19:59:24', 106),
(127, 86, 29, 1, 19000000, 0, '2024-05-18 19:59:24', '2024-05-18 19:59:24', 107),
(128, 87, 27, 1, 30000000, 0, '2025-06-16 00:39:39', '2025-06-16 00:39:39', 111),
(129, 88, 29, 1, 19000000, 0, '2025-06-16 01:34:48', '2025-06-16 01:34:48', 112),
(130, 88, 27, 1, 30000000, 0, '2025-06-16 01:34:48', '2025-06-16 01:34:48', 113),
(131, 89, 29, 1, 19000000, 0, '2025-06-18 01:35:24', '2025-06-18 01:35:24', 117),
(132, 89, 15, 3, 10900000, 0, '2025-06-18 01:35:24', '2025-06-18 01:35:24', 118),
(133, 89, 25, 2, 19000000, 0, '2025-06-18 01:35:24', '2025-06-18 01:35:24', 119),
(134, 89, 25, 1, 19000000, 0, '2025-06-18 01:35:24', '2025-06-18 01:35:24', 120);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pro_slug` varchar(255) NOT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_description` text NOT NULL DEFAULT '0',
  `pro_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `pro_pay` tinyint(4) NOT NULL DEFAULT 0,
  `pro_total` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số đánh giá',
  `pro_total_number` int(11) NOT NULL DEFAULT 0 COMMENT 'tổng số điểm đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_content`, `pro_category_id`, `pro_price`, `pro_sale`, `pro_active`, `pro_hot`, `pro_description`, `pro_image`, `created_at`, `updated_at`, `quantity`, `pro_pay`, `pro_total`, `pro_total_number`) VALUES
(1, 'Bộ vi xử lý Intel Core i9 14900KF / Turbo up to 6.0GHz / 24 Nhân 32 Luồng / 36MB / LGA 1700', 'i9-14900kf', 'CPU Intel Core i9 14900KF là CPU thế hệ thứ 14 của Intel. Là đứa con mạnh mẽ và cao cấp nhất nên i9 14900KF sở hữu 24 nhân 32 luồng kết hợp với kiến ​​trúc Raptor Lake mới để tạo nên hiệu năng vượt trội so với các sản phẩm thế hệ trước. Intel Core i9 14900KF sẽ là sự lựa chọn tuyệt vời nếu bạn muốn xây dựng một dàn PC gaming tốt nhất hiện nay. Với số nhân, số luồng và tốc độ xung nhịp cao, nó sẽ phù hợp với các thiết bị cao cấp, dịch vụ phát trực tuyến, trò chơi hoặc sử dụng phần mềm chuyên nghiệp.', 24, 17990000, 13490000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: FCLGA1700</p>\r\n	</li>\r\n	<li>\r\n	<p>Dòng CPU: Core i9</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 24 (8 Performance-cores/16 Efficient-cores)</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 32</p>\r\n	</li>\r\n	<li>\r\n	<p>Tần số Turbo tối đa: 6 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của P-core: 3.2 GHz - 5.6 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của E-core : 2.4 GHz - 4.4 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 125W - 253W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm: 36MB Intel® Smart Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ hỗ trợ tối đa: 192GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: Không</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0 và 4.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/i9_14900kf.png', '2024-04-28 02:34:40', '2025-06-18 01:36:31', '15', 27, 2, 10),
(2, 'Bộ vi xử lý Intel Core i7 14700 / Turbo up to 5.4GHz / 20 Nhân 28 Luồng / 33MB / LGA 1700', 'i7-14700', '', 24, 12200000, 11490000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: FCLGA1700</p>\r\n	</li>\r\n	<li>\r\n	<p>Dòng CPU: Core i7</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 20 (8 Performance-cores/12 Efficient-cores)</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 28</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của P-core: 2.1 GHz - 5.3 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của E-core : 1.5 GHz - 4.2 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 65W - 219W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm: 33MB Intel® Smart Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ hỗ trợ tối đa: 192GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: Intel® UHD Graphics 770</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0 và 4.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/i7_14700.png', '2024-04-28 02:34:40', '2025-06-18 01:36:31', '0', 27, 1, 5),
(3, 'Bộ vi xử lý Intel Core i7 14700KF / Turbo up to 5.6GHz / 20 Nhân 28 Luồng / 33MB / LGA 1700', 'i7-14700kf', 'Intel Gen 14, thế hệ vi xử lý mới nhất đến từ nhà xanh được trông chờ với những luồng sức mạnh mới. Giữ nguyên format của mình, Intel trải dài nhiều phân khúc và CPU Intel Core i7 14700KF sẽ là nhân tố quan trọng dành cho phân khúc tầm trung và cận cao cấp dành cho nhu cầu build PC.', 24, 10990000, 9990000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: FCLGA1700</p>\r\n	</li>\r\n	<li>\r\n	<p>Dòng CPU: Core i7</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 20 (8 Performance-cores/12 Efficient-cores)</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 28</p>\r\n	</li>\r\n	<li>\r\n	<p>Tần số Turbo tối đa: 5.6 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của P-core: 3.4 GHz - 5.5 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của E-core : 2.5 GHz - 4.3 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 125W - 253W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm: 33MB Intel® Smart Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ hỗ trợ tối đa: 192GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: Không</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0 và 4.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/i7_14700kf.png', '2024-04-28 02:34:40', '2025-06-18 01:36:31', '17', 15, 1, 4),
(4, 'Bộ vi xử lý Intel Core i5 12500 / 3.0GHz Turbo 4.6GHz / 6 Nhân 12 Luồng / 18MB / LGA 1700', 'i5-12500', '', 24, 5990000, 5790000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: FCLGA1700</p>\r\n	</li>\r\n	<li>\r\n	<p>Dòng CPU: Core i5</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 6</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Tần số Turbo tối đa: 4.60 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa: 3.00 GHz - 4.60 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 65W - 117W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm: 18 MB Intel Smart Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ hỗ trợ tối đa: 128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: Intel UHD Graphics 770</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0 và 4.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/i5_12500.png', '2024-04-28 02:34:40', '2025-06-18 01:36:31', '18', 10, 2, 9),
(5, 'Bộ vi xử lý Intel Core i5 14600K / Turbo up to 5.3GHz / 14 Nhân 20 Luồng / 24MB / LGA 1700', 'i5-14600k', '', 24, 6990000, 6690000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: FCLGA1700</p>\r\n	</li>\r\n	<li>\r\n	<p>Dòng CPU: Core i5</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 14 (6 Performance-cores/ 8 Efficient-cores)</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 20</p>\r\n	</li>\r\n	<li>\r\n	<p>Tần số Turbo tối đa: 5.3 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của P-core: 3.5 GHz - 5.3 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của E-core: 2.6 GHz - 4.0 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 125W - 181W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm: 24MB Intel® Smart Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ hỗ trợ tối đa: 192GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: Intel UHD Graphics 770</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0 và 4.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/i5_14600k.png', '2024-04-28 02:34:40', '2025-06-18 01:36:31', '10', 10, 0, 0),
(6, 'Bộ vi xử lý Intel Core i3 14100 / Turbo up to 4.7GHz / 4 Nhân 8 Luồng / 12MB / LGA 1700', 'i3-14100', '', 24, 4400000, 3890000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: FCLGA1700</p>\r\n	</li>\r\n	<li>\r\n	<p>Dòng CPU: Core i3</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 4 (4 Performance-cores)</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 8</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa của P-core: 3.5 GHz - 4.7 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 65W - 110W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm: 12MB Intel® Smart Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ hỗ trợ tối đa: 192GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: Intel® UHD Graphics 730</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0 và 4.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/i3_14100.png', '2024-04-28 02:34:40', '2025-06-18 01:36:31', '8', 5, 0, 0),
(7, 'Bộ vi xử lý AMD Ryzen 9 7950X3D / 4.2GHz Boost 5.7GHz / 16 nhân 32 luồng / 144MB / AM5', 'r9-7950x3d', '', 22, 18990000, 17990000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: AM5</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 16</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 32</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa: 4.2 GHz - 5.7 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 120W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L1: 1 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L2: 16 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L3: 128 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: AMD Radeon™ Graphics</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/r9-7950x3d.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '10', 0, 0, 0),
(8, 'Bộ vi xử lý AMD Ryzen 9 7900X3D / 4.4GHz Boost 5.6GHz / 12 nhân 24 luồng / 140MB / AM5', 'r9-7900x3d', '', 22, 15290000, 14990000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: AM5</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 24</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa: 4.4 GHz - 5.6 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 120W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L1: 768 KB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L2: 12 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L3: 128 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: AMD Radeon™ Graphics</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/r9-7900x3d.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '13', 0, 0, 0),
(9, 'Bộ vi xử lý AMD Ryzen 7 9800X3D / 4.7GHz Boost 5.2GHz / 8 nhân 16 luồng / 104MB / AM5', 'r7-9800x3d', '', 22, 14990000, 14490000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: AM5</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 8</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 16</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa: 4.7 GHz - 5.2 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 120W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L1: 640 KB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L2: 8 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L3: 96 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: AMD Radeon™ Graphics</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/r7-9800x3d.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '14', 0, 0, 0),
(10, 'Bộ vi xử lý AMD Ryzen 7 7800X3D / 4.2GHz Boost 5.0GHz / 8 nhân 16 luồng / 104MB / AM5', 'r7-7800x3d', '', 22, 12990000, 11990000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Socket: AM5</p>\r\n	</li>\r\n	<li>\r\n	<p>Số nhân: 8</p>\r\n	</li>\r\n	<li>\r\n	<p>Số luồng: 16</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ cơ bản - Turbo tối đa: 4.0 GHz - 5.0 GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Điện năng tiêu thụ: 120W</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L1: 512 KB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L2: 8 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ đệm L3: 96 MB</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa tích hợp: AMD Radeon™ Graphics</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản PCI Express: 5.0</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/r7-7800x3d.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '12', 0, 0, 0),
(11, 'Bo mạch chủ MSI B760M GAMING PLUS WIFI DDR4', 'msi-b760m', '', 25, 3990000, 3490000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>CPU: Intel® Socket LGA1700 cho Bộ xử lý Intel® Core ™, Pentium® Gold và Celeron® thế hệ thứ 12,13 và 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Chipet: Intel® B760 Chipset</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ kênh: DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>Tối đa bộ nhớ dung lượng: 128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ họa: 2x DisplayPort, 2x HDMI®</p>\r\n	</li>\r\n	<li>\r\n	<p>Khe mở rộng: 2x khe cắm PCI-E x16, 1x khe cắm PCI-E x1</p>\r\n	</li>\r\n	<li>\r\n	<p>Lưu trữ: 2x M.2, 4x SATA 6G</p>\r\n	</li>\r\n	<li>\r\n	<p>USB:</p>\r\n	<ul>\r\n		<li>\r\n		<p>- 2x USB 2.0 (Phía sau)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 4x USB 2.0 (Phía trước)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 2x USB 5Gbps Type A (Phía sau)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 4x USB 5Gbps Type A (Phía trước)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1x USB 5Gbps Type C (Phía trước)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 2x USB 10Gbps Type A (Phía sau)</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>LAN: Realtek® RTL8125BG 2.5G LAN</p>\r\n	</li>\r\n	<li>\r\n	<p>Wireless & Bluetooth:</p>\r\n	<ul>\r\n		<li>\r\n		<p>Intel® Wi-Fi 6E</p>\r\n		</li>\r\n		<li>\r\n		<p>Bluetooth® 5.3</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Audio: Realtek® ALC897 Codec 7.1-Channel High Definition Audio</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/msi-b760m.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '12', 0, 0, 0),
(12, 'Bo mạch chủ ASUS PRIME B760M-A WIFI D4', 'asus-prime-b760m-a', '', 25, 3990000, 3490000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>CPU: Socket Intel® LGA1700 dành cho Bộ xử lý Intel® Core™ thế hệ thứ 13 & Bộ xử lý Intel® Core™, Pentium® Gold và Celeron® thế hệ thứ 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Chipet: Intel® B760 Chipset</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ kênh: DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>Tối đa bộ nhớ dung lượng: 128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ họa: 1x DisplayPort, 2x HDMI®</p>\r\n	</li>\r\n	<li>\r\n	<p>Khe mở rộng: \r\n	<ul>\r\n		<li>\r\n		<p>- 1 khe cắm PCIe 4.0 x16</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1 khe cắm PCIe 4.0 x16 (hỗ trợ x4 chế độ)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1 khe cắm PCIe 4.0 x16 (hỗ trợ x1 chế độ)</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	</p>\r\n	</li>\r\n	<li>\r\n	<p>Lưu trữ: 2x M.2, 4x SATA 6G</p>\r\n	</li>\r\n	<li>\r\n	<p>USB:</p>\r\n	<ul>\r\n		<li>\r\n		<p>- 2 x cổng USB 3.2 Gen 2 (2 cổng Type-A)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 4 x cổng USB 2.0 (4 cổng Type-A)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 2 x đầu nối USB 3.2 Gen 1 hỗ trợ 4 cổng USB 3.2 Gen 1 bổ sung</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1 x đầu nối USB 3.2 Gen 1 (hỗ trợ USB Type-C®)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 2 x đầu nối USB 2.0 hỗ trợ 4 cổng USB 2.0 bổ sung</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1 x đầu nối USB 2.0 hỗ trợ 1 cổng USB 2.0 bổ sung</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>LAN: Realtek 2.5Gb Ethernet</p>\r\n	</li>\r\n	<li>\r\n	<p>Wireless & Bluetooth:</p>\r\n	<ul>\r\n		<li>\r\n		<p>Intel® Wi-Fi 6E</p>\r\n		</li>\r\n		<li>\r\n		<p>Bluetooth® 5.2</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>Audio: Realtek 7.1 Surround Sound High Definition Audio CODEC</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/asus-prime-b760m-a.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '9', 0, 0, 0),
(13, 'Bo mạch chủ ASUS PRIME A620M-A DDR5', 'asus-prime-a620m-a', '', 26, 3290000, 3090000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>CPU: AMD Socket AM5 for AMD Ryzen™ 7000 Series Desktop Processors</p>\r\n	</li>\r\n	<li>\r\n	<p>Chipet: AMD A620 Chipset</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ kênh: DDR5</p>\r\n	</li>\r\n	<li>\r\n	<p>Tối đa bộ nhớ dung lượng: 128GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ họa: 1x DisplayPort, 1x HDMI®, 1x cổng VGA</p>\r\n	</li>\r\n	<li>\r\n	<p>Khe mở rộng: \r\n	<ul>\r\n		<li>\r\n		<p>- 1 x khe cắm PCIe 4.0 x16 (hỗ trợ chế độ x16)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 2 x khe cắm PCIe 3.0 x1</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	</p>\r\n	</li>\r\n	<li>\r\n	<p>Lưu trữ: 2x M.2, 4x SATA 6G</p>\r\n	</li>\r\n	<li>\r\n	<p>USB:</p>\r\n	<ul>\r\n		<li>\r\n		<p>- 2 x cổng USB 3.2 Gen 1 (5G) (2 x Type-A)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 4 x cổng USB 2.0 (4 x Type-A)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1 x đầu nối USB 3.2 Gen 1 (5G) (hỗ trợ USB Type-C®)</p>\r\n		</li>\r\n		<li>\r\n		<p>- 1 x đầu cắm USB 3.2 Gen 1 (5G) hỗ trợ thêm 2 cổng USB 3.2 Gen 1</p>\r\n		</li>\r\n		<li>\r\n		<p>- 2 x đầu cắm USB 2.0 hỗ trợ thêm 4 cổng USB 2.0</p>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>LAN: Realtek 1Gb Ethernet</p>\r\n	</li>\r\n	<li>\r\n	<p>Audio: Realtek 7.1 CODEC</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/asus-prime-a620m-a.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '15', 0, 0, 0),
(14, 'RAM Corsair Dominator Titanium White 64GB (2x32GB) RGB 6600 DDR5', 'ram-corsair-dominator-titanium-white-64gb-ddr5', '', 31, 30990000, 20490000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Series bộ nhớ: Dominator Titanium</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 64GB (2x32GB)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR5</p>\r\n	</li>\r\n	<li>\r\n	<p>Gói bộ nhớ: DIMM</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiệu suất: XMP 3.0</p>\r\n	</li>\r\n	<li>\r\n	<p>SDP Latency: 40-40-40-77</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ SDP: 4800MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ kiểm tra: 6600 MT/s</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/dominator_titanium_rgb_ddr5_64gb.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '15', 0, 0, 0),
(15, 'RAM Corsair Dominator Titanium Black 96GB (2x48GB) RGB 6600 DDR5', 'ram-corsair-dominator-titanium-black-96gb-ddr5', '', 31, 39990000, 38990000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Series bộ nhớ: Dominator Titanium</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 96GB (2x48GB)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR5</p>\r\n	</li>\r\n	<li>\r\n	<p>Gói bộ nhớ: DIMM</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiệu suất: XMP 3.0</p>\r\n	</li>\r\n	<li>\r\n	<p>SDP Latency: 40-40-40-77</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ SDP: 4800MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ kiểm tra: 6600 MT/s</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/dominator_titanium_rgb_ddr5_black_96gb.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '8', 0, 0, 0),
(112, 'RAM G.Skill Trident Z5 ROYAL RGB 32GB (2x16GB) 6400 DDR5 Silver', 'ram-g-skill-trident-z5-royal-rgb-32gb-2x16gb-6400-ddr5-silver', '', 31, 5990000, 4990000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 32GB (16GBx2)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR5</p>\r\n	</li>\r\n	<li>\r\n	<p>Gói bộ nhớ: DIMM</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ OC: Intel XMP 3.0</p>\r\n	</li>\r\n	<li>\r\n	<p>SDP Latency: 32-39-39-102</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ kiểm chứng: 6400MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ SDP: 4800MHz</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/ram_g_skill_trident_z5_royal_rgb_32gb_2x16gb_6400_ddr5_silver.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '7', 0, 0, 0),
(113, 'Ram Corsair Vengeance RGB 64GB (2x32GB) 5600 DDR5 White', 'ram-corsair-vengeance-rgb-64gb-5600-ddr5-white', '', 31, 11490000, 9990000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 64GB (2x32GB)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR5</p>\r\n	</li>\r\n	<li>\r\n	<p>SDP Latency: 40-40-40-77</p>\r\n	</li>\r\n	<li>\r\n	<p>Bus: 5600MHz</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/ram-pc-corsair-vengeance-rgb-white_64gb.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '9', 0, 0, 0),
(114, 'RAM Kingston Fury Beast RGB 16GB (2x8GB) bus 5600 DDR5', 'ram-kingston-fury-beast-rgb-16gb-2x8gb-bus-5200-ddr5', '', 31, 3190000, 2190000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 16GB (2x8GB)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR5</p>\r\n	</li>\r\n	<li>\r\n	<p>Tần số: 5600MT/s</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ trễ: CL40</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/ram-kingston-fury-beast-rgb-16gb-2x8gb-bus-5200-ddr5.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '10', 0, 0, 0),
(115, 'Ram V-Color Skywalker Plus 1x8GB 3600 RGB Black DDR4', 'ram-v-color-skywalker-plus-1x8-3600-rgb-black-ddr4', '', 30, 1690000, 1290000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 1x8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>Chuẩn Bus: 3600MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Tương thích tốc độ: 2133MHz-3600MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ XMP: Có</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/ram-v-color-skywalker-plus-1x8-3600-rgb-black-ddr4.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '30', 0, 0, 0),
(116, 'Ram Corsair Vengeance LPX 8GB (1x8GB) 3200', 'ram-corsair-vengeance-lpx-8gb-ddr4-3200mhz', '', 30, 1990000, 1690000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 1x8GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>Bus hỗ trợ: 3200 MHz</p>\r\n	</li>\r\n	<li>\r\n	<p>Cas Latency: 16-20-20-38</p>\r\n	</li>\r\n	<li>\r\n	<p>OverClock: Có hỗ trợ</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/ram-corsair-vengeance-lpx-8gb-ddr4-3200mhz.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '31', 0, 0, 0),
(117, 'Ram V-Color Skywalker Plus 1x16GB 3600 RGB Black DDR4', 'ram-v-color-skywalker-plus-1x16gb-3600-rgb-black-ddr4', '', 30, 2690000, 2390000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 16GB (1x16GB)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>BUS: 3600MHz (PC4-28800)</p>\r\n	</li>\r\n	<li>\r\n	<p>Chipset: CL18-22-22-42</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/ram-v-color-skywalker-plus-1x16gb-3600-rgb-black-ddr4.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '16', 0, 0, 0),
(118, 'Ram Corsair Vengeance RS RGB 64GB (2x32GB) 3200', '64gb-ddr4-2x32gb-3200-ram-corsair-vengeance-rs-rgb', '', 30, 2690000, 2390000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước bộ nhớ: 64GB (2 x 32GB)</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại bộ nhớ: DDR4</p>\r\n	</li>\r\n	<li>\r\n	<p>Bus kiểm tra: 3200</p>\r\n	</li>\r\n	<li>\r\n	<p>Latency kiểm tra: 16-20-20-38</p>\r\n	</li>\r\n	<li>\r\n	<p>SPD Latency: 15-15-15-36</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/64gb-ddr4-2x32gb-3200-ram-corsair-vengeance-rs-rgb.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '18', 0, 0, 0),
(119, 'Card màn hình ASUS Dual GeForce RTX 3060 OC Edition 12GB V2 (DUAL-RTX3060-O12G-V2)', 'asus-dual-geforce-rtx-3060-o12g', '', 28, 8690000, 7890000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa: NVIDIA® GeForce RTX™ 3060</p>\r\n	</li>\r\n	<li>\r\n	<p>Giao thức kết nối: PCI Express 4.0</p>\r\n	</li>\r\n	<li>\r\n	<p>Xung nhịp nhân: \r\n<ul>\r\n	<li>\r\n	<p>- OC Mode - 1867 MHz (Boost Clock)</p>\r\n	</li>\r\n	<li>\r\n	<p>- Gaming Mode - 1837 MHz (Boost Clock)</p>\r\n	</li>\r\n</ul>\r\n	</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ: \r\n<ul>\r\n	<li>\r\n	<p>- Dung lượng: 12GB</p>\r\n	</li>\r\n	<li>\r\n	<p>- Loại: GDDR6</p>\r\n	</li>\r\n	<li>\r\n	<p>- Tốc độ: 15 Gbps</p>\r\n	</li>\r\n	<li>\r\n	<p>- Giao thức: 192-bit</p>\r\n	</li>\r\n</ul>\r\n	</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ phân giải kỹ thuật số tối đa: 7680 x 4320</p>\r\n	</li>\r\n	<li>\r\n	<p>Số màn hình hỗ trợ xuất tối đa: 4</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng xuất hình: 1x Native HDMI 2.1, 3x Native DisplayPort 1.4</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản DirectX: 12</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản OpenGL: OpenGL® 4.6</p>\r\n	</li>\r\n	<li>\r\n	<p>Nguồn đề nghị: 650W</p>\r\n	</li>\r\n	<li>\r\n	<p>Đầu cấp nguồn: 1 x 8-pin</p>\r\n	</li>\r\n	<li>\r\n	<p>Tản nhiệt: 2 quạt</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/asus-dual-geforce-rtx-3060-o12g.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '10', 0, 0, 0),
(120, 'Card màn hình MSI GeForce RTX 4070 GAMING X SLIM 12G', 'card-man-hinh-msi-geforce-rtx-4070-gaming-x-slim-12g', '', 29, 20990000, 17990000, 1, 1, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Nhân đồ họa: NVIDIA® GeForce RTX 4070</p>\r\n	</li>\r\n	<li>\r\n	<p>Giao thức kết nối: PCI Express® Gen 4</p>\r\n	</li>\r\n	<li>\r\n	<p>Xung nhịp nhân: \r\n<ul>\r\n	<li>\r\n	<p>- Extreme Performance: 2625 MHz (MSI Center)</p>\r\n	</li>\r\n	<li>\r\n	<p>- Boost: 2610 MHz (GAMING & SILENT Mode)</p>\r\n	</li>\r\n</ul>\r\n	</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhân CUDA: 5888 đơn vị</p>\r\n	</li>\r\n	<li>\r\n	<p>Bộ nhớ: \r\n<ul>\r\n	<li>\r\n	<p>- Dung lượng: 12GB</p>\r\n	</li>\r\n	<li>\r\n	<p>- Loại: GDDR6X</p>\r\n	</li>\r\n	<li>\r\n	<p>- Tốc độ: 21 Gbps</p>\r\n	</li>\r\n	<li>\r\n	<p>- Giao thức: 192-bit</p>\r\n	</li>\r\n</ul>\r\n	</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ phân giải kỹ thuật số tối đa: 7680 x 4320</p>\r\n	</li>\r\n	<li>\r\n	<p>Số màn hình hỗ trợ xuất tối đa: 4</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng xuất hình: DisplayPort x 3, HDMI x 1</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản DirectX: 12 Ultimate</p>\r\n	</li>\r\n	<li>\r\n	<p>Phiên bản OpenGL: OpenGL® 4.6</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiêu thụ điện năng: 215W</p>\r\n	</li>\r\n	<li>\r\n	<p>Nguồn đề nghị: 650W</p>\r\n	</li>\r\n	<li>\r\n	<p>Đầu cấp nguồn: 16-pin x 1</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/card-man-hinh-msi-geforce-rtx-4070-gaming-x-slim-12g.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '0', 0, 0, 0),
(121, 'Card màn hình MSI GeForce RTX 5090 32G VENTUS 3X OC', 'card-man-hinh-msi-geforce-rtx-5090-32g-ventus-3x-oc-1', '', 47, 88990000, 79990000, 1, 1, '', '/storage/photos/product/card-man-hinh-msi-geforce-rtx-5090-32g-ventus-3x-oc-1.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '1', 0, 0, 0),
(122, 'Ổ Cứng HDD WD 1TB Blue', 'wd-hdd-1tb-blue-7200rpm', '', 32, 2690000, 2490000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Chuẩn giao tiếp: Sata III</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước: 3.5 Inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng: 1 TB</p>\r\n	</li>\r\n	<li>\r\n	<p>Cache: 64M Cache</p>\r\n	</li>\r\n	<li>\r\n	<p>RPM: 7200 rpm</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ đọc: ~100MB/s</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ ghi: ~100MB/s</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/wd-hdd-1tb-blue-7200rpm.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '2', 0, 0, 0),
(123, 'Ổ Cứng SSD WD Blue SN5000 500GB M.2 NVMe PCIe Gen4', 'o-cung-ssd-wd-blue-sn5000-500gb-m-2-nvme-pcie-gen4', '', 45, 1890000, 1490000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Chuẩn giao tiếp: PCIe Gen4 x4</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước: M.2 2280</p>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng: 500GB</p>\r\n	</li>\r\n	<li>\r\n	<p>DRAM: HMB (Bộ đệm bộ nhớ máy chủ)</p>\r\n	</li>\r\n	<li>\r\n	<p>NAND: 3D NAND TLC</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ đọc: 5000MB/s</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ ghi: 4000MB/s</p>\r\n	</li>\r\n	<li>\r\n	<p>Đọc ngẫu nhiên: 460,000 IOPS</p>\r\n	</li>\r\n	<li>\r\n	<p>Ghi ngẫu nhiên: 770,000 4KB IOPS</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ bền (TBW): 300</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/o-cung-ssd-wd-blue-sn5000-500gb-m-2-nvme-pcie-gen4.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '6', 0, 0, 0),
(124, 'Ổ Cứng SSD SSTC Megamouth 256GB Sata3', 'o-cung-ssd-sstc-megamouth-256gb-sata3', '', 45, 990000, 590000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Dung lượng: 256 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>Chuẩn giao tiếp: SATA III 6GB/s</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước: 2,5 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ đọc: Lên đến 500MB/s</p>\r\n	</li>\r\n	<li>\r\n	<p>Tốc độ ghi: Lên đến 490MB/s</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/o-cung-ssd-sstc-megamouth-256gb-sata3.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '8', 0, 0, 0),
(125, 'Nguồn máy tính Thermaltake TOUGHPOWER GT 850W SNOW - 80 Plus Gold - Full Modular (850W)', 'nguon-may-tinh-thermaltake-toughpower-gt-850w-snow-80plus-gold', '', 50, 2790000, 2690000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Model: PS-TPT-0850FNFAGE-W</p>\r\n	</li>\r\n	<li>\r\n	<p>Công suất đầu ra tối đa: 850W</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước: 150mm(W)x86mm(H)x140mm(D)</p>\r\n	</li>\r\n	<li>\r\n	<p>PFC (Hiệu chỉnh hệ số công suất): Active PFC</p>\r\n	</li>\r\n	<li>\r\n	<p>Nhiệt độ bảo quản: -40°C to + 70°C</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ thống làm mát: 12cm FDB Fan</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiệu suất: Đạt chuẩn 80 PLUS Gold</p>\r\n	</li>\r\n	<li>\r\n	<p>Chứng nhận an toàn: CE/UKCA/ICES/TUV/LVD/RCM/CB/FCC/cTUVus/BSMI/CCC/BIS/S-MARK</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiệu suất: Các tính năng bảo vệ: OVP/UVP/OCP/OPP/OTP/SCP</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/nguon-may-tinh-thermaltake-toughpower-gt-850w-snow-80plus-gold.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '20', 0, 0, 0),
(126, 'Nguồn máy tính MSI MAG A750BN PCIE5 - 80 Plus Bronze (750W)', 'nguon-may-tinh-msi-mag-a750bn-pcie5-80-plus-bronze-750w', '', 50, 1690000, 1590000, 1, 0, '<p>Thông tin sản phẩm</p>\r\n\r\n<ul>\r\n	</li>\r\n	<li>\r\n	<p>Tên sản phẩm: MAG A750BN</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại nguồn: ATX</p>\r\n	</li>\r\n	<li>\r\n	<p>Công suất tối đa: 750W</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiệu điện thế đầu vào: 100-240V</p>\r\n	</li>\r\n	<li>\r\n	<p>Nguồn đầu vào: 115Vac/10.0A max / 230Vac/5.0A max.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hiệu suất: Lên tới 85% (80 Plus Bronze)</p>\r\n	</li>\r\n	<li>\r\n	<p>Modular: Không</p>\r\n	</li>\r\n	<li>\r\n	<p>Quạt: 120 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>Fan bearing: Vòng bi</p>\r\n	</li>\r\n	<li>\r\n	<p>Kích thước chuẩn: 140 x 150 x 86 mm / 5.51 x 5.9 x 3.38 inchesi</p>\r\n	</li>\r\n	<li>\r\n	<p>Loại PFC: PFC tự động</p>\r\n	</li>\r\n	<li>\r\n	<p>Tần số đầu vào: 50~60Hz</p>\r\n	</li>\r\n	<li>\r\n	<p>Chứng nhận bảo vệ: OCP / OVP / OPP / OTP / SCP</p>\r\n	</li>\r\n</ul>', '/storage/photos/product/nguon-may-tinh-msi-mag-a750bn-pcie5-80-plus-bronze-750w.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '25', 0, 0, 0),
(127, 'Vỏ máy tính Lian Li O11D Evo RGB Black', 'vo-may-tinh-lian-li-o11d-evo-rgb-black', '', 51, 4490000, 3890000, 1, 0, '<!DOCTYPE html>\r\n<html lang=\"vi\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <style>\r\n        .specs-container {\r\n            width: 400px;\r\n            border: 1px solid #ccc;\r\n            font-family: \"Segoe UI\", Tahoma, sans-serif;\r\n            font-size: 13px;\r\n            color: #333;\r\n            line-height: 1.4;\r\n        }\r\n        .specs-header {\r\n            background-color: #000;\r\n            color: #fff;\r\n            padding: 8px;\r\n            text-align: center;\r\n            font-weight: bold;\r\n            font-size: 14px;\r\n        }\r\n        .specs-table {\r\n            width: 100%;\r\n            border-collapse: collapse;\r\n        }\r\n        .specs-table tr:nth-child(even) {\r\n            background-color: #fcfcfc;\r\n        }\r\n        .specs-table td {\r\n            padding: 8px;\r\n            border-bottom: 1px solid #eee;\r\n            vertical-align: top;\r\n        }\r\n        .label {\r\n            font-weight: bold;\r\n            width: 120px;\r\n            color: #555;\r\n            background-color: #f7f7f7;\r\n        }\r\n        .specs-list {\r\n            margin: 0;\r\n            padding-left: 18px;\r\n        }\r\n        .specs-list li {\r\n            margin-bottom: 3px;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"specs-container\">\r\n    <div class=\"specs-header\">LIAN LI O11D EVO RGB</div>\r\n    <table class=\"specs-table\">\r\n        <tr>\r\n            <td class=\"label\">Bảo hành</td>\r\n            <td>12 Tháng</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Kích thước</td>\r\n            <td>478 x 290 x 471 mm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Chất liệu</td>\r\n            <td>Kính cường lực 4mm, Nhôm, Thép</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Mainboard</td>\r\n            <td>E-ATX (<280mm), ATX, M-ATX, ITX</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Ổ cứng</td>\r\n            <td>\r\n                <ul class=\"specs-list\">\r\n                    <li>Cạnh: 2x3.5\" hoặc 4x2.5\"</li>\r\n                    <li>Khay MB: 2x2.5\"</li>\r\n                    <li>Hộp HDD: 2x3.5\"/2.5\"</li>\r\n                </ul>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Hỗ trợ Rad</td>\r\n            <td>Trên/Cạnh/Dưới: 240mm - 360mm (Trên hỗ trợ 420mm)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Hỗ trợ Quạt</td>\r\n            <td>Tối đa 3x120mm hoặc 3x140mm (Trên/Cạnh/Dưới)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">GPU / CPU</td>\r\n            <td>GPU: 455.7mm | CPU: 167mm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Cổng I/O</td>\r\n            <td>2xUSB 3.0, 1xType-C, Audio, Nút LED/Mode/Reset</td>\r\n        </tr>\r\n    </table>\r\n</div>\r\n\r\n</body>\r\n</html>', '/storage/photos/product/vo-may-tinh-lian-li-o11d-evo-rgb-black.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '25', 0, 0, 0),
(128, 'Vỏ máy tính MSI MAG PANO M100R PZ WHITE', 'vo-may-tinh-msi-mag-pano-m100r-pz-white', '', 51, 2990000, 2890000, 1, 0, '<!DOCTYPE html>\r\n<html lang=\"vi\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <style>\r\n        .product-specs {\r\n            width: 400px;\r\n            border: 1px solid #e1e1e1;\r\n            font-family: -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Arial, sans-serif;\r\n            font-size: 13px;\r\n            line-height: 1.5;\r\n            color: #333;\r\n            background: #fff;\r\n        }\r\n        .specs-title {\r\n            background-color: #ed1c24; /* Màu đỏ đặc trưng MSI */\r\n            color: #ffffff;\r\n            padding: 10px;\r\n            text-align: center;\r\n            font-weight: bold;\r\n            text-transform: uppercase;\r\n            font-size: 14px;\r\n        }\r\n        .specs-table {\r\n            width: 100%;\r\n            border-collapse: collapse;\r\n        }\r\n        .specs-table tr:nth-child(even) {\r\n            background-color: #f8f8f8;\r\n        }\r\n        .specs-table td {\r\n            padding: 8px 10px;\r\n            border-bottom: 1px solid #eee;\r\n            vertical-align: top;\r\n        }\r\n        .label {\r\n            font-weight: 600;\r\n            width: 110px;\r\n            color: #555;\r\n            border-right: 1px solid #eee;\r\n        }\r\n        .value {\r\n            padding-left: 12px;\r\n        }\r\n        .fan-list {\r\n            margin: 0;\r\n            padding-left: 15px;\r\n            list-style-type: disc;\r\n        }\r\n        .highlight {\r\n            color: #ed1c24;\r\n            font-weight: bold;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"product-specs\">\r\n    <div class=\"specs-title\">MAG PANO M100R PZ WHITE</div>\r\n    <table class=\"specs-table\">\r\n        <tr>\r\n            <td class=\"label\">Loại Case</td>\r\n            <td class=\"value\">Micro-ATX Tower</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Mainboard</td>\r\n            <td class=\"value\">M-ATX / Mini-ITX (hỗ trợ Project Zero)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Cổng I/O</td>\r\n            <td class=\"value\">USB-C 2x2, USB 3.2 Gen 1, Audio, LED Sw</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Ổ cứng</td>\r\n            <td class=\"value\">1 x 3.5” + 1 x 2.5”/3.5” combo</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">GPU/CPU</td>\r\n            <td class=\"value\">GPU: <span class=\"highlight\">390mm</span> | CPU: <span class=\"highlight\">175mm</span></td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Nguồn (PSU)</td>\r\n            <td class=\"value\">ATX (Tối đa 200mm)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Quạt sẵn</td>\r\n            <td class=\"value\">\r\n                3 x 120mm ARGB (Hông - ngược)<br>\r\n                1 x 120mm ARGB (Sau)\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Hỗ trợ Quạt</td>\r\n            <td class=\"value\">\r\n                <ul class=\"fan-list\">\r\n                    <li>Trên: 3x120 / 2x140mm</li>\r\n                    <li>Dưới/Nguồn: 3x120mm</li>\r\n                </ul>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Tản nhiệt (Rad)</td>\r\n            <td class=\"value\">Trên: 120/240/360 mm<br>Sau: 120/140 mm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Kích thước</td>\r\n            <td class=\"value\">440 x 235 x 405 mm</td>\r\n        </tr>\r\n    </table>\r\n</div>\r\n\r\n</body>\r\n</html>', '/storage/photos/product/vo-may-tinh-msi-mag-pano-m100r-pz-white.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '26', 0, 0, 0),
(129, 'Tản nhiệt Cooler Master HYPER 620S', 'tan-nhiet-cooler-master-hyper-620s', '', 54, 990000, 790000, 1, 0, '<!DOCTYPE html>\r\n<html lang=\"vi\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <style>\r\n        .cooler-specs {\r\n            width: 400px;\r\n            border: 1px solid #d1d1d1;\r\n            font-family: \'Segoe UI\', Arial, sans-serif;\r\n            font-size: 13px;\r\n            color: #333;\r\n            background: #fff;\r\n            border-radius: 4px;\r\n            overflow: hidden;\r\n        }\r\n        .specs-header {\r\n            background: linear-gradient(90deg, #1a1a1a, #444);\r\n            color: #fff;\r\n            padding: 12px;\r\n            text-align: center;\r\n            font-weight: bold;\r\n            font-size: 14px;\r\n            letter-spacing: 0.5px;\r\n        }\r\n        .specs-table {\r\n            width: 100%;\r\n            border-collapse: collapse;\r\n        }\r\n        .specs-table tr:nth-child(even) {\r\n            background-color: #f9f9f9;\r\n        }\r\n        .specs-table td {\r\n            padding: 9px 12px; /* Tăng nhẹ padding để bù vào khoảng trống của viền xanh cũ */\r\n            border-bottom: 1px solid #eee;\r\n            vertical-align: middle;\r\n        }\r\n        .label {\r\n            font-weight: 700;\r\n            width: 130px;\r\n            color: #444;\r\n            background-color: #f1f1f1;\r\n        }\r\n        .value {\r\n            line-height: 1.4;\r\n        }\r\n        .badge {\r\n            display: inline-block;\r\n            background: #e0e0e0;\r\n            padding: 2px 6px;\r\n            border-radius: 3px;\r\n            margin: 1px;\r\n            font-size: 11px;\r\n            color: #555;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"cooler-specs\">\r\n    <div class=\"specs-header\">TẢN NHIỆT KHÍ HYPER 620S (RR-D6NA)</div>\r\n    <table class=\"specs-table\">\r\n        <tr>\r\n            <td class=\"label\">Màu sắc</td>\r\n            <td class=\"value\">Silver (Bạc) / Black (Đen)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Socket CPU</td>\r\n            <td class=\"value\">\r\n                <span class=\"badge\">LGA 1700/1200/115x</span>\r\n                <span class=\"badge\">AM5 / AM4</span>\r\n            </td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Kích thước tổng</td>\r\n            <td class=\"value\">125 x 137 x 154.9 mm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Khối tản nhiệt</td>\r\n            <td class=\"value\"><strong>6 Ống đồng</strong> + Lá nhôm</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Hệ thống quạt</td>\r\n            <td class=\"value\">2 Quạt ARGB (120mm)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Tốc độ quạt</td>\r\n            <td class=\"value\">650 - 1750 RPM ± 10%</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Lưu lượng khí</td>\r\n            <td class=\"value\">71.93 CFM (Tối đa)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Áp suất / Độ ồn</td>\r\n            <td class=\"value\">1.86 mmH₂O / 27.2 dBA</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Tuổi thọ</td>\r\n            <td class=\"value\">> 160.000 Giờ (Rifle Bearing)</td>\r\n        </tr>\r\n        <tr>\r\n            <td class=\"label\">Kết nối / Điện năng</td>\r\n            <td class=\"value\">4-Pin PWM | 12VDC - 3.12W</td>\r\n        </tr>\r\n    </table>\r\n</div>\r\n\r\n</body>\r\n</html>', '/storage/photos/product/tan-nhiet-cooler-master-hyper-620s.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '26', 0, 0, 0),
(130, 'Tản nhiệt AIO Corsair iCUE LINK TITAN 360 RX RGB LCD Black', 'tan-nhiet-aio-corsair-icue-link-titan-360-rx-rgb-lcd-black', '', 53, 6490000, 6090000, 1, 0, '', '/storage/photos/product/tan-nhiet-aio-corsair-icue-link-titan-360-rx-rgb-lcd-black.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37', '26', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `img_product` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `img_product`, `created_at`, `updated_at`) VALUES
(1, 1, 'i9_14900kf_2.png', '2024-04-28 01:08:59', '2024-04-28 01:08:59'),
(2, 2, 'i7_14700_2.png', '2024-04-28 01:08:59', '2024-04-28 01:08:59'),
(3, 3, 'i7_14700kf_2.png', '2024-04-28 01:08:59', '2024-04-28 01:08:59'),
(4, 4, 'i5_12500_2.png', '2024-04-28 01:08:59', '2024-04-28 01:08:59'),
(5, 4, 'i5_12500_3.png', '2024-04-28 01:08:59', '2024-04-28 01:08:59'),
(6, 6, 'i3_14100_2.png', '2024-04-28 01:08:59', '2024-04-28 01:08:59'),
(7, 7, 'r9-7950x3d_2.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(8, 7, 'r9-7950x3d_3.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(9, 7, 'r9-7950x3d_4.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(10, 8, 'r9-7900x3d_2.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(11, 8, 'r9-7900x3d_3.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(12, 8, 'r9-7900x3d_4.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(13, 9, 'r7-9800x3d_2.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(14, 9, 'r7-9800x3d_3.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(15, 11, 'msi-b760m_2.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(16, 11, 'msi-b760m_3.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(17, 11, 'msi-b760m_4.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(18, 11, 'msi-b760m_5.png', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(19, 12, 'asus-prime-b760m-a_2.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(20, 12, 'asus-prime-b760m-a_3.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(21, 12, 'asus-prime-b760m-a_4.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(22, 12, 'asus-prime-b760m-a_5.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(23, 13, 'asus-prime-a620m-a_2.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(24, 13, 'asus-prime-a620m-a_3.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(25, 13, 'asus-prime-a620m-a_4.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(26, 13, 'asus-prime-a620m-a_5.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37'),
(27, 13, 'asus-prime-a620m-a_6.jpg', '2026-01-21 19:57:37', '2026-01-21 19:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `ra_product_id` int(11) NOT NULL DEFAULT 0,
  `ra_number` tinyint(4) NOT NULL DEFAULT 0,
  `ra_content` varchar(255) DEFAULT NULL,
  `ra_user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `ra_product_id`, `ra_number`, `ra_content`, `ra_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'sản phẩm tốt lắm', 2, '2024-05-04 01:11:08', '2024-05-04 01:11:08'),
(2, 1, 5, 'giá hợp lý', 7, '2024-05-04 01:39:21', '2024-05-04 01:39:21'),
(3, 3, 5, 'tạm ổn', 2, '2024-05-04 02:00:04', '2024-05-04 02:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `s_name`, `created_at`, `updated_at`) VALUES
(1, 'Asus', '2024-05-14 01:50:48', '2024-05-14 01:50:48'),
(3, 'Intel', '2024-05-14 01:58:10', '2024-05-14 01:58:10'),
(8, 'AMD', '2024-05-14 02:05:31', '2024-05-14 02:05:31'),
(9, 'Bảo long', '2024-05-14 02:40:39', '2024-05-14 02:40:39'),
(10, 'MSI', '2024-05-18 09:11:04', '2024-05-18 09:11:04'),
(11, 'hai sen', '2025-06-17 20:26:11', '2025-06-17 20:26:11'),
(12, 'quang linh vlogs', '2025-06-17 20:26:30', '2025-06-17 20:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tr_user_id` int(11) NOT NULL DEFAULT 0,
  `tr_note` varchar(255) DEFAULT NULL,
  `tr_address` varchar(255) DEFAULT NULL,
  `tr_phone` varchar(255) DEFAULT NULL,
  `tr_total` int(11) NOT NULL DEFAULT 0,
  `tr_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tr_user_id`, `tr_note`, `tr_address`, `tr_phone`, `tr_total`, `tr_status`, `created_at`, `updated_at`) VALUES
(87, 5, 'oke', 'Hà Nội', '0356894212', 33000000, 1, '2025-06-16 00:39:39', '2025-06-16 00:41:49'),
(88, 5, NULL, 'Nghệ an', '0986890456', 53900000, 1, '2025-06-16 01:34:48', '2025-06-16 01:37:17'),
(89, 5, NULL, 'Nghệ an', '0986890456', 119570000, 1, '2025-06-18 01:35:24', '2025-06-18 01:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` char(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_pay` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `active`, `password`, `remember_token`, `created_at`, `updated_at`, `total_pay`) VALUES
(2, 'Nguyễn Văn A', 'user3@gmail.com', '0961680324', '128 Lê Duẩn', 1, '$2y$12$qgfmP7VYFGpOeHJkyW4Cuucz6WIerX9uloP4kSlw5P3agu2/UkEBO', NULL, '2024-04-17 08:21:54', '2024-04-17 08:21:54', 26),
(5, 'Nguyễn B', 'test@gmail.com', '0986890456', 'Nghệ an', 1, '$2y$12$UKKEUmsd.VAgWMSUPLHm7.5SRRCHu3u3pODChqE7Ci6inpojH5KFm', NULL, '2024-05-07 00:46:17', '2024-05-07 00:46:17', 25),
(7, 'Nguyễn Văn c', 'user6@gmail.com', '0961680344', 'nghệ an', 1, '$2y$12$0cIYMA2fqynom7uTDaxlFuG3/SXo/8L4U5Ahi51aD2q.PhJnAdTUC', NULL, '2024-05-18 09:10:14', '2024-05-18 09:10:14', 1),
(8, 'Nguyễn Tuấn Thiền', 'thiennt@gmail.com', '0359568182', 'Hà Nội', 1, '$2y$12$gNHFQj.pI/rTTLwRq0GadeUWUuTghbJv3mGXMqqZjWQZB8e4si/z6', NULL, '2025-06-17 01:53:58', '2025-06-17 01:53:58', 0),
(9, 'đặng việt anh', 'vietanh@gmail.com', '05987465412', 'Hà Nội', 1, '$2y$12$Qyefz3ZajEI612SK0KmPee4qR6qqruHvleAy0vJTU6uSuOW6NTVhO', NULL, '2025-06-17 20:16:36', '2025-06-17 20:16:36', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_name_unique` (`name`),
  ADD UNIQUE KEY `admin_email_unique` (`email`),
  ADD KEY `admin_active_index` (`active`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `article_a_name_unique` (`a_name`),
  ADD KEY `article_a_slug_index` (`a_slug`),
  ADD KEY `article_a_active_index` (`a_active`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banner_b_name_unique` (`b_name`),
  ADD KEY `banner_b_active_index` (`b_active`),
  ADD KEY `banner_b_sale_index` (`b_sale`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_quantity_index` (`quantity`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_c_name_unique` (`c_name`),
  ADD KEY `category_c_slug_index` (`c_slug`),
  ADD KEY `category_c_active_index` (`c_active`),
  ADD KEY `category_c_parent_index` (`c_parent`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `import_goods`
--
ALTER TABLE `import_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_od_transaction_id_index` (`od_transaction_id`),
  ADD KEY `oders_od_product_id_index` (`od_product_id`),
  ADD KEY `oders_od_cart_id_index` (`od_cart_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_pro_slug_index` (`pro_slug`),
  ADD KEY `products_pro_category_id_index` (`pro_category_id`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_ra_product_id_index` (`ra_product_id`),
  ADD KEY `rating_ra_user_id_index` (`ra_user_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tr_user_id_index` (`tr_user_id`),
  ADD KEY `transactions_tr_status_index` (`tr_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_active_index` (`active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_goods`
--
ALTER TABLE `import_goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `oders`
--
ALTER TABLE `oders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
