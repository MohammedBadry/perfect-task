-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2023 at 12:32 PM
-- Server version: 5.7.43
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mymnjz_mawad`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '1',
  `about_company` text COLLATE utf8mb4_unicode_ci,
  `Commercial_registration_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commercial_register` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_founded` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employees_number` int(11) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet_balance` double DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `mobile`, `photo_profile`, `password`, `group_id`, `is_vendor`, `about_company`, `Commercial_registration_type`, `commercial_register`, `tax_certificate`, `tax_number`, `year_founded`, `employees_number`, `address`, `latitude`, `longitude`, `wallet_balance`, `account_name`, `bank_name`, `account_number`, `iban`, `status`, `read`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '', NULL, '$2y$10$9xtX7DciJ.5vOgPPqNdNUu7J.9O3J70UYfWU0hsP8wiINydzUsbhm', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'الرياض الدرعية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(2, 'Factory 1', 'vendor@vendor.com', '02131561', '', '$2y$10$8YopR9WhM29rrYd3igIo6.OZHRblA3Kc6RCyq7scPewhz0vdTGBNy', 2, 1, 'Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem ', 'مواد', NULL, NULL, '312345678912343', '2003', 55, 'الرياض الدرعية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-02-19 08:07:26', '2023-03-01 14:42:14'),
