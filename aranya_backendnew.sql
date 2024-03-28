-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 09:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aranya_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_books`
--

CREATE TABLE `address_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_books`
--

INSERT INTO `address_books` (`id`, `user_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `apartment`, `street_address`, `created_at`, `updated_at`) VALUES
(2, 2, 'Md. Al-Amin', 'Mojumder', 'Bangladesh', 'Dhaka Division', 'mdalamin@test.com', '01764414949', '1229', NULL, 'House-1/A, Road-21, Nikunja-2, Khilkhet', '2023-10-19 11:50:44', '2023-10-19 11:50:44'),
(4, 3, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Chittagong', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', NULL, '2023-10-19 11:54:08', NULL),
(5, 1, 'Demo', 'Purpose', 'Bangladesh', 'Dhaka Division', 'nashita.iftekhar@webable.digital', '01916287618', NULL, 'Banani', NULL, '2023-10-22 09:57:44', NULL),
(6, 6, 'Md. Al-Amin', 'Mojumde', 'Bangladesh', 'Dhaka Division', 'mdalamin.aranya@gmail.com', '+8801764414949', '1229', NULL, 'House-1/A, Road-21, Nikunja-2, Khilkhet', '2023-10-24 05:25:24', '2023-10-24 05:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Bailey', 'mybi@mailinator.com', NULL, '$2y$10$NCiscFropI.RFxiYoO066.HYwA.pQhqbAO9DbT9P3pruv97vPQgTS', 2, NULL, NULL, '2023-05-17 05:00:31', '2023-05-17 06:45:04'),
(4, 'Cruz Walsh', 'qupyv@mailinator.com', NULL, '$2y$10$FC1UGtRTlakKAXHkbCHNsO/P/L.dKCJFxGHuWZSfL2HqJuhPr7hdK', 1, NULL, NULL, '2023-05-17 07:11:05', '2023-05-17 07:11:05'),
(5, 'Tamara Woodard', 'sahonurufy@mailinator.com', NULL, '$2y$10$CpFJFhI55IMqNkxWkjxCGe51cXeAESapBfIKIEBPCD/wgmHYlihSe', 2, NULL, NULL, '2023-05-17 07:11:24', '2023-05-17 07:11:24'),
(8, 'Ether tech', 'ether@gmail.com', NULL, '$2y$10$2CUIBbbLbWtt0nTJIUypCeb2vVVEDOT4n9xuHwfmMHWEdg1Y7NYay', 4, NULL, NULL, '2023-10-01 06:51:12', '2023-10-01 06:51:12'),
(9, 'Aranya', 'admin@admin.com', NULL, '$2y$10$ca9Xk39ikzsamtmFt/E.WeiDJpX0dsgzRbiRxh4N4zxu4uaS9NwQa', 1, NULL, NULL, '2023-10-01 06:52:46', '2023-10-01 06:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `artist_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Akul Biswas', 'akul-biswas', NULL, 1, NULL, '2023-06-24 00:44:43', '2023-06-24 00:44:43'),
(2, 'Tester', 'tester', NULL, 1, NULL, '2023-09-21 11:55:05', '2023-09-21 11:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aranya', 'aranya', NULL, 1, NULL, '2023-03-07 04:55:52', '2023-03-11 09:19:42'),
(2, 'Test', 'test', NULL, 1, NULL, '2023-09-21 11:49:22', '2023-09-21 11:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_start_date` date NOT NULL,
  `campaign_expire_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `slug`, `campaign_title`, `campaign_banner_default`, `campaign_meta_image`, `campaign_banner_one`, `campaign_banner_two`, `campaign_start_date`, `campaign_expire_date`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Orlando Leon', 'orlando-leon', NULL, NULL, NULL, NULL, NULL, '2023-09-02', '2023-09-22', 0, '2023-10-11 10:14:29', '2023-05-18 03:56:21', '2023-10-11 10:14:29'),
(2, 'test camp', 'test-camp', NULL, NULL, NULL, NULL, NULL, '2023-09-03', '2023-10-12', 1, NULL, '2023-07-08 22:55:56', '2023-11-05 03:21:42'),
(3, 'Testing pupose', 'testing-pupose', NULL, NULL, NULL, NULL, NULL, '2023-10-01', '2023-10-31', 0, '2023-10-11 10:14:37', '2023-10-01 07:12:18', '2023-10-11 10:14:37'),
(4, 'Puja 23', 'puja-23', NULL, NULL, NULL, NULL, NULL, '2024-02-04', '2024-03-07', 1, NULL, '2023-10-10 09:18:14', '2024-02-05 23:44:40'),
(5, 'test-23', 'test-23', NULL, NULL, NULL, NULL, NULL, '2024-02-05', '2024-03-14', 1, NULL, '2023-11-05 03:16:48', '2024-02-05 23:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_products`
--

CREATE TABLE `campaign_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_products`
--

INSERT INTO `campaign_products` (`id`, `product_id`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(2, 4, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(3, 5, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(4, 6, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(5, 8, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(6, 9, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(7, 10, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(8, 11, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(9, 12, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(10, 13, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(11, 14, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(12, 15, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(13, 16, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(14, 17, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(15, 18, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(16, 19, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(17, 20, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(18, 21, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(19, 22, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(20, 23, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(21, 24, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(22, 25, 4, 1, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(23, 26, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(24, 27, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(25, 29, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(26, 30, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(27, 31, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(28, 32, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(29, 33, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(30, 34, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(31, 35, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(32, 36, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(33, 37, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(34, 38, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(35, 39, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(36, 40, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(37, 41, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(38, 42, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(39, 43, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(40, 44, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(41, 45, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(42, 47, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(43, 48, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(44, 49, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(45, 50, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(46, 51, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(47, 53, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(48, 54, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(49, 55, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(50, 56, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(51, 58, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(52, 59, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(53, 60, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(54, 61, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(55, 62, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(56, 63, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(57, 64, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(58, 65, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(59, 66, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(60, 67, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(61, 68, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(62, 69, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(63, 70, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(64, 71, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(65, 72, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(66, 73, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(67, 74, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(68, 75, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(69, 76, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(70, 78, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(71, 79, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(72, 80, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(73, 81, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(74, 82, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(75, 83, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(76, 84, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(77, 85, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(78, 86, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(79, 87, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(80, 88, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(81, 89, 4, 1, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(82, 90, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(83, 91, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(84, 92, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(85, 93, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(86, 95, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(87, 97, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(88, 100, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(89, 101, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(90, 102, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(91, 103, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(92, 104, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(93, 106, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(94, 107, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(95, 108, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(96, 109, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(97, 110, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(98, 111, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(99, 112, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(100, 113, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(101, 114, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(102, 115, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(103, 116, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(104, 118, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(105, 119, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(106, 121, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(107, 123, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(108, 124, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(109, 125, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(110, 126, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(111, 128, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(112, 129, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(113, 130, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(114, 131, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(115, 132, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(116, 133, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(117, 134, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(118, 136, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(119, 137, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(120, 138, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(121, 139, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(122, 140, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(123, 141, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(124, 142, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(125, 143, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(126, 144, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(127, 145, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(128, 146, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(129, 147, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(130, 148, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(131, 151, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(132, 152, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(133, 153, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(134, 154, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(135, 155, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(136, 158, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(137, 160, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(138, 161, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(139, 162, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(140, 163, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(141, 166, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(142, 167, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(143, 169, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(144, 170, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(145, 171, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(146, 172, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(147, 174, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(148, 175, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(149, 176, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(150, 177, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(151, 178, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(152, 179, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(153, 180, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(154, 181, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(155, 182, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(156, 184, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(157, 185, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(158, 186, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(159, 187, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(160, 188, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(161, 189, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(162, 190, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(163, 191, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(164, 192, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(165, 193, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(166, 194, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(167, 195, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(168, 196, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(169, 197, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(170, 198, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(171, 199, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(172, 200, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(173, 201, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(174, 202, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(175, 203, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(176, 204, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(177, 205, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(178, 206, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(179, 207, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(180, 208, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(181, 209, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(182, 210, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(183, 211, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(184, 212, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(185, 213, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(186, 214, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(187, 215, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(188, 216, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(189, 217, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(190, 218, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(191, 219, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(192, 220, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(193, 221, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(194, 223, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(195, 224, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(196, 227, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(197, 228, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(198, 229, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(199, 230, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(200, 231, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(201, 232, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(202, 2, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(203, 52, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(204, 159, 4, 1, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(205, 204, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(206, 201, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(207, 207, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(208, 208, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(209, 209, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(210, 211, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(211, 212, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(212, 213, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(213, 216, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(214, 217, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(215, 218, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35'),
(216, 219, 5, 1, '2024-02-05 23:43:35', '2024-02-05 23:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `cares`
--

CREATE TABLE `cares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `care_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cares`
--

INSERT INTO `cares` (`id`, `care_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'diy', 'diy', NULL, 1, '2023-03-11 10:07:52', '2023-03-07 04:59:33', '2023-03-11 10:07:52'),
(2, 'wash', 'wash', NULL, 1, '2023-03-11 10:07:54', '2023-03-07 04:59:42', '2023-03-11 10:07:54'),
(3, 'Indigo Mcdowell', 'indigo-mcdowell', NULL, 1, '2023-03-11 10:07:57', '2023-03-07 05:58:16', '2023-03-11 10:07:57'),
(4, 'Angela Potter', 'angela-potter', NULL, 1, '2023-03-11 10:08:00', '2023-03-07 05:58:21', '2023-03-11 10:08:00'),
(5, 'Professional care', 'professional-care', NULL, 1, NULL, '2023-09-21 11:58:06', '2023-09-21 11:58:06'),
(6, 'Professionally clean', 'professionally-clean', NULL, 1, NULL, '2023-10-18 12:01:12', '2023-10-18 12:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `category_image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_one` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_two` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_three` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Set precedency',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the category',
  `whats_new` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for enable, 0 for disable',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `description`, `parent_category`, `category_image_one`, `type_one`, `category_image_two`, `type_two`, `category_image_three`, `type_three`, `category_feature_image`, `precedence`, `status`, `whats_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Women', 'women', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021909/aranya-product-v2/DSCF0178.jpg', 'image', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319437967_3245517765662624_2055855407411359162_n.jpg', 'image', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/newone.jpg', 'image', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001795.jpg', 1, 1, 0, NULL, '2023-12-13 07:40:46', '2023-12-13 07:40:47'),
(2, 'Men', 'men', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_2.png', 'image', NULL, NULL, NULL, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_2.png', 2, 1, 0, NULL, '2023-12-13 07:40:50', '2024-01-01 18:01:47'),
(3, 'Kids', 'kids', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021909/aranya-product-v2/DSCF0178.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021922/aranya-product-v2/DSC_8136.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1680757775/aranya-product-v2/DSC_8201.jpg', NULL, NULL, 3, 1, 0, NULL, '2023-12-13 07:40:55', '2023-12-13 07:40:54'),
(4, 'Home Furnishings', 'home-furnishings', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(5, 'Beauty', 'beauty', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-01-08_at_1.37.14_PM.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319437967_3245517765662624_2055855407411359162_n.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/newone.jpg', NULL, NULL, 5, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(6, 'Accessories', 'accessories', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(7, 'Saree', 'saree', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001419.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-2.webp', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-4.webp', NULL, NULL, 1, 1, 0, NULL, NULL, '2023-10-22 12:47:46'),
(8, 'Salwar Kameez', 'salwar-kameez', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001345.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001299.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001858.jpg', NULL, NULL, 2, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(9, 'Kurti & Fatua', 'kurti-fatua', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001819.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001857.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001795.jpg', NULL, NULL, 3, 1, 0, NULL, NULL, NULL),
(10, 'Tops & Shirts', 'tops-shirts', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/ZS001345.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697960130/ZS001345.jpg', NULL, NULL, NULL, NULL, 4, 1, 0, NULL, NULL, '2023-10-22 07:54:58'),
(11, 'Kimono', 'kimono', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_3.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0, NULL, NULL, '2023-10-01 06:54:36'),
(12, 'Kaftan', 'kaftan', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697960414/aranya-product-v2/ZS001875.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 0, NULL, NULL, '2023-10-22 07:40:44'),
(13, 'Panjabi', 'panjabi', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_2.png', 'image', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001187.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001542.jpg', NULL, NULL, 1, 1, 0, NULL, NULL, '2024-01-01 18:05:21'),
(14, 'Vest', 'vest', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001787.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001583.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001922.jpg', NULL, NULL, 2, 1, 0, NULL, NULL, NULL),
(15, 'T-Shirt', 't-shirt', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_4.png', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001583.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001694.jpg', NULL, NULL, 3, 1, 0, NULL, NULL, '2023-10-01 06:44:27'),
(16, 'Fatua', 'fatua', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 0, NULL, NULL, NULL),
(17, 'Shirts', 'shirts', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0020033NH09193519/69_2.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0, NULL, NULL, '2023-10-01 06:46:08'),
(18, 'Jackets', 'jackets', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 0, NULL, NULL, NULL),
(19, 'Baby Kantha', 'baby-kantha', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(20, 'Cushion Cover', 'cushion-cover', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(21, 'Ceramic', 'ceramic', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 0, NULL, NULL, NULL),
(22, 'Table Cloth', 'table-cloth', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 0, NULL, NULL, NULL),
(23, 'Bed Cover', 'bed-cover', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0, NULL, NULL, NULL),
(24, 'Basket', 'basket', NULL, '4', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_4.png', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-04-17_at_12.58.44_PM.jpg', NULL, NULL, NULL, NULL, 6, 1, 0, NULL, NULL, '2023-10-02 05:46:14'),
(25, 'Napkin', 'napkin', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 0, NULL, NULL, NULL),
(26, 'Table Runner', 'table-runner', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 0, NULL, NULL, NULL),
(27, 'Aatong', 'aatong', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL),
(28, 'Cangbuk', 'cangbuk', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0, NULL, NULL, NULL),
(29, 'Ashtodhatu Jewellery', 'ashtodhatu-jewellery', NULL, '37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(30, 'Silver Jewellery', 'silver-jewellery', NULL, '37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(31, 'Metal Jewellery', 'metal-jewellery', NULL, '37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(32, 'Other Jewellery', 'other-jewellery', NULL, '37', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001756.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001072.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001125.jpg', NULL, NULL, 6, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(33, 'Scarves', 'scarves', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 0, NULL, NULL, NULL),
(34, 'Orna', 'orna', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 0, NULL, NULL, NULL),
(35, 'Stoles', 'stoles', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 0, NULL, NULL, NULL),
(36, 'Shawls', 'shawls', NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 0, NULL, NULL, NULL),
(37, 'Jewellery', 'jewellery', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, NULL, NULL),
(38, 'Girls', 'girls', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(39, 'Boys', 'boys', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_4.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(40, 'Babies', 'babies', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(41, 'Toddlers', 'toddlers', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 0, 0, NULL, NULL, '2023-10-19 18:06:51'),
(42, 'new test', 'new-test', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2023-07-03 23:45:28', '2023-06-20 01:11:00', '2023-07-03 23:45:28'),
(43, 'new-test-1', 'new-test-1', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319437967_3245517765662624_2055855407411359162_n.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-01-08_at_1.37.14_PM.jpg', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/Arifuzzaman_joining_year_2022_2.jpg', NULL, NULL, 12, 1, 0, '2023-06-20 03:36:41', '2023-06-20 01:11:38', '2023-06-20 03:36:41'),
(44, 'Parent-cat', 'parent-cat', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 0, '2023-07-05 00:23:37', '2023-07-05 00:06:31', '2023-07-05 00:23:37'),
(45, 'cat-parent', 'cat-parent', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 0, '2023-07-05 00:23:23', '2023-07-05 00:18:33', '2023-07-05 00:23:23'),
(46, 'cat11', 'cat11', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 0, '2023-07-05 00:23:18', '2023-07-05 00:22:08', '2023-07-05 00:23:18'),
(47, 'catpat21', 'catpat21', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 0, '2023-07-05 00:23:12', '2023-07-05 00:22:42', '2023-07-05 00:23:12'),
(48, 'patcat', 'patcat', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, 0, '2023-07-05 00:51:35', '2023-07-05 00:27:51', '2023-07-05 00:51:35'),
(49, 'pattasa', 'pattasa', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 0, '2023-07-05 00:51:31', '2023-07-05 00:30:31', '2023-07-05 00:51:31'),
(50, 'hggfdhfgh', 'hggfdhfgh', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 0, '2023-07-05 00:51:27', '2023-07-05 00:31:44', '2023-07-05 00:51:27'),
(51, 'rttytwr', 'rttytwr', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 0, '2023-07-05 00:51:24', '2023-07-05 00:32:57', '2023-07-05 00:51:24'),
(52, 'wwwwerr', 'wwwwerr', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 0, '2023-07-05 00:51:21', '2023-07-05 00:36:00', '2023-07-05 00:51:21'),
(53, 'uyuuyu', 'uyuuyu', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 1, 0, '2023-07-05 00:51:18', '2023-07-05 00:46:32', '2023-07-05 00:51:18'),
(54, 'rrrrr', 'rrrrr', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 0, '2023-07-05 00:51:14', '2023-07-05 00:50:48', '2023-07-05 00:51:14'),
(55, 'hghghgh', 'hghghgh', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 0, '2023-07-05 00:54:57', '2023-07-05 00:54:11', '2023-07-05 00:54:57'),
(56, 'qqq', 'qqq', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 0, '2023-07-05 01:31:08', '2023-07-05 01:02:22', '2023-07-05 01:31:08'),
(57, 'uyuuyu', 'uyuuyu', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 0, '2023-07-05 01:30:29', '2023-07-05 01:03:00', '2023-07-05 01:30:29'),
(58, 'rrrrr', 'rrrrr', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, 0, '2023-07-05 01:30:55', '2023-07-05 01:03:17', '2023-07-05 01:30:55'),
(59, 'eeee', 'eeee', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 1, 0, '2023-07-05 01:30:40', '2023-07-05 01:03:32', '2023-07-05 01:30:40'),
(60, 'yyyy', 'yyyy', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 0, '2023-07-05 01:30:32', '2023-07-05 01:03:59', '2023-07-05 01:30:32'),
(61, 'gfgfgf', 'gfgfgf', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, 0, '2023-07-05 01:30:35', '2023-07-05 01:25:42', '2023-07-05 01:30:35'),
(62, 'vbvbbv', 'vbvbbv', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, 0, '2023-07-05 01:30:43', '2023-07-05 01:28:26', '2023-07-05 01:30:43'),
(63, 'jkjkjk', 'jkjkjk', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, 0, '2023-07-05 01:31:03', '2023-07-05 01:30:12', '2023-07-05 01:31:03'),
(64, 'test-one', 'test-one', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, 0, '2023-07-10 01:34:22', '2023-07-10 01:31:18', '2023-07-10 01:34:22'),
(65, 'What\'s New', 'whats-new', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2023-09-12 05:18:44', '2023-09-12 04:19:33', '2023-09-12 05:18:44'),
(66, 'Test', 'test', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/video/upload/Aranya_Eid_Draft4.mp4', 'video', 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001433-2.jpg', 'image', 'https://res.cloudinary.com/diyc1dizi/video/upload/Aranya_part_4_reels_final.mp4', 'video', NULL, 0, 0, 1, NULL, '2023-09-19 07:15:18', '2023-12-05 06:00:47'),
(67, 'Sale', 'sale', NULL, '66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2023-10-18 11:39:05', '2023-09-19 07:15:32', '2023-10-18 11:39:05'),
(68, 'ARANYA EID', 'aranya-eid', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 1, 0, '2023-10-03 10:47:51', '2023-10-03 10:47:45', '2023-10-03 10:47:51'),
(69, 'Beauty', 'beauty', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, '2023-10-16 07:45:27', '2023-10-16 07:44:46', '2023-10-16 07:45:27'),
(70, 'Baby frock', 'baby-frock', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021909/aranya-product-v2/DSCF0178.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 11:58:40', '2023-10-22 11:13:39'),
(71, 'Baby dress', 'baby-dress', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021922/aranya-product-v2/DSC_8136.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 11:58:58', '2023-10-22 11:12:19'),
(72, 'Baby set', 'baby-set', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '2023-10-18 11:59:13', '2023-10-19 18:06:51'),
(73, 'Leggings', 'leggings', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697973004/ZS001433-2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 11:59:29', '2023-10-22 11:10:34'),
(74, 'Blouse', 'blouse', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697966879/ZS001703.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 11:59:41', '2023-10-22 09:28:38'),
(75, 'Orna', 'orna', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, '2023-10-18 11:59:54', '2023-10-19 18:06:51'),
(76, 'Two Pcs Set', 'two-pcs-set', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080370SME1182018/100_2.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:00:12', '2023-10-22 12:02:21'),
(77, 'Three Pcs Set', 'three-pcs-set', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697972817/ZS001916.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:00:30', '2023-10-22 11:07:28'),
(78, 'Necklace', 'necklace', NULL, '37', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697978932/ZS001345_1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:06:51', '2023-10-22 12:49:28'),
(79, 'Punjabi', 'punjabi', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010349IJ0619269/web2.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:54:33', '2023-10-22 12:18:40'),
(80, 'Fotua', 'fotua', NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:54:43', '2023-10-18 12:54:43'),
(81, 'Shirt', 'shirt', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_2.png', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:54:54', '2023-10-22 12:17:24'),
(82, 'Suits', 'suits', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSC_8136.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:55:06', '2023-10-22 12:12:25'),
(83, 'Jacket', 'jacket', NULL, '3', 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001345_1.jpg', 'image', NULL, NULL, 'https://res.cloudinary.com/diyc1dizi/video/upload/Aranya_Eid_Draft4.mp4', 'video', 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001795.jpg', 0, 1, 0, NULL, '2023-10-18 12:55:17', '2023-12-10 03:21:23'),
(84, 'Suit', 'suit', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697976257/ZS001744.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:55:32', '2023-10-22 12:04:31'),
(85, 'Skirt', 'skirt', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1697976032/ZS001601.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, NULL, '2023-10-18 12:56:47', '2023-10-22 12:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `category_fabric`
--

CREATE TABLE `category_fabric` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `fabric_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_fabric`
--

INSERT INTO `category_fabric` (`id`, `category_id`, `fabric_id`, `created_at`, `updated_at`) VALUES
(1, 3, 10, '2023-05-29 05:36:14', '2023-05-29 05:36:14'),
(2, 3, 4, '2023-05-29 05:36:14', '2023-05-29 05:36:14'),
(3, 8, 10, '2023-05-29 05:36:15', '2023-05-29 05:36:15'),
(4, 8, 23, '2023-05-29 05:36:15', '2023-05-29 05:36:15'),
(5, 8, 4, '2023-05-29 05:36:15', '2023-05-29 05:36:15'),
(6, 3, 21, '2023-05-29 05:36:16', '2023-05-29 05:36:16'),
(7, 3, 5, '2023-05-29 05:36:16', '2023-05-29 05:36:16'),
(8, 3, 26, '2023-05-29 05:36:16', '2023-05-29 05:36:16'),
(9, 13, 3, '2023-05-29 05:36:17', '2023-05-29 05:36:17'),
(10, 13, 10, '2023-05-29 05:36:17', '2023-05-29 05:36:17'),
(11, 13, 4, '2023-05-29 05:36:17', '2023-05-29 05:36:17'),
(12, 13, 14, '2023-05-29 05:36:17', '2023-05-29 05:36:17'),
(13, 13, 18, '2023-05-29 05:36:17', '2023-05-29 05:36:17'),
(14, 13, 23, '2023-05-29 05:36:17', '2023-05-29 05:36:17'),
(15, 13, 25, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(16, 13, 28, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(17, 13, 1, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(18, 16, 18, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(19, 18, 12, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(20, 14, 4, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(21, 15, 4, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(22, 15, 22, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(23, 7, 17, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(24, 7, 14, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(25, 7, 4, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(26, 7, 9, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(27, 7, 6, '2023-05-29 05:36:18', '2023-05-29 05:36:18'),
(28, 8, 1, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(29, 8, 18, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(30, 10, 10, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(31, 10, 14, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(32, 10, 23, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(33, 33, 4, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(34, 33, 14, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(35, 10, 3, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(36, 10, 4, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(37, 11, 4, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(38, 11, 1, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(39, 11, 21, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(40, 11, 20, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(41, 12, 23, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(42, 9, 10, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(43, 10, 25, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(44, 10, 22, '2023-05-29 05:36:19', '2023-05-29 05:36:19'),
(45, 35, 22, '2023-05-29 05:36:20', '2023-05-29 05:36:20'),
(46, 34, 11, '2023-05-29 05:36:20', '2023-05-29 05:36:20'),
(47, 7, 16, '2023-05-29 05:36:20', '2023-05-29 05:36:20'),
(48, 7, 20, '2023-05-29 05:36:20', '2023-05-29 05:36:20'),
(49, 32, 2, '2023-05-29 05:36:20', '2023-05-29 05:36:20'),
(50, 22, 26, '2023-06-05 01:31:07', '2023-06-05 01:31:07'),
(51, 22, 23, '2023-06-05 01:31:07', '2023-06-05 01:31:07'),
(52, 21, 23, '2023-06-06 04:15:31', '2023-06-06 04:15:31'),
(53, 39, 30, '2023-06-18 07:47:14', '2023-06-18 07:47:14'),
(54, 39, 4, '2023-06-18 07:47:14', '2023-06-18 07:47:14'),
(55, 42, 31, '2023-07-10 07:34:40', '2023-07-10 07:34:41'),
(56, 42, 23, '2023-07-10 07:34:43', '2023-07-10 07:34:42'),
(57, 42, 18, '2023-07-10 07:34:44', '2023-07-10 07:34:45'),
(58, 42, 2, '2023-07-10 07:34:48', '2023-07-10 07:34:46'),
(59, 5, 1, '2023-07-10 07:34:49', '2023-07-10 07:34:50'),
(60, 5, 3, '2023-07-10 07:34:51', '2023-07-10 07:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `color_name`, `color_code`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#f2071f', 'red', NULL, 1, NULL, '2023-03-06 16:06:30', '2023-10-10 07:03:01'),
(2, 'Blue', '#0000ff', 'blue', NULL, 1, NULL, '2023-03-06 16:06:50', '2023-03-11 08:32:43'),
(3, 'Green', '#00ff00', 'green', NULL, 1, NULL, '2023-03-06 16:07:02', '2023-03-11 08:44:30'),
(5, 'Pink', '#ffc0cb', 'pink', NULL, 1, NULL, '2023-03-09 06:01:37', '2023-03-11 08:20:01'),
(8, 'Purple', '#9933ff', 'purple', NULL, 1, NULL, '2023-03-09 06:02:52', '2023-03-11 08:47:14'),
(9, 'Beige', '#f5f5dc', 'beige', NULL, 1, NULL, '2023-03-11 07:53:39', '2023-03-11 07:57:57'),
(10, 'Brown', '#964b00', 'brown', NULL, 1, NULL, '2023-03-11 07:57:22', '2023-03-11 07:57:22'),
(11, 'Golden', '#ffd700', 'golden', NULL, 1, NULL, '2023-03-11 08:01:32', '2023-03-11 08:01:57'),
(12, 'Gray', '#808080', 'gray', NULL, 1, NULL, '2023-03-11 08:03:47', '2023-03-11 08:03:47'),
(13, 'Olive', '#808000', 'olive', NULL, 1, NULL, '2023-03-11 08:05:03', '2023-03-11 08:05:03'),
(14, 'Teal', '#008080', 'teal', NULL, 1, NULL, '2023-03-11 08:06:27', '2023-03-11 08:06:27'),
(15, 'Annatto', '#8c5341', 'annatto', NULL, 1, NULL, '2023-03-11 08:09:28', '2023-03-11 08:09:28'),
(16, 'Manjit', '#b12525', 'manjit', NULL, 1, NULL, '2023-03-11 08:11:40', '2023-03-11 08:11:40'),
(17, 'Navy', '#002f6c', 'navy', NULL, 1, NULL, '2023-03-11 08:14:16', '2023-03-11 08:14:16'),
(18, 'Off-White', '#f5f5f5', 'off-white', NULL, 1, NULL, '2023-03-11 08:16:02', '2023-03-11 08:16:41'),
(19, 'White', '#ffffff', 'white', NULL, 1, NULL, '2023-03-11 08:22:44', '2023-03-11 08:22:44'),
(20, 'Black', '#050505', 'black', NULL, 1, NULL, '2023-03-12 00:42:58', '2023-03-12 00:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `consignments`
--

CREATE TABLE `consignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `consignment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consignments`
--

INSERT INTO `consignments` (`id`, `consignment_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Testing', 'testing', NULL, 1, NULL, '2023-09-21 11:57:06', '2023-09-21 11:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_date` date DEFAULT NULL,
  `process_state` tinyint(4) DEFAULT NULL,
  `process_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_delivery_date` date DEFAULT NULL,
  `on_delivery_state` tinyint(4) DEFAULT NULL,
  `on_delivery_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_state` tinyint(4) DEFAULT NULL,
  `delivery_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `order_id`, `tracking_id`, `process_date`, `process_state`, `process_value`, `on_delivery_date`, `on_delivery_state`, `on_delivery_value`, `delivery_date`, `delivery_state`, `delivery_value`, `delivered_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(32, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-24 05:28:09', NULL),
(33, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-24 14:19:48', NULL),
(35, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-28 17:30:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designers`
--

CREATE TABLE `designers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designer_sort_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designers`
--

INSERT INTO `designers` (`id`, `designer_name`, `designer_sort_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'CS', 'CS', 'cs', NULL, 1, NULL, '2023-03-07 04:56:13', '2023-03-11 09:21:32'),
(2, 'BA', 'BA', 'ba', NULL, 1, NULL, '2023-03-07 04:56:27', '2023-03-11 09:21:23'),
(3, 'AR', 'AR', 'ar', NULL, 1, NULL, '2023-03-07 05:55:51', '2023-03-11 09:21:04'),
(4, 'AA', 'AA', 'aa', NULL, 1, NULL, '2023-03-07 05:56:01', '2023-03-11 09:20:55'),
(5, 'FF', 'FF', 'ff', NULL, 1, NULL, '2023-03-11 09:21:51', '2023-03-11 09:21:51'),
(6, 'IJ', 'IJ', 'ij', NULL, 1, NULL, '2023-03-11 09:22:02', '2023-03-11 09:22:02'),
(7, 'MA', 'MA', 'ma', NULL, 1, NULL, '2023-03-11 09:22:14', '2023-03-11 09:22:14'),
(8, 'MC', 'MC', 'mc', NULL, 1, NULL, '2023-03-11 09:22:32', '2023-03-11 09:22:32'),
(9, 'NH', 'NH', 'nh', NULL, 1, NULL, '2023-03-11 09:22:42', '2023-03-11 09:22:42'),
(10, 'NK', 'NK', 'nk', NULL, 1, NULL, '2023-03-11 09:23:05', '2023-03-11 09:23:05'),
(11, 'RG', 'RG', 'rg', NULL, 1, NULL, '2023-03-11 09:23:14', '2023-03-11 09:23:14'),
(12, 'SF', 'SF', 'sf', NULL, 1, NULL, '2023-03-11 09:23:44', '2023-03-11 09:23:44'),
(13, 'SM', 'SM', 'sm', NULL, 1, NULL, '2023-03-11 09:24:02', '2023-03-11 09:24:02'),
(14, 'SR', 'SR', 'sr', NULL, 1, NULL, '2023-03-11 09:24:11', '2023-03-11 09:24:11'),
(15, 'TA', 'TA', 'ta', NULL, 1, NULL, '2023-03-11 09:24:38', '2023-03-11 09:24:38'),
(16, 'RA', 'RA', 'ra', NULL, 1, NULL, '2023-03-12 00:43:24', '2023-03-12 00:43:24'),
(17, 'CA', 'CA', 'ca', NULL, 1, NULL, '2023-09-21 11:49:42', '2023-09-21 11:49:42'),
(18, 'SK', 'SK', 'sk', NULL, 1, NULL, '2023-10-18 13:10:37', '2023-10-18 13:10:37'),
(19, 'NZ', 'NZ', 'nz', NULL, 1, NULL, '2023-10-18 13:10:52', '2023-10-18 13:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_type` enum('percentage','flat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('regular','campaign') COLLATE utf8mb4_unicode_ci DEFAULT 'regular',
  `max_amount` double DEFAULT NULL,
  `disc_sku` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `discount_amount`, `discount_type`, `type`, `max_amount`, `disc_sku`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 60, 'percentage', 'campaign', NULL, 'C6554', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(2, 3, 60, 'percentage', 'campaign', NULL, 'C6557', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(3, 3, 60, 'percentage', 'campaign', NULL, 'C6560', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(4, 3, 60, 'percentage', 'campaign', NULL, 'C6561', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(5, 4, 60, 'percentage', 'campaign', NULL, 'C5571', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(6, 4, 60, 'percentage', 'campaign', NULL, 'C5572', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(7, 4, 60, 'percentage', 'campaign', NULL, 'C5573', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(8, 5, 60, 'percentage', 'campaign', NULL, 'C5575', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(9, 5, 60, 'percentage', 'campaign', NULL, 'C5576', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(10, 5, 60, 'percentage', 'campaign', NULL, 'C5578', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(11, 5, 60, 'percentage', 'campaign', NULL, 'C5579', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(12, 5, 60, 'percentage', 'campaign', NULL, 'C5581', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(13, 5, 60, 'percentage', 'campaign', NULL, 'C5582', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(14, 5, 60, 'percentage', 'campaign', NULL, 'C5583', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(15, 6, 60, 'percentage', 'campaign', NULL, 'C7171', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(16, 6, 60, 'percentage', 'campaign', NULL, 'C7172', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(17, 6, 60, 'percentage', 'campaign', NULL, 'C7175', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(18, 6, 60, 'percentage', 'campaign', NULL, 'C7177', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(19, 6, 60, 'percentage', 'campaign', NULL, 'C7178', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(20, 6, 60, 'percentage', 'campaign', NULL, 'C7179', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(21, 8, 60, 'percentage', 'campaign', NULL, 'C7387', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(22, 8, 60, 'percentage', 'campaign', NULL, 'C7388', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(23, 9, 60, 'percentage', 'campaign', NULL, 'C2732', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(24, 9, 60, 'percentage', 'campaign', NULL, 'C2733', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(25, 9, 60, 'percentage', 'campaign', NULL, 'C2734', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(26, 9, 60, 'percentage', 'campaign', NULL, 'C2736', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(27, 9, 60, 'percentage', 'campaign', NULL, 'C2737', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(28, 9, 60, 'percentage', 'campaign', NULL, 'C2738', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(29, 9, 60, 'percentage', 'campaign', NULL, 'C2739', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(30, 10, 60, 'percentage', 'campaign', NULL, 'C4074', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(31, 10, 60, 'percentage', 'campaign', NULL, 'C4075', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(32, 10, 60, 'percentage', 'campaign', NULL, 'C4078', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(33, 10, 60, 'percentage', 'campaign', NULL, 'C4079', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(34, 10, 60, 'percentage', 'campaign', NULL, 'C4080', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(35, 10, 60, 'percentage', 'campaign', NULL, 'C4081', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(36, 11, 60, 'percentage', 'campaign', NULL, 'C4114', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(37, 11, 60, 'percentage', 'campaign', NULL, 'C4115', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(38, 11, 60, 'percentage', 'campaign', NULL, 'C4117', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(39, 11, 60, 'percentage', 'campaign', NULL, 'C4118', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(40, 11, 60, 'percentage', 'campaign', NULL, 'C4119', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(41, 11, 60, 'percentage', 'campaign', NULL, 'C4120', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(42, 12, 60, 'percentage', 'campaign', NULL, 'C7070', 1, NULL, '2023-11-06 08:02:56', '2023-11-07 00:25:47'),
(43, 12, 60, 'percentage', 'campaign', NULL, 'C7073', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(44, 12, 60, 'percentage', 'campaign', NULL, 'C7074', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(45, 12, 60, 'percentage', 'campaign', NULL, 'C7076', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(46, 12, 60, 'percentage', 'campaign', NULL, 'C7077', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(47, 12, 60, 'percentage', 'campaign', NULL, 'C7078', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(48, 13, 60, 'percentage', 'campaign', NULL, 'C6511', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(49, 13, 60, 'percentage', 'campaign', NULL, 'C6512', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(50, 13, 60, 'percentage', 'campaign', NULL, 'C6514', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(51, 13, 60, 'percentage', 'campaign', NULL, 'C6515', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(52, 13, 60, 'percentage', 'campaign', NULL, 'C6517', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(53, 13, 60, 'percentage', 'campaign', NULL, 'C6518', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(54, 13, 60, 'percentage', 'campaign', NULL, 'C6519', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(55, 14, 60, 'percentage', 'campaign', NULL, 'C2295', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(56, 14, 60, 'percentage', 'campaign', NULL, 'C2296', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(57, 14, 60, 'percentage', 'campaign', NULL, 'C2298', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(58, 14, 60, 'percentage', 'campaign', NULL, 'C2301', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(59, 14, 60, 'percentage', 'campaign', NULL, 'C2302', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(60, 15, 60, 'percentage', 'campaign', NULL, 'C7354', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(61, 16, 10, 'percentage', 'campaign', NULL, 'D0091', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(62, 16, 10, 'percentage', 'campaign', NULL, 'D0092', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(63, 16, 10, 'percentage', 'campaign', NULL, 'D0093', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(64, 17, 10, 'percentage', 'campaign', NULL, 'C8720', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(65, 17, 10, 'percentage', 'campaign', NULL, 'C8721', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(66, 17, 10, 'percentage', 'campaign', NULL, 'C8722', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(67, 17, 10, 'percentage', 'campaign', NULL, 'C8725', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(68, 17, 15, 'percentage', 'campaign', NULL, 'C8727', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(69, 17, 15, 'percentage', 'campaign', NULL, 'C8728', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(70, 18, 10, 'percentage', 'campaign', NULL, 'D0095', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(71, 18, 10, 'percentage', 'campaign', NULL, 'D0096', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(72, 18, 10, 'percentage', 'campaign', NULL, 'D0098', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(73, 18, 10, 'percentage', 'campaign', NULL, 'D0100', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(74, 18, 10, 'percentage', 'campaign', NULL, 'D0101', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(75, 18, 10, 'percentage', 'campaign', NULL, 'D0103', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(76, 18, 10, 'percentage', 'campaign', NULL, 'D0104', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(77, 19, 60, 'percentage', 'campaign', NULL, 'C6027', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(78, 19, 60, 'percentage', 'campaign', NULL, 'C6028', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(79, 19, 60, 'percentage', 'campaign', NULL, 'C6029', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(80, 20, 60, 'percentage', 'campaign', NULL, 'C3854', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(81, 20, 60, 'percentage', 'campaign', NULL, 'C3855', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(82, 20, 60, 'percentage', 'campaign', NULL, 'C3856', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(83, 20, 60, 'percentage', 'campaign', NULL, 'C3857', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(84, 20, 60, 'percentage', 'campaign', NULL, 'C3859', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(85, 21, 60, 'percentage', 'campaign', NULL, 'C6583', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(86, 21, 60, 'percentage', 'campaign', NULL, 'C6584', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(87, 21, 60, 'percentage', 'campaign', NULL, 'C6586', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(88, 21, 60, 'percentage', 'campaign', NULL, 'C6589', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(89, 21, 60, 'percentage', 'campaign', NULL, 'C6590', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(90, 21, 60, 'percentage', 'campaign', NULL, 'C6628', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(91, 22, 60, 'percentage', 'campaign', NULL, 'C4513', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(92, 22, 60, 'percentage', 'campaign', NULL, 'C4514', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(93, 22, 60, 'percentage', 'campaign', NULL, 'C4515', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(94, 23, 60, 'percentage', 'campaign', NULL, 'C4353', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(95, 23, 60, 'percentage', 'campaign', NULL, 'C4354', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(96, 23, 10, 'percentage', 'campaign', NULL, 'C4355', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(97, 24, 60, 'percentage', 'campaign', NULL, 'C4469', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(98, 24, 60, 'percentage', 'campaign', NULL, 'C4470', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(99, 24, 60, 'percentage', 'campaign', NULL, 'C4472', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(100, 24, 60, 'percentage', 'campaign', NULL, 'C4473', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(101, 25, 60, 'percentage', 'campaign', NULL, 'C4475', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(102, 25, 60, 'percentage', 'campaign', NULL, 'C4476', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(103, 25, 60, 'percentage', 'campaign', NULL, 'C4478', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(104, 25, 60, 'percentage', 'campaign', NULL, 'C4479', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(105, 26, 60, 'percentage', 'campaign', NULL, 'C5676', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(106, 26, 60, 'percentage', 'campaign', NULL, 'C5677', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(107, 26, 60, 'percentage', 'campaign', NULL, 'C5678', 1, NULL, '2023-11-06 08:02:56', '2023-11-06 08:02:56'),
(108, 26, 60, 'percentage', 'campaign', NULL, 'C5680', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(109, 26, 60, 'percentage', 'campaign', NULL, 'C5681', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(110, 27, 60, 'percentage', 'campaign', NULL, 'C7484', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(111, 27, 60, 'percentage', 'campaign', NULL, 'C7485', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(112, 27, 60, 'percentage', 'campaign', NULL, 'C7486', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(113, 27, 60, 'percentage', 'campaign', NULL, 'C7488', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(114, 27, 60, 'percentage', 'campaign', NULL, 'C7489', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(115, 29, 60, 'percentage', 'campaign', NULL, 'C5623', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(116, 29, 60, 'percentage', 'campaign', NULL, 'C5624', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(117, 30, 60, 'percentage', 'campaign', NULL, 'C6767', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(118, 30, 60, 'percentage', 'campaign', NULL, 'C6769', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(119, 30, 60, 'percentage', 'campaign', NULL, 'C6770', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(120, 31, 60, 'percentage', 'campaign', NULL, 'C7538', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(121, 31, 60, 'percentage', 'campaign', NULL, 'C7539', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(122, 31, 60, 'percentage', 'campaign', NULL, 'C7540', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(123, 31, 60, 'percentage', 'campaign', NULL, 'C7542', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(124, 31, 60, 'percentage', 'campaign', NULL, 'C7543', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(125, 31, 60, 'percentage', 'campaign', NULL, 'C7544', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(126, 32, 60, 'percentage', 'campaign', NULL, 'B6921', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(127, 32, 60, 'percentage', 'campaign', NULL, 'B6922', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(128, 32, 60, 'percentage', 'campaign', NULL, 'B6924', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(129, 32, 60, 'percentage', 'campaign', NULL, 'B6925', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(130, 32, 60, 'percentage', 'campaign', NULL, 'B6927', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(131, 32, 60, 'percentage', 'campaign', NULL, 'B6928', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(132, 33, 10, 'percentage', 'campaign', NULL, 'C9846', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(133, 33, 10, 'percentage', 'campaign', NULL, 'C9847', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(134, 33, 10, 'percentage', 'campaign', NULL, 'C9848', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(135, 33, 10, 'percentage', 'campaign', NULL, 'C9849', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(136, 34, 10, 'percentage', 'campaign', NULL, 'C8771', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(137, 34, 10, 'percentage', 'campaign', NULL, 'C8772', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(138, 35, 10, 'percentage', 'campaign', NULL, 'C9851', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(139, 35, 10, 'percentage', 'campaign', NULL, 'C9852', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(140, 36, 10, 'percentage', 'campaign', NULL, 'C9857', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(141, 36, 10, 'percentage', 'campaign', NULL, 'C9858', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(142, 37, 60, 'percentage', 'campaign', NULL, 'B1949', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(143, 38, 30, 'percentage', 'campaign', NULL, 'D0034', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(144, 38, 30, 'percentage', 'campaign', NULL, 'D0035', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(145, 38, 30, 'percentage', 'campaign', NULL, 'D0036', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(146, 38, 30, 'percentage', 'campaign', NULL, 'D0037', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(147, 38, 30, 'percentage', 'campaign', NULL, 'D0038', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(148, 39, 60, 'percentage', 'campaign', NULL, 'B8670', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(149, 39, 60, 'percentage', 'campaign', NULL, 'B8671', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(150, 39, 60, 'percentage', 'campaign', NULL, 'B8673', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(151, 40, 60, 'percentage', 'campaign', NULL, 'C9996', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(152, 41, 60, 'percentage', 'campaign', NULL, 'B7752', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(153, 42, 60, 'percentage', 'campaign', NULL, 'B9677', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(154, 42, 60, 'percentage', 'campaign', NULL, 'B9678', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(155, 43, 60, 'percentage', 'campaign', NULL, 'C3610', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(156, 44, 30, 'percentage', 'campaign', NULL, 'C9341', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(157, 44, 30, 'percentage', 'campaign', NULL, 'C9342', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(158, 45, 60, 'percentage', 'campaign', NULL, 'C3346', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(159, 47, 60, 'percentage', 'campaign', NULL, 'C6979', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(160, 48, 60, 'percentage', 'campaign', NULL, 'C6662', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(161, 49, 60, 'percentage', 'campaign', NULL, 'C6668', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(162, 49, 60, 'percentage', 'campaign', NULL, 'C6669', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(163, 49, 60, 'percentage', 'campaign', NULL, 'C6670', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(164, 50, 30, 'percentage', 'campaign', NULL, 'C9919', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(165, 51, 30, 'percentage', 'campaign', NULL, 'D0080', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(166, 51, 30, 'percentage', 'campaign', NULL, 'D0081', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(167, 51, 30, 'percentage', 'campaign', NULL, 'D0083', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(168, 51, 30, 'percentage', 'campaign', NULL, 'D0084', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(169, 53, 60, 'percentage', 'campaign', NULL, 'C6242', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(170, 54, 60, 'percentage', 'campaign', NULL, 'C7363', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(171, 54, 60, 'percentage', 'campaign', NULL, 'C7366', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(172, 54, 60, 'percentage', 'campaign', NULL, 'C7367', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(173, 55, 30, 'percentage', 'campaign', NULL, 'D0417', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(174, 55, 30, 'percentage', 'campaign', NULL, 'D0419', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(175, 55, 30, 'percentage', 'campaign', NULL, 'D0425', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(176, 56, 30, 'percentage', 'campaign', NULL, 'D0610', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(177, 58, 30, 'percentage', 'campaign', NULL, 'C9301', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(178, 59, 30, 'percentage', 'campaign', NULL, 'D0270', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(179, 60, 30, 'percentage', 'campaign', NULL, 'D0471', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(180, 61, 30, 'percentage', 'campaign', NULL, 'D0461', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(181, 61, 30, 'percentage', 'campaign', NULL, 'D0463', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(182, 61, 30, 'percentage', 'campaign', NULL, 'D0465', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(183, 61, 30, 'percentage', 'campaign', NULL, 'D0467', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(184, 61, 30, 'percentage', 'campaign', NULL, 'D0469', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(185, 62, 30, 'percentage', 'campaign', NULL, 'D0481', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(186, 62, 30, 'percentage', 'campaign', NULL, 'D0483', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(187, 62, 30, 'percentage', 'campaign', NULL, 'D0485', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(188, 62, 30, 'percentage', 'campaign', NULL, 'D0487', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(189, 62, 30, 'percentage', 'campaign', NULL, 'D0489', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(190, 63, 60, 'percentage', 'campaign', NULL, 'B1460', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(191, 64, 60, 'percentage', 'campaign', NULL, 'C5174', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(192, 65, 60, 'percentage', 'campaign', NULL, 'C5202', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(193, 65, 60, 'percentage', 'campaign', NULL, 'C5205', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(194, 66, 60, 'percentage', 'campaign', NULL, 'C4901', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(195, 66, 60, 'percentage', 'campaign', NULL, 'C4902', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(196, 67, 60, 'percentage', 'campaign', NULL, 'B6135', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(197, 67, 60, 'percentage', 'campaign', NULL, 'B6136', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(198, 67, 60, 'percentage', 'campaign', NULL, 'B6137', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(199, 68, 60, 'percentage', 'campaign', NULL, 'B6140', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(200, 68, 60, 'percentage', 'campaign', NULL, 'B6143', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(201, 69, 60, 'percentage', 'campaign', NULL, 'B6155', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(202, 69, 15, 'percentage', 'campaign', NULL, 'B6157', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(203, 69, 60, 'percentage', 'campaign', NULL, 'B6158', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(204, 70, 60, 'percentage', 'campaign', NULL, 'C7112', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(205, 70, 60, 'percentage', 'campaign', NULL, 'C7114', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(206, 70, 60, 'percentage', 'campaign', NULL, 'C7115', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(207, 71, 60, 'percentage', 'campaign', NULL, 'C6772', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(208, 71, 60, 'percentage', 'campaign', NULL, 'C6773', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(209, 71, 60, 'percentage', 'campaign', NULL, 'C6774', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(210, 71, 60, 'percentage', 'campaign', NULL, 'C6775', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(211, 71, 60, 'percentage', 'campaign', NULL, 'C7099', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(212, 71, 60, 'percentage', 'campaign', NULL, 'C7100', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(213, 71, 60, 'percentage', 'campaign', NULL, 'C7101', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(214, 72, 30, 'percentage', 'campaign', NULL, 'D2114', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(215, 72, 30, 'percentage', 'campaign', NULL, 'D2116', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(216, 72, 30, 'percentage', 'campaign', NULL, 'D2118', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(217, 72, 30, 'percentage', 'campaign', NULL, 'D2120', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(218, 72, 30, 'percentage', 'campaign', NULL, 'D2122', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(219, 73, 30, 'percentage', 'campaign', NULL, 'D2571', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(220, 73, 30, 'percentage', 'campaign', NULL, 'D2573', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(221, 73, 30, 'percentage', 'campaign', NULL, 'D2575', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(222, 73, 30, 'percentage', 'campaign', NULL, 'D2579', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(223, 74, 30, 'percentage', 'campaign', NULL, 'D2307', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(224, 74, 30, 'percentage', 'campaign', NULL, 'D2309', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(225, 74, 30, 'percentage', 'campaign', NULL, 'D2311', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(226, 74, 30, 'percentage', 'campaign', NULL, 'D2313', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(227, 75, 30, 'percentage', 'campaign', NULL, 'D2777', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(228, 75, 30, 'percentage', 'campaign', NULL, 'D2779', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(229, 75, 30, 'percentage', 'campaign', NULL, 'D2781', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(230, 75, 30, 'percentage', 'campaign', NULL, 'D2783', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(231, 75, 30, 'percentage', 'campaign', NULL, 'D2785', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(232, 76, 30, 'percentage', 'campaign', NULL, 'D2064', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(233, 76, 30, 'percentage', 'campaign', NULL, 'D2066', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(234, 78, 30, 'percentage', 'campaign', NULL, 'D2317', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(235, 78, 30, 'percentage', 'campaign', NULL, 'D2319', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(236, 78, 30, 'percentage', 'campaign', NULL, 'D2321', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(237, 78, 30, 'percentage', 'campaign', NULL, 'D2323', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(238, 78, 30, 'percentage', 'campaign', NULL, 'D2325', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(239, 79, 30, 'percentage', 'campaign', NULL, 'D2124', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(240, 79, 30, 'percentage', 'campaign', NULL, 'D2126', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(241, 79, 30, 'percentage', 'campaign', NULL, 'D2128', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(242, 79, 30, 'percentage', 'campaign', NULL, 'D2130', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(243, 79, 30, 'percentage', 'campaign', NULL, 'D2132', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(244, 80, 30, 'percentage', 'campaign', NULL, 'D2337', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(245, 80, 30, 'percentage', 'campaign', NULL, 'D2339', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(246, 80, 30, 'percentage', 'campaign', NULL, 'D2341', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(247, 80, 30, 'percentage', 'campaign', NULL, 'D2343', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(248, 80, 30, 'percentage', 'campaign', NULL, 'D2345', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(249, 81, 30, 'percentage', 'campaign', NULL, 'D2204', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(250, 81, 30, 'percentage', 'campaign', NULL, 'D2206', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(251, 81, 30, 'percentage', 'campaign', NULL, 'D2208', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(252, 81, 30, 'percentage', 'campaign', NULL, 'D2210', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(253, 81, 30, 'percentage', 'campaign', NULL, 'D2212', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(254, 82, 30, 'percentage', 'campaign', NULL, 'D2459', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(255, 82, 30, 'percentage', 'campaign', NULL, 'D2463', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(256, 83, 30, 'percentage', 'campaign', NULL, 'D2327', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(257, 83, 30, 'percentage', 'campaign', NULL, 'D2329', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(258, 83, 30, 'percentage', 'campaign', NULL, 'D2331', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(259, 84, 30, 'percentage', 'campaign', NULL, 'D2767', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(260, 84, 30, 'percentage', 'campaign', NULL, 'D2769', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(261, 84, 30, 'percentage', 'campaign', NULL, 'D2771', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(262, 84, 30, 'percentage', 'campaign', NULL, 'D2773', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(263, 84, 30, 'percentage', 'campaign', NULL, 'D2775', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(264, 85, 30, 'percentage', 'campaign', NULL, 'D3019', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(265, 85, 30, 'percentage', 'campaign', NULL, 'D3020', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(266, 85, 30, 'percentage', 'campaign', NULL, 'D3021', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(267, 86, 30, 'percentage', 'campaign', NULL, 'D3060', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(268, 86, 30, 'percentage', 'campaign', NULL, 'D3061', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(269, 86, 30, 'percentage', 'campaign', NULL, 'D3062', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(270, 86, 30, 'percentage', 'campaign', NULL, 'D3064', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(271, 87, 15, 'percentage', 'campaign', NULL, 'D3029', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(272, 87, 15, 'percentage', 'campaign', NULL, 'D3030', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(273, 87, 15, 'percentage', 'campaign', NULL, 'D3031', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(274, 87, 15, 'percentage', 'campaign', NULL, 'D3032', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(275, 88, 30, 'percentage', 'campaign', NULL, 'D2942', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(276, 88, 30, 'percentage', 'campaign', NULL, 'D3024', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(277, 88, 30, 'percentage', 'campaign', NULL, 'D3025', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(278, 88, 30, 'percentage', 'campaign', NULL, 'D3026', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(279, 88, 30, 'percentage', 'campaign', NULL, 'D3027', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(280, 89, 15, 'percentage', 'campaign', NULL, 'D3146', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(281, 89, 15, 'percentage', 'campaign', NULL, 'D3147', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(282, 89, 15, 'percentage', 'campaign', NULL, 'D3148', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(283, 90, 15, 'percentage', 'campaign', NULL, 'D3130', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(284, 90, 15, 'percentage', 'campaign', NULL, 'D3131', 1, NULL, '2023-11-06 08:02:57', '2023-11-06 08:02:57'),
(285, 90, 15, 'percentage', 'campaign', NULL, 'D3132', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(286, 91, 15, 'percentage', 'campaign', NULL, 'D3340', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(287, 91, 15, 'percentage', 'campaign', NULL, 'D3341', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(288, 92, 15, 'percentage', 'campaign', NULL, 'D3331', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(289, 93, 15, 'percentage', 'campaign', NULL, 'D3152', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(290, 93, 15, 'percentage', 'campaign', NULL, 'D3153', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(291, 95, 10, 'percentage', 'campaign', NULL, 'C8449', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(292, 97, 0, 'percentage', 'campaign', NULL, 'D3005', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(293, 100, 0, 'percentage', 'campaign', NULL, 'D2301', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(294, 101, 0, 'percentage', 'campaign', NULL, 'D2297', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(295, 102, 10, 'percentage', 'campaign', NULL, 'C9977', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(296, 103, 10, 'percentage', 'campaign', NULL, 'C9979', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(297, 104, 10, 'percentage', 'campaign', NULL, 'D0064', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(298, 106, 20, 'percentage', 'campaign', NULL, 'D0411', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(299, 107, 20, 'percentage', 'campaign', NULL, 'D0413', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(300, 108, 10, 'percentage', 'campaign', NULL, 'D0519', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(301, 109, 20, 'percentage', 'campaign', NULL, 'D0539', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(302, 110, 10, 'percentage', 'campaign', NULL, 'D0455', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(303, 111, 20, 'percentage', 'campaign', NULL, 'D0553', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(304, 112, 10, 'percentage', 'campaign', NULL, 'D0555', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(305, 113, 60, 'percentage', 'campaign', NULL, 'B8047', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(306, 114, 60, 'percentage', 'campaign', NULL, 'C2844', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(307, 115, 15, 'percentage', 'campaign', NULL, 'C8301', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(308, 115, 15, 'percentage', 'campaign', NULL, 'C8302', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(309, 115, 15, 'percentage', 'campaign', NULL, 'C8303', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(310, 116, 60, 'percentage', 'campaign', NULL, 'B9160', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(311, 118, 10, 'percentage', 'campaign', NULL, 'C9395', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(312, 118, 10, 'percentage', 'campaign', NULL, 'C9396', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(313, 118, 10, 'percentage', 'campaign', NULL, 'C9397', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(314, 119, 60, 'percentage', 'campaign', NULL, 'C7185', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(315, 121, 10, 'percentage', 'campaign', NULL, 'D0662', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(316, 123, 60, 'percentage', 'campaign', NULL, 'C2322', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(317, 123, 60, 'percentage', 'campaign', NULL, 'C2323', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(318, 123, 60, 'percentage', 'campaign', NULL, 'C2324', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(319, 124, 60, 'percentage', 'campaign', NULL, 'C5166', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(320, 125, 60, 'percentage', 'campaign', NULL, 'C4974', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(321, 125, 60, 'percentage', 'campaign', NULL, 'C4975', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(322, 125, 60, 'percentage', 'campaign', NULL, 'C4977', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(323, 126, 60, 'percentage', 'campaign', NULL, 'C6069', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(324, 128, 10, 'percentage', 'campaign', NULL, 'D0826', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(325, 128, 10, 'percentage', 'campaign', NULL, 'D0828', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(326, 129, 10, 'percentage', 'campaign', NULL, 'D0822', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(327, 130, 10, 'percentage', 'campaign', NULL, 'D0788', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(328, 131, 10, 'percentage', 'campaign', NULL, 'D0830', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(329, 132, 15, 'percentage', 'campaign', NULL, 'C9131', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(330, 132, 15, 'percentage', 'campaign', NULL, 'C9132', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(331, 133, 60, 'percentage', 'campaign', NULL, 'C6031', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(332, 133, 60, 'percentage', 'campaign', NULL, 'C6032', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(333, 133, 60, 'percentage', 'campaign', NULL, 'C6034', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(334, 133, 60, 'percentage', 'campaign', NULL, 'C6035', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(335, 134, 10, 'percentage', 'campaign', NULL, 'D2020', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(336, 136, 60, 'percentage', 'campaign', NULL, 'C6724', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(337, 136, 60, 'percentage', 'campaign', NULL, 'C6725', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(338, 136, 60, 'percentage', 'campaign', NULL, 'C6726', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(339, 137, 60, 'percentage', 'campaign', NULL, 'C7106', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(340, 137, 60, 'percentage', 'campaign', NULL, 'C7107', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(341, 137, 60, 'percentage', 'campaign', NULL, 'C7108', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(342, 137, 60, 'percentage', 'campaign', NULL, 'C7109', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(343, 137, 60, 'percentage', 'campaign', NULL, 'C7501', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(344, 138, 60, 'percentage', 'campaign', NULL, 'C6729', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(345, 138, 60, 'percentage', 'campaign', NULL, 'C6730', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(346, 138, 60, 'percentage', 'campaign', NULL, 'C6731', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(347, 139, 60, 'percentage', 'campaign', NULL, 'C6997', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(348, 139, 60, 'percentage', 'campaign', NULL, 'C6998', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(349, 139, 60, 'percentage', 'campaign', NULL, 'C6999', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(350, 139, 60, 'percentage', 'campaign', NULL, 'C7000', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(351, 140, 60, 'percentage', 'campaign', NULL, 'C5747', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(352, 141, 10, 'percentage', 'campaign', NULL, 'D3170', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(353, 141, 10, 'percentage', 'campaign', NULL, 'D3171', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(354, 141, 10, 'percentage', 'campaign', NULL, 'D3172', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(355, 142, 10, 'percentage', 'campaign', NULL, 'D3116', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(356, 142, 10, 'percentage', 'campaign', NULL, 'D3117', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(357, 142, 10, 'percentage', 'campaign', NULL, 'D3118', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(358, 143, 10, 'percentage', 'campaign', NULL, 'D3124', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(359, 143, 10, 'percentage', 'campaign', NULL, 'D3126', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(360, 144, 10, 'percentage', 'campaign', NULL, 'D2917', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(361, 144, 10, 'percentage', 'campaign', NULL, 'D2918', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(364, 146, 10, 'percentage', 'campaign', NULL, 'D2956', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(365, 146, 10, 'percentage', 'campaign', NULL, 'D2958', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(366, 147, 10, 'percentage', 'campaign', NULL, 'D1582', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(367, 147, 10, 'percentage', 'campaign', NULL, 'D1584', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(368, 148, 0, 'percentage', 'campaign', NULL, 'D2607', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(369, 151, 0, 'percentage', 'campaign', NULL, 'D1968', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(370, 152, 0, 'percentage', 'campaign', NULL, 'D1972', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(371, 152, 0, 'percentage', 'campaign', NULL, 'D2299', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(372, 153, 10, 'percentage', 'campaign', NULL, 'D3178', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(373, 154, 10, 'percentage', 'campaign', NULL, 'D3120', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(374, 155, 10, 'percentage', 'campaign', NULL, 'D1912', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(375, 155, 10, 'percentage', 'campaign', NULL, 'D1914', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(376, 155, 10, 'percentage', 'campaign', NULL, 'D1916', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(377, 158, 10, 'percentage', 'campaign', NULL, 'D2347', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(378, 160, 10, 'percentage', 'campaign', NULL, 'D2256', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(379, 161, 10, 'percentage', 'campaign', NULL, 'D2551', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(380, 161, 10, 'percentage', 'campaign', NULL, 'D2553', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(381, 162, 10, 'percentage', 'campaign', NULL, 'D2545', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(382, 162, 10, 'percentage', 'campaign', NULL, 'D2547', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(383, 163, 10, 'percentage', 'campaign', NULL, 'D2791', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(384, 163, 10, 'percentage', 'campaign', NULL, 'D2793', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(385, 163, 10, 'percentage', 'campaign', NULL, 'D2795', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(386, 166, 10, 'percentage', 'campaign', NULL, 'D2787', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(387, 167, 10, 'percentage', 'campaign', NULL, 'D2934', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(388, 169, 10, 'percentage', 'campaign', NULL, 'D2673', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(389, 170, 10, 'percentage', 'campaign', NULL, 'D2930', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(390, 171, 10, 'percentage', 'campaign', NULL, 'D2993', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(391, 172, 10, 'percentage', 'campaign', NULL, 'D2975', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(392, 174, 10, 'percentage', 'campaign', NULL, 'D0936', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(393, 175, 10, 'percentage', 'campaign', NULL, 'D0938', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(394, 176, 10, 'percentage', 'campaign', NULL, 'D0928', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(395, 177, 10, 'percentage', 'campaign', NULL, 'D0926', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(396, 178, 20, 'percentage', 'campaign', NULL, 'D0986', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(397, 179, 10, 'percentage', 'campaign', NULL, 'D0966', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(398, 180, 20, 'percentage', 'campaign', NULL, 'D0980', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(399, 181, 20, 'percentage', 'campaign', NULL, 'D1042', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(400, 182, 20, 'percentage', 'campaign', NULL, 'D1310', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(401, 184, 10, 'percentage', 'campaign', NULL, 'D1768', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(402, 185, 10, 'percentage', 'campaign', NULL, 'D2082', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(403, 186, 10, 'percentage', 'campaign', NULL, 'D2250', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(404, 187, 10, 'percentage', 'campaign', NULL, 'D1644', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(405, 188, 10, 'percentage', 'campaign', NULL, 'D1564', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(406, 189, 10, 'percentage', 'campaign', NULL, 'D1724', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(407, 190, 10, 'percentage', 'campaign', NULL, 'D1824', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(408, 191, 10, 'percentage', 'campaign', NULL, 'D1854', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(409, 192, 20, 'percentage', 'campaign', NULL, 'D1888', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(410, 193, 20, 'percentage', 'campaign', NULL, 'D1878', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(411, 194, 20, 'percentage', 'campaign', NULL, 'D2032', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(412, 195, 10, 'percentage', 'campaign', NULL, 'D1764', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(413, 196, 10, 'percentage', 'campaign', NULL, 'D1962', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(414, 197, 10, 'percentage', 'campaign', NULL, 'D1966', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(415, 198, 10, 'percentage', 'campaign', NULL, 'D2269', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(416, 199, 10, 'percentage', 'campaign', NULL, 'D2088', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(417, 200, 10, 'percentage', 'campaign', NULL, 'D2248', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(418, 201, 10, 'percentage', 'campaign', NULL, 'D2026', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(419, 202, 10, 'percentage', 'campaign', NULL, 'D2090', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(420, 203, 10, 'percentage', 'campaign', NULL, 'D2024', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(421, 204, 10, 'percentage', 'campaign', NULL, 'D2387', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(422, 205, 20, 'percentage', 'campaign', NULL, 'D2273', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(423, 206, 20, 'percentage', 'campaign', NULL, 'D2271', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(424, 207, 10, 'percentage', 'campaign', NULL, 'D2367', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(425, 208, 10, 'percentage', 'campaign', NULL, 'D2246', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(426, 209, 10, 'percentage', 'campaign', NULL, 'D2275', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(427, 210, 20, 'percentage', 'campaign', NULL, 'D2429', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(428, 211, 20, 'percentage', 'campaign', NULL, 'D2667', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(429, 212, 10, 'percentage', 'campaign', NULL, 'D2601', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(430, 213, 10, 'percentage', 'campaign', NULL, 'D2884', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(431, 214, 10, 'percentage', 'campaign', NULL, 'D2665', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(432, 215, 10, 'percentage', 'campaign', NULL, 'D2737', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(433, 216, 10, 'percentage', 'campaign', NULL, 'D2882', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(434, 217, 10, 'percentage', 'campaign', NULL, 'D2880', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(435, 218, 10, 'percentage', 'campaign', NULL, 'D2954', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(436, 219, 10, 'percentage', 'campaign', NULL, 'D2924', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(437, 220, 10, 'percentage', 'campaign', NULL, 'D2888', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(438, 221, 10, 'percentage', 'campaign', NULL, 'D2890', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(439, 223, 10, 'percentage', 'campaign', NULL, 'D2968', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(440, 224, 10, 'percentage', 'campaign', NULL, 'D3052', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(441, 227, 10, 'percentage', 'campaign', NULL, 'D3323', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(442, 227, 10, 'percentage', 'campaign', NULL, 'D3324', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(443, 227, 10, 'percentage', 'campaign', NULL, 'D3325', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(444, 227, 10, 'percentage', 'campaign', NULL, 'D3326', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(445, 228, 10, 'percentage', 'campaign', NULL, 'D3048', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(446, 228, 10, 'percentage', 'campaign', NULL, 'D3049', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(447, 228, 10, 'percentage', 'campaign', NULL, 'D3050', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(448, 229, 10, 'percentage', 'campaign', NULL, 'D2970', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(449, 229, 10, 'percentage', 'campaign', NULL, 'D2971', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(450, 229, 10, 'percentage', 'campaign', NULL, 'D3268', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(451, 230, 10, 'percentage', 'campaign', NULL, 'D3066', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(452, 230, 10, 'percentage', 'campaign', NULL, 'D3067', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(453, 230, 10, 'percentage', 'campaign', NULL, 'D3068', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(454, 230, 10, 'percentage', 'campaign', NULL, 'D3069', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(455, 231, 10, 'percentage', 'campaign', NULL, 'D3136', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(456, 231, 10, 'percentage', 'campaign', NULL, 'D3137', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(457, 232, 60, 'percentage', 'campaign', NULL, 'C5627', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(458, 2, 60, 'percentage', 'campaign', NULL, 'C4525', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58');
INSERT INTO `discounts` (`id`, `product_id`, `discount_amount`, `discount_type`, `type`, `max_amount`, `disc_sku`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(459, 2, 60, 'percentage', 'campaign', NULL, 'C4527', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(460, 2, 60, 'percentage', 'campaign', NULL, 'C4528', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(461, 2, 60, 'percentage', 'campaign', NULL, 'C4540', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(462, 52, 60, 'percentage', 'campaign', NULL, 'C6224', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(463, 159, 10, 'percentage', 'campaign', NULL, 'D2353', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58'),
(464, 159, 10, 'percentage', 'campaign', NULL, 'D2359', 1, NULL, '2023-11-06 08:02:58', '2023-11-06 08:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `embellishments`
--

CREATE TABLE `embellishments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `embellishment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `embellishments`
--

INSERT INTO `embellishments` (`id`, `embellishment_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cotton Print', 'cotton-print', NULL, 1, NULL, '2023-03-07 04:57:04', '2023-03-11 09:28:07'),
(2, 'Block Print', 'block-print', NULL, 1, NULL, '2023-03-07 04:57:11', '2023-03-11 09:27:43'),
(3, 'Anokhi Wax Print', 'anokhi-wax-print', NULL, 1, NULL, '2023-03-07 05:56:30', '2023-03-11 09:27:22'),
(4, 'Anokhi Print', 'anokhi-print', NULL, 1, NULL, '2023-03-07 05:56:35', '2023-03-11 09:26:58'),
(5, 'Crush Dye', 'crush-dye', NULL, 1, NULL, '2023-03-11 09:28:27', '2023-03-11 09:28:27'),
(6, 'Hand Loom', 'hand-loom', NULL, 1, NULL, '2023-03-11 09:28:45', '2023-03-11 09:28:45'),
(7, 'Kantha', 'kantha', NULL, 1, NULL, '2023-03-11 09:29:06', '2023-03-11 09:29:06'),
(8, 'Plain Dye', 'plain-dye', NULL, 1, NULL, '2023-03-11 09:29:39', '2023-03-11 09:29:39'),
(9, 'Karchupi Dye', 'karchupi-dye', NULL, 1, NULL, '2023-03-11 09:30:10', '2023-03-11 09:30:10'),
(10, 'Kota Wax Print', 'kota-wax-print', NULL, 1, NULL, '2023-03-11 09:30:28', '2023-03-11 09:30:28'),
(11, 'Patch Print', 'patch-print', NULL, 1, NULL, '2023-03-11 09:30:56', '2023-03-11 09:30:56'),
(12, 'Pipe Tie Dye', 'pipe-tie-dye', NULL, 1, NULL, '2023-03-11 09:31:31', '2023-03-11 09:31:31'),
(13, 'Print', 'print', NULL, 1, NULL, '2023-03-11 09:31:56', '2023-03-11 09:31:56'),
(14, 'Shibori Dye', 'shibori-dye', NULL, 1, NULL, '2023-03-11 09:32:23', '2023-03-11 09:32:23'),
(15, 'Silver & Rudrksha', 'silver-rudrksha', NULL, 1, NULL, '2023-03-11 09:32:49', '2023-03-11 09:32:49'),
(16, 'Tie Dye', 'tie-dye', NULL, 1, NULL, '2023-03-11 09:33:29', '2023-03-11 09:33:29'),
(17, 'Voil Print', 'voil-print', NULL, 1, NULL, '2023-03-11 09:33:49', '2023-03-11 09:33:49'),
(18, 'Wax Print', 'wax-print', NULL, 1, NULL, '2023-03-11 09:34:20', '2023-03-11 09:34:20'),
(19, 'Embroidery', 'embroidery', NULL, 1, NULL, '2023-03-11 09:36:18', '2023-03-11 09:36:18'),
(20, 'testing', 'testing', NULL, 1, NULL, '2023-09-21 11:55:35', '2023-09-21 11:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `fabrics`
--

CREATE TABLE `fabrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fabric_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fabrics`
--

INSERT INTO `fabrics` (`id`, `fabric_name`, `fabric_code`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Balaka Silk', 'Balaka Silk', 'balaka-silk', NULL, 1, NULL, '2023-03-07 04:55:22', '2023-03-11 09:05:11'),
(2, 'Aatong', 'Aatong', 'aatong', NULL, 1, NULL, '2023-03-07 04:55:32', '2023-03-11 09:04:36'),
(3, 'Bexi Voil', 'Bexi Voil', 'bexi-voil', NULL, 1, NULL, '2023-03-11 09:05:42', '2023-03-11 09:05:42'),
(4, 'Cotton', 'Cotton', 'cotton', NULL, 1, NULL, '2023-03-11 09:06:08', '2023-03-11 09:06:08'),
(5, 'Cotton Allover Print', 'Cotton Allover Print', 'cotton-allover-print', NULL, 1, NULL, '2023-03-11 09:06:28', '2023-03-11 09:06:28'),
(7, 'Cotton Paar Anchol', 'Cotton Paar Anchol', 'cotton-paar-anchol', NULL, 1, NULL, '2023-03-11 09:07:05', '2023-03-11 09:07:05'),
(8, 'Cotton Paar Anchol Print', 'Cotton Paar Anchol Print', 'cotton-paar-anchol-print', NULL, 1, NULL, '2023-03-11 09:07:31', '2023-03-11 09:07:31'),
(10, 'Cotton Voil', 'Cotton Voil', 'cotton-voil', NULL, 1, NULL, '2023-03-11 09:08:13', '2023-03-11 09:08:13'),
(11, 'Crepe Silk', 'Crepe Silk', 'crepe-silk', NULL, 1, NULL, '2023-03-11 09:08:53', '2023-03-11 09:08:53'),
(12, 'Denim', 'Denim', 'denim', NULL, 1, NULL, '2023-03-11 09:09:16', '2023-03-11 09:09:16'),
(13, 'Denim', 'Denim', 'denim', NULL, 1, NULL, '2023-03-11 09:09:16', '2023-03-11 09:09:16'),
(14, 'Endi Cotton', 'Endi Cotton', 'endi-cotton', NULL, 1, NULL, '2023-03-11 09:09:40', '2023-03-11 09:09:40'),
(15, 'Endi Cotton Paar Anchol Dye', 'Endi Cotton Paar Anchol Dye', 'endi-cotton-paar-anchol-dye', NULL, 1, NULL, '2023-03-11 09:10:06', '2023-03-11 09:10:06'),
(18, 'Endi Silk', 'Endi Silk', 'endi-silk', NULL, 1, NULL, '2023-03-11 09:11:43', '2023-03-11 09:11:43'),
(21, 'Khadi', 'Khadi', 'khadi', NULL, 1, NULL, '2023-03-11 09:13:03', '2023-03-11 09:13:03'),
(22, 'Knit Cotton', 'Knit Cotton', 'knit-cotton', NULL, 1, NULL, '2023-03-11 09:13:42', '2023-03-11 09:13:42'),
(23, 'Linen', 'Linen', 'linen', NULL, 1, NULL, '2023-03-11 09:14:06', '2023-03-11 09:14:06'),
(24, 'Linen Anokhi Wax Print', 'Linen Anokhi Wax Print', 'linen-anokhi-wax-print', NULL, 1, NULL, '2023-03-11 09:14:32', '2023-03-11 09:14:32'),
(25, 'Silk', 'Silk', 'silk', NULL, 1, NULL, '2023-03-11 09:15:04', '2023-03-11 09:15:04'),
(26, 'Silk Allover Dye', 'Silk Allover Dye', 'silk-allover-dye', NULL, 1, NULL, '2023-03-11 09:15:30', '2023-03-11 09:15:30'),
(27, 'Silk Paar Anchol Nakshi Dye', 'Silk Paar Anchol Nakshi Dye', 'silk-paar-anchol-nakshi-dye', NULL, 1, NULL, '2023-03-11 09:15:56', '2023-03-11 09:15:56'),
(28, 'Voil', 'Voil', 'voil', NULL, 1, NULL, '2023-03-11 09:16:19', '2023-03-11 09:16:19'),
(29, 'Kota', 'Kota', 'kota', NULL, 1, NULL, '2023-04-06 08:35:44', '2023-04-06 08:35:44'),
(30, 'Endi Half Silk', 'Endi Half Silk', 'endi-half-silk', NULL, 1, NULL, '2023-04-06 08:36:31', '2023-04-06 08:36:31'),
(31, 'Maslin', 'Maslin', 'maslin', NULL, 1, NULL, '2023-04-06 08:36:49', '2023-04-06 08:37:14'),
(32, 'Kntha sitch', 'Kntha sitch', 'kntha-sitch', NULL, 1, NULL, '2023-04-06 08:37:36', '2023-04-06 08:37:36'),
(33, 'Plastic', 'PL220', 'plastic', NULL, 1, NULL, '2023-09-21 11:48:40', '2023-09-21 11:48:40'),
(35, 'Soft Silk', 'Soft Silk', 'soft-silk', NULL, 1, NULL, '2023-10-19 05:25:46', '2023-10-19 05:25:46'),
(36, 'Viscose', 'Viscose', 'viscose', NULL, 1, NULL, '2023-10-19 05:26:03', '2023-10-19 05:26:03'),
(37, 'Half Silk', 'Half Silk', 'half-silk', NULL, 1, NULL, '2023-10-19 05:26:19', '2023-10-19 05:26:19'),
(38, 'Cotton Kota', 'Cotton Kota', 'cotton-kota', NULL, 1, NULL, '2023-10-19 05:26:40', '2023-10-19 05:26:40'),
(39, 'Cotton Than', 'Cotton Than', 'cotton-than', NULL, 1, NULL, '2023-10-19 05:26:54', '2023-10-19 05:26:54'),
(40, 'Jute Cotton', 'Jute Cotton', 'jute-cotton', NULL, 1, NULL, '2023-10-19 05:27:38', '2023-10-19 05:27:38'),
(41, 'Eri Cotton', 'Eri Cotton', 'eri-cotton', NULL, 1, NULL, '2023-10-19 05:27:54', '2023-10-19 05:27:54'),
(42, 'Eri Silk', 'Eri Silk', 'eri-silk', NULL, 1, NULL, '2023-10-19 05:28:57', '2023-10-19 05:28:57'),
(43, 'Cotton Paar Anchol Kantha', 'Cotton Paar Anchol Kantha', 'cotton-paar-anchol-kantha', NULL, 1, NULL, '2023-10-19 05:30:33', '2023-10-19 05:30:33'),
(44, 'Endi Cotton Paar Anchol Kantha', 'Endi Cotton Paar Anchol Kantha', 'endi-cotton-paar-anchol-kantha', NULL, 1, NULL, '2023-10-19 05:31:06', '2023-10-19 05:31:06'),
(45, 'Silk Allover Kantha', 'Silk Allover Kantha', 'silk-allover-kantha', NULL, 1, NULL, '2023-10-19 05:31:29', '2023-10-19 05:31:29'),
(46, 'Silk Kantha', 'Silk Kantha', 'silk-kantha', NULL, 1, NULL, '2023-10-19 05:31:57', '2023-10-19 05:31:57'),
(47, 'Endi Half Silk Anchol Print', 'Endi Half Silk Anchol Print', 'endi-half-silk-anchol-print', NULL, 1, NULL, '2023-10-19 05:38:37', '2023-10-19 05:38:37'),
(48, 'Crape Cotton', 'Crape Cotton', 'crape-cotton', NULL, 1, NULL, '2023-10-19 05:42:36', '2023-10-19 05:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fits`
--

CREATE TABLE `fits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fits`
--

INSERT INTO `fits` (`id`, `fit_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Slim Fit', 'slim-fit', NULL, 1, NULL, '2023-03-07 04:58:21', '2023-03-11 09:46:14'),
(2, 'Regular Fit', 'regular-fit', NULL, 1, NULL, '2023-09-21 11:56:51', '2023-09-21 11:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `informations`
--

CREATE TABLE `informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informations`
--

INSERT INTO `informations` (`id`, `title`, `slug`, `back_link`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', 'privacy-policy', 'https://staging.aranya.com.bd/privacy-policy', '<p>Aranya (â€œwe,â€ â€œour,â€ or â€œusâ€) is committed to protecting your privacy. This Privacy Policy explains how your personal information is collected, used, and disclosed by Aranya.</p><p>&nbsp;</p><p>This Privacy Policy applies to our website, and its associated subdomains (collectively, our â€œServiceâ€) alongside our application, Aranya. By accessing or using our Service, you signify that you have read, understood, and agree to our collection, storage, use, and disclosure of your personal information as described in this Privacy Policy and our Terms of Service.</p><p>&nbsp;</p><h2>Definitions and key terms</h2><p>To help explain things as clearly as possible in this Privacy Policy, every time any of these terms are referenced, are strictly defined as:</p><p>&nbsp;</p><ul><li>Cookie:&nbsp;small amount of data generated by a website and saved by your web browser. It is used to identify your browser, provide analytics, remember information about you such as your language preference or login information.</li><li>Company: when this policy mentions â€œCompany,â€ â€œwe,â€ â€œus,â€ or â€œour,â€ it refers to Aranya, (House 1/A, Road 21 Nikunja 2, Khilkhet Dhaka 1229, Bangladesh), that is responsible for your information under this Privacy Policy.</li><li>Country: where Aranya or the owners/founders of Aranya are based, in this case is Bangladesh</li><li>Customer:&nbsp;refers to the company, organization or person that signs up to use the Aranya Service to manage the relationships with your consumers or service users.</li><li>Device:&nbsp;any internet connected device such as a phone, tablet, computer or any other device that can be used to visit Aranya and use the services.</li><li>IP address: Every device connected to the Internet is assigned a number known as an Internet protocol (IP) address. These numbers are usually assigned in geographic blocks. An IP address can often be used to identify the location from which a device is connecting to the Internet.</li><li>Personnel:&nbsp;refers to those individuals who are employed by Aranya or are under contract to perform a service on behalf of one of the parties.</li><li>Personal Data: any information that directly, indirectly, or in connection with other information â€” including a personal identification number â€” allows for the identification or identifiability of a natural person.</li><li>Service: refers to the service provided by Aranya as described in the relative terms (if available) and on this platform. </li><li>Third-party service:&nbsp;refers to advertisers, contest sponsors, promotional and marketing partners, and others who provide our content or whose products or services we think may interest you.</li><li>Website: Aranyaâ€™s site, which can be accessed via this URL: https://www.aranya.com.bd</li><li>You: a person or entity that is registered with Aranya to use the Services.</li></ul><p>&nbsp;</p><h2>What Information Do We Collect?</h2><p>We collect information from you when you visit our website, register on our site, place an order, subscribe to our newsletter, respond to a survey or fill out a form.</p><p>&nbsp;</p><ul><li>Name / Username</li><li>Phone Numbers</li><li>Email Addresses</li><li>Billing Addresses</li><li>Debit/credit card numbers</li></ul><p>&nbsp;</p><p>We also collect information from mobile devices for a better user experience, although these features are completely optional:</p><p>&nbsp;</p><ul><li>Location (GPS): Location data&nbsp;helps to create an accurate representation of your interests, and this can be used to bring more targeted and relevant ads to potential customers.</li></ul><p>&nbsp;</p><h2>When does Aranya use end user information from third parties?</h2><p>Aranya will collect End User Data necessary to provide the Aranya services to our customers. End users may voluntarily provide us with information they have made available on social media websites. If you provide us with any such information, we may collect publicly available information from the social media websites you have indicated. You can control how much of your information social media websites make public by visiting these websites and changing your privacy settings.</p><p>&nbsp;</p><h2>When does Aranya use customer information from third parties?</h2><p>We receive some information from the third parties when you contact us. For example, when you submit your email address to us to show interest in becoming a Aranya customer, we receive information from a third party that provides automated fraud detection services to Aranya. We also occasionally collect information that is made publicly available on social media websites. You can control how much of your information social media websites make public by visiting these websites and changing your privacy settings.</p><p>&nbsp;</p><h2>Do we share the information we collect with third parties?</h2><p>We may share the information that we collect, both personal and non-personal, with third parties such as advertisers, contest sponsors, promotional and marketing partners, and others who provide our content or whose products or services we think may interest you. We may also share it with our current and future affiliated companies and business partners, and if we are involved in a merger, asset sale or other business reorganization, we may also share or transfer your personal and non-personal information to our successors-in-interest.</p><p>&nbsp;</p><p>We may engage trusted third party service providers to perform functions and provide services to us, such as hosting and maintaining our servers and the website, database storage and management, e-mail management, storage marketing, credit card processing, customer service and fulfilling orders for products and services you may purchase through the website. We will likely share your personal information, and possibly some non-personal information, with these third parties to enable them to perform these services for us and for you.</p><p>&nbsp;</p><p>We may share portions of our log file data, including IP addresses, for analytics purposes with third parties such as web analytics partners, application developers, and ad networks. If your IP address is shared, it may be used to estimate general location and other technographics such as connection speed, whether you have visited the website in a shared location, and type of the device used to visit the website. They may aggregate information about our advertising and what you see on the website and then provide auditing, research and reporting for us and our advertisers.</p><p>&nbsp;</p><p>We may also disclose personal and non-personal information about you to government or law enforcement officials or private parties as we, in our sole discretion, believe necessary or appropriate in order to respond to claims, legal process (including subpoenas), to protect our rights and interests or those of a third party, the safety of the public or any person, to prevent or stop any illegal, unethical, or legally actionable activity, or to otherwise comply with applicable court orders, laws, rules and regulations.</p><p>&nbsp;</p><h2>Where and when is information collected from customers and end users?</h2><p>Aranya will collect personal information that you submit to us. We may also receive personal information about you from third parties as described above.</p><p>&nbsp;</p><h2>How Do We Use The Information We Collect?</h2><p>Any of the information we collect from you may be used in one of the following ways: </p><ul><li>To personalize your experience (your information helps us to better respond to your individual needs)</li><li>To improve our website (we continually strive to improve our website offerings based on the information and feedback we receive from you)</li><li>To improve customer service (your information helps us to more effectively respond to your customer service requests and support needs)</li><li>To process transactions</li><li>To administer a contest, promotion, survey or other site feature</li><li>To send periodic emails</li></ul><p>&nbsp;</p><h2>How Do We Use Your Email Address?</h2><p>By submitting your email address on this website, you agree to receive emails from us. You can cancel your participation in any of these email lists at any time by clicking on the opt-out link or other unsubscribe option that is included in the respective email. We only send emails to people who have authorized us to contact them, either directly, or through a third party. We do not send unsolicited commercial emails, because we hate spam as much as you do. By submitting your email address, you also agree to allow us to use your email address for customer audience targeting on sites like Facebook, where we display custom advertising to specific people who have opted-in to receive communications from us. Email addresses submitted only through the order processing page will be used for the sole purpose of sending you information and updates pertaining to your order. If, however, you have provided the same email to us through another method, we may use it for any of the purposes stated in this Policy. Note: If at any time you would like to unsubscribe from receiving future emails, we include detailed unsubscribe instructions at the bottom of each email.</p><p>&nbsp;</p><h2>How Long Do We Keep Your Information?</h2><p>We keep your information only so long as we need it to provide Aranya to you and fulfill the purposes described in this policy. This is also the case for anyone that we share your information with and who carries out services on our behalf. When we no longer need to use your information and there is no need for us to keep it to comply with our legal or regulatory obligations, weâ€™ll either remove it from our systems or depersonalize it so that we can\'t identify you.</p><p>&nbsp;</p><h2>How Do We Protect Your Information?</h2><p>We implement a variety of security measures to maintain the safety of your personal information when you place an order or enter, submit, or access your personal information. We offer the use of a secure server. All supplied sensitive/credit information is transmitted via Secure Socket Layer (SSL) technology and then encrypted into our Payment gateway providers database only to be accessible by those authorized with special access rights to such systems, and are required to keep the information confidential. After a transaction, your private information (credit cards, social security numbers, financials, etc.) is never kept on file. We cannot, however, ensure or warrant the absolute security of any information you transmit to Aranya or guarantee that your information on the Service may not be accessed, disclosed, altered, or destroyed by a breach of any of our physical, technical, or managerial safeguards.</p><p>&nbsp;</p><h2>Could my information be transferred to other countries?</h2><p>Aranya is incorporated in Bangladesh. Information collected via our website, through direct interactions with you, or from use of our help services may be transferred from time to time to our offices or personnel, or to third parties, located throughout the world, and may be viewed and hosted anywhere in the world, including countries that may not have laws of general applicability regulating the use and transfer of such data. To the fullest extent allowed by applicable law, by using any of the above, you voluntarily consent to the trans-border transfer and hosting of such information.</p><p>&nbsp;</p><h2>Is the information collected through the Aranya Service secure?</h2><p>We take precautions to protect the security of your information. We have physical, electronic, and managerial procedures to help safeguard, prevent unauthorized access, maintain data security, and correctly use your information. However, neither people nor security systems are foolproof, including encryption systems. In addition, people can commit intentional crimes, make mistakes or fail to follow policies. Therefore, while we use reasonable efforts to protect your personal information, we cannot guarantee its absolute security. If applicable law imposes any non-disclaimable duty to protect your personal information, you agree that intentional misconduct will be the standards used to measure our compliance with that duty.</p><p>&nbsp;</p><h2>Can I update or correct my information?</h2><p>The rights you have to request updates or corrections to the information Aranya collects depend on your relationship with Aranya. Personnel may update or correct their information as detailed in our internal company employment policies.</p><p>&nbsp;</p><p>Customers have the right to request the restriction of certain uses and disclosures of personally identifiable information as follows. You can&nbsp;contact us in order to (1) update or correct your personally identifiable information, (2) change your preferences with respect to communications and other information you receive from us, or (3) delete the personally identifiable information maintained about you on our systems (subject to the following paragraph), by&nbsp;cancelling your account. Such updates, corrections, changes and deletions will have no effect on other information that we maintain, or information that we have provided to third parties in accordance with this Privacy Policy prior to such update, correction, change or deletion. To protect your privacy and security, we may take reasonable steps (such as requesting a unique password) to verify your identity before granting you profile access or making corrections. You are responsible for maintaining the secrecy of your unique password and account information at all times.</p><p>&nbsp;</p><p>You should be aware that it is not technologically possible to remove each and every record of the information you have provided to us from our system. The need to back up our systems to protect information from inadvertent loss means that a copy of your information may exist in a non-erasable form that will be difficult or impossible for us to locate. Promptly after receiving your request, all personal information stored in databases we actively use, and other readily searchable media will be updated, corrected, changed or deleted, as appropriate, as soon as and to the extent reasonably and technically practicable.</p><p>&nbsp;</p><p>If you are an end user and wish to update, delete, or receive any information we have about you, you may do so by contacting the organization of which you are a customer.</p><p>&nbsp;</p><h2>Personnel</h2><p>If you are a Aranya worker or applicant, we collect information you voluntarily provide to us. We use the information collected for Human Resources purposes in order to administer benefits to workers and screen applicants.</p><p>&nbsp;</p><p>You may contact us in order to (1) update or correct your information, (2) change your preferences with respect to communications and other information you receive from us, or (3) receive a record of the information we have relating to you. Such updates, corrections, changes and deletions will have no effect on other information that we maintain, or information that we have provided to third parties in accordance with this Privacy Policy prior to such update, correction, change or deletion.</p><p>&nbsp;</p><h2>Sale of Business</h2><p>We reserve the right to transfer information to a third party in the event of a sale, merger or other transfer of all or substantially all of the assets of Aranya or any of its Corporate Affiliates (as defined herein), or that portion of Aranya or any of its Corporate Affiliates to which the Service relates, or in the event that we discontinue our business or file a petition or have filed against us a petition in bankruptcy, reorganization or similar proceeding, provided that the third party agrees to adhere to the terms of this Privacy Policy.</p><p>&nbsp;</p><h2>Affiliates</h2><p>We may disclose information (including personal information) about you to our Corporate Affiliates. For purposes of this Privacy Policy, \"Corporate Affiliate\" means any person or entity which directly or indirectly controls, is controlled by or is under common control with Aranya, whether by ownership or otherwise. Any information relating to you that we provide to our Corporate Affiliates will be treated by those Corporate Affiliates in accordance with the terms of this Privacy Policy.</p><p>&nbsp;</p><h2>Governing Law</h2><p>This Privacy Policy is governed by the laws of Bangladesh without regard to its conflict of laws provision. You consent to the exclusive jurisdiction of the courts in connection with any action or dispute arising between the parties under or in connection with this Privacy Policy except for those individuals who may have rights to make claims under Privacy Shield, or the Swiss-US framework.</p><p>&nbsp;</p><p>The laws of Bangladesh, excluding its conflicts of law rules, shall govern this Agreement and your use of the website. Your use of the website may also be subject to other local, state, national, or international laws.</p><p>&nbsp;</p><p>By using Aranya or contacting us directly, you signify your acceptance of this Privacy Policy. If you do not agree to this Privacy Policy, you should not engage with our website, or use our services. Continued use of the website, direct engagement with us, or following the posting of changes to this Privacy Policy that do not significantly affect the use or disclosure of your personal information will mean that you accept those changes.</p><p>&nbsp;</p><h2>Your Consent</h2><p>We\'ve updated our&nbsp;Privacy Policy&nbsp;to provide you with complete transparency into what is being set when you visit our site and how it\'s being used. By using our Aranya, registering an account, or making a purchase, you hereby consent to our Privacy Policy and agree to its terms.</p><p>&nbsp;</p><h2>Links to Other Websites</h2><p>This Privacy Policy applies only to the Services. The Services may contain links to other websites not operated or controlled by Aranya. We are not responsible for the content, accuracy or opinions expressed in such websites, and such websites are not investigated, monitored or checked for accuracy or completeness by us. Please remember that when you use a link to go from the Services to another website, our Privacy Policy is no longer in effect. Your browsing and interaction on any other website, including those that have a link on our platform, is subject to that websiteâ€™s own rules and policies. Such third parties may use their own cookies or other methods to collect information about you.</p><p>&nbsp;</p><h2>Cookies</h2><p>Aranya uses \"Cookies\" to identify the areas of our website that you have visited. A Cookie is a small piece of data stored on your computer or mobile device by your web browser. We use Cookies to enhance the performance and functionality of our website but are non-essential to their use. However, without these cookies, certain functionality like videos may become unavailable or you would be required to enter your login details every time you visit the website as we would not be able to remember that you had logged in previously. Most web browsers can be set to disable the use of Cookies. However, if you disable Cookies, you may not be able to access functionality on our website correctly or at all. We never place Personally Identifiable Information in Cookies.</p><p>&nbsp;</p><h2>Blocking and disabling cookies and similar technologies</h2><p>Wherever you\'re located you may also set your browser to block cookies and similar technologies, but this action may block our essential cookies and prevent our website from functioning properly, and you may not be able to fully utilize all of its features and services. You should also be aware that you may also lose some saved information (e.g. saved login details, site preferences) if you block cookies on your browser. Different browsers make different controls available to you. Disabling a cookie or category of cookie does not delete the cookie from your browser, you will need to do this yourself from within your browser, you should visit your browser\'s help menu for more information.</p><p>&nbsp;</p><h2>Remarketing Services</h2><p>We use remarketing services. What Is Remarketing? In digital marketing, remarketing (or retargeting) is the practice of serving ads across the internet to people who have already visited your website. It allows your company to seem like they\'re â€œfollowingâ€ people around the internet by serving ads on the websites and platforms they use most.</p><p>&nbsp;</p><h2>Payment Details</h2><p>In respect to any credit card or other payment processing details you have provided us, we commit that this confidential information will be stored in the most secure manner possible.</p><p>&nbsp;</p><h2>Kids\' Privacy</h2><p>We collect information from kids under the age of 13 just to better our services. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data without your permission, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p><p>&nbsp;</p><h2>Changes To Our Privacy Policy</h2><p>We may change our Service and policies, and we may need to make changes to this Privacy Policy so that they accurately reflect our Service and policies. Unless otherwise required by law, we will notify you (for example, through our Service) before we make changes to this Privacy Policy and give you an opportunity to review them before they go into effect. Then, if you continue to use the Service, you will be bound by the updated Privacy Policy. If you do not want to agree to this or any updated Privacy Policy, you can delete your account.</p><p>&nbsp;</p><h2>Third-Party Services</h2><p>We may display, include or make available third-party content (including data, information, applications and other products services) or provide links to third-party websites or services (\"Third- Party Services\").</p><p>&nbsp;</p><p>You acknowledge and agree that Aranya shall not be responsible for any Third-Party Services, including their accuracy, completeness, timeliness, validity, copyright compliance, legality, decency, quality or any other aspect thereof. Aranya does not assume and shall not have any liability or responsibility to you or any other person or entity for any Third-Party Services.</p><p>&nbsp;</p><p>Third-Party Services and links thereto are provided solely as a convenience to you and you access and use them entirely at your own risk and subject to such third parties\' terms and conditions.</p><p>&nbsp;</p><h2>Facebook Pixel</h2><p>Facebook pixel&nbsp;is an analytics tool that allows you to measure the effectiveness of your advertising by understanding the actions people take on your website/app. You can use the&nbsp;pixel&nbsp;to: Make sure your ads are shown to the right people. Facebook pixel may collect information from your device when you use the service. Facebook pixel collects information that is held in accordance with its Privacy Policy</p><p>&nbsp;</p><h2>Tracking Technologies</h2><p>&nbsp;</p><p>Â·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Google Maps API </p><p>Google Maps API&nbsp;is a robust tool that can be used to create a custom&nbsp;map, a searchable&nbsp;map, check-in functions, display live data synching with location, plan routes, or create a mashup just to name a few.</p><p>Google Maps API may collect information from You and from Your Device for security purposes.</p><p>Google Maps API collects information that is held in accordance with its Privacy Policy</p><p>&nbsp;</p><p>Â·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cookies </p><p>We use Cookies to enhance the performance and functionality of our platform but are non-essential to their use. However, without these cookies, certain functionality like videos may become unavailable or you would be required to enter your login details every time you visit the platform as we would not be able to remember that you had logged in previously.</p><p>&nbsp;</p><p>Â·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local Storage </p><p>Local Storage sometimes known as DOM storage, provides web apps with methods and protocols for storing client-side data. Web storage supports persistent data storage, similar to cookies but with a greatly enhanced capacity and no information stored in the HTTP request header.</p><p>&nbsp;</p><p>Â·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sessions </p><p>We use \"Sessions\" to identify the areas of our platform that you have visited. A Session is a small piece of data stored on your computer or mobile device by your web browser.</p><p>&nbsp;</p><p>&nbsp;</p><h2>Information about General Data Protection Regulation (GDPR)</h2><p>We may be collecting and using information from you if you are from the European Economic Area (EEA), and in this section of our Privacy Policy we are going to explain exactly how and why is this data collected, and how we maintain this data under protection from being replicated or used in the wrong way.</p><p>&nbsp;</p><h2>What is GDPR?</h2><p>GDPR is an EU-wide privacy and data protection law that regulates how EU residents\' data is protected by companies and enhances the control&nbsp;the EU residents have, over their personal data.</p><p>&nbsp;</p><p>The GDPR is relevant to any globally operating company and not just the EU-based businesses and EU residents. Our customersâ€™ data is important irrespective of where they are located, which is why we have implemented GDPR controls as our baseline standard for all our operations worldwide.</p><p>&nbsp;</p><h2>What is personal data?</h2><p>Any data that relates to an identifiable or identified individual. GDPR covers a broad spectrum of information that could be used on its own, or in combination with other pieces of information, to identify a person. Personal data extends beyond a personâ€™s name or email address. Some examples include financial information, political opinions, genetic data, biometric data, IP addresses, physical address, sexual orientation, and ethnicity.</p><p>&nbsp;</p><p>The Data Protection Principles include requirements such as:</p><p>&nbsp;</p><ul><li>Personal data collected must be processed in a fair, legal, and transparent way and should only be used in a way that a person would reasonably expect.</li><li>Personal data should only be collected to fulfil a specific purpose and it should only be used for that purpose. Organizations must specify why they need the personal data when they collect it.</li><li>Personal data should be held no longer than necessary to fulfil its purpose.</li><li>People covered by the GDPR have the right to access their own personal data. They can also request a copy of their data, and that their data be updated, deleted, restricted, or moved to another organization.</li></ul><p>&nbsp;</p><h2>Why is GDPR important?</h2><p>GDPR adds some new requirements regarding how companies should protect individuals\' personal data that they collect and process. It also raises the stakes for compliance by increasing enforcement and imposing greater fines for breach. Beyond these facts it\'s simply the right thing to do. At Aranya we strongly believe that your data privacy is very important and we already have solid security and privacy practices in place that go beyond the requirements of this new regulation.</p><p>&nbsp;</p><h2>Individual Data Subject\'s Rights - Data Access, Portability and Deletion</h2><p>We are committed to helping our customers meet the&nbsp;data subject rights requirements of GDPR. Aranya processes or stores all personal data in fully vetted, DPA compliant vendors. We do store all conversation and personal data for up to 6 years unless your account is deleted. In which case, we dispose of all data in accordance with our Terms of Service and Privacy Policy, but we will not hold it longer than 60 days.</p><p>&nbsp;</p><p>We are aware that if you are working with EU customers, you need to be able to provide them with the ability to access, update, retrieve and remove personal data. We got you! We\'ve been set up as self service from the start and have always given you access to your data and your customers data. Our customer&nbsp;support team is here for you to answer any questions you might have about working with the API.</p><p>&nbsp;</p><h2>California Residents</h2><p>The California Consumer Privacy Act (CCPA) requires us to disclose categories of Personal Information we collect and how we use it, the categories of sources from whom we collect Personal Information, and the third parties with whom we share it, which we have explained above.</p><p>&nbsp;</p><p>We are also required to communicate information about rights California residents have under California law. You may exercise the following rights:</p><p>&nbsp;</p><ul><li>Right to Know and Access. You may submit a verifiable request for information regarding the: (1) categories of Personal Information we collect, use, or share; (2) purposes for which categories of Personal Information are collected or used by us; (3) categories of sources from which we collect Personal Information; and (4) specific pieces of Personal Information we have collected about you.</li><li>Right to Equal Service. We will not discriminate against you if you exercise your privacy rights.</li><li>Right to Delete. You may submit a verifiable request to close your account and we will delete Personal Information about you that we have collected.</li><li>Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</li></ul><p>&nbsp;</p><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p>&nbsp;</p><p>We do not sell the Personal Information of our users.</p><p>&nbsp;</p><p>For more information about these rights, please contact us.</p><p>&nbsp;</p><h2>California Online Privacy Protection Act (CalOPPA)</h2><p>CalOPPA requires us to disclose categories of Personal Information we collect and how we use it, the categories of sources from whom we collect Personal Information, and the third parties with whom we share it, which we have explained above.</p><p>&nbsp;</p><p>CalOPPA users have the following rights:</p><p>&nbsp;</p><ul><li>Right to Know and Access. You may submit a verifiable request for information regarding the: (1) categories of Personal Information we collect, use, or share; (2) purposes for which categories of Personal Information are collected or used by us; (3) categories of sources from which we collect Personal Information; and (4) specific pieces of Personal Information we have collected about you.</li><li>Right to Equal Service. We will not discriminate against you if you exercise your privacy rights.</li><li>Right to Delete. You may submit a verifiable request to close your account and we will delete Personal Information about you that we have collected.</li><li>Right to request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</li></ul><p>&nbsp;</p><p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p>&nbsp;</p><p>We do not sell the Personal Information of our users.</p><p>&nbsp;</p><p>For more information about these rights, please contact us.</p><p>&nbsp;</p><h2>Contact Us</h2><p>Don\'t hesitate to contact us if you have any questions.</p><p>&nbsp;</p><ul><li>Via Email: info@aranya.com.bd</li><li>Via Phone Number: +8801755509902</li><li>Via this Link: https://www.aranya.com.bd/contact</li><li>Via this Address: House 1/A, Road 21 Nikunja 2, Khilkhet Dhaka 1229, Bangladesh</li></ul><h2><br></h2>', 1, '2023-10-02 05:41:14', NULL),
(2, 'Return Policy', 'return-policy', 'https://staging.aranya.com.bd/return-policy', '<p>For Testing purpose</p>', 1, '2023-10-01 06:35:45', NULL);
INSERT INTO `informations` (`id`, `title`, `slug`, `back_link`, `content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Terms & Conditions', 'terms-conditions', 'https://staging.aranya.com.bd/terms-conditions', '<h1><span style=\"color: rgb(33, 37, 41);\">TERMS OF USE</span></h1><p><span style=\"color: black;\">Subject to the following terms, Aranya.com.bd and its affiliates provide you with their services. If you visit or shop at Aranya.com.bd, these terms and conditions are approved. When you use or visit or buy any current or future Aranya.com.bd service from any Aranya.com.bd-affiliated company, you will be subject to the guidelines and conditions applicable to such service or enterprise, whether or not they are included on the Aranya.com.bd Web site.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">PRIVACY</span></h2><p>To understand our practices, please review our Privacy Policy, which also oversees your visit to Aranya.com.bd.</p><h2><span style=\"color: rgb(46, 46, 46);\">ELECTRONIC COMMUNICATIONS</span></h2><p><span style=\"color: black;\">You communicate with us electronically when you visit Aranya.com.bd or send e-mails to us. You consent to electronically receive messages from us. By e-mail or by posting notices on this section, we can contact you. You accept that all agreements, notices, disclosures and other correspondence that we electronically send to you meet the legal obligation to be in writing for such communications.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">COPYRIGHT &amp; TRADEMARKS</span></h2><p><span style=\"color: black;\">All material, such as text, graphics, logos, button icons, photographs, audio clips, digital downloads, data compilations and apps, included on this site is the property of Aranya.com.bd or its suppliers of content. The exclusive property of Aranya.com.bd is the collection of all material on this site. </span></p><p><span style=\"color: black;\">Any misuse, wrongful or unauthorized use, whether licensed or under registration, of our trademarks would be liable for legal action.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">SITE ACCESS</span></h2><p><span style=\"color: black;\">Aranya.com.bd grants you limited permission to access and make personal use of this site and not to download or change it or any component of it (other than page caching). This authorization does not involve any resale or commercial use of this website or its contents; any compilation and use of any listings, specifications or prices of products; any derivative use of this website or its contents; any uploading or copying of account information for the benefit of another merchant; or any use of data mining, robots, or similar resources for collecting and extracting data.</span></p><p><span style=\"color: black;\">Without the express written permission of Aranya.com.bd, this site or any part of this site may not be replicated, duplicated, copied, sold, resold, visited, or otherwise used for any commercial purpose. You can not use, without express written permission, any proprietary material (including images, text, page layout, or form) from Aranya.com.bd and our affiliates. Without the express written permission of Aranya.com.bd, you can not use any meta tags or any other secret text using the Aranya.com.bd name or trademarks.</span></p><p><span style=\"color: black;\">The permission given by Aranya.com.bd terminates any unauthorized use. A restricted, revocable, and non-exclusive right is given to you to create a hyperlink to the Aranya.com.bd homepage as long as the link does not represent Aranya.com.bd, its affiliates, or its goods or services in an inaccurate, deceptive, insulting, or otherwise offensive matter. You can not, without express written permission, use any Aranya.com.bd logo or other proprietary graphics or trademarks as part of the connection.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">ACCOUNT</span></h2><p><span style=\"color: black;\">If you\'re using the site, you are responsible for keeping your username and password private and for limiting access to the device, and you consent to be liable for any activities that take place under your account or password. Aranya.com.bd and its affiliates reserve the right, at their sole discretion, to deny the service, terminate accounts, delete or edit content, or cancel orders.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">REVIEWS, COMMENTS, COMMUNICATIONS, AND OTHER CONTENT</span></h2><p><span style=\"color: black;\">Visitors may post reviews, comments and other material; send e-Gift Certificates and other communications; and submit suggestions, ideas, comments, questions or other information, given that the content is not illegal, obscene, threatening, defamatory, privacy-invasive, infringement of intellectual property rights or otherwise harmful to or objectionable to third parties and does not constitute an infringement of intellectual property rights or otherwise harmful to third parties. You may not use a false email address, confuse any individual or entity, or otherwise mislead any person or entity as to the origin of a card or other information. Aranya.com.bd retains the right to delete or edit such material (but not the obligation), but does not review posted content on a daily basis.</span></p><p><span style=\"color: black;\">You give Aranya.com.bd and its affiliates a non-exclusive, royalty-free, permanent, irrevocable, and completely sub-licensable right to use, copy, alter, adapt, write, translate, create derivative works from, distribute, and view any content in any media worldwide, whether you post content or send material, and unless we say otherwise. You give Aranya.com.bd and its affiliates and sub-licensees the right, if they wish, to use the name you send in relation to those content.</span></p><p><span style=\"color: black;\">You reflect and guarantee that all the rights to the material you publish are owned or otherwise managed by you; that the content is accurate; that the use of the content you offer does not breach this policy and will not affect another person or entity; and that you will pay Aranya.com.bd or its affiliates for any lawsuits arising from the content you provide. Aranya.com.bd has the freedom to track and edit or delete any operation or information, but not the responsibility. Aranya.com.bd takes no responsibility for any content uploaded by you or any third party and accepts no liability.</span></p><h2>RISK OF LOSS</h2><h4>Fraudulent/loss cancellation of company orders</h4><p>We constantly track purchases for illegal practices to provide a reliable and stable shopping experience. Aranya.com.bd retains the right to revoke all recent, ongoing and prospective orders without penalty if any irregular activity is detected. In scenarios like occurrence of website prices and inventory unavailability, Aranya.com.bd also retains the right to deny or cancel orders. Before approving any order, we may even need additional verifications or facts. If we cancel any or part of your order, or if you need more details to approve your order, we will contact you.If your order is cancelled after your card has been charged, the said amount will be reversed to your Card Account. Any promotional voucher used for the cancelled orders may not be refunded.</p><h6>If any of the following scenarios are reached, the client could be treated as fraudulent:</h6><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer doesn\'t reply to the payment verification mail sent by Aranya</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer fails to produce adequate documents during the payment details verification</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Misuse of another customer\'s phone/email</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer uses invalid email and phone no.</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer refuses to pay for an order</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer is involved in the snatch and run for any order</p><h6>If all of the following scenarios are encountered, the consumer can be deemed a business loss:</h6><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Customer with a very high return rate</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Invalid/Incomplete address cases</p><p>â—&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Repeated request for monetary compensation for petty issues</p><p>&nbsp;</p><p>The account may be blocked for consumers who fall into fraud or company groups.</p><p>&nbsp;</p><h2><span style=\"color: rgb(46, 46, 46);\">PRODUCT DESCRIPTIONS &amp; PRICING</span></h2><p><span style=\"color: black;\">Aranya.com.bd is seeking to be as precise as possible for its collaborators. Aranya.com.bd does not, however, guarantee that the definition of the product or any other material on this website is precise, complete, secure, current or error-free. If an item sold by Aranya.com.bd itself is not as defined, returning it in unused condition is your sole solution.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">PRICING</span></h2><p><span style=\"color: black;\">The list price shown for goods on our website, whether in foreign currency or in Bangladeshi Taka, shall constitute the full price of the good, unless otherwise stated. </span></p><p><span style=\"color: black;\">We bill your credit or debit card &amp; MPS&nbsp;with regard to goods sold on Aranya.com.bd before your order reaches the delivery process. For some cause, if we are unable to supply goods to you as per your request, we will electronically remind you and refund the amount of the products that are not available. Any extra postage fees will not be refunded, if necessary.</span></p><p><span style=\"color: black;\">A limited percentage of the items in our catalogue may be mispriced, notwithstanding our best efforts. When a mispricing is found, we can do one of the following:</span></p><p><span style=\"color: black;\">If the right price of an item is lower than our specified price, we will charge the lower cost and deliver the item to you. </span></p><p><span style=\"color: black;\">We may, at our discretion, either email you for guidance before delivery or cancel your order and inform you of such cancellation if the correct price of an item is higher than our specified price. </span></p><p><span style=\"color: black;\">Please notice that this policy only applies to merchandise sold and delivered by Aranya.com.bd. </span></p><p><span style=\"color: black;\">In Bangladeshi Taka, the prices shown on this platform are quoted at approx. Price of conversion in US Dollars. As per the conversions conducted by your bank/credit card issuer on the day of payment, the real amount to be billed by you will be the equivalent amount in the currency of your credit card.</span></p><h2><span style=\"background-color: yellow; color: rgb(46, 46, 46);\">SHIPPING</span><span style=\"background-color: yellow; color: black;\">. </span></h2><p><span style=\"background-color: yellow; color: black;\">For each shipment, the approximate shipping time can vary. For all aranya clothing lines, we usually take about 3 to 7 business days to dispatch orders within Bangladesh, and 14 to 30 business days to dispatch foreign orders. </span></p><p><span style=\"background-color: yellow; color: black;\">Depending on the pattern and model of the clothing, the Aranya pre-order is made and takes 1 to 6 weeks for production and dispatch.</span></p><p>&nbsp;</p><p><span style=\"color: black;\">It takes 3 to 14 business days for distribution within Bangladesh and 7 to 30 business days internationally, depending on the location and custom clearance in the destination country. Often, regardless of weather conditions or other political disturbances or protests, distribution time is subject to circumstances beyond our control, including but not limited to, unforeseen travel delays from our courier partners. We pledge, at every move, to keep you informed. </span></p><p><span style=\"color: black;\">Order selection can be performed upon request from any of the Aranya retail outlets. For more assistance, please email our customer service team at info@Aranya.com.bd.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">DUTIES AND TAXES</span></h2><p><span style=\"color: black;\">All Aranya orders are delivered internationally to your designated shipping address from our warehouse in Dhaka, Bangladesh. Occasionally, due to the existence of foreign shipping, a client may have to pay extra import duties and taxes that are charged once a shipment enters your region. No extra costs would have to be charged for the vast majority of orders. We are unable to calculate, however, when and how high these unusual customs duty payments will be charged. You will be responsible for paying any extra fees if additional customs costs are levied. </span></p><p><span style=\"color: black;\">Aranya Privet Limited takes no responsibility for non-delivery of orders in case such taxes and duties are not accepted and settled by the recipient at the delivery address, and will not provide any refunds in such cases.</span></p><p><span style=\"color: black;\">Above is not applicable for USA. Orders from USA are shipped on DDP (Delivery Duties Paid) mode.</span></p><h2><span style=\"background-color: yellow; color: rgb(46, 46, 46);\">EXCHANGES, RETURNS AND REFUNDS</span></h2><p><span style=\"background-color: yellow; color: black;\">To understand our practices, please review our </span><span style=\"background-color: yellow; color: rgb(46, 46, 46);\">EXCHANGES, RETURNS AND REFUNDS</span><span style=\"background-color: yellow; color: black;\"> POLICIES which also oversees your visit to Aranya.com.bd</span></p><h2><span style=\"background-color: yellow; color: rgb(46, 46, 46);\">INTERNATIONAL RETURNS</span></h2><p><span style=\"color: black;\">On orders delivered overseas, we do not offer merchandise swap. In the unfortunate event that any items you ordered from us are not received in good condition, are faulty, or if the shipped goods vary from what you expected, please contact us within 48 hours of receiving the order at info@Aranya.com.bd. </span></p><p><span style=\"color: black;\">Duties, fees, and tariffs charged by consumers are not included in returns on foreign orders.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">SIZING</span></h2><p><span style=\"color: black;\">The fit of our garments depends on each garment\'s cut, fabric and style. Some clothes are built to have a looser, more comfortable fit and some clothes are styled to fit more. To pick the size best tailored to you, please check our sizing guide. Please check our size </span><em style=\"color: black;\">chart</em><span style=\"color: black;\"> for more clarification.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">PRODUCT PROPERTIES AND WASH CARE</span></h2><p><span style=\"color: black;\">Using the finest natural fabrics, all Aranya goods are designed. The subtle hue, shape and finish differences are inherent to items produced by hand. Our goods include traditions of hand spinning, dying, knitting, wood block printing and embroidery based on crafts. With the aim of mitigating our environmental effects when searching for the right paint properties, </span><em style=\"color: black;\">we use both vegetable dyes and industrial dyes</em><span style=\"color: black;\">. There is no flaw in an unusual weave or print - handloom implies confusion when it comes to uniformity by definition.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">COLORS</span></h2><p><span style=\"color: black;\">We always tried our best to display the colors of the items displayed on this Web site as accurately as possible. However, since the colors you see will differ on your device, we will not promise that any color display will be correct on your screen. Reds and blues are usually moving. Please still wash together like paints, then rinse in the shade inside out. Only dry cleaning of the silks is required.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">DISCLAIMER OF WARRANTIES AND LIMITATION OF LIABILITY</span></h2><p><span style=\"color: black;\">On an as is and as available basis, this site is provided by Aranya.com.bd. No claims or guarantees of any kind, express or implied, are provided by Aranya.com.bd as to the operation of this website or the facts, content, materials, or items contained on this website. You clearly accept that the use of this website is at your sole risk.</span></p><p><span style=\"color: black;\">Aranya.com.bd disclaims all guarantees, express or implied, including but not limited to, implied warranties of merchantability and fitness for a particular reason, to the full extent permitted by applicable law. Aranya.com.bd does not warrant that Aranya.com.bd is free of malware or other dangerous components from this site, its servers, or e-mail sent from Aranya.com.bd. Aranya.com.bd shall not be responsible for all negligence, including but not limited to actual, secondary, incidental, punitive and consequential damages, of any nature resulting from the use of this website.</span></p><p><span style=\"color: black;\">As a merchant, we as a merchant shall not be liable in any way whatsoever for any loss or damage resulting directly or indirectly from the refusal of authorization for any Transaction in respect of the Cardholder\'s Account having exceeded the preset limit mutually agreed between us and our acquiring bank from time to time.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">INDEMNIFICATION</span></h2><p><span style=\"color: black;\">You consent to protect, indemnify and hold harmless Aranya Private Limited, its respective officers, directors, staff, shareholders, relevant agencies, agents, successors or assigns, or any party involved in the development, processing or delivery of this website from and against any and all charges, damages, costs and expenditures, including attorney fees, arising from or associated with your use of the site.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">APPLICABLE LAW</span></h2><p><span style=\"background-color: yellow; color: black;\">Through visiting Aranya.com.bd, you accept that these Terms of Use and any disagreement of any kind that may occur between you and Aranya.com.bd or its associates will be controlled by the laws of Bangladesh under the jurisdiction of the </span><span style=\"background-color: red; color: white;\">Dhaka Supreme Court,</span><span style=\"background-color: red; color: black;\"> </span><span style=\"background-color: yellow; color: black;\">without recourse to the rules of conflict of laws.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">DISPUTES</span></h2><p><span style=\"color: black;\">Any dispute relating in any way to your visit to Aranya.com.bd or to goods you purchase from Aranya.com.bd shall be referred to private arbitration in Dhaka, Bangladesh, such that Aranya.com.bd can request injunctive or other reasonable remedy in any court in Bangladesh to the degree that you have in some way violated or attempted to breach Aranya.com.bd intellectual property rights. Arbitration pursuant to this Arrangement shall be carried out in compliance with the laws then in effect under the Bangladeshi Arbitration Act. The award of the arbitrator shall be binding and can be presented in every court of appropriate jurisdiction as a verdict. No arbitration under this Arrangement shall be paired with any arbitration affecting any other party entitled to this Agreement, whether by class arbitration hearings or otherwise, to the fullest degree allowed by applicable statute.</span></p><h2><span style=\"color: rgb(46, 46, 46);\">SITE POLICIES, MODIFICATION, AND SEVERABILITY</span></h2><p><span style=\"color: black;\">On our website, please link to the other policies. Your visit to Aranya.com.bd is also controlled by these policies. We reserve the right to make improvements at any time to our platform, our rules, and these Terms of Use. Where each of these provisions is presumed to be null, void or unenforceable for any reason whatsoever, the provision shall be regarded to be severable and shall not impact the validity or enforceability of any remaining condition.</span></p><h2>&nbsp;</h2>', 1, '2023-10-10 07:10:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ingredient_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingredient_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Betelnut', 'betelnut', NULL, 1, NULL, '2023-03-07 04:59:12', '2023-03-11 09:48:08'),
(2, 'Catechu', 'catechu', NULL, 1, NULL, '2023-03-07 04:59:21', '2023-03-11 09:48:28'),
(3, 'Indigo', 'indigo', NULL, 1, NULL, '2023-03-07 05:57:55', '2023-03-11 09:48:55'),
(4, 'Khasmi', 'khasmi', NULL, 1, NULL, '2023-03-07 05:58:05', '2023-03-11 09:49:25'),
(5, 'Lotkom', 'lotkom', NULL, 1, NULL, '2023-03-11 09:49:47', '2023-03-11 09:49:47'),
(6, 'Madder', 'madder', NULL, 1, NULL, '2023-03-11 09:50:08', '2023-03-11 09:50:08'),
(7, 'Myrabalan', 'myrabalan', NULL, 1, NULL, '2023-03-11 09:50:38', '2023-03-11 09:50:38'),
(8, 'Raintree', 'raintree', NULL, 1, NULL, '2023-03-11 09:51:09', '2023-03-11 09:51:09'),
(9, 'Annatto', 'annatto', NULL, 1, NULL, '2023-03-11 09:55:13', '2023-03-11 09:57:26'),
(10, 'Pomegranate', 'pomegranate', NULL, 1, NULL, '2023-03-11 09:55:39', '2023-03-11 09:55:39'),
(11, 'Manjit', 'manjit', NULL, 1, NULL, '2023-03-11 09:56:32', '2023-03-11 09:56:32'),
(12, 'Black Kashmi', 'black-kashmi', NULL, 1, NULL, '2023-03-11 10:06:04', '2023-03-11 10:06:04'),
(13, 'Sagupest', 'sagupest', NULL, 1, NULL, '2023-03-11 10:07:06', '2023-03-11 10:07:06'),
(14, 'jute', 'jute', NULL, 1, NULL, '2023-09-21 11:57:42', '2023-09-21 11:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `colour_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `size_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL,
  `cpu` double(16,8) NOT NULL DEFAULT 0.00000000,
  `mrp` double(16,8) NOT NULL DEFAULT 0.00000000,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_amount` int(11) NOT NULL DEFAULT 10,
  `disc_status` tinyint(4) DEFAULT 0,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '2022-03-11 18:00:00',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `colour_id`, `size_id`, `stock`, `cpu`, `mrp`, `sku`, `warning_amount`, `disc_status`, `warehouse`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 3, 3320.00000000, 4650.00000000, 'B0379', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 3, 0, 11, 0, 418.87000000, 1375.00000000, 'C6553', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 3, 0, 16, 1, 418.87000000, 1375.00000000, 'C6554', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 3, 0, 17, 0, 466.15000000, 1375.00000000, 'C6556', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 3, 0, 18, 1, 466.15000000, 1375.00000000, 'C6557', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 3, 0, 7, 0, 575.39000000, 1675.00000000, 'C6559', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(16, 3, 0, 9, 1, 575.39000000, 1675.00000000, 'C6560', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(17, 3, 0, 10, 3, 575.39000000, 1675.00000000, 'C6561', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(18, 4, 0, 11, 0, 430.23000000, 1375.00000000, 'C5565', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(19, 4, 0, 16, 0, 430.23000000, 1375.00000000, 'C5566', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(20, 4, 0, 17, 0, 474.90000000, 1375.00000000, 'C5568', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(21, 4, 0, 18, 0, 474.98000000, 1375.00000000, 'C5569', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(22, 4, 0, 7, 4, 578.38000000, 1675.00000000, 'C5571', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(23, 4, 0, 9, 1, 578.38000000, 1675.00000000, 'C5572', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(24, 4, 0, 10, 1, 578.38000000, 1675.00000000, 'C5573', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(25, 5, 0, 11, 1, 424.00000000, 1375.00000000, 'C5575', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(26, 5, 0, 16, 2, 424.00000000, 1375.00000000, 'C5576', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(27, 5, 0, 17, 1, 472.54000000, 1375.00000000, 'C5578', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(28, 5, 0, 18, 1, 472.54000000, 1375.00000000, 'C5579', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(29, 5, 0, 7, 2, 584.69000000, 1675.00000000, 'C5581', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(30, 5, 0, 9, 5, 584.69000000, 1675.00000000, 'C5582', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(31, 5, 0, 10, 1, 584.69000000, 1675.00000000, 'C5583', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(32, 6, 0, 11, 1, 540.64000000, 1675.00000000, 'C7171', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(33, 6, 0, 16, 2, 540.64000000, 1675.00000000, 'C7172', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(34, 6, 0, 17, 0, 620.63000000, 1975.00000000, 'C7174', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(35, 6, 0, 18, 3, 620.63000000, 1975.00000000, 'C7175', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(36, 6, 0, 7, 1, 805.45000000, 2475.00000000, 'C7177', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(37, 6, 0, 9, 2, 805.45000000, 2475.00000000, 'C7178', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(38, 6, 0, 10, 5, 805.45000000, 2475.00000000, 'C7179', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(39, 7, 0, 6, 0, 221.40000000, 565.00000000, 'C7237', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(40, 7, 0, 13, 0, 221.40000000, 565.00000000, 'C7238', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(41, 7, 0, 14, 0, 221.40000000, 565.00000000, 'C7239', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(42, 7, 0, 15, 0, 221.40000000, 565.00000000, 'C7240', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(43, 8, 0, 8, 0, 323.35000000, 865.00000000, 'C7386', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(44, 8, 0, 11, 4, 323.35000000, 865.00000000, 'C7387', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(45, 8, 0, 12, 5, 323.35000000, 865.00000000, 'C7388', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(46, 9, 0, 11, 1, 680.71000000, 1765.00000000, 'C2732', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(47, 9, 0, 16, 1, 680.71000000, 1765.00000000, 'C2733', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(48, 9, 0, 17, 1, 680.71000000, 1765.00000000, 'C2734', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(49, 9, 0, 7, 1, 907.83000000, 2165.00000000, 'C2736', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(50, 9, 0, 9, 1, 907.83000000, 2165.00000000, 'C2737', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(51, 9, 0, 10, 5, 907.83000000, 2165.00000000, 'C2738', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(52, 9, 0, 18, 1, 907.83000000, 2165.00000000, 'C2739', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(53, 10, 0, 11, 2, 402.96000000, 1165.00000000, 'C4074', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(54, 10, 0, 16, 1, 402.96000000, 1165.00000000, 'C4075', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(55, 10, 0, 17, 0, 402.96000000, 1165.00000000, 'C4076', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(56, 10, 0, 7, 3, 487.80000000, 1465.00000000, 'C4078', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(57, 10, 0, 9, 4, 487.80000000, 1465.00000000, 'C4079', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(58, 10, 0, 10, 5, 487.80000000, 1465.00000000, 'C4080', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(59, 10, 0, 18, 4, 487.80000000, 1465.00000000, 'C4081', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(60, 11, 0, 11, 0, 389.77000000, 1165.00000000, 'C4113', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(61, 11, 0, 16, 2, 389.77000000, 1165.00000000, 'C4114', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(62, 11, 0, 17, 2, 389.77000000, 1165.00000000, 'C4115', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(63, 11, 0, 7, 5, 472.22000000, 1465.00000000, 'C4117', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(64, 11, 0, 9, 6, 472.22000000, 1465.00000000, 'C4118', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(65, 11, 0, 10, 6, 472.22000000, 1465.00000000, 'C4119', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(66, 11, 0, 18, 2, 472.22000000, 1465.00000000, 'C4120', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(67, 12, 0, 11, 1, 441.19000000, 1165.00000000, 'C7070', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(68, 12, 0, 16, 0, 441.19000000, 1165.00000000, 'C7071', 10, 0, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(69, 12, 0, 17, 1, 545.26000000, 1465.00000000, 'C7073', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(70, 12, 0, 18, 1, 545.26000000, 1465.00000000, 'C7074', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(71, 12, 0, 7, 4, 586.19000000, 1465.00000000, 'C7076', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(72, 12, 0, 9, 3, 586.19000000, 1465.00000000, 'C7077', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(73, 12, 0, 10, 3, 586.19000000, 1465.00000000, 'C7078', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(74, 13, 0, 11, 1, 355.51000000, 965.00000000, 'C6511', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(75, 13, 0, 16, 1, 355.51000000, 965.00000000, 'C6512', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(76, 13, 0, 17, 4, 383.82000000, 965.00000000, 'C6514', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(77, 13, 0, 18, 3, 383.82000000, 965.00000000, 'C6515', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(78, 13, 0, 7, 4, 449.36000000, 1165.00000000, 'C6517', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(79, 13, 0, 9, 5, 449.36000000, 1165.00000000, 'C6518', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(80, 13, 0, 10, 5, 449.36000000, 1165.00000000, 'C6519', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(81, 14, 0, 11, 2, 966.45000000, 2385.00000000, 'C2295', 10, 1, NULL, NULL, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(82, 14, 0, 16, 2, 966.45000000, 2385.00000000, 'C2296', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(83, 14, 0, 17, 2, 1222.07000000, 2885.00000000, 'C2298', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(84, 14, 0, 18, 0, 1222.07000000, 2885.00000000, 'C2299', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(85, 14, 0, 7, 1, 1431.23000000, 3485.00000000, 'C2301', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(86, 14, 0, 9, 3, 1431.23000000, 3485.00000000, 'C2302', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(87, 15, 0, 11, 1, 947.39000000, 2385.00000000, 'C7354', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(88, 15, 0, 16, 0, 947.39000000, 2385.00000000, 'C7355', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(89, 15, 0, 17, 0, 1076.35000000, 2785.00000000, 'C7357', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(90, 15, 0, 18, 0, 1076.35000000, 2785.00000000, 'C7358', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(91, 15, 0, 7, 0, 1252.55000000, 2885.00000000, 'C7360', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(92, 15, 0, 9, 0, 1252.55000000, 2885.00000000, 'C7361', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(93, 16, 0, 8, 0, 768.20000000, 1875.00000000, 'D0090', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(94, 16, 0, 11, 2, 768.20000000, 1875.00000000, 'D0091', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(95, 16, 0, 12, 1, 768.20000000, 1875.00000000, 'D0092', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(96, 16, 0, 16, 3, 768.20000000, 1875.00000000, 'D0093', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(97, 17, 0, 8, 5, 838.28000000, 2385.00000000, 'C8720', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(98, 17, 0, 11, 4, 838.28000000, 2385.00000000, 'C8721', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(99, 17, 0, 16, 5, 838.28000000, 2385.00000000, 'C8722', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(100, 17, 0, 17, 0, 838.28000000, 2385.00000000, 'C8724', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(101, 17, 0, 18, 2, 838.28000000, 2385.00000000, 'C8725', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(102, 17, 0, 7, 2, 1395.44000000, 3485.00000000, 'C8727', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(103, 17, 0, 9, 3, 1395.44000000, 3485.00000000, 'C8728', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(104, 18, 0, 8, 3, 751.05000000, 1685.00000000, 'D0095', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(105, 18, 0, 11, 6, 751.05000000, 1685.00000000, 'D0096', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(106, 18, 0, 12, 0, 751.05000000, 1685.00000000, 'D0097', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(107, 18, 0, 16, 3, 751.05000000, 1685.00000000, 'D0098', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(108, 18, 0, 17, 2, 927.42000000, 2385.00000000, 'D0100', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(109, 18, 0, 18, 3, 927.42000000, 2385.00000000, 'D0101', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(110, 18, 0, 7, 5, 1095.22000000, 2785.00000000, 'D0103', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(111, 18, 0, 9, 2, 1095.22000000, 2785.00000000, 'D0104', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(112, 19, 0, 0, 7, 1042.06000000, 3085.00000000, 'C6027', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(113, 19, 0, 0, 5, 1042.06000000, 3085.00000000, 'C6028', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(114, 19, 0, 0, 7, 1042.06000000, 3085.00000000, 'C6029', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(115, 20, 0, 6, 4, 493.42000000, 1185.00000000, 'C3854', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(116, 20, 0, 13, 5, 493.42000000, 1185.00000000, 'C3855', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(117, 20, 0, 14, 2, 493.42000000, 1185.00000000, 'C3856', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(118, 20, 0, 15, 3, 493.42000000, 1185.00000000, 'C3857', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(119, 20, 0, 11, 2, 570.27000000, 1375.00000000, 'C3859', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(120, 20, 0, 16, 0, 570.27000000, 1375.00000000, 'C3860', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(121, 21, 0, 6, 3, 701.63000000, 1875.00000000, 'C6583', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(122, 21, 0, 13, 2, 701.63000000, 1875.00000000, 'C6584', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(123, 21, 0, 11, 2, 846.26000000, 2375.00000000, 'C6586', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(124, 21, 0, 12, 0, 846.26000000, 2375.00000000, 'C6587', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(125, 21, 0, 14, 2, 940.18000000, 2375.00000000, 'C6589', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(126, 21, 0, 15, 2, 940.18000000, 2375.00000000, 'C6590', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(127, 21, 0, 6, 0, 846.26000000, 2375.00000000, 'C6625', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(128, 21, 0, 13, 0, 846.26000000, 2375.00000000, 'C6626', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(129, 21, 0, 16, 1, 846.26000000, 2375.00000000, 'C6628', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(130, 22, 0, 6, 2, 670.28000000, 1675.00000000, 'C4513', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(131, 22, 0, 13, 1, 670.28000000, 1675.00000000, 'C4514', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(132, 22, 0, 14, 1, 670.28000000, 1675.00000000, 'C4515', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(133, 22, 0, 15, 0, 670.28000000, 1675.00000000, 'C4516', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(134, 23, 0, 6, 3, 640.94000000, 1675.00000000, 'C4353', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(135, 23, 0, 13, 1, 640.94000000, 1675.00000000, 'C4354', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(136, 23, 0, 14, 2, 640.94000000, 1675.00000000, 'C4355', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(137, 24, 0, 11, 6, 609.09000000, 1675.00000000, 'C4469', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(138, 24, 0, 16, 3, 609.09000000, 1675.00000000, 'C4470', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(139, 24, 0, 17, 5, 670.09000000, 1875.00000000, 'C4472', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(140, 24, 0, 18, 6, 670.09000000, 1875.00000000, 'C4473', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(141, 25, 0, 11, 3, 806.01000000, 2075.00000000, 'C4475', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(142, 25, 0, 16, 5, 806.01000000, 2075.00000000, 'C4476', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(143, 25, 0, 17, 1, 950.57000000, 2275.00000000, 'C4478', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(144, 25, 0, 18, 2, 950.57000000, 2275.00000000, 'C4479', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(145, 26, 0, 8, 3, 716.39000000, 1875.00000000, 'C5676', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(146, 26, 0, 11, 2, 716.39000000, 1875.00000000, 'C5677', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(147, 26, 0, 16, 1, 716.39000000, 1875.00000000, 'C5678', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(148, 26, 0, 17, 2, 850.77000000, 2075.00000000, 'C5680', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(149, 26, 0, 18, 2, 850.77000000, 2075.00000000, 'C5681', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(150, 27, 0, 11, 5, 1093.27000000, 2975.00000000, 'C7484', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(151, 27, 0, 12, 4, 1093.27000000, 2975.00000000, 'C7485', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(152, 27, 0, 16, 5, 1093.27000000, 2975.00000000, 'C7486', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(153, 27, 0, 17, 8, 1251.30000000, 3375.00000000, 'C7488', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(154, 27, 0, 18, 7, 1251.30000000, 3375.00000000, 'C7489', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(155, 28, 0, 11, 0, 536.12000000, 1375.00000000, 'C6764', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(156, 28, 0, 16, 0, 536.12000000, 1375.00000000, 'C6765', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(157, 29, 0, 11, 3, 514.66000000, 1375.00000000, 'C5623', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(158, 29, 0, 16, 5, 514.66000000, 1375.00000000, 'C5624', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(159, 30, 0, 16, 2, 994.81000000, 2275.00000000, 'C6767', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(160, 30, 0, 17, 1, 994.81000000, 2275.00000000, 'C6769', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(161, 30, 0, 18, 1, 994.81000000, 2275.00000000, 'C6770', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(162, 31, 0, 8, 4, 1846.42000000, 4575.00000000, 'C7538', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(163, 31, 0, 11, 3, 1846.42000000, 4575.00000000, 'C7539', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(164, 31, 0, 12, 8, 1846.42000000, 4575.00000000, 'C7540', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(165, 31, 0, 16, 1, 2097.50000000, 5175.00000000, 'C7542', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(166, 31, 0, 17, 2, 2097.50000000, 5175.00000000, 'C7543', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(167, 31, 0, 18, 2, 2097.50000000, 5175.00000000, 'C7544', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(168, 32, 0, 11, 3, 594.68000000, 1495.00000000, 'B6921', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(169, 32, 0, 16, 3, 594.68000000, 1495.00000000, 'B6922', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(170, 32, 0, 17, 2, 736.12000000, 1795.00000000, 'B6924', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(171, 32, 0, 18, 6, 736.12000000, 1795.00000000, 'B6925', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(172, 32, 0, 7, 6, 950.79000000, 2295.00000000, 'B6927', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(173, 32, 0, 9, 3, 950.79000000, 2295.00000000, 'B6928', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(174, 33, 0, 6, 8, 224.55000000, 865.00000000, 'C9846', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(175, 33, 0, 13, 3, 224.55000000, 865.00000000, 'C9847', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(176, 33, 0, 14, 6, 224.55000000, 865.00000000, 'C9848', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(177, 33, 0, 15, 3, 224.55000000, 865.00000000, 'C9849', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(178, 34, 0, 6, 2, 258.98000000, 985.00000000, 'C8771', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(179, 34, 0, 13, 2, 258.98000000, 985.00000000, 'C8772', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(180, 35, 0, 6, 8, 198.08000000, 865.00000000, 'C9851', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(181, 35, 0, 13, 5, 198.08000000, 865.00000000, 'C9852', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(182, 36, 0, 6, 0, 242.20000000, 865.00000000, 'C9854', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(183, 36, 0, 13, 0, 242.20000000, 865.00000000, 'C9855', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(184, 36, 0, 6, 8, 242.20000000, 865.00000000, 'C9857', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(185, 36, 0, 13, 3, 242.20000000, 865.00000000, 'C9858', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(186, 36, 0, 6, 0, 198.08000000, 865.00000000, 'D1736', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(187, 37, 0, 19, 1, 1138.39000000, 3675.00000000, 'B1949', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(188, 37, 0, 20, 0, 1138.39000000, 3675.00000000, 'B1950', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(189, 37, 0, 21, 0, 0.00000000, 3675.00000000, 'B1951', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(190, 37, 0, 22, 0, 1138.39000000, 3675.00000000, 'B1952', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(191, 37, 0, 23, 0, 1138.39000000, 2420.00000000, 'B1953', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(192, 38, 0, 19, 3, 1525.36000000, 3930.00000000, 'D0034', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(193, 38, 0, 20, 2, 1525.36000000, 3930.00000000, 'D0035', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(194, 38, 0, 21, 3, 1525.36000000, 3930.00000000, 'D0036', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(195, 38, 0, 22, 1, 1525.36000000, 3930.00000000, 'D0037', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(196, 38, 0, 23, 1, 1525.36000000, 3930.00000000, 'D0038', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(197, 39, 0, 19, 2, 1068.42000000, 3675.00000000, 'B8670', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(198, 39, 0, 20, 1, 1068.42000000, 3675.00000000, 'B8671', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(199, 39, 0, 21, 0, 1068.42000000, 3675.00000000, 'B8672', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(200, 39, 0, 22, 1, 1068.42000000, 3675.00000000, 'B8673', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(201, 39, 0, 23, 0, 1068.42000000, 3675.00000000, 'B8674', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(202, 40, 0, 19, 0, 625.89000000, 1975.00000000, 'C3208', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(203, 40, 0, 20, 0, 625.89000000, 1975.00000000, 'C3209', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(204, 40, 0, 21, 0, 625.89000000, 1975.00000000, 'C3210', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(205, 40, 0, 22, 0, 625.89000000, 1975.00000000, 'C3211', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(206, 40, 0, 23, 0, 625.89000000, 1975.00000000, 'C3212', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(207, 40, 0, 19, 2, 625.89000000, 2230.00000000, 'C9996', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(208, 40, 0, 20, 0, 625.89000000, 2230.00000000, 'C9997', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(209, 40, 0, 21, 0, 625.89000000, 2230.00000000, 'C9998', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(210, 41, 0, 19, 1, 793.40000000, 2475.00000000, 'B7752', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(211, 41, 0, 20, 0, 793.40000000, 2475.00000000, 'B7753', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(212, 41, 0, 21, 0, 793.40000000, 2475.00000000, 'B7754', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(213, 41, 0, 22, 0, 793.40000000, 2475.00000000, 'B7755', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(214, 41, 0, 23, 0, 793.40000000, 2475.00000000, 'B7756', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(215, 41, 0, 22, 0, 1466.12000000, 4675.00000000, 'B7763', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(216, 41, 0, 19, 0, 1190.90000000, 2475.00000000, 'B7765', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(217, 41, 0, 20, 0, 1190.90000000, 2475.00000000, 'B7766', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(218, 41, 0, 21, 0, 1190.90000000, 2475.00000000, 'B7767', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(219, 41, 0, 22, 0, 1190.90000000, 2475.00000000, 'B7768', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(220, 42, 0, 19, 3, 1116.73000000, 3675.00000000, 'B9677', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(221, 42, 0, 20, 1, 1116.73000000, 3675.00000000, 'B9678', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(222, 42, 0, 21, 0, 1116.73000000, 3675.00000000, 'B9679', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(223, 42, 0, 22, 0, 1116.73000000, 3675.00000000, 'B9680', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(224, 42, 0, 23, 0, 1116.73000000, 3675.00000000, 'B9681', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(225, 43, 0, 19, 2, 1712.91000000, 4275.00000000, 'C3610', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(226, 43, 0, 20, 0, 1712.91000000, 4275.00000000, 'C3611', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(227, 43, 0, 21, 0, 1712.91000000, 4275.00000000, 'C3612', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(228, 43, 0, 22, 0, 1712.91000000, 4275.00000000, 'C3613', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(229, 43, 0, 23, 0, 1712.91000000, 4275.00000000, 'C3614', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(230, 44, 0, 19, 4, 2349.00000000, 5975.00000000, 'C9341', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(231, 44, 0, 20, 1, 2349.00000000, 5975.00000000, 'C9342', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(232, 44, 0, 21, 0, 2349.00000000, 5975.00000000, 'C9343', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(233, 44, 0, 22, 0, 2349.00000000, 5975.00000000, 'C9344', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(234, 44, 0, 23, 0, 2349.00000000, 5975.00000000, 'C9345', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(235, 45, 0, 19, 1, 2504.80000000, 7000.00000000, 'C3346', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(236, 45, 0, 20, 0, 2504.80000000, 7000.00000000, 'C3347', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(237, 45, 0, 21, 0, 2504.80000000, 7000.00000000, 'C3348', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(238, 45, 0, 22, 0, 2504.80000000, 7000.00000000, 'C3349', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(239, 45, 0, 23, 0, 2504.80000000, 7000.00000000, 'C3350', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(240, 46, 0, 19, 0, 1390.29000000, 3675.00000000, 'C6734', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(241, 46, 0, 20, 0, 1390.29000000, 3675.00000000, 'C6735', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(242, 46, 0, 21, 0, 1390.29000000, 3675.00000000, 'C6736', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(243, 46, 0, 22, 0, 1390.29000000, 3675.00000000, 'C6737', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(244, 46, 0, 23, 0, 1390.29000000, 3675.00000000, 'C6738', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(245, 47, 0, 19, 1, 753.05000000, 2475.00000000, 'C6979', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(246, 47, 0, 20, 0, 753.05000000, 2475.00000000, 'C6980', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(247, 47, 0, 21, 0, 753.05000000, 2475.00000000, 'C6981', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(248, 47, 0, 22, 0, 753.05000000, 2475.00000000, 'C6982', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(249, 47, 0, 23, 0, 753.05000000, 2475.00000000, 'C6983', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(250, 48, 0, 19, 2, 1588.32000000, 4675.00000000, 'C6662', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(251, 48, 0, 20, 0, 1588.32000000, 4675.00000000, 'C6663', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(252, 48, 0, 21, 0, 1588.32000000, 4675.00000000, 'C6664', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(253, 48, 0, 22, 0, 1588.32000000, 4675.00000000, 'C6665', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(254, 48, 0, 23, 0, 1588.32000000, 4675.00000000, 'C6666', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(255, 49, 0, 19, 3, 2396.54000000, 5975.00000000, 'C6668', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(256, 49, 0, 20, 2, 2396.54000000, 5975.00000000, 'C6669', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(257, 49, 0, 21, 1, 2396.54000000, 5975.00000000, 'C6670', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(258, 49, 0, 22, 0, 2396.54000000, 5975.00000000, 'C6671', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(259, 49, 0, 23, 0, 2396.54000000, 5975.00000000, 'C6672', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(260, 50, 0, 19, 0, 1304.53000000, 3675.00000000, 'C4855', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(261, 50, 0, 20, 0, 1304.53000000, 3675.00000000, 'C4856', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(262, 50, 0, 21, 0, 1304.53000000, 3675.00000000, 'C4857', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(263, 50, 0, 22, 0, 1304.53000000, 3675.00000000, 'C4858', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(264, 50, 0, 23, 0, 1304.53000000, 3675.00000000, 'C4859', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(265, 50, 0, 19, 3, 1304.53000000, 3970.00000000, 'C9919', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(266, 50, 0, 20, 0, 1304.53000000, 3970.00000000, 'C9920', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(267, 50, 0, 21, 0, 1304.53000000, 3970.00000000, 'C9921', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(268, 50, 0, 22, 0, 1304.53000000, 3970.00000000, 'C9922', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(269, 50, 0, 23, 0, 1304.53000000, 3970.00000000, 'C9923', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(270, 51, 0, 19, 0, 783.38000000, 2475.00000000, 'C7672', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(271, 51, 0, 20, 0, 783.38000000, 2475.00000000, 'C7673', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(272, 51, 0, 21, 0, 783.38000000, 2475.00000000, 'C7674', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(273, 51, 0, 22, 0, 783.38000000, 2475.00000000, 'C7675', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(274, 51, 0, 23, 0, 783.38000000, 2475.00000000, 'C7676', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(275, 51, 0, 19, 4, 783.38000000, 2730.00000000, 'D0080', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(276, 51, 0, 20, 3, 783.38000000, 2730.00000000, 'D0081', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(277, 51, 0, 21, 0, 783.38000000, 2730.00000000, 'D0082', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(278, 51, 0, 22, 1, 783.38000000, 2730.00000000, 'D0083', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(279, 51, 0, 23, 2, 783.38000000, 2730.00000000, 'D0084', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(285, 53, 0, 19, 4, 1350.86000000, 3675.00000000, 'C6242', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(286, 53, 0, 20, 0, 1350.86000000, 3675.00000000, 'C6243', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(287, 53, 0, 21, 0, 1350.86000000, 3675.00000000, 'C6244', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(288, 53, 0, 22, 0, 1350.86000000, 3675.00000000, 'C6245', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(289, 53, 0, 23, 0, 1350.86000000, 3675.00000000, 'C6246', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(290, 54, 0, 19, 2, 2346.08000000, 5975.00000000, 'C7363', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(291, 54, 0, 20, 0, 2346.08000000, 5975.00000000, 'C7364', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(292, 54, 0, 21, 0, 2346.08000000, 5975.00000000, 'C7365', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(293, 54, 0, 22, 1, 2346.08000000, 5975.00000000, 'C7366', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(294, 54, 0, 23, 1, 2346.08000000, 5975.00000000, 'C7367', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(295, 55, 0, 19, 4, 1059.52000000, 2975.00000000, 'D0417', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(296, 55, 0, 20, 4, 1059.52000000, 2975.00000000, 'D0419', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(297, 55, 0, 21, 0, 1059.52000000, 2975.00000000, 'D0421', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(298, 55, 0, 22, 0, 1059.52000000, 2975.00000000, 'D0423', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(299, 55, 0, 23, 1, 1059.52000000, 2975.00000000, 'D0425', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(300, 56, 0, 19, 3, 1245.16000000, 2975.00000000, 'D0610', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(301, 56, 0, 20, 0, 1245.16000000, 2975.00000000, 'D0612', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(302, 56, 0, 21, 0, 1245.16000000, 2975.00000000, 'D0614', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(303, 56, 0, 22, 0, 1245.16000000, 2975.00000000, 'D0616', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(304, 56, 0, 23, 0, 1245.16000000, 2975.00000000, 'D0618', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(305, 56, 0, 22, 0, 1245.16000000, 2975.00000000, 'D0620', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(306, 56, 0, 21, 0, 1245.16000000, 2975.00000000, 'D0622', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(307, 57, 0, 19, 0, 1294.24000000, 3075.00000000, 'D0427', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(308, 57, 0, 20, 0, 1294.24000000, 3075.00000000, 'D0429', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(309, 57, 0, 21, 0, 1294.24000000, 3075.00000000, 'D0431', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(310, 57, 0, 22, 0, 1294.24000000, 3075.00000000, 'D0433', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(311, 57, 0, 23, 0, 1294.24000000, 3075.00000000, 'D0435', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(312, 58, 0, 19, 1, 1520.88000000, 3475.00000000, 'C9301', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(313, 58, 0, 20, 0, 1520.88000000, 3475.00000000, 'C9302', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(314, 58, 0, 21, 0, 1520.88000000, 3475.00000000, 'C9303', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(315, 58, 0, 22, 0, 1520.88000000, 3475.00000000, 'C9304', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(316, 58, 0, 23, 0, 1520.88000000, 3475.00000000, 'C9305', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(317, 59, 0, 19, 3, 1323.63000000, 2815.00000000, 'D0270', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(318, 59, 0, 20, 0, 1323.63000000, 2815.00000000, 'D0271', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(319, 59, 0, 21, 0, 1323.63000000, 2815.00000000, 'D0272', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(320, 59, 0, 22, 0, 1323.63000000, 2815.00000000, 'D0273', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(321, 59, 0, 23, 0, 1323.63000000, 2815.00000000, 'D0274', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(322, 60, 0, 19, 4, 678.19000000, 2475.00000000, 'D0471', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(323, 60, 0, 20, 0, 678.19000000, 2475.00000000, 'D0473', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(324, 60, 0, 21, 0, 678.19000000, 2475.00000000, 'D0475', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(325, 60, 0, 22, 0, 678.19000000, 2475.00000000, 'D0477', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(326, 60, 0, 23, 0, 678.19000000, 2475.00000000, 'D0479', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(327, 61, 0, 19, 5, 1156.04000000, 2975.00000000, 'D0461', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(328, 61, 0, 20, 3, 1156.04000000, 2975.00000000, 'D0463', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(329, 61, 0, 21, 1, 1156.04000000, 2975.00000000, 'D0465', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(330, 61, 0, 22, 1, 1156.04000000, 2975.00000000, 'D0467', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(331, 61, 0, 23, 1, 1156.04000000, 2975.00000000, 'D0469', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(332, 62, 0, 19, 4, 1571.18000000, 4275.00000000, 'D0481', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(333, 62, 0, 20, 2, 1571.18000000, 4275.00000000, 'D0483', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(334, 62, 0, 21, 1, 1571.18000000, 4275.00000000, 'D0485', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(335, 62, 0, 22, 1, 1571.18000000, 4275.00000000, 'D0487', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(336, 62, 0, 23, 1, 1571.18000000, 4275.00000000, 'D0489', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(337, 63, 0, 19, 1, 2462.90000000, 6975.00000000, 'B1460', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(338, 63, 0, 20, 0, 2462.90000000, 6975.00000000, 'B1461', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(339, 63, 0, 21, 0, 2462.90000000, 6975.00000000, 'B1462', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(340, 63, 0, 22, 0, 2462.90000000, 6975.00000000, 'B1463', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(341, 63, 0, 23, 0, 2462.90000000, 6975.00000000, 'B1464', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(342, 64, 0, 19, 2, 1446.68000000, 3765.00000000, 'C5174', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(343, 64, 0, 20, 0, 1446.68000000, 3765.00000000, 'C5175', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(344, 64, 0, 21, 0, 1446.68000000, 3765.00000000, 'C5176', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(345, 64, 0, 22, 0, 1446.68000000, 3765.00000000, 'C5177', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(346, 64, 0, 23, 0, 1446.68000000, 3765.00000000, 'C5178', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(347, 65, 0, 19, 2, 1128.26000000, 3985.00000000, 'C5202', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(348, 65, 0, 20, 0, 1128.26000000, 3985.00000000, 'C5203', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(349, 65, 0, 21, 0, 1128.26000000, 3985.00000000, 'C5204', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(350, 65, 0, 22, 1, 1128.26000000, 3985.00000000, 'C5205', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(351, 65, 0, 23, 0, 1128.26000000, 3985.00000000, 'C5206', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(352, 66, 0, 19, 2, 1151.40000000, 5285.00000000, 'C4901', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(353, 66, 0, 20, 2, 1151.40000000, 5285.00000000, 'C4902', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(354, 66, 0, 21, 0, 1151.40000000, 5285.00000000, 'C4903', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(355, 66, 0, 22, 0, 1151.40000000, 5285.00000000, 'C4904', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(356, 66, 0, 23, 0, 1151.40000000, 5285.00000000, 'C4905', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(357, 67, 0, 2, 3, 490.00000000, 1175.00000000, 'B6135', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(358, 67, 0, 3, 4, 490.00000000, 1175.00000000, 'B6136', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(359, 67, 0, 1, 3, 490.00000000, 1175.00000000, 'B6137', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(360, 67, 0, 4, 0, 490.00000000, 1175.00000000, 'B6138', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(361, 68, 0, 2, 2, 620.00000000, 1275.00000000, 'B6140', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(362, 68, 0, 3, 0, 620.00000000, 1275.00000000, 'B6141', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(363, 68, 0, 1, 0, 620.00000000, 1275.00000000, 'B6142', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(364, 68, 0, 4, 2, 620.00000000, 1275.00000000, 'B6143', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(365, 69, 0, 2, 2, 610.00000000, 1275.00000000, 'B6155', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(366, 69, 0, 3, 0, 610.00000000, 1275.00000000, 'B6156', 10, 0, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(367, 69, 0, 1, 3, 610.00000000, 1275.00000000, 'B6157', 10, 1, NULL, NULL, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(368, 69, 0, 4, 2, 610.00000000, 1275.00000000, 'B6158', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(369, 70, 0, 2, 2, 577.48000000, 1275.00000000, 'C7112', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(370, 70, 0, 3, 1, 577.48000000, 1275.00000000, 'C7113', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(371, 70, 0, 1, 4, 577.48000000, 1275.00000000, 'C7114', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(372, 70, 0, 4, 1, 577.48000000, 1275.00000000, 'C7115', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(373, 71, 0, 2, 4, 425.16000000, 1175.00000000, 'C6772', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(374, 71, 0, 3, 8, 425.16000000, 1175.00000000, 'C6773', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(375, 71, 0, 1, 11, 425.16000000, 1175.00000000, 'C6774', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(376, 71, 0, 4, 3, 425.16000000, 1175.00000000, 'C6775', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(377, 71, 0, 2, 1, 466.76000000, 1175.00000000, 'C7099', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(378, 71, 0, 3, 2, 466.76000000, 1175.00000000, 'C7100', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(379, 71, 0, 1, 1, 466.76000000, 1175.00000000, 'C7101', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(380, 71, 0, 4, 0, 466.76000000, 1175.00000000, 'C7102', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(381, 72, 0, 19, 3, 1715.46000000, 3860.00000000, 'D2114', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(382, 72, 0, 20, 4, 1715.46000000, 3860.00000000, 'D2116', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(383, 72, 0, 21, 1, 1715.46000000, 3860.00000000, 'D2118', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(384, 72, 0, 22, 4, 1715.46000000, 3860.00000000, 'D2120', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(385, 72, 0, 23, 2, 1715.46000000, 3860.00000000, 'D2122', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(386, 73, 0, 19, 2, 1686.45000000, 4675.00000000, 'D2571', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(387, 73, 0, 20, 1, 1686.45000000, 4675.00000000, 'D2573', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(388, 73, 0, 21, 1, 1686.45000000, 4675.00000000, 'D2575', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(389, 73, 0, 22, 0, 1686.45000000, 4675.00000000, 'D2577', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(390, 73, 0, 23, 1, 1686.45000000, 4675.00000000, 'D2579', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(391, 74, 0, 19, 1, 1189.53000000, 2975.00000000, 'D2307', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(392, 74, 0, 20, 3, 1189.53000000, 2975.00000000, 'D2309', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(393, 74, 0, 21, 3, 1189.53000000, 2975.00000000, 'D2311', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(394, 74, 0, 22, 1, 1189.53000000, 2975.00000000, 'D2313', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(395, 74, 0, 23, 0, 1189.53000000, 2975.00000000, 'D2315', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(396, 75, 0, 19, 4, 1420.51000000, 3575.00000000, 'D2777', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(397, 75, 0, 20, 4, 1420.51000000, 3575.00000000, 'D2779', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(398, 75, 0, 21, 5, 1420.51000000, 3575.00000000, 'D2781', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(399, 75, 0, 22, 2, 1420.51000000, 3575.00000000, 'D2783', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(400, 75, 0, 23, 3, 1420.51000000, 3575.00000000, 'D2785', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(401, 76, 0, 19, 1, 948.34000000, 2975.00000000, 'D2064', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(402, 76, 0, 20, 1, 948.34000000, 2975.00000000, 'D2066', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(403, 76, 0, 21, 0, 948.34000000, 2975.00000000, 'D2068', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(404, 76, 0, 22, 0, 948.34000000, 2975.00000000, 'D2070', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(405, 76, 0, 23, 0, 948.34000000, 2975.00000000, 'D2072', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(406, 77, 0, 19, 0, 1463.59000000, 3475.00000000, 'D2096', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(407, 77, 0, 20, 0, 1463.59000000, 3475.00000000, 'D2098', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(408, 77, 0, 21, 0, 1463.59000000, 3475.00000000, 'D2100', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(409, 77, 0, 22, 0, 1463.59000000, 3475.00000000, 'D2102', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(410, 77, 0, 23, 0, 1463.59000000, 3475.00000000, 'D2104', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(411, 78, 0, 19, 2, 3144.44000000, 7975.00000000, 'D2317', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(412, 78, 0, 20, 1, 3144.44000000, 7975.00000000, 'D2319', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(413, 78, 0, 21, 2, 3144.44000000, 7975.00000000, 'D2321', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(414, 78, 0, 22, 3, 3144.44000000, 7975.00000000, 'D2323', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(415, 78, 0, 23, 1, 3144.44000000, 7975.00000000, 'D2325', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(416, 79, 0, 19, 3, 1802.26000000, 4055.00000000, 'D2124', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(417, 79, 0, 20, 2, 1802.26000000, 4055.00000000, 'D2126', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(418, 79, 0, 21, 4, 1802.26000000, 4055.00000000, 'D2128', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(419, 79, 0, 22, 3, 1802.26000000, 4055.00000000, 'D2130', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(420, 79, 0, 23, 1, 1802.26000000, 4055.00000000, 'D2132', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(421, 80, 0, 19, 2, 1271.95000000, 2975.00000000, 'D2337', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(422, 80, 0, 20, 4, 1271.95000000, 2975.00000000, 'D2339', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26');
INSERT INTO `inventories` (`id`, `product_id`, `colour_id`, `size_id`, `stock`, `cpu`, `mrp`, `sku`, `warning_amount`, `disc_status`, `warehouse`, `deleted_at`, `created_at`, `updated_at`) VALUES
(423, 80, 0, 21, 1, 1271.95000000, 2975.00000000, 'D2341', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(424, 80, 0, 22, 2, 1271.95000000, 2975.00000000, 'D2343', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(425, 80, 0, 23, 1, 1271.95000000, 2975.00000000, 'D2345', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(426, 81, 0, 19, 2, 1311.31000000, 3200.00000000, 'D2204', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(427, 81, 0, 20, 4, 1311.31000000, 3200.00000000, 'D2206', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(428, 81, 0, 21, 3, 1311.31000000, 3200.00000000, 'D2208', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(429, 81, 0, 22, 2, 1311.31000000, 3200.00000000, 'D2210', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(430, 81, 0, 23, 2, 1311.31000000, 3200.00000000, 'D2212', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(431, 82, 0, 19, 0, 1560.53000000, 3975.00000000, 'D2457', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(432, 82, 0, 20, 1, 1560.53000000, 3975.00000000, 'D2459', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(433, 82, 0, 21, 0, 1560.53000000, 3975.00000000, 'D2461', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(434, 82, 0, 22, 2, 1560.53000000, 3975.00000000, 'D2463', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(435, 82, 0, 23, 0, 1560.53000000, 3975.00000000, 'D2465', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(436, 83, 0, 19, 3, 1657.96000000, 3975.00000000, 'D2327', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(437, 83, 0, 20, 1, 1657.96000000, 3975.00000000, 'D2329', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(438, 83, 0, 21, 1, 1657.96000000, 3975.00000000, 'D2331', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(439, 83, 0, 22, 0, 1657.96000000, 3975.00000000, 'D2333', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(440, 83, 0, 23, 0, 1657.96000000, 3975.00000000, 'D2335', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(441, 84, 0, 19, 4, 1690.21000000, 3975.00000000, 'D2767', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(442, 84, 0, 20, 3, 1690.21000000, 3975.00000000, 'D2769', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(443, 84, 0, 21, 6, 1690.21000000, 3975.00000000, 'D2771', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(444, 84, 0, 22, 2, 1690.21000000, 3975.00000000, 'D2773', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(445, 84, 0, 23, 2, 1690.21000000, 3975.00000000, 'D2775', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(446, 85, 0, 20, 0, 1304.50000000, 2975.00000000, 'D2944', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(447, 85, 0, 19, 1, 1304.67000000, 2975.00000000, 'D3019', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(448, 85, 0, 21, 1, 1304.67000000, 2975.00000000, 'D3020', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(449, 85, 0, 22, 1, 1304.67000000, 2975.00000000, 'D3021', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(450, 85, 0, 23, 0, 1304.67000000, 2975.00000000, 'D3022', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(451, 86, 0, 19, 1, 1132.34000000, 2875.00000000, 'D3060', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(452, 86, 0, 20, 1, 1132.34000000, 2875.00000000, 'D3061', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(453, 86, 0, 21, 3, 1132.34000000, 2875.00000000, 'D3062', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(454, 86, 0, 22, 0, 1132.34000000, 2875.00000000, 'D3063', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(455, 86, 0, 23, 2, 1132.34000000, 2875.00000000, 'D3064', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(456, 87, 0, 20, 0, 1275.71000000, 2975.00000000, 'D2940', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(457, 87, 0, 19, 1, 1275.71000000, 2975.00000000, 'D3029', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(458, 87, 0, 21, 1, 1275.71000000, 2975.00000000, 'D3030', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(459, 87, 0, 22, 1, 1275.71000000, 2975.00000000, 'D3031', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(460, 87, 0, 23, 1, 1275.71000000, 2975.00000000, 'D3032', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(461, 88, 0, 20, 1, 1005.98000000, 2475.00000000, 'D2942', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(462, 88, 0, 19, 2, 1005.98000000, 2475.00000000, 'D3024', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(463, 88, 0, 21, 1, 1005.98000000, 2475.00000000, 'D3025', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(464, 88, 0, 22, 1, 1005.98000000, 2475.00000000, 'D3026', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(465, 88, 0, 23, 1, 1005.98000000, 2475.00000000, 'D3027', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(466, 89, 0, 19, 2, 700.19000000, 2165.00000000, 'D3146', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(467, 89, 0, 20, 7, 700.19000000, 2165.00000000, 'D3147', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(468, 89, 0, 21, 3, 700.19000000, 2165.00000000, 'D3148', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(469, 89, 0, 22, 0, 700.19000000, 2165.00000000, 'D3149', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(470, 89, 0, 23, 0, 700.19000000, 2165.00000000, 'D3150', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(471, 90, 0, 19, 4, 837.28000000, 2165.00000000, 'D3130', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(472, 90, 0, 20, 3, 837.28000000, 2165.00000000, 'D3131', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(473, 90, 0, 21, 1, 837.28000000, 2165.00000000, 'D3132', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(474, 90, 0, 22, 0, 837.28000000, 2165.00000000, 'D3133', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(475, 90, 0, 23, 0, 837.28000000, 2165.00000000, 'D3134', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(476, 91, 0, 19, 5, 651.78000000, 2165.00000000, 'D3340', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(477, 91, 0, 20, 3, 651.78000000, 2165.00000000, 'D3341', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(478, 91, 0, 21, 0, 651.78000000, 2165.00000000, 'D3342', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(479, 92, 0, 19, 0, 635.03000000, 1965.00000000, 'D3330', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(480, 92, 0, 20, 5, 635.03000000, 1965.00000000, 'D3331', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(481, 92, 0, 21, 0, 635.03000000, 1965.00000000, 'D3332', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(482, 93, 0, 19, 1, 779.01000000, 2165.00000000, 'D3152', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(483, 93, 0, 20, 2, 779.01000000, 2165.00000000, 'D3153', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(484, 93, 0, 21, 0, 779.01000000, 2165.00000000, 'D3154', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(485, 93, 0, 22, 0, 779.01000000, 2165.00000000, 'D3155', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(486, 93, 0, 23, 0, 779.01000000, 2165.00000000, 'D3156', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(487, 94, 0, 0, 0, 3777.86000000, 16000.00000000, 'C8864', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(488, 94, 0, 0, 0, 2305.54000000, 5995.00000000, 'D0343', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(489, 95, 0, 0, 0, 3813.56000000, 10295.00000000, 'B9064', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(490, 95, 0, 0, 4, 3972.96000000, 8500.00000000, 'C8449', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(491, 96, 0, 0, 0, 2255.91000000, 5995.00000000, 'C9085', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(492, 97, 0, 0, 0, 8233.39000000, 27000.00000000, 'D2383', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(493, 97, 0, 0, 1, 8233.39000000, 32550.00000000, 'D3005', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(494, 98, 0, 0, 0, 5974.55000000, 18300.00000000, 'D2291', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(495, 99, 0, 0, 1, 6329.55000000, 18300.00000000, 'D2287', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(496, 100, 0, 0, 2, 6360.80000000, 18300.00000000, 'D2301', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(497, 101, 0, 0, 2, 4472.76000000, 14875.00000000, 'D2297', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(498, 102, 0, 0, 2, 1875.60000000, 4995.00000000, 'C9977', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(499, 103, 0, 0, 3, 1658.28000000, 4500.00000000, 'C9979', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(500, 103, 0, 0, 0, 1958.28000000, 5995.00000000, 'C9981', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(501, 104, 0, 0, 1, 1590.48000000, 4995.00000000, 'D0064', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(502, 105, 0, 0, 0, 2207.89000000, 5995.00000000, 'D0402', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(503, 106, 0, 0, 3, 1630.13000000, 4500.00000000, 'D0411', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(504, 107, 0, 0, 1, 2011.31000000, 4500.00000000, 'D0413', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(505, 108, 0, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(506, 109, 0, 0, 2, 2108.11000000, 4500.00000000, 'D0539', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(507, 110, 0, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(508, 111, 0, 0, 5, 1583.15000000, 4500.00000000, 'D0553', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(509, 112, 0, 0, 3, 2400.59000000, 4995.00000000, 'D0555', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(510, 113, 0, 2, 0, 6326.55000000, 14185.00000000, 'B8045', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(511, 113, 0, 3, 0, 6326.55000000, 14185.00000000, 'B8046', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(512, 113, 0, 1, 1, 6326.55000000, 14185.00000000, 'B8047', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(513, 113, 0, 4, 0, 6326.55000000, 14185.00000000, 'B8048', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(514, 113, 0, 5, 0, 6326.55000000, 14185.00000000, 'B8049', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(515, 114, 0, 2, 0, 5845.82000000, 13995.00000000, 'C2842', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(516, 114, 0, 3, 0, 5845.82000000, 13995.00000000, 'C2843', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(517, 114, 0, 1, 1, 5845.82000000, 13995.00000000, 'C2844', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(518, 114, 0, 4, 0, 5845.82000000, 13995.00000000, 'C2845', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(519, 114, 0, 5, 0, 5845.82000000, 13995.00000000, 'C2846', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(520, 115, 0, 2, 0, 6487.67000000, 19995.00000000, 'C8300', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(521, 115, 0, 3, 2, 6487.67000000, 19995.00000000, 'C8301', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(522, 115, 0, 1, 5, 6487.67000000, 19995.00000000, 'C8302', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(523, 115, 0, 4, 1, 6487.67000000, 19995.00000000, 'C8303', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(524, 115, 0, 5, 0, 6487.67000000, 19995.00000000, 'C8304', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(525, 116, 0, 2, 2, 870.21000000, 2455.00000000, 'B9160', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(526, 116, 0, 3, 0, 870.21000000, 2455.00000000, 'B9161', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(527, 116, 0, 1, 0, 870.21000000, 2455.00000000, 'B9162', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(528, 116, 0, 4, 0, 870.21000000, 2455.00000000, 'B9163', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(529, 116, 0, 5, 0, 870.21000000, 2455.00000000, 'B9164', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(530, 117, 0, 2, 0, 959.72000000, 2455.00000000, 'C6272', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(531, 117, 0, 3, 0, 959.72000000, 2455.00000000, 'C6273', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(532, 117, 0, 1, 0, 959.72000000, 2455.00000000, 'C6274', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(533, 117, 0, 4, 0, 959.72000000, 2455.00000000, 'C6275', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(534, 117, 0, 5, 0, 959.72000000, 2455.00000000, 'C6276', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(535, 118, 0, 2, 0, 997.80000000, 2455.00000000, 'C9394', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(536, 118, 0, 3, 1, 997.80000000, 2455.00000000, 'C9395', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(537, 118, 0, 1, 1, 997.80000000, 2455.00000000, 'C9396', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(538, 118, 0, 4, 1, 997.80000000, 2455.00000000, 'C9397', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(539, 118, 0, 5, 0, 997.80000000, 2455.00000000, 'C9398', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(540, 119, 0, 2, 0, 1506.69000000, 5155.00000000, 'C7181', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(541, 119, 0, 3, 0, 1506.69000000, 5155.00000000, 'C7182', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(542, 119, 0, 1, 0, 1506.69000000, 5155.00000000, 'C7183', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(543, 119, 0, 4, 0, 1506.69000000, 5155.00000000, 'C7184', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(544, 119, 0, 5, 1, 1506.69000000, 5155.00000000, 'C7185', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(545, 120, 0, 0, 0, 611.16000000, 1975.00000000, 'B7493', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(546, 121, 0, 0, 1, 1493.86000000, 4485.00000000, 'D0662', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(547, 122, 0, 2, 0, 1191.57000000, 2535.00000000, 'B2643', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(548, 122, 0, 3, 0, 1191.57000000, 2535.00000000, 'B2644', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(549, 122, 0, 2, 0, 1191.57000000, 2535.00000000, 'B3169', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(550, 122, 0, 3, 0, 1191.57000000, 2535.00000000, 'B3170', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(551, 122, 0, 2, 0, 1191.57000000, 2535.00000000, 'C9806', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(552, 123, 0, 2, 2, 723.25000000, 2065.00000000, 'C2322', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(553, 123, 0, 3, 6, 723.25000000, 2065.00000000, 'C2323', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(554, 123, 0, 1, 4, 723.25000000, 2065.00000000, 'C2324', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(555, 124, 0, 2, 0, 1928.91000000, 5285.00000000, 'C5163', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(556, 124, 0, 3, 0, 1928.91000000, 5285.00000000, 'C5164', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(557, 124, 0, 1, 0, 1928.91000000, 5285.00000000, 'C5165', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(558, 124, 0, 4, 1, 1928.91000000, 5285.00000000, 'C5166', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(559, 125, 0, 2, 2, 2407.78000000, 6985.00000000, 'C4974', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(560, 125, 0, 3, 3, 2407.78000000, 6985.00000000, 'C4975', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(561, 125, 0, 1, 0, 2407.78000000, 6985.00000000, 'C4976', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(562, 125, 0, 4, 1, 2407.78000000, 6985.00000000, 'C4977', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(563, 126, 0, 2, 0, 1239.38000000, 3985.00000000, 'C6066', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(564, 126, 0, 3, 0, 1239.38000000, 3985.00000000, 'C6067', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(565, 126, 0, 1, 0, 1239.38000000, 3985.00000000, 'C6068', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(566, 126, 0, 4, 1, 1239.38000000, 3985.00000000, 'C6069', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(567, 127, 0, 3, 0, 874.05000000, 2455.00000000, 'D0770', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(568, 127, 0, 2, 0, 874.05000000, 2455.00000000, 'D0772', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(569, 128, 0, 3, 2, 1790.37000000, 5855.00000000, 'D0826', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(570, 128, 0, 2, 2, 1905.34000000, 5855.00000000, 'D0828', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(571, 129, 0, 3, 1, 1816.37000000, 5855.00000000, 'D0822', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(572, 129, 0, 2, 0, 1933.20000000, 5855.00000000, 'D0824', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(573, 130, 0, 3, 1, 3113.23000000, 6955.00000000, 'D0788', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(574, 130, 0, 2, 0, 3113.23000000, 6955.00000000, 'D0790', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(575, 131, 0, 1, 2, 830.44000000, 2955.00000000, 'D0830', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(576, 131, 0, 2, 0, 830.44000000, 2955.00000000, 'D0832', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(577, 132, 0, 2, 0, 1494.03000000, 4495.00000000, 'C9129', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(578, 132, 0, 3, 0, 1494.03000000, 4495.00000000, 'C9130', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(579, 132, 0, 1, 2, 1494.03000000, 4495.00000000, 'C9131', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(580, 132, 0, 4, 1, 1494.03000000, 4495.00000000, 'C9132', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(581, 132, 0, 5, 0, 1494.03000000, 4495.00000000, 'C9133', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(582, 133, 0, 0, 4, 2830.20000000, 6195.00000000, 'C6031', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(583, 133, 0, 0, 2, 2830.20000000, 6195.00000000, 'C6032', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(584, 133, 0, 0, 0, 2830.20000000, 6195.00000000, 'C6033', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(585, 133, 0, 0, 1, 2830.20000000, 6195.00000000, 'C6034', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(586, 133, 0, 0, 1, 2830.20000000, 6195.00000000, 'C6035', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(587, 134, 0, 1, 2, 3102.74000000, 8395.00000000, 'D2020', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(588, 134, 0, 3, 0, 3102.74000000, 8395.00000000, 'D2022', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(589, 135, 0, 1, 0, 2425.77000000, 5800.00000000, 'D0390', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(590, 135, 0, 3, 0, 2425.77000000, 5800.00000000, 'D0392', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(591, 135, 0, 2, 0, 2425.77000000, 5800.00000000, 'D0394', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(592, 135, 0, 1, 0, 2425.77000000, 5800.00000000, 'D0730', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(593, 136, 0, 2, 2, 385.00000000, 975.00000000, 'C6724', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(594, 136, 0, 3, 7, 385.00000000, 975.00000000, 'C6725', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(595, 136, 0, 1, 7, 385.00000000, 975.00000000, 'C6726', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(596, 136, 0, 5, 0, 385.00000000, 975.00000000, 'C6727', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(597, 137, 0, 2, 6, 433.84000000, 1175.00000000, 'C7106', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(598, 137, 0, 3, 2, 433.84000000, 1175.00000000, 'C7107', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(599, 137, 0, 1, 11, 433.84000000, 1175.00000000, 'C7108', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(600, 137, 0, 4, 2, 433.84000000, 1175.00000000, 'C7109', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(601, 137, 0, 5, 0, 433.84000000, 1175.00000000, 'C7110', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(602, 137, 0, 2, 0, 642.41000000, 1565.00000000, 'C7499', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(603, 137, 0, 3, 0, 642.41000000, 1565.00000000, 'C7500', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(604, 137, 0, 1, 1, 642.41000000, 1565.00000000, 'C7501', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(605, 137, 0, 4, 0, 642.41000000, 1565.00000000, 'C7502', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(606, 138, 0, 2, 1, 325.74000000, 975.00000000, 'C6729', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(607, 138, 0, 3, 3, 325.74000000, 975.00000000, 'C6730', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(608, 138, 0, 1, 9, 325.74000000, 975.00000000, 'C6731', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(609, 138, 0, 4, 0, 325.74000000, 975.00000000, 'C6732', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(610, 139, 0, 2, 1, 430.84000000, 1175.00000000, 'C6997', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(611, 139, 0, 3, 4, 430.84000000, 1175.00000000, 'C6998', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(612, 139, 0, 1, 6, 430.84000000, 1175.00000000, 'C6999', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(613, 139, 0, 4, 4, 430.84000000, 1175.00000000, 'C7000', 10, 1, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(614, 140, 0, 3, 0, 384.58000000, 955.00000000, 'C5738', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(615, 140, 0, 1, 0, 384.58000000, 955.00000000, 'C5739', 10, 0, NULL, NULL, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(616, 140, 0, 2, 0, 266.95000000, 955.00000000, 'C5741', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(617, 140, 0, 3, 0, 266.95000000, 955.00000000, 'C5742', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(618, 140, 0, 1, 0, 266.95000000, 955.00000000, 'C5743', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(619, 140, 0, 2, 0, 270.64000000, 955.00000000, 'C5745', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(620, 140, 0, 3, 0, 270.64000000, 955.00000000, 'C5746', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(621, 140, 0, 1, 3, 270.64000000, 955.00000000, 'C5747', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(622, 140, 0, 2, 0, 273.80000000, 955.00000000, 'C5749', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(623, 140, 0, 3, 0, 273.80000000, 955.00000000, 'C5750', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(624, 140, 0, 1, 0, 273.80000000, 955.00000000, 'C5751', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(625, 140, 0, 2, 0, 406.07000000, 955.00000000, 'C5753', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(626, 140, 0, 3, 0, 406.07000000, 955.00000000, 'C5754', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(627, 140, 0, 1, 0, 406.07000000, 955.00000000, 'C5755', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(628, 141, 0, 2, 1, 1149.60000000, 2955.00000000, 'D3170', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(629, 141, 0, 3, 3, 1149.60000000, 2955.00000000, 'D3171', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(630, 141, 0, 1, 2, 1149.60000000, 2955.00000000, 'D3172', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(631, 141, 0, 1, 0, 1149.60000000, 2955.00000000, 'D3174', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(632, 142, 0, 2, 1, 1104.91000000, 2955.00000000, 'D3116', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(633, 142, 0, 3, 2, 1104.91000000, 2955.00000000, 'D3117', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(634, 142, 0, 1, 3, 1104.91000000, 2955.00000000, 'D3118', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(645, 148, 0, 0, 1, 11870.72000000, 26440.00000000, 'D2607', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(647, 150, 0, 0, 0, 12197.98000000, 32500.00000000, 'D2283', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(648, 151, 0, 0, 1, 10406.34000000, 27900.00000000, 'D1968', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(649, 152, 0, 0, 1, 5579.87000000, 15810.00000000, 'D1972', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(650, 152, 0, 0, 7, 5579.87000000, 15810.00000000, 'D2299', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(651, 153, 0, 0, 2, 1347.54000000, 3975.00000000, 'D3178', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(652, 154, 0, 2, 2, 1214.46000000, 2975.00000000, 'D3120', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(653, 154, 0, 3, 0, 1214.46000000, 2975.00000000, 'D3121', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(654, 154, 0, 1, 0, 1214.46000000, 2975.00000000, 'D3122', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(655, 155, 0, 1, 4, 3231.43000000, 8395.00000000, 'D1912', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(656, 155, 0, 3, 5, 3231.43000000, 8395.00000000, 'D1914', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(657, 155, 0, 2, 4, 3231.43000000, 8395.00000000, 'D1916', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(658, 156, 0, 1, 0, 908.71000000, 2275.00000000, 'D2056', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(659, 156, 0, 3, 0, 908.71000000, 2275.00000000, 'D2058', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(660, 156, 0, 2, 0, 908.71000000, 2275.00000000, 'D2060', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(661, 156, 0, 3, 0, 908.71000000, 2275.00000000, 'D2062', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(662, 157, 0, 1, 0, 708.81000000, 2275.00000000, 'D1938', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(663, 157, 0, 3, 0, 708.81000000, 2275.00000000, 'D1940', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(664, 157, 0, 2, 0, 708.81000000, 2275.00000000, 'D1942', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(665, 158, 0, 1, 1, 1474.63000000, 3695.00000000, 'D2347', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(666, 158, 0, 3, 0, 1474.63000000, 3695.00000000, 'D2349', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(667, 158, 0, 2, 0, 1474.63000000, 3695.00000000, 'D2351', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(671, 160, 0, 1, 0, 1224.62000000, 2995.00000000, 'D2252', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(672, 160, 0, 3, 0, 1224.62000000, 2995.00000000, 'D2254', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(673, 160, 0, 2, 3, 1224.62000000, 2995.00000000, 'D2256', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(674, 161, 0, 1, 0, 4449.24000000, 10975.00000000, 'D2549', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(675, 161, 0, 3, 1, 4449.24000000, 10975.00000000, 'D2551', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(676, 161, 0, 2, 2, 4449.24000000, 10975.00000000, 'D2553', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(677, 162, 0, 1, 0, 4120.95000000, 9975.00000000, 'D2543', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(678, 162, 0, 3, 1, 4120.95000000, 9975.00000000, 'D2545', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(679, 162, 0, 2, 1, 4120.95000000, 9975.00000000, 'D2547', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(680, 163, 0, 1, 1, 4974.84000000, 11975.00000000, 'D2791', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(681, 163, 0, 3, 3, 4974.84000000, 11975.00000000, 'D2793', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(682, 163, 0, 2, 1, 4974.84000000, 11975.00000000, 'D2795', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(683, 164, 0, 0, 0, 2316.68000000, 4775.00000000, 'D0920', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(684, 165, 0, 0, 0, 819.96000000, 1975.00000000, 'D2258', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(685, 166, 0, 0, 1, 2115.88000000, 5485.00000000, 'D2787', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(686, 167, 0, 0, 1, 1582.72000000, 4075.00000000, 'D2934', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(687, 168, 0, 0, 0, 597.03000000, 1975.00000000, 'D2755', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(688, 169, 0, 0, 1, 1069.48000000, 2790.00000000, 'D2673', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(689, 170, 0, 0, 4, 2291.67000000, 5995.00000000, 'D2930', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(690, 171, 0, 0, 6, 826.11000000, 1975.00000000, 'D2993', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(692, 173, 0, 0, 0, 4547.32000000, 10995.00000000, 'D0962', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(693, 174, 0, 0, 7, 1997.47000000, 5995.00000000, 'D0936', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(694, 175, 0, 0, 8, 2225.74000000, 5995.00000000, 'D0938', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(695, 176, 0, 0, 3, 2986.71000000, 5995.00000000, 'D0928', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(696, 177, 0, 0, 4, 1833.32000000, 4995.00000000, 'D0926', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(697, 178, 0, 0, 7, 2309.95000000, 4500.00000000, 'D0986', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(698, 179, 0, 0, 7, 1709.97000000, 4995.00000000, 'D0966', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(699, 180, 0, 0, 1, 2454.92000000, 4995.00000000, 'D0980', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(700, 181, 0, 0, 6, 2577.93000000, 4995.00000000, 'D1042', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(701, 182, 0, 0, 9, 1806.68000000, 4500.00000000, 'D1310', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(702, 183, 0, 0, 0, 2358.45000000, 4995.00000000, 'D0982', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(703, 184, 0, 0, 5, 8002.74000000, 17995.00000000, 'D1768', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(704, 185, 0, 0, 1, 7322.34000000, 17995.00000000, 'D2082', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(705, 186, 0, 0, 5, 6689.67000000, 16995.00000000, 'D2250', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(706, 187, 0, 0, 6, 2971.28000000, 5995.00000000, 'D1644', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(707, 188, 0, 0, 5, 3376.90000000, 6995.00000000, 'D1564', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(708, 189, 0, 0, 5, 1464.94000000, 4995.00000000, 'D1724', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(709, 190, 0, 0, 2, 1979.28000000, 4995.00000000, 'D1824', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(710, 191, 0, 0, 6, 2030.01000000, 6090.00000000, 'D1854', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(711, 192, 0, 0, 5, 1964.33000000, 5895.00000000, 'D1888', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(712, 193, 0, 0, 7, 1246.31000000, 3995.00000000, 'D1878', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(713, 194, 0, 0, 4, 1595.04000000, 4995.00000000, 'D2032', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(714, 195, 0, 0, 3, 7718.32000000, 16995.00000000, 'D1764', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(715, 196, 0, 0, 1, 7114.77000000, 16995.00000000, 'D1962', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(716, 197, 0, 0, 2, 3194.11000000, 10995.00000000, 'D1966', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(717, 198, 0, 0, 2, 7378.65000000, 17995.00000000, 'D2269', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(718, 199, 0, 0, 3, 7543.70000000, 17995.00000000, 'D2088', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(719, 200, 0, 0, 6, 2756.49000000, 6995.00000000, 'D2248', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(720, 201, 0, 0, 2, 2600.29000000, 5995.00000000, 'D2026', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(721, 202, 0, 0, 5, 3665.75000000, 9200.00000000, 'D2090', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(722, 203, 0, 0, 4, 3359.82000000, 10995.00000000, 'D2024', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(723, 204, 0, 0, 3, 7128.73000000, 17995.00000000, 'D2387', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(724, 205, 0, 0, 7, 2317.49000000, 6945.00000000, 'D2273', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(725, 206, 0, 0, 6, 2441.00000000, 6945.00000000, 'D2271', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(726, 207, 0, 0, 2, 3441.42000000, 10995.00000000, 'D2367', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(727, 208, 0, 0, 6, 4298.88000000, 12995.00000000, 'D2246', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(728, 209, 0, 0, 0, 7305.52000000, 17995.00000000, 'D2262', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(729, 209, 0, 0, 0, 7305.52000000, 17995.00000000, 'D2263', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(730, 209, 0, 0, 0, 7305.52000000, 17995.00000000, 'D2264', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(731, 209, 0, 0, 0, 7305.52000000, 17995.00000000, 'D2265', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(732, 209, 0, 0, 0, 7305.52000000, 17995.00000000, 'D2266', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(733, 209, 0, 0, 2, 7305.52000000, 17995.00000000, 'D2275', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(734, 210, 0, 0, 8, 2706.48000000, 6995.00000000, 'D2429', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(735, 211, 0, 0, 7, 2426.52000000, 6945.00000000, 'D2667', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(736, 212, 0, 0, 2, 4199.79000000, 10995.00000000, 'D2601', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(737, 213, 0, 0, 10, 7931.80000000, 17995.00000000, 'D2884', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(738, 214, 0, 0, 9, 2171.63000000, 5995.00000000, 'D2665', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(739, 215, 0, 0, 2, 4117.52000000, 10995.00000000, 'D2737', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(740, 216, 0, 0, 6, 2046.07000000, 5995.00000000, 'D2882', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(741, 217, 0, 0, 4, 4357.43000000, 10995.00000000, 'D2880', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(742, 218, 0, 0, 7, 7595.95000000, 17995.00000000, 'D2954', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(743, 219, 0, 0, 4, 3560.41000000, 10995.00000000, 'D2924', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(744, 220, 0, 0, 5, 2019.43000000, 5995.00000000, 'D2888', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(745, 221, 0, 0, 4, 4169.40000000, 10995.00000000, 'D2890', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(746, 222, 0, 0, 0, 8360.34000000, 18600.00000000, 'D2936', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(747, 223, 0, 0, 5, 3498.69000000, 10995.00000000, 'D2968', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(748, 224, 0, 0, 5, 3119.33000000, 10995.00000000, 'D3052', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(749, 225, 0, 0, 0, 1236.52000000, 3075.00000000, 'D2695', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(750, 226, 0, 0, 0, 365.45000000, 1075.00000000, 'D2671', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(751, 227, 0, 3, 2, 802.89000000, 2165.00000000, 'D3323', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(752, 227, 0, 1, 3, 802.89000000, 2165.00000000, 'D3324', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(753, 227, 0, 4, 4, 802.89000000, 2165.00000000, 'D3325', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(754, 227, 0, 5, 2, 802.89000000, 2165.00000000, 'D3326', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(755, 227, 0, 1, 0, 745.63000000, 1955.00000000, 'D3328', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(756, 228, 0, 2, 2, 6917.53000000, 16485.00000000, 'D3048', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(757, 228, 0, 3, 1, 6917.53000000, 16485.00000000, 'D3049', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(758, 228, 0, 1, 3, 6917.53000000, 16485.00000000, 'D3050', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(759, 229, 0, 3, 2, 4337.55000000, 10485.00000000, 'D2970', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(760, 229, 0, 1, 2, 4337.55000000, 10485.00000000, 'D2971', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(761, 229, 0, 2, 2, 4337.55000000, 10485.00000000, 'D3268', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(762, 230, 0, 2, 2, 8243.41000000, 18550.00000000, 'D3066', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(763, 230, 0, 3, 3, 8243.41000000, 18550.00000000, 'D3067', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(764, 230, 0, 1, 4, 8243.41000000, 18550.00000000, 'D3068', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(765, 230, 0, 4, 2, 8243.41000000, 18550.00000000, 'D3069', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(766, 230, 0, 5, 0, 8243.41000000, 18550.00000000, 'D3070', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(767, 231, 0, 2, 7, 783.41000000, 1875.00000000, 'D3136', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(768, 231, 0, 3, 3, 783.41000000, 1875.00000000, 'D3137', 10, 1, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(769, 231, 0, 1, 0, 783.41000000, 1875.00000000, 'D3138', 10, 0, NULL, NULL, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(777, 2, 0, 11, 0, 548.12000000, 1675.00000000, 'C4524', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(778, 2, 0, 16, 1, 548.12000000, 1675.00000000, 'C4525', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(779, 2, 0, 7, 2, 620.16000000, 1975.00000000, 'C4527', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(780, 2, 0, 17, 2, 620.16000000, 1975.00000000, 'C4528', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(781, 2, 0, 9, 3, 877.47000000, 2475.00000000, 'C4540', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(786, 52, 0, 19, 3, 1675.42000000, 4675.00000000, 'C6224', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(787, 52, 0, 20, 0, 1675.42000000, 4675.00000000, 'C6225', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(788, 52, 0, 21, 0, 1675.42000000, 4675.00000000, 'C6226', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(789, 52, 0, 22, 0, 1675.42000000, 4675.00000000, 'C6227', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(790, 52, 0, 23, 0, 1675.42000000, 4675.00000000, 'C6228', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(815, 159, 0, 1, 1, 1225.64000000, 2995.00000000, 'D2353', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(816, 159, 0, 3, 1, 1225.64000000, 2995.00000000, 'D2357', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(817, 159, 0, 2, 3, 1225.64000000, 2995.00000000, 'D2359', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(824, 146, 0, 3, 1, 1119.87000000, 2955.00000000, 'D2956', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(825, 146, 0, 2, 2, 1256.60000000, 2955.00000000, 'D2958', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(838, 145, 0, 2, 2, 3762.99000000, 9300.00000000, 'D2908', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(839, 145, 0, 3, 2, 3762.99000000, 9300.00000000, 'D2909', 10, 1, NULL, NULL, '2022-03-11 18:00:00', NULL),
(848, 143, 0, 1, 4, 642.52000000, 1955.00000000, 'D3124', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(849, 143, 0, 1, 1, 642.52000000, 1955.00000000, 'D3126', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(850, 172, 0, 0, 1, 1061.46000000, 2460.00000000, 'D2975', 10, 0, NULL, NULL, '2023-11-19 05:46:36', '2023-11-19 05:46:36'),
(855, 147, 0, 1, 4, 3203.97000000, 8395.00000000, 'D1582', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(856, 147, 0, 3, 3, 3203.97000000, 8395.00000000, 'D1584', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(860, 144, 17, 2, 3, 2966.76000000, 7440.00000000, 'D2917', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(861, 144, 12, 2, 3, 2966.76000000, 7440.00000000, 'D2917', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(862, 144, 12, 3, 2, 2966.76000000, 7440.00000000, 'D2918', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL),
(865, 232, 0, 13, 1, 714.79000000, 1685.00000000, 'C5627', 10, 0, NULL, NULL, '2022-03-11 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `makings`
--

CREATE TABLE `makings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `making_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `makings`
--

INSERT INTO `makings` (`id`, `making_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Stitched', 'stitched', NULL, 1, NULL, '2023-03-07 04:57:23', '2023-03-11 09:37:43'),
(2, 'Unstitched', 'unstitched', NULL, 1, NULL, '2023-03-07 04:57:29', '2023-03-11 09:38:01'),
(3, 'Test purpose', 'test-purpose', NULL, 1, NULL, '2023-09-21 11:55:54', '2023-09-21 11:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `media_managers`
--

CREATE TABLE `media_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'image/video/gif/pdf',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cld_public_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_managers`
--

INSERT INTO `media_managers` (`id`, `file_link`, `file_type`, `product_name`, `cld_public_id`, `extension`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://res.cloudinary.com/diyc1dizi/image/upload/16_1.png', 'image', '16_1', '16_1', 'png', 1, '2023-09-05 12:05:52', NULL),
(2, 'https://res.cloudinary.com/diyc1dizi/image/upload/11_1.png', 'image', '11_1', '11_1', 'png', 1, '2023-09-05 12:05:52', NULL),
(3, 'https://res.cloudinary.com/diyc1dizi/image/upload/12_1.png', 'image', '12_1', '12_1', 'png', 1, '2023-09-05 12:05:52', NULL),
(4, 'https://res.cloudinary.com/diyc1dizi/image/upload/43.png', 'image', '43', '43', 'png', 1, '2023-09-05 12:05:52', NULL),
(5, 'https://res.cloudinary.com/diyc1dizi/image/upload/13_1.png', 'image', '13_1', '13_1', 'png', 1, '2023-09-05 12:06:39', NULL),
(6, 'https://res.cloudinary.com/diyc1dizi/image/upload/28_1.png', 'image', '28_1', '28_1', 'png', 1, '2023-09-05 12:06:39', NULL),
(7, 'https://res.cloudinary.com/diyc1dizi/image/upload/10_2.png', 'image', '10_2', '10_2', 'png', 1, '2023-09-05 12:06:39', NULL),
(8, 'https://res.cloudinary.com/diyc1dizi/image/upload/10_1.png', 'image', '10_1', '10_1', 'png', 1, '2023-09-05 12:06:39', NULL),
(9, 'https://res.cloudinary.com/diyc1dizi/image/upload/21_1.png', 'image', '21_1', '21_1', 'png', 1, '2023-09-05 12:06:47', NULL),
(10, 'https://res.cloudinary.com/diyc1dizi/image/upload/32_1.png', 'image', '32_1', '32_1', 'png', 1, '2023-09-05 12:06:47', NULL),
(11, 'https://res.cloudinary.com/diyc1dizi/image/upload/9_1.png', 'image', '9_1', '9_1', 'png', 1, '2023-09-05 12:06:47', NULL),
(12, 'https://res.cloudinary.com/diyc1dizi/image/upload/7_1.png', 'image', '7_1', '7_1', 'png', 1, '2023-09-05 12:06:47', NULL),
(13, 'https://res.cloudinary.com/diyc1dizi/image/upload/96_2.png', 'image', '96_2', '96_2', 'png', 1, '2023-09-05 12:06:56', NULL),
(14, 'https://res.cloudinary.com/diyc1dizi/image/upload/WKS001NK23B22ROK2422_1.jpg', 'image', 'WKS001NK23B22ROK2422_1', 'WKS001NK23B22ROK2422_1', 'jpg', 1, '2023-09-05 12:06:56', NULL),
(15, 'https://res.cloudinary.com/diyc1dizi/image/upload/WKS001NK23B22ROK2422_3.jpg', 'image', 'WKS001NK23B22ROK2422_3', 'WKS001NK23B22ROK2422_3', 'jpg', 1, '2023-09-05 12:06:56', NULL),
(16, 'https://res.cloudinary.com/diyc1dizi/image/upload/WKS001NK23B22ROK2422_4.jpg', 'image', 'WKS001NK23B22ROK2422_4', 'WKS001NK23B22ROK2422_4', 'jpg', 1, '2023-09-05 12:06:56', NULL),
(17, 'https://res.cloudinary.com/diyc1dizi/image/upload/WKS001NK23B22ROK2422_2.jpg', 'image', 'WKS001NK23B22ROK2422_2', 'WKS001NK23B22ROK2422_2', 'jpg', 1, '2023-09-05 12:07:07', NULL),
(18, 'https://res.cloudinary.com/diyc1dizi/image/upload/29_1.png', 'image', '29_1', '29_1', 'png', 1, '2023-09-05 12:07:07', NULL),
(19, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/248.webp', 'image', '248', 'aranya/248', 'webp', 1, '2023-09-05 12:07:07', NULL),
(20, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/182.png', 'image', '182', 'aranya/182', 'png', 1, '2023-09-05 12:07:07', NULL),
(21, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/183.png', 'image', '183', 'aranya/183', 'png', 1, '2023-09-05 12:07:18', NULL),
(22, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/H2105_1.webp', 'image', 'H2105_1', 'aranya/H2105_1', 'webp', 1, '2023-09-05 12:07:18', NULL),
(23, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/277.webp', 'image', '277', 'aranya/277', 'webp', 1, '2023-09-05 12:07:18', NULL),
(24, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/181.png', 'image', '181', 'aranya/181', 'png', 1, '2023-09-05 12:07:18', NULL),
(25, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/180.png', 'image', '180', 'aranya/180', 'png', 1, '2023-09-05 12:07:29', NULL),
(26, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/MPA016MC04B23INHC0623_2.jpg', 'image', 'MPA016MC04B23INHC0623_2', 'aranya/MPA016MC04B23INHC0623_2', 'jpg', 1, '2023-09-05 12:07:29', NULL),
(27, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/MPA016MC04B23INHC0623_3.jpg', 'image', 'MPA016MC04B23INHC0623_3', 'aranya/MPA016MC04B23INHC0623_3', 'jpg', 1, '2023-09-05 12:07:29', NULL),
(28, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/ZS001434.jpg', 'image', 'ZS001434', 'aranya/ZS001434', 'jpg', 1, '2023-09-05 12:07:37', NULL),
(29, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/MPA016MC04B23INHC0623_4.jpg', 'image', 'MPA016MC04B23INHC0623_4', 'aranya/MPA016MC04B23INHC0623_4', 'jpg', 1, '2023-09-05 12:07:37', NULL),
(30, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/MPA016MC04B23INHC0623_1.jpg', 'image', 'MPA016MC04B23INHC0623_1', 'aranya/MPA016MC04B23INHC0623_1', 'jpg', 1, '2023-09-05 12:07:37', NULL),
(31, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product-v2/Web_3.mp4', 'video', 'Web_3', 'aranya-product-v2/Web_3', 'mp4', 1, '2023-09-05 12:07:44', NULL),
(32, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product-v2/Web_4.mp4', 'video', 'Web_4', 'aranya-product-v2/Web_4', 'mp4', 1, '2023-09-05 12:07:44', NULL),
(33, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/MPA010BA04E123INHC0623_1.jpg', 'image', 'MPA010BA04E123INHC0623_1', 'aranya/MPA010BA04E123INHC0623_1', 'jpg', 1, '2023-09-05 12:07:44', NULL),
(34, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product-v2/Web_1.mp4', 'video', 'Web_1', 'aranya-product-v2/Web_1', 'mp4', 1, '2023-09-05 12:07:57', NULL),
(35, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product-v2/Web_2.mp4', 'video', 'Web_2', 'aranya-product-v2/Web_2', 'mp4', 1, '2023-09-05 12:07:57', NULL),
(36, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSC_8201.jpg', 'image', 'DSC_8201', 'aranya-product-v2/DSC_8201', 'jpg', 1, '2023-09-05 12:07:57', NULL),
(37, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSCF0178.jpg', 'image', 'DSCF0178', 'aranya-product-v2/DSCF0178', 'jpg', 1, '2023-09-05 12:07:57', NULL),
(38, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSC_8136.jpg', 'image', 'DSC_8136', 'aranya-product-v2/DSC_8136', 'jpg', 1, '2023-09-05 12:08:09', NULL),
(39, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/W0041655SF03204321_1.jpg', 'image', 'W0041655SF03204321_1', 'aranya/W0041655SF03204321_1', 'jpg', 1, '2023-09-05 12:08:09', NULL),
(40, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/W0041655SF03204321_4.jpg', 'image', 'W0041655SF03204321_4', 'aranya/W0041655SF03204321_4', 'jpg', 1, '2023-09-05 12:08:09', NULL),
(41, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/W0041655SF03204321_3.jpg', 'image', 'W0041655SF03204321_3', 'aranya/W0041655SF03204321_3', 'jpg', 1, '2023-09-05 12:08:09', NULL),
(42, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/W0041655SF03204321_2.jpg', 'image', 'W0041655SF03204321_2', 'aranya/W0041655SF03204321_2', 'jpg', 1, '2023-09-05 12:08:18', NULL),
(43, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/310.jpg', 'image', '310', 'aranya/310', 'jpg', 1, '2023-09-05 12:08:18', NULL),
(44, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/24.jpg', 'image', '24', 'aranya/24', 'jpg', 1, '2023-09-05 12:08:18', NULL),
(45, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product/boishakh/Loop_For_Website.mp4', 'video', 'Loop_For_Website', 'aranya-product/boishakh/Loop_For_Website', 'mp4', 1, '2023-09-05 12:08:18', NULL),
(46, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS002030.jpg', 'image', 'ZS002030', 'aranya-product/boishakh/ZS002030', 'jpg', 1, '2023-09-05 12:08:34', NULL),
(47, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product/boishakh/Boishakh_23_without_bar.mp4', 'video', 'Boishakh_23_without_bar', 'aranya-product/boishakh/Boishakh_23_without_bar', 'mp4', 1, '2023-09-05 12:08:34', NULL),
(48, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001742.jpg', 'image', 'ZS001742', 'aranya-product/boishakh/ZS001742', 'jpg', 1, '2023-09-05 12:08:34', NULL),
(49, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001518.jpg', 'image', 'ZS001518', 'aranya-product/boishakh/ZS001518', 'jpg', 1, '2023-09-05 12:08:34', NULL),
(50, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001519.jpg', 'image', 'ZS001519', 'aranya-product/boishakh/ZS001519', 'jpg', 1, '2023-09-05 12:08:45', NULL),
(51, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001943.jpg', 'image', 'ZS001943', 'aranya-product/boishakh/ZS001943', 'jpg', 1, '2023-09-05 12:08:45', NULL),
(52, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001713.jpg', 'image', 'ZS001713', 'aranya-product/boishakh/ZS001713', 'jpg', 1, '2023-09-05 12:08:45', NULL),
(53, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001529.jpg', 'image', 'ZS001529', 'aranya-product/boishakh/ZS001529', 'jpg', 1, '2023-09-05 12:08:45', NULL),
(54, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001942.jpg', 'image', 'ZS001942', 'aranya-product/boishakh/ZS001942', 'jpg', 1, '2023-09-05 12:08:54', NULL),
(55, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001690.jpg', 'image', 'ZS001690', 'aranya-product/boishakh/ZS001690', 'jpg', 1, '2023-09-05 12:08:54', NULL),
(56, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001521.jpg', 'image', 'ZS001521', 'aranya-product/boishakh/ZS001521', 'jpg', 1, '2023-09-05 12:08:54', NULL),
(57, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001793.jpg', 'image', 'ZS001793', 'aranya-product/boishakh/ZS001793', 'jpg', 1, '2023-09-05 12:08:54', NULL),
(58, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001819.jpg', 'image', 'ZS001819', 'aranya-product/boishakh/ZS001819', 'jpg', 1, '2023-09-05 12:09:02', NULL),
(59, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001821.jpg', 'image', 'ZS001821', 'aranya-product/boishakh/ZS001821', 'jpg', 1, '2023-09-05 12:09:02', NULL),
(60, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001790.jpg', 'image', 'ZS001790', 'aranya-product/boishakh/ZS001790', 'jpg', 1, '2023-09-05 12:09:02', NULL),
(61, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001942.jpg', 'image', 'ZS001942', 'aranya-product/boishakh/ZS001942', 'jpg', 1, '2023-09-05 12:11:05', NULL),
(62, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001529.jpg', 'image', 'ZS001529', 'aranya-product/boishakh/ZS001529', 'jpg', 1, '2023-09-05 12:11:05', NULL),
(63, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001713.jpg', 'image', 'ZS001713', 'aranya-product/boishakh/ZS001713', 'jpg', 1, '2023-09-05 12:11:05', NULL),
(64, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001943.jpg', 'image', 'ZS001943', 'aranya-product/boishakh/ZS001943', 'jpg', 1, '2023-09-05 12:11:05', NULL),
(65, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001793.jpg', 'image', 'ZS001793', 'aranya-product/boishakh/ZS001793', 'jpg', 1, '2023-09-05 12:11:20', NULL),
(66, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001521.jpg', 'image', 'ZS001521', 'aranya-product/boishakh/ZS001521', 'jpg', 1, '2023-09-05 12:11:20', NULL),
(67, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001690.jpg', 'image', 'ZS001690', 'aranya-product/boishakh/ZS001690', 'jpg', 1, '2023-09-05 12:11:20', NULL),
(68, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001819.jpg', 'image', 'ZS001819', 'aranya-product/boishakh/ZS001819', 'jpg', 1, '2023-09-05 12:18:35', NULL),
(69, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001821.jpg', 'image', 'ZS001821', 'aranya-product/boishakh/ZS001821', 'jpg', 1, '2023-09-05 12:18:35', NULL),
(70, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001790.jpg', 'image', 'ZS001790', 'aranya-product/boishakh/ZS001790', 'jpg', 1, '2023-09-05 12:18:35', NULL),
(71, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001451-2.jpg', 'image', 'ZS001451-2', 'aranya-product/boishakh/ZS001451-2', 'jpg', 1, '2023-09-05 12:18:43', NULL),
(72, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001573.jpg', 'image', 'ZS001573', 'aranya-product/boishakh/ZS001573', 'jpg', 1, '2023-09-05 12:18:43', NULL),
(73, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001502.jpg', 'image', 'ZS001502', 'aranya-product/boishakh/ZS001502', 'jpg', 1, '2023-09-05 12:18:43', NULL),
(74, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001694.jpg', 'image', 'ZS001694', 'aranya-product/boishakh/ZS001694', 'jpg', 1, '2023-09-05 12:18:43', NULL),
(75, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001488.jpg', 'image', 'ZS001488', 'aranya-product/boishakh/ZS001488', 'jpg', 1, '2023-09-05 12:18:51', NULL),
(76, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001451.jpg', 'image', 'ZS001451', 'aranya-product/boishakh/ZS001451', 'jpg', 1, '2023-09-05 12:18:51', NULL),
(77, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001900.jpg', 'image', 'ZS001900', 'aranya-product/boishakh/ZS001900', 'jpg', 1, '2023-09-05 12:18:51', NULL),
(78, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001598.jpg', 'image', 'ZS001598', 'aranya-product/boishakh/ZS001598', 'jpg', 1, '2023-09-05 12:18:51', NULL),
(79, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001482.jpg', 'image', 'ZS001482', 'aranya-product/boishakh/ZS001482', 'jpg', 1, '2023-09-05 12:18:58', NULL),
(80, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001503.jpg', 'image', 'ZS001503', 'aranya-product/boishakh/ZS001503', 'jpg', 1, '2023-09-05 12:18:58', NULL),
(81, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001744.jpg', 'image', 'ZS001744', 'aranya-product/boishakh/ZS001744', 'jpg', 1, '2023-09-05 12:18:58', NULL),
(82, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001485.jpg', 'image', 'ZS001485', 'aranya-product/boishakh/ZS001485', 'jpg', 1, '2023-09-05 12:18:58', NULL),
(83, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001564.jpg', 'image', 'ZS001564', 'aranya-product/boishakh/ZS001564', 'jpg', 1, '2023-09-05 12:19:07', NULL),
(84, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001438.jpg', 'image', 'ZS001438', 'aranya-product/boishakh/ZS001438', 'jpg', 1, '2023-09-05 12:19:07', NULL),
(85, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001916.jpg', 'image', 'ZS001916', 'aranya-product/boishakh/ZS001916', 'jpg', 1, '2023-09-05 12:19:07', NULL),
(86, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001922.jpg', 'image', 'ZS001922', 'aranya-product/boishakh/ZS001922', 'jpg', 1, '2023-09-05 12:19:07', NULL),
(87, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001622.jpg', 'image', 'ZS001622', 'aranya-product/boishakh/ZS001622', 'jpg', 1, '2023-09-05 12:19:13', NULL),
(88, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001671.jpg', 'image', 'ZS001671', 'aranya-product/boishakh/ZS001671', 'jpg', 1, '2023-09-05 12:19:13', NULL),
(89, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001770.jpg', 'image', 'ZS001770', 'aranya-product/boishakh/ZS001770', 'jpg', 1, '2023-09-05 12:19:13', NULL),
(90, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001434-2.jpg', 'image', 'ZS001434-2', 'aranya-product/boishakh/ZS001434-2', 'jpg', 1, '2023-09-05 12:19:23', NULL),
(91, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001601.jpg', 'image', 'ZS001601', 'aranya-product/boishakh/ZS001601', 'jpg', 1, '2023-09-05 12:19:23', NULL),
(92, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001857.jpg', 'image', 'ZS001857', 'aranya-product/boishakh/ZS001857', 'jpg', 1, '2023-09-05 12:19:23', NULL),
(93, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001828.jpg', 'image', 'ZS001828', 'aranya-product/boishakh/ZS001828', 'jpg', 1, '2023-09-05 12:19:23', NULL),
(94, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001875.jpg', 'image', 'ZS001875', 'aranya-product/boishakh/ZS001875', 'jpg', 1, '2023-09-05 12:19:32', NULL),
(95, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001571.jpg', 'image', 'ZS001571', 'aranya-product/boishakh/ZS001571', 'jpg', 1, '2023-09-05 12:19:32', NULL),
(96, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001939.jpg', 'image', 'ZS001939', 'aranya-product/boishakh/ZS001939', 'jpg', 1, '2023-09-05 12:19:32', NULL),
(97, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001795.jpg', 'image', 'ZS001795', 'aranya-product/boishakh/ZS001795', 'jpg', 1, '2023-09-05 12:19:32', NULL),
(98, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001583.jpg', 'image', 'ZS001583', 'aranya-product/boishakh/ZS001583', 'jpg', 1, '2023-09-05 12:19:40', NULL),
(99, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001525.jpg', 'image', 'ZS001525', 'aranya-product/boishakh/ZS001525', 'jpg', 1, '2023-09-05 12:19:40', NULL),
(100, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001552.jpg', 'image', 'ZS001552', 'aranya-product/boishakh/ZS001552', 'jpg', 1, '2023-09-05 12:19:40', NULL),
(101, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001703.jpg', 'image', 'ZS001703', 'aranya-product/boishakh/ZS001703', 'jpg', 1, '2023-09-05 12:19:40', NULL),
(102, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001554.jpg', 'image', 'ZS001554', 'aranya-product/boishakh/ZS001554', 'jpg', 1, '2023-09-05 12:19:51', NULL),
(103, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001654.jpg', 'image', 'ZS001654', 'aranya-product/boishakh/ZS001654', 'jpg', 1, '2023-09-05 12:19:51', NULL),
(104, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001542.jpg', 'image', 'ZS001542', 'aranya-product/boishakh/ZS001542', 'jpg', 1, '2023-09-05 12:19:51', NULL),
(105, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001941.jpg', 'image', 'ZS001941', 'aranya-product/boishakh/ZS001941', 'jpg', 1, '2023-09-05 12:19:51', NULL),
(106, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001662.jpg', 'image', 'ZS001662', 'aranya-product/boishakh/ZS001662', 'jpg', 1, '2023-09-05 12:20:01', NULL),
(107, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001721.jpg', 'image', 'ZS001721', 'aranya-product/boishakh/ZS001721', 'jpg', 1, '2023-09-05 12:20:01', NULL),
(108, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001436.jpg', 'image', 'ZS001436', 'aranya-product/boishakh/ZS001436', 'jpg', 1, '2023-09-05 12:20:01', NULL),
(109, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001453.jpg', 'image', 'ZS001453', 'aranya-product/boishakh/ZS001453', 'jpg', 1, '2023-09-05 12:20:01', NULL),
(110, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001616.jpg', 'image', 'ZS001616', 'aranya-product/boishakh/ZS001616', 'jpg', 1, '2023-09-05 12:20:13', NULL),
(111, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001933.jpg', 'image', 'ZS001933', 'aranya-product/boishakh/ZS001933', 'jpg', 1, '2023-09-05 12:20:13', NULL),
(112, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001940.jpg', 'image', 'ZS001940', 'aranya-product/boishakh/ZS001940', 'jpg', 1, '2023-09-05 12:20:13', NULL),
(113, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001579.jpg', 'image', 'ZS001579', 'aranya-product/boishakh/ZS001579', 'jpg', 1, '2023-09-05 12:20:13', NULL),
(114, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001705.jpg', 'image', 'ZS001705', 'aranya-product/boishakh/ZS001705', 'jpg', 1, '2023-09-05 12:20:21', NULL),
(115, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001442.jpg', 'image', 'ZS001442', 'aranya-product/boishakh/ZS001442', 'jpg', 1, '2023-09-05 12:20:21', NULL),
(116, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001456.jpg', 'image', 'ZS001456', 'aranya-product/boishakh/ZS001456', 'jpg', 1, '2023-09-05 12:20:21', NULL),
(117, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001787.jpg', 'image', 'ZS001787', 'aranya-product/boishakh/ZS001787', 'jpg', 1, '2023-09-05 12:20:29', NULL),
(118, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001434.jpg', 'image', 'ZS001434', 'aranya-product/boishakh/ZS001434', 'jpg', 1, '2023-09-05 12:20:29', NULL),
(119, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001454.jpg', 'image', 'ZS001454', 'aranya-product/boishakh/ZS001454', 'jpg', 1, '2023-09-05 12:20:29', NULL),
(120, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001481.jpg', 'image', 'ZS001481', 'aranya-product/boishakh/ZS001481', 'jpg', 1, '2023-09-05 12:20:37', NULL),
(121, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001668.jpg', 'image', 'ZS001668', 'aranya-product/boishakh/ZS001668', 'jpg', 1, '2023-09-05 12:20:37', NULL),
(122, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001515.jpg', 'image', 'ZS001515', 'aranya-product/boishakh/ZS001515', 'jpg', 1, '2023-09-05 12:20:37', NULL),
(123, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001756.jpg', 'image', 'ZS001756', 'aranya-product/boishakh/ZS001756', 'jpg', 1, '2023-09-05 12:20:46', NULL),
(124, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001858.jpg', 'image', 'ZS001858', 'aranya-product/boishakh/ZS001858', 'jpg', 1, '2023-09-05 12:20:46', NULL),
(125, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001227.jpg', 'image', 'ZS001227', 'aranya-product/boishakh/ZS001227', 'jpg', 1, '2023-09-05 12:20:46', NULL),
(126, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001406.jpg', 'image', 'ZS001406', 'aranya-product/boishakh/ZS001406', 'jpg', 1, '2023-09-05 12:20:46', NULL),
(127, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001127.jpg', 'image', 'ZS001127', 'aranya-product/boishakh/ZS001127', 'jpg', 1, '2023-09-05 12:20:55', NULL),
(128, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001072.jpg', 'image', 'ZS001072', 'aranya-product/boishakh/ZS001072', 'jpg', 1, '2023-09-05 12:20:55', NULL),
(129, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001398.jpg', 'image', 'ZS001398', 'aranya-product/boishakh/ZS001398', 'jpg', 1, '2023-09-05 12:20:55', NULL),
(130, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001299.jpg', 'image', 'ZS001299', 'aranya-product/boishakh/ZS001299', 'jpg', 1, '2023-09-05 12:20:55', NULL),
(131, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001126.jpg', 'image', 'ZS001126', 'aranya-product/boishakh/ZS001126', 'jpg', 1, '2023-09-05 12:21:04', NULL),
(132, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001361.jpg', 'image', 'ZS001361', 'aranya-product/boishakh/ZS001361', 'jpg', 1, '2023-09-05 12:21:04', NULL),
(133, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001125.jpg', 'image', 'ZS001125', 'aranya-product/boishakh/ZS001125', 'jpg', 1, '2023-09-05 12:21:04', NULL),
(134, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001425.jpg', 'image', 'ZS001425', 'aranya-product/boishakh/ZS001425', 'jpg', 1, '2023-09-05 12:21:04', NULL),
(135, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001433-2.jpg', 'image', 'ZS001433-2', 'aranya-product/boishakh/ZS001433-2', 'jpg', 1, '2023-09-05 12:21:11', NULL),
(136, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001342.jpg', 'image', 'ZS001342', 'aranya-product/boishakh/ZS001342', 'jpg', 1, '2023-09-05 12:21:11', NULL),
(137, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001419.jpg', 'image', 'ZS001419', 'aranya-product/boishakh/ZS001419', 'jpg', 1, '2023-09-05 12:21:11', NULL),
(138, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001426.jpg', 'image', 'ZS001426', 'aranya-product/boishakh/ZS001426', 'jpg', 1, '2023-09-05 12:21:20', NULL),
(139, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001093.jpg', 'image', 'ZS001093', 'aranya-product/boishakh/ZS001093', 'jpg', 1, '2023-09-05 12:21:20', NULL),
(140, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001334.jpg', 'image', 'ZS001334', 'aranya-product/boishakh/ZS001334', 'jpg', 1, '2023-09-05 12:21:20', NULL),
(141, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001414.jpg', 'image', 'ZS001414', 'aranya-product/boishakh/ZS001414', 'jpg', 1, '2023-09-05 12:21:20', NULL),
(142, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001345.jpg', 'image', 'ZS001345', 'aranya-product/boishakh/ZS001345', 'jpg', 1, '2023-09-05 12:21:28', NULL),
(143, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001415.jpg', 'image', 'ZS001415', 'aranya-product/boishakh/ZS001415', 'jpg', 1, '2023-09-05 12:21:28', NULL),
(144, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001224.jpg', 'image', 'ZS001224', 'aranya-product/boishakh/ZS001224', 'jpg', 1, '2023-09-05 12:21:28', NULL),
(145, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001220.jpg', 'image', 'ZS001220', 'aranya-product/boishakh/ZS001220', 'jpg', 1, '2023-09-05 12:21:28', NULL),
(146, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001136.jpg', 'image', 'ZS001136', 'aranya-product/boishakh/ZS001136', 'jpg', 1, '2023-09-05 12:21:37', NULL),
(147, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001157.jpg', 'image', 'ZS001157', 'aranya-product/boishakh/ZS001157', 'jpg', 1, '2023-09-05 12:21:37', NULL),
(148, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001353.jpg', 'image', 'ZS001353', 'aranya-product/boishakh/ZS001353', 'jpg', 1, '2023-09-05 12:21:37', NULL),
(149, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001244.jpg', 'image', 'ZS001244', 'aranya-product/boishakh/ZS001244', 'jpg', 1, '2023-09-05 12:21:37', NULL),
(150, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001205.jpg', 'image', 'ZS001205', 'aranya-product/boishakh/ZS001205', 'jpg', 1, '2023-09-05 12:21:46', NULL),
(151, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001169.jpg', 'image', 'ZS001169', 'aranya-product/boishakh/ZS001169', 'jpg', 1, '2023-09-05 12:21:46', NULL),
(152, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001347.jpg', 'image', 'ZS001347', 'aranya-product/boishakh/ZS001347', 'jpg', 1, '2023-09-05 12:21:46', NULL),
(153, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001433.jpg', 'image', 'ZS001433', 'aranya-product/boishakh/ZS001433', 'jpg', 1, '2023-09-05 12:21:46', NULL),
(154, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001171.jpg', 'image', 'ZS001171', 'aranya-product/boishakh/ZS001171', 'jpg', 1, '2023-09-05 12:21:55', NULL),
(155, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001424.jpg', 'image', 'ZS001424', 'aranya-product/boishakh/ZS001424', 'jpg', 1, '2023-09-05 12:21:55', NULL),
(156, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001170.jpg', 'image', 'ZS001170', 'aranya-product/boishakh/ZS001170', 'jpg', 1, '2023-09-05 12:21:55', NULL),
(157, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001187.jpg', 'image', 'ZS001187', 'aranya-product/boishakh/ZS001187', 'jpg', 1, '2023-09-05 12:21:55', NULL),
(158, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001176.jpg', 'image', 'ZS001176', 'aranya-product/boishakh/ZS001176', 'jpg', 1, '2023-09-05 12:22:05', NULL),
(159, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001172.jpg', 'image', 'ZS001172', 'aranya-product/boishakh/ZS001172', 'jpg', 1, '2023-09-05 12:22:05', NULL),
(160, 'https://res.cloudinary.com/diyc1dizi/video/upload/aranya-product/boishakh/Boishakh_23.mp4', 'video', 'Boishakh_23', 'aranya-product/boishakh/Boishakh_23', 'mp4', 1, '2023-09-05 12:22:05', NULL),
(161, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_1.png', 'image', 'WS030BA34R22INH3522_1', 'aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_1', 'png', 1, '2023-09-05 12:22:05', NULL),
(162, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_3.png', 'image', 'WS030BA34R22INH3522_3', 'aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_3', 'png', 1, '2023-09-05 12:22:20', NULL),
(163, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_2.png', 'image', 'WS030BA34R22INH3522_2', 'aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_2', 'png', 1, '2023-09-05 12:22:20', NULL),
(164, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_4.png', 'image', 'WS030BA34R22INH3522_4', 'aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_4', 'png', 1, '2023-09-05 12:22:20', NULL),
(165, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'image', 'WO002NK31R22INH3122_2', 'aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2', 'png', 1, '2023-09-05 12:22:20', NULL),
(166, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'image', 'WO002NK31R22INH3122_1', 'aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1', 'png', 1, '2023-09-05 12:22:34', NULL),
(167, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_1.png', 'image', 'W1080001NH10194019_1', 'aranya-product-v2/W1080001NH10194019/W1080001NH10194019_1', 'png', 1, '2023-09-05 12:22:34', NULL),
(168, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_3.png', 'image', 'W1080001NH10194019_3', 'aranya-product-v2/W1080001NH10194019/W1080001NH10194019_3', 'png', 1, '2023-09-05 12:22:34', NULL),
(169, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_2.png', 'image', 'W1080001NH10194019_2', 'aranya-product-v2/W1080001NH10194019/W1080001NH10194019_2', 'png', 1, '2023-09-05 12:22:34', NULL),
(170, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_3.png', 'image', 'W0920015NH12194619_3', 'aranya-product-v2/W0920015NH12194619/W0920015NH12194619_3', 'png', 1, '2023-09-05 12:22:42', NULL),
(171, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_1.png', 'image', 'W0920015NH12194619_1', 'aranya-product-v2/W0920015NH12194619/W0920015NH12194619_1', 'png', 1, '2023-09-05 12:22:42', NULL),
(172, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_2.png', 'image', 'W0920015NH12194619_2', 'aranya-product-v2/W0920015NH12194619/W0920015NH12194619_2', 'png', 1, '2023-09-05 12:22:42', NULL),
(173, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920011NH1219619/115_4.png', 'image', '115_4', 'aranya-product-v2/W0920011NH1219619/115_4', 'png', 1, '2023-09-05 12:22:55', NULL),
(174, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920011NH1219619/115_2.png', 'image', '115_2', 'aranya-product-v2/W0920011NH1219619/115_2', 'png', 1, '2023-09-05 12:22:55', NULL),
(175, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920011NH1219619/115_3.png', 'image', '115_3', 'aranya-product-v2/W0920011NH1219619/115_3', 'png', 1, '2023-09-05 12:22:55', NULL),
(176, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920011NH1219619/115_1.png', 'image', '115_1', 'aranya-product-v2/W0920011NH1219619/115_1', 'png', 1, '2023-09-05 12:22:55', NULL),
(177, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_3.png', 'image', 'W0920014NH12194619_3', 'aranya-product-v2/W0920014NH12194619/W0920014NH12194619_3', 'png', 1, '2023-09-05 12:23:05', NULL),
(178, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_1.png', 'image', 'W0920014NH12194619_1', 'aranya-product-v2/W0920014NH12194619/W0920014NH12194619_1', 'png', 1, '2023-09-05 12:23:05', NULL),
(179, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_2.png', 'image', 'W0920014NH12194619_2', 'aranya-product-v2/W0920014NH12194619/W0920014NH12194619_2', 'png', 1, '2023-09-05 12:23:05', NULL),
(180, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-177.png', 'image', 'Aranya-_01-06-22_-177', 'aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-177', 'png', 1, '2023-09-05 12:23:05', NULL),
(181, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-175.png', 'image', 'Aranya-_01-06-22_-175', 'aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-175', 'png', 1, '2023-09-05 12:23:12', NULL),
(182, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-176.png', 'image', 'Aranya-_01-06-22_-176', 'aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-176', 'png', 1, '2023-09-05 12:23:12', NULL),
(183, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-178.png', 'image', 'Aranya-_01-06-22_-178', 'aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-178', 'png', 1, '2023-09-05 12:23:12', NULL),
(184, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8019-copy.png', 'image', '_ASP8019-copy', 'aranya-product-v2/W0210194FF04191819/_ASP8019-copy', 'png', 1, '2023-09-05 12:23:21', NULL),
(185, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8026-copy.png', 'image', '_ASP8026-copy', 'aranya-product-v2/W0210194FF04191819/_ASP8026-copy', 'png', 1, '2023-09-05 12:23:21', NULL),
(186, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8023-copy.png', 'image', '_ASP8023-copy', 'aranya-product-v2/W0210194FF04191819/_ASP8023-copy', 'png', 1, '2023-09-05 12:23:21', NULL),
(187, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_1.png', 'image', '110_1', 'aranya-product-v2/W0180131NK08224619/110_1', 'png', 1, '2023-09-05 12:23:27', NULL),
(188, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_2.png', 'image', '110_2', 'aranya-product-v2/W0180131NK08224619/110_2', 'png', 1, '2023-09-05 12:23:27', NULL),
(189, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_4.png', 'image', '110_4', 'aranya-product-v2/W0180131NK08224619/110_4', 'png', 1, '2023-09-05 12:23:27', NULL),
(190, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_3.png', 'image', '110_3', 'aranya-product-v2/W0180131NK08224619/110_3', 'png', 1, '2023-09-05 12:23:40', NULL),
(191, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_3.png', 'image', '101_3', 'aranya-product-v2/W0080630NK04221822/101_3', 'png', 1, '2023-09-05 12:23:40', NULL),
(192, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_1.png', 'image', '101_1', 'aranya-product-v2/W0080630NK04221822/101_1', 'png', 1, '2023-09-05 12:23:40', NULL),
(193, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_2.png', 'image', '101_2', 'aranya-product-v2/W0080630NK04221822/101_2', 'png', 1, '2023-09-05 12:23:40', NULL),
(194, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_3.png', 'image', '98_3', 'aranya-product-v2/W0060107SR08190620/98_3', 'png', 1, '2023-09-05 12:23:59', NULL),
(195, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_2.png', 'image', '98_2', 'aranya-product-v2/W0060107SR08190620/98_2', 'png', 1, '2023-09-05 12:23:59', NULL),
(196, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_1.png', 'image', '98_1', 'aranya-product-v2/W0060107SR08190620/98_1', 'png', 1, '2023-09-05 12:23:59', NULL),
(197, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_4.png', 'image', '98_4', 'aranya-product-v2/W0060107SR08190620/98_4', 'png', 1, '2023-09-05 12:23:59', NULL),
(198, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060061RG06182418/96_1.png', 'image', '96_1', 'aranya-product-v2/W0060061RG06182418/96_1', 'png', 1, '2023-09-05 12:24:09', NULL),
(199, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060061RG06182418/96_2.png', 'image', '96_2', 'aranya-product-v2/W0060061RG06182418/96_2', 'png', 1, '2023-09-05 12:24:09', NULL),
(200, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_3.png', 'image', '95_3', 'aranya-product-v2/W0050474IJS1201919/95_3', 'png', 1, '2023-09-05 12:24:09', NULL),
(201, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_4.png', 'image', '95_4', 'aranya-product-v2/W0050474IJS1201919/95_4', 'png', 1, '2023-09-05 12:24:09', NULL),
(202, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_2.png', 'image', '95_2', 'aranya-product-v2/W0050474IJS1201919/95_2', 'png', 1, '2023-09-05 12:24:19', NULL),
(203, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_1.png', 'image', '95_1', 'aranya-product-v2/W0050474IJS1201919/95_1', 'png', 1, '2023-09-05 12:24:19', NULL),
(204, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050465FFE1191519/94_2.png', 'image', '94_2', 'aranya-product-v2/W0050465FFE1191519/94_2', 'png', 1, '2023-09-05 12:24:19', NULL),
(205, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050465FFE1191519/94_1.png', 'image', '94_1', 'aranya-product-v2/W0050465FFE1191519/94_1', 'png', 1, '2023-09-05 12:24:32', NULL),
(206, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_3.png', 'image', '93_3', 'aranya-product-v2/W0050396RGE1181618/93_3', 'png', 1, '2023-09-05 12:24:32', NULL),
(207, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_1.png', 'image', '93_1', 'aranya-product-v2/W0050396RGE1181618/93_1', 'png', 1, '2023-09-05 12:24:32', NULL),
(208, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_2.png', 'image', '93_2', 'aranya-product-v2/W0050396RGE1181618/93_2', 'png', 1, '2023-09-05 12:24:32', NULL),
(209, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_4.png', 'image', '93_4', 'aranya-product-v2/W0050396RGE1181618/93_4', 'png', 1, '2023-09-05 12:24:43', NULL),
(210, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_1.png', 'image', '92_1', 'aranya-product-v2/W0041755SFE26222122/92_1', 'png', 1, '2023-09-05 12:24:43', NULL),
(211, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_2.png', 'image', '92_2', 'aranya-product-v2/W0041755SFE26222122/92_2', 'png', 1, '2023-09-05 12:24:43', NULL),
(212, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_3.png', 'image', '92_3', 'aranya-product-v2/W0041755SFE26222122/92_3', 'png', 1, '2023-09-05 12:24:43', NULL),
(213, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_4.png', 'image', '92_4', 'aranya-product-v2/W0041755SFE26222122/92_4', 'png', 1, '2023-09-05 12:24:56', NULL),
(214, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_2.png', 'image', '90_2', 'aranya-product-v2/W0041750SFE25222122/90_2', 'png', 1, '2023-09-05 12:24:56', NULL),
(215, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_1.png', 'image', '90_1', 'aranya-product-v2/W0041750SFE25222122/90_1', 'png', 1, '2023-09-05 12:24:56', NULL),
(216, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_3.png', 'image', '90_3', 'aranya-product-v2/W0041750SFE25222122/90_3', 'png', 1, '2023-09-05 12:24:56', NULL),
(217, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_4.png', 'image', '90_4', 'aranya-product-v2/W0041750SFE25222122/90_4', 'png', 1, '2023-09-05 12:25:05', NULL),
(218, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_4.png', 'image', '85_4', 'aranya-product-v2/W0041741SF05222022/85_4', 'png', 1, '2023-09-05 12:25:05', NULL),
(219, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_2.png', 'image', '85_2', 'aranya-product-v2/W0041741SF05222022/85_2', 'png', 1, '2023-09-05 12:25:05', NULL),
(220, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_3.png', 'image', '85_3', 'aranya-product-v2/W0041741SF05222022/85_3', 'png', 1, '2023-09-05 12:25:14', NULL),
(221, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_1.png', 'image', '85_1', 'aranya-product-v2/W0041741SF05222022/85_1', 'png', 1, '2023-09-05 12:25:14', NULL),
(222, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_2.png', 'image', '84_2', 'aranya-product-v2/W0041709BAS8220922/84_2', 'png', 1, '2023-09-05 12:25:14', NULL),
(223, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_3.png', 'image', '84_3', 'aranya-product-v2/W0041709BAS8220922/84_3', 'png', 1, '2023-09-05 12:25:14', NULL),
(224, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_4.png', 'image', '84_4', 'aranya-product-v2/W0041709BAS8220922/84_4', 'png', 1, '2023-09-05 12:25:26', NULL),
(225, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_1.png', 'image', '84_1', 'aranya-product-v2/W0041709BAS8220922/84_1', 'png', 1, '2023-09-05 12:25:26', NULL),
(226, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041315RG08183018/80_2.png', 'image', '80_2', 'aranya-product-v2/W0041315RG08183018/80_2', 'png', 1, '2023-09-05 12:25:26', NULL),
(227, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041315RG08183018/80_1.png', 'image', '80_1', 'aranya-product-v2/W0041315RG08183018/80_1', 'png', 1, '2023-09-05 12:25:26', NULL),
(228, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_4.png', 'image', '66_4', 'aranya-product-v2/M0010430NKE5220720/66_4', 'png', 1, '2023-09-05 12:25:42', NULL),
(229, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_3.png', 'image', '72_3', 'aranya-product-v2/M0920001NKE118/72_3', 'png', 1, '2023-09-05 12:25:42', NULL),
(230, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_1.png', 'image', '72_1', 'aranya-product-v2/M0920001NKE118/72_1', 'png', 1, '2023-09-05 12:25:42', NULL),
(231, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_2.png', 'image', '72_2', 'aranya-product-v2/M0920001NKE118/72_2', 'png', 1, '2023-09-05 12:25:42', NULL),
(232, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_2.png', 'image', '66_2', 'aranya-product-v2/M0010430NKE5220720/66_2', 'png', 1, '2023-09-05 12:25:50', NULL),
(233, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_4.png', 'image', '65_4', 'aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_4', 'png', 1, '2023-09-05 12:25:50', NULL),
(234, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_3.png', 'image', '65_3', 'aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_3', 'png', 1, '2023-09-05 12:25:50', NULL),
(235, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_3.png', 'image', '66_3', 'aranya-product-v2/M0010430NKE5220720/66_3', 'png', 1, '2023-09-05 12:26:02', NULL),
(236, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_1.png', 'image', '65_1', 'aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_1', 'png', 1, '2023-09-05 12:26:02', NULL),
(237, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_1.png', 'image', '66_1', 'aranya-product-v2/M0010430NKE5220720/66_1', 'png', 1, '2023-09-05 12:26:02', NULL),
(238, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_2.png', 'image', '65_2', 'aranya-product-v2/M0010430NKE5220720/M0010429MCE32211122/65_2', 'png', 1, '2023-09-05 12:26:02', NULL),
(239, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_4.png', 'image', '49_4', 'aranya-product-v2/M0010342FF04191819/49_4', 'png', 1, '2023-09-05 12:32:09', NULL),
(240, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_2.png', 'image', '49_2', 'aranya-product-v2/M0010342FF04191819/49_2', 'png', 1, '2023-09-05 12:32:09', NULL),
(241, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_1.png', 'image', '49_1', 'aranya-product-v2/M0010342FF04191819/49_1', 'png', 1, '2023-09-05 12:32:09', NULL),
(242, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_3.png', 'image', '49_3', 'aranya-product-v2/M0010342FF04191819/49_3', 'png', 1, '2023-09-05 12:32:09', NULL),
(243, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010295RG0718/46.png', 'image', '46', 'aranya-product-v2/M0010295RG0718/46', 'png', 1, '2023-09-05 12:32:23', NULL),
(244, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200056SF11194219/35_2.png', 'image', '35_2', 'aranya-product-v2/K0200056SF11194219/35_2', 'png', 1, '2023-09-05 12:32:23', NULL),
(245, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200056SF11194219/35_1.png', 'image', '35_1', 'aranya-product-v2/K0200056SF11194219/35_1', 'png', 1, '2023-09-05 12:32:23', NULL),
(246, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200053IJ08193319/34_1.png', 'image', '34_1', 'aranya-product-v2/K0200053IJ08193319/34_1', 'png', 1, '2023-09-05 12:32:23', NULL),
(247, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200053IJ08193319/34_2.png', 'image', '34_2', 'aranya-product-v2/K0200053IJ08193319/34_2', 'png', 1, '2023-09-05 12:32:30', NULL),
(248, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200049FF07193119/32_1.png', 'image', '32_1', 'aranya-product-v2/K0200049FF07193119/32_1', 'png', 1, '2023-09-05 12:32:30', NULL),
(249, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200049FF07193119/32_2.png', 'image', '32_2', 'aranya-product-v2/K0200049FF07193119/32_2', 'png', 1, '2023-09-05 12:32:30', NULL),
(250, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200046SF07193119/31_1.png', 'image', '31_1', 'aranya-product-v2/K0200046SF07193119/31_1', 'png', 1, '2023-09-05 12:32:41', NULL),
(251, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200046SF07193119/31_2.png', 'image', '31_2', 'aranya-product-v2/K0200046SF07193119/31_2', 'png', 1, '2023-09-05 12:32:41', NULL),
(252, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200044SF07193219/30_2.png', 'image', '30_2', 'aranya-product-v2/K0200044SF07193219/30_2', 'png', 1, '2023-09-05 12:32:41', NULL),
(253, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200044SF07193219/30_1.png', 'image', '30_1', 'aranya-product-v2/K0200044SF07193219/30_1', 'png', 1, '2023-09-05 12:32:41', NULL),
(254, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200037SF07192819/29_1.png', 'image', '29_1', 'aranya-product-v2/K0200037SF07192819/29_1', 'png', 1, '2023-09-05 12:32:54', NULL),
(255, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200037SF07192819/29_2.png', 'image', '29_2', 'aranya-product-v2/K0200037SF07192819/29_2', 'png', 1, '2023-09-05 12:32:54', NULL);
INSERT INTO `media_managers` (`id`, `file_link`, `file_type`, `product_name`, `cld_public_id`, `extension`, `status`, `created_at`, `updated_at`) VALUES
(256, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200029IJ04191519/27_1.png', 'image', '27_1', 'aranya-product-v2/K0200029IJ04191519/27_1', 'png', 1, '2023-09-05 12:32:54', NULL),
(257, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200029IJ04191519/27_2.png', 'image', '27_2', 'aranya-product-v2/K0200029IJ04191519/27_2', 'png', 1, '2023-09-05 12:32:54', NULL),
(258, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010379NHS1204219/8_2.png', 'image', '8_2', 'aranya-product-v2/K0010379NHS1204219/8_2', 'png', 1, '2023-09-05 12:33:06', NULL),
(259, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010379NHS1204219/8_1.png', 'image', '8_1', 'aranya-product-v2/K0010379NHS1204219/8_1', 'png', 1, '2023-09-05 12:33:06', NULL),
(260, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010352FFS1202719/4_1.png', 'image', '4_1', 'aranya-product-v2/K0010352FFS1202719/4_1', 'png', 1, '2023-09-05 12:33:06', NULL),
(261, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010352FFS1202719/4_2.png', 'image', '4_2', 'aranya-product-v2/K0010352FFS1202719/4_2', 'png', 1, '2023-09-05 12:33:06', NULL),
(262, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010372NK10194019/5_2.png', 'image', '5_2', 'aranya-product-v2/K0010372NK10194019/5_2', 'png', 1, '2023-09-05 12:33:15', NULL),
(263, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010372NK10194019/5_1.png', 'image', '5_1', 'aranya-product-v2/K0010372NK10194019/5_1', 'png', 1, '2023-09-05 12:33:15', NULL),
(264, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_4.png', 'image', 'WS033SF35R22INH3622_4', 'aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_4', 'png', 1, '2023-09-05 12:33:16', NULL),
(265, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_2.png', 'image', 'WS033SF35R22INH3622_2', 'aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_2', 'png', 1, '2023-09-05 12:33:29', NULL),
(266, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_3.png', 'image', 'WS32TA35R22INH3622_3', 'aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_3', 'png', 1, '2023-09-05 12:33:29', NULL),
(267, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_3.png', 'image', 'WS033SF35R22INH3622_3', 'aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_3', 'png', 1, '2023-09-05 12:33:29', NULL),
(268, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_1.png', 'image', 'WS033SF35R22INH3622_1', 'aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_1', 'png', 1, '2023-09-05 12:33:29', NULL),
(269, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_2.png', 'image', 'WS32TA35R22INH3622_2', 'aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_2', 'png', 1, '2023-09-05 12:33:40', NULL),
(270, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_4.png', 'image', 'WS32TA35R22INH3622_4', 'aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_4', 'png', 1, '2023-09-05 12:33:40', NULL),
(271, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_4.png', 'image', 'WS028MC33R22INH3422_4', 'aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_4', 'png', 1, '2023-09-05 12:33:40', NULL),
(272, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_3.png', 'image', 'WS027SF33R22INH3422_3', 'aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_3', 'png', 1, '2023-09-05 12:33:40', NULL),
(273, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_2.png', 'image', 'WS028MC33R22INH3422_2', 'aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_2', 'png', 1, '2023-09-05 12:33:55', NULL),
(274, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_1.png', 'image', 'WS028MC33R22INH3422_1', 'aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_1', 'png', 1, '2023-09-05 12:33:55', NULL),
(275, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_1.png', 'image', 'WS32TA35R22INH3622_1', 'aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_1', 'png', 1, '2023-09-05 12:33:55', NULL),
(276, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_3.png', 'image', 'WS028MC33R22INH3422_3', 'aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_3', 'png', 1, '2023-09-05 12:33:55', NULL),
(277, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_2.png', 'image', 'WS027SF33R22INH3422_2', 'aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_2', 'png', 1, '2023-09-05 12:34:04', NULL),
(278, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_4.png', 'image', 'WS027SF33R22INH3422_4', 'aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_4', 'png', 1, '2023-09-05 12:34:04', NULL),
(279, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_1.png', 'image', 'WS027SF33R22INH3422_1', 'aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_1', 'png', 1, '2023-09-05 12:34:04', NULL),
(280, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_4.png', 'image', 'WS026SF33R22INH3422_4', 'aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_4', 'png', 1, '2023-09-05 12:34:24', NULL),
(281, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_3.png', 'image', 'WS026SF33R22INH3422_3', 'aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_3', 'png', 1, '2023-09-05 12:34:24', NULL),
(282, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_1.png', 'image', 'WS026SF33R22INH3422_1', 'aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_1', 'png', 1, '2023-09-05 12:34:24', NULL),
(283, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1.png', 'image', 'WS023SF33R22INH3322_1', 'aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1', 'png', 1, '2023-09-05 12:34:24', NULL),
(284, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1.png', 'image', 'WS023SF33R22INH3322_1', 'aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1', 'png', 1, '2023-09-05 12:34:36', NULL),
(285, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_2.png', 'image', 'WS026SF33R22INH3422_2', 'aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_2', 'png', 1, '2023-09-05 12:34:36', NULL),
(286, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_1.png', 'image', 'WS025MC33R22INH3422_1', 'aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_1', 'png', 1, '2023-09-05 12:34:36', NULL),
(287, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_3.png', 'image', 'WS025MC33R22INH3422_3', 'aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_3', 'png', 1, '2023-09-05 12:34:36', NULL),
(288, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_4.png', 'image', 'WS025MC33R22INH3422_4', 'aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_4', 'png', 1, '2023-09-05 12:34:44', NULL),
(289, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_2.png', 'image', 'WS024BA33R22INH3322_2', 'aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_2', 'png', 1, '2023-09-05 12:34:44', NULL),
(290, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_3.png', 'image', 'WS024BA33R22INH3322_3', 'aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_3', 'png', 1, '2023-09-05 12:34:44', NULL),
(291, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_3.png', 'image', 'WS023SF33R22INH3322_3', 'aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_3', 'png', 1, '2023-09-05 12:34:57', NULL),
(292, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_4.png', 'image', 'WS023SF33R22INH3322_4', 'aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_4', 'png', 1, '2023-09-05 12:34:57', NULL),
(293, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_1.png', 'image', 'WS024BA33R22INH3322_1', 'aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_1', 'png', 1, '2023-09-05 12:34:57', NULL),
(294, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_4.png', 'image', 'WS022BA33R22INH3322_4', 'aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_4', 'png', 1, '2023-09-05 12:34:57', NULL),
(295, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_2.png', 'image', 'WS025MC33R22INH3422_2', 'aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_2', 'png', 1, '2023-09-05 12:35:10', NULL),
(296, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_1.png', 'image', 'WS021BA33R22INH3322_1', 'aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_1', 'png', 1, '2023-09-05 12:35:10', NULL),
(297, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_2.png', 'image', 'WS022BA33R22INH3322_2', 'aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_2', 'png', 1, '2023-09-05 12:35:10', NULL),
(298, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_2.png', 'image', 'WS023SF33R22INH3322_2', 'aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_2', 'png', 1, '2023-09-05 12:35:10', NULL),
(299, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_3.png', 'image', 'WS022BA33R22INH3322_3', 'aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_3', 'png', 1, '2023-09-05 12:35:21', NULL),
(300, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_4.png', 'image', 'WS021BA33R22INH3322_4', 'aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_4', 'png', 1, '2023-09-05 12:35:21', NULL),
(301, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_2.png', 'image', 'WS018SF31R22INH3222_2', 'aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_2', 'png', 1, '2023-09-05 12:35:21', NULL),
(302, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_3.png', 'image', 'WS018SF31R22INH3222_3', 'aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_3', 'png', 1, '2023-09-05 12:35:21', NULL),
(303, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_2.png', 'image', 'WS021BA33R22INH3322_2', 'aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_2', 'png', 1, '2023-09-05 12:35:36', NULL),
(304, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_4.png', 'image', 'WS018SF31R22INH3222_4', 'aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_4', 'png', 1, '2023-09-05 12:35:36', NULL),
(305, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_1.png', 'image', 'WS022BA33R22INH3322_1', 'aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_1', 'png', 1, '2023-09-05 12:35:36', NULL),
(306, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_3.png', 'image', 'WS021BA33R22INH3322_3', 'aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_3', 'png', 1, '2023-09-05 12:35:36', NULL),
(307, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_1.png', 'image', 'WS018SF31R22INH3222_1', 'aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_1', 'png', 1, '2023-09-05 12:35:46', NULL),
(308, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0040686NK1117/78_1.png', 'image', '78_1', 'aranya-product-v2/W0040686NK1117/78_1', 'png', 1, '2023-09-05 12:35:46', NULL),
(309, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0020033NH09193519/69_1.png', 'image', '69_1', 'aranya-product-v2/M0020033NH09193519/69_1', 'png', 1, '2023-09-05 12:35:46', NULL),
(310, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_4.png', 'image', '82_4', 'aranya-product-v2/W0041703BAS06220722/82_4', 'png', 1, '2023-09-05 12:35:46', NULL),
(311, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_3.png', 'image', '40_3', 'aranya-product-v2/K0540004IJ07193119/40_3', 'png', 1, '2023-09-05 12:35:58', NULL),
(312, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_2.png', 'image', '108_2', 'aranya-product-v2/W0180129NK07221020/108_2', 'png', 1, '2023-09-05 12:35:58', NULL),
(313, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060111AA09193719/99_2.png', 'image', '99_2', 'aranya-product-v2/W0060111AA09193719/99_2', 'png', 1, '2023-09-05 12:35:58', NULL),
(314, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_3.png', 'image', '111_3', 'aranya-product-v2/W0190088NK06220520/111_3', 'png', 1, '2023-09-05 12:35:58', NULL),
(315, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_4.png', 'image', '76_4', 'aranya-product-v2/M0920010NH12194519/76_4', 'png', 1, '2023-09-05 12:36:08', NULL),
(316, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_4.png', 'image', '65_4', 'aranya-product-v2/M0010429MCE32211122/65_4', 'png', 1, '2023-09-05 12:36:08', NULL),
(317, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080370SME1182018/100_1.png', 'image', '100_1', 'aranya-product-v2/W0080370SME1182018/100_1', 'png', 1, '2023-09-05 12:36:08', NULL),
(318, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200021IJ03191219/24_1.png', 'image', '24_1', 'aranya-product-v2/K0200021IJ03191219/24_1', 'png', 1, '2023-09-05 12:36:08', NULL),
(319, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_1.png', 'image', '108_1', 'aranya-product-v2/W0180129NK07221020/108_1', 'png', 1, '2023-09-05 12:36:18', NULL),
(320, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110025FF12184318/103_1.png', 'image', '103_1', 'aranya-product-v2/W0110025FF12184318/103_1', 'png', 1, '2023-09-05 12:36:18', NULL),
(321, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_3.png', 'image', '97_3', 'aranya-product-v2/W0060096AA06193419/97_3', 'png', 1, '2023-09-05 12:36:18', NULL),
(322, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041171RGE1180920/79_3.png', 'image', '79_3', 'aranya-product-v2/W0041171RGE1180920/79_3', 'png', 1, '2023-09-05 12:36:18', NULL),
(323, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_2.png', 'image', '83_2', 'aranya-product-v2/W0041704SFS06220722/83_2', 'png', 1, '2023-09-05 12:36:30', NULL),
(324, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010343IJ05191819/50_2.png', 'image', '50_2', 'aranya-product-v2/M0010343IJ05191819/50_2', 'png', 1, '2023-09-05 12:36:30', NULL),
(325, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041171RGE1180920/79_2.png', 'image', '79_2', 'aranya-product-v2/W0041171RGE1180920/79_2', 'png', 1, '2023-09-05 12:36:30', NULL),
(326, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041749BAE25222222/89_4.png', 'image', '89_4', 'aranya-product-v2/W0041749BAE25222222/89_4', 'png', 1, '2023-09-05 12:36:30', NULL),
(327, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_3.png', 'image', 'W0920013NH12194519_3', 'aranya-product-v2/W0920013NH12194519/W0920013NH12194519_3', 'png', 1, '2023-09-05 12:36:40', NULL),
(328, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_1.png', 'image', '83_1', 'aranya-product-v2/W0041704SFS06220722/83_1', 'png', 1, '2023-09-05 12:36:40', NULL),
(329, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_1.png', 'image', '111_1', 'aranya-product-v2/W0190088NK06220520/111_1', 'png', 1, '2023-09-05 12:36:40', NULL),
(330, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_1.png', 'image', '76_1', 'aranya-product-v2/M0920010NH12194519/76_1', 'png', 1, '2023-09-05 12:36:40', NULL),
(331, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041743BA05222022/87_2.png', 'image', '87_2', 'aranya-product-v2/W0041743BA05222022/87_2', 'png', 1, '2023-09-05 12:36:52', NULL),
(332, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_4.png', 'image', '75_4', 'aranya-product-v2/M0920009NH12194619/75_4', 'png', 1, '2023-09-05 12:36:52', NULL),
(333, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_2.png', 'image', '82_2', 'aranya-product-v2/W0041703BAS06220722/82_2', 'png', 1, '2023-09-05 12:36:52', NULL),
(334, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010401RGS1203821/64_2.png', 'image', '64_2', 'aranya-product-v2/M0010401RGS1203821/64_2', 'png', 1, '2023-09-05 12:36:52', NULL),
(335, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_4.png', 'image', 'WS024BA33R22INH3322_4', 'aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_4', 'png', 1, '2023-09-05 12:37:05', NULL),
(336, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050505FF12190620/21_1.png', 'image', '21_1', 'aranya-product-v2/K0050505FF12190620/21_1', 'png', 1, '2023-09-05 12:37:05', NULL),
(337, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010401RGS1203821/64_1.png', 'image', '64_1', 'aranya-product-v2/M0010401RGS1203821/64_1', 'png', 1, '2023-09-05 12:37:05', NULL),
(338, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050504FF12194819/20_1.png', 'image', '20_1', 'aranya-product-v2/K0050504FF12194819/20_1', 'png', 1, '2023-09-05 12:37:05', NULL),
(339, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_2.png', 'image', '40_2', 'aranya-product-v2/K0540004IJ07193119/40_2', 'png', 1, '2023-09-05 12:37:18', NULL),
(340, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_1.png', 'image', '97_1', 'aranya-product-v2/W0060096AA06193419/97_1', 'png', 1, '2023-09-05 12:37:18', NULL),
(341, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_1.png', 'image', '65_1', 'aranya-product-v2/M0010429MCE32211122/65_1', 'png', 1, '2023-09-05 12:37:18', NULL),
(342, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_1.png', 'image', '82_1', 'aranya-product-v2/W0041703BAS06220722/82_1', 'png', 1, '2023-09-05 12:37:18', NULL),
(343, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_2.png', 'image', '75_2', 'aranya-product-v2/M0920009NH12194619/75_2', 'png', 1, '2023-09-05 12:37:26', NULL),
(344, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180130NK07221020/109_2.png', 'image', '109_2', 'aranya-product-v2/W0180130NK07221020/109_2', 'png', 1, '2023-09-05 12:37:26', NULL),
(345, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_1.png', 'image', '75_1', 'aranya-product-v2/M0920009NH12194619/75_1', 'png', 1, '2023-09-05 12:37:26', NULL),
(346, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030085IJ11194419/15_2.png', 'image', '15_2', 'aranya-product-v2/K0030085IJ11194419/15_2', 'png', 1, '2023-09-05 12:37:39', NULL),
(347, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0040686NK1117/78_4.png', 'image', '78_4', 'aranya-product-v2/W0040686NK1117/78_4', 'png', 1, '2023-09-05 12:37:39', NULL),
(348, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_1.png', 'image', '67_1', 'aranya-product-v2/M0010431NKE5224619/67_1', 'png', 1, '2023-09-05 12:37:39', NULL),
(349, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3.png', 'image', 'WO002NK31R22INH3122_3', 'aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3', 'png', 1, '2023-09-05 12:37:39', NULL),
(350, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_3.png', 'image', '108_3', 'aranya-product-v2/W0180129NK07221020/108_3', 'png', 1, '2023-09-05 12:37:52', NULL),
(351, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_4.png', 'image', '108_4', 'aranya-product-v2/W0180129NK07221020/108_4', 'png', 1, '2023-09-05 12:37:52', NULL),
(352, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041748MCE25222122/88_1.png', 'image', '88_1', 'aranya-product-v2/W0041748MCE25222122/88_1', 'png', 1, '2023-09-05 12:37:52', NULL),
(353, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010343IJ05191819/50_1.png', 'image', '50_1', 'aranya-product-v2/M0010343IJ05191819/50_1', 'png', 1, '2023-09-05 12:37:52', NULL),
(354, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060111AA09193719/99_1.png', 'image', '99_1', 'aranya-product-v2/W0060111AA09193719/99_1', 'png', 1, '2023-09-05 12:38:04', NULL),
(355, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_2.png', 'image', '76_2', 'aranya-product-v2/M0920010NH12194519/76_2', 'png', 1, '2023-09-05 12:38:04', NULL),
(356, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_2.png', 'image', '111_2', 'aranya-product-v2/W0190088NK06220520/111_2', 'png', 1, '2023-09-05 12:38:04', NULL),
(357, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180130NK07221020/109_3.png', 'image', '109_3', 'aranya-product-v2/W0180130NK07221020/109_3', 'png', 1, '2023-09-05 12:38:04', NULL),
(358, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041554IJ01203521/81_2.png', 'image', '81_2', 'aranya-product-v2/W0041554IJ01203521/81_2', 'png', 1, '2023-09-05 12:38:13', NULL),
(359, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_1.png', 'image', '86_1', 'aranya-product-v2/W0041742BA05222022/86_1', 'png', 1, '2023-09-05 12:38:14', NULL),
(360, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_3.png', 'image', '76_3', 'aranya-product-v2/M0920010NH12194519/76_3', 'png', 1, '2023-09-05 12:38:14', NULL),
(361, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_3.png', 'image', '86_3', 'aranya-product-v2/W0041742BA05222022/86_3', 'png', 1, '2023-09-05 12:38:25', NULL),
(362, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_4.png', 'image', '40_4', 'aranya-product-v2/K0540004IJ07193119/40_4', 'png', 1, '2023-09-05 12:38:25', NULL),
(363, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041749BAE25222222/89_2.png', 'image', '89_2', 'aranya-product-v2/W0041749BAE25222222/89_2', 'png', 1, '2023-09-05 12:38:25', NULL),
(364, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_2.png', 'image', '43_2', 'aranya-product-v2/M0010275SMA08182218/43_2', 'png', 1, '2023-09-05 12:38:25', NULL),
(365, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050504FF12194819/20_2.png', 'image', '20_2', 'aranya-product-v2/K0050504FF12194819/20_2', 'png', 1, '2023-09-05 12:38:38', NULL),
(366, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_4.png', 'image', '43_4', 'aranya-product-v2/M0010275SMA08182218/43_4', 'png', 1, '2023-09-05 12:38:38', NULL),
(367, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_4.png', 'image', '86_4', 'aranya-product-v2/W0041742BA05222022/86_4', 'png', 1, '2023-09-05 12:38:38', NULL),
(368, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_4.png', 'image', '83_4', 'aranya-product-v2/W0041704SFS06220722/83_4', 'png', 1, '2023-09-05 12:38:38', NULL),
(369, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_4.png', 'image', '63_4', 'aranya-product-v2/M0010396RG02200920/63_4', 'png', 1, '2023-09-05 12:38:51', NULL),
(370, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_2.png', 'image', '67_2', 'aranya-product-v2/M0010431NKE5224619/67_2', 'png', 1, '2023-09-05 12:38:51', NULL),
(371, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_3.png', 'image', '75_3', 'aranya-product-v2/M0920009NH12194619/75_3', 'png', 1, '2023-09-05 12:38:51', NULL),
(372, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010316RGS1193018/47_3.png', 'image', '47_3', 'aranya-product-v2/M0010316RGS1193018/47_3', 'png', 1, '2023-09-05 12:38:51', NULL),
(373, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041753MCE26222122/91_2.png', 'image', '91_2', 'aranya-product-v2/W0041753MCE26222122/91_2', 'png', 1, '2023-09-05 12:38:59', NULL),
(374, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110015RG1017/102_1.png', 'image', '102_1', 'aranya-product-v2/W0110015RG1017/102_1', 'png', 1, '2023-09-05 12:38:59', NULL),
(375, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050505FF12190620/21_2.png', 'image', '21_2', 'aranya-product-v2/K0050505FF12190620/21_2', 'png', 1, '2023-09-05 12:38:59', NULL),
(376, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_1.png', 'image', '40_1', 'aranya-product-v2/K0540004IJ07193119/40_1', 'png', 1, '2023-09-05 12:39:17', NULL),
(377, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_2.png', 'image', '62_2', 'aranya-product-v2/M0010395RG02200720/62_2', 'png', 1, '2023-09-05 12:39:17', NULL),
(378, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_3.png', 'image', '65_3', 'aranya-product-v2/M0010429MCE32211122/65_3', 'png', 1, '2023-09-05 12:39:17', NULL),
(379, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194819/52_1.png', 'image', '52_1', 'aranya-product-v2/M0010344MA05194819/52_1', 'png', 1, '2023-09-05 12:39:17', NULL),
(380, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080370SME1182018/100_2.png', 'image', '100_2', 'aranya-product-v2/W0080370SME1182018/100_2', 'png', 1, '2023-09-05 12:39:30', NULL),
(381, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_3.png', 'image', '67_3', 'aranya-product-v2/M0010431NKE5224619/67_3', 'png', 1, '2023-09-05 12:39:30', NULL),
(382, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030072IJ03191319/13_1.png', 'image', '13_1', 'aranya-product-v2/K0030072IJ03191319/13_1', 'png', 1, '2023-09-05 12:39:30', NULL),
(383, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_2.png', 'image', '86_2', 'aranya-product-v2/W0041742BA05222022/86_2', 'png', 1, '2023-09-05 12:39:31', NULL),
(384, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030085IJ11194419/15_1.png', 'image', '15_1', 'aranya-product-v2/K0030085IJ11194419/15_1', 'png', 1, '2023-09-05 12:39:44', NULL),
(385, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_2.png', 'image', '65_2', 'aranya-product-v2/M0010429MCE32211122/65_2', 'png', 1, '2023-09-05 12:39:44', NULL),
(386, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_1.png', 'image', '63_1', 'aranya-product-v2/M0010396RG02200920/63_1', 'png', 1, '2023-09-05 12:39:44', NULL),
(387, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010349IJ0619269/web2.png', 'image', 'web2', 'aranya-product-v2/K0010349IJ0619269/web2', 'png', 1, '2023-09-05 12:39:44', NULL),
(388, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030072IJ03191319/13_2.png', 'image', '13_2', 'aranya-product-v2/K0030072IJ03191319/13_2', 'png', 1, '2023-09-05 12:39:55', NULL),
(389, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_2.png', 'image', '63_2', 'aranya-product-v2/M0010396RG02200920/63_2', 'png', 1, '2023-09-05 12:39:55', NULL),
(390, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0040686NK1117/78_2.png', 'image', '78_2', 'aranya-product-v2/W0040686NK1117/78_2', 'png', 1, '2023-09-05 12:39:55', NULL),
(391, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_2.png', 'image', '97_2', 'aranya-product-v2/W0060096AA06193419/97_2', 'png', 1, '2023-09-05 12:40:10', NULL),
(392, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_1.png', 'image', '107_1', 'aranya-product-v2/W0180128NK06220720/107_1', 'png', 1, '2023-09-05 12:40:10', NULL),
(393, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_3.png', 'image', '63_3', 'aranya-product-v2/M0010396RG02200920/63_3', 'png', 1, '2023-09-05 12:40:10', NULL),
(394, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_4.png', 'image', '62_4', 'aranya-product-v2/M0010395RG02200720/62_4', 'png', 1, '2023-09-05 12:40:10', NULL),
(395, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_1.png', 'image', '43_1', 'aranya-product-v2/M0010275SMA08182218/43_1', 'png', 1, '2023-09-05 12:40:22', NULL),
(396, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_3.png', 'image', '39_3', 'aranya-product-v2/K0540003SF07193119/39_3', 'png', 1, '2023-09-05 12:40:22', NULL),
(397, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0020033NH09193519/69_2.png', 'image', '69_2', 'aranya-product-v2/M0020033NH09193519/69_2', 'png', 1, '2023-09-05 12:40:22', NULL),
(398, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_4.png', 'image', '51_4', 'aranya-product-v2/M0010344MA05194719/51_4', 'png', 1, '2023-09-05 12:40:22', NULL),
(399, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_4.png', 'image', '39_4', 'aranya-product-v2/K0540003SF07193119/39_4', 'png', 1, '2023-09-05 12:40:55', NULL),
(400, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_2.png', 'image', '10_2', 'aranya-product-v2/K0020036RG11194519/10_2', 'png', 1, '2023-09-05 12:40:55', NULL),
(401, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-4.webp', 'image', 'WSA206SKE2INHHS2123-4', 'WSA206SKE2INHHS2123-4', 'webp', 1, '2023-10-09 07:43:10', NULL),
(402, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-2.webp', 'image', 'WSA206SKE2INHHS2123-2', 'WSA206SKE2INHHS2123-2', 'webp', 1, '2023-10-09 07:43:10', NULL),
(403, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-3.webp', 'image', 'WSA206SKE2INHHS2123-3', 'WSA206SKE2INHHS2123-3', 'webp', 1, '2023-10-09 07:43:10', NULL),
(404, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-1.webp', 'image', 'WSA206SKE2INHHS2123-1', 'WSA206SKE2INHHS2123-1', 'webp', 1, '2023-10-09 07:43:10', NULL),
(405, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-3.webp', 'image', 'WSA206SKE2INHHS2123-3', 'WSA206SKE2INHHS2123-3', 'webp', 1, '2023-10-09 07:43:10', NULL),
(406, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-1.webp', 'image', 'WSA206SKE2INHHS2123-1', 'WSA206SKE2INHHS2123-1', 'webp', 1, '2023-10-09 07:43:10', NULL),
(407, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-2.webp', 'image', 'WSA206SKE2INHHS2123-2', 'WSA206SKE2INHHS2123-2', 'webp', 1, '2023-10-09 07:43:10', NULL),
(408, 'https://res.cloudinary.com/diyc1dizi/image/upload/WSA206SKE2INHHS2123-4.webp', 'image', 'WSA206SKE2INHHS2123-4', 'WSA206SKE2INHHS2123-4', 'webp', 1, '2023-10-09 07:43:10', NULL),
(409, 'https://res.cloudinary.com/diyc1dizi/image/upload/4_4_11zon.jpg', 'image', '4_4_11zon', '4_4_11zon', 'jpg', 1, '2023-10-12 11:58:13', NULL),
(410, 'https://res.cloudinary.com/diyc1dizi/image/upload/3_3_11zon.jpg', 'image', '3_3_11zon', '3_3_11zon', 'jpg', 1, '2023-10-12 11:58:13', NULL),
(411, 'https://res.cloudinary.com/diyc1dizi/image/upload/2_2_11zon.jpg', 'image', '2_2_11zon', '2_2_11zon', 'jpg', 1, '2023-10-12 11:58:13', NULL),
(412, 'https://res.cloudinary.com/diyc1dizi/image/upload/1_1_11zon.jpg', 'image', '1_1_11zon', '1_1_11zon', 'jpg', 1, '2023-10-12 11:58:13', NULL),
(413, 'https://res.cloudinary.com/diyc1dizi/image/upload/55.jpg', 'image', '55', '55', 'jpg', 1, '2023-10-12 12:01:12', NULL),
(414, 'https://res.cloudinary.com/diyc1dizi/image/upload/56.jpg', 'image', '56', '56', 'jpg', 1, '2023-10-12 12:01:12', NULL),
(415, 'https://res.cloudinary.com/diyc1dizi/image/upload/54.jpg', 'image', '54', '54', 'jpg', 1, '2023-10-12 12:01:12', NULL),
(416, 'https://res.cloudinary.com/diyc1dizi/image/upload/53.jpg', 'image', '53', '53', 'jpg', 1, '2023-10-12 12:01:24', NULL),
(417, 'https://res.cloudinary.com/diyc1dizi/image/upload/52.jpg', 'image', '52', '52', 'jpg', 1, '2023-10-15 08:47:27', NULL),
(418, 'https://res.cloudinary.com/diyc1dizi/image/upload/4.jpg', 'image', '4', '4', 'jpg', 1, '2023-10-22 07:10:27', NULL),
(419, 'https://res.cloudinary.com/diyc1dizi/image/upload/4.jpg', 'image', '4', '4', 'jpg', 1, '2023-10-22 07:10:27', NULL),
(420, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/ZS001875.jpg', 'image', 'ZS001875', 'aranya-product-v2/ZS001875', 'jpg', 1, '2023-10-22 07:40:26', NULL),
(421, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/ZS001875.jpg', 'image', 'ZS001875', 'aranya-product-v2/ZS001875', 'jpg', 1, '2023-10-22 07:40:26', NULL),
(422, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/ZS001345.jpg', 'image', 'ZS001345', 'Aranya_new_products/ZS001345', 'jpg', 1, '2023-10-22 07:53:49', NULL),
(423, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/ZS001299.jpg', 'image', 'ZS001299', 'Aranya_new_products/ZS001299', 'jpg', 1, '2023-10-22 07:53:49', NULL),
(424, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001703.jpg', 'image', 'ZS001703', 'ZS001703', 'jpg', 1, '2023-10-22 09:28:27', NULL),
(425, 'https://res.cloudinary.com/diyc1dizi/image/upload/7.jpg', 'image', '7', '7', 'jpg', 1, '2023-10-22 09:34:54', NULL),
(426, 'https://res.cloudinary.com/diyc1dizi/image/upload/7.jpg', 'image', '7', '7', 'jpg', 1, '2023-10-22 09:34:54', NULL),
(427, 'https://res.cloudinary.com/diyc1dizi/image/upload/7.jpg', 'image', '7', '7', 'jpg', 1, '2023-10-22 09:37:53', NULL),
(428, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001795.jpg', 'image', 'ZS001795', 'ZS001795', 'jpg', 1, '2023-10-22 09:52:05', NULL),
(429, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001916.jpg', 'image', 'ZS001916', 'ZS001916', 'jpg', 1, '2023-10-22 11:07:10', NULL),
(430, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001916.jpg', 'image', 'ZS001916', 'ZS001916', 'jpg', 1, '2023-10-22 11:07:10', NULL),
(431, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001433-2.jpg', 'image', 'ZS001433-2', 'ZS001433-2', 'jpg', 1, '2023-10-22 11:10:15', NULL),
(432, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001433-2.jpg', 'image', 'ZS001433-2', 'ZS001433-2', 'jpg', 1, '2023-10-22 11:10:15', NULL),
(433, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSC_8136.jpg', 'image', 'DSC_8136', 'aranya-product-v2/DSC_8136', 'jpg', 1, '2023-10-22 11:12:04', NULL),
(434, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSCF0178.jpg', 'image', 'DSCF0178', 'aranya-product-v2/DSCF0178', 'jpg', 1, '2023-10-22 11:13:28', NULL),
(435, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001601.jpg', 'image', 'ZS001601', 'ZS001601', 'jpg', 1, '2023-10-22 12:01:01', NULL),
(436, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001601.jpg', 'image', 'ZS001601', 'ZS001601', 'jpg', 1, '2023-10-22 12:01:01', NULL),
(437, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/DSC_8201.jpg', 'image', 'DSC_8201', 'aranya-product-v2/DSC_8201', 'jpg', 1, '2023-10-22 12:05:59', NULL),
(438, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001345_1.jpg', 'image', 'ZS001345_1', 'ZS001345_1', 'jpg', 1, '2023-10-22 12:49:20', NULL),
(439, 'https://res.cloudinary.com/diyc1dizi/image/upload/ZS001345_1.jpg', 'image', 'ZS001345_1', 'ZS001345_1', 'jpg', 1, '2023-10-22 12:49:20', NULL),
(440, 'https://res.cloudinary.com/diyc1dizi/video/upload/Aranya_Eid_Draft4.mp4', 'video', 'Aranya_Eid_Draft4', 'Aranya_Eid_Draft4', 'mp4', 1, '2023-11-15 01:35:16', NULL),
(441, 'https://res.cloudinary.com/diyc1dizi/video/upload/Aranya_part_4_reels_final.mp4', 'video', 'Aranya_part_4_reels_final', 'Aranya_part_4_reels_final', 'mp4', 1, '2023-11-15 01:35:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_01_105900_create_admins_table', 1),
(6, '2022_12_13_061800_create_categories_table', 1),
(7, '2022_12_13_061932_create_products_table', 1),
(8, '2022_12_13_061957_create_orders_table', 1),
(9, '2022_12_13_062042_create_inventories_table', 1),
(10, '2022_12_13_062113_create_deliveries_table', 1),
(11, '2023_01_03_112319_create_payments_table', 1),
(12, '2023_01_22_090936_create_discounts_table', 1),
(13, '2023_01_24_121207_create_colours_table', 1),
(14, '2023_01_24_121348_create_sizes_table', 1),
(15, '2023_01_24_121418_create_fabrics_table', 1),
(16, '2023_01_30_124951_create_product_colours_table', 1),
(17, '2023_01_30_125118_create_product_sizes_table', 1),
(18, '2023_01_30_125155_create_product_fabrics_table', 1),
(19, '2023_02_05_052839_create_order_details_table', 1),
(20, '2023_02_06_132655_create_campaigns_table', 1),
(21, '2023_02_07_071912_create_campaign_products_table', 1),
(22, '2023_02_13_080837_create_pages_table', 1),
(23, '2023_02_18_200445_create_user_shipping_infos_table', 1),
(24, '2023_02_18_201457_create_user_billing_infos_table', 1),
(25, '2023_02_23_044707_create_category_fabric_table', 1),
(26, '2023_02_28_140135_create_vendors_table', 1),
(27, '2023_02_28_140532_create_brands_table', 1),
(28, '2023_02_28_140556_create_designers_table', 1),
(29, '2023_02_28_142633_create_artists_table', 1),
(30, '2023_03_02_065627_create_embellishments_table', 1),
(31, '2023_03_05_060339_create_makings_table', 1),
(32, '2023_03_05_060519_create_seasons_table', 1),
(33, '2023_03_05_060553_create_varieties_table', 1),
(34, '2023_03_05_060617_create_fits_table', 1),
(35, '2023_03_05_060647_create_consignments_table', 1),
(36, '2023_03_05_061200_create_ingredients_table', 1),
(37, '2023_03_05_151612_create_product_tags_table', 1),
(38, '2023_03_06_052323_create_cares_table', 1),
(39, '2023_03_06_070719_create_product_vendors_table', 1),
(40, '2023_03_06_070742_create_product_brands_table', 1),
(41, '2023_03_06_070758_create_product_designers_table', 1),
(42, '2023_03_06_070828_create_product_embellishments_table', 1),
(43, '2023_03_06_070956_create_product_makings_table', 1),
(44, '2023_03_06_071021_create_product_seasons_table', 1),
(45, '2023_03_06_071044_create_product_varieties_table', 1),
(46, '2023_03_06_071108_create_product_fits_table', 1),
(47, '2023_03_06_071132_create_product_artists_table', 1),
(48, '2023_03_06_092224_create_product_consignments_table', 1),
(49, '2023_03_06_092741_create_product_cares_table', 1),
(50, '2023_03_06_104956_create_product_ingredients_table', 1),
(51, '2023_03_06_134546_create_vat_taxes_table', 1),
(52, '2023_03_13_135147_create_countries_table', 2),
(53, '2023_05_09_045400_create_refund_configure_table', 2),
(54, '2023_05_16_065420_create_roles_table', 3),
(55, '2023_05_16_065624_create_permissions_table', 3),
(56, '2023_05_16_065716_create_role_permissions_table', 3),
(57, '2023_06_12_063650_create_shipping_configs_table', 4),
(58, '2023_06_14_061250_create_media_managers_table', 5),
(59, '2023_07_11_125047_create_address_books_table', 6),
(60, '2023_07_23_104115_create_informations_table', 7),
(61, '2023_10_18_121921_create_jobs_table', 8),
(62, '2023_10_18_122131_create_job_batches_table', 8),
(63, '2023_12_11_102244_create_pickuphubs_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(16,4) NOT NULL,
  `charge_total_price` double(16,4) NOT NULL,
  `vat_rate` double(4,2) NOT NULL DEFAULT 0.00 COMMENT 'vat rate in percentage ''%''',
  `charge_vat_rate` double(4,2) NOT NULL DEFAULT 0.00,
  `vat_amount` double(16,4) NOT NULL DEFAULT 0.0000 COMMENT 'value added vat amount',
  `charge_vat_amount` double(16,4) NOT NULL DEFAULT 0.0000,
  `total_item` int(11) NOT NULL DEFAULT 0,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 for COD/1 for MPAY/ 2 for POS/ 3 for CCRD/4 for BOD if not set default COD',
  `payment_via` tinyint(4) DEFAULT NULL COMMENT '0 for COD,1 Online',
  `payment_method_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ssl,amex,stripe',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `charge_discount` double NOT NULL DEFAULT 0,
  `coupon_discount` double DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 not paid 1 = paid',
  `validation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` date NOT NULL,
  `requested_delivery_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `charge_shipping_amount` int(11) NOT NULL DEFAULT 0,
  `total_fragile_amount` float NOT NULL DEFAULT 0,
  `charge_fragile_amount` float NOT NULL DEFAULT 0,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_same_address` tinyint(4) NOT NULL DEFAULT 0,
  `order_position` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending 1=process 2=OnProcess 3=Delivered',
  `delivery_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for home, 1 for pickup point',
  `delivery_platform` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'E-corier or pathao',
  `percel_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for Box, 1 for DOC',
  `pickup_point_no` int(11) DEFAULT NULL COMMENT 'pickup point id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `charged_currency` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'BDT' COMMENT 'set currency, paid by user',
  `courier_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'courier details here',
  `exchange_rate` float DEFAULT NULL,
  `user_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `charge_total_price`, `vat_rate`, `charge_vat_rate`, `vat_amount`, `charge_vat_amount`, `total_item`, `shipping_method`, `coupon`, `payment_method`, `payment_via`, `payment_method_name`, `transaction_id`, `discount`, `charge_discount`, `coupon_discount`, `payment_status`, `validation_id`, `card_type`, `order_date`, `requested_delivery_date`, `payment_date`, `shipping_amount`, `charge_shipping_amount`, `total_fragile_amount`, `charge_fragile_amount`, `tracking_id`, `payment_info`, `status`, `is_same_address`, `order_position`, `delivery_type`, `delivery_platform`, `percel_type`, `pickup_point_no`, `deleted_at`, `created_at`, `updated_at`, `charged_currency`, `courier_details`, `exchange_rate`, `user_note`) VALUES
(5, 'AO0005', 6, 1275.0000, 1275.0000, 0.00, 0.00, 95.6250, 95.6300, 1, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-10-24', '2023-10-25', NULL, 60, 60, 0, 0, NULL, NULL, 2, 0, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-10-24 05:28:00', '2023-12-10 02:38:59', 'BDT', NULL, 1, 'This is a test order.'),
(6, 'AO0006', 0, 10995.0000, 10995.0000, 0.00, 0.00, 824.6250, 824.6300, 1, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-10-24', '2023-10-25', NULL, 60, 60, 0, 0, NULL, NULL, 0, 0, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-10-24 14:19:38', '2024-01-03 16:17:58', 'BDT', NULL, 1, NULL),
(8, 'AO0008', 0, 2995.0000, 2995.0000, 0.00, 0.00, 224.6250, 224.6250, 1, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-10-28', '2023-10-29', NULL, 60, 60, 0, 0, NULL, NULL, 1, 0, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-10-28 17:30:20', '2023-12-06 04:18:13', 'BDT', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `colour_id` bigint(20) UNSIGNED DEFAULT 0,
  `size_id` bigint(20) UNSIGNED DEFAULT 0,
  `fabric_id` bigint(20) UNSIGNED DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'customer_id',
  `item_sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_rate` double(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `charge_vat_rate` double(4,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `vat_amount` double(16,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `charge_vat_amount` double(16,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `quantity` int(11) NOT NULL,
  `selling_price` double(16,8) NOT NULL,
  `charge_selling_price` double(16,8) NOT NULL,
  `buying_price` double(16,8) NOT NULL,
  `total_buying_price` double(16,8) NOT NULL,
  `total_selling_price` double(16,8) NOT NULL,
  `total_charge_selling_price` double(16,8) NOT NULL,
  `unit_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `charge_unit_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `total_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `charge_total_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `is_claim_refund` int(4) DEFAULT 0 COMMENT '0 for No Claim, 1 for claimed',
  `refund_claim_date` date DEFAULT NULL,
  `is_refunded` tinyint(4) DEFAULT 0 COMMENT '0 for refund not done, 1 for refund done, 2 for reject',
  `refund_date` date DEFAULT NULL,
  `refund_claim_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_reject_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_fragile_amount` float UNSIGNED ZEROFILL NOT NULL DEFAULT 000000000000,
  `charge_fragile_amount` float NOT NULL DEFAULT 0,
  `charged_currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BDT',
  `exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `colour_id`, `size_id`, `fabric_id`, `user_id`, `item_sku`, `vat_rate`, `charge_vat_rate`, `vat_amount`, `charge_vat_amount`, `quantity`, `selling_price`, `charge_selling_price`, `buying_price`, `total_buying_price`, `total_selling_price`, `total_charge_selling_price`, `unit_discount`, `charge_unit_discount`, `total_discount`, `charge_total_discount`, `status`, `deleted_at`, `created_at`, `updated_at`, `is_claim_refund`, `refund_claim_date`, `is_refunded`, `refund_date`, `refund_claim_reason`, `refund_reject_reason`, `refund_info`, `total_fragile_amount`, `charge_fragile_amount`, `charged_currency`, `exchange_rate`) VALUES
(5, 5, 70, 2, 15, 0, 3, 0, 6, 'C7113', 7.50, 7.50, 95.62500000, 95.63000000, 1, 1275.00000000, 1275.00000000, 577.48000000, 577.48000000, 1275.00000000, 1275.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-10-29 11:12:37', '2023-10-29 11:12:37', 0, NULL, 0, NULL, NULL, NULL, NULL, 000000000000, 0, 'BDT', 1),
(6, 6, 221, 1, 7, 0, 0, 0, 0, 'D2890', 7.50, 7.50, 824.62500000, 824.63000000, 1, 10995.00000000, 10995.00000000, 4169.40000000, 4169.40000000, 10995.00000000, 10995.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-10-29 11:13:35', '2023-10-29 11:13:35', 0, NULL, 0, NULL, NULL, NULL, NULL, 000000000000, 0, 'BDT', 1),
(8, 8, 159, 1, 9, 0, 3, 0, 0, 'D2357', 7.50, 7.50, 224.62500000, 224.62500000, 1, 2995.00000000, 2995.00000000, 1225.64000000, 1225.64000000, 2995.00000000, 2995.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-10-29 11:15:04', '2023-10-29 11:15:04', 0, NULL, 0, NULL, NULL, NULL, NULL, 000000000000, 0, 'BDT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `section_name`, `banner`, `pattern`, `product_id`, `use_for`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'top-bar', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/video\\/upload\\/Aranya_Eid_Draft4.mp4\",\"file_type\":\"video\",\"back_link\":null}]', 'single', NULL, 'other', '1', 1, NULL, '2023-12-18 05:22:19', '2023-12-18 05:22:19'),
(2, 'second-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/7.jpg\",\"file_type\":\"image\",\"back_link\":null}]', 'single', NULL, 'other', '2', 1, NULL, '2023-12-18 05:25:11', '2023-12-18 05:25:11'),
(3, 'third-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/Aranya_new_products\\/ZS001299.jpg\",\"file_type\":\"image\",\"back_link\":\"products\\/kurti-fatua?cat=1&sub_cat=9\"},{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/ZS001601.jpg\",\"file_type\":\"image\",\"back_link\":\"products\\/saree?cat=1&sub_cat=7\"}]', 'double', '[142,145,148,147,161,163,166,168,187,189,188,184,182,183,205,206,208,209,202,213,214,215,218,217,211,210]', 'category', '3', 1, NULL, '2023-12-18 05:27:33', '2023-12-18 05:27:33'),
(4, 'campaign-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/4.jpg\",\"file_type\":\"image\",\"back_link\":\"campaign\\/cat=4&cat_name=puja-23\"}]', 'single', NULL, 'campaign', '4', 1, NULL, '2023-12-18 05:32:18', '2023-12-18 05:32:18'),
(5, 'five-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/aranya-product-v2\\/DSC_8136.jpg\",\"file_type\":\"image\",\"back_link\":\"products\\/girls?cat=3&sub_cat=38\"}]', 'single', '[161,167,169,173,171,177,178,185,188]', 'category', '5', 1, NULL, '2023-12-18 05:43:25', '2023-12-18 05:43:25'),
(6, 'six-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/aranya-product-v2\\/M0010396RG02200920\\/63_2.png\",\"file_type\":\"image\",\"back_link\":\"products?cat_id=2&cat_name=men\"}]', 'single', '[171,176,179,204,201,208,224,226,228,222,221]', 'category', '6', 1, NULL, '2023-12-18 06:04:21', '2023-12-18 06:04:21'),
(7, 'seven-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/4.jpg\",\"file_type\":\"image\",\"back_link\":null}]', 'single', NULL, 'campaign', '7', 1, NULL, '2023-12-18 07:17:15', '2023-12-18 07:17:15'),
(8, 'eight-banner', '[{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/ZS001916.jpg\",\"file_type\":\"image\",\"back_link\":\"products?cat=1&cat_name=women\"},{\"banner_uri\":\"https:\\/\\/res.cloudinary.com\\/diyc1dizi\\/image\\/upload\\/aranya-product-v2\\/DSC_8136.jpg\",\"file_type\":\"image\",\"back_link\":\"products?cat=3&cat_name=kids\"}]', 'double', NULL, 'category', '8', 1, NULL, '2024-01-14 03:51:50', '2024-01-14 03:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `charge_amount` double(8,2) NOT NULL COMMENT 'its converted amount by changing currency',
  `charged_currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BDT',
  `exchange_rate` float NOT NULL DEFAULT 0,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_refunded` tinyint(4) NOT NULL DEFAULT 0,
  `refund_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `transaction_id`, `amount`, `charge_amount`, `charged_currency`, `exchange_rate`, `payment_type`, `payment_status`, `deleted_at`, `created_at`, `updated_at`, `is_refunded`, `refund_date`, `refund_info`) VALUES
(1, 1, NULL, 3236.62, 3236.63, 'BDT', 1, NULL, 0, NULL, '2023-10-22 09:50:28', NULL, 0, NULL, NULL),
(2, 2, NULL, 3150.62, 3150.63, 'BDT', 1, NULL, 0, NULL, '2023-10-22 09:57:44', NULL, 0, NULL, NULL),
(5, 5, NULL, 1430.62, 1430.63, 'BDT', 1, NULL, 0, NULL, '2023-10-24 05:28:00', NULL, 0, NULL, NULL),
(6, 6, NULL, 11879.62, 11879.63, 'BDT', 1, NULL, 0, NULL, '2023-10-24 14:19:38', NULL, 0, NULL, NULL),
(8, 8, NULL, 3279.62, 3279.62, 'BDT', 0, NULL, 0, NULL, '2023-10-28 17:30:20', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group_name`, `permission_name`, `slug`, `route_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Attribute', 'Attribute View', 'attribute-view', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(2, 'Attribute', 'Attribute Edit', 'attribute-edit', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(3, 'Attribute', 'Attribute Delete', 'attribute-delete', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(4, 'Attribute', 'Attribute Create', 'attribute-create', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(5, 'Page', 'Page View', 'page-view', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(6, 'Page', 'Page Update', 'page-update', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(7, 'Menu', 'Menu View', 'menu-view', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(8, 'Menu', 'Menu Edit', 'menu-edit', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(9, 'Menu', 'Menu Delete', 'menu-delete', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(10, 'Menu', 'Menu Create', 'menu-create', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(11, 'Role & Permission', 'Role&Permission View', 'role-view', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(12, 'Role & Permission', 'Role Edit', 'role-edit', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(13, 'Role & Permission', 'Role Delete', 'role-delete', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(14, 'Role & Permission', 'Role Create', 'role-create', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(15, 'Employee', 'Employee View', 'employee-view', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(16, 'Employee', 'Employee Edit', 'employee-edit', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(17, 'Employee', 'Employee Delete', 'employee-delete', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(18, 'Employee', 'Employee Create', 'employee-create', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(19, 'Product', 'Product View', 'product-view', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(20, 'Product', 'Product Edit', 'product-edit', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(21, 'Product', 'Product Delete', 'product-delete', NULL, 1, '2023-08-01 03:41:10', '2023-08-01 03:41:10'),
(22, 'Product', 'Product Create', 'product-create', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(23, 'Product', 'Bulk Upload', 'bulk-upload', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(24, 'Product', 'Add To Campaign', 'add-to-campaign', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(25, 'Product', 'Stock Sheet', 'stock-sheet', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(26, 'Order', 'Order View', 'order-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(27, 'Order', 'Order Update', 'order-update', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(28, 'Order', 'Order Delete', 'order-delete', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(29, 'Refund', 'Refund Configure', 'refund-configure', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(30, 'Refund', 'Refund View', 'refund-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(31, 'Refund', 'Refund Request View', 'refund-request-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(32, 'Refund', 'Approve Refund View', 'approve-refund-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(33, 'Refund', 'Reject Refund View', 'reject-refund-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(34, 'Refund', 'Refund Action', 'refund-action', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(35, 'Customer', 'Customer View', 'customer-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(36, 'Customer', 'Customer Order View', 'customer-order-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(37, 'Campaign', 'Campaign View', 'campaign-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(38, 'Campaign', 'Campaign Edit', 'campaign-edit', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(39, 'Campaign', 'Campaign Delete', 'campaign-delete', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(40, 'Campaign', 'Campaign Create', 'campaign-create', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(41, 'Campaign', 'Item Drop From Campaign', 'product-remove-campaign', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(42, 'Report', 'Report View', 'report-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(43, 'Report', 'Invoice Report', 'invoice-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(44, 'Report', 'Individual Customer Report', 'individual-customer-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(45, 'Report', 'Customer Refund Report', 'customer-refund-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(46, 'Report', 'Customer Lifetime Value', 'customer-lifetime-value-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(47, 'Report', 'Payment Report', 'payment-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(48, 'Report', 'Stock Report', 'stock-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(49, 'Report', 'Campaign Report', 'campaign-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(50, 'Report', 'Sales Report', 'sales-report', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(51, 'Shipping', 'Shipping View', 'shipping-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(52, 'Shipping', 'Add Shipping', 'add-shipping', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(53, 'Shipping', 'Edit Shipping', 'edit-shipping', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(54, 'Shipping', 'Delete Shipping', 'delete-shipping', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(55, 'Media-Manager', 'Media View', 'media-view', NULL, 1, '2023-08-01 03:41:11', '2023-08-01 03:41:11'),
(56, 'Media-Manager', 'Add Media', 'add-media', NULL, 1, '2023-08-01 03:41:12', '2023-08-01 03:41:12'),
(57, 'Media-Manager', 'Media Delete', 'media-delete', NULL, 1, '2023-08-01 03:41:12', '2023-08-01 03:41:12'),
(58, 'Information', 'Add Info', 'add-info', NULL, 1, '2023-08-01 03:41:12', '2023-08-01 03:41:12'),
(59, 'Information', 'Edit Info', 'edit-info', NULL, 1, '2023-08-01 03:41:12', '2023-08-01 03:41:12'),
(60, 'Information', 'Info Delete', 'delete-info', NULL, 1, '2023-08-01 03:41:12', '2023-08-01 03:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', 'b800a455b32e8ccff241513c768ece6ef9b37b4c006a788525fa214617a7b747', '[\"*\"]', '2023-04-05 07:52:25', '2023-04-05 07:42:46', '2023-04-05 07:52:25'),
(2, 'App\\Models\\User', 1, 'admin@suparadmin.com', '730e2ccbeb831922818061854506c1ba294eaa988b1c4f15c11a3a5be279b650', '[\"*\"]', '2023-04-05 09:31:05', '2023-04-05 09:13:01', '2023-04-05 09:31:05'),
(3, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'ca8c3be6a2ba2f381ecf38be2a8d24c77c81151bed87022e834da0f67fb29dfc', '[\"*\"]', NULL, '2023-04-05 09:37:31', '2023-04-05 09:37:31'),
(4, 'App\\Models\\User', 1, 'admin@suparadmin.com', '5e5ce3eb89d86ef9d2273065fff019bdbbca2ecb05715dcd335d5010d5894a86', '[\"*\"]', NULL, '2023-04-05 09:46:14', '2023-04-05 09:46:14'),
(5, 'App\\Models\\User', 1, 'admin@suparadmin.com', '686053e45c98d615e981a5218de47cd0dad33ae725a670a66025f53ce8c08bc3', '[\"*\"]', '2023-04-05 09:46:39', '2023-04-05 09:46:20', '2023-04-05 09:46:39'),
(6, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'adabfcfe721216c0267b2e3fe6bbdd72ec30f04d2363ae75e7b5de370828788f', '[\"*\"]', NULL, '2023-04-05 09:51:25', '2023-04-05 09:51:25'),
(7, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'b8df2fb445b8742cdec0822944511770d69b50302bccb3f556019ce5e5751e23', '[\"*\"]', '2023-04-05 09:57:53', '2023-04-05 09:53:14', '2023-04-05 09:57:53'),
(8, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'c4cf7d28337aaa3f711fb55cd3f601be69048b33e11a812dc3467beeff867958', '[\"*\"]', '2023-04-06 03:47:19', '2023-04-05 10:13:02', '2023-04-06 03:47:19'),
(9, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'f040c3a032e5b8af3f5ecc0cd4312b5dfda2b8bde00b6b1452beac8b1d886f02', '[\"*\"]', '2023-04-06 07:46:02', '2023-04-06 07:42:29', '2023-04-06 07:46:02'),
(10, 'App\\Models\\User', 1, 'admin@suparadmin.com', '0084b229f6b4490f293d3bcd1bf8cac83cf337d80ec31d4da45f95973929d0ce', '[\"*\"]', '2023-04-06 07:55:32', '2023-04-06 07:55:30', '2023-04-06 07:55:32'),
(11, 'App\\Models\\User', 1, 'admin@suparadmin.com', '1df2443996c1dadbefcb96b67822716c68244cabe1371e892a9b268be01c05a4', '[\"*\"]', '2023-04-06 07:57:49', '2023-04-06 07:57:35', '2023-04-06 07:57:49'),
(12, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'db416cdc8db3733aa0918a9fd8a3fe862d98e4110a5aade368fa71e2e543095a', '[\"*\"]', '2023-04-06 08:52:09', '2023-04-06 08:10:49', '2023-04-06 08:52:09'),
(13, 'App\\Models\\User', 1, 'admin@suparadmin.com', '3f6b78f347bef86f970c13229d9eb9b1f3e3a29c8e680a9e835d2c7a7bcc66ed', '[\"*\"]', '2023-04-06 08:27:47', '2023-04-06 08:11:29', '2023-04-06 08:27:47'),
(14, 'App\\Models\\User', 1, 'admin@suparadmin.com', '8b025c663c25a427420ef224a5b9514518a107c1d97399007d7e8cb48670a22a', '[\"*\"]', NULL, '2023-04-06 08:22:44', '2023-04-06 08:22:44'),
(15, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'f18ba2b8f8f3be41ca290367ce7679fd903325a977027fd18d6202bd0cd692d1', '[\"*\"]', '2023-04-06 08:47:08', '2023-04-06 08:46:56', '2023-04-06 08:47:08'),
(16, 'App\\Models\\User', 1, 'admin@suparadmin.com', '89edec7959e6c556e23b978cfe752bcaa6f2468cf537b2423adb1685c219919f', '[\"*\"]', '2023-04-10 07:53:10', '2023-04-06 08:57:35', '2023-04-10 07:53:10'),
(17, 'App\\Models\\User', 2, 'API TOKEN', 'aad3f6ab3a4e22555f4f87e781b66a04229b85eb1ea00018a259853f2f42f035', '[\"*\"]', '2023-04-09 18:48:00', '2023-04-09 18:16:50', '2023-04-09 18:48:00'),
(18, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'a11ea1ade3b74255e453ae3f338f59ebbf70ff2c59a06359675e5578442cc02d', '[\"*\"]', '2023-04-10 05:22:48', '2023-04-10 05:09:46', '2023-04-10 05:22:48'),
(19, 'App\\Models\\User', 1, 'admin@suparadmin.com', '8df618fad96d40499b9f3aa4006b38be4f7066e3c212820252035bdd97821406', '[\"*\"]', '2023-04-10 05:24:19', '2023-04-10 05:24:00', '2023-04-10 05:24:19'),
(20, 'App\\Models\\User', 3, 'API TOKEN', '4b685c36ad15410bfc215a3f9297cbc5599fc543f482cb81655f6dac12702aae', '[\"*\"]', '2023-04-10 07:22:40', '2023-04-10 07:20:21', '2023-04-10 07:22:40'),
(21, 'App\\Models\\User', 1, 'admin@suparadmin.com', '46355d7478fbe4f1e9b4a2917b6c696d867a6c62961e56b1b3065f5a54d67528', '[\"*\"]', '2023-04-17 11:53:38', '2023-04-15 06:00:48', '2023-04-17 11:53:38'),
(22, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'fb1b75354762537179ba20ba682dbb119a81a52dabc67ae88c1387ac80cfda84', '[\"*\"]', '2023-04-30 05:24:22', '2023-04-30 05:24:11', '2023-04-30 05:24:22'),
(23, 'App\\Models\\User', 1, 'admin@suparadmin.com', 'e1f91ee988a2180f1d5e2f3dbdb1a9536b0145e3580f21021ad5ea57519ab323', '[\"*\"]', '2023-05-01 06:27:01', '2023-05-01 06:24:14', '2023-05-01 06:27:01'),
(24, 'App\\Models\\User', 4, 'API TOKEN', '197d77fc45a76139147b9a767e0156e7f90dc1bc3b1bd269635f5e9fb128706f', '[\"*\"]', NULL, '2023-05-03 09:30:40', '2023-05-03 09:30:40'),
(25, 'App\\Models\\User', 68, 'social@gmail.com', 'f33f03e63a853109912b3b7973100124ecc9fe96d25cb0accf781e745e6b1869', '[\"*\"]', NULL, '2023-06-13 07:26:21', '2023-06-13 07:26:21'),
(26, 'App\\Models\\User', 68, 'social@gmail.com', '9bca1a22b1b7f0f0c7919c4fb7bfc5ebd836aeb80231f1ae2e07ba6a4f2011e0', '[\"*\"]', NULL, '2023-06-13 07:27:46', '2023-06-13 07:27:46'),
(27, 'App\\Models\\User', 68, 'social@gmail.com', 'f3e151e5b3a1e0834b5806e139ac31c6e246df35bd978994ca5c9101b0d39168', '[\"*\"]', '2023-07-12 04:50:01', '2023-06-14 23:55:55', '2023-07-12 04:50:01'),
(28, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '8a496a92d3150f9ff6b01fd6e88cef8ea65b7ecc811365b3970b1ef71d7e9344', '[\"*\"]', '2023-09-03 08:15:20', '2023-09-03 07:46:47', '2023-09-03 08:15:20'),
(29, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '62caad52dec7dd9bd5e3595d83e87fbf02390ca39042bd0541400b5391af761d', '[\"*\"]', NULL, '2023-09-03 07:46:48', '2023-09-03 07:46:48'),
(30, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', 'e40f284e7f35bae529372a709ddfefbed1a770f50af8f4e0802340edf675389c', '[\"*\"]', '2023-09-03 08:28:33', '2023-09-03 08:16:27', '2023-09-03 08:28:33'),
(31, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '6ad0bd199ec5fb702ec7dbf7fd560473cbd54ce42305c57fe45524c826348c15', '[\"*\"]', NULL, '2023-09-03 08:16:28', '2023-09-03 08:16:28'),
(32, 'App\\Models\\User', 4, 'API TOKEN', '8e03d41b2bf9c45eec05b523deeb8305882a5616804380a515886df2f7f724d4', '[\"*\"]', '2023-10-18 05:43:57', '2023-09-03 08:37:56', '2023-10-18 05:43:57'),
(33, 'App\\Models\\User', 5, 'API TOKEN', 'b427a3f34aa51d31406877dbaf03f44ed94c6ae49b48a33a3f2a8cf3af295d25', '[\"*\"]', '2023-10-09 12:26:43', '2023-09-04 05:50:39', '2023-10-09 12:26:43'),
(34, 'App\\Models\\User', 6, 'API TOKEN', 'b12922a74b886c387657f2d5aa60a314a2bb1688445f30501cfb7b2be422ebf0', '[\"*\"]', '2023-09-04 06:02:02', '2023-09-04 05:58:32', '2023-09-04 06:02:02'),
(35, 'App\\Models\\User', 6, 'nashitaiftekhar@gmail.com', 'cbe91d8f9f04202ecf7ed15a631dc1b8155be2a9b185713ce5ecaeca828eb4e3', '[\"*\"]', '2023-09-10 05:26:01', '2023-09-04 06:04:40', '2023-09-10 05:26:01'),
(36, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', 'df2e642f08ae411fdc03e69dc0702020b0b21b4ff33fdffae416231978684656', '[\"*\"]', '2023-09-07 05:22:08', '2023-09-07 03:41:58', '2023-09-07 05:22:08'),
(37, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', '6435ea2ba9a69f3b197a23ad7843544ef2581b77a8101934b8abef019532c0d3', '[\"*\"]', NULL, '2023-09-07 03:41:58', '2023-09-07 03:41:58'),
(38, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', 'fdb699305025a2b284a401bc966353c7d35aff6995df45037b6fd60725aa4f9f', '[\"*\"]', '2023-09-13 09:36:16', '2023-09-13 09:36:00', '2023-09-13 09:36:16'),
(39, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', '81c2e003b5c41c90ead02f2e95721bf710c67bcb6666e6c9a0a1447a2f67dc1e', '[\"*\"]', NULL, '2023-09-13 09:36:00', '2023-09-13 09:36:00'),
(40, 'App\\Models\\User', 9, 'API TOKEN', '4afdaaa0b6bb044b0d7703f55ac696b44833f159a75632ba3f35bc146c269174', '[\"*\"]', '2023-09-19 04:49:10', '2023-09-17 11:52:31', '2023-09-19 04:49:10'),
(41, 'App\\Models\\User', 9, 'admin@suparadmin.com', '5e56c107e7e8a1055c3cb3581aa6ad509bc4adb86d2819fba5a691153ed329fc', '[\"*\"]', '2023-09-19 04:49:43', '2023-09-19 04:49:43', '2023-09-19 04:49:43'),
(42, 'App\\Models\\User', 9, 'admin@suparadmin.com', '1e21f7fa319ca9cdd145fc4f890436df736b35269c8bc381ca331f5dc62a381d', '[\"*\"]', '2023-09-19 04:50:52', '2023-09-19 04:50:51', '2023-09-19 04:50:52'),
(43, 'App\\Models\\User', 9, 'admin@suparadmin.com', 'f09511e185005ebb293055464b421da432901b9308cc8c41716756d5c6b3fdf2', '[\"*\"]', '2023-10-09 12:51:44', '2023-09-19 05:27:38', '2023-10-09 12:51:44'),
(44, 'App\\Models\\User', 10, 'API TOKEN', '507e69b9ad6a43380adae111eb74d30599d93d08426cc3974e8d2f6ecdc3a859', '[\"*\"]', '2023-09-20 07:12:23', '2023-09-20 06:57:02', '2023-09-20 07:12:23'),
(45, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '0f078aab1a12e936c476d83906596d3577032e6d2d73f641cc6e00c5b428fc50', '[\"*\"]', '2023-10-15 12:28:37', '2023-09-20 07:13:09', '2023-10-15 12:28:37'),
(46, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '348cdd22ad32c309c3852c647bea58603e41a3445f30532562ee33b2bc399516', '[\"*\"]', '2023-09-20 07:21:40', '2023-09-20 07:19:04', '2023-09-20 07:21:40'),
(47, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', 'a536b67950cb72872beb1ad43b413b008aef28e3a41c56fed45d6f63b5f33d25', '[\"*\"]', '2023-09-21 13:35:10', '2023-09-21 12:58:39', '2023-09-21 13:35:10'),
(48, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '6d53f43dcd63e2194481509c6c3eac6ab2f8d7f9431086b16df84bb250fbdd99', '[\"*\"]', '2023-09-21 13:41:39', '2023-09-21 13:35:57', '2023-09-21 13:41:39'),
(49, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', 'f4ab770b5496b0c787c7cb6e7d41716ce1bbae7a980c7f561e68ee45f11cebeb', '[\"*\"]', '2023-09-24 10:29:24', '2023-09-24 08:18:35', '2023-09-24 10:29:24'),
(50, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', 'b660eaa45d4c02d05f65b55e8f6fc39eb7065755df00a175ca258627be6b643d', '[\"*\"]', NULL, '2023-09-26 09:27:37', '2023-09-26 09:27:37'),
(51, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', 'f25ebbbb85e0e2ab5101d7949f58df5f7ca77d404f1247935ff1614a9e0dd69d', '[\"*\"]', NULL, '2023-09-26 09:27:37', '2023-09-26 09:27:37'),
(52, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', 'aaa564dece5396fce37cafdede9210e3b7cd61cc0f716a16d7c14fe2bc3d2cfc', '[\"*\"]', NULL, '2023-09-26 09:29:06', '2023-09-26 09:29:06'),
(53, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', '0f93d5d844b727bdb1c38ad1922995c20539c6f4b173ba8276e697e9e428b7b8', '[\"*\"]', NULL, '2023-09-26 09:29:07', '2023-09-26 09:29:07'),
(54, 'App\\Models\\User', 11, 'API TOKEN', '676f480b30e509046a89e692eb0aae40b05e066df702c76eedc7cf8fdc54bf01', '[\"*\"]', '2023-10-01 05:10:53', '2023-10-01 05:06:01', '2023-10-01 05:10:53'),
(55, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '109f9dcf3ae587613f35dca0c01236271ae8fd0890969c5e8fcf6b2564977643', '[\"*\"]', '2023-10-09 12:42:52', '2023-10-01 07:01:00', '2023-10-09 12:42:52'),
(56, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '87fb32ae7c374b129394cce6c6ee89a35624e8f9fb6abceae13533498723abad', '[\"*\"]', '2023-10-01 08:22:19', '2023-10-01 08:20:03', '2023-10-01 08:22:19'),
(57, 'App\\Models\\User', 12, 'mmhmasum98@gmail.com', '657f52e130935fe610fbc400d3b695a29fad359ece687d2b31306d7b9cf971e1', '[\"*\"]', NULL, '2023-10-03 05:49:38', '2023-10-03 05:49:38'),
(58, 'App\\Models\\User', 12, 'mmhmasum98@gmail.com', '4e833a67360ce7d184e7d77b498376cd59a267018e7f114f0f3404b5c8054fff', '[\"*\"]', NULL, '2023-10-03 05:49:38', '2023-10-03 05:49:38'),
(59, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', 'a1f5f9c7fa2902e98598e4d5a02e290dd8224f7fb7b9f3cac9295ff7e80b7fff', '[\"*\"]', '2023-10-15 10:16:24', '2023-10-04 13:45:12', '2023-10-15 10:16:24'),
(60, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', '9bda343bd027a93cf6c5fe7d653fde45ad01fe451fc96af4da4a8ee87a148b67', '[\"*\"]', NULL, '2023-10-04 13:45:17', '2023-10-04 13:45:17'),
(61, 'App\\Models\\User', 13, 'API TOKEN', '4ce96419f35726853e9b433a093d863f9923997cd7e3572a35515d1c0543f9b2', '[\"*\"]', '2023-10-06 11:52:46', '2023-10-06 11:46:30', '2023-10-06 11:52:46'),
(62, 'App\\Models\\User', 14, 'yeamin.hemel@webable.digital', '6faa8de51a16d5f65775be4166b400f0b478c5ac4ca5ab556f33783fdab20b48', '[\"*\"]', '2023-10-08 03:56:37', '2023-10-08 03:55:08', '2023-10-08 03:56:37'),
(63, 'App\\Models\\User', 14, 'yeamin.hemel@webable.digital', '8bcf561ee0c90259be489ffee46b6b7cd4229674af42c54a5dc27db0ac6b6e59', '[\"*\"]', NULL, '2023-10-08 03:55:08', '2023-10-08 03:55:08'),
(64, 'App\\Models\\User', 15, 'sourav.c.nath@gmail.com', '6ef4b110441a0dc9c986e7720f554d89ed58e83b91c7366b1433967a994818b9', '[\"*\"]', '2023-10-10 06:06:10', '2023-10-08 04:26:30', '2023-10-10 06:06:10'),
(65, 'App\\Models\\User', 15, 'sourav.c.nath@gmail.com', '258e42ce63c27f72c9645d0148f67787611af89c0f14ec7abbaf0730b34b76bb', '[\"*\"]', NULL, '2023-10-08 04:26:30', '2023-10-08 04:26:30'),
(66, 'App\\Models\\User', 15, 'sourav.c.nath@gmail.com', 'aa0e5624a1f21576273339034d90e332709c6e752ba0fbadc083800070cee335', '[\"*\"]', '2023-10-09 07:15:39', '2023-10-08 04:58:01', '2023-10-09 07:15:39'),
(67, 'App\\Models\\User', 15, 'sourav.c.nath@gmail.com', 'a18d5ae5076e1dcbfbf6885b001e1040cbb3de2b77dd72aecbccf5077100089d', '[\"*\"]', NULL, '2023-10-08 04:58:01', '2023-10-08 04:58:01'),
(68, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', 'b9e705d9f5c71d03e467e644e44308e748eb06ced4787869dccd19adcbad1566', '[\"*\"]', '2023-10-16 07:03:00', '2023-10-08 05:52:56', '2023-10-16 07:03:00'),
(69, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '75138749758a852447e9504c916594ac25e14cd9e4354e12be9348ee535eab4e', '[\"*\"]', '2023-10-08 10:36:33', '2023-10-08 10:32:21', '2023-10-08 10:36:33'),
(70, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '271a0ee876a3360882bb5ac87e123627b135176e36d1a6675e29de046ef6f42d', '[\"*\"]', '2023-10-08 11:14:10', '2023-10-08 10:55:46', '2023-10-08 11:14:10'),
(71, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', 'ecefcd907829fe2530b71535b0440b4a28f2183e2e033556c3788d586e12ab47', '[\"*\"]', '2023-10-09 04:44:46', '2023-10-09 04:33:39', '2023-10-09 04:44:46'),
(72, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '48b0914e19bf1bb1ed0c2e569e2837ead1a8b9b6ab9a671434452a5a8727761b', '[\"*\"]', '2023-10-09 04:52:08', '2023-10-09 04:51:05', '2023-10-09 04:52:08'),
(73, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '596e57eb1c1316c8cfd659295807165157daf878ef974018803486c1e64f9095', '[\"*\"]', '2023-10-09 04:58:56', '2023-10-09 04:55:34', '2023-10-09 04:58:56'),
(74, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', 'cfc56857895cfdf5ae52e9b4bba5b106ffdeb9994323b888691b549453525956', '[\"*\"]', NULL, '2023-10-09 05:02:41', '2023-10-09 05:02:41'),
(75, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '110b4eb2fcafd445dcfae27608f28ace3c9d45d7ac4c7f052ef0ae088a601035', '[\"*\"]', '2023-10-09 05:04:58', '2023-10-09 05:02:42', '2023-10-09 05:04:58'),
(76, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '0bd098fcd4b8743a01e6e76d5672f868d1eb22f1f97bdaf0a61a9b3a3804b382', '[\"*\"]', '2023-10-09 05:10:29', '2023-10-09 05:10:18', '2023-10-09 05:10:29'),
(77, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', 'd2a3ff67e7ff9969e480f6c6958f809328610bb75cb0a8de47897d2a53038fcd', '[\"*\"]', '2023-10-09 06:23:25', '2023-10-09 05:16:21', '2023-10-09 06:23:25'),
(78, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '6ebd503d031e4fe8c187d27d9f721fe1d63b9bcf2277e4b71b8458596bc36212', '[\"*\"]', '2023-10-09 07:13:54', '2023-10-09 07:13:49', '2023-10-09 07:13:54'),
(79, 'App\\Models\\User', 15, 'sourav.c.nath@gmail.com', '0e49328cb862a3f611ac4d75b86a6aff3a4e1b3a337763996f32df112000c40f', '[\"*\"]', '2023-10-10 09:15:49', '2023-10-10 06:15:05', '2023-10-10 09:15:49'),
(80, 'App\\Models\\User', 15, 'sourav.c.nath@gmail.com', '4d57cc90e8f59f52fee0fbfc3a369db708f954dc57c891284b19920a1ac6c2cc', '[\"*\"]', NULL, '2023-10-10 06:15:06', '2023-10-10 06:15:06'),
(81, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', 'a188af2296acd26044957ef5fa77d58de240cba37fa0cb29e07de870b2d340e5', '[\"*\"]', '2023-10-10 06:17:35', '2023-10-10 06:15:57', '2023-10-10 06:17:35'),
(82, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', 'e11544a5e0f995a0188ce8dcb02e64ab8f1a9c05460c1a6f7c6793a7c3fe9f14', '[\"*\"]', '2023-10-10 06:57:11', '2023-10-10 06:19:44', '2023-10-10 06:57:11'),
(83, 'App\\Models\\User', 16, 'sumaiyamakshiba@gmail.com', 'ec407441bb2e756c890ce8de7100789f6c05e329c7880f833cf350c87c10c4a2', '[\"*\"]', '2023-10-19 09:34:40', '2023-10-10 06:26:40', '2023-10-19 09:34:40'),
(84, 'App\\Models\\User', 16, 'sumaiyamakshiba@gmail.com', '53d234bef4054994cb9e1c9fbea2c6a33289b962ed63b8d6c92d6de1d4dc0f4b', '[\"*\"]', NULL, '2023-10-10 06:26:41', '2023-10-10 06:26:41'),
(85, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', 'd4934af44b2d261d20eab4a199d36784715b6511855cbc81fdda8bafa4a9f467', '[\"*\"]', '2023-10-18 15:25:50', '2023-10-10 06:38:17', '2023-10-18 15:25:50'),
(86, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', 'aa42e9850e6a60f88e817384b27edb98f1d3f739c5ca8a2edb1594b79830a433', '[\"*\"]', NULL, '2023-10-10 06:38:18', '2023-10-10 06:38:18'),
(87, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', 'a431b4dbeb56da719d8530f95785ab71c17d4cae184e0c806ec615058ba5ad09', '[\"*\"]', NULL, '2023-10-10 06:40:49', '2023-10-10 06:40:49'),
(88, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', 'acc13165ed2b1aade3f21decdac2e8ae65db2c77140f098310f6beb148879011', '[\"*\"]', NULL, '2023-10-10 06:40:50', '2023-10-10 06:40:50'),
(89, 'App\\Models\\User', 17, 'hemel98@gmail.com', '29a2bff430feb3ba124e16326b94dd960c6365504452a6a62a9dcb6c200f45a3', '[\"*\"]', '2023-10-15 02:37:33', '2023-10-10 06:41:23', '2023-10-15 02:37:33'),
(90, 'App\\Models\\User', 17, 'hemel98@gmail.com', '0f5b9956f607306d024e302e4539b9a93bbc570defbb176c4e079426ca9ff1d7', '[\"*\"]', NULL, '2023-10-10 06:41:23', '2023-10-10 06:41:23'),
(91, 'App\\Models\\User', 13, 'mdalamin@aranya.com.bd', '6e5e286dcbc13076d5a1c17e806e876c9578db192155a10337605eede635c25e', '[\"*\"]', '2023-10-10 09:12:23', '2023-10-10 07:38:07', '2023-10-10 09:12:23'),
(92, 'App\\Models\\User', 9, 'admin@suparadmin.com', '8f67a59cb89cc42d1072c4dea1613456ffe4596e997ad215cc5b6946d5744a6c', '[\"*\"]', '2023-10-15 07:40:00', '2023-10-10 08:38:55', '2023-10-15 07:40:00'),
(93, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '4b47f07d6330b59d1536e76f77e37c6c5e95bbe8b6abfee7a7a5b5d821179ff6', '[\"*\"]', '2023-10-11 09:49:06', '2023-10-11 09:44:11', '2023-10-11 09:49:06'),
(94, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '83f0eb3bf5ad26d2668c3c554469d7b2407af826d5c3c36f40bdcc541a31b210', '[\"*\"]', NULL, '2023-10-11 09:44:12', '2023-10-11 09:44:12'),
(95, 'App\\Models\\User', 9, 'admin@suparadmin.com', '94ff2a918e3eb81e2e46806073191a92d1dddc479febc91c4cabad03bb81282a', '[\"*\"]', '2023-10-18 05:25:58', '2023-10-15 08:00:28', '2023-10-18 05:25:58'),
(96, 'App\\Models\\User', 18, 'shamimul.haque@webable.digital', 'c75338533118d1c8a5c933df549ef4e09fd2d8e51c7fb29a7a8ab8ad0d6e498a', '[\"*\"]', NULL, '2023-10-15 08:01:11', '2023-10-15 08:01:11'),
(97, 'App\\Models\\User', 18, 'shamimul.haque@webable.digital', '2e5fbe7387378acc8225a6f8fd023ada210866bce257adba60a097a0e888d78f', '[\"*\"]', NULL, '2023-10-15 08:01:11', '2023-10-15 08:01:11'),
(98, 'App\\Models\\User', 9, 'admin@suparadmin.com', '4a1722aa4caafbdc21c13148d622cc70e6e27463841e9b23f4ee871540c8e4b4', '[\"*\"]', '2023-10-18 06:49:13', '2023-10-18 05:31:17', '2023-10-18 06:49:13'),
(99, 'App\\Models\\User', 9, 'admin@suparadmin.com', '2dded3b43387be7c566d26d53144f280a8fd4541060d75ed3c571de697f6f983', '[\"*\"]', '2023-10-18 05:33:46', '2023-10-18 05:32:48', '2023-10-18 05:33:46'),
(100, 'App\\Models\\User', 2, 'customer@mail.com', 'e159bdc091495e048edaea2b2a70775b2e9431f55b067ab3bc4936d536593f84', '[\"*\"]', '2023-10-18 05:52:18', '2023-10-18 05:48:10', '2023-10-18 05:52:18'),
(101, 'App\\Models\\User', 2, 'customer@mail.com', '0e100a4154f8e1e004e504c50541686c99ba9fc4a02a46a6a92c2beb024bf821', '[\"*\"]', '2023-10-18 06:00:22', '2023-10-18 05:55:57', '2023-10-18 06:00:22'),
(102, 'App\\Models\\User', 2, 'customer@mail.com', '6909a32b07fe4806b26adacb3e0b7770cbe1040fac843f3aeffa53fb4e9d6606', '[\"*\"]', '2023-10-22 06:31:34', '2023-10-18 07:29:05', '2023-10-22 06:31:34'),
(103, 'App\\Models\\User', 9, 'admin@suparadmin.com', '9bca50060c438f3354c9ae6ace29a8aa8c083ada5a695576177d060c72a5c08a', '[\"*\"]', '2023-10-18 12:46:46', '2023-10-18 12:41:03', '2023-10-18 12:46:46'),
(104, 'App\\Models\\User', 9, 'admin@suparadmin.com', '828e22fdc94247a939f152ec1131013155d1a9bdb921f6ec0c2e2b1924fa339d', '[\"*\"]', '2023-10-18 12:58:42', '2023-10-18 12:58:40', '2023-10-18 12:58:42'),
(105, 'App\\Models\\User', 9, 'admin@suparadmin.com', '0bd46b9ea0de41e431a0a0dd8cbaa2500fa02b132cc47b7aa9ab02c83238a0da', '[\"*\"]', '2023-10-18 13:31:25', '2023-10-18 13:29:56', '2023-10-18 13:31:25'),
(106, 'App\\Models\\User', 9, 'admin@suparadmin.com', '910df4144bad1d721e136775203e12182aa97c218ca1f93374488537dea0218d', '[\"*\"]', '2023-10-19 04:49:37', '2023-10-18 13:51:06', '2023-10-19 04:49:37'),
(107, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '9a0b273725d05b3d987099ced4b872133f8b834b54800343b390643733882ec0', '[\"*\"]', '2023-10-18 14:02:56', '2023-10-18 13:57:52', '2023-10-18 14:02:56'),
(108, 'App\\Models\\User', 9, 'admin@suparadmin.com', '3c7103bd2339300f5710633ea68352ad73fb794ced277e87e5ace750f1a8eec5', '[\"*\"]', '2023-10-19 05:01:56', '2023-10-19 05:01:52', '2023-10-19 05:01:56'),
(109, 'App\\Models\\User', 9, 'admin@suparadmin.com', '9ee416703c9d5572432a1a7a5d1eb4c36836cf23a617cb91125f0f76187f9912', '[\"*\"]', NULL, '2023-10-19 05:15:19', '2023-10-19 05:15:19'),
(110, 'App\\Models\\User', 9, 'admin@suparadmin.com', '224d6a9a5dac1ff5c6f5db33c4483c5bba6a3577b4603a0a45421a34f5af66c5', '[\"*\"]', NULL, '2023-10-19 05:17:04', '2023-10-19 05:17:04'),
(111, 'App\\Models\\User', 9, 'admin@suparadmin.com', 'a9b0220c985d4c7eaea828d2c925237379d1a882cdd1cc653666f2fe62255dfd', '[\"*\"]', NULL, '2023-10-19 05:19:10', '2023-10-19 05:19:10'),
(112, 'App\\Models\\User', 1, 'API TOKEN', '739877f726571382af31d7137f339d49d1592996c8f7500a1d89cf254549aa76', '[\"*\"]', '2023-10-19 11:10:25', '2023-10-19 11:04:33', '2023-10-19 11:10:25'),
(113, 'App\\Models\\User', 2, 'API TOKEN', '451f72d202b94177a1a01179101965b74f77cc6817067dd605a86f25bc65d365', '[\"*\"]', '2023-10-19 11:35:10', '2023-10-19 11:30:54', '2023-10-19 11:35:10'),
(114, 'App\\Models\\User', 2, 'mdalamin@test.com', 'c9fe3cb0887e68536e76b5c30dc6ae6ac4846aedef6b685c9743d2f9ae97904f', '[\"*\"]', '2023-10-19 11:51:46', '2023-10-19 11:43:28', '2023-10-19 11:51:46'),
(115, 'App\\Models\\User', 3, 'API TOKEN', '4f7f4438dd01e48c72f84fbbc1ddd08a3c74f4dc2076447e254626ea74b257a4', '[\"*\"]', '2023-10-19 11:54:08', '2023-10-19 11:49:36', '2023-10-19 11:54:08'),
(116, 'App\\Models\\User', 3, 'admin@suparadmin.com', '303ba693ce4bcc70787a51b3131290632c7eacb95aa954aa3bc72022445fd5c8', '[\"*\"]', '2023-10-19 20:35:08', '2023-10-19 20:27:38', '2023-10-19 20:35:08'),
(117, 'App\\Models\\User', 4, 'API TOKEN', '452822755f799fbec1f6343be6533171984135a5360f5cc41ccf76160f468c68', '[\"*\"]', '2023-10-22 09:22:37', '2023-10-22 07:44:59', '2023-10-22 09:22:37'),
(118, 'App\\Models\\User', 3, 'admin@suparadmin.com', '7b81bd6fa057f0eb40ddae798d22b02a8e7c4fd8f763a6ff1cd42eb81c73acbb', '[\"*\"]', '2023-10-23 05:23:44', '2023-10-22 09:03:47', '2023-10-23 05:23:44'),
(119, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '5e79c0911fb514c0469c644effaad1ee3532d57ef9730eb8f51dd26da308b52d', '[\"*\"]', '2023-10-22 09:57:44', '2023-10-22 09:56:04', '2023-10-22 09:57:44'),
(120, 'App\\Models\\User', 1, 'nashita.iftekhar@webable.digital', '8d2c84ae190b651e6f3dc7d4acb8e3f2c489aacf047b094b0d4b25fc852ecd6d', '[\"*\"]', NULL, '2023-10-22 09:56:04', '2023-10-22 09:56:04'),
(121, 'App\\Models\\User', 3, 'admin@suparadmin.com', '1c666d9f74366681a39780f4fda1225da6028c6094069da0beac44969f3db347', '[\"*\"]', NULL, '2023-10-23 13:26:53', '2023-10-23 13:26:53'),
(122, 'App\\Models\\User', 5, 'zannatul.ferdous.mim@gmail.com', '1200c72abaea0a02cda0014345ce80377070f503433010a252a65f4fa624f795', '[\"*\"]', NULL, '2023-10-23 19:52:14', '2023-10-23 19:52:14'),
(123, 'App\\Models\\User', 5, 'zannatul.ferdous.mim@gmail.com', '1a23a360254b7f451d856c27134a1c97129f8bcff3a8e2e870830d3989ea16fd', '[\"*\"]', NULL, '2023-10-23 19:52:14', '2023-10-23 19:52:14'),
(124, 'App\\Models\\User', 6, 'mdalamin.aranya@gmail.com', '8ff06b82fc3e8e09ca986c0900fa82ad37333323b7debbec51f4e8fe7fe4008e', '[\"*\"]', '2023-10-24 05:28:00', '2023-10-24 05:21:37', '2023-10-24 05:28:00'),
(125, 'App\\Models\\User', 6, 'mdalamin.aranya@gmail.com', '5ac0c45084ee68927966e415c6be1690c0a7aa6127c8a68beb27917bb271d61c', '[\"*\"]', NULL, '2023-10-24 05:21:37', '2023-10-24 05:21:37'),
(126, 'App\\Models\\User', 3, 'admin@suparadmin.com', '15e8966de0134e492025ad2594b54118d1d22658edce2e3fc1d2e4f1b4b03bcd', '[\"*\"]', '2023-10-27 05:52:26', '2023-10-27 05:52:21', '2023-10-27 05:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `pickuphubs`
--

CREATE TABLE `pickuphubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hub_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hub_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hub_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickuphubs`
--

INSERT INTO `pickuphubs` (`id`, `hub_name`, `hub_code`, `slug`, `type`, `hub_address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Salvador', '18065', 'salvador', 'store', 'Fuga Ut natus ad', 1, '2023-12-11 06:33:48', '2023-12-11 06:46:53'),
(3, 'Garrison Johns', '32519', 'garrison-johns', 'warehouse', 'Sint temporibus nequ', 0, '2023-12-11 06:42:52', '2023-12-11 06:53:01'),
(4, 'Theodore Park', '1798', 'theodore-park', 'store', 'Eos voluptates veli', 1, '2023-12-11 06:49:22', '2023-12-11 06:49:22'),
(5, 'Risa Savage', '91587', 'risa-savage', 'warehouse', 'Ab ipsum eiusmod qu', 1, '2023-12-11 06:54:48', '2023-12-11 06:54:48'),
(6, 'Maisie Marsh', '67284', 'maisie-marsh', 'store', 'Consectetur duis eiu', 1, '2023-12-11 06:55:18', '2023-12-11 06:55:18');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vat_tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` float DEFAULT 0,
  `design_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat_colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fragile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fragile_charge` double(8,4) NOT NULL DEFAULT 0.0000,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the product',
  `is_discount` tinyint(4) NOT NULL DEFAULT 0,
  `is_new` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'show in whats new',
  `has_variation` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'check variation',
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `is_new`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Tribal Flare Choker', 'tribal-flare-choker', 37, 78, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/J0400004MA1116/2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/J0400004MA1116/2.jpg', '', '', '', '', '18', '1 ', '14 ', 'cm', NULL, 99, 'J0400004MA1116', NULL, '1', 0.0000, 'Sterling silver coins have been attached to this choker that has been woven delicately with Terracotta, Rudrakha and wooden beads. The colours are relfections of natural dyes of Indigo and Madder.', 1, 0, 0, 0, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(2, 'Pansy Cotton Voil Panjabi', 'pansy-cotton-voil-panjabi', 3, 79, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010352FFS1202719/4_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010352FFS1202719/4_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010352FFS1202719/4_1.jpg', NULL, NULL, NULL, '0', '0', '0', 'cm', NULL, 0, 'K0010352FFS1202719', 'Red', '0', 0.0000, '<p>The mesmerizing shades of red complimenting in this panjabi were taken from organically grown madder successively. Block print has been used on cotton voil fabric to ensure the highest amount of easement. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.</p>', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-22 10:31:16'),
(3, 'Deutzia baby panjabi', 'deutzia-baby-panjabi', 3, 79, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010372NK10194019/5_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010372NK10194019/5_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010372NK10194019/5_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0010372NK10194019', 'Black', '0', 0.0000, 'Dark designs on a light base and comfortable fabric makes it a perfect traditional wear for your child .All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(4, 'Chiliad Kids Panjabi', 'chiliad-kids-panjabi', 3, 79, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010373NK10194019/6_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010373NK10194019/6_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010373NK10194019/6_1.jpg', '', '', '', '27', '2 ', '21 ', 'cm', NULL, 216, 'K0010373NK10194019', 'Olive', '0', 0.0000, 'Pomegranate and myrobalan have been used to bring out the olive color on this wax-printed cotton kids panjabi. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(5, 'Cistus Kids Panjabi', 'cistus-kids-panjabi', 3, 79, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010374NK10194019/7_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010374NK10194019/7_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010374NK10194019/7_2.jpg', '', '', '', '27', '2 ', '21 ', 'cm', NULL, 216, 'K0010374NK10194019', 'Pink', '0', 0.0000, 'Wax-printed pure cotton kids Panjabi that has been dipped in betelnut to extract the pink shade. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(6, 'Oboni Cotton Panjabi', 'oboni-cotton-panjabi', 3, 79, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010379NHS1204219/8_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010379NHS1204219/8_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0010379NHS1204219/8_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0010379NHS1204219', 'Blue,Black', '0', 0.0000, 'The shiny blue in this Panjabi is taken from an enticing by indigo. Traditional tie-dyeing technique has been used on cotton and black kashmi print to create detailed intricacies. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(7, 'Mantecoso Baby Cotton Fotua', 'mantecoso-baby-cotton-fotua', 3, 80, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0020034RG11194619/9_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0020034RG11194619/9_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0020034RG11194619/9_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0020034RG11194619', 'Golden', '0', 0.0000, 'Myrabalan is used to produce the buttery golden color seen in this fotua. Wax print has been used to create the beautiful spiral imprints on a cotton fabric, which secures the smoothest touch to the skin.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(8, 'Acacias baby fatua', 'acacias-baby-fatua', 3, 80, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0020036RG11194519/10_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0020036RG11194519/10_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0020036RG11194519/10_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0020036RG11194519', 'Red,Gray', '0', 0.0000, 'The simple and monotone combination of this outfit make it a unique traditional wear.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(9, 'Dogma kids Shirt', 'dogma-kids-shirt', 3, 81, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030067IJ02190719/12_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030067IJ02190719/12_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030067IJ02190719/12_2.jpg', '', '', '', '27', '2 ', '21 ', 'cm', NULL, 216, 'K0030067IJ02190719', 'Red', '0', 0.0000, 'Handmade block-printed creates the beauty in this pure cotton kids Shirt with a rich appearance and with the application of Natural red and black come from the natural essence of madder and black kashmi. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(10, 'Broom baby shirt', 'broom-baby-shirt', 3, 81, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030072IJ03191319/13_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030072IJ03191319/13_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030072IJ03191319/13_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0030072IJ03191319', 'Brown', '0', 0.0000, 'Light designs on a dark base and comfortable fabric makes it a perfect traditional wear for your child.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(11, 'Decumaria baby shirt', 'decumaria-baby-shirt', 3, 81, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030073IJ03191319/14_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030073IJ03191319/14_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030073IJ03191319/14_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0030073IJ03191319', 'Beige', '0', 0.0000, '\n\\nMonotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(12, 'Dandelion baby shirt', 'dandelion-baby-shirt', 3, 81, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030085IJ11194419/15_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030085IJ11194419/15_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030085IJ11194419/15_1.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0030085IJ11194419', 'Teal', '0', 0.0000, 'Light designs on a dark base and comfortable fabric makes it a perfect wear for your child.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(13, 'Pansay Cotton Shirt', 'pansay-cotton-shirt', 3, 81, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030086IJ11194319/16_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030086IJ11194319/16_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0030086IJ11194319/16_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0030086IJ11194319', 'Golden', '0', 0.0000, 'The segment of characteristic color myrobalan shows brilliant golden tone in this wax-printed cotton shirt. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(14, 'Estrella Baby Cotton Voil Salwar Kameez', 'estrella-baby-cotton-voil-salwar-kameez', 3, 82, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050470SF04190819/17_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050470SF04190819/17_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050470SF04190819/17_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0050470SF04190819', 'Brown,Pink', '0', 0.0000, 'The mesmerizing combination of the pink from betelnuts and brown from catechu gives the three pieces a subtle touch of elegance, rarely found anywhere else. Wax print has been used on cotton fabric to create the unique designs, while ensuring the highest easement.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:24', NULL, '2023-10-19 10:49:24'),
(15, 'Meghmala Linen Suit', 'meghmala-linen-suit', 3, 82, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050500SFE1204619/18_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050500SFE1204619/18_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050500SFE1204619/18_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0050500SFE1204619', 'Blue', '0', 0.0000, 'The blue color in this salwar kameez is extracted from handpicked indigo. The Wax print has been utilized on linen fabric to create expuisite plans. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(16, 'Billergia baby suits', 'billergia-baby-suits', 3, 82, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050501IJ12194519/19_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050501IJ12194519/19_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050501IJ12194519/19_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0050501IJ12194519', 'Pink', '0', 0.0000, 'Similar tones and minimal designs of this dress greatly compliment each other. Comfortable fabric provides soothing touch for your baby\'s skin.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(17, 'Aconite cotton baby suits', 'aconite-cotton-baby-suits', 3, 82, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050504FF12194819/20_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050504FF12194819/20_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050504FF12194819/20_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0050504FF12194819', 'Teal,Pink', '0', 0.0000, 'Dual colors and minimal motifs are greatly paired with each other to create the perfect traditional piece for your baby. Cotton fabric used also provides good breathability making it good to wear all year round.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(18, 'Blazing star baby suits', 'blazing-star-baby-suits', 3, 82, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050505FF12190620/21_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050505FF12190620/21_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0050505FF12190620/21_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0050505FF12190620', 'Blue,Gray', '0', 0.0000, 'Tones of blue and gray represent the rainclouds in the sky. Comfortable fabric and stunning designs make it wearable all year round.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(19, 'Midnight Slayer Baby Silk Jacket', 'midnight-slayer-baby-silk-jacket', 3, 83, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0170027NK09193719/22_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0170027NK09193719/22_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0170027NK09193719/22_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0170027NK09193719', NULL, '0', 0.0000, 'The muddy brown colors in this jacket is taken from a beuguiling brew of colors extracted from pomegranate and catechu, while the olive color is taken from organically grown myrabalan. Brush print has been used on Balaka silk to produce the camouflage patterns.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(20, 'Woodland Baby Cotton Frock', 'woodland-baby-cotton-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200021IJ03191219/24_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200021IJ03191219/24_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200021IJ03191219/24_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200021IJ03191219', 'Brown', '0', 0.0000, 'The earthy tones of brown in this frock are made with colors given off by organically grown catechu. Wax print is used on cotton to produce the treelike patterns and also ensuring the softest touch to the baby skin.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(21, 'Ellipse Cotton Baby Frock', 'ellipse-cotton-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200026SF03191319/25_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200026SF03191319/25_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200026SF03191319/25_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200026SF03191319', 'Red,Black', '0', 0.0000, 'The mix of red and black color in this enthusiastic baby frock is taken from the best-handpicked madder. Black kashmi print has been utilized on cotton material to create detailed intricacies. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(22, 'Oval Baby Frock', 'oval-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200028SF04191519/26_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200028SF04191519/26_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200028SF04191519/26_2.jpgg', '', '', '', '25', '3 ', '24 ', 'cm', NULL, 360, 'K0200028SF04191519', 'Blue,Black', '0', 0.0000, 'The magnificent color in this baby Frock/dress is made from hand-plucked Indigo which is resembles blue shades. Wax print has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(23, 'Summer Fruits Baby Cotton Frock', 'summer-fruits-baby-cotton-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200029IJ04191519/27_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200029IJ04191519/27_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200029IJ04191519/27_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200029IJ04191519', 'Off-White', '0', 0.0000, 'The off white color of this frock gives out a vibe of everything pure and peaceful. This frock has been crafted with cotton material to ensure the highest comfort for your baby.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(24, 'Tierra Baby Cotton Voil Frock', 'tierra-baby-cotton-voil-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200035FF07192819/28_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200035FF07192819/28_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200035FF07192819/28_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200035FF07192819', 'Brown', '0', 0.0000, 'This graceful baby frock has been dyed with the purest brown extracted from organically grown catechu. Plain dye technique has been used to immerse the color on a cotton material to provide the utmost comfort.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(25, 'Anahi Baby Frock', 'anahi-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200037SF07192819/29_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200037SF07192819/29_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200037SF07192819/29_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200037SF07192819', 'Brown', '0', 0.0000, 'The eye-catching brown color of this frock is exclusively taken from organically grown catechu. The mesmerizing designs are made with wax print on cotton fabric, providing the best of both easement and beauty.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(26, 'Espumosa Baby Cotton Voil Frock', 'espumosa-baby-cotton-voil-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200044SF07193219/30_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200044SF07193219/30_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200044SF07193219/30_1.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200044SF07193219', 'Blue', '0', 0.0000, 'The enchanting shades of blue in this frock are all extracted from organically grown indigo. Wax print has been used on cotton fabric to make the captivating imprints and also securing the most easement.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(27, 'Avro Cotton Baby Frock', 'avro-cotton-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200046SF07193119/31_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200046SF07193119/31_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200046SF07193119/31_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200046SF07193119', 'Olive', '0', 0.0000, 'The magnificent color in this baby forck is made from handplucked promegranate and myrabalan which is resemble of olive. traditional kantha stithc has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(28, 'Kadambini Cotton Frock', 'kadambini-cotton-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200049FF07193119/32_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200049FF07193119/32_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200049FF07193119/32_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200049FF07193119', 'Blue', '0', 0.0000, 'The different shades of a heavenly blue in this baby frock are all extracted from organic indigo. Wax print has been used over cotton fabric to produce the cloudy vibrance. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(29, 'Kalpis Baby Frock', 'kalpis-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200050FF07193119/33_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200050FF07193119/33_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200050FF07193119/33_2.jpg', '', '', '', '25', '1 ', '24 ', 'cm', NULL, 360, 'K0200050FF07193119', 'Pink', '0', 0.0000, 'The sweet color in this baby forck/dress is made from hand-plucked batelnut which is resembles pink tone. Traditional wax print has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(30, 'Alyssa Cotton Baby Frock', 'alyssa-cotton-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200053IJ08193319/34_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200053IJ08193319/34_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200053IJ08193319/34_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200053IJ08193319', 'Blue', '0', 0.0000, 'Indigo is used to produce the blue color seen in this frock. Wax-print is used beautifully on a cotton fabric, which secures the smoothest touch to the skin. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(31, 'Peach Vibes Baby Silk Kantha Frock', 'peach-vibes-baby-silk-kantha-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200056SF11194219/35_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200056SF11194219/35_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0200056SF11194219/35_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0200056SF11194219', 'Red', '0', 0.0000, 'The soothing red color seen in this frock is extracted from organically grown madder. Kanthastitch hasbeen used on allover dyed silk to give a slight touch of the Bengali traditions.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(32, 'Blue eyed grass frock', 'blue-eyed-grass-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K021041NKE1181918/11_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K021041NKE1181918/11_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K021041NKE1181918/11_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K021041NKE1181918', 'Beige', '0', 0.0000, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(33, 'Freesia baby frock', 'freesia-baby-frock', 3, 71, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0530002IJ12194619/36_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0530002IJ12194619/36_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0530002IJ12194619/36_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0530002IJ12194619', 'Gray', '0', 0.0000, 'The simple designs of this outfit make it a goood wear for your little one.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(34, 'Cosmo baby frock', 'cosmo-baby-frock', 3, 70, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540001SF04193119/37_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540001SF04193119/37_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540001SF04193119/37_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540001SF04193119/37_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540001SF04193119/37_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0540001SF04193119', 'Blue', '0', 0.0000, 'This dual color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(35, 'Mimosa baby frock', 'mimosa-baby-frock', 3, 71, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540003SF07193119/39_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540003SF07193119/39_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540003SF07193119/39_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540003SF07193119/39_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540003SF07193119/39_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0540003SF07193119', 'Brown', '0', 0.0000, 'This dual color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(36, 'Pansies baby frock', 'pansies-baby-frock', 3, 71, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540004IJ07193119/40_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540004IJ07193119/40_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540004IJ07193119/40_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540004IJ07193119/40_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0540004IJ07193119/40_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'K0540004IJ07193119', NULL, '0', 0.0000, 'This color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(37, 'Space Yonder Cotton Panjabi', 'space-yonder-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010164AR0817/42_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010164AR0817/42_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010164AR0817/42_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010164AR0817/42_3.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010164AR0817', 'Teal,Black', '0', 0.0000, 'Teal and Black coloured Cotton Panjabi dyed from Indigo, Myrabalan and Kashmi. A layer of rich detail has been added by Block-printed designs.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(38, 'Spinel Cotton Voil Panjabi', 'spinel-cotton-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010275SMA08182218/43_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010275SMA08182218/43_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010275SMA08182218/43_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010275SMA08182218/43_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010275SMA08182218/43_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010275SMA08182218', 'Red', '0', 0.0000, 'The red shade on this block printed voil cotton Panjabi creates a festive look.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(39, 'Cadbury Cotton Panjabi', 'cadbury-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010278RGE2182218/44_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010278RGE2182218/44_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010278RGE2182218/44_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010278RGE2182218/44_3.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010278RGE2182218', 'Brown', '0', 0.0000, 'Catechu is the natural dye ingredient which is used on this brown cotton Panjabi. It has been furnished with a shibori plain dyed.\n\\n\n\\nAll Aranya products are handmade, using natural fibres and materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(40, 'Jolpaiguri Cotton Panjabi', 'jolpaiguri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010289MA08181119/45_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010289MA08181119/45_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010289MA08181119/45_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010289MA08181119/45_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010289MA08181119/45_4.jpg', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010289MA08181119', 'Olive,Golden', '0', 0.0000, 'Pomegranate  ; Myrabalan are a few natural dye ingredients which were applied through wax resist  ; plain dyed to achieve olive  ; golden textures on this cotton Panjabi.\n\\n\n\\nAll Aranya products are handmade, using natural fibres and materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(41, 'Juan Mens Panjabi', 'juan-mens-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010295RG0718/46.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010295RG0718/46.jpg', '', '', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010295RG0718', 'Brown', '0', 0.0000, 'The eye-catching brown seen in this panjabi is extracted from handpicked catechu. The elegant motifs are made using pipe tie dye on cotton fabric, providing the highest comfort.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(42, 'Cherubic Cotton Voil Slim Fit Panjabi', 'cherubic-cotton-voil-slim-fit-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010316RGS1193018/47_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010316RGS1193018/47_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010316RGS1193018/47_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010316RGS1193018/47_3.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010316RGS1193018', 'Red', '0', 0.0000, 'The calming red color in this panjabi is extracted from organically grown madder, and the color is printed traditionally on cotton voil fabric, which ensures the utmost comfort in the scorching heat of summer.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(43, 'Twilight Eri Cotton Panjabi', 'twilight-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010338IJE1191519/48_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010338IJE1191519/48_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010338IJE1191519/48_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010338IJE1191519/48_1.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010338IJE1191519', 'Red,Gray', '0', 0.0000, 'Wax printed design has been outlined on this Enri cotton Panjabi. Madder & Myrabalan were used to flourish it\'s Red & Gray Colors.\n\\nEvery Aranya product is made from natural materials using craft techniques, Align with in a fair trade frame work.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(44, 'Teakwood Eri Cotton Panjabi', 'teakwood-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010342FF04191819/49_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010342FF04191819/49_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010342FF04191819/49_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010342FF04191819/49_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010342FF04191819/49_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010342FF04191819', 'Brown,Beige', '0', 0.0000, 'The natural woddem vibe is the individuallity of this panjabi which is created by natural dye and kantha stitch work.All Aranya products are handmade, using natural materials, within a fair trade framework. .', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(45, 'Nandan Eri Silk Kantha Panjabi', 'nandan-eri-silk-kantha-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010343IJ05191819/50_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010343IJ05191819/50_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010343IJ05191819/50_2.jpg', '', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010343IJ05191819', 'Blue,Gray', '0', 0.0000, 'The traditional way of dying Indigo and myrabalan is used to resemble the blue and gray color in this endi silk panjabi. Kantha stitch has been used on the placket to give a touch of elegance.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(46, 'Begonia Eri Cotton Panjabi', 'begonia-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194719/51_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194719/51_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194719/51_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194719/51_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194719/51_4.jpg', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010344MA05194719', 'Red', '0', 0.0000, 'A balance of madder were used to bring out the Red colour . This Enri cotton panjabi was designed with plain dye technique to perish its natural outlook.\n\\n\n\\nUsing natural materials, Full hand-made Aranya\'s products are align within fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(47, 'Empyrean Cotton Panjabi', 'empyrean-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194819/52_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194819/52_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194819/52_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010344MA05194819/52_3.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010344MA05194819', 'Brown,Black', '0', 0.0000, 'Indigo is the primary ingredient for colouring this Cotton Pintuck-printed Panjabi in Blue hue.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(48, 'Alder Eri Cotton Panjabi', 'alder-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010348FF06194819/53_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010348FF06194819/53_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010348FF06194819/53_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010348FF06194819/53_2.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010348FF06194819', 'Olive', '0', 0.0000, 'Wax printed design has been outlined on this enri cotton Panjabi. Pomegranate & Myrabalan were used to flourish it\'s olive Colors.\n\\nEvery Aranya product is made from natural materials using craft techniques, Align with in a fair trade frame work.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(49, 'Sibyr Eri Silk Panjabi', 'sibyr-eri-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010354SF07192719/54_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010354SF07192719/54_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010354SF07192719/54_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010354SF07192719/54_3.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010354SF07192719', 'Beige,Black', '0', 0.0000, 'Block printed authentic silk panjabi, that has been colored with sagupast for the dark shade. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(50, 'Comfy Eri Cotton Panjabi', 'comfy-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010356SF07193219/55_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010356SF07193219/55_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010356SF07193219/55_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010356SF07193219/55_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010356SF07193219/55_4.jpg', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010356SF07193219', 'Brown', '0', 0.0000, 'Catechu has been used to derive brown colour on this Endi Cotton Panjabi.TieDye technique was used to amplify it\'s bold design.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(51, 'Mellow Viscose Panjabi', 'mellow-viscose-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010359IJS1203619/56_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010359IJS1203619/56_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010359IJS1203619/56_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010359IJS1203619/56_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010359IJS1203619/56_4.jpg', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010359IJS1203619', 'Golden', '0', 0.0000, 'Classic viscose fabric Panjabi that has been blocked wax print for the exquisite designs and naturally dyed with myrobalan for the brilliant golden tones. All Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(52, 'Panjabi', 'panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010365SRS1204019/58_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010365SRS1204019/58_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010365SRS1204019/58_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010365SRS1204019/58_3.jpg', NULL, NULL, '0', '0', '0', 'cm', NULL, 300, 'M0010365SRS1204019', 'Blue,Gray', '0', 0.0000, '<p>Classic panjabi</p>', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-23 08:24:16'),
(53, 'Brown Fantasia Eri Cotton Panjabi', 'brown-fantasia-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010367IJS1203919/59_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010367IJS1203919/59_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010367IJS1203919/59_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010367IJS1203919/59_3.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010367IJS1203919', 'Brown', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(54, 'Aria Eri Cotton Panjabi', 'aria-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010383IJE1204419/60_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010383IJE1204419/60_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010383IJE1204419/60_1.jpg', '', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M0010383IJE1204419', 'Golden', '0', 0.0000, 'This Panjabi gets its exclusive golden color from a mixture of colors given off by myrabalan. Karchupi has been applied on the neck with plain dye on eri cotton fabric. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(55, 'Rhodonite cotton panjabi', 'rhodonite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010393RG02200820/61_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010393RG02200820/61_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010393RG02200820/61_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010393RG02200820/61_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010393RG02200820/61_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010393RG02200820', 'Brown', '0', 0.0000, 'The minimalistic design and earthy tones of this panjabi are what make it different from the others. Linen fabric is used to provide the most comfort, so you can get the best of both worlds.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(56, 'Bornite cotton panjabi', 'bornite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010395RG02200720/62_4.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010395RG02200720/62_4.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010395RG02200720/62_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010395RG02200720/62_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010395RG02200720/62_2.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010395RG02200720', 'Blue,Golden', '0', 0.0000, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(57, 'Aciano Cotton Panjabi', 'aciano-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010396RG02200920/63_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010396RG02200920/63_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010396RG02200920/63_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010396RG02200920/63_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010396RG02200920/63_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010396RG02200920', 'Blue,Gray', '0', 0.0000, '0', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(58, 'Sodalite voil panjabi', 'sodalite-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010401RGS1203821/64_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010401RGS1203821/64_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010401RGS1203821/64_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010401RGS1203821/64_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010401RGS1203821/64_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010401RGS1203821', 'Blue,Gray', '0', 0.0000, 'The hues of the blue & grey represented by the enchanting blue color in this panjabi is extracted from natural ingredients. Wax print has been used on cotton material to produce the beautiful imprints that resemble very much to the clouds.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework. ', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(59, 'Kyanite cotton Voil panjabi', 'kyanite-cotton-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010429MCE32211122/65_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010429MCE32211122/65_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010429MCE32211122/65_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010429MCE32211122/65_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010429MCE32211122/65_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010429MCE32211122', 'Teal', '0', 0.0000, 'The mysterious TEAL color in this panjabi is cultivated from the finest organic elements. Wax has been used to embed the gorgeous teal color on cotton panjabi.\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `is_new`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(60, 'Ussingite cotton panjabi', 'ussingite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010430NKE5220720/66_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010430NKE5220720/66_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010430NKE5220720/66_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010430NKE5220720/66_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010430NKE5220720/66_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010430NKE5220720', 'Brown', '0', 0.0000, 'The match of monochrome cotton fabric and stunning motifs are sure to make heads turn. Wear this stunning panjabi to any event and you\'re bound to be the eye candy.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(61, 'Cuprite cotton panjabi', 'cuprite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010431NKE5224619/67_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010431NKE5224619/67_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010431NKE5224619/67_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010431NKE5224619/67_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010431NKE5224619/67_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010431NKE5224619', 'Brown,Manjit', '0', 0.0000, 'This mesmerizing panjabi is not only the perfect combination of color and designs, but the cotton fabric also makes it the most eligible choice for any occasion.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(62, 'Almandine cotton panjabi', 'almandine-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010433NKE5221022/68_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010433NKE5221022/68_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010433NKE5221022/68_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010433NKE5221022/68_4.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0010433NKE5221022/68_3.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0010433NKE5221022', 'Grey,Manjit', '0', 0.0000, 'This elegant cotton panjabi may be the perfect fit for any traditional occasion. Designs of white and brown are bound to make heads turn.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(63, 'Brown Rapture Silk Panjabi', 'brown-rapture-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M001065MAS117/41_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M001065MAS117/41_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M001065MAS117/41_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M001065MAS117/41_2.jpg', '', '', '31', '2 ', '26 ', 'cm', NULL, 255, 'M001065MAS117', 'Brown', '0', 0.0000, 'Wax resistant dye on this Eri SIlk creates a layer of vivid designs on this Panjabi. Indigo and Myrabalan were used to bring out the Teal hue.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(64, 'Duman Eri Silk Fatua', 'duman-eri-silk-fatua', 2, 16, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0020033NH09193519/69_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0020033NH09193519/69_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0020033NH09193519/69_2.jpg', '', '', '', '26', '1 ', '22 ', 'cm', NULL, 114, 'M0020033NH09193519', 'Golden', '0', 0.0000, 'The ravishing shade of golden in this silk fatua is extracted from handpicked myrabalan. The color is printed on endi silk to produce the gorgeous shades.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(65, 'Bletilla Bomber Jacket', 'bletilla-bomber-jacket', 2, 18, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0170019SR08193419/70_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0170019SR08193419/70_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0170019SR08193419/70_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0170019SR08193419/70_3.jpg', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'M0170019SR08193419', 'Olive', '0', 0.0000, 'Pomegranate  ; Myrabalan has been used to derive olive colour on this bomber jacket. Wax print technique was used to amplify it\'s different looks.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(66, 'Lattice Cotton Vest', 'lattice-cotton-vest', 2, 14, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0340001SR08193419/71_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0340001SR08193419/71_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0340001SR08193419/71_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0340001SR08193419/71_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 437, 'M0340001SR08193419', 'Black', '0', 0.0000, 'Wax printed design has been outlined on this pure Cotton vest, while naturally dyeing with khasmi has flourished it\'s black colour.\n\\n\n\\nUsing natural materials, full handmade Aranya\'s products are align within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(67, 'Brown Rebel T', 'brown-rebel-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920001NKE118/72_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920001NKE118/72_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920001NKE118/72_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920001NKE118/72_3.jpg', '', '', '36', '2 ', '28 ', 'cm', NULL, 302, 'M0920001NKE118', 'Brown', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(68, 'Blue Serge Cotton T', 'blue-serge-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920002NKE118/73_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920002NKE118/73_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920002NKE118/73_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920002NKE118/73_3.jpg', '', '', '36', '2 ', '28 ', 'cm', NULL, 302, 'M0920002NKE118', 'Blue', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(69, 'Aether Cotton T', 'aether-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920005NKE118/74_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920005NKE118/74_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920005NKE118/74_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920005NKE118/74_3.jpg', '', '', '36', '2 ', '28 ', 'cm', NULL, 302, 'M0920005NKE118', 'Blue', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:25', NULL, '2023-10-19 10:49:25'),
(70, 'Turquoise Cotton T', 'turquoise-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920009NH12194619/75_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920009NH12194619/75_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920009NH12194619/75_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920009NH12194619/75_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920009NH12194619/75_4.jpg', '', '36', '2 ', '28 ', 'cm', NULL, 302, 'M0920009NH12194619', 'Blue,Brown', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(71, 'Rhapsody knit cotton T', 'rhapsody-knit-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920010NH12194519/76_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920010NH12194519/76_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920010NH12194519/76_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920010NH12194519/76_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/M0920010NH12194519/76_4.jpg', '', '36', '2 ', '28 ', 'cm', NULL, 302, 'M0920010NH12194519', 'Golden', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(72, 'Cremon Panjabi', 'cremon-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA010BA04E123INHC0623/188.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA010BA04E123INHC0623/188.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA010BA04E123INHC0623/189.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA010BA04E123INHC0623/190.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA010BA04E123INHC0623/191.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA010BA04E123INHC0623', 'Blue,Pink', '0', 0.0000, 'This Wax Printed cotton panjabi is perfect to carry in any occation. Polka dots are the perfect accessory for no reason,the Color of this Panjabi dyed from natural fibres and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(73, 'Willow Cotton Panjabi', 'willow-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA012BA04E123INHC0623/2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA012BA04E123INHC0623/2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA012BA04E123INHC0623/1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA012BA04E123INHC0623/3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA012BA04E123INHC0623/4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA012BA04E123INHC0623', 'Olive', '0', 0.0000, 'This cotton panjabi brings in the hues of olive from nature. The process of wax unveils the unique designs of this panjabi.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(74, 'Valerian Cotton Panjabi', 'valerian-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA013BA04B23INHC0623/17.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA013BA04B23INHC0623/17.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA013BA04B23INHC0623/18.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA013BA04B23INHC0623/19.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA013BA04B23INHC0623/20.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA013BA04B23INHC0623', 'Red,Gray', '0', 0.0000, 'you can wear this cotton made naturally dyed simply handsome Panjabi on any occasion confidently', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(75, 'Rapa Panjabi', 'rapa-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA014BA04E123INHC0623/164.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA014BA04E123INHC0623/164.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA014BA04E123INHC0623/165.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA014BA04E123INHC0623/166.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA014BA04E123INHC0623/167.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA014BA04E123INHC0623', 'Olive', '0', 0.0000, 'Wax printed design has been outlined on this cotton Panjabi.The mesmerizing olive color on this cotton panjabi was drawn out. Wax technique is used to embed the color into it, providing you with the best of beauty and relaxation.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(76, 'Andalusite Panjabi', 'andalusite-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA016MC04B23INHC0623/196.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA016MC04B23INHC0623/196.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA016MC04B23INHC0623/197.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA016MC04B23INHC0623/198.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA016MC04B23INHC0623/199.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA016MC04B23INHC0623', 'Brown', '0', 0.0000, 'Wax-printed beautiful motifs are designed in cotton fabrics in a such perfect way. The Color of this Panjabi dyed from natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(77, 'Malachite Panjabi', 'malachite-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA017BA04B23INHC0623/192.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA017BA04B23INHC0623/192.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA017BA04B23INHC0623/193.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA017BA04B23INHC0623/194.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA017BA04B23INHC0623/195.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA017BA04B23INHC0623', 'Teal', '0', 0.0000, 'spatial form is nicely suited for menâ€™s clothes,This Wax Printed cotton panjabi is comfortable to carry in any occation. The Color of this Panjabi dyed from natural fibres and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(78, 'Hydrangea Panjabi', 'hydrangea-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA018MC04E123INHES0623/176.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA018MC04E123INHES0623/176.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA018MC04E123INHES0623/177.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA018MC04E123INHES0623/178.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA018MC04E123INHES0623/179.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA018MC04E123INHES0623', 'Blue', '0', 0.0000, 'The stunning shades of indigo in this stunning panjabi is extracted from natural element. Lilen tops pink color to add the subtle touches of elegance.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(79, 'Tourmaline Panjabi', 'tourmaline-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA019BA04E123INHK0623/184.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA019BA04E123INHK0623/184.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA019BA04E123INHK0623/185.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA019BA04E123INHK0623/186.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA019BA04E123INHK0623/187.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA019BA04E123INHK0623', NULL, '0', 0.0000, 'Wax printed design has been outlined on this khadi Panjabi, while naturally dyeing with blue has flourished it\'s vibrant colours. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(80, 'Freesia Cotton Panjabi', 'freesia-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA022BABINHC0823/13.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA022BABINHC0823/13.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA022BABINHC0823/14.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA022BABINHC0823/15.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA022BABINHC0823/16.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA022BABINHC0823', 'Red,Gray', '0', 0.0000, 'This summer you can wear this comfortable soft cotton made naturally dyed simply handsome Panjabi in any day. ', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(81, 'Peepa Cotton Panjabil', 'peepa-cotton-panjabil', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA023BABINHC0823/9.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA023BABINHC0823/9.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA023BABINHC0823/10.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA023BABINHC0823/11.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA023BABINHC0823/12.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA023BABINHC0823', 'Olive , Red', '0', 0.0000, 'The natural dyed wax printed cotton panjabi is perfect for any occasion. All Aranya products are handmade, using natural materials, within a fair trade framework. ', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(82, 'Moonlight Cotton Panjabi', 'moonlight-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA028BAE1INHC1023/21.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA028BAE1INHC1023/21.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA028BAE1INHC1023/22.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA028BAE1INHC1023/23.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA028BAE1INHC1023/24.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA028BAE1INHC1023', 'Blue,Golden', '0', 0.0000, 'The minimalistic design and of this panjabi are what make it different from the others.Cotton fabric is used to provide the most comfort, so you can get the best of both worlds.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(83, 'Chiastolite Panjabi', 'chiastolite-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA029BABINHV1023/180.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA029BABINHV1023/180.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA029BABINHV1023/181.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA029BABINHV1023/182.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA029BABINHV1023/183.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA029BABINHV1023', 'Brown', '0', 0.0000, 'This brown panjabi is suitable for any traditional occasion of your choice. Gentle cotton fabric makes it available to wear all year round!\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(84, 'Pollen Cotton Panjabi', 'pollen-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA030BABINHC1223/1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA030BABINHC1223/1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA030BABINHC1223/2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA030BABINHC1223/3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA030BABINHC1223/4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA030BABINHC1223', 'Blue,Red', '0', 0.0000, 'With the impulsive color of red and blue, this cotton panjabi comes from the essence of nature. Wax-resistant dye was used to enhance the appearance with exclusive designs.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(85, 'Pale Pink cotton panjabi', 'pale-pink-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA033SKE2INHV2123/145.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA033SKE2INHV2123/145.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA033SKE2INHV2123/146.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA033SKE2INHV2123/147.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA033SKE2INHV2123/148.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA033SKE2INHV2123', 'Pink', '0', 0.0000, 'The eye catching pale pink color on this cotton panjabi was drawn out from pink and white. Cotton fabric to embed the mesmerizing color into it, providing you with the best of beauty and relaxation.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(86, 'Steel Grey cotton panjabi', 'steel-grey-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA034SKE2INHV2123/125.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA034SKE2INHV2123/125.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA034SKE2INHV2123/126.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA034SKE2INHV2123/127.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA034SKE2INHV2123/128.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA034SKE2INHV2123', 'Gray', '0', 0.0000, 'one toned color on this cotton Panjabi, while naturally dyeing with catechu which flourished it\'s dark colours fot this panjabi elegent look\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(87, 'Ebony cotton panjabi', 'ebony-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA035SKE2INHV2123/129.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA035SKE2INHV2123/129.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA035SKE2INHV2123/130.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA035SKE2INHV2123/131.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA035SKE2INHV2123/132.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA035SKE2INHV2123', 'Blue', '0', 0.0000, 'one toned color on this cotton Panjabi, while naturally dyeing with indigo which flourished it\'s dark colours fot this panjabi elegent look\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(88, 'Firebrick cotton panjabi', 'firebrick-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA036SKE2INHV2123/133.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA036SKE2INHV2123/133.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA036SKE2INHV2123/134.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA036SKE2INHV2123/135.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MPA036SKE2INHV2123/136.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MPA036SKE2INHV2123', 'Brown', '0', 0.0000, 'one toned color on this cotton Panjabi, while naturally dyeing with catechu which flourished it\'s dark colours fot this panjabi elegent look\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(89, 'Alexandrite Mens Resort Shirt', 'alexandrite-mens-resort-shirt', 2, 17, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH007BARINHL1923/153.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH007BARINHL1923/153.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH007BARINHL1923/154.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH007BARINHL1923/155.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH007BARINHL1923/156.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MSH007BARINHL1923', 'Olive,Golden', '0', 0.0000, 'The eye catching natural olive color on this viscous shirt was drawn out from olive . Viscouse fabric to embed the mesmerizing color into it, providing you with the best of beauty and relaxation.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(90, 'Amorpha Mens Resort Shirt', 'amorpha-mens-resort-shirt', 2, 17, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH008BARINHL1923/149.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH008BARINHL1923/149.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH008BARINHL1923/150.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH008BARINHL1923/151.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH008BARINHL1923/152.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MSH008BARINHL1923', 'Teal,Golden', '0', 0.0000, 'This Viscouse Shirt brings in the hues of teal from nature. The process of tie-dye unveils the unique designs of this shirt.\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(91, 'Astrantia Mens Resort Shirt', 'astrantia-mens-resort-shirt', 2, 17, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH009BARINHL1923/141.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH009BARINHL1923/141.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH009BARINHL1923/142.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH009BARINHL1923/143.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH009BARINHL1923/144.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MSH009BARINHL1923', 'Olive', '0', 0.0000, 'The eye catching grey color on this viscous shirt was drawn out from grey . Viscouse fabric to embed the mesmerizing color into it, providing you with the best of beauty and relaxation.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(92, 'Pumic Mens Resort Shirt', 'pumic-mens-resort-shirt', 2, 17, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH010BARINHL1923/137.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH010BARINHL1923/137.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH010BARINHL1923/138.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH010BARINHL1923/139.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH010BARINHL1923/140.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MSH010BARINHL1923', 'Gray', '0', 0.0000, 'The eye catching grey color on this viscous shirt was drawn out from grey . Viscouse fabric to embed the mesmerizing color into it, providing you with the best of beauty and relaxation.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(93, 'Bouvardia Mens Resort Shirt', 'bouvardia-mens-resort-shirt', 2, 17, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH011BARINHL1923/157.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH011BARINHL1923/157.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH011BARINHL1923/158.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH011BARINHL1923/159.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/MSH011BARINHL1923/160.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'MSH011BARINHL1923', 'Navy', '0', 0.0000, 'This Viscouse Shirt brings in the hues of black from nature. The process of tie-dye unveils the unique designs of this shirt.\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(94, 'Endi Half Silk Anchol Print Saree', 'endi-half-silk-anchol-print-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041171RGE1180920/79_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041171RGE1180920/79_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041171RGE1180920/79_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041171RGE1180920/79_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041171RGE1180920/79_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0041171RGE1180920', 'Red,Brown', '0', 0.0000, NULL, 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(95, 'Golden Odyssey Eri Cotton Saree', 'golden-odyssey-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041315RG08183018/80_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041315RG08183018/80_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041315RG08183018/80_2.jpg', '', '', '', '30', '6 ', '22 ', 'cm', NULL, 792, 'W0041315RG08183018', 'Olive,Golden', '0', 0.0000, 'Wax printed eri cotton saree that comes in shades of olive and golden derived from the natural pomegranate and myrabalan.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(96, 'Salvia Endi cotton saree', 'salvia-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041554IJ01203521/81_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041554IJ01203521/81_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041554IJ01203521/81_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041554IJ01203521/81_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041554IJ01203521/81_4.jpg', '', '23', '5 ', '27 ', 'cm', NULL, 419, 'W0041554IJ01203521', 'Teal,Beige', '0', 0.0000, 'The natural dye of teal at paar and anchol, and beige body in the endi cotton saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(97, 'Bonica Rose Muslin Kantha Saree', 'bonica-rose-muslin-kantha-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041640RG02200720/17.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041640RG02200720/17.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041640RG02200720/18.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041640RG02200720/19.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041640RG02200720/20.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0041640RG02200720', 'White', '0', 0.0000, 'This perfect saree has been made with competence kantha work on the traditional silk fabric. The saree provides the best of comfort and gracefulness with Kantha stitch with indigo and pink at paar anchol.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(98, 'Annual vinca Kantha Drape', 'annual-vinca-kantha-drape', 2, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041654SF03204421/240.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041654SF03204421/240.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041654SF03204421/242.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041654SF03204421/243.jpg', '', '', '31', '6 ', '25 ', 'cm', NULL, 460, 'W0041654SF03204421', 'White', '0', 0.0000, 'The composition of indigo and madder color naturally dyed threads is pleasing on this Kantha saree paar, which is enormously pretty. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.\n\\n\n\\n\n\\n\n\\n\n\\n\n\\n', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(99, 'Freesia drape wear', 'freesia-drape-wear', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041655SF03204321/25.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041655SF03204321/25.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041655SF03204321/26.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041655SF03204321/27.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041655SF03204321/28.jpg', '', '31', '6 ', '27 ', 'cm', NULL, 460, 'W0041655SF03204321', 'White', '0', 0.0000, 'This snowy Kantha saree is presenting a fusion of natural colors, which is hand-stitched by using multi-color natural thread which gives it a Outstanding glance.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(100, 'Magnolia with Azure', 'magnolia-with-azure', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041657SF03204321/236.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041657SF03204321/236.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041657SF03204321/237.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041657SF03204321/238.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041657SF03204321/239.jpg', '', '31', '6 ', '25 ', 'cm', NULL, 450, 'W0041657SF03204321', 'White', '0', 0.0000, 'The preparation of indigo and naturally dyed threads is pleased on this Kantha saree paar,which is enormously pretty.\r\n\\n\r\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.\r\n\\n\r\n\\n ', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(101, 'Six', 'six', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041663SF03204421/17.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041663SF03204421/17.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041663SF03204421/18.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041663SF03204421/19.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041663SF03204421/20.jpg', '', '30', '7 ', '27 ', 'cm', NULL, 450, 'W0041663SF03204421', 'White', '0', 0.0000, NULL, 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(102, 'Lupine Cotton Kota Saree', 'lupine-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041703BAS06220722/82_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041703BAS06220722/82_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041703BAS06220722/82_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041703BAS06220722/82_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041703BAS06220722/82_4.jpg', '', '30', '5 ', '28 ', 'cm', NULL, 440, 'W0041703BAS06220722', 'Red,Gray', '0', 0.0000, 'A cotton kota saree with a red and gray wax design with great bloom inspiration for a magnificent appearance. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(103, 'Eveline Cotton Saree', 'eveline-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041704SFS06220722/83_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041704SFS06220722/83_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041704SFS06220722/83_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041704SFS06220722/83_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041704SFS06220722/83_4.jpg', '', '30', '4 ', '25 ', 'cm', NULL, 420, 'W0041704SFS06220722', 'Red , Pink', '0', 0.0000, 'Simplicity, elegance and charmness of this saree understory. Pinkish vibe and the cotton texture create a different look. All Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(104, 'Senna Cotton kota Sare', 'senna-cotton-kota-sare', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041709BAS8220922/84_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041709BAS8220922/84_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041709BAS8220922/84_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041709BAS8220922/84_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041709BAS8220922/84_4.jpg', '', '30', '3 ', '28 ', 'cm', NULL, 450, 'W0041709BAS8220922', NULL, '0', 0.0000, 'This Wax printed cotton saree was dyed using the natural ingredients to bring out the marvelous Red & golden color of the product.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(105, 'Lilac eri cotton saree', 'lilac-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041741SF05222022/85_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041741SF05222022/85_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041741SF05222022/85_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041741SF05222022/85_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041741SF05222022/85_4.jpg', '', '31', '5 ', '21 ', 'cm', NULL, 430, 'W0041741SF05222022', 'Blue,Teal', '0', 0.0000, 'cotton saree will be the perfect outfit choice in the scorching summer heat. The heavenly tones of white and blue help pose in great style too!\n\\n\n\\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(106, 'Azalea cotton saree', 'azalea-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041742BA05222022/86_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041742BA05222022/86_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041742BA05222022/86_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041742BA05222022/86_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041742BA05222022/86_4.jpg', '', '32', '3 ', '28 ', 'cm', NULL, 390, 'W0041742BA05222022', 'Pink', '0', 0.0000, 'The light colors of this beautiful cotton saree will reflect away the heat of the sun very efficiently. Cotton fabric has been used to ensure utmost comfort.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(107, 'Sapphire cotton saree', 'sapphire-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041743BA05222022/87_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041743BA05222022/87_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041743BA05222022/87_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041743BA05222022/87_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041743BA05222022/87_4.jpg', '', '32', '4 ', '28 ', 'cm', NULL, 390, 'W0041743BA05222022', 'Blue', '0', 0.0000, 'cotton saree will be the perfect outfit choice in the scorching summer heat. The heavenly tones of white and blue help pose in great style too!', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(108, 'Begonia Endi Cotton saree', 'begonia-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041748MCE25222122/88_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041748MCE25222122/88_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041748MCE25222122/88_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041748MCE25222122/88_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041748MCE25222122/88_4.jpg', '', '31', '5 ', '28 ', 'cm', NULL, 400, 'W0041748MCE25222122', 'Blue,Annatto,Manjit', '0', 0.0000, 'The earthy tones of this eri cotton saree do the best work in making you truly feel beautiful, making it the perfect wear for all of your favorite occasions.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(109, 'Clematis cotton saree', 'clematis-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041749BAE25222222/89_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041749BAE25222222/89_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041749BAE25222222/89_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041749BAE25222222/89_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041749BAE25222222/89_4.jpg', '', '32', '5 ', '28 ', 'cm', NULL, 390, 'W0041749BAE25222222', 'Blue,Annatto,Manjit', '0', 0.0000, NULL, 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(110, 'Colasia cotton kota saree', 'colasia-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041750SFE25222122/90_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041750SFE25222122/90_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041750SFE25222122/90_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041750SFE25222122/90_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041750SFE25222122/90_4.jpg', '', '30', '5 ', '21 ', 'cm', NULL, 420, 'W0041750SFE25222122', 'Navy,Gray,Annatto', '0', 0.0000, 'The contrasting tones of this saree makes both the colors stand out beautifully. With dual designs and cotton kota fabric, it\'s an eye catcher as well as comfort wear.\n\\n\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(111, 'Verbena cotton saree', 'verbena-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041753MCE26222122/91_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041753MCE26222122/91_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041753MCE26222122/91_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041753MCE26222122/91_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041753MCE26222122/91_4.jpg', '', '30', '5 ', '28 ', 'cm', NULL, 410, 'W0041753MCE26222122', 'Blue,Olive', '0', 0.0000, 'The blue and grey tones of this saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(112, 'Wisteria cotton saree', 'wisteria-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041755SFE26222122/92_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041755SFE26222122/92_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041755SFE26222122/92_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041755SFE26222122/92_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0041755SFE26222122/92_4.jpg', '', '30', '5 ', '28 ', 'cm', NULL, 400, 'W0041755SFE26222122', 'Blue,Olive', '0', 0.0000, 'The blue and black colors of this saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(113, 'Frankliana Alatamaha Balaka Silk Suits', 'frankliana-alatamaha-balaka-silk-suits', 1, 84, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050396RGE1181618/93_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050396RGE1181618/93_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050396RGE1181618/93_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050396RGE1181618/93_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050396RGE1181618/93_4.jpg', '', '29', '3 ', '24 ', 'cm', NULL, 418, 'W0050396RGE1181618', 'Brown,Beige', '0', 0.0000, 'The stunning shades of brown and beige in this stunning suit is extracted from hand-plucked catechu and raintree. Wax print is added on balaka silk to add the subtle touches of elegance. All Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(114, 'Leah Kantha Eri Silk Salwar', 'leah-kantha-eri-silk-salwar', 1, 84, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050465FFE1191519/94_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050465FFE1191519/94_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050465FFE1191519/94_2.jpg', '', '', '', '27', '3 ', '24 ', 'cm', NULL, 389, 'W0050465FFE1191519', 'Brown,Beige', '0', 0.0000, 'A delicate mixture of cateshu and raintree expressing the color brown and beige in this kantha eri silk salwar.\r\n\\n\r\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `is_new`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(115, 'Marigold eri silk suits', 'marigold-eri-silk-suits', 1, 84, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050474IJS1201919/95_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050474IJS1201919/95_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050474IJS1201919/95_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050474IJS1201919/95_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0050474IJS1201919/95_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0050474IJS1201919', 'Golden', '0', 0.0000, 'The stunning combination of white and gold is bound to make heads turn. Wear this eri silk suit to any traditional meet and you are guaranteed to be the eye candy.\r\n\\n\r\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(116, 'Mirabilis Cotton Tops', 'mirabilis-cotton-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060061RG06182418/96_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060061RG06182418/96_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060061RG06182418/96_2.jpg', '', '', '', '26', '3 ', '28 ', 'cm', NULL, 364, 'W0060061RG06182418', 'Red', '0', 0.0000, 'The stunning shades of red in this top is extracted from handplucked madder. Block print is added on cotton voil to add the subtle touches of elegance. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(117, 'Daffodil Eri Cotton Tops', 'daffodil-eri-cotton-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060096AA06193419/97_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060096AA06193419/97_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060096AA06193419/97_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060096AA06193419/97_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 364, 'W0060096AA06193419', 'Brown', '0', 0.0000, 'A balance of Catechu were used to bring out the brown colour . This Enri cotton Tops was designed with wax print technique to perish its natural outlook.\n\\nUsing natural materials, Full hand-made Aranya\'s products are align within fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(118, 'Amaryllis Lilen Women Tops', 'amaryllis-lilen-women-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060107SR08190620/98_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060107SR08190620/98_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060107SR08190620/98_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060107SR08190620/98_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060107SR08190620/98_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0060107SR08190620', 'Pink', '0', 0.0000, 'N/a', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(119, 'Myrtle Silk Kurti', 'myrtle-silk-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060111AA09193719/99_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060111AA09193719/99_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0060111AA09193719/99_2.jpg', '', '', '', '30', '2 ', '24 ', 'cm', NULL, 288, 'W0060111AA09193719', 'Olive', '0', 0.0000, 'This olive tone is a blend of natural color pomegranate and myrobalan in this asymetric tops. Wax print stripe and flower themes are used to draw out the modern fusion design. All Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(120, 'Borage Cotton orna', 'borage-cotton-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080370SME1182018/100_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080370SME1182018/100_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080370SME1182018/100_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080370SME1182018/100_3.jpg', '', '', '29', '3 ', '22 ', 'cm', NULL, 180, 'W0080370SME1182018', 'Blue', '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The cotton fabric provides comfort from the scorching heat.\n\\n\n\\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(121, 'Scabiosa endi Cotton orna', 'scabiosa-endi-cotton-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080630NK04221822/101_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080630NK04221822/101_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080630NK04221822/101_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0080630NK04221822/101_3.jpg', '', '', '30', '3 ', '19 ', 'cm', NULL, 220, 'W0080630NK04221822', 'Teal', '0', 0.0000, 'The tricky teal on this orna is taken from handpicked natural dye, and the beautiful designs are made with wax print on endi cotton material.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework. ', 1, 0, 0, 0, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(122, 'Briar Rose Top and Skirt', 'briar-rose-top-and-skirt', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0110015RG1017/102_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0110015RG1017/102_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0110015RG1017/102_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0110015RG1017', 'Brown', '0', 0.0000, 'Catechu is used to naturally dye this ensemble in a rich, milk chocolate brown, and wax-printed with floral designs on the bottom of the shirt, and the entirety of the long, flared skirt.\n\\n\n\\nAll Aranya products are naturally dyed and hand-crafted within a fair trade framework of WFTO standards.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(123, 'Butea cotton skirt', 'butea-cotton-skirt', 1, 85, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0110025FF12184318/103_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0110025FF12184318/103_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0110025FF12184318/103_2.jpg', '', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0110025FF12184318', 'Brown', '0', 0.0000, 'The heavenly tone in this skirt is taken from hand-plucked catechu and the perceptible motifs are made using wax print on cotton. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(124, 'Grizzle Bomber Jacket', 'grizzle-bomber-jacket', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170018SR08193419/104_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170018SR08193419/104_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170018SR08193419/104_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170018SR08193419/104_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 437, 'W0170018SR08193419', 'Red,Gray', '0', 0.0000, 'Pieces from nature, madder  ; myrabalan were used to dye this Cotton bomber jacket with Red  ; Gray colour. Wax print added an elegant outlook on it\'s design.\n\\n\n\\nAll Aranya\'s products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(125, 'Parsley Bomber Jacket', 'parsley-bomber-jacket', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170020SR08193319/105_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170020SR08193319/105_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170020SR08193319/105_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170020SR08193319/105_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 437, 'W0170020SR08193319', 'Red', '0', 0.0000, '0', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(126, 'Zenith Bomber Jacket', 'zenith-bomber-jacket', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170031FF09193719/106_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170031FF09193719/106_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170031FF09193719/106_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0170031FF09193719/106_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 437, 'W0170031FF09193719', 'Red', '0', 0.0000, 'Madder has been used as dyeing materials to derive Red color on this khadi jacket. Anokhi print was used to get the elegant design.\n\\n\n\\nUsing natural materials, full-hand made Aranya\'s products are align with in fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(127, 'Azalea Cotton Kimono', 'azalea-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180128NK06220720/107_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180128NK06220720/107_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180128NK06220720/107_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180128NK06220720/107_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180128NK06220720/107_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0180128NK06220720', 'Pink', '0', 0.0000, 'The soothing pink color in this gorgeous kaftan is taken from the best handpicked betelnuts. Wax print has been used on cotton material to creeate the detailed intricacies.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(128, 'Alyssum Eri Cotton Kimono', 'alyssum-eri-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180129NK07221020/108_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180129NK07221020/108_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180129NK07221020/108_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180129NK07221020/108_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180129NK07221020/108_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0180129NK07221020', 'Golden', '0', 0.0000, 'The beguiling shades of brown in this mesmerizing kimono are produced from natural element. Wax print has been used on eri cotton to produce the magnificent patterns.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(129, 'Lberis Eri Cotton Kimono', 'lberis-eri-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180130NK07221020/109_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180130NK07221020/109_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180130NK07221020/109_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180130NK07221020/109_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180130NK07221020/109_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0180130NK07221020', 'Olive', '0', 0.0000, 'The sensitive olive shade on this Eri cotton kimono comes from nature. eri cotton was utilized to upgrade the appearance with elite structure.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(130, 'Hyssop silk kimono', 'hyssop-silk-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180131NK08224619/110_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180131NK08224619/110_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180131NK08224619/110_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180131NK08224619/110_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0180131NK08224619/110_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0180131NK08224619', 'Teal', '0', 0.0000, 'Mixing the two different combinations of color and wax print in this pure silk makes this kimono a variant look.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(131, 'Brunnera linen kaftan', 'brunnera-linen-kaftan', 1, 12, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0190088NK06220520/111_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0190088NK06220520/111_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0190088NK06220520/111_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0190088NK06220520/111_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0190088NK06220520/111_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0190088NK06220520', 'Blue', '0', 0.0000, '0', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(132, 'Kantha Voil Kurti', 'kantha-voil-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210145MAE2183118/112_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210145MAE2183118/112_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210145MAE2183118/112_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210145MAE2183118/112_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210145MAE2183118/112_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0210145MAE2183118', 'Blue,Red', '0', 0.0000, 'The captivating shades of blue and red in this ravishing Kurti are produced with colors given off by organically grown cmadder and indigo. The shibori has been used on the body on cotton material to add details. The nakshi kantha work added a traditional look\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(133, 'Lantana Kurti', 'lantana-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210194FF04191819/113_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210194FF04191819/113_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210194FF04191819/113_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210194FF04191819/113_3.jpg', '', '', '30', '2 ', '24 ', 'cm', NULL, 288, 'W0210194FF04191819', NULL, '0', 0.0000, 'A balance of Madder was used to bring out the Red colour. This Enri silk Kurti was designed with wax print technique to perish its natural outlook.\n\\nUsing natural materials, Full hand-made Aranya\'s products are aligned within fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(134, 'Anthurium Blush', 'anthurium-blush', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210204SR07190823/105.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210204SR07190823/105.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210204SR07190823/106.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210204SR07190823/107.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0210204SR07190823/108.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0210204SR07190823', 'Blue,Red', '0', 0.0000, 'Plain Dyed Red & Blue silk Kurti dyed in natural color is a perfect wear for any occasionAll Aranya products are handmade, using natural materials, within a\n\\nfair trade framework. ', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(135, 'Silk shirred blouse', 'silk-shirred-blouse', 1, 74, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0300133SF04221822/114_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0300133SF04221822/114_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0300133SF04221822/114_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0300133SF04221822/114_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0300133SF04221822/114_4.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'W0300133SF04221822', 'Brown', '0', 0.0000, 'This maroon shirred blouse is an universal fit and can be worn with any saree of your choice. Silk fabric used also provides a smooth touch to the skin.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(136, 'Jovial Knit Cotton T', 'jovial-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920012NH12194619/W0920012NH12194619_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920012NH12194619/W0920012NH12194619_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920012NH12194619/W0920012NH12194619_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920012NH12194619/W0920012NH12194619_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 364, 'W0920012NH12194619', 'Brown', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(137, 'Aether cotton t', 'aether-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920013NH12194519/W0920013NH12194519_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920013NH12194519/W0920013NH12194519_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920013NH12194519/W0920013NH12194519_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920013NH12194519/W0920013NH12194519_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 364, 'W0920013NH12194519', 'Red,Brown', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(138, 'Delphinium Knit Cotton T', 'delphinium-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920014NH12194619/W0920014NH12194619_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920014NH12194619/W0920014NH12194619_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920014NH12194619/W0920014NH12194619_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920014NH12194619/W0920014NH12194619_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 364, 'W0920014NH12194619', 'Olive', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(139, 'Celestial knit cotton T', 'celestial-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920015NH12194619/W0920015NH12194619_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920015NH12194619/W0920015NH12194619_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920015NH12194619/W0920015NH12194619_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W0920015NH12194619/W0920015NH12194619_3.jpg', '', '', '26', '3 ', '28 ', 'cm', NULL, 364, 'W0920015NH12194619', 'Brown', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(140, 'Redmix Knit Cotton Leggings', 'redmix-knit-cotton-leggings', 1, 73, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W1080001NH10194019/W1080001NH10194019_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W1080001NH10194019/W1080001NH10194019_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W1080001NH10194019/W1080001NH10194019_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/W1080001NH10194019/W1080001NH10194019_3.jpg', '', '', '24', '1 ', '22 ', 'cm', NULL, 106, 'W1080001NH10194019', 'Red,Gray', '0', 0.0000, 'Madder  ; Myrabalan has been used as dyeing materials which is derive to Red  ; Gray color on this knit cotton Leggings. Wax print was used to get the elegant design.\n\\n\n\\nUsing natural materials, full-hand made Aranya\'s products are align with in fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:26', NULL, '2023-10-19 10:49:26'),
(141, 'Russet Kaftan', 'russet-kaftan', 1, 12, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF018SKE1INHL1223/127.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF018SKE1INHL1223/127.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF018SKE1INHL1223/128.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF018SKE1INHL1223/129.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF018SKE1INHL1223/130.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKF018SKE1INHL1223', 'Brown', '0', 0.0000, 'Betel nuts are further used as a source of a family of catechu, this cambric fabric will add natural wave with natural dye, and this kaftan can give you the ultimate beauty. All Aranya products are handmade,\n\\nusing natural materials, within a\n\\nfair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(142, 'Drifwood Cotton Kaftan', 'drifwood-cotton-kaftan', 1, 12, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF023MCRINHC2023/161.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF023MCRINHC2023/161.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF023MCRINHC2023/162.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF023MCRINHC2023/163.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF023MCRINHC2023/164.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKF023MCRINHC2023', 'Brown', '0', 0.0000, 'This Wax printed cotton kaftan was dyed using the natural ingredients to bring out the brown color of the product.\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 1, 1, '2023-10-19 10:49:27', NULL, '2023-12-05 01:30:34'),
(143, 'Euphoma Kaftan', 'euphoma-kaftan', 1, 12, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF027SKE2INHL2123/189.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF027SKE2INHL2123/189.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF027SKE2INHL2123/191.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF027SKE2INHL2123/190.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKF027SKE2INHL2123/192.jpg', NULL, '0', '0', '0', 'cm', NULL, 0, 'WKF027SKE2INHL2123', 'Blue,Brown,Grey', '0', 0.0000, '<p>The surface is Indigo with brown colored Viscos kaftan, you can wear this comfortable cotton kaftan at any time. edited</p>', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-11-19 05:42:34'),
(144, 'Crocoite Silk Kimono', 'crocoite-silk-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI008NZRINHS1423/145.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI008NZRINHS1423/145.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI008NZRINHS1423/146.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI008NZRINHS1423/147.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI008NZRINHS1423/148.jpg', NULL, '0', '0', '0', 'cm', NULL, 0, 'WKI008NZRINHS1423', 'Blue,Red', '0', 0.0000, '<p>Gorgeous kimono designed with a lightweight silk fabric, it\'ll flows as you move for a comfortable wear. All Aranya products are handmade, using natural materials, within fair trade framework.</p>', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-11-19 05:51:07'),
(145, 'Iris Silk Kimono', 'iris-silk-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI009MCRINHS2023/141.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI009MCRINHS2023/141.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI009MCRINHS2023/142.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI009MCRINHS2023/143.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI009MCRINHS2023/144.jpg', NULL, '0', '0', '0', 'cm', NULL, 0, 'WKI009MCRINHS2023', 'Blue', '0', 0.0000, '<p>The delightful patterns in this cozy kimono is made from colors conventionally extracted from Indigo. The designs are embedded on silk material using wax and dyeing technique. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.</p>', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-11-16 04:09:53'),
(146, 'Hyacinth gray Kimonono', 'hyacinth-gray-kimonono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI011RARINHV1923/197.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI011RARINHV1923/197.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI011RARINHV1923/198.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI011RARINHV1923/199.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKI011RARINHV1923/200.jpg', NULL, '0', '0', '0', 'cm', NULL, 0, 'WKI011RARINHV1923', 'Gray', '0', 0.0000, '<p>The gray tone in this voil kimono has been taken from the nature. All over Rose wax print gives the feel of nature</p>', 1, 0, 1, 1, '2023-10-19 10:49:27', NULL, '2023-12-05 01:31:00'),
(147, 'Flashy Ginger', 'flashy-ginger', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKKU009NK45R22INHS4722/244.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKKU009NK45R22INHS4722/244.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKKU009NK45R22INHS4722/245.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKKU009NK45R22INHS4722/246.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKKU009NK45R22INHS4722/247.jpg', NULL, '0', '0', '0', 'cm', NULL, 0, 'WKKU009NK45R22INHS4722', 'Pink', '0', 0.0000, '<p>Decorated by soft hand stitching with multicolored natural dyed thread is perfect for stealing your any day. All Aranya products are handmade, using natural materials, within a fair trade framework. </p>', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-11-19 06:00:31'),
(148, 'Dusky rose kantha saree', 'dusky-rose-kantha-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS001NK23B22ROK2422/25.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS001NK23B22ROK2422/25.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS001NK23B22ROK2422/26.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS001NK23B22ROK2422/27.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS001NK23B22ROK2422/28.jpg', '', '31', '6 ', '27 ', 'cm', NULL, 550, 'WKS001NK23B22ROK2422', 'Blue,Brown', '0', 0.0000, 'This perfect saree has been made with expertise kantha work on the traditional silk fabric. The saree provides the best of comfort and gracefulness with Kantha stitch with cathechu as black at paar anchol.', 1, 0, 1, 0, '2023-10-19 10:49:27', NULL, '2023-12-05 06:25:06'),
(149, 'Maltese Cross', 'maltese-cross', 1, 7, 8, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/13.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/13.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/14.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/15.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/16.jpg', NULL, '31', '7', '27', 'cm', NULL, 470, 'WKS003NK23B222422', 'Red,Brown', '0', 0.0000, '<p>This astonishing Kantha saree presents a fusion of natural colors, which gives it a Breathtaking look.</p>', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-11-19 07:45:47'),
(150, 'Helenium drape beauty', 'helenium-drape-beauty', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/13.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/13.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/14.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/15.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS004NK23B222422/16.jpg', '', '31', '7 ', '27 ', 'cm', NULL, 450, 'WKS004NK23B222422', 'Blue,Red', '0', 0.0000, 'This amazing Kantha saree is presenting a fusion of natural colors, which is hand-stitched by using natural thread which gives it a\n\\nOutstanding look.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(151, 'Charcoal beauty kantha silk saree', 'charcoal-beauty-kantha-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS013NK23E222MOM2422/21.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS013NK23E222MOM2422/21.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS013NK23E222MOM2422/23.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS013NK23E222MOM2422/22.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKS013NK23E222MOM2422/24.jpg', '', '31', '6 ', '27 ', 'cm', NULL, 550, 'WKS013NK23E222MOM2422', 'Black', '0', 0.0000, 'This perfect saree has been made with expertise kantha work on the traditional silk fabric. The saree provides the best of comfort and gracefulness with Kantha stitch with black as black at paar anchol.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(152, 'Camellia cotton saree', 'camellia-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSA062SF42B22RINEC4322/101.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSA062SF42B22RINEC4322/101.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSA062SF42B22RINEC4322/103.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSA062SF42B22RINEC4322/102.jpg', '', '', '32', '5 ', '26 ', 'cm', NULL, 500, 'WKSA062SF42B22RINEC4322', 'White', '0', 0.0000, 'Handloom saree with speacial weaving can be your day life companion. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.\" ', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(153, 'Sedum Silk Kantha Scarf', 'sedum-silk-kantha-scarf', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSC058NZE2INHS2223/211.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSC058NZE2INHS2223/211.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKSC058NZE2INHS2223/212.jpg', '', '', '', '26', '2 ', '24 ', 'cm', NULL, 130, 'WKSC058NZE2INHS2223', 'Gray', '0', 0.0000, NULL, 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(154, 'Snowflake Crop Top', 'snowflake-crop-top', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKTO010SKE2NURC2223/109.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKTO010SKE2NURC2223/109.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKTO010SKE2NURC2223/110.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKTO010SKE2NURC2223/111.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKTO010SKE2NURC2223/112.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKTO010SKE2NURC2223', 'Teal', '0', 0.0000, 'Wax print Indigo Cotton kantha top dyed in natural color is a perfect wear for any occasion', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(155, 'Gravel Beauty', 'gravel-beauty', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU008NK45R22INHES4722/109.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU008NK45R22INHES4722/109.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU008NK45R22INHES4722/110.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU008NK45R22INHES4722/111.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU008NK45R22INHES4722/112.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU008NK45R22INHES4722', 'Brown', '0', 0.0000, 'The surface is lighter and hand stitched with multicolored natural dyed thread , which is perfect for any purpose event.All Aranya products are handmade,using natural materials, within a\n\\nfair trade framework. ', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(156, 'Shade of Azure', 'shade-of-azure', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU011NK48R22INHC0223/262.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU011NK48R22INHC0223/262.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU011NK48R22INHC0223/261.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU011NK48R22INHC0223/260.jpg', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU011NK48R22INHC0223', 'Blue', '0', 0.0000, 'The preparation of indigo and the dyeing of cloths are other flourishing processes for this kurti. Comfortable Crepe viscous and natural dyed color.All Aranya products are handmade, using natural materials, within a\n\\nfair trade framework. ', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(157, 'Fit with Avocado', 'fit-with-avocado', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU012NK48R22INHC0223/232.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU012NK48R22INHC0223/232.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU012NK48R22INHC0223/233.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU012NK48R22INHC0223/234.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU012NK48R22INHC0223/235.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU012NK48R22INHC0223', 'Olive', '0', 0.0000, 'Made with comfortable Crepe viscous and natural dyed color. This solid natural color is perfect for any weather and for this comfy fabric the wave looks outstanding\n\\n', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(158, 'Mina Lobota long shirt', 'mina-lobota-long-shirt', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU013NK03R23INHC0323/137.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU013NK03R23INHC0323/137.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU013NK03R23INHC0323/138.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU013NK03R23INHC0323/139.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU013NK03R23INHC0323/140.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU013NK03R23INHC0323', 'Blue', '0', 0.0000, 'This blended cotton shirt is present solid indigo,which gives it a\n\\nmagnificent look.All Aranya products are handmade,\n\\nusing natural materials, within a\n\\nfair trade framework.\"', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(159, 'Knautia Macedonia long shirt', 'knautia-macedonia-long-shirt', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU014NK03R23INHC0323/149.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU014NK03R23INHC0323/149.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU014NK03R23INHC0323/150.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU014NK03R23INHC0323/151.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU014NK03R23INHC0323/152.jpg', NULL, '31', '3', '27', 'cm', NULL, 250, 'WKU014NK03R23INHC0323', 'Brown', '0', 0.0000, '<p>This blended cotton shirt presents solid dark catechu, which gives it a\n\\nmagnificent look. All Aranya products are handmade,\n\\nusing natural materials, within a\n\\nfair trade framework.\"</p>', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-30 04:44:26'),
(160, 'Swan A', 'swan-a', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU015NK03R23INHC0320/113.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU015NK03R23INHC0320/113.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU015NK03R23INHC0320/114.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU015NK03R23INHC0320/115.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU015NK03R23INHC0320/116.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU015NK03R23INHC0320', 'White', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(161, 'Aquilegia Shibori Kurti', 'aquilegia-shibori-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU016NK04R23RINS0623/170.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU016NK04R23RINS0623/170.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU016NK04R23RINS0623/171.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU016NK04R23RINS0623/169.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU016NK04R23RINS0623/172.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU016NK04R23RINS0623', 'Blue', '0', 0.0000, 'The preparation of indigo and the process of shibori dyeing of cloths are other flourishing processes for this Kurti. Elegent silk and natural dyed color.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(162, 'Syriaca Shibori kurti', 'syriaca-shibori-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU017NK04R23RINS0623/173.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU017NK04R23RINS0623/173.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU017NK04R23RINS0623/174.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU017NK04R23RINS0623/175.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU017NK04R23RINS0623/176.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU017NK04R23RINS0623', 'Red', '0', 0.0000, 'The preparation of madder and the process of shibori dyeing of cloths are other flourishing processes for this Kurti. Elegent silk and natural dyed color.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(163, 'Black rock shibori kurti', 'black-rock-shibori-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU021NKRRINS0623/177.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU021NKRRINS0623/177.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU021NKRRINS0623/178.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU021NKRRINS0623/179.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WKU021NKRRINS0623/180.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WKU021NKRRINS0623', 'Black', '0', 0.0000, 'The preparation of dark and the process of shibori dyeing of cloths are other flourishing processes for this Kurti. Elegent silk and natural dyed color.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(164, 'Irises creap silk orna', 'irises-creap-silk-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WO002NK31R22INH3122/WO002NK31R22INH3122_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WO002NK31R22INH3122/WO002NK31R22INH3122_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WO002NK31R22INH3122/WO002NK31R22INH3122_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WO002NK31R22INH3122/WO002NK31R22INH3122_1.jpg', '', '', '29', '2 ', '22 ', 'cm', NULL, 130, 'WO002NK31R22INH3122', 'Blue', '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The creap silk fabric provides comfort from the scorching heat.\n\\n\n\\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(165, 'Downriver linen orna', 'downriver-linen-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR036SKBINHL1023/191.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR036SKBINHL1023/191.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR036SKBINHL1023/192.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR036SKBINHL1023/193.jpg', '', '', '33', '3 ', '25 ', 'cm', NULL, 240, 'WOR036SKBINHL1023', 'Blue', '0', 0.0000, 'The intricate motifs of this lilen orna will be suitable with any kameez of your choice. The shades represent the traditional festival colors of nature.\n\\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(166, 'Garnet Silk Orna', 'garnet-silk-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR066NZE1INHS1523/134.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR066NZE1INHS1523/134.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR066NZE1INHS1523/135.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR066NZE1INHS1523/136.jpg', '', '', '33', '2 ', '28 ', 'cm', NULL, 140, 'WOR066NZE1INHS1523', 'Olive , Red', '0', 0.0000, 'This is an artful geometric wax printed silk orna, which is dyed in madder to get the red wine color. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(167, 'Carnelian Muslin Orna', 'carnelian-muslin-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR067NZE1INHM1823/120.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR067NZE1INHM1823/120.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR067NZE1INHM1823/121.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR067NZE1INHM1823/122.jpg', '', '', '29', '2 ', '25 ', 'cm', NULL, 130, 'WOR067NZE1INHM1823', 'Red,Black', '0', 0.0000, 'This red & black printed muslin orna is made from a luxurious material with smooth texture. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(168, 'Vltavin Cotton Orna', 'vltavin-cotton-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR070NZRINHC1423/185.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR070NZRINHC1423/185.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR070NZRINHC1423/186.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR070NZRINHC1423/187.jpg', '', '', '33', '3 ', '27 ', 'cm', NULL, 220, 'WOR070NZRINHC1423', 'Olive', '0', 0.0000, 'A light weight, soft, wax printed cotton feel orna, which is easy to maintain. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(169, 'Tanzanite Linen Orna', 'tanzanite-linen-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR071NZRINHL1423/182.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR071NZRINHL1423/182.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR071NZRINHL1423/183.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR071NZRINHL1423/184.jpg', '', '', '33', '3 ', '27 ', 'cm', NULL, 260, 'WOR071NZRINHL1423', 'Blue,Gray', '0', 0.0000, 'This orna is made from a fine linen fabric and has a soft smooth finish. All Aranya products are handmade, using natural materials, within a fair trade framework. ', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(170, 'Petunia Silk Orna', 'petunia-silk-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR081RARINHS1923/227.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR081RARINHS1923/227.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR081RARINHS1923/228.jpg', '', '', '', '27', '2 ', '23 ', 'cm', NULL, 130, 'WOR081RARINHS1923', 'Blue,Teal', '0', 0.0000, 'This vibrant orna can give any dress a nice pop of color. Silk fabric used provides breathability so you will have no worries of the heat.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(171, 'Lily of the Valley cotton orna', 'lily-of-the-valley-cotton-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR084SKE2INHCJ2123/221.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR084SKE2INHCJ2123/221.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR084SKE2INHCJ2123/222.jpg', '', '', '', '27', '3 ', '24 ', 'cm', NULL, 220, 'WOR084SKE2INHCJ2123', 'Red', '0', 0.0000, 'A big benefit of this madder orna is that it can be worn with variable outfits. Comfortable jute cotton fabric present also makes it a favorite.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `is_new`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(172, 'Snowdrop Cotton Orna', 'snowdrop-cotton-orna', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR085NZE2INHC2123/225.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR085NZE2INHC2123/225.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WOR085NZE2INHC2123/226.jpg', NULL, NULL, NULL, '27', '3', '25', 'cm', NULL, 220, 'WOR085NZE2INHC2123', 'Blue', '0', 0.0000, '<p>Natural ingredient, Indigo was used to dye this cotton orna in blue color. The wax print technique was used to amplify its bold design. All of Aranya s products are handmade, using natural fibers and materials within a fair-trade framework.</p>', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-11-19 05:46:36'),
(173, 'Sweet Pea Endi Half Silk Saree', 'sweet-pea-endi-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS023SF33R22INH3322/WS023SF33R22INH3322_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS023SF33R22INH3322/WS023SF33R22INH3322_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS023SF33R22INH3322/WS023SF33R22INH3322_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS023SF33R22INH3322/WS023SF33R22INH3322_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS023SF33R22INH3322/WS023SF33R22INH3322_4.jpg', '', '30', '5 ', '28 ', 'cm', NULL, 420, 'WS023SF33R22INH3322', 'Blue,Gray', '0', 0.0000, 'Blue and Gray have been used as dyeing materials on this eri half silk saree. Wax print and Kantha stitch was used to get the elegant design. All Aranya products are handmade, using natural fibers and materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(174, 'Starling Endi Cotton Saree', 'starling-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS025MC33R22INH3422/WS025MC33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS025MC33R22INH3422/WS025MC33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS025MC33R22INH3422/WS025MC33R22INH3422_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS025MC33R22INH3422/WS025MC33R22INH3422_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS025MC33R22INH3422/WS025MC33R22INH3422_4.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 420, 'WS025MC33R22INH3422', 'Brown', '0', 0.0000, 'The Flower tones of this eri cotton saree do the best work in making you truly feel beautiful, making it the perfect wear for all of your favorite occasions.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(175, 'Dendrobium Eri Cotton Saree', 'dendrobium-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS026SF33R22INH3422/WS026SF33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS026SF33R22INH3422/WS026SF33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS026SF33R22INH3422/WS026SF33R22INH3422_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS026SF33R22INH3422/WS026SF33R22INH3422_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS026SF33R22INH3422/WS026SF33R22INH3422_4.jpg', '', '29', '5 ', '27 ', 'cm', NULL, 500, 'WS026SF33R22INH3422', 'Blue,Pink', '0', 0.0000, 'The pink color affects the mind and body by causing pleasant feelings. This eri cotton saree is decorated with wax. All Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(176, 'Clematis Cotton kota Saree', 'clematis-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS027SF33R22INH3422/WS027SF33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS027SF33R22INH3422/WS027SF33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS027SF33R22INH3422/WS027SF33R22INH3422_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS027SF33R22INH3422/WS027SF33R22INH3422_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS027SF33R22INH3422/WS027SF33R22INH3422_4.jpg', '', '30', '4 ', '28 ', 'cm', NULL, 420, 'WS027SF33R22INH3422', 'Navy', '0', 0.0000, 'This exclusive wax printed natural dyed saree is contains two shades of Navy colour. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(177, 'Blosoom Cotton Kota saree', 'blosoom-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS028MC33R22INH3422/WS028MC33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS028MC33R22INH3422/WS028MC33R22INH3422_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS028MC33R22INH3422/WS028MC33R22INH3422_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS028MC33R22INH3422/WS028MC33R22INH3422_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS028MC33R22INH3422/WS028MC33R22INH3422_4.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 415, 'WS028MC33R22INH3422', 'Brown,Olive', '0', 0.0000, 'This exclusive wax printed cotton kota saree dyed in brown and olive. Making it the perfect wear for all of your favorite occasions. All Aranya products are handmade, using natural materials, within a fair trade framework', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(178, 'Rudbeckia cotton saree', 'rudbeckia-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS029BA34B22INH3522/200.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS029BA34B22INH3522/200.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS029BA34B22INH3522/201.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS029BA34B22INH3522/202.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS029BA34B22INH3522/203.jpg', '', '31', '5 ', '27 ', 'cm', NULL, 420, 'WS029BA34B22INH3522', 'Red,Brown', '0', 0.0000, 'This blended cotton saree is present the fusion of madder & grey which gives it a magnificent look.All Aaranya products are handmade, using natural materials, within a fair trade framework.\"\n\\n', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(179, 'Dazzling Cotton Kota Saree', 'dazzling-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS030BA34R22INH3522/WS030BA34R22INH3522_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS030BA34R22INH3522/WS030BA34R22INH3522_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS030BA34R22INH3522/WS030BA34R22INH3522_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS030BA34R22INH3522/WS030BA34R22INH3522_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS030BA34R22INH3522/WS030BA34R22INH3522_4.jpg', '', '30', '4 ', '28 ', 'cm', NULL, 415000, 'WS030BA34R22INH3522', 'Brown,Pink', '0', 0.0000, 'Both hues show out brilliantly in this saree because to the contrasting tones. It is a comfortable fabric with dual designs and cotton kota fabric. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(180, 'Crimson Cotton Than Saree', 'crimson-cotton-than-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS033SF35R22INH3622%20Crimson%20Cotton%20Than%20Saree/WS033SF35R22INH3622_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS033SF35R22INH3622%20Crimson%20Cotton%20Than%20Saree/WS033SF35R22INH3622_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS033SF35R22INH3622%20Crimson%20Cotton%20Than%20Saree/WS033SF35R22INH3622_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS033SF35R22INH3622%20Crimson%20Cotton%20Than%20Saree/WS033SF35R22INH3622_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS033SF35R22INH3622%20Crimson%20Cotton%20Than%20Saree/WS033SF35R22INH3622_4.jpg', '', '30', '4 ', '28 ', 'cm', NULL, 420, 'WS033SF35R22INH3622', 'Teal,Blue,Red', '0', 0.0000, 'Beautiful imprints were created on cotton using the wax. Natural elements are used to create the stunning teal, blue and red colors. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(181, 'Meconopsis cotton saree', 'meconopsis-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS034MC36E2213722/212.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS034MC36E2213722/212.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS034MC36E2213722/213.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS034MC36E2213722/214.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS034MC36E2213722/215.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 430, 'WS034MC36E2213722', 'Blue,Brown', '0', 0.0000, 'In a mesmerising combination of indigo and ash grey ,the Meconopsis Drapery is equal parts cotton and love. All Aaranya products are handmade, using natural materials, within a fair trade framework.\"', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(182, 'Nolana cotton saree', 'nolana-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS042RA38B22INH3922/224.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS042RA38B22INH3922/224.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS042RA38B22INH3922/225.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS042RA38B22INH3922/226.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS042RA38B22INH3922/227.jpg', '', '30', '5 ', '27 ', 'cm', NULL, 450, 'WS042RA38B22INH3922', 'Blue,Gray', '0', 0.0000, 'In a mesmerising combination of blue and ash grey ,the Nolana Drapery is equal parts cotton and love. All Aaranya products are handmade, using natural materials, within a fair trade framework.\n\\n', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(183, 'Anemone Cotton Saree', 'anemone-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS32TA35R22INH3622/WS32TA35R22INH3622_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS32TA35R22INH3622/WS32TA35R22INH3622_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS32TA35R22INH3622/WS32TA35R22INH3622_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS32TA35R22INH3622/WS32TA35R22INH3622_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WS32TA35R22INH3622/WS32TA35R22INH3622_4.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 410, 'WS32TA35R22INH3622', 'Blue,Teal', '0', 0.0000, 'By unifying the natural dye of Blue at paar and anchol, and teal body in the cotton than saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(184, 'Ipomoea Balaka Silk Saree', 'ipomoea-balaka-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA053RA40E22INHS0223/65.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA053RA40E22INHS0223/65.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA053RA40E22INHS0223/66.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA053RA40E22INHS0223/67.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA053RA40E22INHS0223/68.jpg', '', '31', '3 ', '23 ', 'cm', NULL, 360, 'WSA053RA40E22INHS0223', 'Navy,Blue', '0', 0.0000, 'The blue and grey tones of this balaka silk saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(185, 'Carolina Allspice', 'carolina-allspice', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA055SF40B22INHS0723/53.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA055SF40B22INHS0723/53.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA055SF40B22INHS0723/54.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA055SF40B22INHS0723/55.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA055SF40B22INHS0723/56.jpg', '', '32', '2 ', '24 ', 'cm', NULL, 400, 'WSA055SF40B22INHS0723', 'Red,Black', '0', 0.0000, 'This printed balaka saree was dyed using the natural ingredients to bring out the marvelous light and deep black color of the product.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(186, 'Golden Columbine', 'golden-columbine', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA057BA40B22INHS0723/172.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA057BA40B22INHS0723/172.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA057BA40B22INHS0723/173.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA057BA40B22INHS0723/174.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA057BA40B22INHS0723/175.jpg', '', '30', '2 ', '27 ', 'cm', NULL, 580, 'WSA057BA40B22INHS0723', 'Black', '0', 0.0000, 'Beautiful Golden silk saree with black natural dyed color print is a perfect way to express the beauty of elegence.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(187, 'Hydrangea cotton endi saree', 'hydrangea-cotton-endi-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA065BA42E222INHEC4422/208.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA065BA42E222INHEC4422/208.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA065BA42E222INHEC4422/209.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA065BA42E222INHEC4422/210.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA065BA42E222INHEC4422/211.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 440, 'WSA065BA42E222INHEC4422', 'Red,Teal', '0', 0.0000, 'The preparation of indigo and madder the dyeing of other flourishing in this stunning Saree. this cotton endi saree can give you charming moments at any time.All Aaranya products are handmade, using natural materials, within a fair trade framework.\"\n\\n', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(188, 'Lunaria endi cotton saree', 'lunaria-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA068RA44E22INHEC4522/220.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA068RA44E22INHEC4522/220.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA068RA44E22INHEC4522/221.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA068RA44E22INHEC4522/222.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA068RA44E22INHEC4522/223.jpg', '', '31', '5 ', '28 ', 'cm', NULL, 450, 'WSA068RA44E22INHEC4522', 'Blue,Pink', '0', 0.0000, 'This blended cotton Endi saree is present the fusion of indigo & Patel pink, which gives it a\n\\nmagnificent look.All Aranya products are handmade, using natural materials, within a fair trade framework', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(189, 'Narcissus cotta saree', 'narcissus-cotta-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA078RA46E22INHCK4722/228.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA078RA46E22INHCK4722/228.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA078RA46E22INHCK4722/229.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA078RA46E22INHCK4722/230.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA078RA46E22INHCK4722/231.jpg', '', '31', '5 ', '27 ', 'cm', NULL, 440, 'WSA078RA46E22INHCK4722', 'Blue', '0', 0.0000, 'The preparation of indigo and the dyeing of are other flourishing in this stunning Indigo Saree. this cotton cotta saree can give you charming moments at any time.All Aaranya products are handmade, using natural materials, within a fair trade framework.\"\n\\n', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(190, 'Bacopa Kota Saree', 'bacopa-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA083MC46E22INHCK4822/57.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA083MC46E22INHCK4822/57.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA083MC46E22INHCK4822/58.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA083MC46E22INHCK4822/59.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA083MC46E22INHCK4822/60.jpg', '', '31', '5 ', '26 ', 'cm', NULL, 450, 'WSA083MC46E22INHCK4822', 'Blue,Gray', '0', 0.0000, 'The engaging natural colors in this kota saree has been extracted from organically grown things succesively. Wax print has been used to embed the beautiful patterns. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(191, 'Dianthus cotton saree', 'dianthus-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA088SF48B22INHCK0123/204.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA088SF48B22INHCK0123/204.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA088SF48B22INHCK0123/205.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA088SF48B22INHCK0123/206.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA088SF48B22INHCK0123/207.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 420, 'WSA088SF48B22INHCK0123', 'Olive , Manjit', '0', 0.0000, 'In a mesmerising combination of crimson madder and ash grey ,the Dianthus Drapery is equal parts cotton and love. All Aaranya products are handmade, using natural materials, within a fair trade framework.\n\\n', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(192, 'Lantana Cotton Sharee', 'lantana-cotton-sharee', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA089SF48R22INHCT0123/49.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA089SF48R22INHCT0123/49.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA089SF48R22INHCT0123/50.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA089SF48R22INHCT0123/51.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA089SF48R22INHCT0123/52.jpg', '', '30', '5 ', '27 ', 'cm', NULL, 430, 'WSA089SF48R22INHCT0123', 'Blue,Brown,Pink', '0', 0.0000, 'Multi color and zigzag wax print make this Cotton sharee more cultural look.All Aranya products are handmade, using natural fibers and materials within a fair-trade framework. ', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(193, 'Frissel Cotton Sharee', 'frissel-cotton-sharee', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA090MC48B22INHCT0123/41.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA090MC48B22INHCT0123/41.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA090MC48B22INHCT0123/42.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA090MC48B22INHCT0123/43.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA090MC48B22INHCT0123/44.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 400, 'WSA090MC48B22INHCT0123', 'Red', '0', 0.0000, 'Cotton texture of the saree is soo moisture and the colour of madder perceive the soothingness. All Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(194, 'Sword lily Cotton Saree', 'sword-lily-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA093RA48B22INHCT0123/45.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA093RA48B22INHCT0123/45.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA093RA48B22INHCT0123/46.jpgg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA093RA48B22INHCT0123/47.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA093RA48B22INHCT0123/48.jpgg', '', '30', '4 ', '26 ', 'cm', NULL, 400, 'WSA093RA48B22INHCT0123', 'Red,Black', '0', 0.0000, 'The red colored paar with black print of this cotton sharee speak to the excellence of natural ornamentation.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(195, 'Wisteria Balaka Silk Saree', 'wisteria-balaka-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA098RA48R22INHS0223/73.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA098RA48R22INHS0223/73.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA098RA48R22INHS0223/74.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA098RA48R22INHS0223/75.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA098RA48R22INHS0223/76.jpg', '', '30', '2 ', '26 ', 'cm', NULL, 397, 'WSA098RA48R22INHS0223', 'Blue,Brown', '0', 0.0000, 'Natural color is used in this beautiful ornamented balaka silk saree.The variations of wax print patterns added on the anchal part bring an elegant attitude.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(196, 'Paramour Silk Saree', 'paramour-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA102BA03V23INHS0423/125.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA102BA03V23INHS0423/125.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA102BA03V23INHS0423/126.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA102BA03V23INHS0423/127.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA102BA03V23INHS0423/128.jpg', '', '32', '3 ', '29 ', 'cm', NULL, 400000, 'WSA102BA03V23INHS0423', 'Red,Brown Pest', '0', 0.0000, 'By unifying the natural dye of ol at paar and anchol and golden body in the silk saree.Natural print has been applied to give this composition a festive look. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(197, 'Florance Half Silk Saree', 'florance-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA104SF03F23INHHS0423/118.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA104SF03F23INHHS0423/118.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA104SF03F23INHHS0423/119.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA104SF03F23INHHS0423/120.jpg', '', '', '32', '4 ', '25 ', 'cm', NULL, 420000, 'WSA104SF03F23INHHS0423', 'Brown Pest', '0', 0.0000, 'The magnificent golden color is extracted from nature. The natiral block print has been used on half silk to make beautiful imprints.\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.\n\\n\n\\n ', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(198, 'Astilbe Balaka Silk Saree', 'astilbe-balaka-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA106RA05E23INHS0723/129.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA106RA05E23INHS0723/129.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA106RA05E23INHS0723/130.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA106RA05E23INHS0723/131.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA106RA05E23INHS0723/132.jpg', '', '31', '2 ', '25 ', 'cm', NULL, 380, 'WSA106RA05E23INHS0723', 'Blue,Black', '0', 0.0000, 'The contrasting tones black printed saree makes both the colors stand out beautifully. With dual designs and cbalaka silk fabric, it\'s an eye catcher as well as comfort wear.\n\\n\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(199, 'Globe Thistle Silk Saree', 'globe-thistle-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA107BA05E23INHS0723/25.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA107BA05E23INHS0723/25.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA107BA05E23INHS0723/26.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA107BA05E23INHS0723/27.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA107BA05E23INHS0723/28.jpg', '', '31', '2 ', '26 ', 'cm', NULL, 380, 'WSA107BA05E23INHS0723', 'Blue,Olive', '0', 0.0000, 'This greenish saree is designed using a wax print grid form and is Arranged symmetrically with a peach-white border which beautifully goes with the silk saree on every occasion.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(200, 'Spring Leaf', 'spring-leaf', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA110BA05B23INHEC0723/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA110BA05B23INHEC0723/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA110BA05B23INHEC0723/30.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA110BA05B23INHEC0723/31.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA110BA05B23INHEC0723/32.jpg', '', '30', '4 ', '26 ', 'cm', NULL, 450, 'WSA110BA05B23INHEC0723', 'Olive , Red', '0', 0.0000, 'The majestic shade of red and olive on this eri cotton saree express the delightful mode. Wax print technique was used to amplify it\'s design.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(201, 'Aventurine Saree', 'aventurine-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA113BABINHCK0823/133.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA113BABINHCK0823/133.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA113BABINHCK0823/134.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA113BABINHCK0823/135.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA113BABINHCK0823/136.jpg', '', '32', '4 ', '27 ', 'cm', NULL, 400, 'WSA113BABINHCK0823', 'Teal,Golden', '0', 0.0000, 'Cotta cotton saree all over wax printed and naturally colored.achol and paar dyed with natural sources,which represents elegance everywhere', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(202, 'Lapis lazuli Saree', 'lapis-lazuli-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA114BAE1INHCK0823/137.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA114BAE1INHCK0823/137.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA114BAE1INHCK0823/138.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA114BAE1INHCK0823/139.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA114BAE1INHCK0823/140.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 380, 'WSA114BAE1INHCK0823', 'Blue', '0', 0.0000, 'Perfect blue combination in cotton kota saree dyed in natural indigo will definitly make your any day special.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(203, 'Oblong Half Silk Saree', 'oblong-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA116RAE1INHHS0823/33.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA116RAE1INHHS0823/33.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA116RAE1INHHS0823/34.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA116RAE1INHHS0823/35.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA116RAE1INHHS0823/36.jpg', '', '32', '3 ', '24 ', 'cm', NULL, 420, 'WSA116RAE1INHHS0823', 'Golden,Brown', '0', 0.0000, 'This Wax printed half silk saree was dyed using the natural ingredients to bring out the brown color of the product.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(204, 'Carnelian drape story', 'carnelian-drape-story', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA120SFBINHS0923/33.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA120SFBINHS0923/33.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA120SFBINHS0923/34.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA120SFBINHS0923/35.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA120SFBINHS0923/36.jpg', '', '30', '2 ', '25 ', 'cm', NULL, 390, 'WSA120SFBINHS0923', 'Red', '0', 0.0000, 'This tomb contained also a string of natural color, this six-yard Balaka silk saree has her own elegance and small discs of gold wax print .\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(205, 'Monkshood Cotton Saree', 'monkshood-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA122BABINHCT0923/153.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA122BABINHCT0923/153.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA122BABINHCT0923/154.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA122BABINHCT0923/155.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA122BABINHCT0923/156.jpg', '', '31', '4 ', '28 ', 'cm', NULL, 410, 'WSA122BABINHCT0923', 'Olive,Pink', '0', 0.0000, 'Cotton saree all over wax printed and naturally colored paar dyed with natural sources with an amazing texture which is done by wax print ,te dye technique has been used in paar portion .Gray colour represents elegance everywhere.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(206, 'Phaeum Cotton Saree', 'phaeum-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA124BABINHCT0923/61.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA124BABINHCT0923/61.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA124BABINHCT0923/62.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA124BABINHCT0923/63.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA124BABINHCT0923/64.jpg', '', '31', '4 ', '28 ', 'cm', NULL, 420, 'WSA124BABINHCT0923', 'Blue,Olive', '0', 0.0000, 'This Wax printed cotton saree was dyed using the natural ingredients to bring out the marvelous Olive & Deep Blue color of the product.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(207, 'Bee Balm drape half silk', 'bee-balm-drape-half-silk', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA126BABINHHS1023/49.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA126BABINHHS1023/49.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA126BABINHHS1023/50.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA126BABINHHS1023/51.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA126BABINHHS1023/52.jpg', '', '31', '3 ', '25 ', 'cm', NULL, 420, 'WSA126BABINHHS1023', 'Red,Black', '0', 0.0000, 'This printed natural color Saree is perfect for any weather and this silk smoothness fabric looks outstanding.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(208, 'Delphinium silk saree', 'delphinium-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA127MCEINHHS1023/41.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA127MCEINHHS1023/41.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA127MCEINHHS1023/42.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA127MCEINHHS1023/43.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA127MCEINHHS1023/44.jpg', '', '32', '4 ', '27 ', 'cm', NULL, 400, 'WSA127MCEINHHS1023', 'Blue,Gray', '0', 0.0000, 'With the impulsive color of blue, this half silk saree comes from the essence of nature. Wax-resistant dye was used to enhance the appearance with exclusive designs.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(209, 'Lobelia Silk Saree', 'lobelia-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA128BAEINHS1023/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA128BAEINHS1023/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA128BAEINHS1023/30.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA128BAEINHS1023/31.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA128BAEINHS1023/32.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WSA128BAEINHS1023', 'Black', '0', 0.0000, 'The contrasting shades of blue ,gray snd brown in this saree make it the most elegant choice for any daytime occasion.Silk fabric has been used to provide utmost comfort.\r\n\\n\r\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(210, 'Heaven Blue', 'heaven-blue', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA133SKEINHCT1123/3_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA133SKEINHCT1123/3_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA133SKEINHCT1123/3_2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA133SKEINHCT1123/3_3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA133SKEINHCT1123/3_4.jpg', '', '31', '5 ', '29 ', 'cm', NULL, 430, 'WSA133SKEINHCT1123', 'Blue,Gray', '0', 0.0000, 'The preparation of indigo and the dyeing of cloths are other flourishing in this stunning Indigo Saree. this saree can give you charming moments at any time.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(211, 'Malachite Cotton Saree', 'malachite-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA135NZRINHCT1423/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA135NZRINHCT1423/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA135NZRINHCT1423/30.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA135NZRINHCT1423/31.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA135NZRINHCT1423/32.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 420, 'WSA135NZRINHCT1423', 'Golden,Blue,Teal', '0', 0.0000, 'Indigo blue & teal coloured saree in cotton features wax printed vibrant motifs all over. All Aranya products are handmade, using natural materials, within a fair trade framework. ', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(212, 'Boleite Half Silk Saree', 'boleite-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA136NZEINHHS1423/33.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA136NZEINHHS1423/33.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA136NZEINHHS1423/34.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA136NZEINHHS1423/35.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA136NZEINHHS1423/36.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 400, 'WSA136NZEINHHS1423', 'Blue,Pink', '0', 0.0000, 'The saree can bring you a great way to add a pinch of mood-brightening rich blend of colors to your everyday looks. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(213, 'Thistle balaka Silk Saree', 'thistle-balaka-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA153BARINHS2023/2000px3000px-1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA153BARINHS2023/2000px3000px-1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA153BARINHS2023/2000px3000px-2.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA153BARINHS2023/2000px3000px-3.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA153BARINHS2023/2000px3000px-4.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 380, 'WSA153BARINHS2023', 'Blue,Pink', '0', 0.0000, 'This allover printed balaka silk saree that has been used natural dye for the festive look. The intricate details has been outlined with wax print technique. All Aaranya products are handmade, using natural materials, within a fair trade framework..', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(214, 'Solidago Eri Cotton Saree', 'solidago-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA165BAEINHEC1423/53.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA165BAEINHEC1423/53.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA165BAEINHEC1423/54.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA165BAEINHEC1423/55.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA165BAEINHEC1423/56.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 410, 'WSA165BAEINHEC1423', 'Olive,Golden', '0', 0.0000, 'With the impulsive shades of olive and golden color, this cotton saree comes from the essence of nature. Wax-resistant dye was used to enhance the appearance with exclusive designs.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(215, 'Unakite Saree', 'unakite-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA169BAEINHEHS1523/110.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA169BAEINHEHS1523/110.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA169BAEINHEHS1523/111.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA169BAEINHEHS1523/112.jpg', '', '', '30', '3 ', '29 ', 'cm', NULL, 400, 'WSA169BAEINHEHS1523', 'Blue,Brown,Golden', '0', 0.0000, 'This eri half silk saree is perfect for any occation. Wax printed design has been outlined on this .The mesmerizing olive, blue and brown color on this cotton saree was drawn out. Wax technique is used to embed the color into it, providing you with the best of beauty and relaxation.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(216, 'Floweret Kota Saree', 'floweret-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA182BAE2INHCK2023/81.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA182BAE2INHCK2023/81.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA182BAE2INHCK2023/82.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA182BAE2INHCK2023/83.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA182BAE2INHCK2023/84.jpg', '', '31', '5 ', '27 ', 'cm', NULL, 400, 'WSA182BAE2INHCK2023', 'Olive,Pink', '0', 0.0000, NULL, 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(217, 'Aster Half Silk Saree', 'aster-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA184RAE2INHHS1923/61.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA184RAE2INHHS1923/61.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA184RAE2INHHS1923/62.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA184RAE2INHHS1923/63.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA184RAE2INHHS1923/64.jpg', '', '30', '4 ', '27 ', 'cm', NULL, 360, 'WSA184RAE2INHHS1923', 'Blue,Brown', '0', 0.0000, 'This Wax printed Silk saree was dyed using the natural ingredients to bring out the marvelous indigo color of the product.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(218, 'Syriaca Silk Saree', 'syriaca-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA185NZE2INHS1923/45.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA185NZE2INHS1923/45.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA185NZE2INHS1923/46.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA185NZE2INHS1923/47.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA185NZE2INHS1923/48.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 380, 'WSA185NZE2INHS1923', 'Blue,Brown', '0', 0.0000, NULL, 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(219, 'Primula Silk Saree', 'primula-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA187RAE2INHHS2023/57.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA187RAE2INHHS2023/57.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA187RAE2INHHS2023/58.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA187RAE2INHHS2023/59.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA187RAE2INHHS2023/60.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 400, 'WSA187RAE2INHHS2023', 'Olive,Golden', '0', 0.0000, 'This timeless Silk saree is featuring the combination of olive & bronze golden colour, which gives it a magnificent look.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(220, 'Carnation cotta cotton saree', 'carnation-cotta-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA188RAE2INHCK2023/85.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA188RAE2INHCK2023/85.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA188RAE2INHCK2023/86.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA188RAE2INHCK2023/87.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA188RAE2INHCK2023/88.jpg', '', '31', '5 ', '27 ', 'cm', NULL, 400, 'WSA188RAE2INHCK2023', 'Blue,Gray', '0', 0.0000, 'This blended cotton kota saree is present the fusion of grey & indigo ,which gives it a magnificent look.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(221, 'Eustoma soft Silk Saree', 'eustoma-soft-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA189NZE2INHM2023/53.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA189NZE2INHM2023/53.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA189NZE2INHM2023/55.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA189NZE2INHM2023/54.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA189NZE2INHM2023/56.jpg', '', '31', '2 ', '27 ', 'cm', NULL, 130, 'WSA189NZE2INHM2023', 'Pink', '0', 0.0000, NULL, 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(222, 'Zinnia silk saree', 'zinnia-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA191RAE2INHS2023/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA191RAE2INHS2023/29.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA191RAE2INHS2023/31.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA191RAE2INHS2023/30.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA191RAE2INHS2023/32.jpg', '', '31', '4 ', '25 ', 'cm', NULL, 380, 'WSA191RAE2INHS2023', 'Blue', '0', 0.0000, 'With an inspiration of a dark indigo shade, this balaka silk saree is treated with kashmi treatment to make the black block print for a elegent look', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(223, 'Lechenaultia silk saree', 'lechenaultia-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA195SKRINHHS2123/97.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA195SKRINHHS2123/97.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA195SKRINHHS2123/98.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA195SKRINHHS2123/99.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA195SKRINHHS2123/100.jpg', '', '31', '4 ', '27 ', 'cm', NULL, 380, 'WSA195SKRINHHS2123', 'Brown,Olive', '0', 0.0000, 'This Wax printed Silk saree was dyed using the natural ingredients to bring out the marvelous dark olive color of the product.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `is_new`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(224, 'Rosewood maroon red oxide half silk', 'rosewood-maroon-red-oxide-half-silk', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA206SKE2INHHS2123/41.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA206SKE2INHHS2123/41.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA206SKE2INHHS2123/42.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA206SKE2INHHS2123/43.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSA206SKE2INHHS2123/44.jpg', '', '31', '4 ', '29 ', 'cm', NULL, 380, 'WSA206SKE2INHHS2123', 'Brown', '0', 0.0000, 'This lightweight eri silk orna is embellished with floral pattern and with the combination of brown colors that gives it an alluring look.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(225, 'Friedelite Silk Scarf', 'friedelite-silk-scarf', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC034NZE1INHS1423/165.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC034NZE1INHS1423/165.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC034NZE1INHS1423/167.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC034NZE1INHS1423/166.jpg', '', '', '33', '3 ', '24 ', 'cm', NULL, 120, 'WSC034NZE1INHS1423', 'Blue,Red', '0', 0.0000, 'Superior quality fabric offers you infinite variety of styling options. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(226, 'Topaz Cotton Scarf', 'topaz-cotton-scarf', 1, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC035NZRINHC1423/179.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC035NZRINHC1423/179.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC035NZRINHC1423/180.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSC035NZRINHC1423/181.jpg', '', '', '33', '3 ', '25 ', 'cm', NULL, 220, 'WSC035NZRINHC1423', 'Pink', '0', 0.0000, 'A versatile wax printed pattern that\n\\ncan be worn over your shoulders,\n\\nhead or neck. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 0, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(227, 'Ivory Piece', 'ivory-piece', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSH004SKE1INHL1223/153.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSH004SKE1INHL1223/153.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSH004SKE1INHL1223/155.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSH004SKE1INHL1223/154.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSH004SKE1INHL1223/156.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WSH004SKE1INHL1223', 'Pink', '0', 0.0000, ' Dried flower bones are prized as an example of this ivory lovely shirt which is reflected in these wax prints all over the print .for every season this shirt is perfect. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(228, 'Meconopsis Soft silk co', 'meconopsis-soft-silk-co', 1, 76, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS014NKE2INHM1923/161.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS014NKE2INHM1923/161.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS014NKE2INHM1923/163.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS014NKE2INHM1923/164.jpg', '', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WSS014NKE2INHM1923', 'Black', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(229, 'Rondeletia Soft silk Co', 'rondeletia-soft-silk-co', 1, 76, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015NKE2INHM1923/165.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015NKE2INHM1923/165.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015NKE2INHM1923/167.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015NKE2INHM1923/166.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015NKE2INHM1923/168.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WSS015NKE2INHM1923', 'Olive', '0', 0.0000, '#N/A', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(230, 'Wine berry silk three pcs set', 'wine-berry-silk-three-pcs-set', 1, 77, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015SKE2INHS2223/117.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015SKE2INHS2223/117.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015SKE2INHS2223/118.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015SKE2INHS2223/119.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WSS015SKE2INHS2223/120.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WSS015SKE2INHS2223', 'Brown,Pink', '0', 0.0000, 'The preparation of grey and the dyeing of cloths are other flourishing processes for this three pcs. Elegent silk and natural dyed color.', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(231, 'Leucojum Crop Top', 'leucojum-crop-top', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WTO011SKE2INHC2123/229.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WTO011SKE2INHC2123/229.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WTO011SKE2INHC2123/230.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WTO011SKE2INHC2123/231.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/WTO011SKE2INHC2123/232.jpg', '', '0', '0 ', '0 ', 'cm', NULL, 0, 'WTO011SKE2INHC2123', 'Blue,Olive', '0', 0.0000, 'Wax print Indigo Khadi Cotton crop top dyed in natural color is a perfect wear for any occasion', 1, 0, 0, 1, '2023-10-19 10:49:27', NULL, '2023-10-19 10:49:27'),
(232, 'Piscina Baby Khadi Jacket', 'piscina-baby-khadi-jacket', 3, 83, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0170029NK09193719/23_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0170029NK09193719/23_1.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/Aranya_new_products/K0170029NK09193719/23_2.jpg', NULL, NULL, NULL, '0', '0', '0', 'cm', NULL, 0, 'K0170029NK09193719', 'Blue', '0', 0.0000, '<p>The beautiful tones of blue in this jacket are made from colors extracted from organically grown indigo.</p><p>The wax print has been used on khadi fabric to make magical patterns.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</p>', 1, 0, 0, 1, '2023-10-19 11:35:00', NULL, '2023-10-19 13:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_artists`
--

CREATE TABLE `product_artists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_brands`
--

CREATE TABLE `product_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_brands`
--

INSERT INTO `product_brands` (`id`, `product_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 2, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 3, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 4, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 5, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 6, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 7, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 8, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 9, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 10, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 11, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 12, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 13, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 14, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 15, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 16, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 17, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 18, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 19, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 20, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 21, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 22, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 23, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 24, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 25, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 26, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 27, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 28, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 29, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 30, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 31, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 32, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 33, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 34, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 35, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 36, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 37, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 38, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 39, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 40, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 41, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 42, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 43, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 44, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 45, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 46, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 47, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 48, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 49, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 50, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 51, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 52, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 53, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 54, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 55, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 56, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 57, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 58, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 59, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 60, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 61, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 62, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 63, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 64, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 65, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 66, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 67, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 68, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(69, 69, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(70, 70, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 71, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(72, 72, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(73, 73, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(74, 74, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(75, 75, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(76, 76, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(77, 77, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(78, 78, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(79, 79, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(80, 80, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(81, 81, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(82, 82, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(83, 83, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(84, 84, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(85, 85, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(86, 86, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(87, 87, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(88, 88, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(89, 89, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(90, 90, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(91, 91, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(92, 92, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 93, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 94, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 95, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 96, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 97, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 98, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 99, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 100, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 101, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 102, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 103, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 104, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 105, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 106, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 107, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 108, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 109, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 110, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 111, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 112, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 113, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 114, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 115, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 116, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 117, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 118, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 119, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 120, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 121, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 122, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 123, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 124, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 125, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 126, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 127, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 128, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 129, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 130, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 131, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 132, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 133, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 134, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 135, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 136, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 137, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 138, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(139, 139, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(140, 140, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(141, 141, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(142, 142, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(143, 143, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(144, 144, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(145, 145, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(146, 146, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(147, 147, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(148, 148, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(149, 149, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(150, 150, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(151, 151, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(152, 152, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(153, 153, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(154, 154, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(155, 155, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(156, 156, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(157, 157, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(158, 158, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(159, 159, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(160, 160, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(161, 161, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(162, 162, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(163, 163, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(164, 164, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(165, 165, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(166, 166, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(167, 167, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(168, 168, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(169, 169, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(170, 170, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(171, 171, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(172, 172, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(173, 173, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(174, 174, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(175, 175, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(176, 176, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(177, 177, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(178, 178, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(179, 179, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(180, 180, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(181, 181, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(182, 182, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(183, 183, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(184, 184, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(185, 185, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(186, 186, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(187, 187, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(188, 188, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(189, 189, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(190, 190, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(191, 191, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(192, 192, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(193, 193, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(194, 194, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(195, 195, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(196, 196, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(197, 197, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(198, 198, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(199, 199, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(200, 200, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(201, 201, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(202, 202, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(203, 203, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 204, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 205, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 206, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 207, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 208, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 209, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 210, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 211, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 212, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 213, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 214, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 215, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 216, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 217, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 218, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 219, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 220, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 221, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 222, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 223, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 224, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 225, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 226, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 227, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 228, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 229, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(230, 230, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(231, 231, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(232, 232, 1, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_cares`
--

CREATE TABLE `product_cares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `care_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_cares`
--

INSERT INTO `product_cares` (`id`, `product_id`, `care_id`, `created_at`, `updated_at`) VALUES
(1, 3, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 4, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 5, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 6, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 7, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 8, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 9, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 10, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 11, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 12, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 13, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 14, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(13, 15, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(14, 16, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(15, 17, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 18, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 19, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 20, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 21, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 22, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 23, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 24, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 25, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 26, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 27, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 28, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 29, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 30, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 31, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 32, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 33, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 34, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 35, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 36, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 37, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 38, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 39, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 40, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 41, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 42, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 43, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 44, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 45, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 46, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 47, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 48, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 49, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 50, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 51, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 52, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 53, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 54, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 55, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 56, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 57, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 58, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 59, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 60, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 61, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 62, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 63, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 64, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 65, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 66, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 67, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 68, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 69, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 70, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(69, 71, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(70, 72, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 73, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(72, 74, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(73, 75, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(74, 76, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(75, 77, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(76, 78, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(77, 79, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(78, 80, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(79, 81, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(80, 82, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(81, 83, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(82, 84, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(83, 85, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(84, 86, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(85, 87, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(86, 88, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(87, 89, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(88, 90, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(89, 91, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(90, 92, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(91, 93, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(92, 94, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 95, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 96, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 97, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 98, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 99, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 100, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 101, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 102, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 103, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 104, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 105, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 106, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 107, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 108, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 109, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 110, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 111, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 112, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 113, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 114, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 115, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 116, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 117, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 118, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 119, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 120, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 121, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 122, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 123, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 124, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 125, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 126, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 127, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 128, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 129, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 130, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 131, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 132, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 133, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 134, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 135, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 136, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 137, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 138, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 139, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 140, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(139, 141, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(140, 142, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(141, 143, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(142, 144, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(143, 145, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(144, 146, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(145, 147, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(146, 148, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(147, 149, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(148, 150, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(149, 151, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(150, 152, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(151, 153, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(152, 154, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(153, 155, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(154, 156, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(155, 157, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(156, 158, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(157, 159, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(158, 160, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(159, 161, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(160, 162, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(161, 163, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(162, 164, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(163, 165, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(164, 166, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(165, 167, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(166, 168, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(167, 169, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(168, 170, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(169, 171, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(170, 172, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(171, 173, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(172, 174, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(173, 175, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(174, 176, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(175, 177, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(176, 178, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(177, 179, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(178, 180, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(179, 181, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(180, 182, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(181, 183, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(182, 184, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(183, 185, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(184, 186, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(185, 187, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(186, 188, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(187, 189, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(188, 190, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(189, 191, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(190, 192, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(191, 193, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(192, 194, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(193, 195, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(194, 196, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(195, 197, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(196, 198, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(197, 199, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(198, 200, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(199, 201, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(200, 202, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(201, 203, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(202, 204, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(203, 205, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 206, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 207, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 208, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 209, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 210, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 211, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 212, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 213, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 214, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 215, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 216, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 217, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 218, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 219, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 220, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 221, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 222, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 223, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 224, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 225, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 226, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 227, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 228, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 229, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 230, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 231, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(230, 232, 6, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_colours`
--

CREATE TABLE `product_colours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `colour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colours`
--

INSERT INTO `product_colours` (`id`, `product_id`, `colour_id`, `created_at`, `updated_at`) VALUES
(1, 232, 0, '2023-10-19 12:33:24', '2023-10-19 12:33:24'),
(2, 2, 0, '2023-10-22 10:31:16', '2023-10-22 10:31:16'),
(3, 52, 0, '2023-10-23 07:31:09', '2023-10-23 07:31:09'),
(4, 159, 0, '2023-10-30 04:44:26', '2023-10-30 04:44:26'),
(5, 143, 0, '2023-11-16 00:34:06', '2023-11-16 00:34:06'),
(6, 146, 0, '2023-11-16 00:37:38', '2023-11-16 00:37:38'),
(7, 149, 0, '2023-11-16 03:02:59', '2023-11-16 03:02:59'),
(8, 147, 0, '2023-11-16 03:37:56', '2023-11-16 03:37:56'),
(9, 145, 0, '2023-11-16 03:43:45', '2023-11-16 03:43:45'),
(11, 144, 17, '2023-11-19 06:02:51', '2023-11-19 06:02:51'),
(12, 144, 12, '2023-11-19 06:02:51', '2023-11-19 06:02:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_consignments`
--

CREATE TABLE `product_consignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `consignment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_designers`
--

CREATE TABLE `product_designers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `designer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_designers`
--

INSERT INTO `product_designers` (`id`, `product_id`, `designer_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 2, 5, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 3, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 4, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 5, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 6, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 7, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 8, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 9, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 10, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 11, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 12, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 13, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 14, 12, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 15, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 16, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 17, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 18, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 20, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 21, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 22, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 23, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 24, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 25, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 26, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 27, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 28, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 29, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 30, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 31, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 32, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 33, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 34, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 35, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 37, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 38, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 39, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 40, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 41, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 42, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 43, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 44, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 45, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 46, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 47, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 48, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 49, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 50, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 51, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 52, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 53, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 54, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 55, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 56, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 57, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 58, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 59, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 60, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 61, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 62, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 63, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 64, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 65, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 66, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 67, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 68, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 69, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 70, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(69, 71, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(70, 72, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 73, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(72, 74, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(73, 75, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(74, 76, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(75, 77, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(76, 78, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(77, 79, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(78, 80, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(79, 81, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(80, 82, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(81, 83, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(82, 84, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(83, 85, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(84, 86, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(85, 87, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(86, 88, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(87, 89, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(88, 90, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(89, 91, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(90, 92, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(91, 93, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(92, 94, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 95, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 96, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 97, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 98, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 99, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 100, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 101, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 102, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 103, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 104, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 105, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 106, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 107, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 108, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 109, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 110, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 111, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 112, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 113, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 114, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 115, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 116, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 117, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 118, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 119, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 120, 13, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 121, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 122, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 123, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 124, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 125, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 126, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 127, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 128, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 129, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 130, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 131, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 132, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 134, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 135, 12, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 136, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 137, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 138, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 139, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 140, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 141, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(139, 142, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(140, 143, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(141, 144, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(142, 145, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(143, 146, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(144, 147, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(145, 148, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(146, 149, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(147, 150, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(148, 151, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(149, 152, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(150, 153, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(151, 154, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(152, 155, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(153, 156, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(154, 157, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(155, 158, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(156, 159, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(157, 160, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(158, 161, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(159, 162, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(160, 163, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(161, 164, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(162, 165, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(163, 166, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(164, 167, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(165, 168, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(166, 169, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(167, 170, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(168, 171, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(169, 172, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(170, 173, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(171, 174, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(172, 175, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(173, 176, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(174, 177, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(175, 178, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(176, 179, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(177, 180, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(178, 181, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(179, 182, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(180, 183, 15, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(181, 184, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(182, 185, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(183, 186, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(184, 187, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(185, 188, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(186, 189, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(187, 190, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(188, 191, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(189, 192, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(190, 193, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(191, 194, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(192, 195, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(193, 196, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(194, 197, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(195, 198, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(196, 199, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(197, 200, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(198, 201, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(199, 202, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(200, 203, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(201, 204, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(202, 205, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(203, 206, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 207, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 208, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 209, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 210, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 211, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 212, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 213, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 214, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 215, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 216, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 217, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 218, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 219, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 220, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 221, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 222, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 223, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 224, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 225, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 226, 19, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 227, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 228, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 229, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 230, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 231, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 232, 10, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_embellishments`
--

CREATE TABLE `product_embellishments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `embellishment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_embellishments`
--

INSERT INTO `product_embellishments` (`id`, `product_id`, `embellishment_id`, `created_at`, `updated_at`) VALUES
(1, 1, 15, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 2, 13, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 3, 2, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 4, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 5, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 6, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 7, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 8, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 9, 13, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 10, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 11, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 12, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 13, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 14, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 15, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 16, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 17, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 18, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 20, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 21, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 22, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 24, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 25, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 26, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 27, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 28, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 29, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 30, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 31, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 32, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 33, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 34, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 34, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 35, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 37, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 38, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 39, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 40, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 41, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 42, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 43, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 44, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 45, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 46, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 47, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 48, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 49, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 50, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 51, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 52, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 53, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 54, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 55, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 56, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 57, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 58, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 59, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 60, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 61, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 62, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 63, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 63, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 64, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 65, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 66, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 67, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 68, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 69, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(69, 70, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(70, 71, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 72, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(72, 73, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(73, 74, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(74, 75, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(75, 76, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(76, 77, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(77, 78, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(78, 80, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(79, 81, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(80, 82, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(81, 83, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(82, 84, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(83, 85, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(84, 86, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(85, 87, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(86, 88, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(87, 89, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(88, 90, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(89, 91, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(90, 92, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(91, 93, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(92, 94, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 95, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 96, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 97, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 98, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 99, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 100, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 101, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 102, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 103, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 104, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 105, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 106, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 107, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 108, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 108, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 109, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 110, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 111, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 112, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 113, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 114, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 115, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 116, 13, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 117, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 118, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 119, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 120, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 121, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 122, 13, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 123, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 124, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 125, 16, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 126, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 127, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 128, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 129, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 130, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 131, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 132, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 134, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 135, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 136, 16, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 137, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 138, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 139, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 140, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(139, 141, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(140, 142, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(141, 143, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(142, 144, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(143, 145, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(144, 146, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(145, 147, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(146, 148, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(147, 149, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(148, 150, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(149, 150, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(150, 151, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(151, 152, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(152, 153, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(153, 154, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(154, 155, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(155, 156, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(156, 157, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(157, 158, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(158, 159, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(159, 160, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(160, 161, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(161, 162, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(162, 163, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(163, 164, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(164, 165, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(165, 166, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(166, 167, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(167, 168, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(168, 169, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(169, 170, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(170, 171, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(171, 172, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(172, 173, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(173, 174, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(174, 175, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(175, 176, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(176, 177, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(177, 178, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(178, 179, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(179, 180, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(180, 181, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(181, 182, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(182, 183, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(183, 184, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(184, 185, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(185, 186, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(186, 187, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(187, 188, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(188, 189, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(189, 190, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(190, 191, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(191, 192, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(192, 193, 16, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(193, 194, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(194, 195, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(195, 196, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(196, 197, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(197, 198, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(198, 199, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(199, 200, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(200, 201, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(201, 202, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(202, 203, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(203, 204, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 205, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 206, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 207, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 208, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 209, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 210, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 211, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 212, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 213, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 214, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 215, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 216, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 217, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 218, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 219, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 220, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 221, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 222, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 223, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 224, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 225, 8, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 226, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 227, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 228, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 229, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 230, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(230, 231, 18, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(231, 232, 18, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_fabrics`
--

CREATE TABLE `product_fabrics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `fabric_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_fabrics`
--

INSERT INTO `product_fabrics` (`id`, `product_id`, `fabric_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 2, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 3, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 4, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 5, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 6, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 7, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 8, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 9, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 10, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 11, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 12, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 13, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 14, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 15, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 16, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 17, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 18, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 20, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 21, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 22, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 23, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 24, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 25, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 26, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 27, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 28, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 29, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 30, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 31, 26, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 32, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 33, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 34, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 35, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 37, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 38, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 39, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 40, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 41, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 42, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 43, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 44, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 45, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 46, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 47, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 48, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 49, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 50, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 51, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 52, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 53, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 54, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 55, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 56, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 57, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 58, 28, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 59, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 60, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 61, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 62, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 63, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 64, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 65, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 66, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 67, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 68, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 69, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 70, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(69, 71, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(70, 72, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 73, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(72, 74, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(73, 75, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(74, 76, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(75, 77, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(76, 78, 42, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(77, 79, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(78, 80, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(79, 81, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(80, 82, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(81, 83, 28, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(82, 84, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(83, 85, 28, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(84, 86, 28, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(85, 87, 28, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(86, 88, 28, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(87, 89, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(88, 90, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(89, 91, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(90, 92, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(91, 93, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(92, 94, 47, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 95, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 96, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 97, 31, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 98, 43, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 99, 43, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 100, 44, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 101, 44, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 102, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 103, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 104, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 105, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 106, 39, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 107, 39, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 108, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 109, 39, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 110, 38, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 111, 39, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 112, 38, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 113, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 114, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 115, 18, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 116, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 117, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 118, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 119, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 120, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 121, 14, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 122, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 123, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 124, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 125, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 126, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 127, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 128, 41, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 129, 41, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 130, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 131, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 132, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 134, 25, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 135, 25, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 136, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 137, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 138, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 139, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 140, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 141, 23, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(139, 142, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(140, 143, 23, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(141, 144, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(142, 145, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(143, 146, 28, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(144, 147, 46, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(145, 148, 45, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(146, 149, 45, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(147, 150, 45, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(148, 151, 45, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(149, 152, 44, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(150, 153, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(151, 154, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(152, 155, 42, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(153, 156, 48, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(154, 157, 41, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(155, 158, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(156, 159, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(157, 160, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(158, 161, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(159, 162, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(160, 163, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(161, 164, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(162, 165, 23, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(163, 166, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(164, 167, 35, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(165, 168, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(166, 169, 23, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(167, 170, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(168, 171, 40, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(169, 172, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(170, 173, 30, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(171, 174, 14, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(172, 175, 41, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(173, 176, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(174, 177, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(175, 178, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(176, 179, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(177, 180, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(178, 181, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(179, 182, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(180, 183, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(181, 184, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(182, 185, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(183, 186, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(184, 187, 14, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(185, 188, 14, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(186, 189, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(187, 190, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(188, 191, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(189, 192, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(190, 193, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(191, 194, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(192, 195, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(193, 196, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(194, 197, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(195, 198, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(196, 199, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(197, 200, 14, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(198, 201, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(199, 202, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(200, 203, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(201, 204, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(202, 205, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(203, 206, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 207, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 208, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 209, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 210, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 211, 39, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 212, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 213, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 214, 14, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 215, 30, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 216, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 217, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 218, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 219, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 220, 38, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 221, 35, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 222, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 223, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 224, 37, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 225, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 226, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 227, 23, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 228, 35, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 229, 35, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 230, 25, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 231, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 232, 21, '2023-10-19 11:35:00', '2023-10-19 11:35:00'),
(230, 149, 47, '2023-11-16 03:03:46', '2023-11-16 03:03:46'),
(231, 149, 2, '2023-11-16 03:07:21', '2023-11-16 03:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_fits`
--

CREATE TABLE `product_fits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `fit_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_fits`
--

INSERT INTO `product_fits` (`id`, `product_id`, `fit_id`, `created_at`, `updated_at`) VALUES
(1, 42, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(2, 44, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(3, 47, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_ingredients`
--

CREATE TABLE `product_ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `ingredients_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ingredients`
--

INSERT INTO `product_ingredients` (`id`, `product_id`, `ingredients_id`, `created_at`, `updated_at`) VALUES
(1, 2, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 3, 4, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 4, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 4, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 5, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 6, 3, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 6, 12, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 7, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 8, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 8, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 9, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 10, 2, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 11, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 12, 3, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 12, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(16, 13, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(17, 14, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 14, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 15, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 16, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 17, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 18, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 18, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 20, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 21, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 21, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 22, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 22, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 24, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 25, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 26, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 27, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 27, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 28, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 29, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 30, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 31, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 32, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 33, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 33, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 34, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 35, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 37, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 37, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 37, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 38, 5, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 39, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 40, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 40, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 41, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 42, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 43, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 43, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 44, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 44, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 45, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 45, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 46, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 47, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 47, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 48, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 48, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 49, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 49, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 50, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 51, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 52, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 52, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(69, 53, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(70, 54, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(71, 55, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(72, 56, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(73, 56, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(74, 57, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(75, 57, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(76, 58, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(77, 58, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(78, 59, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(79, 59, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(80, 60, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(81, 61, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(82, 61, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(83, 62, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(84, 62, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(85, 63, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(86, 64, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(87, 65, 10, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(88, 65, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(89, 67, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(90, 68, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(91, 69, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(92, 70, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 70, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 71, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 72, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 72, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 73, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 73, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 74, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 74, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 75, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 75, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 76, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 77, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 77, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 78, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 79, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 80, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 80, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 81, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 81, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 81, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 82, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 82, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 83, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 84, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 84, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 85, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 86, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 87, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 88, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 89, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 89, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 90, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 90, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 91, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 91, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 92, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 93, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 93, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 94, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 94, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 95, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 95, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 96, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 96, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 96, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 102, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(139, 102, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(140, 103, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(141, 103, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(142, 104, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(143, 104, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(144, 104, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(145, 105, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(146, 105, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(147, 106, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(148, 107, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(149, 108, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(150, 108, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(151, 108, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(152, 109, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(153, 109, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(154, 109, 11, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(155, 110, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(156, 110, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(157, 110, 9, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(158, 111, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(159, 111, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(160, 111, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(161, 112, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(162, 112, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(163, 112, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(164, 113, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(165, 113, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(166, 114, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(167, 114, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(168, 115, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(169, 116, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(170, 117, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(171, 118, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(172, 119, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(173, 119, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(174, 120, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(175, 121, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(176, 121, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(177, 122, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(178, 123, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(179, 124, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(180, 124, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(181, 125, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(182, 126, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(183, 127, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(184, 128, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(185, 129, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(186, 129, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(187, 130, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(188, 130, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(189, 131, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(190, 132, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(191, 132, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(192, 134, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(193, 134, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(194, 135, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(195, 136, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(196, 137, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(197, 137, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(198, 138, 10, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(199, 138, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(200, 139, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(201, 140, 6, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(202, 140, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(203, 141, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 142, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 143, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 144, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 144, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 145, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 146, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 147, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 148, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 148, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 149, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 149, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 150, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 150, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 151, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 153, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 154, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 154, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 155, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 156, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 157, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 157, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 158, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 159, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 161, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 162, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 163, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(230, 164, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(231, 165, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(232, 166, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(233, 166, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(234, 166, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(235, 167, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(236, 167, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(237, 168, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(238, 168, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(239, 169, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(240, 169, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(241, 170, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(242, 170, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(243, 171, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(244, 172, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(245, 173, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(246, 173, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(247, 174, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(248, 175, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(249, 175, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(250, 176, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(251, 176, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(252, 177, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(253, 177, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(254, 177, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(255, 178, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(256, 178, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(257, 179, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(258, 179, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(259, 180, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(260, 180, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(261, 180, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(262, 181, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(263, 182, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(264, 182, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(265, 183, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(266, 183, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(267, 184, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(268, 184, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(269, 185, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(270, 185, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(271, 186, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(272, 187, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(273, 187, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(274, 187, 11, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(275, 188, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(276, 188, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(277, 189, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(278, 190, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(279, 190, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(280, 191, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(281, 192, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(282, 192, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(283, 192, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(284, 193, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(285, 194, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(286, 194, 12, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(287, 195, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(288, 196, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(289, 196, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(290, 197, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(291, 198, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(292, 198, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(293, 199, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(294, 199, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(295, 199, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(296, 200, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(297, 201, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(298, 201, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(299, 202, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(300, 203, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(301, 203, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(302, 204, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(303, 205, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(304, 205, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(305, 205, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(306, 206, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(307, 206, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(308, 206, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(309, 207, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(310, 208, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(311, 208, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(312, 209, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(313, 209, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(314, 209, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(315, 210, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(316, 210, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(317, 211, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(318, 211, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(319, 212, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(320, 212, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(321, 213, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(322, 213, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(323, 214, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(324, 214, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(325, 215, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(326, 215, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(327, 215, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(328, 216, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(329, 216, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(330, 216, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(331, 217, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(332, 218, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(333, 219, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(334, 219, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(335, 220, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(336, 220, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(337, 221, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(338, 222, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(339, 223, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(340, 223, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(341, 224, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(342, 225, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(343, 225, 6, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(344, 226, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(345, 227, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(346, 228, 13, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(347, 229, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(348, 229, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(349, 230, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(350, 230, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(351, 231, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(352, 231, 7, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(353, 231, 10, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(354, 232, 3, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_makings`
--

CREATE TABLE `product_makings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `making_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_makings`
--

INSERT INTO `product_makings` (`id`, `product_id`, `making_id`, `created_at`, `updated_at`) VALUES
(1, 14, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 15, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(3, 113, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(4, 114, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(5, 115, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(6, 230, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_seasons`
--

CREATE TABLE `product_seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `season_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_seasons`
--

INSERT INTO `product_seasons` (`id`, `product_id`, `season_id`, `created_at`, `updated_at`) VALUES
(1, 2, 13, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 3, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 4, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 5, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 6, 13, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 7, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 8, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 9, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 10, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 11, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 12, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 13, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 14, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(14, 15, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(15, 20, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 21, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 22, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 23, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 24, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 25, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 26, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 27, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 28, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 29, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 30, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 31, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 32, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 37, 15, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 39, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 40, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 41, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 42, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 43, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 45, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 46, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 47, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 48, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 49, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 50, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 51, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 52, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 53, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 54, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 63, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 64, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 65, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 66, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 67, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 68, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 69, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 70, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(52, 71, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(53, 95, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(54, 113, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(55, 114, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(56, 115, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(57, 116, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(58, 117, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(59, 119, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(60, 120, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(61, 122, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(62, 123, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(63, 124, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(64, 125, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(65, 126, 7, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(66, 136, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(67, 137, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(68, 138, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(69, 139, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(70, 140, 8, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 232, 8, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 2, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 2, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 2, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 2, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 2, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 2, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 2, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 3, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 3, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 3, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 3, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 3, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 3, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 3, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 4, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(16, 4, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(17, 4, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(18, 4, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(19, 4, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(20, 4, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(21, 4, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(22, 5, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(23, 5, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(24, 5, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(25, 5, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(26, 5, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(27, 5, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(28, 5, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(29, 6, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(30, 6, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(31, 6, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(32, 6, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(33, 6, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(34, 6, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(35, 6, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(36, 7, 6, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(37, 7, 13, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(38, 7, 14, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(39, 7, 15, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(40, 8, 8, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(41, 8, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(42, 8, 12, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(43, 9, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(44, 9, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(45, 9, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(46, 9, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(47, 9, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(48, 9, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(49, 9, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(50, 10, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(51, 10, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(52, 10, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(53, 10, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(54, 10, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(55, 10, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(56, 10, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(57, 11, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(58, 11, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(59, 11, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(60, 11, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(61, 11, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(62, 11, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(63, 11, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(64, 12, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(65, 12, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(66, 12, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(67, 12, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(68, 12, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(69, 12, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(70, 12, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(71, 13, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(72, 13, 16, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(73, 13, 17, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(74, 13, 18, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(75, 13, 7, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(76, 13, 9, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(77, 13, 10, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(78, 14, 11, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(79, 14, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(80, 14, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(81, 14, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(82, 14, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(83, 14, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(84, 15, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(85, 15, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(86, 15, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(87, 15, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(88, 15, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(89, 15, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(90, 16, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(91, 16, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(92, 16, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(93, 16, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(94, 17, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(95, 17, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(96, 17, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(97, 17, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(98, 17, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(99, 17, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(100, 17, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(101, 18, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(102, 18, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(103, 18, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(104, 18, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(105, 18, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(106, 18, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(107, 18, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(108, 18, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(109, 20, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(110, 20, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(111, 20, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(112, 20, 15, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(113, 20, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(114, 20, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(115, 21, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(116, 21, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(117, 21, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(118, 21, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(119, 21, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(120, 21, 15, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(121, 21, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(122, 22, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(123, 22, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(124, 22, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(125, 22, 15, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(126, 23, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(127, 23, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(128, 23, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(129, 24, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(130, 24, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(131, 24, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(132, 24, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(133, 25, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(134, 25, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(135, 25, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(136, 25, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(137, 26, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(138, 26, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(139, 26, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(140, 26, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(141, 26, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(142, 27, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(143, 27, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(144, 27, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(145, 27, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(146, 27, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(147, 28, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(148, 28, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(149, 29, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(150, 29, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(151, 30, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(152, 30, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(153, 30, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(154, 31, 8, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(155, 31, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(156, 31, 12, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(157, 31, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(158, 31, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(159, 31, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(160, 32, 11, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(161, 32, 16, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(162, 32, 17, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(163, 32, 18, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(164, 32, 7, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(165, 32, 9, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(166, 33, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(167, 33, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(168, 33, 14, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(169, 33, 15, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(170, 34, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(171, 34, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(172, 35, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(173, 35, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(174, 36, 6, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(175, 36, 13, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(176, 37, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(177, 37, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(178, 37, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(179, 37, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(180, 37, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(181, 38, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(182, 38, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(183, 38, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(184, 38, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(185, 38, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(186, 39, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(187, 39, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(188, 39, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(189, 39, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(190, 39, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(191, 40, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(192, 40, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(193, 40, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(194, 40, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(195, 40, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(196, 41, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(197, 41, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(198, 41, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(199, 41, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(200, 41, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(201, 42, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(202, 42, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(203, 42, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(204, 42, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(205, 42, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(206, 43, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(207, 43, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(208, 43, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(209, 43, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(210, 43, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(211, 44, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(212, 44, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(213, 44, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(214, 44, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(215, 44, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(216, 45, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(217, 45, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(218, 45, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(219, 45, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(220, 45, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(221, 46, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(222, 46, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(223, 46, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(224, 46, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(225, 46, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(226, 47, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(227, 47, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(228, 47, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(229, 47, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(230, 47, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(231, 48, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(232, 48, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(233, 48, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(234, 48, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(235, 48, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(236, 49, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(237, 49, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(238, 49, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(239, 49, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(240, 49, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(241, 50, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(242, 50, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(243, 50, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(244, 50, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(245, 50, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(246, 51, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(247, 51, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(248, 51, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(249, 51, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(250, 51, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(251, 52, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(252, 52, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(253, 52, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(254, 52, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(255, 52, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(256, 53, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(257, 53, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(258, 53, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(259, 53, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(260, 53, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(261, 54, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(262, 54, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(263, 54, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(264, 54, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(265, 54, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(266, 55, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(267, 55, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(268, 55, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(269, 55, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(270, 55, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(271, 56, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(272, 56, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(273, 56, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(274, 56, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(275, 56, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(276, 57, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(277, 57, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(278, 57, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(279, 57, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(280, 57, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(281, 58, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(282, 58, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(283, 58, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(284, 58, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(285, 58, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(286, 59, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(287, 59, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(288, 59, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(289, 59, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(290, 59, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(291, 60, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(292, 60, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(293, 60, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(294, 60, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(295, 60, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(296, 61, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(297, 61, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(298, 61, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(299, 61, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(300, 61, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(301, 62, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(302, 62, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(303, 62, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(304, 62, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(305, 62, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(306, 63, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(307, 63, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(308, 63, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(309, 63, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(310, 63, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(311, 64, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(312, 64, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(313, 64, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(314, 64, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(315, 64, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(316, 65, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(317, 65, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(318, 65, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(319, 65, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(320, 65, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(321, 66, 19, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(322, 66, 20, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(323, 66, 21, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(324, 66, 22, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(325, 66, 23, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(326, 67, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(327, 67, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(328, 67, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(329, 67, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(330, 68, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(331, 68, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(332, 68, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(333, 68, 4, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(334, 69, 2, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(335, 69, 3, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(336, 69, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(337, 69, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(338, 70, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(339, 70, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(340, 70, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(341, 70, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(342, 71, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(343, 71, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(344, 71, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(345, 71, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(346, 72, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(347, 72, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(348, 72, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(349, 72, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(350, 72, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(351, 73, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(352, 73, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(353, 73, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(354, 73, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(355, 73, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(356, 74, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(357, 74, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(358, 74, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(359, 74, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(360, 74, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(361, 75, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(362, 75, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(363, 75, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(364, 75, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(365, 75, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(366, 76, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(367, 76, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(368, 76, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(369, 76, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(370, 76, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(371, 77, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(372, 77, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(373, 77, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(374, 77, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(375, 77, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(376, 78, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(377, 78, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(378, 78, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(379, 78, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(380, 78, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(381, 79, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(382, 79, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(383, 79, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(384, 79, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(385, 79, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(386, 80, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(387, 80, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(388, 80, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(389, 80, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(390, 80, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(391, 81, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(392, 81, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(393, 81, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(394, 81, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(395, 81, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(396, 82, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(397, 82, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(398, 82, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(399, 82, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(400, 82, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(401, 83, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(402, 83, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(403, 83, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(404, 83, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(405, 83, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(406, 84, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(407, 84, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(408, 84, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(409, 84, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(410, 84, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(411, 85, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(412, 85, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(413, 85, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(414, 85, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(415, 85, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(416, 86, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(417, 86, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(418, 86, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(419, 86, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(420, 86, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(421, 87, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(422, 87, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(423, 87, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(424, 87, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(425, 87, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(426, 88, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(427, 88, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(428, 88, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(429, 88, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(430, 88, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(431, 89, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(432, 89, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(433, 89, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(434, 89, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(435, 89, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(436, 90, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(437, 90, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(438, 90, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(439, 90, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(440, 90, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(441, 91, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(442, 91, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(443, 91, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(444, 92, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(445, 92, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(446, 92, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(447, 93, 19, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(448, 93, 20, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(449, 93, 21, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(450, 93, 22, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(451, 93, 23, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(452, 113, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(453, 113, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(454, 113, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(455, 113, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(456, 113, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(457, 114, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(458, 114, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(459, 114, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(460, 114, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(461, 114, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(462, 115, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(463, 115, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(464, 115, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(465, 115, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(466, 115, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(467, 116, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(468, 116, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(469, 116, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(470, 116, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(471, 116, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(472, 117, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(473, 117, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(474, 117, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(475, 117, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(476, 117, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(477, 118, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(478, 118, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(479, 118, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(480, 118, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(481, 118, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(482, 119, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(483, 119, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(484, 119, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(485, 119, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(486, 119, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(487, 122, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(488, 122, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(489, 123, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(490, 123, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(491, 123, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(492, 124, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(493, 124, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(494, 124, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(495, 124, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(496, 125, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(497, 125, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(498, 125, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(499, 125, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(500, 126, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(501, 126, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(502, 126, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(503, 126, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(504, 127, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(505, 127, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(506, 128, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(507, 128, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(508, 129, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(509, 129, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(510, 130, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(511, 130, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(512, 131, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(513, 131, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(514, 132, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(515, 132, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(516, 132, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(517, 132, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(518, 132, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(519, 134, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(520, 134, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(521, 135, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(522, 135, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(523, 135, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(524, 136, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(525, 136, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(526, 136, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(527, 136, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(528, 137, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(529, 137, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(530, 137, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(531, 137, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(532, 137, 5, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(533, 138, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(534, 138, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(535, 138, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(536, 138, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(537, 139, 2, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(538, 139, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(539, 139, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(540, 139, 4, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(541, 140, 3, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(542, 140, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(543, 140, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(544, 141, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(545, 141, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(546, 141, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(547, 142, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(548, 142, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(549, 142, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(550, 143, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(551, 144, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(552, 144, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(553, 145, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(554, 145, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(555, 146, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(556, 146, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(557, 147, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(558, 147, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(559, 154, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(560, 154, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(561, 154, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(562, 155, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(563, 155, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(564, 155, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(565, 156, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(566, 156, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(567, 156, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(568, 157, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(569, 157, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(570, 157, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(571, 158, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(572, 158, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(573, 158, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(574, 159, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(575, 159, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(576, 159, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(577, 160, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(578, 160, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(579, 160, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(580, 161, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(581, 161, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(582, 161, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(583, 162, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(584, 162, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(585, 162, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(586, 163, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(587, 163, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(588, 163, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(589, 227, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(590, 227, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(591, 227, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(592, 227, 5, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(593, 228, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(594, 228, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(595, 228, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(596, 229, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(597, 229, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(598, 229, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(599, 230, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(600, 230, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(601, 230, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(602, 230, 4, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(603, 230, 5, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(604, 231, 2, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(605, 231, 3, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(606, 231, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(608, 232, 13, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `keyword_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `keyword_name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 143, 'new Style', NULL, 1, NULL, NULL),
(2, 146, '2023', NULL, 1, NULL, NULL),
(3, 149, 'dhfgh', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_varieties`
--

CREATE TABLE `product_varieties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variety_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_varieties`
--

INSERT INTO `product_varieties` (`id`, `product_id`, `variety_id`, `created_at`, `updated_at`) VALUES
(1, 14, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(2, 15, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(3, 113, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(4, 114, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(5, 115, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_vendors`
--

CREATE TABLE `product_vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_vendors`
--

INSERT INTO `product_vendors` (`id`, `product_id`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(2, 2, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(3, 3, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(4, 4, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(5, 5, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(6, 6, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(7, 7, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(8, 8, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(9, 9, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(10, 10, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(11, 11, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(12, 12, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(13, 13, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(14, 14, 1, '2023-10-19 10:49:24', '2023-10-19 10:49:24'),
(15, 15, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(16, 16, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(17, 17, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(18, 18, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(19, 19, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(20, 20, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(21, 21, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(22, 22, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(23, 23, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(24, 24, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(25, 25, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(26, 26, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(27, 27, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(28, 28, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(29, 29, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(30, 30, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(31, 31, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(32, 32, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(33, 33, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(34, 34, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(35, 35, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(36, 36, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(37, 37, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(38, 38, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(39, 39, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(40, 40, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(41, 41, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(42, 42, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(43, 43, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(44, 44, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(45, 45, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(46, 46, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(47, 47, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(48, 48, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(49, 49, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(50, 50, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(51, 51, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(52, 52, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(53, 53, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(54, 54, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(55, 55, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(56, 56, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(57, 57, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(58, 58, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(59, 59, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(60, 60, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(61, 61, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(62, 62, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(63, 63, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(64, 64, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(65, 65, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(66, 66, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(67, 67, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(68, 68, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(69, 69, 1, '2023-10-19 10:49:25', '2023-10-19 10:49:25'),
(70, 70, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(71, 71, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(72, 72, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(73, 73, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(74, 74, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(75, 75, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(76, 76, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(77, 77, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(78, 78, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(79, 79, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(80, 80, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(81, 81, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(82, 82, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(83, 83, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(84, 84, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(85, 85, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(86, 86, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(87, 87, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(88, 88, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(89, 89, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(90, 90, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(91, 91, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(92, 92, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(93, 93, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(94, 94, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(95, 95, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(96, 96, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(97, 97, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(98, 98, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(99, 99, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(100, 100, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(101, 101, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(102, 102, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(103, 103, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(104, 104, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(105, 105, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(106, 106, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(107, 107, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(108, 108, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(109, 109, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(110, 110, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(111, 111, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(112, 112, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(113, 113, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(114, 114, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(115, 115, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(116, 116, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(117, 117, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(118, 118, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(119, 119, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(120, 120, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(121, 121, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(122, 122, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(123, 123, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(124, 124, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(125, 125, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(126, 126, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(127, 127, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(128, 128, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(129, 129, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(130, 130, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(131, 131, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(132, 132, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(133, 133, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(134, 134, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(135, 135, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(136, 136, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(137, 137, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(138, 138, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(139, 139, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(140, 140, 1, '2023-10-19 10:49:26', '2023-10-19 10:49:26'),
(141, 141, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(142, 142, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(143, 143, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(144, 144, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(145, 145, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(146, 146, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(147, 147, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(148, 148, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(149, 149, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(150, 150, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(151, 151, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(152, 152, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(153, 153, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(154, 154, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(155, 155, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(156, 156, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(157, 157, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(158, 158, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(159, 159, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(160, 160, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(161, 161, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(162, 162, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(163, 163, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(164, 164, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(165, 165, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(166, 166, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(167, 167, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(168, 168, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(169, 169, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(170, 170, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(171, 171, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(172, 172, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(173, 173, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(174, 174, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(175, 175, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(176, 176, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(177, 177, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(178, 178, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(179, 179, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(180, 180, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(181, 181, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(182, 182, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(183, 183, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(184, 184, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(185, 185, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(186, 186, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(187, 187, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(188, 188, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(189, 189, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(190, 190, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(191, 191, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(192, 192, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(193, 193, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(194, 194, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(195, 195, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(196, 196, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(197, 197, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(198, 198, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(199, 199, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(200, 200, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(201, 201, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(202, 202, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(203, 203, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(204, 204, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(205, 205, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(206, 206, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(207, 207, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(208, 208, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(209, 209, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(210, 210, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(211, 211, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(212, 212, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(213, 213, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(214, 214, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(215, 215, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(216, 216, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(217, 217, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(218, 218, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(219, 219, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(220, 220, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(221, 221, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(222, 222, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(223, 223, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(224, 224, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(225, 225, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(226, 226, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(227, 227, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(228, 228, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(229, 229, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(230, 230, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(231, 231, 1, '2023-10-19 10:49:27', '2023-10-19 10:49:27'),
(232, 232, 1, '2023-10-19 11:35:00', '2023-10-19 11:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `refund_configure`
--

CREATE TABLE `refund_configure` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `refund_within_days` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refund_configure`
--

INSERT INTO `refund_configure` (`id`, `refund_within_days`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2023-05-09 06:26:32', '2023-05-09 06:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, '2023-05-20 23:12:12', '2023-05-20 23:12:12'),
(2, 'Manager', 1, '2023-05-21 05:12:41', '2023-05-21 05:12:42'),
(4, 'Ether', 1, '2023-10-01 06:50:00', '2023-10-01 06:50:00'),
(7, 'Admin', 1, '2023-10-03 10:51:33', '2023-10-03 10:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(2, 1, 2, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(3, 1, 3, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(4, 1, 4, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(5, 1, 5, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(6, 1, 6, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(7, 1, 7, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(8, 1, 8, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(9, 1, 9, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(10, 1, 10, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(11, 1, 11, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(12, 1, 12, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(13, 1, 13, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(14, 1, 14, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(15, 1, 15, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(16, 1, 16, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(17, 1, 17, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(18, 1, 18, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(19, 1, 19, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(20, 1, 20, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(21, 1, 21, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(22, 1, 22, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(23, 1, 23, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(24, 1, 24, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(25, 1, 25, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(26, 1, 26, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(27, 1, 27, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(28, 1, 28, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(29, 1, 29, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(30, 1, 30, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(31, 1, 31, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(32, 1, 32, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(33, 1, 33, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(34, 1, 34, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(35, 1, 35, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(36, 1, 36, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(37, 1, 37, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(38, 1, 38, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(39, 1, 39, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(40, 1, 40, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(41, 1, 41, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(42, 1, 42, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(43, 1, 43, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(44, 1, 44, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(45, 1, 45, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(46, 1, 46, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(47, 1, 47, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(48, 1, 48, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(49, 1, 49, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(50, 1, 50, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(51, 1, 51, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(52, 1, 52, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(53, 1, 53, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(54, 1, 54, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(55, 1, 55, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(56, 1, 56, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(57, 1, 57, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(58, 1, 58, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(59, 1, 59, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(60, 1, 60, '2023-08-01 03:45:08', '2023-08-01 03:45:08'),
(61, 2, 1, '2023-08-01 03:59:34', '2023-08-01 03:59:34'),
(62, 2, 2, '2023-08-01 03:59:34', '2023-08-01 03:59:34'),
(63, 2, 3, '2023-08-01 03:59:34', '2023-08-01 03:59:34'),
(64, 2, 4, '2023-08-01 03:59:34', '2023-08-01 03:59:34'),
(65, 2, 5, '2023-08-01 03:59:34', '2023-08-01 03:59:34'),
(66, 2, 6, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(67, 2, 7, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(68, 2, 8, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(69, 2, 9, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(70, 2, 10, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(71, 2, 15, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(72, 2, 16, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(73, 2, 17, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(74, 2, 18, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(75, 2, 11, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(76, 2, 12, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(77, 2, 13, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(78, 2, 14, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(79, 2, 19, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(80, 2, 20, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(81, 2, 21, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(82, 2, 22, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(83, 2, 23, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(84, 2, 24, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(85, 2, 25, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(86, 2, 35, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(87, 2, 36, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(88, 2, 29, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(89, 2, 30, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(90, 2, 31, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(91, 2, 34, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(92, 2, 32, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(93, 2, 33, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(94, 2, 28, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(95, 2, 27, '2023-08-01 03:59:35', '2023-08-01 03:59:35'),
(96, 2, 26, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(97, 2, 51, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(98, 2, 53, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(99, 2, 54, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(100, 2, 52, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(101, 2, 42, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(102, 2, 43, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(103, 2, 44, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(104, 2, 46, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(105, 2, 48, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(106, 2, 49, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(107, 2, 50, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(108, 2, 45, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(109, 2, 47, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(110, 2, 37, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(111, 2, 38, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(112, 2, 39, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(113, 2, 40, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(114, 2, 41, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(115, 2, 55, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(116, 2, 56, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(117, 2, 57, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(118, 2, 58, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(119, 2, 59, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(120, 2, 60, '2023-08-01 03:59:36', '2023-08-01 03:59:36'),
(127, 4, 19, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(128, 4, 20, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(129, 4, 21, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(130, 4, 22, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(131, 4, 23, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(132, 4, 24, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(133, 4, 25, '2023-10-01 06:53:38', '2023-10-01 06:53:38'),
(199, 7, 1, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(200, 7, 2, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(201, 7, 3, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(202, 7, 4, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(203, 7, 7, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(204, 7, 8, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(205, 7, 9, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(206, 7, 10, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(207, 7, 15, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(208, 7, 16, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(209, 7, 17, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(210, 7, 18, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(211, 7, 19, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(212, 7, 20, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(213, 7, 21, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(214, 7, 22, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(215, 7, 23, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(216, 7, 24, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(217, 7, 25, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(218, 7, 5, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(219, 7, 6, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(220, 7, 26, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(221, 7, 27, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(222, 7, 28, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(223, 7, 29, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(224, 7, 30, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(225, 7, 31, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(226, 7, 32, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(227, 7, 33, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(228, 7, 34, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(229, 7, 35, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(230, 7, 36, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(231, 7, 51, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(232, 7, 52, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(233, 7, 54, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(234, 7, 53, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(235, 7, 42, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(236, 7, 43, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(237, 7, 44, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(238, 7, 45, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(239, 7, 46, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(240, 7, 47, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(241, 7, 48, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(242, 7, 49, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(243, 7, 50, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(244, 7, 58, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(245, 7, 60, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(246, 7, 59, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(247, 7, 55, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(248, 7, 56, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(249, 7, 57, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(250, 7, 41, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(251, 7, 40, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(252, 7, 38, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(253, 7, 37, '2023-10-03 10:51:33', '2023-10-03 10:51:33'),
(254, 7, 39, '2023-10-03 10:51:33', '2023-10-03 10:51:33');

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `season_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `season_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '0871', '0871', NULL, 1, NULL, '2023-03-07 04:57:43', '2023-03-11 09:40:42'),
(2, '1017', '1017', NULL, 1, NULL, '2023-03-07 04:57:50', '2023-03-11 09:41:01'),
(3, 'E118', 'e118', NULL, 1, NULL, '2023-03-07 05:56:59', '2023-03-11 09:41:23'),
(4, 'E120', 'e120', NULL, 1, NULL, '2023-03-07 05:57:04', '2023-03-11 09:41:41'),
(5, 'E217', 'e217', NULL, 1, NULL, '2023-03-11 09:41:59', '2023-03-11 09:41:59'),
(6, 'E218', 'e218', NULL, 1, NULL, '2023-03-11 09:42:16', '2023-03-11 09:42:16'),
(7, 'NA-1', 'na-1', NULL, 1, NULL, '2023-03-11 09:42:43', '2023-03-11 09:42:43'),
(8, 'NO-1', 'no-1', NULL, 1, NULL, '2023-03-11 09:42:50', '2023-03-11 09:42:50'),
(9, 'S117', 's117', NULL, 1, NULL, '2023-03-11 09:43:18', '2023-03-11 09:43:18'),
(10, 'S118', 's118', NULL, 1, NULL, '2023-03-11 09:43:36', '2023-03-11 09:43:36'),
(11, 'S118', 's118', NULL, 1, NULL, '2023-03-11 09:43:36', '2023-03-11 09:43:36'),
(12, 'S119', 's119', NULL, 1, NULL, '2023-03-11 09:43:53', '2023-03-11 09:43:53'),
(13, 'S120', 's120', NULL, 1, NULL, '2023-03-11 09:44:10', '2023-03-11 09:44:10'),
(14, 'C123', 'c123', NULL, 1, NULL, '2023-09-21 11:56:15', '2023-09-21 11:56:15'),
(15, '0817', '0817', NULL, 1, NULL, '2023-10-19 05:45:01', '2023-10-19 05:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_configs`
--

CREATE TABLE `shipping_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country_code` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`shipping_charge`)),
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_configs`
--

INSERT INTO `shipping_configs` (`id`, `country_name`, `country_code`, `shipping_charge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 'BD', '{\"inside_city\":{\"pathao\":123,\"e_courier\":143},\"outside_city\":{\"pathao\":321,\"e_courier\":231}}', 1, '2023-07-20 03:37:34', '2023-07-20 03:37:34'),
(2, 'Afghanistan', 'AF', '{\"amount\":231}', 1, '2023-07-20 03:37:49', '2023-07-20 03:37:49'),
(3, 'Antarctica', 'AQ', '{\"amount\":143}', 1, '2023-07-20 03:38:03', '2023-07-20 03:38:03'),
(4, 'Sri Lanka', 'LK', '{\"amount\":182}', 1, '2023-07-20 03:47:24', '2023-07-20 03:47:24'),
(5, 'Australia', 'AU', '{\"amount\":0}', 1, '2023-10-08 03:51:41', '2023-10-08 03:51:41'),
(6, 'Argentina', 'AR', '{\"amount\":0}', 1, '2023-10-08 03:52:33', '2023-10-08 03:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'S', 's', NULL, 1, NULL, '2023-03-06 16:07:31', '2023-03-06 16:07:31'),
(2, 'L', 'l', NULL, 1, NULL, '2023-03-06 16:07:37', '2023-03-06 16:07:37'),
(3, 'M', 'm', NULL, 1, NULL, '2023-03-06 16:07:44', '2023-03-06 16:07:44'),
(4, 'XL', 'xl', NULL, 1, NULL, '2023-03-06 16:07:50', '2023-03-06 16:07:50'),
(5, 'XXL', 'xxl', NULL, 1, NULL, '2023-03-06 16:08:08', '2023-03-06 16:08:08'),
(6, '0-3 Month', '0-3-month', NULL, 1, NULL, '2023-03-11 08:49:10', '2023-03-11 08:49:10'),
(7, '10-11', '10-11', NULL, 1, NULL, '2023-03-11 08:50:10', '2023-03-11 08:50:10'),
(8, '1-2', '1-2', NULL, 1, NULL, '2023-03-11 08:50:50', '2023-03-11 08:50:50'),
(9, '12-13', '12-13', NULL, 1, NULL, '2023-03-11 08:51:14', '2023-03-11 08:51:14'),
(10, '14-15', '14-15', NULL, 1, NULL, '2023-03-11 08:51:39', '2023-03-11 08:51:39'),
(11, '2-3', '2-3', NULL, 1, NULL, '2023-03-11 08:54:34', '2023-03-11 08:54:34'),
(12, '3-4', '3-4', NULL, 1, NULL, '2023-03-11 08:54:43', '2023-03-11 08:54:43'),
(13, '3-6 Month', '3-6-month', NULL, 1, NULL, '2023-03-11 08:55:14', '2023-03-11 08:55:14'),
(14, '6-9 Month', '6-9-month', NULL, 1, NULL, '2023-03-11 08:55:42', '2023-03-11 08:55:42'),
(15, '9-12 Month', '9-12-month', NULL, 1, NULL, '2023-03-11 08:56:13', '2023-03-11 08:56:13'),
(16, '4-5', '4-5', NULL, 1, NULL, '2023-03-11 08:57:06', '2023-03-11 08:57:06'),
(17, '6-7', '6-7', NULL, 1, NULL, '2023-03-11 08:57:30', '2023-03-11 08:57:30'),
(18, '8-9', '8-9', NULL, 1, NULL, '2023-03-11 08:57:56', '2023-03-11 08:57:56'),
(19, '38', '38', NULL, 1, NULL, '2023-03-11 08:58:28', '2023-03-11 08:58:28'),
(20, '40', '40', NULL, 1, NULL, '2023-03-11 08:58:35', '2023-03-11 08:58:35'),
(21, '42', '42', NULL, 1, NULL, '2023-03-11 08:58:40', '2023-03-11 08:58:40'),
(22, '44', '44', NULL, 1, NULL, '2023-03-11 08:58:45', '2023-03-11 08:58:45'),
(23, '46', '46', NULL, 1, NULL, '2023-03-11 08:58:59', '2023-03-11 08:58:59'),
(24, '55', '55', NULL, 1, NULL, '2023-09-21 11:48:11', '2023-09-21 11:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '0 for dissable the user',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `date_of_birth`, `gender`, `occupation`, `status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Demo', 'nashita.iftekhar@webable.digital', NULL, '$2y$10$iVR6aWZRQJk90303aq2yOOj8uTyUoVX7dFvCGF5hJiRplMFLDNQjK', '01716281725', 'Armanitola', '2023-10-12', 'female', 'Demo', 1, NULL, NULL, '2023-10-19 11:04:31', '2023-10-19 11:10:25'),
(2, NULL, NULL, 'mdalamin', 'mdalamin@test.com', NULL, '$2y$10$BswuvgeF1co84tTplXxrN.QH0fB3crxvc/6uDFSpuIuq9CeZRhd.e', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-10-19 11:30:51', '2023-10-19 11:30:51'),
(3, NULL, NULL, 'Khandoker Shamimul Haque', 'admin@suparadmin.com', NULL, '$2y$10$Q6hSuT8FsXpX3WtGA.yT3OSUVmkA3mJaZ8X/RQXQ1L6gmDCUk0zs2', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-10-19 11:49:32', '2023-10-19 11:49:32'),
(4, NULL, NULL, 'Mika', 'mika@gmail.com', NULL, '$2y$10$klKQz5pNYVWRl86Odof2SOzn65bykLdRGO1UQQn.3b5s6L7l19UqK', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-10-22 07:44:56', '2023-10-22 07:44:56'),
(5, NULL, NULL, 'titi', 'zannatul.ferdous.mim@gmail.com', NULL, NULL, '01847965875', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-10-23 19:52:14', '2023-10-23 19:52:14'),
(6, NULL, NULL, 'MD.AL-AMIN MOJUMDER', 'mdalamin.aranya@gmail.com', NULL, NULL, '01298756342', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-10-24 05:21:37', '2023-10-24 05:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_billing_infos`
--

CREATE TABLE `user_billing_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_billing_infos`
--

INSERT INTO `user_billing_infos` (`id`, `user_id`, `order_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `apartment`, `street_address`, `created_at`, `updated_at`) VALUES
(5, 6, 5, 'Md. Al-Amin', 'Mojumde', 'Bangladesh', 'Dhaka Division', 'mdalamin.aranya@gmail.com', '+8801764414949', '1229', NULL, 'House-1/A, Road-21, Nikunja-2, Khilkhet', '2023-10-24 05:28:00', '2023-10-24 05:28:00'),
(6, 0, 6, 'FFYFG', 'OIKOKOK', 'Bangladesh', 'Dhaka Division', 'sumaiyamakshiba@gmail.com', '01778837799', NULL, 'KMLK', 'LMLK', '2023-10-24 14:19:38', '2023-10-24 14:19:38'),
(8, 0, 8, 'Noshin', 'Nawal Shreya', 'Bangladesh', 'Dhaka Division', 'shre31@yahoo.com', '01713000030', NULL, NULL, 'Address: 4th Floor, House 102 Rangs Anjuman, Park Road, Baridhara Diplomatic Zone Bangladesh', '2023-10-28 17:30:20', '2023-10-28 17:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping_infos`
--

CREATE TABLE `user_shipping_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `corier_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_shipping_infos`
--

INSERT INTO `user_shipping_infos` (`id`, `user_id`, `order_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `street_address`, `apartment`, `created_at`, `updated_at`, `corier_details`) VALUES
(5, 6, 5, 'Md. Al-Amin', 'Mojumde', 'Bangladesh', 'Dhaka Division', 'mdalamin.aranya@gmail.com', '+8801764414949', '1229', 'House-1/A, Road-21, Nikunja-2, Khilkhet,à¦¸à§à¦Ÿà§‹à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®', NULL, '2023-10-24 05:28:00', '2023-10-24 05:28:00', NULL),
(6, 0, 6, 'FFYFG', 'OIKOKOK', 'Bangladesh', 'Dhaka Division', 'sumaiyamakshiba@gmail.com', '01778837799', NULL, 'LMLK,à¦¸à§à¦Ÿà§‹à¦° à¦®à§à¦¯à¦¾à¦¨à§‡à¦œà¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦¿à¦¸à§à¦Ÿà§‡à¦®', 'KMLK', '2023-10-24 14:19:38', '2023-10-24 14:19:38', NULL),
(8, 0, 8, 'Noshin', 'Nawal Shreya', 'Bangladesh', 'Dhaka Division', 'shre31@yahoo.com', '01713000030', NULL, '4th Floor, House 102 Rangs Anjuman, Park Road, Baridhara Diplomatic Zone Bangladesh', NULL, '2023-10-28 17:30:20', '2023-10-28 17:30:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `varieties`
--

CREATE TABLE `varieties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variety_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `varieties`
--

INSERT INTO `varieties` (`id`, `variety_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '3 Pcs', '3-pcs', NULL, 1, NULL, '2023-03-07 04:58:05', '2023-03-11 09:44:50'),
(2, '2Pc', '2pc', NULL, 1, NULL, '2023-09-21 11:56:29', '2023-09-21 11:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `vat_taxes`
--

CREATE TABLE `vat_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vat_taxes`
--

INSERT INTO `vat_taxes` (`id`, `tax_name`, `tax_percentage`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tax', 7.5, 1, NULL, '2023-03-07 05:01:10', '2023-03-11 10:08:55'),
(2, 'Local Tax', 5, 1, NULL, '2023-04-18 07:02:03', '2023-04-18 07:02:03'),
(8, 'Test tax', 2, 1, NULL, '2023-09-21 11:58:44', '2023-09-21 11:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_name`, `slug`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aranya', 'aranya', NULL, 1, NULL, '2023-03-06 16:16:46', '2023-03-06 16:16:46'),
(2, 'B. Crafts', 'b-crafts', NULL, 1, NULL, '2023-03-07 04:55:42', '2023-03-11 09:17:35'),
(3, 'Test', 'test', NULL, 1, NULL, '2023-09-21 11:49:09', '2023-09-21 11:49:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_books`
--
ALTER TABLE `address_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cares`
--
ALTER TABLE `cares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_fabric`
--
ALTER TABLE `category_fabric`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consignments`
--
ALTER TABLE `consignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designers`
--
ALTER TABLE `designers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disc_sku` (`disc_sku`);

--
-- Indexes for table `embellishments`
--
ALTER TABLE `embellishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabrics`
--
ALTER TABLE `fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fits`
--
ALTER TABLE `fits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informations`
--
ALTER TABLE `informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makings`
--
ALTER TABLE `makings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_managers`
--
ALTER TABLE `media_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickuphubs`
--
ALTER TABLE `pickuphubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_artists`
--
ALTER TABLE `product_artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_brands`
--
ALTER TABLE `product_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cares`
--
ALTER TABLE `product_cares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colours`
--
ALTER TABLE `product_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_consignments`
--
ALTER TABLE `product_consignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_designers`
--
ALTER TABLE `product_designers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_embellishments`
--
ALTER TABLE `product_embellishments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_fits`
--
ALTER TABLE `product_fits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_makings`
--
ALTER TABLE `product_makings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_seasons`
--
ALTER TABLE `product_seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_varieties`
--
ALTER TABLE `product_varieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_vendors`
--
ALTER TABLE `product_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_configure`
--
ALTER TABLE `refund_configure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_configs`
--
ALTER TABLE `shipping_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_name` (`country_name`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_billing_infos`
--
ALTER TABLE `user_billing_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_shipping_infos`
--
ALTER TABLE `user_shipping_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varieties`
--
ALTER TABLE `varieties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vat_taxes`
--
ALTER TABLE `vat_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_books`
--
ALTER TABLE `address_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `cares`
--
ALTER TABLE `cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `category_fabric`
--
ALTER TABLE `category_fabric`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `consignments`
--
ALTER TABLE `consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `embellishments`
--
ALTER TABLE `embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fits`
--
ALTER TABLE `fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `informations`
--
ALTER TABLE `informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `makings`
--
ALTER TABLE `makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_managers`
--
ALTER TABLE `media_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `pickuphubs`
--
ALTER TABLE `pickuphubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `product_artists`
--
ALTER TABLE `product_artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `product_cares`
--
ALTER TABLE `product_cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_consignments`
--
ALTER TABLE `product_consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_designers`
--
ALTER TABLE `product_designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `product_embellishments`
--
ALTER TABLE `product_embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `product_fits`
--
ALTER TABLE `product_fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `product_makings`
--
ALTER TABLE `product_makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_seasons`
--
ALTER TABLE `product_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_varieties`
--
ALTER TABLE `product_varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_vendors`
--
ALTER TABLE `product_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `refund_configure`
--
ALTER TABLE `refund_configure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shipping_configs`
--
ALTER TABLE `shipping_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_billing_infos`
--
ALTER TABLE `user_billing_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_shipping_infos`
--
ALTER TABLE `user_shipping_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `varieties`
--
ALTER TABLE `varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vat_taxes`
--
ALTER TABLE `vat_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