(3, 'Test', 'vendor2@vendor.com', '05613124545', '', '$2y$10$wF.tvqhXKg03ZzK15qfkRe/6UACFJ.qRetHZec4gNlz/YPwfCFaWy', 2, 1, 'Test test test', 'تاجر', NULL, NULL, NULL, '2010', 2010, 'الرياض الدرعية', '24.69814423431956', '46.6691920951989', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-04-02 22:54:10', '2023-05-10 18:13:46'),
(4, 'admin', 'mahamedbadry2003@gmail.com', '', NULL, '$2y$10$9xtX7DciJ.5vOgPPqNdNUu7J.9O3J70UYfWU0hsP8wiINydzUsbhm', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'الرياض الدرعية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(7, 'Mohammed Badry', 'ggggg@gmail.com', '01097966033', '', '$2y$10$zT7FA/DsD8A1EDsQnW2IRuQ/pydgGKLdVrmpWyczStUjSZhYcfNy2', 2, 1, 'Lorem', 'بسطة', NULL, NULL, NULL, '1999', 55, 'الرياض الدرعية', '24.69814423431956', '24.69814423431956', NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, '2023-05-10 18:08:17', '2023-05-10 18:13:46'),
(8, '1', 'sultan@mawadksa.com', '0560078600', '', '$2y$10$11OptHBrO4Pa8U8P6CFLiOFmyEAm79anOkvxPGAwh3TdR99mkEoG6', 2, 1, '11111111', '10100101010010101010', NULL, NULL, NULL, '1010', 100000, 'الرياض الدرعية', '11111', '11111', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-06-09 16:06:59', '2023-06-09 16:12:16'),
(9, 'test', 'test@admin.com', '0532148567', '', '$2y$10$koOBA4YreOdYhAR9Njar1ejKNFulm5Dh4d5YhbsGxGzVIqA2lLc0m', 2, 1, 'test', 'بسطة', 'admins/10/1TJzYwuTVNZ3LYjfRe76KKFTkItBvz1ID1Yoy8Si.png', 'admins/9/uVQ42WGvw79sZVz08cLXZ7OE9jSckU7uZ0iSVTJm.png', NULL, '1999', 55, 'الرياض الدرعية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-07-02 10:11:27', '2023-07-02 10:14:02'),
(10, 'test2', 'test2@admin.com', '0513665989', '', '$2y$10$ndJIJ6ebVq2kf6o05FoxJ..UVUcKJ4SRpYmSmYrn3ILDXCgr42Smq', 2, 1, 'test', 'بسطة', 'admins/9/uVQ42WGvw79sZVz08cLXZ7OE9jSckU7uZ0iSVTJm.png', 'admins/10/tQJNZgjbsW9rdOSwvSuxo92sjAjz2IEbdieM45Tb.pdf', NULL, '1999', 55, 'الرياض الدرعية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-07-02 10:13:58', '2023-07-02 10:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `admin_id`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Full Permission - Admin', '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(2, 1, 'مصانع', '2022-08-02 20:52:24', '2023-04-09 21:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_group_roles`
--

CREATE TABLE `admin_group_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_groups_id` bigint(20) UNSIGNED DEFAULT NULL,
  `show` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `add` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `edit` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `delete` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_group_roles`
--

INSERT INTO `admin_group_roles` (`id`, `name`, `admin_groups_id`, `show`, `add`, `edit`, `delete`, `created_at`, `updated_at`) VALUES
(1, 'admingroups', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(2, 'admins', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(3, 'settings', 1, 'yes', 'no', 'yes', 'no', '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(4, 'categories', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(5, 'banners', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(6, 'vendors', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(7, 'users', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(8, 'deliveries', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(9, 'products', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(10, 'orders', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(11, 'orderstatuses', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(12, 'withdrawalrequests', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-14 16:49:50', '2022-05-14 16:49:50'),
(26, 'cars', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-14 16:49:50', '2022-05-14 16:49:50'),
(27, 'units', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-14 16:49:50', '2022-05-14 16:49:50'),
(31, 'group', 2, 'no', 'no', 'no', 'no', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(32, 'products', 2, 'yes', 'yes', 'yes', 'yes', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(33, 'admin', 2, 'no', 'no', 'no', 'no', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(34, 'deliveries', 2, 'yes', 'yes', 'yes', 'yes', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(35, 'orders', 2, 'yes', 'yes', 'yes', 'yes', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(36, 'branches', 2, 'yes', 'yes', 'yes', 'yes', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(37, 'branches', 1, 'yes', 'yes', 'yes', 'yes', '2023-04-09 21:57:31', '2023-04-09 21:57:31'),
(38, 'cities', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(39, 'advs', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(40, 'areas', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:11', '2022-05-07 13:05:11'),
(41, 'faqs', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-07 13:05:10', '2022-05-07 13:05:10'),
(42, 'withdrawalrequests', 2, 'yes', 'yes', 'yes', 'yes', '2022-05-14 16:49:50', '2022-05-14 16:49:50'),
(43, 'tickets', 1, 'yes', 'yes', 'yes', 'yes', '2022-05-14 16:49:50', '2022-05-14 16:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `advs`
--

CREATE TABLE `advs` (
  `id` bigint(20) NOT NULL,
  `title_ar` varchar(191) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(191) CHARACTER SET utf8 NOT NULL,
  `title_urdu` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `price` float NOT NULL,
  `cursor` enum('up','down') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advs`
--

INSERT INTO `advs` (`id`, `title_ar`, `title_en`, `title_urdu`, `price`, `cursor`, `created_at`, `updated_at`) VALUES
(1, 'سعر الحديد', 'Steel pice', 'Urdu text', 50, 'up', '2023-06-07 12:49:00', '2023-06-07 13:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `name_ar` varchar(191) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(191) CHARACTER SET utf8 NOT NULL,
  `name_urdu` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `name_ar`, `name_en`, `name_urdu`, `created_at`, `updated_at`) VALUES
(1, 1, 'الخرج', 'Alkharj', NULL, '2023-05-16 17:53:44', '2023-05-16 17:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `auto_assignments`
--

CREATE TABLE `auto_assignments` (
  `id` int(11) NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','accepted','rejected') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auto_assignments`
--

INSERT INTO `auto_assignments` (`id`, `delivery_id`, `order_item_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 'accepted', '2023-08-20 16:41:11', '2023-08-20 16:41:41'),
(2, 9, 2, 'accepted', '2023-08-20 16:43:23', '2023-08-20 16:43:39'),
(3, 9, 12, 'accepted', '2023-08-31 12:59:14', '2023-09-08 20:54:08'),
(4, 9, 19, 'accepted', '2023-09-08 17:58:38', '2023-09-08 20:53:59'),
(5, 9, 20, 'accepted', '2023-09-17 14:14:08', '2023-09-17 14:14:55'),
(6, 9, 21, 'accepted', '2023-09-18 14:40:08', '2023-09-18 15:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'banners/2/SRfOlnJVnvt0Dhy4DV75KvGSFMiFDHSo8iwiqV40.jpg', '2023-02-25 05:51:48', '2023-02-25 05:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `branch_deliveries`
--

CREATE TABLE `branch_deliveries` (
  `id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_deliveries`
--

INSERT INTO `branch_deliveries` (`id`, `vendor_id`, `branch_id`, `delivery_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 9, '2023-06-07 08:28:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_urdu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_cost` float NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name_ar`, `name_en`, `name_urdu`, `delivery_cost`, `image`, `created_at`, `updated_at`) VALUES
(1, 'تريلا', 'Trella', NULL, 1000, 'cars/1/nS32a0venAPaiPm5W3SLXwBC9FuXhwBE4PMUuqcM.png', '2023-02-25 06:51:36', '2023-02-25 06:51:36'),
(2, 'ديانة', 'Diannah', NULL, 500, 'cars/2/afbnzuZwI1wGYrb4TClS6M07BrMXAO6lmHA2ZJYz.webp', '2023-02-25 06:54:25', '2023-02-25 06:54:25');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_cost` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_urdu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `name_urdu`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'بلوك', 'Test', NULL, 'categories/1/XgA25WUmxWskvBnWCQD2yitPgn8oNYxAcYBQmbix.jpg', NULL, '2023-02-19 07:43:02', '2023-02-19 07:43:02'),
(2, 'بلوك رملي', 'Subcategory 1', NULL, 'categories/og8yitKpYB694P2wQUwBAGzdAycu4IzFGXx1U2iO.jpg', 1, '2023-02-19 07:44:07', '2023-02-25 06:00:08'),
(3, 'رمل', 'Sand', NULL, 'categories/1/XgA25WUmxWskvBnWCQD2yitPgn8oNYxAcYBQmbix.jpg', NULL, '2023-02-19 07:43:02', '2023-02-19 07:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) NOT NULL,
  `name_ar` varchar(191) CHARACTER SET utf8 NOT NULL,
  `name_en` varchar(191) CHARACTER SET utf8 NOT NULL,
  `name_urdu` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `name_urdu`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'Riyadh', NULL, '2023-05-01 13:40:37', '2023-05-01 13:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_en` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_urdu` text COLLATE utf8mb4_unicode_ci,
  `answer_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question_ar`, `question_en`, `question_urdu`, `answer_ar`, `answer_en`, `answer_urdu`, `type`, `created_at`, `updated_at`) VALUES
(1, 'السؤال الأول', 'First question', 'پہلا سوال', 'الإجابة على السؤال الأول', 'First test answer', 'پہلا ٹیسٹ جواب', 'users', '2023-07-03 05:44:42', '2023-07-03 05:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('branch','product') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `user_id`, `target_id`, `type`, `created_at`, `updated_at`) VALUES
(7, 8, 1, 'product', '2023-08-08 18:42:54', '2023-08-08 18:42:54'),
(19, 8, 3, 'branch', '2023-08-08 20:37:51', '2023-08-08 20:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_bytes` bigint(20) NOT NULL,
  `mimtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_ar` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_en` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `answer_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_en` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '0000_00_00_000001_create_admins_table', 1),
(3, '0000_00_00_000002_create_admin_groups_table', 1),
(4, '0000_00_00_000003_create_admin_group_roles_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2021_02_18_102130_create_files_table', 1),
(10, '2021_02_19_985759_create_settings_table', 1),
(11, '2022_04_18_1650260668_create_categories_table', 1),
(12, '2022_04_19_1650351184_create_banners_table', 1),
(13, '2022_04_19_1650359176_create_products_table', 1),
(14, '2022_04_19_1650359176_create_user_addresses_table', 1),
(15, '2022_04_26_144926_create_vendor_categories_table', 1),
(16, '2022_04_28_1651173575_create_packages_table', 1),
(17, '2022_04_28_1651175872_create_faqs_table', 1),
(18, '2022_04_28_1651175873_create_instructions_table', 1),
(19, '2022_04_30_110814_create_order_statuses_table', 1),
(20, '2022_04_30_110814_create_product_extras_table', 1),
(21, '2022_05_07_122813_create_orders_table', 1),
(22, '2022_05_07_123746_create_order_items_table', 1),
(23, '2022_05_07_124204_create_order_item_extars_table', 1),
(24, '2022_05_12_152059_create_jobs_table', 2),
(25, '2022_05_13_213413_create_order_offers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_notitfications`
--

CREATE TABLE `mobile_notitfications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_notitfications`
--

INSERT INTO `mobile_notitfications` (`id`, `title`, `body`, `type`, `target_id`, `user_id`, `read`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'تم شحن المحفظة بنجاح', 'تم شحن المحفظة بنجاح', 'wallet', 8, 8, 1, NULL, '2023-05-29 09:01:20', '2023-07-02 19:32:21'),
(2, 'تم شحن المحفظة بنجاح', 'تم شحن المحفظة بنجاح', 'wallet', 8, 8, 1, NULL, '2023-05-29 09:19:49', '2023-07-02 19:32:21'),
(3, 'تم شحن المحفظة بنجاح', 'تم شحن المحفظة بنجاح', 'wallet', 8, 8, 1, NULL, '2023-05-29 09:23:33', '2023-07-02 19:32:21'),
(4, 'تم شحن المحفظة بنجاح', 'تم شحن المحفظة بنجاح', 'wallet', 8, 8, 1, NULL, '2023-05-29 09:24:05', '2023-07-02 19:32:21'),
(5, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-10 07:52:34', '2023-08-13 15:23:00'),
(6, 'auth.order_accepted_title_part17auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part17auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 7, 8, 1, NULL, '2023-08-10 07:52:34', '2023-08-13 15:23:00'),
(7, 'auth.order_accepted_title_part17auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part17auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 7, 1, 1, NULL, '2023-08-13 08:45:18', '2023-08-15 16:21:14'),
(8, 'auth.order_accepted_title_part17auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part17auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 7, 1, 1, NULL, '2023-08-13 09:18:14', '2023-08-15 16:21:14'),
(9, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 7, 8, 1, NULL, '2023-08-13 09:35:24', '2023-08-13 15:23:00'),
(10, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 7, 1, 1, NULL, '2023-08-13 09:35:24', '2023-08-15 16:21:14'),
(11, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 8, 1, NULL, '2023-08-13 09:40:54', '2023-08-13 15:23:00'),
(12, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 1, 1, NULL, '2023-08-13 09:40:54', '2023-08-15 16:21:14'),
(13, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 8, 1, NULL, '2023-08-13 09:47:38', '2023-08-13 15:23:00'),
(14, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 1, 1, NULL, '2023-08-13 09:47:38', '2023-08-15 16:21:14'),
(15, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 7, 9, 1, NULL, '2023-08-13 09:47:38', '2023-08-31 10:22:18'),
(16, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 8, 1, NULL, '2023-08-13 09:52:28', '2023-08-13 15:23:00'),
(17, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 1, 1, NULL, '2023-08-13 09:52:28', '2023-08-15 16:21:14'),
(18, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 7, 9, 1, NULL, '2023-08-13 09:52:28', '2023-08-31 10:22:18'),
(19, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 8, 1, NULL, '2023-08-13 09:59:25', '2023-08-13 15:23:00'),
(20, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 1, 1, NULL, '2023-08-13 09:59:25', '2023-08-15 16:21:14'),
(21, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 7, 9, 1, NULL, '2023-08-13 09:59:25', '2023-08-31 10:22:18'),
(22, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 8, 1, NULL, '2023-08-13 10:01:08', '2023-08-13 15:23:00'),
(23, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 7, 1, 1, NULL, '2023-08-13 10:01:08', '2023-08-15 16:21:14'),
(24, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 7, 9, 1, NULL, '2023-08-13 10:01:08', '2023-08-31 10:22:18'),
(25, 'تم شحن المحفظة بنجاح', 'تم شحن المحفظة بنجاح', 'wallet', 8, 8, 1, NULL, '2023-08-13 17:00:45', '2023-08-14 12:01:20'),
(26, 'تم شحن المحفظة بنجاح', 'تم شحن المحفظة بنجاح', 'wallet', 8, 8, 1, NULL, '2023-08-13 17:01:14', '2023-08-14 12:01:20'),
(27, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-15 16:22:08', '2023-09-05 09:20:09'),
(28, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-15 16:24:23', '2023-09-05 09:20:09'),
(29, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-15 16:25:15', '2023-09-05 09:20:09'),
(30, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-15 16:25:45', '2023-09-05 09:20:09'),
(31, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-15 17:22:41', '2023-09-05 09:20:09'),
(32, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-15 17:24:19', '2023-09-05 09:20:09'),
(33, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 1, 8, 1, NULL, '2023-08-20 15:08:31', '2023-09-05 09:20:09'),
(34, 'auth.order_accepted_title_part11auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part11auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 1, 8, 1, NULL, '2023-08-20 15:08:31', '2023-09-05 09:20:09'),
(35, 'auth.new_order_title_part11auth.new_order_title_part2mbmb', 'auth.new_order_title_part11auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 1, 9, 1, NULL, '2023-08-20 15:11:27', '2023-08-31 10:22:18'),
(36, 'auth.order_accepted_title_part11auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part11auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 1, 1, 1, NULL, '2023-08-20 15:14:53', '2023-09-07 15:36:19'),
(37, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 1, 8, 1, NULL, '2023-08-20 15:59:04', '2023-09-05 09:20:09'),
(38, 'auth.order_accepted_title_part11auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part11auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 1, 8, 1, NULL, '2023-08-20 15:59:04', '2023-09-05 09:20:09'),
(39, 'auth.new_order_title_part11auth.new_order_title_part2mbmb', 'auth.new_order_title_part11auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 1, 9, 1, NULL, '2023-08-20 16:00:06', '2023-08-31 10:22:18'),
(40, 'auth.order_accepted_title_part11auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part11auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 1, 1, 1, NULL, '2023-08-20 16:03:04', '2023-09-07 15:36:19'),
(41, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 1, 8, 1, NULL, '2023-08-20 16:03:29', '2023-09-05 09:20:09'),
(42, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 1, 1, 1, NULL, '2023-08-20 16:03:29', '2023-09-07 15:36:19'),
(43, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 1, 9, 1, NULL, '2023-08-20 16:03:29', '2023-08-31 10:22:18'),
(44, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 2, 8, 1, NULL, '2023-08-20 16:24:22', '2023-09-05 09:20:09'),
(45, 'auth.order_accepted_title_part12auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part12auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 2, 8, 1, NULL, '2023-08-20 16:24:22', '2023-09-05 09:20:09'),
(46, 'auth.new_order_title_part12auth.new_order_title_part2mbmb', 'auth.new_order_title_part12auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 2, 9, 1, NULL, '2023-08-20 16:25:00', '2023-08-31 10:22:18'),
(47, 'auth.order_accepted_title_part12auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part12auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 2, 1, 1, NULL, '2023-08-20 16:27:57', '2023-09-07 15:36:19'),
(48, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 2, 8, 1, NULL, '2023-08-20 16:28:36', '2023-09-05 09:20:09'),
(49, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 2, 1, 1, NULL, '2023-08-20 16:28:36', '2023-09-07 15:36:19'),
(50, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 2, 9, 1, NULL, '2023-08-20 16:28:36', '2023-08-31 10:22:18'),
(51, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 1, 8, 1, NULL, '2023-08-20 16:41:01', '2023-09-05 09:20:09'),
(52, 'auth.order_accepted_title_part11auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part11auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 1, 8, 1, NULL, '2023-08-20 16:41:01', '2023-09-05 09:20:09'),
(53, 'auth.new_order_title_part11auth.new_order_title_part2mbmb', 'auth.new_order_title_part11auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 1, 9, 1, NULL, '2023-08-20 16:41:11', '2023-08-31 10:22:18'),
(54, 'auth.order_accepted_title_part11auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part11auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 1, 1, 1, NULL, '2023-08-20 16:41:41', '2023-09-07 15:36:19'),
(55, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 1, 8, 1, NULL, '2023-08-20 16:42:06', '2023-09-05 09:20:09'),
(56, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 1, 1, 1, NULL, '2023-08-20 16:42:06', '2023-09-07 15:36:19'),
(57, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 1, 9, 1, NULL, '2023-08-20 16:42:06', '2023-08-31 10:22:18'),
(58, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 2, 8, 1, NULL, '2023-08-20 16:43:07', '2023-09-05 09:20:09'),
(59, 'auth.order_accepted_title_part12auth.order_accepted_title_from_vendor_part2Test', 'auth.order_accepted_title_part12auth.order_accepted_title_from_vendor_part2Test', 'vendor_order_acceptance', 2, 8, 1, NULL, '2023-08-20 16:43:07', '2023-09-05 09:20:09'),
(60, 'auth.new_order_title_part12auth.new_order_title_part2mbmb', 'auth.new_order_title_part12auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 2, 9, 1, NULL, '2023-08-20 16:43:23', '2023-08-31 10:22:18'),
(61, 'auth.order_accepted_title_part12auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part12auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 2, 3, 0, NULL, '2023-08-20 16:43:39', '2023-08-20 16:43:39'),
(62, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 2, 8, 1, NULL, '2023-08-20 16:43:49', '2023-09-05 09:20:09'),
(63, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 2, 3, 0, NULL, '2023-08-20 16:43:49', '2023-08-20 16:43:49'),
(64, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 2, 9, 1, NULL, '2023-08-20 16:43:49', '2023-08-31 10:22:18'),
(65, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 3, 8, 1, NULL, '2023-08-21 13:52:55', '2023-09-05 09:20:09'),
(66, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 5, 8, 1, NULL, '2023-08-21 14:30:20', '2023-09-05 09:20:09'),
(67, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 4, 8, 1, NULL, '2023-08-21 14:33:23', '2023-09-05 09:20:09'),
(68, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 8, 8, 1, NULL, '2023-08-21 14:35:18', '2023-09-05 09:20:09'),
(69, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 7, 8, 1, NULL, '2023-08-21 14:35:52', '2023-09-05 09:20:09'),
(70, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 10, 8, 1, NULL, '2023-08-21 15:18:16', '2023-09-05 09:20:09'),
(71, 'auth.order_accepted_title_part110auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part110auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 10, 8, 1, NULL, '2023-08-21 15:18:16', '2023-09-05 09:20:09'),
(72, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 14, 8, 1, NULL, '2023-08-21 15:19:37', '2023-09-05 09:20:09'),
(73, 'auth.order_accepted_title_part114auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part114auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 14, 8, 1, NULL, '2023-08-21 15:19:37', '2023-09-05 09:20:09'),
(74, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 13, 8, 1, NULL, '2023-08-21 15:19:41', '2023-09-05 09:20:09'),
(75, 'auth.order_accepted_title_part113auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part113auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 13, 8, 1, NULL, '2023-08-21 15:19:41', '2023-09-05 09:20:09'),
(76, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 12, 8, 1, NULL, '2023-08-31 12:57:59', '2023-09-05 09:20:09'),
(77, 'auth.order_accepted_title_part112auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part112auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 12, 8, 1, NULL, '2023-08-31 12:57:59', '2023-09-05 09:20:09'),
(78, 'auth.new_order_title_part112auth.new_order_title_part2mbmb', 'auth.new_order_title_part112auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 12, 9, 1, NULL, '2023-08-31 12:59:14', '2023-08-31 14:19:01'),
(79, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 19, 8, 1, NULL, '2023-09-07 12:35:18', '2023-09-13 15:49:26'),
(80, 'auth.order_accepted_title_part119auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part119auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 19, 8, 1, NULL, '2023-09-07 12:35:18', '2023-09-13 15:49:26'),
(81, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 18, 8, 1, NULL, '2023-09-07 15:10:04', '2023-09-13 15:49:26'),
(82, 'auth.order_accepted_title_part118auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part118auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 18, 8, 1, NULL, '2023-09-07 15:10:04', '2023-09-13 15:49:26'),
(83, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 17, 8, 1, NULL, '2023-09-07 15:12:49', '2023-09-13 15:49:26'),
(84, 'auth.order_accepted_title_part117auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part117auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 17, 8, 1, NULL, '2023-09-07 15:12:49', '2023-09-13 15:49:26'),
(85, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 16, 8, 1, NULL, '2023-09-07 15:16:20', '2023-09-13 15:49:26'),
(86, 'auth.new_order_title_part119auth.new_order_title_part2mbmb', 'auth.new_order_title_part119auth.new_order_title_part2mbmb', 'delivery_order_acceptance', 19, 9, 1, NULL, '2023-09-08 17:58:38', '2023-09-08 21:04:24'),
(87, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 11, 8, 1, NULL, '2023-09-08 18:03:27', '2023-09-13 15:49:26'),
(88, 'auth.order_accepted_title_part111auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part111auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 11, 8, 1, NULL, '2023-09-08 18:03:27', '2023-09-13 15:49:26'),
(89, 'auth.order_accepted_title_part119auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part119auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 19, 1, 0, NULL, '2023-09-08 20:53:59', '2023-09-08 20:53:59'),
(90, 'auth.order_accepted_title_part112auth.order_accepted_title_part2mbmb', 'auth.order_accepted_title_part112auth.order_accepted_title_part2mbmb', 'delivery_order_acceptance', 12, 1, 0, NULL, '2023-09-08 20:54:08', '2023-09-08 20:54:08'),
(91, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 12, 8, 1, NULL, '2023-09-12 13:18:10', '2023-09-13 15:49:26'),
(92, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 12, 1, 0, NULL, '2023-09-12 13:18:10', '2023-09-12 13:18:10'),
(93, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 12, 9, 1, NULL, '2023-09-12 13:18:10', '2023-09-12 13:50:37'),
(94, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 19, 8, 1, NULL, '2023-09-12 13:22:33', '2023-09-13 15:49:26'),
(95, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 19, 1, 0, NULL, '2023-09-12 13:22:33', '2023-09-12 13:22:33'),
(96, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 20, 8, 1, NULL, '2023-09-17 14:13:26', '2023-09-17 14:19:12'),
(97, 'auth.order_accepted_title_part120auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part120auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 20, 8, 1, NULL, '2023-09-17 14:13:26', '2023-09-17 14:19:12'),
(98, 'auth.new_order_title_part120auth.new_order_title_part2Mohammed', 'auth.new_order_title_part120auth.new_order_title_part2Mohammed', 'delivery_order_acceptance', 20, 9, 0, NULL, '2023-09-17 14:14:08', '2023-09-17 14:14:08'),
(99, 'auth.order_accepted_title_part120auth.order_accepted_title_part2Mohammed', 'auth.order_accepted_title_part120auth.order_accepted_title_part2Mohammed', 'delivery_order_acceptance', 20, 1, 0, NULL, '2023-09-17 14:14:55', '2023-09-17 14:14:55'),
(100, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 20, 8, 1, NULL, '2023-09-17 14:15:11', '2023-09-17 14:19:12'),
(101, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 20, 1, 0, NULL, '2023-09-17 14:15:11', '2023-09-17 14:15:11'),
(102, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 20, 8, 1, NULL, '2023-09-17 14:16:21', '2023-09-17 14:19:12'),
(103, 'auth.order_status_5_title', 'auth.order_status_5_details', 'order_status', 20, 1, 0, NULL, '2023-09-17 14:16:21', '2023-09-17 14:16:21'),
(104, 'auth.balance_added_title', 'auth.balance_added_details', 'wallet_balance', 20, 9, 0, NULL, '2023-09-17 14:16:22', '2023-09-17 14:16:22'),
(105, 'auth.order_status__title', 'auth.order_status__details', 'order_status', 21, 8, 0, NULL, '2023-09-18 14:40:02', '2023-09-18 14:40:02'),
(106, 'auth.order_accepted_title_part121auth.order_accepted_title_from_vendor_part2Factory 1', 'auth.order_accepted_title_part121auth.order_accepted_title_from_vendor_part2Factory 1', 'vendor_order_acceptance', 21, 8, 0, NULL, '2023-09-18 14:40:02', '2023-09-18 14:40:02'),
(107, 'auth.new_order_title_part121auth.new_order_title_part2Mohammed', 'auth.new_order_title_part121auth.new_order_title_part2Mohammed', 'delivery_order_acceptance', 21, 9, 0, NULL, '2023-09-18 14:40:08', '2023-09-18 14:40:08'),
(108, 'auth.order_accepted_title_part121auth.order_accepted_title_part2Mohammed', 'auth.order_accepted_title_part121auth.order_accepted_title_part2Mohammed', 'delivery_order_acceptance', 21, 1, 0, NULL, '2023-09-18 15:01:42', '2023-09-18 15:01:42'),
(109, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 21, 8, 0, NULL, '2023-09-18 15:01:57', '2023-09-18 15:01:57'),
(110, 'auth.order_status_3_title', 'auth.order_status_3_details', 'order_status', 21, 1, 0, NULL, '2023-09-18 15:01:57', '2023-09-18 15:01:57'),
(111, 'auth.order_status_4_title', 'auth.order_status_4_details', 'order_status', 21, 8, 0, NULL, '2023-09-18 15:03:03', '2023-09-18 15:03:03'),
(112, 'auth.order_status_4_title', 'auth.order_status_4_details', 'order_status', 21, 1, 0, NULL, '2023-09-18 15:03:03', '2023-09-18 15:03:03'),
(113, 'تم تحويل رصيد لكم بقيمة 500', 'تم تحويل رصيد لكم بقيمة 500', 'wallet', 10, 10, 0, NULL, '2023-09-18 15:23:42', '2023-09-18 15:23:42'),
(114, 'تم تحويل رصيد لكم بقيمة 500', 'تم تحويل رصيد لكم بقيمة 500', 'wallet', 10, 10, 0, NULL, '2023-09-18 15:23:59', '2023-09-18 15:23:59'),
(115, 'تم تحويل رصيد لكم بقيمة 500', 'تم تحويل رصيد لكم بقيمة 500', 'wallet', 10, 10, 0, NULL, '2023-09-18 15:24:25', '2023-09-18 15:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `text_ar` text CHARACTER SET utf8 NOT NULL,
  `text_en` text CHARACTER SET utf8 NOT NULL,
  `text_urdu` text CHARACTER SET utf8,
  `discount_percentage` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `product_id`, `text_ar`, `text_en`, `text_urdu`, `discount_percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'تجربة تجربة تجربة تجربة تجربة تجربة تجربة تجربة ', 'Lorem text Lorem text Lorem text Lorem text Lorem text Lorem text ', 'تجربة تجربة تجربة تجربة تجربة تجربة ', 20, '2023-07-09 14:33:11', '2023-07-09 14:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_no` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_total` double(8,2) DEFAULT NULL,
  `tax` float NOT NULL,
  `delivery_cost` float NOT NULL DEFAULT '0',
  `final_total` double NOT NULL,
  `payed_amount` double NOT NULL,
  `rest_amount` double NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `area_id` binary(1) NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer_receipt_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_receipt_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `cancel_reason` text COLLATE utf8mb4_unicode_ci,
  `comments` longtext COLLATE utf8mb4_unicode_ci,
  `show` tinyint(1) NOT NULL DEFAULT '0',
  `recieve_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ref_no`, `user_id`, `sub_total`, `tax`, `delivery_cost`, `final_total`, `payed_amount`, `rest_amount`, `address`, `city_id`, `area_id`, `district`, `street`, `latitude`, `longitude`, `vendor_id`, `branch_id`, `payment_method`, `payment_id`, `payment_status`, `transfer_receipt_1`, `transfer_receipt_2`, `notes`, `status_id`, `read`, `cancel_reason`, `comments`, `show`, `recieve_date`, `created_at`, `updated_at`) VALUES
(1, 10000, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'البيت', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 3, 1, NULL, NULL, 0, '2023-08-20', '2023-08-20 16:39:55', '2023-08-22 13:18:07'),
(2, 12698, 8, 15000.00, 2325, 500, 17825, 17825, 0, 'البيت', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '3', 3, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 2, 1, NULL, NULL, 0, '2023-08-20', '2023-08-20 16:40:22', '2023-08-22 13:18:07'),
(3, 12045, 8, 5000.00, 825, 500, 6325, 6325, 0, 'البيت', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 4, 1, 'لا توجد كمية كافية للطلب', 'Any', 0, '2023-08-21', '2023-08-21 12:49:50', '2023-08-22 13:18:07'),
(4, 15655, 8, 5000.00, 825, 500, 6325, 6325, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 4, 1, 'لا توجد شاحنات متاحة في تاريخ الطلب', NULL, 0, '2023-08-21', '2023-08-21 13:53:26', '2023-08-22 13:18:07'),
(5, 10219, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 4, 1, 'لا توجد شاحنات متاحة في تاريخ الطلب', 'لا يوجد دفع', 0, '2023-08-21', '2023-08-21 13:53:34', '2023-08-22 13:18:07'),
(6, 18014, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:34:52', '2023-08-22 13:18:07'),
(7, 16018, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 4, 1, 'لا توجد كمية كافية للطلب', NULL, 0, '2023-08-21', '2023-08-21 14:34:55', '2023-08-22 13:18:07'),
(8, 16765, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 4, 1, 'لا توجد كمية كافية للطلب', NULL, 0, '2023-08-21', '2023-08-21 14:34:59', '2023-08-22 13:18:07'),
(9, 14644, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:37:21', '2023-08-22 13:18:07'),
(10, 12652, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 2, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:37:24', '2023-08-22 13:18:07'),
(11, 13131, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 2, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:37:27', '2023-09-08 18:03:27'),
(12, 16827, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 3, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:37:31', '2023-09-12 13:18:10'),
(13, 13657, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 2, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:37:35', '2023-08-22 13:18:07'),
(14, 16472, 8, 10000.00, 1575, 500, 12075, 12075, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 2, 1, NULL, NULL, 0, '2023-08-21', '2023-08-21 14:37:50', '2023-08-22 13:18:07'),
(15, 12298, 8, 15000.00, 2325, 500, 17825, 17825, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '3', 3, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 1, 0, NULL, NULL, 0, '2023-08-30', '2023-08-30 17:12:20', '2023-08-30 17:12:20'),
(16, 12022, 8, 15000.00, 2325, 500, 17825, 17825, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'wallet', NULL, 'wallet', NULL, NULL, NULL, 4, 0, 'لا توجد شاحنات متاحة في تاريخ الطلب', NULL, 0, '2023-09-05', '2023-09-05 09:27:44', '2023-09-07 15:16:20'),
(17, 14156, 8, 15000.00, 2325, 500, 17825, 17825, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'wallet', NULL, 'wallet', NULL, NULL, NULL, 2, 0, NULL, NULL, 0, '2023-09-05', '2023-09-05 09:30:42', '2023-09-07 15:12:49'),
(18, 16507, 8, 15000.00, 2325, 500, 17825, 0, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'bank', NULL, 'pending', 'orders/5Tvu9DvnVkly2IIYyf8M9Ni0bC9RNs40x6f8rBof.jpg', NULL, NULL, 2, 0, NULL, NULL, 0, '2023-09-05', '2023-09-05 12:04:02', '2023-09-07 15:10:04'),
(19, 13509, 8, 15000.00, 2325, 500, 17825, 0, 0, 'الرياض, الخرج, تاريخ التسجيل', 1, 0x31, 'any', 'any', '31.3105792', '34.2520647', '2', 1, 'bank', NULL, 'pending', 'orders/P3qFYbM01nQnBmXCaINKcB95TrT0d5StQ6iyfpkd.jpg', NULL, NULL, 2, 0, NULL, NULL, 0, '2023-09-05', '2023-09-05 12:23:56', '2023-09-07 12:35:18'),
(20, 17144, 8, 7200.00, 1155, 500, 8855, 8855, 0, 'الرياض, الخرج, Gush Katif', 1, 0x31, 'hjf', 'st', '31.311443', '34.254064', '2', 1, 'visa', NULL, 'totally_paid', NULL, NULL, NULL, 3, 0, NULL, NULL, 0, '2023-09-17', '2023-09-17 14:03:24', '2023-09-17 14:16:22'),
(21, 11368, 8, 6000.00, 975, 500, 7475, 7475, 0, 'الرياض, الخرج, Gush Katif', 1, 0x31, 'hjf', 'st', '31.311443', '34.254064', '2', 1, 'wallet', NULL, 'wallet', NULL, NULL, NULL, 2, 0, NULL, NULL, 0, '2023-09-18', '2023-09-18 14:39:45', '2023-09-18 14:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel_reasons`
--

CREATE TABLE `order_cancel_reasons` (
  `id` int(11) NOT NULL,
  `text_ar` text CHARACTER SET utf8 NOT NULL,
  `text_en` text CHARACTER SET utf8 NOT NULL,
  `text_urdu` text CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_cancel_reasons`
--

INSERT INTO `order_cancel_reasons` (`id`, `text_ar`, `text_en`, `text_urdu`, `created_at`, `updated_at`) VALUES
(1, 'لا توجد كمية كافية للطلب', 'There are not enough quantity for order', 'There are not enough quantity for order', NULL, NULL),
(2, 'لا توجد شاحنات متاحة في تاريخ الطلب', 'There are no available trucks', 'There are no available trucks', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_no` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double NOT NULL,
  `discount` double DEFAULT '0',
  `quantity` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `delivery_cost` float DEFAULT NULL,
  `status_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `paid_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `ref_no`, `order_id`, `product_id`, `vendor_id`, `delivery_id`, `price`, `discount`, `quantity`, `total`, `delivery_cost`, `status_id`, `paid_status`, `created_at`, `updated_at`) VALUES
(1, 10000, 1, 1, 2, 9, 50, NULL, 200, 10000.00, 500, 5, 0, '2023-08-20 16:39:55', '2023-08-20 16:42:06'),
(2, 17710, 2, 2, 3, 9, 50, NULL, 300, 15000.00, 500, 2, 0, '2023-08-20 16:40:22', '2023-08-20 16:43:49'),
(3, 15082, 3, 1, 2, NULL, 50, NULL, 100, 5000.00, 500, 1, 0, '2023-08-21 12:49:50', '2023-08-21 12:49:50'),
(4, 13562, 4, 1, 2, NULL, 50, NULL, 100, 5000.00, 500, 1, 0, '2023-08-21 13:53:26', '2023-08-21 13:53:26'),
(5, 17316, 5, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 13:53:34', '2023-08-21 13:53:34'),
(6, 11532, 6, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:34:52', '2023-08-21 14:34:52'),
(7, 18215, 7, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:34:55', '2023-08-21 14:34:55'),
(8, 14534, 8, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:34:59', '2023-08-21 14:34:59'),
(9, 15521, 9, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:37:21', '2023-08-21 14:37:21'),
(10, 18300, 10, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:37:24', '2023-08-21 14:37:24'),
(11, 14535, 11, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:37:27', '2023-08-21 14:37:27'),
(12, 11041, 12, 1, 2, 9, 50, NULL, 200, 10000.00, 500, 5, 0, '2023-08-21 14:37:31', '2023-09-12 13:18:10'),
(13, 18616, 13, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:37:35', '2023-08-21 14:37:35'),
(14, 17033, 14, 1, 2, NULL, 50, NULL, 200, 10000.00, 500, 1, 0, '2023-08-21 14:37:50', '2023-08-21 14:37:50'),
(15, 17099, 15, 2, 3, NULL, 50, NULL, 300, 15000.00, 500, 1, 0, '2023-08-30 17:12:20', '2023-08-30 17:12:20'),
(16, 11482, 16, 1, 2, NULL, 50, NULL, 300, 15000.00, 500, 1, 0, '2023-09-05 09:27:44', '2023-09-05 09:27:44'),
(17, 14531, 17, 1, 2, NULL, 50, NULL, 300, 15000.00, 500, 1, 0, '2023-09-05 09:30:42', '2023-09-05 09:30:42'),
(18, 19998, 18, 1, 2, NULL, 50, NULL, 300, 15000.00, 500, 1, 0, '2023-09-05 12:04:02', '2023-09-05 12:04:02'),
(19, 16639, 19, 1, 2, 9, 50, NULL, 300, 15000.00, 500, 3, 0, '2023-09-05 12:23:56', '2023-09-12 13:22:33'),
(20, 18175, 20, 1, 2, 9, 50, NULL, 144, 7200.00, 500, 5, 0, '2023-09-17 14:03:24', '2023-09-17 14:16:21'),
(21, 18249, 21, 1, 2, 9, 50, NULL, 120, 6000.00, 500, 4, 0, '2023-09-18 14:39:45', '2023-09-18 15:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_items_statuses`
--

CREATE TABLE `order_items_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_ar` varchar(191) CHARACTER SET utf8 NOT NULL,
  `status_en` varchar(191) CHARACTER SET utf8 NOT NULL,
  `status_urdu` varchar(191) CHARACTER SET utf8 DEFAULT NULL,
  `description_ar` text CHARACTER SET utf8 NOT NULL,
  `description_en` text CHARACTER SET utf8 NOT NULL,
  `description_urdu` text CHARACTER SET utf8,
  `otp_code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items_statuses`
--

INSERT INTO `order_items_statuses` (`id`, `status_ar`, `status_en`, `status_urdu`, `description_ar`, `description_en`, `description_urdu`, `otp_code`, `created_at`, `updated_at`) VALUES
(1, 'جديد', 'New', NULL, 'جديد', 'New', NULL, NULL, '2023-07-10 09:22:33', '2023-07-10 09:23:19'),
(2, 'تم قبول الطلب', 'Order accepted', NULL, 'استلمنا طلبك وجاري التحضير', 'Order accepted and is being prepared', NULL, NULL, '2023-07-10 09:14:38', '2023-07-10 09:41:58'),
(3, 'تحميل الطلب', 'Loading the order', NULL, 'تم تحميل الطلب إلى الشاحنات', 'The order has been loaded onto trucks', NULL, NULL, '2023-07-10 09:16:27', '2023-07-10 09:23:24'),
(4, 'الطلب في الطريق', 'The request is on the way', NULL, 'يجب على العميل تسديد باقي المبلغ لتسليم الطلب', 'The customer must pay the rest of the amount to deliver the order', NULL, NULL, '2023-07-10 09:17:33', '2023-07-10 09:23:27'),
(5, 'تم تسليم الطلب', 'The request has been delivered', NULL, 'تم تسليم الطلب', 'The request has been delivered', NULL, NULL, '2023-07-10 09:18:20', '2023-07-10 09:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_items_status_times`
--

CREATE TABLE `order_items_status_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items_status_times`
--

INSERT INTO `order_items_status_times` (`id`, `order_item_id`, `status_id`, `time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-08-20 13:41:41', '2023-08-20 16:41:41', '2023-08-20 16:41:41'),
(2, 1, 5, '2023-08-20 13:42:06', '2023-08-20 16:42:06', '2023-08-20 16:42:06'),
(3, 2, 2, '2023-08-20 13:43:39', '2023-08-20 16:43:39', '2023-08-20 16:43:39'),
(4, 2, 5, '2023-08-20 13:43:49', '2023-08-20 16:43:49', '2023-08-20 16:43:49'),
(5, 19, 2, '2023-09-08 17:53:59', '2023-09-08 20:53:59', '2023-09-08 20:53:59'),
(6, 12, 2, '2023-09-08 17:54:08', '2023-09-08 20:54:08', '2023-09-08 20:54:08'),
(7, 12, 5, '2023-09-12 10:18:10', '2023-09-12 13:18:10', '2023-09-12 13:18:10'),
(8, 19, 3, '2023-09-12 10:22:33', '2023-09-12 13:22:33', '2023-09-12 13:22:33'),
(9, 20, 2, '2023-09-17 11:14:55', '2023-09-17 14:14:55', '2023-09-17 14:14:55'),
(10, 20, 3, '2023-09-17 11:15:11', '2023-09-17 14:15:11', '2023-09-17 14:15:11'),
(11, 20, 5, '2023-09-17 11:16:21', '2023-09-17 14:16:21', '2023-09-17 14:16:21'),
(12, 21, 2, '2023-09-18 12:01:42', '2023-09-18 15:01:42', '2023-09-18 15:01:42'),
(13, 21, 3, '2023-09-18 12:01:57', '2023-09-18 15:01:57', '2023-09-18 15:01:57'),
(14, 21, 4, '2023-09-18 12:03:03', '2023-09-18 15:03:03', '2023-09-18 15:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_urdu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `status_ar`, `status_en`, `status_urdu`, `created_at`, `updated_at`) VALUES
(1, 'جديدة', 'Recent', NULL, '2022-05-07 13:08:01', '2022-05-07 13:08:01'),
(2, 'حالية', 'New', NULL, '2022-05-07 13:08:01', '2022-05-07 13:08:01'),
(3, 'مكتملة', 'Completed', NULL, '2022-05-11 14:18:00', '2022-05-11 14:18:00'),
(4, 'تم الإلغاء', 'Cancelled', NULL, '2022-05-12 14:52:03', '2022-05-12 14:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `months` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_urdu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `minimum_order` int(11) DEFAULT NULL,
  `preparing_time` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_ar`, `name_en`, `name_urdu`, `description_ar`, `description_en`, `unit_id`, `price`, `discount`, `vendor_id`, `minimum_order`, `preparing_time`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'تجربة', 'Test', NULL, '<p>kjjkjkkj</p>', '<p>kjkjkjkj</p>', 2, '50', NULL, 2, 100, 48, 'products/1/hC0hAhECu4l0jM3ymXumtytCr9Cl8BWFX9edb3yN.jpg', 2, '2023-03-08 09:54:21', '2023-06-07 12:00:18'),
(2, 'تجربة 2', 'Test 2', NULL, '<p>تجربة 2 تجربة 2 تجربة 2</p>', '<p>Test 2 Test 2 Test 2</p>', 1, '50', NULL, 3, 100, 24, 'products/2/AViJ7i4sDvMtjF2TPh7Qlmm9sWHztVmyYRidY0AR.png', 2, '2023-04-09 22:12:55', '2023-04-09 22:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_car_loads`
--

CREATE TABLE `product_car_loads` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_car_loads`
--

INSERT INTO `product_car_loads` (`id`, `product_id`, `car_id`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 500, 2000, '2023-03-08 09:54:21', '2023-08-20 12:45:10'),
(2, 1, 2, 100, 499, '2023-03-08 09:54:21', '2023-03-29 19:19:48'),
(4, 2, 2, 100, 499, '2023-04-09 22:12:55', '2023-04-09 22:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_urdu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `name_ar`, `name_en`, `name_urdu`, `product_id`, `created_at`, `updated_at`) VALUES
(26, 'ميزة 2', 'Feature 2', 'Feat 2', 1, '2023-06-07 12:00:18', '2023-06-07 12:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'products/Jo6comCnSCGlGMwbsWBLqsTgPWuYlFQV8HDcgAiw.jpg', '2023-03-08 09:54:21', '2023-03-08 09:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `system_status` enum('open','close') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `system_message` longtext COLLATE utf8mb4_unicode_ci,
  `theme_setting` longtext COLLATE utf8mb4_unicode_ci,
  `tax` float DEFAULT NULL,
  `user_app_about_ar` longtext COLLATE utf8mb4_unicode_ci,
  `branch_app_about_ar` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_app_about_ar` longtext COLLATE utf8mb4_unicode_ci,
  `user_app_terms_ar` longtext COLLATE utf8mb4_unicode_ci,
  `branch_app_terms_ar` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_app_terms_ar` longtext COLLATE utf8mb4_unicode_ci,
  `user_app_about_en` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_app_about_en` longtext COLLATE utf8mb4_unicode_ci,
  `branch_app_about_en` longtext COLLATE utf8mb4_unicode_ci,
  `user_app_terms_en` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_app_terms_en` longtext COLLATE utf8mb4_unicode_ci,
  `branch_app_terms_en` longtext COLLATE utf8mb4_unicode_ci,
  `user_app_about_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_app_about_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `branch_app_about_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `user_app_terms_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `delivery_app_terms_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `branch_app_terms_urdu` longtext COLLATE utf8mb4_unicode_ci,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sitename_ar`, `sitename_en`, `email`, `logo`, `icon`, `address`, `latitude`, `longitude`, `system_status`, `system_message`, `theme_setting`, `tax`, `user_app_about_ar`, `branch_app_about_ar`, `delivery_app_about_ar`, `user_app_terms_ar`, `branch_app_terms_ar`, `delivery_app_terms_ar`, `user_app_about_en`, `delivery_app_about_en`, `branch_app_about_en`, `user_app_terms_en`, `delivery_app_terms_en`, `branch_app_terms_en`, `user_app_about_urdu`, `delivery_app_about_urdu`, `branch_app_about_urdu`, `user_app_terms_urdu`, `delivery_app_terms_urdu`, `branch_app_terms_urdu`, `bank_name`, `bank_account_name`, `bank_account_number`, `iban`, `created_at`, `updated_at`) VALUES
(1, 'مواد', 'Mawad', 'support@mawad.com', 'setting/ZxlAilwWNsivKzwgt07W50Ux5mx91ytJ6YKumsgq.jpg', 'setting/3xuvcLzia5BfJrGuZS8xfQrTrWMOmMmZTDV9UK66.jpg', 'طريق الامام سعود بن فيصل، حطين، الرياض 11564، المملكة العربية السعودية', 24.77794795, 46.58858128, 'open', NULL, '{\\\"brand_color\\\":\\\"navbar-dark\\\",\\\"sidebar_class\\\":\\\"sidebar-dark-navy\\\",\\\"main_header\\\":\\\"\\\",\\\"navbar\\\":\\\"navbar-dark navbar-dark\\\"}', 15, 'عن التطبيق', 'عن التطبيق', 'عن التطبيق', 'سياسة الاستخدام', 'سياسة الاستخدام', 'سياسة الاستخدام', 'About App', 'About App', 'About App', 'App terms', 'App terms', 'App terms', 'About App', 'About App', 'About App', 'App terms', 'App terms', 'App terms', 'الراجحي', 'تطبيق مواد', '12356454', '12312132132132', '2022-04-17 17:42:13', '2023-08-14 11:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `message`, `read`, `user_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest testtest test', 1, 8, NULL, '2023-08-13 14:03:17', '2023-08-14 07:19:23'),
(2, 'test', 'test test', 1, 8, NULL, '2023-08-14 11:32:10', '2023-08-22 15:17:42'),
(3, 'حذف الحساب', 'تقييم الحساب تقاصيل', 1, 8, NULL, '2023-08-14 11:58:14', '2023-08-22 15:17:42'),
(4, 'السلام عليكم ورحمه الله وبركاته', 'موضوع عن كيفية', 1, 8, NULL, '2023-08-14 12:00:14', '2023-08-22 15:17:42'),
(5, 'توصيل', 'طلب توظيف', 0, 9, NULL, '2023-08-31 14:01:35', '2023-08-31 14:01:35'),
(6, 'السلام عليكم', 'موضع ترحيب', 0, 9, NULL, '2023-09-17 14:32:48', '2023-09-17 14:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_urdu` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name_ar`, `name_en`, `name_urdu`, `created_at`, `updated_at`) VALUES
(1, 'قطعة', 'piece', NULL, '2023-03-02 11:09:29', '2023-03-02 11:09:29'),
(2, 'متر', 'Meter', NULL, '2023-03-02 11:10:00', '2023-03-02 11:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_trails` tinyint(1) NOT NULL DEFAULT '0',
  `otp_verify_trails` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  `max_load` int(11) DEFAULT NULL,
  `plate_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_form_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport_license_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_front_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_back_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `wallet_balance` float DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `otp_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_verify_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ar',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `otp_code`, `otp_trails`, `otp_verify_trails`, `password`, `fcm_token`, `device_type`, `national_id`, `photo_profile`, `car_id`, `max_load`, `plate_number`, `car_color`, `nid_image`, `car_form_image`, `transport_license_image`, `car_front_image`, `car_back_image`, `licence_image`, `type`, `vendor_id`, `city_id`, `area_id`, `address`, `latitude`, `longitude`, `status`, `approved`, `wallet_balance`, `payment_id`, `remember_token`, `read`, `otp_date`, `otp_verify_date`, `lang`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'فرع Factory 1', 'sub_vendor@vendor.com', NULL, '02131561', '55009', 1, 0, '$2y$10$ytBp7aUDmHVaVdc.U44lAuvygGolLGcJW7iHOQNi37AYCYi5inHXi', 'empty', 'android', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'branch', 2, 1, NULL, 'الرياض, شارع الكورنيش', '24.73653531199', '46.7050447898368', 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-04-27 12:09:03', '2023-09-07 15:44:20'),
(3, 'فرع مصنع Test', 'branch1@test.com', NULL, '02144561', NULL, 0, 0, '$2y$10$lcbBggfEabckCDndjZTZPudF..6kvHfCgmIuaRXmkYZFBVeOtOUfu', 'ecK0peukQAWaCTUv1k0NGe:APA91bEo5mfq9Vdrj5-PA5KPabn0cEhHQh0-SyVq-rU4fPR_NYwhWFfxrVdKUMEadJGkmVH-a9LVvhlkfkaEdRmJuFT_-5cCK4A96Wx6-p-PZWyhJPxkBfftCDYbqLbJNKUGjjjXrXAr', 'android', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'branch', 3, 1, 1, 'الرياض, الجديد', '24.73653531199', '46.7050447898368', 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-05-01 14:05:09', '2023-08-20 16:42:36'),
(8, 'mahamedbadry2003@gmail.com', 'mahamedbadry2003@gmail.com', NULL, '0512345678', '18139', 14, 0, '$2y$10$5SxK2oEUUkrxMLq/3gkXoOTEppZFh5HAdwjEdq930ms0.OaUeE87y', 'empty', 'android', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, 1, 1, NULL, NULL, NULL, 1, 0, 999500, '8ac7a4a289e299df0189ef3374836b7f', NULL, 0, '2023-06-25', NULL, 'ar', 0, '2023-05-01 14:50:09', '2023-09-18 15:24:25'),
(9, 'Mohammed', '', NULL, '0592412201', '69494', 0, 0, '$2y$10$RQVtS0qqxCattue/4xVgl.DHYORzVX9nQoCyd4qKKWSbS0MHIzSbO', 'empty', 'android', '123456468798', 'users/1Zgi9Tz5RtJyFofUxigQufu01vrTS0j8fjnpud3f.jpg', 1, 500, '1231654', 'white', 'users/xEyx9xLQ4r92Bymog1XPXB3sTISC7ZJ4xjKssFYz.png', 'users/guPWLk3nDt4BGHmPveaelnnFZdycCrRuqrd8m2jT.png', 'users/9Pq2T8pz9Dpe6brfUonvw9i48aKLlsQ94QDWN50F.png', 'users/Cxjiqq26yvPgdjKoOQ0ATYWwXVf8vboaVe45uNDr.png', 'users/XeHjHMrWDgg7oWdvj4CnN5rXjUGVV4IjjRD3Ztob.png', 'users/6bHvv8mVgvlBW2RnmAJ7YdS0ja7Kx7z59A7uaGdq.png', 'delivery', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 2000, NULL, NULL, 1, NULL, NULL, 'ar', 0, '2023-05-30 07:23:24', '2023-09-17 14:16:22'),
(10, 'mbmb', 'b@yahoo4.com', NULL, '0592412205', '68417', 0, 0, '$2y$10$SwvL0lE8ID3fZTEKbcky7ePjOsPnA.cyqN1nISIQh9kCEacRlB8du', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1500, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-06-15 17:56:19', '2023-09-18 15:24:25'),
(11, 'mbmb', 'b@yahoo.com', NULL, '0592412202', '25967', 0, 0, '$2y$10$e3G17bojLxkD.s4zhO9M.e6QfQ60IUhhaK5tEapemp9RbFaKLnil6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-06-24 14:53:51', '2023-06-24 14:53:51'),
(12, 'mohammed', 'd.mohammed2026@gmail.com', NULL, '0592274690', '45265', 0, 0, '$2y$10$Y7077B/oobHMbuh3NA4Emeb20dlENvGORQslN.kQolDkY.CSaFvb2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-06-24 15:10:04', '2023-06-24 15:10:05'),
(13, 'mobile', 'd.mohammed202@gmail.com', NULL, '0592274691', '98396', 0, 0, '$2y$10$siodDKfLwCJ1M5aIMibX/uwqGyVP27rN4MonedJZ1LFpl1p3Y1C5O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-06-24 15:19:25', '2023-06-24 15:19:25'),
(14, 'not', 'd.mohammed20@gmail.com', NULL, '0592274693', '65597', 0, 0, '$2y$10$bWvIkL9gWb.G8AsZ7fLMIum5xOdm2mVNbSZYUHOx85lQjrvsTJPS2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-06-24 15:20:25', '2023-06-24 15:20:25'),
(15, 'mbmb', 'b2@yahoo.com', NULL, '0592412212', '69973', 0, 0, '$2y$10$i19lOL9JsmaTNDhPMHgdYOqP5FqAkNJW3Tsw5Qas67Z5z10X1A4Cy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-07-02 11:53:46', '2023-07-02 11:54:11'),
(16, 'mobile', 'd.mohammed2h0@gmail.com', NULL, '0592274673', '72171', 0, 0, '$2y$10$Jr4otsir2RnSNYRadORWSuUUR7C/qRMqLP/6V/6JXCFXJJfZww.5S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-07-02 12:07:16', '2023-07-02 12:07:16'),
(17, 'xjjxjc', 'd.mohammed202g6@gmail.com', NULL, '0592274617', '49011', 0, 0, '$2y$10$/03odv197IV.6gIIqW8WkO56XIO/KoaXxFdA37lKUWmS5QWFtAZHa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-07-02 12:09:35', '2023-07-02 12:09:35'),
(18, 'bcJgxkhd', 'd.mohammed2055@gmail.comj', NULL, '0599440528', '61644', 0, 0, '$2y$10$s/ndJqm6C8quCMC2JxJJXuzUOHa.wa8kyPUqQ0uNRXAvG5vM2vCk2', 'empty', 'android', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-07-02 12:11:45', '2023-07-02 12:14:55'),
(19, 'kxhkgx', 'd.mohammed20w@gmail.com', NULL, '0599440551', '92678', 0, 0, '$2y$10$wh6k41AlX.e4vFL0tHC1TOET1Ar2eaUQ1ceQZJVM3ijPoyNVkmeyG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-07-02 12:15:27', '2023-07-02 12:15:50'),
(20, 'bcJgxkhd', 'd.mohammed2022@gmail.comm', NULL, '0599440552', '13079', 0, 0, '$2y$10$hsUDuLeImjkmXV6AtZUoRe8MQNyQ7ULbfo4Re2UqqN3HKhQvcV8zm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-07-02 12:17:11', '2023-07-02 12:17:29'),
(21, 'mbmb', 'bs@yahoo.com', NULL, '0592412203', '15110', 0, 0, '$2y$10$I/j/Bz9nEtrTBhrf05DMzuHLTpA7A98zqzBawvzI670m4uGujSHwm', 'empty', 'android', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 1, '2023-08-13 20:18:07', '2023-08-13 20:21:27'),
(22, 'mbmb', 'bss@yahoo.com', NULL, '0592412204', '13373', 0, 0, '$2y$10$88sZ8B3TvuWbWd5ieJUpv.qRl/BnJrjrLqCg0k2w1jQ.U76i6Dumm', 'empty', 'android', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-08-13 20:23:43', '2023-08-13 20:23:56'),
(23, 'mbmb', 'bsss@yahoo.com', NULL, '0592412206', '38736', 0, 0, '$2y$10$moU55PqeOVjby0tZ7z34Lu9GA.3SkrY/qEZZ1WbtSztO4ZhvybLgS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 0, NULL, NULL, 'ar', 1, '2023-08-13 20:24:27', '2023-08-13 20:36:10'),
(26, 'mohammedamra', NULL, NULL, '0592274681', NULL, 0, 0, '$2y$10$FjQMvj/u5NjUO8NXbCussuIuGjxq.1SbvXdPQwF2JywSr9f905h9.', NULL, NULL, '12345678914652', 'users/MUHG38QxlkeoVzbkSCWLihIWR5ZtF9iW3BRVKLVg.png', 1, 500, '1231654', 'white', 'users/r9ON9RggtX1Jahk1NRO90NWyiXtxgsGQeOkz56yV.png', 'users/fbaFURw66g2hkYg76KaY781bo4MNYd8V57pKvKXQ.png', 'users/rzBipPPa8HkxdQh9QGvd7zqDXs8m1sP9zyaqtHtB.png', 'users/BhQa6LQuKizin2AvoKtkDggD8ZTpgmonwevMD7Ov.png', 'users/FL2Zwz0t9lOdw0BTehnc52r1ffDgrxig2apeSwwr.png', 'users/7iZOPuyGQ5ifCXFzKYcNIwfnYfxy7RSDmkhwfsgb.png', 'delivery', NULL, NULL, NULL, 'Addres details2', '31.131312', '30.111113', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:50:18', '2023-09-09 15:50:18'),
(27, 'mohammedamra', NULL, NULL, '0592274682', NULL, 0, 0, '$2y$10$TfGW9mEUCWKjbhHicaCJVeis2jWKIJyUp1SHNYj1vull/sf5.m3/6', NULL, NULL, '12345678914652', 'users/eHUNjRnRKkU6R5yuvLuyOg9lZdlXq9vWlCjAfvTH.png', 1, 500, '1231654', 'white', 'users/j7QXzLVVaGeWyEeUUroaWSQogHlqVT2pXBTujdf1.png', 'users/7amSHFrE1yfAqhl9GcZcwfDs9zPzTpqxoNhupaLn.png', 'users/nkOts5Kgx5A5AM9rhrG5TipYcFOQaV1fjsTInJdS.png', 'users/nrjQ9AI69EgRHcvGuC0VQWg6rrgVurvTRqU9IyHW.png', 'users/MUObMjq9pg4dWtpG7OWmSLhWfKROPJfddPixfwqd.png', 'users/T8OwlhiuAGATKVLByrNnJFPXwMEQ1A3cVwisEOub.png', 'delivery', NULL, NULL, NULL, 'Addres details2', '31.1313122', '30.1111132', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:50:41', '2023-09-09 15:50:41'),
(28, 'mohammedamra', NULL, NULL, '0592274683', NULL, 0, 0, '$2y$10$3HtoFWdJr1CCJVKNDNzupeEVMgH/ZJO3aktOrG9VjXtJk1d0/oWoe', NULL, NULL, '12345678914652', 'users/efm8TMHfDlKRBoaIpdiZkJIwObbab5AQpOzm67q0.png', 1, 500, '1231654', 'white', 'users/IcIBxvAzNc0wzjKOlMZ9jHoVEjRL0evGgNxWb7NJ.png', 'users/vJkH2Fkz6nymERMUKWQDteJtbDm0IRqfSFHoYIPk.png', 'users/7kT103ou55xOA06nHpbgILgl8yGv1AYmYwRpVXXh.png', 'users/8lKWvyD1N0N7x4VSa1SGtB3rB9pyPiIWlJxJx3GJ.png', 'users/fJlKKpRAJVCCjJJBgNG3unnvmkqPS2puYo1pIdfI.png', 'users/l4p6Wn9QliHGboTCcZWCFcakxAIOcGvRguzWJ0pq.png', 'delivery', NULL, NULL, NULL, 'Addres details22', '31.13131221', '30.11111322', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:51:00', '2023-09-09 15:51:00'),
(29, 'mohammedamra', NULL, NULL, '0592274684', NULL, 0, 0, '$2y$10$bq4S287LNOIuyc5xb2mUw.aXccayFs2YZEuExqGXvTf/Vd9um5EPK', NULL, NULL, '12345678914652', 'users/Gkx1AFU6zC04JPKeSFl2eG8xh0KAcudttUA9PGPg.png', 1, 500, '1231654', 'white', 'users/k8QmScEylVIkBE94xVlA945FW1UDtzIGMeNNi4hN.png', 'users/ZjYXK8M70pgPBGbJg7s7tx5rkdNSyJynGhohdK1F.png', 'users/umBkx1FuRvWClFkR5cYHc9hw3hG9GV5gqcpXzQfT.png', 'users/dnyQtWy8NjHNpDKUeRilwDVBt3BtZt87iqQy905B.png', 'users/e25ElryUwP6hj3kDb47pRtk1vbZF2Vvz1tDkHzBM.png', 'users/seGKIiTgPpn5DWSerqRvbuPP9YNY7D9q6ddR6bZh.png', 'delivery', NULL, NULL, NULL, 'Addres details21', '31.131312216', '30.111113225', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:52:14', '2023-09-09 15:52:14'),
(30, 'mohammedamra', NULL, NULL, '0592274685', NULL, 0, 0, '$2y$10$f.KcoyPJm1pxTA.1Qkt65eVNjRiT4EOLaGIojZiWkxmGRsTkOxNn2', NULL, NULL, '12345678914652', 'users/PPSzG1cGNwtTw9vVovN4tnn2rcQ7WsMxdtKvheRj.png', 1, 500, '1231654', 'white', 'users/TC6C6t7gSt8U4f4Dtefg8NK2psJxiYdWeflzfJwY.png', 'users/cgc06cTqgNYfHoHNGzXGDaMvhMERCNdtVY2LWWhx.png', 'users/E0tPgNc4w8cAkSK72SBqwNCYoLKyGSUJR28Edgen.png', 'users/xqSWJ6RrqxNiZ3rQ5tJtESJWJHYoPb8zeZQKMB28.png', 'users/QAlYUNNueVZI1DHCTZcSUTnPvSRoYFX5s9kfT1lb.png', 'users/P9jQdfEJgjbuGhwDWs2CnDGqdL3WMUR14aGa66tf.png', 'delivery', NULL, NULL, NULL, 'Addres details21', '31.1313120', '30.1111132250', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:55:47', '2023-09-09 15:55:47'),
(31, 'mohammedamra', NULL, NULL, '0592274686', NULL, 0, 0, '$2y$10$xnyFgWrrC4SDyWmfG0vz7.ztGAUkRbSRJ4VLpHgFZ1kMEs9Fu4fG.', NULL, NULL, '12345678914652', 'users/5dUwRM3fWYYT6EcPkh34cYD4Oe83GjSQd8wsWjgp.png', 1, 500, '1231654', 'white', 'users/tI1vfhub5kloeBU7BYYWEpebTfS6WtUlfZmwjZyN.png', 'users/g4PAkg8VGGhnO1Wb3AwhDO7D1aeQkDtKAnA3TW4T.png', 'users/nrHTtAAqPN1d5tgx0U4z27KQIzW2B73lVfpJqPam.png', 'users/cJmcXYgzUHuxYMW1i9jPBRpyLd1sFiyqn8ZuzIdl.png', 'users/1uEvDaIPq8I4MohEN6RGfGD3G21IuEQzjOQZpOe2.png', 'users/BkEmMPnWSog1ZsAn2T9boUoEy1m3vHFYPGO4XkAs.png', 'delivery', NULL, NULL, NULL, 'Addres details219', '31.1313120', '30.1111132250', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:56:03', '2023-09-09 15:56:03'),
(32, 'mohammedamra', NULL, NULL, '0592274687', NULL, 0, 0, '$2y$10$qJWgmGqbKQtD2upR00JBR.zzg.HF01eNXY0VprPVKiy2E3FWXEUIm', NULL, NULL, '12345678914652', 'users/da5X85n1CEJDOCnLtN68mBimGbPlz1tHdQtgDoHe.png', 1, 500, '1231654', 'white', 'users/mYpfXkuCSVUJS6gDzDSZV7sO6mTuUQkfMo862P31.png', 'users/3bcYeM7TXmjDZAYZnA7rQRIEGphXiZ7dD78bspnN.png', 'users/07WjgS9A2qKoVlsD4lnJA4d3EodUzqI106CBy2hK.png', 'users/7IWe06iNKr0UhL02O9Ul0HlQwxLs41gNLBxPqdTR.png', 'users/1TmdD3vZtT7WeInWBkxNTDPL2PDEa60RanAe9L1t.png', 'users/Q5e4y6iwKG8w15CFYO5J3sub2eK3Xr8ilcqMFMnr.png', 'delivery', NULL, NULL, NULL, 'Addres detailll9', '31.131312090', '30.111113288', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:56:40', '2023-09-09 15:56:40'),
(33, 'mohammedamrak', NULL, NULL, '0592274688', NULL, 0, 0, '$2y$10$M8FG8E5Gbn9RYZXXVUCzxe8ZX0T64u3fiJHGyXXUZkLgcr8.B7pI2', NULL, NULL, '12345678914652', 'users/OGf9FK36DmTjGb7QOXDIPNysOw792IKABiVNBpLo.png', 1, 500, '1231654', 'white', 'users/eQ7Y9VbWMqOev7S8WTNUVnogkdR9G0s6e4bgVUrz.png', 'users/5UnzPyrmjgKflNgDM8NmipDLn9Qii0939cXLPUfP.png', 'users/dbVqmXwN8I267v9FMp6RAzX9JKfmTpQsMFnx7XC8.png', 'users/Tyvoa2KpI4GDzCRRWrGmgEdTgbvNhxOULzKGUj4O.png', 'users/FVvLNCLY7SboY0xexIg7NxloBuSkMPrY0okXKh37.png', 'users/6YY6Si4zGoXEnZxkaoHiivKTPUxgXGOt33MpsOyv.png', 'delivery', NULL, NULL, NULL, 'Addres detailll9', '31.1316312090', '30.1611113288', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 15:57:05', '2023-09-09 15:57:05'),
(36, 'mbmb', NULL, NULL, '059241220', '16813', 0, 0, '$2y$10$b/eFHlgwqwXjnidBAm0qkOc/WA2dSs57DLuZ0qijV8BMWumiwn8Da', NULL, NULL, '12345678914654', 'users/1TQ7P0IDD8agwxD56WzDsJwgVX209MUp29Gho7qW.png', 1, 500, '1231654', 'white', 'users/4ylUoVEy0yaOAulG9m2XPPb4yBkTr3UaPhuNVWvT.png', 'users/VlscVq5Vko2eFB3YShLDiZVTLFTM4S71InDe9yIh.png', 'users/JLM5RIrdvKaxvUoGdldmXRZwLPLBGQykZdXmL5Sm.png', 'users/i5qwRaJdal7WYboh6obeSZGZsoyKB3uO0MYfn7kN.png', 'users/anUXPSsrb868ZhmuIrd6pHhKC1VNP7zV9HvQExHy.png', 'users/1Ds5574M8YVCcmE7x9ubcy8ApmKWpt9FfCve5nsv.png', 'delivery', NULL, NULL, NULL, 'Addres details', '31.13131', '30.11111', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 16:02:44', '2023-09-09 16:02:44'),
(37, 'mohammedamrak', NULL, NULL, '0592274689', '48917', 0, 0, '$2y$10$ySWZ6P3Rnp/V42.7zcuoruTziAJHQ75IYVf2IqjfxqSiJQ/66J5Pe', NULL, NULL, '12345678914652', 'users/UnaIXey4BGwWGyGlJIuSFwyQsaebwPLE9cEaGGT3.png', 1, 500, '1231654', 'white', 'users/dxZzKd4e1c1hxEhGIQTDslsQdv8h93zt2u9yaYqx.png', 'users/DS57MFTE9qXnAevC2tGR7qyuvV573whS3oyZBOHh.png', 'users/omLP9EF2olbeaW7zK6kA69wYJZLmeBxdysmc4EaG.png', 'users/b4Uusw0yIXAKx9CE94w2ymFLBqSeanx5p7D2EGsa.png', 'users/zynIVQqINlLgnNoF3lnisq1WQWiwLW4telfm06bB.png', 'users/230u2F8CIpckQfUfpDC5CeGtlvr1N6O4OBrArEFH.png', 'delivery', NULL, NULL, NULL, 'Addres detailll9', '31.1316312090', '30.1611113288', 1, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 16:04:04', '2023-09-09 16:46:13'),
(38, 'mosasamer', NULL, NULL, '0592274670', '55910', 2, 0, '$2y$10$MFfXhlMhFp/8OoX6UusOles632BD8lfGX0zM83ZsGXKDwYNCQX0fq', NULL, NULL, '123456', 'users/kwMy5iVozo6aE5MhAYlA9NIYLgMyD6g2XPmz3xjD.jpg', 1, 360, '963258741', 'red', 'users/J6m9Ece0hSUjuUblqHkR99Hia92CrfiRPMEgsFcN.webp', 'users/fgmAQTplGZfMvXcgg4L879yr8fqYgWeAO0ep4OTZ.webp', NULL, 'users/G2Q2cI3QINESJpE1inEhc0083NZq7PhbbDgK2Y2D.webp', 'users/vrLCpliAGUXMLl1l5oBWoztDak8OAatzWmSPfWNI.jpg', 'users/UUE2IoTnUbKFA6yxvYBk3oR7fQj0g9D2LmZgNDVg.webp', 'delivery', NULL, NULL, NULL, 'Hale NT 0872, Australia', '-24.18901003057696', '135.08379958570004', 0, 0, NULL, NULL, NULL, 0, NULL, NULL, 'ar', 0, '2023-09-09 18:49:27', '2023-09-09 18:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` binary(1) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `address`, `description`, `district`, `street`, `city_id`, `area_id`, `latitude`, `longitude`, `user_id`, `is_default`, `created_at`, `updated_at`) VALUES
(6, 'الشغل', 'تفاصيل اكثر عن العمل واضحة', 'حي الامل', 'شارع الكورنيش', 0x31, 1, '31.3104005', '34.2514983', 8, NULL, '2023-08-14 13:29:17', '2023-08-14 13:29:17'),
(7, 'المنزل', 'تفاصيل العنوان كاملة', '', '', NULL, NULL, '31.3104005', '34.2514983', 9, 1, '2023-08-14 13:29:17', '2023-08-14 13:29:17'),
(18, NULL, 'Addres details', NULL, NULL, NULL, NULL, '31.13131', '30.11111', 36, 1, '2023-09-09 16:02:44', '2023-09-09 16:02:44'),
(19, NULL, 'Addres detailll9', NULL, NULL, NULL, NULL, '31.1316312090', '30.1611113288', 37, 1, '2023-09-09 16:04:04', '2023-09-09 16:04:04'),
(20, NULL, 'Hale NT 0872, Australia', NULL, NULL, NULL, NULL, '-24.18901003057696', '135.08379958570004', 38, 1, '2023-09-09 18:49:27', '2023-09-09 18:49:27'),
(21, 'Work', 'Gush Katif', 'hjf', 'st', 0x31, 1, '31.311443', '34.254064', 8, NULL, '2023-09-17 14:01:21', '2023-09-17 14:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_bank_accounts`
--

CREATE TABLE `user_bank_accounts` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_bank_accounts`
--

INSERT INTO `user_bank_accounts` (`id`, `user_id`, `account_name`, `bank_name`, `bank_account`, `iban`, `created_at`, `updated_at`) VALUES
(4, 9, NULL, 'البنك المركزي', '123456789', 'PlA28288473729204', '2023-09-03 14:34:13', '2023-09-03 14:34:13'),
(7, 9, NULL, 'بنك الاسكان', '6461818', 'PLA82848475838389', '2023-09-03 14:37:18', '2023-09-03 14:37:18'),
(8, 9, NULL, 'الاهلي', '0215378', '6565686868', '2023-09-17 14:32:31', '2023-09-17 14:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_edit_requests`
--

CREATE TABLE `user_edit_requests` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_back_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_front_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_ratings`
--

CREATE TABLE `user_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rated_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_categories`
--

CREATE TABLE `vendor_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_categories`
--

INSERT INTO `vendor_categories` (`id`, `vendor_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2023-05-10 18:08:17', '2023-05-10 18:08:17'),
(2, 3, 3, '2023-05-10 18:08:17', '2023-05-10 18:08:17'),
(3, 8, 1, '2023-06-09 16:06:59', '2023-06-09 16:06:59'),
(4, 8, 3, '2023-06-09 16:06:59', '2023-06-09 16:06:59'),
(5, 2, 1, '2023-06-09 16:06:59', '2023-06-09 16:06:59'),
(6, 2, 3, '2023-06-09 16:06:59', '2023-06-09 16:06:59'),
(7, 7, 1, '2023-06-09 16:06:59', '2023-06-09 16:06:59'),
(8, 7, 3, '2023-06-09 16:06:59', '2023-06-09 16:06:59'),
(9, 9, 1, '2023-07-02 10:11:27', '2023-07-02 10:11:27'),
(10, 9, 3, '2023-07-02 10:11:27', '2023-07-02 10:11:27'),
(11, 10, 1, '2023-07-02 10:13:58', '2023-07-02 10:13:58'),
(12, 10, 3, '2023-07-02 10:13:58', '2023-07-02 10:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_ratings`
--

CREATE TABLE `vendor_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_ratings`
--

INSERT INTO `vendor_ratings` (`id`, `user_id`, `vendor_id`, `branch_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(2, 8, 2, 1, 3, 'test ', '2023-08-13 14:13:10', '2023-08-13 14:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_withdrawal_requests`
--

CREATE TABLE `vendor_withdrawal_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` enum('pending','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `last_wallet_balance` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `type`, `amount`, `payment_method`, `payment_id`, `last_wallet_balance`, `status`, `created_at`, `updated_at`) VALUES
(31, 8, 'purchase', 8020, 'wallet', '', 0, 1, '2023-05-28 09:52:22', '2023-05-28 09:52:22'),
(32, 8, 'charge', 120, 'apple_pay', '123', 0, 1, '2023-05-29 09:01:20', '2023-05-29 09:01:20'),
(33, 8, 'charge', 500, 'visa', '8ac7a49f8864628c01886628cd5c1607', 120, 1, '2023-05-29 09:18:50', '2023-05-29 09:18:50'),
(34, 8, 'charge', 500, 'visa', '8ac7a4a2886464bb01886629b5dc13f3', 620, 1, '2023-05-29 09:19:49', '2023-05-29 09:19:49'),
(35, 8, 'charge', 500, 'visa', '8ac7a4a2886464bb0188662d209d1e1a', 1120, 1, '2023-05-29 09:23:33', '2023-05-29 09:23:33'),
(36, 8, 'charge', 500, 'visa', '8ac7a4a18864628c0188662d9ad918ea', 1620, 1, '2023-05-29 09:24:05', '2023-05-29 09:24:05'),
(37, 8, 'charge', 500, 'visa', '8ac7a49f89e292190189ef3303d31c49', 2120, 1, '2023-08-13 17:00:45', '2023-08-13 17:00:45'),
(38, 8, 'charge', 5000, 'visa', '8ac7a4a289e299df0189ef3374836b7f', 2620, 1, '2023-08-13 17:01:14', '2023-08-13 17:01:14'),
(39, 8, 'purchase', 345, 'wallet', '', 0, 1, '2023-08-14 13:54:36', '2023-08-14 13:54:36'),
(40, 8, 'purchase', 345, 'wallet', '', 0, 1, '2023-08-14 13:54:50', '2023-08-14 13:54:50'),
(41, 8, 'purchase', 345, 'wallet', '', 0, 1, '2023-08-14 13:55:22', '2023-08-14 13:55:22'),
(42, 8, 'purchase', 345, 'wallet', '', 0, 1, '2023-08-14 18:47:08', '2023-08-14 18:47:08'),
(43, 8, 'purchase', 345, 'wallet', '', 0, 1, '2023-08-14 18:48:29', '2023-08-14 18:48:29'),
(44, 8, 'purchase', 17825, 'wallet', '', 0, 1, '2023-09-05 09:27:44', '2023-09-05 09:27:44'),
(45, 8, 'purchase', 17825, 'wallet', '', 0, 1, '2023-09-05 09:30:42', '2023-09-05 09:30:42'),
(46, 8, 'purchase', 7475, 'wallet', '', 0, 1, '2023-09-18 14:39:45', '2023-09-18 14:39:45'),
(47, 8, 'transfer', 500, 'wallet', NULL, 1000, 1, '2023-09-18 15:23:42', '2023-09-18 15:23:42'),
(48, 8, 'transfer', 500, 'wallet', NULL, 500, 1, '2023-09-18 15:23:59', '2023-09-18 15:23:59'),
(49, 8, 'transfer', 500, 'wallet', NULL, 1000000, 1, '2023-09-18 15:24:25', '2023-09-18 15:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_related_orders`
--

CREATE TABLE `withdrawal_related_orders` (
  `id` bigint(20) NOT NULL,
  `withdrawal_request_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal_related_orders`
--

INSERT INTO `withdrawal_related_orders` (`id`, `withdrawal_request_id`, `order_item_id`, `created_at`, `updated_at`) VALUES
(3, 3, 1, '2023-08-20 17:38:05', '2023-08-20 17:38:05'),
(4, 4, 2, '2023-08-20 17:38:05', '2023-08-20 17:38:05'),
(5, 1, 1, '2023-09-13 00:25:13', '2023-09-13 00:25:13'),
(6, 1, 12, '2023-09-13 00:25:13', '2023-09-13 00:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_requests`
--

CREATE TABLE `withdrawal_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref_no` bigint(20) DEFAULT NULL,
  `delivery_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `bank_account_id` bigint(20) NOT NULL,
  `status` enum('pending','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_requests`
--

INSERT INTO `withdrawal_requests` (`id`, `ref_no`, `delivery_id`, `vendor_id`, `amount`, `bank_account_id`, `status`, `read`, `created_at`, `updated_at`) VALUES
(1, 10000, 9, 2, 500.00, 7, 'pending', 0, '2023-09-13 00:25:13', '2023-09-13 00:25:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_groups_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `admin_group_roles`
--
ALTER TABLE `admin_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_group_roles_admin_groups_id_foreign` (`admin_groups_id`);

--
-- Indexes for table `advs`
--
ALTER TABLE `advs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_city_id_foreign` (`city_id`);

--
-- Indexes for table `auto_assignments`
--
ALTER TABLE `auto_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_assignments_delivery_id_foreign` (`delivery_id`),
  ADD KEY `auto_assignments_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch_deliveries`
--
ALTER TABLE `branch_deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_deliveries_branch_id_foreign` (`branch_id`),
  ADD KEY `branch_deliveries_delivery_id_foreign` (`delivery_id`),
  ADD KEY `branch_deliveries_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user_id_foreign` (`user_id`),
  ADD KEY `cart_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_admin_id_foreign` (`admin_id`),
  ADD KEY `files_user_id_foreign` (`user_id`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_notitfications`
--
ALTER TABLE `mobile_notitfications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ref_no` (`ref_no`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_status_id_foreign` (`status_id`);

--
-- Indexes for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_item_ref_no_unique` (`ref_no`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_delivery_id_foreign` (`delivery_id`);

--
-- Indexes for table `order_items_statuses`
--
ALTER TABLE `order_items_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items_status_times`
--
ALTER TABLE `order_items_status_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD KEY `products_vendor_id_foreign` (`vendor_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `product_car_loads`
--
ALTER TABLE `product_car_loads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_car_loads_car_id_foreign` (`car_id`),
  ADD KEY `product_car_loads_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_features_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_bank_accounts`
--
ALTER TABLE `user_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_edit_requests`
--
ALTER TABLE `user_edit_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_edit_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ratings_user_id_foreign` (`user_id`),
  ADD KEY `user_ratings_rated_id_foreign` (`rated_id`);

--
-- Indexes for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_categories_vendor_id_foreign` (`vendor_id`),
  ADD KEY `vendor_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `vendor_ratings`
--
ALTER TABLE `vendor_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_ratings_user_id_foreign` (`user_id`),
  ADD KEY `vendor_ratings_vendor_id_foreign` (`vendor_id`);

--
-- Indexes for table `vendor_withdrawal_requests`
--
ALTER TABLE `vendor_withdrawal_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_related_orders`
--
ALTER TABLE `withdrawal_related_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawal_requests_delivery_id_foreign` (`delivery_id`),
  ADD KEY `withdrawal_requests_bank_account_id_foreign` (`bank_account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_group_roles`
--
ALTER TABLE `admin_group_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `advs`
--
ALTER TABLE `advs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auto_assignments`
--
ALTER TABLE `auto_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branch_deliveries`
--
ALTER TABLE `branch_deliveries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mobile_notitfications`
--
ALTER TABLE `mobile_notitfications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items_statuses`
--
ALTER TABLE `order_items_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items_status_times`
--
ALTER TABLE `order_items_status_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_car_loads`
--
ALTER TABLE `product_car_loads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_bank_accounts`
--
ALTER TABLE `user_bank_accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_edit_requests`
--
ALTER TABLE `user_edit_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_ratings`
--
ALTER TABLE `user_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vendor_ratings`
--
ALTER TABLE `vendor_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendor_withdrawal_requests`
--
ALTER TABLE `vendor_withdrawal_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_related_orders`
--
ALTER TABLE `withdrawal_related_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD CONSTRAINT `admin_groups_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_group_roles`
--
ALTER TABLE `admin_group_roles`
  ADD CONSTRAINT `admin_group_roles_admin_groups_id_foreign` FOREIGN KEY (`admin_groups_id`) REFERENCES `admin_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auto_assignments`
--
ALTER TABLE `auto_assignments`
  ADD CONSTRAINT `auto_assignments_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auto_assignments_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `branch_deliveries`
--
ALTER TABLE `branch_deliveries`
  ADD CONSTRAINT `branch_deliveries_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_deliveries_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_deliveries_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `order_statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_car_loads`
--
ALTER TABLE `product_car_loads`
  ADD CONSTRAINT `product_car_loads_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_car_loads_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `product_features_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_bank_accounts`
--
ALTER TABLE `user_bank_accounts`
  ADD CONSTRAINT `user_bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_edit_requests`
--
ALTER TABLE `user_edit_requests`
  ADD CONSTRAINT `user_edit_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_ratings`
--
ALTER TABLE `user_ratings`
  ADD CONSTRAINT `user_ratings_rated_id_foreign` FOREIGN KEY (`rated_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_categories`
--
ALTER TABLE `vendor_categories`
  ADD CONSTRAINT `vendor_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vendor_categories_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_ratings`
--
ALTER TABLE `vendor_ratings`
  ADD CONSTRAINT `vendor_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vendor_ratings_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawal_requests`
--
ALTER TABLE `withdrawal_requests`
  ADD CONSTRAINT `withdrawal_requests_bank_account_id_foreign` FOREIGN KEY (`bank_account_id`) REFERENCES `user_bank_accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdrawal_requests_delivery_id_foreign` FOREIGN KEY (`delivery_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
