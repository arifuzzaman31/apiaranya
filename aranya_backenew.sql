-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 11:49 AM
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
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address_books`
--

INSERT INTO `address_books` (`id`, `user_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `apartment`, `street_address`, `created_at`, `updated_at`) VALUES
(1, 4, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 09:23:15', NULL),
(3, 5, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Chittagong', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', 'fghfdg', '2023-09-04 05:52:52', NULL),
(6, 6, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-04 06:18:01', NULL),
(7, 6, 'Sara', 'khan', 'Bangladesh', 'Khulna Division', 'ads@gmail.com', '+1 (748) 353-3482', NULL, NULL, 'Shiromoni', '2023-09-04 07:43:15', '2023-09-04 07:43:15'),
(8, 9, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Chittagong', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', 'rtfghdf', '2023-09-17 11:52:57', NULL),
(9, 10, 'Test', 'test', 'Bangladesh', 'Dhaka Division', 'tanzir.tushar@webable.digital', '01567988101', NULL, NULL, 'gulshan', '2023-09-20 07:08:15', '2023-09-20 07:08:15');

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
(1, 'Aranya', 'admin@admin.com', NULL, '$2y$10$ca9Xk39ikzsamtmFt/E.WeiDJpX0dsgzRbiRxh4N4zxu4uaS9NwQa', 1, NULL, NULL, '2023-03-06 09:57:17', '2023-03-06 09:57:17'),
(3, 'Bailey', 'mybi@mailinator.com', NULL, '$2y$10$NCiscFropI.RFxiYoO066.HYwA.pQhqbAO9DbT9P3pruv97vPQgTS', 2, NULL, NULL, '2023-05-17 05:00:31', '2023-05-17 06:45:04'),
(4, 'Cruz Walsh', 'qupyv@mailinator.com', NULL, '$2y$10$FC1UGtRTlakKAXHkbCHNsO/P/L.dKCJFxGHuWZSfL2HqJuhPr7hdK', 1, NULL, NULL, '2023-05-17 07:11:05', '2023-05-17 07:11:05'),
(5, 'Tamara Woodard', 'sahonurufy@mailinator.com', NULL, '$2y$10$CpFJFhI55IMqNkxWkjxCGe51cXeAESapBfIKIEBPCD/wgmHYlihSe', 2, NULL, NULL, '2023-05-17 07:11:24', '2023-05-17 07:11:24'),
(6, 'Elton Blevins', 'nijulocic@mailinator.com', NULL, '$2y$10$W3VuoTTa3.zjO8eBcdfz3OP2Rnc4QJiDKiSyMZ6UyR1itQoZ9v15i', 3, NULL, NULL, '2023-05-17 07:11:39', '2023-09-21 12:22:04'),
(7, 'tester', 'test@gmail.com', NULL, '$2y$10$aJyMC3uK.EzFguebnrxSMuIpjJkUtgPgu8rVszeE0oRdLqyAibg2C', 3, NULL, NULL, '2023-09-21 12:22:57', '2023-09-21 12:22:57');

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
(1, 'Orlando Leon', 'orlando-leon', NULL, NULL, NULL, NULL, NULL, '2023-09-02', '2023-09-22', 1, NULL, '2023-05-18 03:56:21', '2023-09-03 04:46:19'),
(2, 'test camp', 'test-camp', NULL, NULL, NULL, NULL, NULL, '2023-09-03', '2023-10-12', 0, NULL, '2023-07-08 22:55:56', '2023-10-14 23:43:49');

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
(3, 101, 1, 1, NULL, NULL),
(20, 98, 1, 1, NULL, NULL),
(23, 137, 2, 1, NULL, NULL),
(28, 135, 1, 1, '2023-09-25 04:23:07', '2023-09-25 04:23:07'),
(29, 135, 2, 1, '2023-09-25 04:24:33', '2023-09-25 04:24:33'),
(30, 101, 2, 1, '2023-09-26 05:11:20', '2023-09-26 05:11:20'),
(31, 102, 2, 1, '2023-09-26 05:11:20', '2023-09-26 05:11:20'),
(32, 99, 2, 1, '2023-09-26 05:11:20', '2023-09-26 05:11:20'),
(33, 100, 2, 1, '2023-09-26 05:11:20', '2023-09-26 05:11:20');

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
(5, 'Professional care', 'professional-care', NULL, 1, NULL, '2023-09-21 11:58:06', '2023-09-21 11:58:06');

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
  `category_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precedence` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Set precedency',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the category',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `description`, `parent_category`, `category_image_one`, `category_image_two`, `category_image_three`, `category_video`, `precedence`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Women', 'women', NULL, '0', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(2, 'Men', 'men', NULL, '0', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(3, 'Kids', 'kids', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021909/aranya-product-v2/DSCF0178.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021922/aranya-product-v2/DSC_8136.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1680757775/aranya-product-v2/DSC_8201.jpg', NULL, 3, 1, NULL, NULL, NULL),
(4, 'Home Furnishings', 'home-furnishings', NULL, '0', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(5, 'Beauty Collection', 'beauty-collection', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-01-08_at_1.37.14_PM.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319437967_3245517765662624_2055855407411359162_n.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/newone.jpg', NULL, 5, 1, NULL, NULL, '2023-06-21 04:43:45'),
(6, 'Accessories', 'accessories', NULL, '0', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(7, 'Saree', 'saree', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319390021_890191578940618_2653986640703744348_n.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319437967_3245517765662624_2055855407411359162_n.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/Arifuzzaman_joining_year_2022_2.jpg', NULL, 1, 1, NULL, NULL, '2023-06-20 03:08:27'),
(8, 'Salwar Kameez', 'salwar-kameez', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001345.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001299.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001858.jpg', NULL, 2, 1, NULL, NULL, NULL),
(9, 'Kurti & Fatua', 'kurti-fatua', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001819.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001857.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001795.jpg', NULL, 3, 1, NULL, NULL, NULL),
(10, 'Tops & Shirts', 'tops-shirts', NULL, '1', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(11, 'Kimono', 'kimono', NULL, '1', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(12, 'Kaftan', 'kaftan', NULL, '1', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(13, 'Panjabi', 'panjabi', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001787.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001187.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001542.jpg', NULL, 1, 1, NULL, NULL, NULL),
(14, 'Vest', 'vest', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001787.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001583.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001922.jpg', NULL, 2, 1, NULL, NULL, NULL),
(15, 'T-Shirt', 't-shirt', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001793.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001583.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001694.jpg', NULL, 3, 1, NULL, NULL, NULL),
(16, 'Fatua', 'fatua', NULL, '2', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(17, 'Shirts', 'shirts', NULL, '2', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(18, 'Jackets', 'jackets', NULL, '2', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(19, 'Baby Kantha', 'baby-kantha', NULL, '4', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(20, 'Cushion Cover', 'cushion-cover', NULL, '4', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(21, 'Ceramic', 'ceramic', NULL, '4', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(22, 'Table Cloth', 'table-cloth', NULL, '4', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(23, 'Bed Cover', 'bed-cover', NULL, '4', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(24, 'Basket', 'basket', NULL, '4', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-01-10_at_1.16.34_AM.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-04-17_at_12.58.44_PM.jpg', NULL, NULL, 6, 1, NULL, NULL, '2023-08-02 04:25:28'),
(25, 'Napkin', 'napkin', NULL, '4', NULL, NULL, NULL, NULL, 7, 1, NULL, NULL, NULL),
(26, 'Table Runner', 'table-runner', NULL, '4', NULL, NULL, NULL, NULL, 8, 1, NULL, NULL, NULL),
(27, 'Aatong', 'aatong', NULL, '6', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(28, 'Cangbuk', 'cangbuk', NULL, '6', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(29, 'Ashtodhatu Jewellery', 'ashtodhatu-jewellery', NULL, '37', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(30, 'Silver Jewellery', 'silver-jewellery', NULL, '37', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(31, 'Metal Jewellery', 'metal-jewellery', NULL, '37', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(32, 'Other Jewellery', 'other-jewellery', NULL, '37', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001756.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001072.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001125.jpg', NULL, 6, 1, NULL, NULL, NULL),
(33, 'Scarves', 'scarves', NULL, '6', NULL, NULL, NULL, NULL, 7, 1, NULL, NULL, NULL),
(34, 'Orna', 'orna', NULL, '6', NULL, NULL, NULL, NULL, 8, 1, NULL, NULL, NULL),
(35, 'Stoles', 'stoles', NULL, '6', NULL, NULL, NULL, NULL, 9, 1, NULL, NULL, NULL),
(36, 'Shawls', 'shawls', NULL, '6', NULL, NULL, NULL, NULL, 10, 1, NULL, NULL, NULL),
(37, 'Jewellery', 'jewellery', NULL, '0', NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL),
(38, 'Girls', 'girls', NULL, '3', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(39, 'Boys', 'boys', NULL, '3', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(40, 'Babies', 'babies', NULL, '3', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(41, 'Toddlers', 'toddlers', NULL, '3', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(42, 'new test', 'new-test', NULL, '0', NULL, NULL, NULL, NULL, 0, 1, '2023-07-03 23:45:28', '2023-06-20 01:11:00', '2023-07-03 23:45:28'),
(43, 'new-test-1', 'new-test-1', NULL, '2', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/319437967_3245517765662624_2055855407411359162_n.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/WhatsApp_Image_2023-01-08_at_1.37.14_PM.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya/Arifuzzaman_joining_year_2022_2.jpg', NULL, 12, 1, '2023-06-20 03:36:41', '2023-06-20 01:11:38', '2023-06-20 03:36:41'),
(44, 'Parent-cat', 'parent-cat', NULL, '0', NULL, NULL, NULL, NULL, 9, 1, '2023-07-05 00:23:37', '2023-07-05 00:06:31', '2023-07-05 00:23:37'),
(45, 'cat-parent', 'cat-parent', NULL, '', NULL, NULL, NULL, NULL, 10, 1, '2023-07-05 00:23:23', '2023-07-05 00:18:33', '2023-07-05 00:23:23'),
(46, 'cat11', 'cat11', NULL, '0', NULL, NULL, NULL, NULL, 12, 1, '2023-07-05 00:23:18', '2023-07-05 00:22:08', '2023-07-05 00:23:18'),
(47, 'catpat21', 'catpat21', NULL, '0', NULL, NULL, NULL, NULL, 13, 1, '2023-07-05 00:23:12', '2023-07-05 00:22:42', '2023-07-05 00:23:12'),
(48, 'patcat', 'patcat', NULL, '0', NULL, NULL, NULL, NULL, 10, 1, '2023-07-05 00:51:35', '2023-07-05 00:27:51', '2023-07-05 00:51:35'),
(49, 'pattasa', 'pattasa', NULL, '0', NULL, NULL, NULL, NULL, 7, 1, '2023-07-05 00:51:31', '2023-07-05 00:30:31', '2023-07-05 00:51:31'),
(50, 'hggfdhfgh', 'hggfdhfgh', NULL, '0', NULL, NULL, NULL, NULL, 8, 1, '2023-07-05 00:51:27', '2023-07-05 00:31:44', '2023-07-05 00:51:27'),
(51, 'rttytwr', 'rttytwr', NULL, '0', NULL, NULL, NULL, NULL, 9, 1, '2023-07-05 00:51:24', '2023-07-05 00:32:57', '2023-07-05 00:51:24'),
(52, 'wwwwerr', 'wwwwerr', NULL, '0', NULL, NULL, NULL, NULL, 12, 1, '2023-07-05 00:51:21', '2023-07-05 00:36:00', '2023-07-05 00:51:21'),
(53, 'uyuuyu', 'uyuuyu', NULL, '0', NULL, NULL, NULL, NULL, 13, 1, '2023-07-05 00:51:18', '2023-07-05 00:46:32', '2023-07-05 00:51:18'),
(54, 'rrrrr', 'rrrrr', NULL, '0', NULL, NULL, NULL, NULL, 14, 1, '2023-07-05 00:51:14', '2023-07-05 00:50:48', '2023-07-05 00:51:14'),
(55, 'hghghgh', 'hghghgh', NULL, '0', NULL, NULL, NULL, NULL, 15, 1, '2023-07-05 00:54:57', '2023-07-05 00:54:11', '2023-07-05 00:54:57'),
(56, 'qqq', 'qqq', NULL, '0', NULL, NULL, NULL, NULL, 7, 1, '2023-07-05 01:31:08', '2023-07-05 01:02:22', '2023-07-05 01:31:08'),
(57, 'uyuuyu', 'uyuuyu', NULL, '0', NULL, NULL, NULL, NULL, 8, 1, '2023-07-05 01:30:29', '2023-07-05 01:03:00', '2023-07-05 01:30:29'),
(58, 'rrrrr', 'rrrrr', NULL, '0', NULL, NULL, NULL, NULL, 11, 1, '2023-07-05 01:30:55', '2023-07-05 01:03:17', '2023-07-05 01:30:55'),
(59, 'eeee', 'eeee', NULL, '0', NULL, NULL, NULL, NULL, 12, 1, '2023-07-05 01:30:40', '2023-07-05 01:03:32', '2023-07-05 01:30:40'),
(60, 'yyyy', 'yyyy', NULL, '0', NULL, NULL, NULL, NULL, 14, 1, '2023-07-05 01:30:32', '2023-07-05 01:03:59', '2023-07-05 01:30:32'),
(61, 'gfgfgf', 'gfgfgf', NULL, '0', NULL, NULL, NULL, NULL, 15, 1, '2023-07-05 01:30:35', '2023-07-05 01:25:42', '2023-07-05 01:30:35'),
(62, 'vbvbbv', 'vbvbbv', NULL, '0', NULL, NULL, NULL, NULL, 16, 1, '2023-07-05 01:30:43', '2023-07-05 01:28:26', '2023-07-05 01:30:43'),
(63, 'jkjkjk', 'jkjkjk', NULL, '0', NULL, NULL, NULL, NULL, 17, 1, '2023-07-05 01:31:03', '2023-07-05 01:30:12', '2023-07-05 01:31:03'),
(64, 'test-one', 'test-one', NULL, '0', NULL, NULL, NULL, NULL, 14, 1, '2023-07-10 01:34:22', '2023-07-10 01:31:18', '2023-07-10 01:34:22'),
(65, 'What\'s New', 'whats-new', NULL, '1', NULL, NULL, NULL, NULL, 0, 1, '2023-09-12 05:18:44', '2023-09-12 04:19:33', '2023-09-12 05:18:44'),
(66, 'Test', 'test', NULL, '0', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-09-19 07:15:18', '2023-09-19 07:15:18'),
(67, 'Sale', 'sale', NULL, '66', NULL, NULL, NULL, NULL, 0, 1, NULL, '2023-09-19 07:15:32', '2023-09-19 07:15:32');

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
(1, 'Red', '#ff0000', 'red', NULL, 1, NULL, '2023-03-06 16:06:30', '2023-03-11 08:24:07'),
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
(1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 09:23:15', NULL),
(2, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 09:26:53', NULL),
(3, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 09:29:06', NULL),
(4, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 09:32:17', NULL),
(5, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 09:33:23', NULL),
(6, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 09:34:49', NULL),
(7, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 10:26:10', NULL),
(8, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:17:19', NULL),
(10, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:24:46', NULL),
(11, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:26:44', NULL),
(12, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:28:30', NULL),
(13, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:29:48', NULL),
(14, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:32:16', NULL),
(15, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:34:33', NULL),
(16, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:36:17', NULL),
(17, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:37:45', NULL),
(18, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:40:05', NULL),
(19, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:41:28', NULL),
(20, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:42:46', NULL),
(21, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:43:43', NULL),
(22, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 12:44:47', NULL),
(30, 41, NULL, '2023-09-03', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-03 13:09:22', '2023-09-03 13:09:38'),
(34, 45, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 05:46:40', '2023-09-04 05:47:17'),
(35, 47, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 05:52:52', '2023-09-04 05:53:05'),
(37, 53, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:18:01', '2023-09-04 06:20:44'),
(39, 55, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:29:40', '2023-09-04 06:30:16'),
(40, 56, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:30:45', '2023-09-04 06:30:58'),
(42, 58, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:37:15', '2023-09-04 06:37:29'),
(43, 59, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:38:38', '2023-09-04 06:41:26'),
(44, 60, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:43:59', NULL),
(45, 61, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 06:53:48', '2023-09-04 06:53:59'),
(50, 66, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 07:11:55', '2023-09-04 07:12:14'),
(51, 67, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 07:16:04', NULL),
(52, 68, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 07:43:49', NULL),
(57, 73, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 09:52:05', '2023-09-04 09:52:28'),
(58, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 09:56:00', NULL),
(59, 75, NULL, '2023-09-04', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 09:56:47', '2023-09-04 09:57:04'),
(60, 76, NULL, '2023-09-05', 1, 'Processig', '2023-09-05', 2, 'On Delivery', '2023-09-05', 3, 'Delivered', NULL, NULL, '2023-09-04 10:13:45', '2023-09-05 09:28:14'),
(63, 81, 'ECR26528432070923', '2023-09-07', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 05:40:27', '2023-09-07 05:40:54'),
(64, 82, 'ECR54008092070923', '2023-09-07', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 05:41:53', '2023-09-07 05:42:31'),
(65, 83, 'ECR35926123070923', '2023-09-07', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 06:10:22', '2023-09-07 06:10:37'),
(66, 84, 'ECR89141836170923', '2023-09-17', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-17 11:52:57', '2023-09-17 11:53:19'),
(67, 85, 'ECR93066547170923', '2023-09-17', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-17 12:58:52', '2023-09-17 12:59:09'),
(68, 86, 'ECR61804360180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 06:54:05', '2023-09-18 06:54:21'),
(69, 87, 'ECR47633709180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 07:03:59', '2023-09-18 07:04:30'),
(70, 94, 'ECR53212805180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 07:31:47', '2023-09-18 07:32:10'),
(71, 95, 'ECR14925513180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 07:38:22', '2023-09-18 07:38:38'),
(72, 96, 'ECR66706006180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 08:03:00', '2023-09-18 08:03:17'),
(73, 97, 'ECR11416960180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 08:04:59', '2023-09-18 08:05:14'),
(74, 98, 'ECR93344590180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 08:20:28', '2023-09-18 08:20:44'),
(75, 99, 'ECR41885907180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 09:07:25', '2023-09-18 09:07:42'),
(76, 101, 'ECR80026944180923', '2023-09-18', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-18 09:28:43', '2023-09-18 09:29:01'),
(77, 102, 'ECR86841171200923', '2023-09-20', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-20 07:00:35', '2023-09-20 07:00:51'),
(78, 103, 'ECR30182454200923', '2023-09-20', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-20 07:11:32', NULL),
(79, 104, 'ECR12747465210923', '2023-09-21', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-21 12:59:23', '2023-09-21 12:59:36'),
(80, 105, 'ECR21898657210923', '2023-09-21', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-21 13:36:24', '2023-09-21 13:36:39'),
(81, 106, 'ECR68012661210923', '2023-09-21', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-21 13:38:48', '2023-09-21 13:39:02');

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
(17, 'CA', 'CA', 'ca', NULL, 1, NULL, '2023-09-21 11:49:42', '2023-09-21 11:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_type` enum('percentage','flat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_amount` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `discount_amount`, `discount_type`, `max_amount`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 99, 5, 'flat', NULL, 1, NULL, '2023-09-03 05:00:58', '2023-09-03 05:00:58'),
(2, 100, 5, 'flat', NULL, 1, NULL, '2023-09-03 05:00:58', '2023-09-03 05:00:58'),
(3, 101, 5, 'flat', NULL, 1, NULL, '2023-09-03 05:00:58', '2023-09-03 05:00:58'),
(4, 102, 5, 'flat', NULL, 1, NULL, '2023-09-03 05:00:58', '2023-09-03 05:00:58'),
(5, 141, 10, 'flat', NULL, 1, NULL, '2023-09-24 08:16:45', '2023-09-24 08:16:45'),
(6, 140, 20, 'flat', NULL, 1, NULL, '2023-09-24 08:23:29', '2023-09-24 08:23:29'),
(7, 138, 15, 'flat', NULL, 1, NULL, '2023-09-24 08:24:31', '2023-09-24 08:24:31'),
(8, 141, 10, 'flat', NULL, 1, NULL, '2023-09-24 08:25:17', '2023-09-24 08:25:17'),
(9, 137, 10, 'flat', NULL, 1, NULL, '2023-09-24 08:25:17', '2023-09-24 08:25:17'),
(10, 136, 10, 'flat', NULL, 1, NULL, '2023-09-24 08:25:17', '2023-09-24 08:25:17'),
(11, 142, 10, 'flat', NULL, 1, NULL, '2023-09-24 10:32:47', '2023-09-24 10:32:47'),
(12, 138, 10, 'flat', NULL, 1, NULL, '2023-09-25 03:15:16', '2023-09-25 03:15:16'),
(13, 136, 10, 'flat', NULL, 1, NULL, '2023-09-25 03:15:16', '2023-09-25 03:15:16'),
(14, 135, 10, 'flat', NULL, 1, NULL, '2023-09-25 03:15:16', '2023-09-25 03:15:16'),
(15, 135, 10, 'flat', NULL, 1, NULL, '2023-09-25 03:35:35', '2023-09-25 03:35:35');

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
(33, 'Plastic', 'PL220', 'plastic', NULL, 1, NULL, '2023-09-21 11:48:40', '2023-09-21 11:48:40');

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
(1, 'Privacy Policy', 'privacy-policy', 'https://staging.aranya.com.bd/privacy-policy', '<h2>Welcome to Aranya...</h2><h2>By accessing this website we assume you accept these terms and conditions. Do not continue to use Grostore if you do not agree to take all of the terms and conditions stated on this page.</h2>', 1, '2023-09-21 12:11:50', NULL),
(2, 'Return Policy', 'return-policy', 'https://staging.aranya.com.bd/return-policy', '<p>Test</p>', 1, '2023-09-21 12:14:02', NULL),
(3, 'Terms & Conditions', 'terms-conditions', 'https://staging.aranya.com.bd/terms-conditions', '<h2>Welcome to Aranya!!</h2><h2>These terms and conditions outline the rules and regulations for the use</h2>', 1, '2023-09-21 12:12:33', NULL);

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
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT '2022-03-11 18:00:00',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `colour_id`, `size_id`, `stock`, `cpu`, `mrp`, `sku`, `warning_amount`, `warehouse`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 9, 45, 877.47000000, 2475.00000000, 'C4531', 10, NULL, NULL, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 1, 1, 10, 64, 877.47000000, 2475.00000000, 'C4532', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 1, 1, 11, 74, 548.12000000, 1675.00000000, 'C4524', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 1, 1, 16, 86, 548.12000000, 1675.00000000, 'C4525', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 1, 1, 7, 74, 620.16000000, 1975.00000000, 'C4527', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 1, 1, 17, 84, 620.16000000, 1975.00000000, 'C4528', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 1, 1, 18, 47, 620.16000000, 1975.00000000, 'C4529', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 1, 1, 9, 3, 877.47000000, 2475.00000000, 'C4540', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 1, 1, 10, 78, 877.47000000, 2475.00000000, 'C4541', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 2, 20, 11, 122, 575.39000000, 1375.00000000, 'C6553', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 2, 20, 16, 3, 418.87000000, 1375.00000000, 'C6554', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 2, 20, 17, 87, 466.15000000, 1375.00000000, 'C6556', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 2, 20, 18, 122, 466.15000000, 1375.00000000, 'C6557', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 2, 20, 7, 122, 575.39000000, 1675.00000000, 'C6559', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 2, 20, 9, 133, 575.39000000, 1675.00000000, 'C6560', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 2, 20, 10, 144, 575.39000000, 1675.00000000, 'C6561', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 3, 13, 11, 101, 430.23000000, 1675.00000000, 'C5565', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(18, 3, 13, 16, 102, 430.23000000, 1375.00000000, 'C5566', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(19, 3, 13, 17, 103, 474.90000000, 1375.00000000, 'C5568', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(20, 3, 13, 18, 104, 474.98000000, 1375.00000000, 'C5569', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(21, 3, 13, 7, 105, 578.38000000, 1675.00000000, 'C5571', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(22, 3, 13, 9, 106, 578.38000000, 1675.00000000, 'C5572', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(23, 3, 13, 10, 2, 578.38000000, 1675.00000000, 'C5573', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(24, 4, 5, 11, 3, 424.00000000, 1675.00000000, 'C5575', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(25, 4, 5, 16, 2, 424.00000000, 1375.00000000, 'C5576', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(26, 4, 5, 17, 2, 472.54000000, 1375.00000000, 'C5578', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(27, 4, 5, 18, 2, 472.54000000, 1375.00000000, 'C5579', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(28, 4, 5, 7, 2, 584.69000000, 1675.00000000, 'C5581', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(29, 4, 5, 9, 6, 584.69000000, 1675.00000000, 'C5582', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(30, 4, 5, 10, 3, 584.69000000, 1675.00000000, 'C5583', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(31, 5, 2, 11, 1, 540.64000000, 2475.00000000, 'C7171', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(32, 5, 20, 11, 1, 540.64000000, 2475.00000000, 'C7171', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(33, 5, 2, 16, 2, 540.64000000, 1675.00000000, 'C7172', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(34, 5, 20, 16, 2, 540.64000000, 1675.00000000, 'C7172', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(35, 5, 2, 17, 1, 620.63000000, 1975.00000000, 'C7174', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(36, 5, 20, 17, 1, 620.63000000, 1975.00000000, 'C7174', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(37, 5, 2, 18, 3, 620.63000000, 1975.00000000, 'C7175', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(38, 5, 20, 18, 3, 620.63000000, 1975.00000000, 'C7175', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(39, 5, 2, 7, 3, 805.45000000, 2475.00000000, 'C7177', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(40, 5, 20, 7, 3, 805.45000000, 2475.00000000, 'C7177', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(41, 5, 2, 9, 3, 805.45000000, 2475.00000000, 'C7178', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(42, 5, 20, 9, 3, 805.45000000, 2475.00000000, 'C7178', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(43, 5, 2, 10, 5, 805.45000000, 2475.00000000, 'C7179', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(44, 5, 20, 10, 5, 805.45000000, 2475.00000000, 'C7179', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(45, 6, 11, 6, 3, 221.40000000, 565.00000000, 'C7237', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(46, 6, 11, 13, 0, 221.40000000, 565.00000000, 'C7238', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(47, 6, 11, 14, 1, 221.40000000, 565.00000000, 'C7239', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(48, 6, 11, 15, 1, 221.40000000, 565.00000000, 'C7240', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(49, 7, 1, 8, 4, 323.35000000, 865.00000000, 'C7386', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(50, 7, 12, 8, 4, 323.35000000, 865.00000000, 'C7386', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(51, 7, 1, 11, 4, 323.35000000, 865.00000000, 'C7387', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(52, 7, 12, 11, 4, 323.35000000, 865.00000000, 'C7387', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(53, 7, 1, 12, 5, 323.35000000, 865.00000000, 'C7388', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(54, 7, 12, 12, 5, 323.35000000, 865.00000000, 'C7388', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(55, 8, 1, 10, 5, 907.83000000, 2165.00000000, 'C2738', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(56, 8, 1, 18, 1, 907.83000000, 2165.00000000, 'C2739', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(57, 9, 10, 11, 2, 402.96000000, 1465.00000000, 'C4074', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(58, 9, 10, 16, 1, 402.96000000, 1165.00000000, 'C4075', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(59, 9, 10, 17, 0, 402.96000000, 1165.00000000, 'C4076', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(60, 9, 10, 7, 3, 487.80000000, 1465.00000000, 'C4078', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(61, 9, 10, 9, 5, 487.80000000, 1465.00000000, 'C4079', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(62, 9, 10, 10, 6, 487.80000000, 1465.00000000, 'C4080', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(63, 9, 10, 18, 4, 487.80000000, 1465.00000000, 'C4081', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(64, 10, 9, 11, 1, 389.77000000, 1465.00000000, 'C4113', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(65, 10, 9, 16, 1, 389.77000000, 1165.00000000, 'C4114', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(66, 10, 9, 17, 3, 389.77000000, 1165.00000000, 'C4115', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(67, 10, 9, 7, 6, 472.22000000, 1465.00000000, 'C4117', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(68, 10, 9, 9, 6, 472.22000000, 1465.00000000, 'C4118', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(69, 10, 9, 10, 6, 472.22000000, 1465.00000000, 'C4119', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(70, 10, 9, 18, 3, 472.22000000, 1465.00000000, 'C4120', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(71, 11, 14, 11, 1, 441.19000000, 1465.00000000, 'C7070', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(72, 11, 14, 16, 0, 441.19000000, 1165.00000000, 'C7071', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(73, 11, 14, 17, 2, 545.26000000, 1465.00000000, 'C7073', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(74, 11, 14, 18, 1, 545.26000000, 1465.00000000, 'C7074', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(75, 11, 14, 7, 5, 586.19000000, 1465.00000000, 'C7076', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(76, 11, 14, 9, 3, 586.19000000, 1465.00000000, 'C7077', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(77, 11, 14, 10, 5, 586.19000000, 1465.00000000, 'C7078', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(78, 12, 11, 11, 2, 355.51000000, 1165.00000000, 'C6511', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(79, 12, 11, 16, 2, 355.51000000, 965.00000000, 'C6512', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(80, 12, 11, 17, 5, 383.82000000, 965.00000000, 'C6514', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(81, 12, 11, 18, 3, 383.82000000, 965.00000000, 'C6515', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(82, 12, 11, 7, 4, 449.36000000, 1165.00000000, 'C6517', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(83, 12, 11, 9, 5, 449.36000000, 1165.00000000, 'C6518', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(84, 12, 11, 10, 5, 449.36000000, 1165.00000000, 'C6519', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(85, 13, 5, 11, 2, 966.45000000, 2385.00000000, 'C2295', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(86, 13, 10, 11, 2, 966.45000000, 2385.00000000, 'C2295', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(87, 13, 5, 16, 2, 966.45000000, 2385.00000000, 'C2296', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(88, 13, 10, 16, 2, 966.45000000, 2385.00000000, 'C2296', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(89, 13, 5, 17, 2, 1222.07000000, 2885.00000000, 'C2298', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(90, 13, 10, 17, 2, 1222.07000000, 2885.00000000, 'C2298', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(91, 13, 5, 18, 1, 1222.07000000, 2885.00000000, 'C2299', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(92, 13, 10, 18, 1, 1222.07000000, 2885.00000000, 'C2299', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(93, 13, 5, 7, 1, 1431.23000000, 3485.00000000, 'C2301', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(94, 13, 10, 7, 1, 1431.23000000, 3485.00000000, 'C2301', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(95, 13, 5, 9, 3, 1431.23000000, 3485.00000000, 'C2302', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(96, 13, 10, 9, 3, 1431.23000000, 3485.00000000, 'C2302', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(97, 14, 2, 11, 3, 947.39000000, 2885.00000000, 'C7354', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(98, 14, 2, 16, 1, 947.39000000, 2385.00000000, 'C7355', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(99, 14, 2, 17, 0, 1076.35000000, 2785.00000000, 'C7357', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(100, 14, 2, 18, 0, 1076.35000000, 2785.00000000, 'C7358', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(101, 14, 2, 7, 0, 1252.55000000, 2885.00000000, 'C7360', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(102, 14, 2, 9, 0, 1252.55000000, 2885.00000000, 'C7361', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(103, 15, 5, 8, 5, 768.20000000, 1875.00000000, 'D0090', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(104, 15, 5, 11, 6, 768.20000000, 1875.00000000, 'D0091', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(105, 15, 5, 12, 5, 768.20000000, 1875.00000000, 'D0092', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(106, 15, 5, 16, 5, 768.20000000, 1875.00000000, 'D0093', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(107, 16, 5, 8, 7, 838.28000000, 3485.00000000, 'C8720', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(108, 16, 14, 8, 7, 838.28000000, 3485.00000000, 'C8720', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(109, 16, 5, 11, 6, 838.28000000, 2385.00000000, 'C8721', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(110, 16, 14, 11, 6, 838.28000000, 2385.00000000, 'C8721', 10, NULL, NULL, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(111, 16, 5, 16, 7, 838.28000000, 2385.00000000, 'C8722', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(112, 16, 14, 16, 7, 838.28000000, 2385.00000000, 'C8722', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(113, 16, 5, 17, 1, 838.28000000, 2385.00000000, 'C8724', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(114, 16, 14, 17, 1, 838.28000000, 2385.00000000, 'C8724', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(115, 16, 5, 18, 2, 838.28000000, 2385.00000000, 'C8725', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(116, 16, 14, 18, 2, 838.28000000, 2385.00000000, 'C8725', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(117, 16, 5, 7, 2, 1395.44000000, 3485.00000000, 'C8727', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(118, 16, 14, 7, 2, 1395.44000000, 3485.00000000, 'C8727', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(119, 16, 5, 9, 3, 1395.44000000, 3485.00000000, 'C8728', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(120, 16, 14, 9, 3, 1395.44000000, 3485.00000000, 'C8728', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(121, 17, 2, 8, 5, 751.05000000, 2785.00000000, 'D0095', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(122, 17, 12, 8, 5, 751.05000000, 2785.00000000, 'D0095', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(123, 17, 2, 11, 7, 751.05000000, 1685.00000000, 'D0096', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(124, 17, 12, 11, 7, 751.05000000, 1685.00000000, 'D0096', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(125, 17, 2, 12, 0, 751.05000000, 1685.00000000, 'D0097', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(126, 17, 12, 12, 0, 751.05000000, 1685.00000000, 'D0097', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(127, 17, 2, 16, 8, 751.05000000, 1685.00000000, 'D0098', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(128, 17, 12, 16, 8, 751.05000000, 1685.00000000, 'D0098', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(129, 17, 2, 17, 2, 927.42000000, 2385.00000000, 'D0100', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(130, 17, 12, 17, 2, 927.42000000, 2385.00000000, 'D0100', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(131, 17, 2, 18, 4, 927.42000000, 2385.00000000, 'D0101', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(132, 17, 12, 18, 4, 927.42000000, 2385.00000000, 'D0101', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(133, 17, 2, 7, 5, 1095.22000000, 2785.00000000, 'D0103', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(134, 17, 12, 7, 5, 1095.22000000, 2785.00000000, 'D0103', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(135, 17, 2, 9, 2, 1095.22000000, 2785.00000000, 'D0104', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(136, 17, 12, 9, 2, 1095.22000000, 2785.00000000, 'D0104', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(137, 18, 2, 6, 0, 714.79000000, 1685.00000000, 'C5626', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(138, 18, 2, 13, 3, 714.79000000, 1685.00000000, 'C5627', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(139, 18, 2, 14, 0, 714.79000000, 1685.00000000, 'C5628', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(140, 18, 2, 15, 0, 714.79000000, 1685.00000000, 'C5629', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(141, 19, 10, 6, 6, 493.42000000, 1375.00000000, 'C3854', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(142, 19, 10, 13, 5, 493.42000000, 1185.00000000, 'C3855', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(143, 19, 10, 14, 3, 493.42000000, 1185.00000000, 'C3856', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(144, 19, 10, 15, 3, 493.42000000, 1185.00000000, 'C3857', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(145, 19, 10, 11, 2, 570.27000000, 1375.00000000, 'C3859', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(146, 19, 10, 16, 0, 570.27000000, 1375.00000000, 'C3860', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(147, 20, 1, 6, 0, 846.26000000, 2375.00000000, 'C6625', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(148, 20, 20, 6, 0, 846.26000000, 2375.00000000, 'C6625', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(149, 20, 1, 13, 0, 846.26000000, 2375.00000000, 'C6626', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(150, 20, 20, 13, 0, 846.26000000, 2375.00000000, 'C6626', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(151, 20, 1, 6, 6, 701.63000000, 1875.00000000, 'C6583', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(152, 20, 20, 6, 6, 701.63000000, 1875.00000000, 'C6583', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(153, 20, 1, 13, 5, 701.63000000, 1875.00000000, 'C6584', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(154, 20, 20, 13, 5, 701.63000000, 1875.00000000, 'C6584', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(155, 20, 1, 11, 5, 846.26000000, 2375.00000000, 'C6586', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(156, 20, 20, 11, 5, 846.26000000, 2375.00000000, 'C6586', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(157, 20, 1, 12, 0, 846.26000000, 2375.00000000, 'C6587', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(158, 20, 20, 12, 0, 846.26000000, 2375.00000000, 'C6587', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(159, 20, 1, 14, 3, 940.18000000, 2375.00000000, 'C6589', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(160, 20, 20, 14, 3, 940.18000000, 2375.00000000, 'C6589', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(161, 20, 1, 15, 3, 940.18000000, 2375.00000000, 'C6590', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(162, 20, 20, 15, 3, 940.18000000, 2375.00000000, 'C6590', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(163, 20, 1, 16, 4, 846.26000000, 2375.00000000, 'C6628', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(164, 20, 20, 16, 4, 846.26000000, 2375.00000000, 'C6628', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(165, 21, 2, 6, 4, 670.28000000, 1675.00000000, 'C4513', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(166, 21, 20, 6, 4, 670.28000000, 1675.00000000, 'C4513', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(167, 21, 2, 13, 1, 670.28000000, 1675.00000000, 'C4514', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(168, 21, 20, 13, 1, 670.28000000, 1675.00000000, 'C4514', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(169, 21, 2, 14, 1, 670.28000000, 1675.00000000, 'C4515', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(170, 21, 20, 14, 1, 670.28000000, 1675.00000000, 'C4515', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(171, 21, 2, 15, 1, 670.28000000, 1675.00000000, 'C4516', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(172, 21, 20, 15, 1, 670.28000000, 1675.00000000, 'C4516', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(173, 22, 18, 6, 3, 640.94000000, 1675.00000000, 'C4353', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(174, 22, 18, 13, 1, 640.94000000, 1675.00000000, 'C4354', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(175, 22, 18, 14, 2, 640.94000000, 1675.00000000, 'C4355', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(176, 23, 10, 11, 8, 609.09000000, 1875.00000000, 'C4469', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(177, 23, 10, 16, 3, 609.09000000, 1675.00000000, 'C4470', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(178, 23, 10, 17, 6, 670.09000000, 1875.00000000, 'C4472', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(179, 23, 10, 18, 6, 670.09000000, 1875.00000000, 'C4473', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(180, 24, 10, 11, 5, 806.01000000, 2275.00000000, 'C4475', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(181, 24, 10, 16, 9, 806.01000000, 2075.00000000, 'C4476', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(182, 24, 10, 17, 1, 950.57000000, 2275.00000000, 'C4478', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(183, 24, 10, 18, 3, 950.57000000, 2275.00000000, 'C4479', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(184, 25, 2, 8, 3, 716.39000000, 2075.00000000, 'C5676', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(185, 25, 2, 11, 1, 716.39000000, 1875.00000000, 'C5677', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(186, 25, 2, 16, 1, 716.39000000, 1875.00000000, 'C5678', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(187, 25, 2, 17, 5, 850.77000000, 2075.00000000, 'C5680', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(188, 25, 2, 18, 4, 850.77000000, 2075.00000000, 'C5681', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(189, 26, 13, 11, 7, 1093.27000000, 3375.00000000, 'C7484', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(190, 26, 13, 12, 4, 1093.27000000, 2975.00000000, 'C7485', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(191, 26, 13, 16, 5, 1093.27000000, 2975.00000000, 'C7486', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(192, 26, 13, 17, 8, 1251.30000000, 3375.00000000, 'C7488', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(193, 26, 13, 18, 8, 1251.30000000, 3375.00000000, 'C7489', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(194, 27, 2, 11, 1, 536.12000000, 1375.00000000, 'C6764', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(195, 27, 2, 16, 0, 536.12000000, 1375.00000000, 'C6765', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(196, 28, 5, 11, 3, 514.66000000, 1375.00000000, 'C5623', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(197, 28, 5, 16, 5, 514.66000000, 1375.00000000, 'C5624', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(198, 29, 2, 16, 2, 994.81000000, 2275.00000000, 'C6767', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(199, 29, 2, 17, 3, 994.81000000, 2275.00000000, 'C6769', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(200, 29, 2, 18, 1, 994.81000000, 2275.00000000, 'C6770', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(201, 30, 1, 8, 4, 1846.42000000, 5175.00000000, 'C7538', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(202, 30, 1, 11, 5, 1846.42000000, 4575.00000000, 'C7539', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(203, 30, 1, 12, 10, 1846.42000000, 4575.00000000, 'C7540', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(204, 30, 1, 16, 3, 2097.50000000, 5175.00000000, 'C7542', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(205, 30, 1, 17, 5, 2097.50000000, 5175.00000000, 'C7543', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(206, 30, 1, 18, 2, 2097.50000000, 5175.00000000, 'C7544', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(207, 31, 9, 11, 3, 594.68000000, 2295.00000000, 'B6921', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(208, 31, 9, 16, 3, 594.68000000, 1495.00000000, 'B6922', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(209, 31, 9, 17, 2, 736.12000000, 1795.00000000, 'B6924', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(210, 31, 9, 18, 6, 736.12000000, 1795.00000000, 'B6925', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(211, 31, 9, 7, 6, 950.79000000, 2295.00000000, 'B6927', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(212, 31, 9, 9, 4, 950.79000000, 2295.00000000, 'B6928', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(213, 32, 12, 6, 8, 224.55000000, 865.00000000, 'C9846', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(214, 32, 12, 13, 5, 224.55000000, 865.00000000, 'C9847', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(215, 32, 12, 14, 7, 224.55000000, 865.00000000, 'C9848', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(216, 32, 12, 15, 6, 224.55000000, 865.00000000, 'C9849', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(217, 33, 2, 6, 7, 258.98000000, 985.00000000, 'C8771', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(218, 33, 2, 13, 7, 258.98000000, 985.00000000, 'C8772', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(219, 34, 10, 6, 11, 198.08000000, 865.00000000, 'C9851', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(220, 34, 10, 13, 9, 198.08000000, 865.00000000, 'C9852', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(221, 35, 0, 13, 0, 242.20000000, 865.00000000, 'C9855', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(222, 35, 2, 6, 11, 242.20000000, 865.00000000, 'C9857', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(223, 35, 2, 6, 1, 198.08000000, 865.00000000, 'D1736', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(224, 35, 0, 6, 0, 242.20000000, 865.00000000, 'C9854', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(225, 35, 2, 13, 4, 242.20000000, 865.00000000, 'C9858', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(226, 36, 14, 19, 3, 1138.39000000, 3675.00000000, 'B1949', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(227, 36, 20, 19, 3, 1138.39000000, 3675.00000000, 'B1949', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(228, 36, 14, 20, 0, 1138.39000000, 3675.00000000, 'B1950', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(229, 36, 20, 20, 0, 1138.39000000, 3675.00000000, 'B1950', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(230, 36, 14, 21, 0, 0.00000000, 3675.00000000, 'B1951', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(231, 36, 20, 21, 0, 0.00000000, 3675.00000000, 'B1951', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(232, 36, 14, 22, 0, 1138.39000000, 3675.00000000, 'B1952', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(233, 36, 20, 22, 0, 1138.39000000, 3675.00000000, 'B1952', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(234, 36, 14, 23, 0, 1138.39000000, 3675.00000000, 'B1953', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(235, 36, 20, 23, 0, 1138.39000000, 3675.00000000, 'B1953', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(236, 37, 1, 19, 3, 1525.36000000, 3930.00000000, 'D0034', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(237, 37, 1, 20, 2, 1525.36000000, 3930.00000000, 'D0035', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(238, 37, 1, 21, 4, 1525.36000000, 3930.00000000, 'D0036', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(239, 37, 1, 22, 1, 1525.36000000, 3930.00000000, 'D0037', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(240, 37, 1, 23, 1, 1525.36000000, 3930.00000000, 'D0038', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(241, 38, 10, 19, 2, 1068.42000000, 3675.00000000, 'B8670', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(242, 38, 10, 20, 3, 1068.42000000, 3675.00000000, 'B8671', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(243, 38, 10, 21, 0, 1068.42000000, 3675.00000000, 'B8672', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(244, 38, 10, 22, 1, 1068.42000000, 3675.00000000, 'B8673', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(245, 38, 10, 23, 0, 1068.42000000, 3675.00000000, 'B8674', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(246, 39, 11, 19, 0, 625.89000000, 2230.00000000, 'C3208', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(247, 39, 13, 19, 0, 625.89000000, 2230.00000000, 'C3208', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(248, 39, 11, 20, 0, 625.89000000, 1975.00000000, 'C3209', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(249, 39, 13, 20, 0, 625.89000000, 1975.00000000, 'C3209', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(250, 39, 11, 21, 0, 625.89000000, 1975.00000000, 'C3210', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(251, 39, 13, 21, 0, 625.89000000, 1975.00000000, 'C3210', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(252, 39, 11, 22, 0, 625.89000000, 1975.00000000, 'C3211', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(253, 39, 13, 22, 0, 625.89000000, 1975.00000000, 'C3211', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(254, 39, 11, 23, 0, 625.89000000, 1975.00000000, 'C3212', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(255, 39, 13, 23, 0, 625.89000000, 1975.00000000, 'C3212', 10, NULL, NULL, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(256, 39, 1, 19, 4, 625.89000000, 2230.00000000, 'C9996', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(257, 39, 13, 19, 4, 625.89000000, 2230.00000000, 'C9996', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(258, 39, 1, 20, 0, 625.89000000, 2230.00000000, 'C9997', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(259, 39, 13, 20, 0, 625.89000000, 2230.00000000, 'C9997', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(260, 39, 1, 21, 1, 625.89000000, 2230.00000000, 'C9998', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(261, 39, 13, 21, 1, 625.89000000, 2230.00000000, 'C9998', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(262, 40, 2, 22, 0, 1466.12000000, 4675.00000000, 'B7763', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(263, 40, 2, 19, 0, 1190.90000000, 2475.00000000, 'B7765', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(264, 40, 2, 20, 0, 1190.90000000, 2475.00000000, 'B7766', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(265, 40, 2, 21, 0, 1190.90000000, 2475.00000000, 'B7767', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(266, 40, 2, 22, 0, 1190.90000000, 2475.00000000, 'B7768', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(267, 40, 10, 19, 4, 793.40000000, 2475.00000000, 'B7752', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(268, 40, 10, 20, 0, 793.40000000, 2475.00000000, 'B7753', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(269, 40, 10, 21, 0, 793.40000000, 2475.00000000, 'B7754', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(270, 40, 10, 22, 0, 793.40000000, 2475.00000000, 'B7755', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(271, 40, 10, 23, 0, 793.40000000, 2475.00000000, 'B7756', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(272, 41, 1, 19, 3, 1116.73000000, 3675.00000000, 'B9677', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(273, 41, 1, 20, 1, 1116.73000000, 3675.00000000, 'B9678', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(274, 41, 1, 21, 0, 1116.73000000, 3675.00000000, 'B9679', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(275, 41, 1, 22, 1, 1116.73000000, 3675.00000000, 'B9680', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(276, 41, 1, 23, 0, 1116.73000000, 3675.00000000, 'B9681', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(277, 42, 1, 19, 3, 1712.91000000, 4275.00000000, 'C3610', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(278, 42, 12, 19, 3, 1712.91000000, 4275.00000000, 'C3610', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(279, 42, 1, 20, 0, 1712.91000000, 4275.00000000, 'C3611', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(280, 42, 12, 20, 0, 1712.91000000, 4275.00000000, 'C3611', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(281, 42, 1, 21, 0, 1712.91000000, 4275.00000000, 'C3612', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(282, 42, 12, 21, 0, 1712.91000000, 4275.00000000, 'C3612', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(283, 42, 1, 22, 0, 1712.91000000, 4275.00000000, 'C3613', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(284, 42, 12, 22, 0, 1712.91000000, 4275.00000000, 'C3613', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(285, 42, 1, 23, 0, 1712.91000000, 4275.00000000, 'C3614', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(286, 42, 12, 23, 0, 1712.91000000, 4275.00000000, 'C3614', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(287, 43, 9, 19, 4, 2349.00000000, 5975.00000000, 'C9341', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(288, 43, 10, 19, 4, 2349.00000000, 5975.00000000, 'C9341', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(289, 43, 9, 20, 2, 2349.00000000, 5975.00000000, 'C9342', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(290, 43, 10, 20, 2, 2349.00000000, 5975.00000000, 'C9342', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(291, 43, 9, 21, 0, 2349.00000000, 5975.00000000, 'C9343', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(292, 43, 10, 21, 0, 2349.00000000, 5975.00000000, 'C9343', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(293, 43, 9, 22, 0, 2349.00000000, 5975.00000000, 'C9344', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(294, 43, 10, 22, 0, 2349.00000000, 5975.00000000, 'C9344', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(295, 43, 9, 23, 0, 2349.00000000, 5975.00000000, 'C9345', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(296, 43, 10, 23, 0, 2349.00000000, 5975.00000000, 'C9345', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(297, 44, 2, 19, 4, 2504.80000000, 7000.00000000, 'C3346', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(298, 44, 12, 19, 4, 2504.80000000, 7000.00000000, 'C3346', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(299, 44, 2, 20, 0, 2504.80000000, 7000.00000000, 'C3347', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(300, 44, 12, 20, 0, 2504.80000000, 7000.00000000, 'C3347', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(301, 44, 2, 21, 0, 2504.80000000, 7000.00000000, 'C3348', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(302, 44, 12, 21, 0, 2504.80000000, 7000.00000000, 'C3348', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(303, 44, 2, 22, 0, 2504.80000000, 7000.00000000, 'C3349', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(304, 44, 12, 22, 0, 2504.80000000, 7000.00000000, 'C3349', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(305, 44, 2, 23, 0, 2504.80000000, 7000.00000000, 'C3350', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(306, 44, 12, 23, 0, 2504.80000000, 7000.00000000, 'C3350', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(307, 45, 1, 19, 0, 1390.29000000, 3675.00000000, 'C6734', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(308, 45, 1, 20, 0, 1390.29000000, 3675.00000000, 'C6735', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(309, 45, 1, 21, 0, 1390.29000000, 3675.00000000, 'C6736', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(310, 45, 1, 22, 0, 1390.29000000, 3675.00000000, 'C6737', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(311, 45, 1, 23, 0, 1390.29000000, 3675.00000000, 'C6738', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(312, 46, 10, 19, 3, 753.05000000, 2475.00000000, 'C6979', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(313, 46, 20, 19, 3, 753.05000000, 2475.00000000, 'C6979', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(314, 46, 10, 20, 0, 753.05000000, 2475.00000000, 'C6980', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(315, 46, 20, 20, 0, 753.05000000, 2475.00000000, 'C6980', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(316, 46, 10, 21, 0, 753.05000000, 2475.00000000, 'C6981', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(317, 46, 20, 21, 0, 753.05000000, 2475.00000000, 'C6981', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(318, 46, 10, 22, 0, 753.05000000, 2475.00000000, 'C6982', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(319, 46, 20, 22, 0, 753.05000000, 2475.00000000, 'C6982', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(320, 46, 10, 23, 0, 753.05000000, 2475.00000000, 'C6983', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(321, 46, 20, 23, 0, 753.05000000, 2475.00000000, 'C6983', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(322, 47, 13, 19, 4, 1588.32000000, 4675.00000000, 'C6662', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(323, 47, 13, 20, 1, 1588.32000000, 4675.00000000, 'C6663', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(324, 47, 13, 21, 0, 1588.32000000, 4675.00000000, 'C6664', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(325, 47, 13, 22, 0, 1588.32000000, 4675.00000000, 'C6665', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(326, 47, 13, 23, 0, 1588.32000000, 4675.00000000, 'C6666', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(327, 48, 9, 19, 5, 2396.54000000, 5975.00000000, 'C6668', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(328, 48, 20, 19, 5, 2396.54000000, 5975.00000000, 'C6668', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(329, 48, 9, 20, 2, 2396.54000000, 5975.00000000, 'C6669', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(330, 48, 20, 20, 2, 2396.54000000, 5975.00000000, 'C6669', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(331, 48, 9, 21, 1, 2396.54000000, 5975.00000000, 'C6670', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(332, 48, 20, 21, 1, 2396.54000000, 5975.00000000, 'C6670', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(333, 48, 9, 22, 1, 2396.54000000, 5975.00000000, 'C6671', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(334, 48, 20, 22, 1, 2396.54000000, 5975.00000000, 'C6671', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(335, 48, 9, 23, 0, 2396.54000000, 5975.00000000, 'C6672', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(336, 48, 20, 23, 0, 2396.54000000, 5975.00000000, 'C6672', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(337, 49, 10, 19, 0, 1304.53000000, 3970.00000000, 'C4855', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(338, 49, 10, 20, 0, 1304.53000000, 3675.00000000, 'C4856', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(339, 49, 10, 21, 0, 1304.53000000, 3675.00000000, 'C4857', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(340, 49, 10, 22, 0, 1304.53000000, 3675.00000000, 'C4858', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(341, 49, 10, 23, 0, 1304.53000000, 3675.00000000, 'C4859', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(342, 49, 1, 19, 4, 1304.53000000, 3970.00000000, 'C9919', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(343, 49, 10, 19, 4, 1304.53000000, 3970.00000000, 'C9919', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(344, 49, 1, 20, 0, 1304.53000000, 3970.00000000, 'C9920', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(345, 49, 10, 20, 0, 1304.53000000, 3970.00000000, 'C9920', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(346, 49, 1, 21, 0, 1304.53000000, 3970.00000000, 'C9921', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(347, 49, 10, 21, 0, 1304.53000000, 3970.00000000, 'C9921', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(348, 49, 1, 22, 1, 1304.53000000, 3970.00000000, 'C9922', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(349, 49, 10, 22, 1, 1304.53000000, 3970.00000000, 'C9922', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(350, 49, 1, 23, 0, 1304.53000000, 3970.00000000, 'C9923', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(351, 49, 10, 23, 0, 1304.53000000, 3970.00000000, 'C9923', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(352, 50, 11, 19, 0, 783.38000000, 2730.00000000, 'C7672', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(353, 50, 11, 20, 0, 783.38000000, 2475.00000000, 'C7673', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(354, 50, 11, 21, 0, 783.38000000, 2475.00000000, 'C7674', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(355, 50, 11, 22, 0, 783.38000000, 2475.00000000, 'C7675', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(356, 50, 11, 23, 0, 783.38000000, 2475.00000000, 'C7676', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(357, 50, 1, 19, 4, 783.38000000, 2730.00000000, 'D0080', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(358, 50, 1, 20, 4, 783.38000000, 2730.00000000, 'D0081', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(359, 50, 1, 21, 2, 783.38000000, 2730.00000000, 'D0082', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(360, 50, 1, 22, 2, 783.38000000, 2730.00000000, 'D0083', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(361, 50, 1, 23, 2, 783.38000000, 2730.00000000, 'D0084', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(362, 51, 2, 19, 4, 1675.42000000, 4675.00000000, 'C6224', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(363, 51, 12, 19, 4, 1675.42000000, 4675.00000000, 'C6224', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(364, 51, 2, 20, 0, 1675.42000000, 4675.00000000, 'C6225', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(365, 51, 12, 20, 0, 1675.42000000, 4675.00000000, 'C6225', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(366, 51, 2, 21, 1, 1675.42000000, 4675.00000000, 'C6226', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(367, 51, 12, 21, 1, 1675.42000000, 4675.00000000, 'C6226', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(368, 51, 2, 22, 0, 1675.42000000, 4675.00000000, 'C6227', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(369, 51, 12, 22, 0, 1675.42000000, 4675.00000000, 'C6227', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(370, 51, 2, 23, 0, 1675.42000000, 4675.00000000, 'C6228', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(371, 51, 12, 23, 0, 1675.42000000, 4675.00000000, 'C6228', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(372, 52, 10, 19, 5, 1350.86000000, 3675.00000000, 'C6242', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(373, 52, 10, 20, 0, 1350.86000000, 3675.00000000, 'C6243', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(374, 52, 10, 21, 0, 1350.86000000, 3675.00000000, 'C6244', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(375, 52, 10, 22, 0, 1350.86000000, 3675.00000000, 'C6245', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(376, 52, 10, 23, 0, 1350.86000000, 3675.00000000, 'C6246', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(377, 53, 11, 19, 4, 2346.08000000, 5975.00000000, 'C7363', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(378, 53, 11, 20, 1, 2346.08000000, 5975.00000000, 'C7364', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(379, 53, 11, 21, 0, 2346.08000000, 5975.00000000, 'C7365', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(380, 53, 11, 22, 4, 2346.08000000, 5975.00000000, 'C7366', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(381, 53, 11, 23, 2, 2346.08000000, 5975.00000000, 'C7367', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(382, 54, 10, 19, 6, 1059.52000000, 2975.00000000, 'D0417', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(383, 54, 10, 20, 4, 1059.52000000, 2975.00000000, 'D0419', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(384, 54, 10, 21, 0, 1059.52000000, 2975.00000000, 'D0421', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(385, 54, 10, 22, 0, 1059.52000000, 2975.00000000, 'D0423', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(386, 54, 10, 23, 1, 1059.52000000, 2975.00000000, 'D0425', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(387, 55, 2, 21, 0, 1245.16000000, 2975.00000000, 'D0614', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(388, 55, 11, 21, 0, 1245.16000000, 2975.00000000, 'D0614', 10, NULL, NULL, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(389, 55, 2, 22, 0, 1245.16000000, 2975.00000000, 'D0616', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(390, 55, 11, 22, 0, 1245.16000000, 2975.00000000, 'D0616', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(391, 55, 2, 19, 4, 1245.16000000, 2975.00000000, 'D0610', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(392, 55, 11, 19, 4, 1245.16000000, 2975.00000000, 'D0610', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(393, 55, 2, 20, 0, 1245.16000000, 2975.00000000, 'D0612', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(394, 55, 11, 20, 0, 1245.16000000, 2975.00000000, 'D0612', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(395, 55, 2, 23, 0, 1245.16000000, 2975.00000000, 'D0618', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(396, 55, 11, 23, 0, 1245.16000000, 2975.00000000, 'D0618', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(397, 55, 2, 22, 0, 1245.16000000, 2975.00000000, 'D0620', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(398, 55, 11, 22, 0, 1245.16000000, 2975.00000000, 'D0620', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(399, 55, 2, 21, 0, 1245.16000000, 2975.00000000, 'D0622', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(400, 55, 11, 21, 0, 1245.16000000, 2975.00000000, 'D0622', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(401, 56, 2, 19, 3, 1294.24000000, 3075.00000000, 'D0427', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(402, 56, 12, 19, 3, 1294.24000000, 3075.00000000, 'D0427', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(403, 56, 2, 20, 0, 1294.24000000, 3075.00000000, 'D0429', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(404, 56, 12, 20, 0, 1294.24000000, 3075.00000000, 'D0429', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(405, 56, 2, 21, 0, 1294.24000000, 3075.00000000, 'D0431', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(406, 56, 12, 21, 0, 1294.24000000, 3075.00000000, 'D0431', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(407, 56, 2, 22, 0, 1294.24000000, 3075.00000000, 'D0433', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(408, 56, 12, 22, 0, 1294.24000000, 3075.00000000, 'D0433', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(409, 56, 2, 23, 0, 1294.24000000, 3075.00000000, 'D0435', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(410, 56, 12, 23, 0, 1294.24000000, 3075.00000000, 'D0435', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(411, 57, 2, 19, 3, 1520.88000000, 3475.00000000, 'C9301', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(412, 57, 12, 19, 3, 1520.88000000, 3475.00000000, 'C9301', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(413, 57, 2, 20, 0, 1520.88000000, 3475.00000000, 'C9302', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(414, 57, 12, 20, 0, 1520.88000000, 3475.00000000, 'C9302', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(415, 57, 2, 21, 0, 1520.88000000, 3475.00000000, 'C9303', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(416, 57, 12, 21, 0, 1520.88000000, 3475.00000000, 'C9303', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(417, 57, 2, 22, 1, 1520.88000000, 3475.00000000, 'C9304', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34');
INSERT INTO `inventories` (`id`, `product_id`, `colour_id`, `size_id`, `stock`, `cpu`, `mrp`, `sku`, `warning_amount`, `warehouse`, `deleted_at`, `created_at`, `updated_at`) VALUES
(418, 57, 12, 22, 1, 1520.88000000, 3475.00000000, 'C9304', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(419, 57, 2, 23, 0, 1520.88000000, 3475.00000000, 'C9305', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(420, 57, 12, 23, 0, 1520.88000000, 3475.00000000, 'C9305', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(421, 58, 14, 19, 4, 1323.63000000, 2815.00000000, 'D0270', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(422, 58, 14, 20, 0, 1323.63000000, 2815.00000000, 'D0271', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(423, 58, 14, 21, 0, 1323.63000000, 2815.00000000, 'D0272', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(424, 58, 14, 22, 0, 1323.63000000, 2815.00000000, 'D0273', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(425, 58, 14, 23, 0, 1323.63000000, 2815.00000000, 'D0274', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(426, 59, 10, 19, 4, 678.19000000, 2475.00000000, 'D0471', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(427, 59, 10, 20, 1, 678.19000000, 2475.00000000, 'D0473', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(428, 59, 10, 21, 0, 678.19000000, 2475.00000000, 'D0475', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(429, 59, 10, 22, 2, 678.19000000, 2475.00000000, 'D0477', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(430, 59, 10, 23, 0, 678.19000000, 2475.00000000, 'D0479', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(431, 60, 10, 19, 6, 1156.04000000, 2975.00000000, 'D0461', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(432, 60, 16, 19, 6, 1156.04000000, 2975.00000000, 'D0461', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(433, 60, 10, 20, 3, 1156.04000000, 2975.00000000, 'D0463', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(434, 60, 16, 20, 3, 1156.04000000, 2975.00000000, 'D0463', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(435, 60, 10, 21, 3, 1156.04000000, 2975.00000000, 'D0465', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(436, 60, 16, 21, 3, 1156.04000000, 2975.00000000, 'D0465', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(437, 60, 10, 22, 1, 1156.04000000, 2975.00000000, 'D0467', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(438, 60, 16, 22, 1, 1156.04000000, 2975.00000000, 'D0467', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(439, 60, 10, 23, 1, 1156.04000000, 2975.00000000, 'D0469', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(440, 60, 16, 23, 1, 1156.04000000, 2975.00000000, 'D0469', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(441, 61, 12, 19, 4, 1571.18000000, 4275.00000000, 'D0481', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(442, 61, 16, 19, 4, 1571.18000000, 4275.00000000, 'D0481', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(443, 61, 12, 20, 3, 1571.18000000, 4275.00000000, 'D0483', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(444, 61, 16, 20, 3, 1571.18000000, 4275.00000000, 'D0483', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(445, 61, 12, 21, 2, 1571.18000000, 4275.00000000, 'D0485', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(446, 61, 16, 21, 2, 1571.18000000, 4275.00000000, 'D0485', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(447, 61, 12, 22, 1, 1571.18000000, 4275.00000000, 'D0487', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(448, 61, 16, 22, 1, 1571.18000000, 4275.00000000, 'D0487', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(449, 61, 12, 23, 1, 1571.18000000, 4275.00000000, 'D0489', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(450, 61, 16, 23, 1, 1571.18000000, 4275.00000000, 'D0489', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(451, 62, 10, 19, 4, 2462.90000000, 6975.00000000, 'B1460', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(452, 62, 10, 20, 0, 2462.90000000, 6975.00000000, 'B1461', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(453, 62, 10, 21, 0, 2462.90000000, 6975.00000000, 'B1462', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(454, 62, 10, 22, 0, 2462.90000000, 6975.00000000, 'B1463', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(455, 62, 10, 23, 0, 2462.90000000, 6975.00000000, 'B1464', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(456, 63, 11, 19, 3, 1446.68000000, 3765.00000000, 'C5174', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(457, 63, 11, 20, 0, 1446.68000000, 3765.00000000, 'C5175', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(458, 63, 11, 21, 0, 1446.68000000, 3765.00000000, 'C5176', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(459, 63, 11, 22, 0, 1446.68000000, 3765.00000000, 'C5177', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(460, 63, 11, 23, 0, 1446.68000000, 3765.00000000, 'C5178', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(461, 64, 13, 23, 0, 1128.26000000, 3985.00000000, 'C5206', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(462, 64, 13, 19, 3, 1128.26000000, 3985.00000000, 'C5202', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(463, 64, 13, 20, 0, 1128.26000000, 3985.00000000, 'C5203', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(464, 64, 13, 21, 0, 1128.26000000, 3985.00000000, 'C5204', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(465, 64, 13, 22, 1, 1128.26000000, 3985.00000000, 'C5205', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(466, 65, 20, 19, 2, 1151.40000000, 5285.00000000, 'C4901', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(467, 65, 20, 20, 3, 1151.40000000, 5285.00000000, 'C4902', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(468, 65, 20, 21, 1, 1151.40000000, 5285.00000000, 'C4903', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(469, 65, 20, 22, 1, 1151.40000000, 5285.00000000, 'C4904', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(470, 65, 20, 23, 0, 1151.40000000, 5285.00000000, 'C4905', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(471, 66, 10, 2, 3, 490.00000000, 1175.00000000, 'B6135', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(472, 66, 10, 3, 4, 490.00000000, 1175.00000000, 'B6136', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(473, 66, 10, 1, 4, 490.00000000, 1175.00000000, 'B6137', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(474, 66, 10, 4, 0, 490.00000000, 1175.00000000, 'B6138', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(475, 67, 2, 2, 2, 620.00000000, 1275.00000000, 'B6140', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(476, 67, 2, 3, 0, 620.00000000, 1275.00000000, 'B6141', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(477, 67, 2, 1, 1, 620.00000000, 1275.00000000, 'B6142', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(478, 67, 2, 4, 3, 620.00000000, 1275.00000000, 'B6143', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(479, 68, 2, 2, 2, 610.00000000, 1275.00000000, 'B6155', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(480, 68, 2, 3, 1, 610.00000000, 1275.00000000, 'B6156', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(481, 68, 2, 1, 3, 610.00000000, 1275.00000000, 'B6157', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(482, 68, 2, 4, 2, 610.00000000, 1275.00000000, 'B6158', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(483, 69, 2, 2, 3, 577.48000000, 1275.00000000, 'C7112', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(484, 69, 10, 2, 3, 577.48000000, 1275.00000000, 'C7112', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(485, 69, 2, 3, 1, 577.48000000, 1275.00000000, 'C7113', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(486, 69, 10, 3, 1, 577.48000000, 1275.00000000, 'C7113', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(487, 69, 2, 1, 7, 577.48000000, 1275.00000000, 'C7114', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(488, 69, 10, 1, 7, 577.48000000, 1275.00000000, 'C7114', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(489, 69, 2, 4, 1, 577.48000000, 1275.00000000, 'C7115', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(490, 69, 10, 4, 1, 577.48000000, 1275.00000000, 'C7115', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(491, 70, 11, 2, 4, 425.16000000, 1175.00000000, 'C6772', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(492, 70, 11, 3, 9, 425.16000000, 1175.00000000, 'C6773', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(493, 70, 11, 1, 11, 425.16000000, 1175.00000000, 'C6774', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(494, 70, 11, 4, 3, 425.16000000, 1175.00000000, 'C6775', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(495, 70, 11, 2, 1, 466.76000000, 1175.00000000, 'C7099', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(496, 70, 11, 3, 2, 466.76000000, 1175.00000000, 'C7100', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(497, 70, 11, 1, 1, 466.76000000, 1175.00000000, 'C7101', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(498, 70, 11, 4, 0, 466.76000000, 1175.00000000, 'C7102', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(499, 71, 1, 0, 0, 3777.86000000, 16000.00000000, 'C8864', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(500, 71, 10, 0, 0, 3777.86000000, 16000.00000000, 'C8864', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(501, 71, 1, 0, 2, 2305.54000000, 5995.00000000, 'D0343', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(502, 71, 20, 0, 2, 2305.54000000, 5995.00000000, 'D0343', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(503, 72, 11, 0, 0, 3813.56000000, 10295.00000000, 'B9064', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(504, 72, 13, 0, 0, 3813.56000000, 10295.00000000, 'B9064', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(505, 72, 11, 0, 4, 3972.96000000, 8500.00000000, 'C8449', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(506, 72, 13, 0, 4, 3972.96000000, 8500.00000000, 'C8449', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(507, 73, 9, 0, 3, 2255.91000000, 5995.00000000, 'C9085', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(508, 73, 14, 0, 3, 2255.91000000, 5995.00000000, 'C9085', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(509, 74, 1, 0, 5, 1875.60000000, 4995.00000000, 'C9977', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(510, 74, 12, 0, 5, 1875.60000000, 4995.00000000, 'C9977', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(511, 75, 1, 0, 0, 1958.28000000, 5995.00000000, 'C9981', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(512, 75, 5, 0, 0, 1958.28000000, 5995.00000000, 'C9981', 10, NULL, NULL, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(513, 75, 1, 0, 6, 1658.28000000, 4500.00000000, 'C9979', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(514, 75, 5, 0, 6, 1658.28000000, 4500.00000000, 'C9979', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(515, 76, 0, 0, 2, 1590.48000000, 4995.00000000, 'D0064', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(516, 77, 2, 0, 2, 2207.89000000, 5995.00000000, 'D0402', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(517, 77, 14, 0, 2, 2207.89000000, 5995.00000000, 'D0402', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(518, 78, 5, 0, 3, 1630.13000000, 4500.00000000, 'D0411', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(519, 79, 2, 0, 3, 2011.31000000, 4500.00000000, 'D0413', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(520, 80, 2, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(521, 80, 15, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(522, 80, 16, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(523, 81, 2, 0, 5, 2108.11000000, 4500.00000000, 'D0539', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(524, 81, 15, 0, 5, 2108.11000000, 4500.00000000, 'D0539', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(525, 81, 16, 0, 5, 2108.11000000, 4500.00000000, 'D0539', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(526, 82, 12, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(527, 82, 15, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(528, 82, 17, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(529, 83, 2, 0, 5, 1583.15000000, 4500.00000000, 'D0553', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(530, 83, 13, 0, 5, 1583.15000000, 4500.00000000, 'D0553', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(531, 84, 2, 0, 4, 2400.59000000, 4995.00000000, 'D0555', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(532, 84, 13, 0, 4, 2400.59000000, 4995.00000000, 'D0555', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(533, 85, 9, 2, 3, 6326.55000000, 14185.00000000, 'B8045', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(534, 85, 10, 2, 3, 6326.55000000, 14185.00000000, 'B8045', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(535, 85, 9, 3, 2, 6326.55000000, 14185.00000000, 'B8046', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(536, 85, 10, 3, 2, 6326.55000000, 14185.00000000, 'B8046', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(537, 85, 9, 1, 3, 6326.55000000, 14185.00000000, 'B8047', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(538, 85, 10, 1, 3, 6326.55000000, 14185.00000000, 'B8047', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(539, 85, 9, 4, 1, 6326.55000000, 14185.00000000, 'B8048', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(540, 85, 10, 4, 1, 6326.55000000, 14185.00000000, 'B8048', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(541, 85, 9, 5, 2, 6326.55000000, 14185.00000000, 'B8049', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(542, 85, 10, 5, 2, 6326.55000000, 14185.00000000, 'B8049', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(543, 86, 9, 2, 0, 5845.82000000, 13995.00000000, 'C2842', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(544, 86, 10, 2, 0, 5845.82000000, 13995.00000000, 'C2842', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(545, 86, 9, 3, 0, 5845.82000000, 13995.00000000, 'C2843', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(546, 86, 10, 3, 0, 5845.82000000, 13995.00000000, 'C2843', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(547, 86, 9, 1, 2, 5845.82000000, 13995.00000000, 'C2844', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(548, 86, 10, 1, 2, 5845.82000000, 13995.00000000, 'C2844', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(549, 86, 9, 4, 0, 5845.82000000, 13995.00000000, 'C2845', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(550, 86, 10, 4, 0, 5845.82000000, 13995.00000000, 'C2845', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(551, 86, 9, 5, 0, 5845.82000000, 13995.00000000, 'C2846', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(552, 86, 10, 5, 0, 5845.82000000, 13995.00000000, 'C2846', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(553, 87, 11, 2, 1, 6487.67000000, 19995.00000000, 'C8300', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(554, 87, 11, 3, 3, 6487.67000000, 19995.00000000, 'C8301', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(555, 87, 11, 1, 6, 6487.67000000, 19995.00000000, 'C8302', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(556, 87, 11, 4, 2, 6487.67000000, 19995.00000000, 'C8303', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(557, 87, 11, 5, 0, 6487.67000000, 19995.00000000, 'C8304', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(558, 88, 1, 2, 2, 870.21000000, 2455.00000000, 'B9160', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(559, 88, 1, 3, 0, 870.21000000, 2455.00000000, 'B9161', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(560, 88, 1, 1, 1, 870.21000000, 2455.00000000, 'B9162', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(561, 88, 1, 4, 0, 870.21000000, 2455.00000000, 'B9163', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(562, 88, 1, 5, 0, 870.21000000, 2455.00000000, 'B9164', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(563, 89, 10, 2, 0, 959.72000000, 2455.00000000, 'C6272', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(564, 89, 10, 3, 0, 959.72000000, 2455.00000000, 'C6273', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(565, 89, 10, 1, 1, 959.72000000, 2455.00000000, 'C6274', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(566, 89, 10, 4, 4, 959.72000000, 2455.00000000, 'C6275', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(567, 89, 10, 5, 0, 959.72000000, 2455.00000000, 'C6276', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(568, 90, 5, 2, 6, 997.80000000, 2455.00000000, 'C9394', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(569, 90, 5, 3, 3, 997.80000000, 2455.00000000, 'C9395', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(570, 90, 5, 1, 5, 997.80000000, 2455.00000000, 'C9396', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(571, 90, 5, 4, 6, 997.80000000, 2455.00000000, 'C9397', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(572, 90, 5, 5, 3, 997.80000000, 2455.00000000, 'C9398', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(573, 91, 13, 2, 0, 1506.69000000, 5155.00000000, 'C7181', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(574, 91, 13, 3, 1, 1506.69000000, 5155.00000000, 'C7182', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(575, 91, 13, 1, 3, 1506.69000000, 5155.00000000, 'C7183', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(576, 91, 13, 4, 1, 1506.69000000, 5155.00000000, 'C7184', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(577, 91, 13, 5, 2, 1506.69000000, 5155.00000000, 'C7185', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(578, 92, 2, 0, 3, 611.16000000, 1975.00000000, 'B7493', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(579, 93, 14, 0, 2, 1493.86000000, 4485.00000000, 'D0662', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(580, 94, 10, 2, 0, 1191.57000000, 2535.00000000, 'B2643', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(581, 94, 10, 3, 0, 1191.57000000, 2535.00000000, 'B2644', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(582, 94, 10, 2, 0, 1191.57000000, 2535.00000000, 'C9806', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(583, 94, 10, 2, 0, 1191.57000000, 2535.00000000, 'B3169', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(584, 94, 10, 3, 4, 1191.57000000, 2535.00000000, 'B3170', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(585, 95, 10, 2, 2, 723.25000000, 2065.00000000, 'C2322', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(586, 95, 10, 3, 6, 723.25000000, 2065.00000000, 'C2323', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(587, 95, 10, 1, 4, 723.25000000, 2065.00000000, 'C2324', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(588, 96, 1, 2, 0, 1928.91000000, 5285.00000000, 'C5163', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(589, 96, 12, 2, 0, 1928.91000000, 5285.00000000, 'C5163', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(590, 96, 1, 3, 1, 1928.91000000, 5285.00000000, 'C5164', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(591, 96, 12, 3, 1, 1928.91000000, 5285.00000000, 'C5164', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(592, 96, 1, 1, 1, 1928.91000000, 5285.00000000, 'C5165', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(593, 96, 12, 1, 1, 1928.91000000, 5285.00000000, 'C5165', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(594, 96, 1, 4, 1, 1928.91000000, 5285.00000000, 'C5166', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(595, 96, 12, 4, 1, 1928.91000000, 5285.00000000, 'C5166', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(596, 97, 1, 2, 3, 2407.78000000, 6985.00000000, 'C4974', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(597, 97, 1, 3, 3, 2407.78000000, 6985.00000000, 'C4975', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(598, 97, 1, 1, 1, 2407.78000000, 6985.00000000, 'C4976', 10, NULL, NULL, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(599, 97, 1, 4, 1, 2407.78000000, 6985.00000000, 'C4977', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(600, 98, 1, 2, 0, 1239.38000000, 3985.00000000, 'C6066', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(601, 98, 1, 3, 0, 1239.38000000, 3985.00000000, 'C6067', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(602, 98, 1, 1, 0, 1239.38000000, 3985.00000000, 'C6068', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(603, 98, 1, 4, 1, 1239.38000000, 3985.00000000, 'C6069', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(604, 99, 5, 3, 3, 874.05000000, 2455.00000000, 'D0770', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(605, 99, 5, 2, 1, 874.05000000, 2455.00000000, 'D0772', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(606, 100, 11, 3, 3, 1790.37000000, 5855.00000000, 'D0826', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(607, 100, 11, 2, 4, 1905.34000000, 5855.00000000, 'D0828', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(608, 101, 13, 3, 3, 1816.37000000, 5855.00000000, 'D0822', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(609, 101, 13, 2, 1, 1933.20000000, 5855.00000000, 'D0824', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(610, 102, 14, 3, 2, 3113.23000000, 6955.00000000, 'D0788', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(611, 102, 14, 2, 0, 3113.23000000, 6955.00000000, 'D0790', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(612, 103, 2, 1, 8, 830.44000000, 2955.00000000, 'D0830', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(613, 103, 2, 2, 0, 830.44000000, 2955.00000000, 'D0832', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(614, 104, 1, 2, 2, 1494.03000000, 4495.00000000, 'C9129', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(615, 104, 2, 2, 2, 1494.03000000, 4495.00000000, 'C9129', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(616, 104, 1, 3, 3, 1494.03000000, 4495.00000000, 'C9130', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(617, 104, 2, 3, 3, 1494.03000000, 4495.00000000, 'C9130', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(618, 104, 1, 1, 4, 1494.03000000, 4495.00000000, 'C9131', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(619, 104, 2, 1, 4, 1494.03000000, 4495.00000000, 'C9131', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(620, 104, 1, 4, 1, 1494.03000000, 4495.00000000, 'C9132', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(621, 104, 2, 4, 1, 1494.03000000, 4495.00000000, 'C9132', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(622, 104, 1, 5, 0, 1494.03000000, 4495.00000000, 'C9133', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(623, 104, 2, 5, 0, 1494.03000000, 4495.00000000, 'C9133', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(624, 105, 0, 0, 4, 2830.20000000, 6195.00000000, 'C6031', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(625, 105, 0, 0, 3, 2830.20000000, 6195.00000000, 'C6032', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(626, 105, 0, 0, 1, 2830.20000000, 6195.00000000, 'C6033', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(627, 105, 0, 0, 2, 2830.20000000, 6195.00000000, 'C6034', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(628, 105, 0, 0, 1, 2830.20000000, 6195.00000000, 'C6035', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(629, 106, 10, 1, 0, 2425.77000000, 5800.00000000, 'D0730', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(630, 106, 10, 1, 5, 2425.77000000, 5800.00000000, 'D0390', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(631, 106, 10, 3, 2, 2425.77000000, 5800.00000000, 'D0392', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(632, 106, 10, 2, 2, 2425.77000000, 5800.00000000, 'D0394', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(633, 107, 10, 2, 3, 385.00000000, 975.00000000, 'C6724', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(634, 107, 10, 3, 9, 385.00000000, 975.00000000, 'C6725', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(635, 107, 10, 1, 8, 385.00000000, 975.00000000, 'C6726', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(636, 107, 10, 5, 0, 385.00000000, 975.00000000, 'C6727', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(637, 108, 1, 5, 0, 433.84000000, 1175.00000000, 'C7110', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(638, 108, 10, 5, 0, 433.84000000, 1175.00000000, 'C7110', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(639, 108, 1, 2, 8, 433.84000000, 1175.00000000, 'C7106', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(640, 108, 10, 2, 8, 433.84000000, 1175.00000000, 'C7106', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(641, 108, 1, 3, 4, 433.84000000, 1175.00000000, 'C7107', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(642, 108, 10, 3, 4, 433.84000000, 1175.00000000, 'C7107', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(643, 108, 1, 1, 12, 433.84000000, 1175.00000000, 'C7108', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(644, 108, 10, 1, 12, 433.84000000, 1175.00000000, 'C7108', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(645, 108, 1, 4, 2, 433.84000000, 1175.00000000, 'C7109', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(646, 108, 10, 4, 2, 433.84000000, 1175.00000000, 'C7109', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(647, 108, 1, 2, 0, 642.41000000, 1565.00000000, 'C7499', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(648, 108, 2, 2, 0, 642.41000000, 1565.00000000, 'C7499', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(649, 108, 1, 3, 0, 642.41000000, 1565.00000000, 'C7500', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(650, 108, 2, 3, 0, 642.41000000, 1565.00000000, 'C7500', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(651, 108, 1, 1, 1, 642.41000000, 1565.00000000, 'C7501', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(652, 108, 2, 1, 1, 642.41000000, 1565.00000000, 'C7501', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(653, 108, 1, 4, 0, 642.41000000, 1565.00000000, 'C7502', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(654, 108, 2, 4, 0, 642.41000000, 1565.00000000, 'C7502', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(655, 109, 13, 2, 3, 325.74000000, 975.00000000, 'C6729', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(656, 109, 13, 3, 8, 325.74000000, 975.00000000, 'C6730', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(657, 109, 13, 1, 11, 325.74000000, 975.00000000, 'C6731', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(658, 109, 13, 4, 1, 325.74000000, 975.00000000, 'C6732', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(659, 110, 10, 2, 1, 430.84000000, 1175.00000000, 'C6997', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(660, 110, 10, 3, 2, 430.84000000, 1175.00000000, 'C6998', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(661, 110, 10, 1, 8, 430.84000000, 1175.00000000, 'C6999', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(662, 110, 10, 4, 4, 430.84000000, 1175.00000000, 'C7000', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(663, 111, 1, 3, 0, 384.58000000, 955.00000000, 'C5738', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(664, 111, 12, 3, 0, 384.58000000, 955.00000000, 'C5738', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(665, 111, 1, 1, 0, 384.58000000, 955.00000000, 'C5739', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(666, 111, 12, 1, 0, 384.58000000, 955.00000000, 'C5739', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(667, 111, 12, 2, 0, 266.95000000, 955.00000000, 'C5741', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(668, 111, 12, 3, 0, 266.95000000, 955.00000000, 'C5742', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(669, 111, 12, 1, 0, 266.95000000, 955.00000000, 'C5743', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(670, 111, 11, 2, 0, 270.64000000, 955.00000000, 'C5745', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(671, 111, 11, 3, 0, 270.64000000, 955.00000000, 'C5746', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(672, 111, 11, 1, 4, 270.64000000, 955.00000000, 'C5747', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(673, 111, 13, 2, 0, 273.80000000, 955.00000000, 'C5749', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(674, 111, 13, 3, 0, 273.80000000, 955.00000000, 'C5750', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(675, 111, 13, 1, 0, 273.80000000, 955.00000000, 'C5751', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(676, 111, 2, 2, 0, 406.07000000, 955.00000000, 'C5753', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(677, 111, 2, 3, 0, 406.07000000, 955.00000000, 'C5754', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(678, 111, 2, 1, 0, 406.07000000, 955.00000000, 'C5755', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(679, 112, 2, 0, 3, 2316.68000000, 4775.00000000, 'D0920', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(680, 113, 2, 0, 7, 1733.15000000, 4995.00000000, 'D0854', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(681, 113, 13, 0, 7, 1733.15000000, 4995.00000000, 'D0854', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(682, 114, 1, 0, 7, 3065.98000000, 5995.00000000, 'D0916', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(683, 114, 2, 0, 7, 3065.98000000, 5995.00000000, 'D0916', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(684, 115, 2, 0, 4, 1772.18000000, 4500.00000000, 'D0914', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(685, 115, 12, 0, 4, 1772.18000000, 4500.00000000, 'D0914', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(686, 116, 2, 0, 4, 4547.32000000, 10995.00000000, 'D0962', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(687, 116, 12, 0, 4, 4547.32000000, 10995.00000000, 'D0962', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(688, 117, 13, 0, 7, 1600.70000000, 4500.00000000, 'D0912', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(689, 118, 10, 0, 8, 1997.47000000, 5995.00000000, 'D0936', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(690, 119, 2, 0, 9, 2225.74000000, 5995.00000000, 'D0938', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(691, 119, 5, 0, 9, 2225.74000000, 5995.00000000, 'D0938', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(692, 120, 17, 0, 5, 2986.71000000, 5995.00000000, 'D0928', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(693, 121, 10, 0, 8, 1833.32000000, 4995.00000000, 'D0926', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(694, 121, 13, 0, 8, 1833.32000000, 4995.00000000, 'D0926', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(695, 122, 5, 0, 8, 1709.97000000, 4995.00000000, 'D0966', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(696, 122, 10, 0, 8, 1709.97000000, 4995.00000000, 'D0966', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(697, 123, 1, 0, 2, 2454.92000000, 4995.00000000, 'D0980', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(698, 123, 2, 0, 2, 2454.92000000, 4995.00000000, 'D0980', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(699, 123, 14, 0, 2, 2454.92000000, 4995.00000000, 'D0980', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(700, 124, 2, 0, 4, 2358.45000000, 4995.00000000, 'D0982', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(701, 124, 14, 0, 4, 2358.45000000, 4995.00000000, 'D0982', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(702, 125, 0, 0, 10, 3320.00000000, 4650.00000000, 'B0379', 10, NULL, NULL, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(703, 126, 20, 23, 20, 5000.00000000, 6000.00000000, 'G12', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(704, 126, 18, 22, 12, 5500.00000000, 6500.00000000, 'G133', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(712, 128, 2, 0, 3, 2316.68000000, 4775.00000000, 'D1234', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(713, 128, 2, 0, 7, 1733.15000000, 4995.00000000, 'D1423', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(714, 128, 13, 0, 7, 1733.15000000, 4995.00000000, 'D1423', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(715, 128, 1, 0, 7, 3065.98000000, 5995.00000000, 'D1243', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(716, 128, 2, 0, 7, 3065.98000000, 5995.00000000, 'D1243', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(717, 128, 2, 0, 4, 1772.18000000, 4500.00000000, 'D1324', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(718, 128, 12, 0, 4, 1772.18000000, 4500.00000000, 'D1324', 10, NULL, NULL, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(719, 129, 19, 0, 60, 5500.00000000, 7000.00000000, 'z123', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(720, 129, 20, 0, 70, 6500.00000000, 7500.00000000, 'z456', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(721, 130, 0, 23, 90, 1020.00000000, 1500.00000000, 'z2345', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(722, 130, 0, 21, 80, 1050.00000000, 1600.00000000, 'z4567', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(723, 131, 0, 0, 87, 6000.00000000, 7500.00000000, 'D56789', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(724, 132, 0, 0, 60, 890.00000000, 1050.00000000, 'T234', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(725, 133, 0, 0, 76, 9000.00000000, 10000.00000000, 'BHG908', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(726, 134, 0, 23, 5, 4500.00000000, 6230.00000000, 'C9991', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(727, 134, 0, 22, 5, 4500.00000000, 6230.00000000, 'C9992', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(728, 134, 0, 21, 5, 4500.00000000, 6230.00000000, 'C9993', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(729, 134, 0, 20, 4, 4500.00000000, 6230.00000000, 'C9994', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(730, 134, 0, 19, 9, 4500.00000000, 6230.00000000, 'C9995', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(731, 135, 20, 0, 9, 17500.00000000, 25000.00000000, 'C9724', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(732, 135, 16, 0, 7, 18000.00000000, 27000.00000000, 'C9838', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(733, 136, 0, 0, 65, 6765.00000000, 7866.00000000, 'D1920675', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(734, 137, 0, 0, 34, 3000.00000000, 3500.00000000, 'S123', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(735, 138, 0, 0, 70, 4000.00000000, 5000.00000000, 'S234', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(742, 140, 0, 23, 10, 700.00000000, 750.00000000, 'S200', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(743, 140, 0, 21, 10, 700.00000000, 770.00000000, 'S201', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(744, 140, 0, 19, 10, 700.00000000, 780.00000000, 'S202', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(745, 140, 0, 22, 10, 700.00000000, 800.00000000, 'S203', 10, NULL, NULL, '2023-09-24 07:50:09', '2023-09-24 07:50:09'),
(746, 140, 0, 24, 10, 700.00000000, 800.00000000, 'S205', 10, NULL, NULL, '2023-09-24 07:50:09', '2023-09-24 07:50:09'),
(747, 141, 19, 23, 10, 1000.00000000, 1500.00000000, 'S300', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(748, 141, 19, 22, 10, 1000.00000000, 1500.00000000, 'S301', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(749, 141, 19, 21, 10, 1000.00000000, 1500.00000000, 'S302', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(750, 141, 19, 20, 10, 1000.00000000, 1500.00000000, 'S303', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(751, 141, 20, 23, 10, 1000.00000000, 1500.00000000, 'S304', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(752, 141, 20, 22, 10, 1000.00000000, 1500.00000000, 'S305', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(753, 141, 20, 21, 10, 1000.00000000, 1500.00000000, 'S306', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(754, 141, 20, 20, 10, 1000.00000000, 1500.00000000, 'S307', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(755, 141, 17, 23, 10, 1000.00000000, 1500.00000000, 'S308', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(756, 141, 17, 22, 10, 1000.00000000, 1500.00000000, 'S309', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(757, 141, 17, 21, 10, 1000.00000000, 1500.00000000, 'S310', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(758, 141, 17, 20, 10, 1000.00000000, 1500.00000000, 'S311', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(759, 141, 16, 23, 10, 1000.00000000, 1500.00000000, 'S312', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(760, 141, 16, 22, 10, 1000.00000000, 1500.00000000, 'S313', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(761, 141, 16, 21, 10, 1000.00000000, 1500.00000000, 'S314', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(762, 141, 16, 20, 10, 1000.00000000, 1500.00000000, 'S315', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(763, 142, 0, 19, 10, 4000.00000000, 5000.00000000, 'S345', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(764, 142, 0, 23, 10, 4000.00000000, 5000.00000000, 'S678', 10, NULL, NULL, '2022-03-11 18:00:00', NULL),
(765, 143, 2, 0, 50, 2316.68000000, 4875.00000000, 'D1234', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(766, 143, 2, 0, 51, 1733.15000000, 4895.00000000, 'D1423', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(767, 143, 13, 0, 51, 1733.15000000, 4895.00000000, 'D1423', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(768, 143, 1, 0, 52, 3065.98000000, 5895.00000000, 'D1243', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(769, 143, 2, 0, 52, 3065.98000000, 5895.00000000, 'D1243', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(770, 143, 2, 0, 53, 1772.18000000, 4800.00000000, 'D1324', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(771, 143, 12, 0, 53, 1772.18000000, 4800.00000000, 'D1324', 10, NULL, NULL, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(772, 144, 2, 1, 24, 500.00000000, 800.00000000, 'test1', 10, NULL, NULL, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(773, 145, 3, 2, 22, 400.00000000, 700.00000000, 'test2', 10, NULL, NULL, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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

--
-- Dumping data for table `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('9a66298b-c217-4bdc-af1f-511997983908', '', 0, 0, 0, '[]', 'a:0:{}', NULL, 1697635743, NULL),
('9a662b91-c2b5-4d00-9a0e-e884ea4b933e', '', 0, 0, 0, '[]', 'a:0:{}', NULL, 1697636083, NULL);

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
(401, 'https://res.cloudinary.com/diyc1dizi/image/upload/52.jpg', 'image', '52', '52', 'jpg', 1, '2023-10-15 02:45:00', NULL);

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
(62, '2023_10_18_122131_create_job_batches_table', 8);

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
  `total_fragile_amount` double(8,4) NOT NULL DEFAULT 0.0000,
  `charge_fragile_amount` double(8,4) NOT NULL DEFAULT 0.0000,
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
  `exchange_rate` float DEFAULT NULL,
  `user_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `charge_total_price`, `vat_rate`, `charge_vat_rate`, `vat_amount`, `charge_vat_amount`, `total_item`, `shipping_method`, `coupon`, `payment_method`, `payment_via`, `payment_method_name`, `transaction_id`, `discount`, `charge_discount`, `coupon_discount`, `payment_status`, `validation_id`, `card_type`, `order_date`, `requested_delivery_date`, `payment_date`, `shipping_amount`, `charge_shipping_amount`, `total_fragile_amount`, `charge_fragile_amount`, `tracking_id`, `payment_info`, `status`, `is_same_address`, `order_position`, `delivery_type`, `delivery_platform`, `percel_type`, `pickup_point_no`, `deleted_at`, `created_at`, `updated_at`, `charged_currency`, `exchange_rate`, `user_note`) VALUES
(12, '072H00AY230993', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 09:23:15', '2023-09-03 09:23:15', 'BDT', 1, 'test'),
(13, '02I3028S390QM2', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 09:26:53', '2023-09-03 09:26:53', 'BDT', 1, 'test'),
(14, '0U2L930QDO2V30', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 09:29:06', '2023-09-03 09:29:06', 'BDT', 1, 'test'),
(15, 'L0B00H302Q9132', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 09:32:17', '2023-09-03 09:32:17', 'BDT', 1, 'test'),
(16, 'C930903670I222', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 09:33:23', '2023-09-03 09:33:23', 'BDT', 1, 'test'),
(17, '2350KI0Z309J42', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 09:34:49', '2023-09-03 09:34:49', 'BDT', 1, 'test'),
(18, '3A20900YDP23N9', 4, 7325.0000, 7325.0000, 0.00, 0.00, 549.3750, 550.0000, 3, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 0.0000, 0.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 10:26:10', '2023-09-03 10:26:10', 'BDT', 1, NULL),
(19, 'GD0902TY3N2230', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:17:19', '2023-09-03 12:17:19', 'BDT', 1, 'testt'),
(21, '093VT2CB3X0320', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:24:46', '2023-09-03 12:24:46', 'BDT', 1, NULL),
(22, '92330O08L0X342', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:26:44', '2023-09-03 12:26:44', 'BDT', 1, NULL),
(23, 'G22Y00F3JV0931', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:28:30', '2023-09-03 12:28:30', 'BDT', 1, NULL),
(24, '2WV3M9302E200G', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:29:48', '2023-09-03 12:29:48', 'BDT', 1, NULL),
(25, '3K2037Z9W3R020', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:32:16', '2023-09-03 12:32:16', 'BDT', 1, NULL),
(26, 'O099V23F200H3T', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:34:33', '2023-09-03 12:34:33', 'BDT', 1, NULL),
(27, '2X93A3210M50N0', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:36:17', '2023-09-03 12:36:17', 'BDT', 1, NULL),
(28, '19V382W322000S', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:37:45', '2023-09-03 12:37:45', 'BDT', 1, NULL),
(29, 'O0093HX2L32J04', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:40:05', '2023-09-03 12:40:05', 'BDT', 1, NULL),
(30, '02330C292FE0XJ', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:41:28', '2023-09-03 12:41:28', 'BDT', 1, NULL),
(31, '607T92332ER001', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:42:46', '2023-09-03 12:42:46', 'BDT', 1, NULL),
(32, '20O43PD630290H', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:43:43', '2023-09-03 12:43:43', 'BDT', 1, NULL),
(33, '32920030KFS6O8', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-03', '2023-09-04', NULL, 150, 150, 25.0000, 25.0000, NULL, NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 12:44:47', '2023-09-03 12:44:47', 'BDT', 1, NULL),
(41, '8EH620300X93B2', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '230903190935NGDBL1HGryrcqAH', 0, 0, 0, 1, '230903190936AC3ygygpOr2eKPV', 'Cellfine-Cellfine', '2023-09-03', '2023-09-04', '2023-09-03', 150, 150, 25.0000, 25.0000, 'ECR46822099030923', '{\"tran_id\":\"41\",\"val_id\":\"230903190936AC3ygygpOr2eKPV\",\"amount\":\"11310.13\",\"card_type\":\"Cellfine-Cellfine\",\"store_amount\":\"11027.38\",\"card_no\":null,\"bank_tran_id\":\"230903190935NGDBL1HGryrcqAH\",\"status\":\"VALID\",\"tran_date\":\"2023-09-03 19:09:23\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Cellfine\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"af9ad6896b60a4c10455db7fefdb4952\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8ccb9223b8e8851020b5ccb19380f6b838e6fadb5e688e3ad61de0bef4da9106\",\"currency_type\":\"BDT\",\"currency_amount\":\"11310.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-03 13:09:22', '2023-09-03 13:09:38', 'BDT', 1, NULL),
(45, 'F4920S0Q32Z604', 4, 10510.0000, 10510.0000, 0.00, 0.00, 625.1250, 625.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '2309041147140miUdGFWacgll5w', 0, 0, 0, 1, '2309041147141Ov7xTSJFU5MRIQ', 'OKAYWALLET-Okay Wallet', '2023-09-04', '2023-09-05', '2023-09-04', 150, 150, 25.0000, 25.0000, 'ECR48911354040923', '{\"tran_id\":\"45\",\"val_id\":\"2309041147141Ov7xTSJFU5MRIQ\",\"amount\":\"11310.13\",\"card_type\":\"OKAYWALLET-Okay Wallet\",\"store_amount\":\"11027.38\",\"card_no\":null,\"bank_tran_id\":\"2309041147140miUdGFWacgll5w\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 11:46:41\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":null,\"card_brand\":null,\"card_sub_brand\":\"Classic\",\"card_issuer_country\":null,\"card_issuer_country_code\":null,\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"c8d7fa82c9d62fecaac901b3a12b0d8f\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8ca8d994e0459a6d8d6369cea3554d5899dff3373848fdeffdcc9484e16fc9ca\",\"currency_type\":\"BDT\",\"currency_amount\":\"11310.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 05:46:40', '2023-09-04 05:47:17', 'BDT', 1, NULL),
(47, '9Q07244XA0I302', 5, 20925.0000, 20925.0000, 0.00, 0.00, 1569.3750, 1569.0000, 3, NULL, NULL, '0', 1, 'sslCommerz', '2309041153028sqWWWejc8yhqzI', 0, 0, 0, 1, '230904115302LWWpmGLfe3ERcUd', 'NAGAD-Nagad', '2023-09-04', '2023-09-05', '2023-09-04', 150, 150, 0.0000, 0.0000, 'ECR74331268040923', '{\"tran_id\":\"47\",\"val_id\":\"230904115302LWWpmGLfe3ERcUd\",\"amount\":\"22644.38\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"22078.27\",\"card_no\":null,\"bank_tran_id\":\"2309041153028sqWWWejc8yhqzI\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 11:52:53\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"486e231ef48a13cc75db9daf4eb857ee\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"842c7fe434f1c2332aaeae13edcc217868e8a40eaf2bb5dfd6b759546c39d54e\",\"currency_type\":\"BDT\",\"currency_amount\":\"22644.38\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 05:52:52', '2023-09-04 05:53:05', 'BDT', 1, 'dfgdfgdffg'),
(53, '2F0I429080W9H3', 6, 7500.0000, 7500.0000, 0.00, 0.00, 375.0000, 375.0000, 1, NULL, NULL, '0', 1, 'sslCommerz', '230904122040Ev8vDiCjDifycrp', 0, 0, 0, 1, '230904122041aLKzlxTlpV1ffWV', 'BKASH-BKash', '2023-09-04', '2023-09-05', '2023-09-04', 60, 60, 0.0000, 0.0000, 'ECR93499942040923', '{\"tran_id\":\"53\",\"val_id\":\"230904122041aLKzlxTlpV1ffWV\",\"amount\":\"7935.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"7736.63\",\"card_no\":null,\"bank_tran_id\":\"230904122040Ev8vDiCjDifycrp\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 12:18:02\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"120125ea1780761d9ef29fde491bb682\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"69df02f19095aabe41c4fe052c6110ddbbc4cc08cc2873099bd4cca1de3dbb97\",\"currency_type\":\"BDT\",\"currency_amount\":\"7935.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:18:01', '2023-09-04 06:20:44', 'BDT', 1, 'jhygjtyth'),
(55, 'P002304ZA02O49', 6, 21000.0000, 21000.0000, 0.00, 0.00, 1050.0000, 1050.0000, 3, NULL, NULL, '0', 1, 'sslCommerz', '230904123013luI82oo3IkuETD8', 0, 0, 0, 1, '2309041230131HURWmP2XsXV249', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-09-04', '2023-09-05', '2023-09-04', 60, 60, 0.0000, 0.0000, 'ECR98969750040923', '{\"tran_id\":\"55\",\"val_id\":\"2309041230131HURWmP2XsXV249\",\"amount\":\"22110.00\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"21557.25\",\"card_no\":null,\"bank_tran_id\":\"230904123013luI82oo3IkuETD8\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 12:30:13\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"eb32a89102059c8f83d9708042536c48\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"acf48e8d1d9baa773d20cad10b100c6a0f1e5b1a6472ecad0106e465a798e015\",\"currency_type\":null,\"currency_amount\":null,\"currency_rate\":null,\"base_fair\":null,\"value_a\":null,\"value_b\":null,\"value_c\":null,\"value_d\":null,\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:29:40', '2023-09-04 06:30:16', 'BDT', 1, 'hhgyggxfxtg'),
(56, 'PNV003G7229U40', 6, 21000.0000, 21000.0000, 0.00, 0.00, 1050.0000, 1050.0000, 3, NULL, NULL, '0', 1, 'sslCommerz', '230904123055gy9juzL0WWvqiGI', 0, 0, 0, 1, '2309041230551Dc7FAYK6x4uQcT', 'BKASH-BKash', '2023-09-04', '2023-09-05', '2023-09-04', 60, 60, 0.0000, 0.0000, 'ECR89490245040923', '{\"tran_id\":\"56\",\"val_id\":\"2309041230551Dc7FAYK6x4uQcT\",\"amount\":\"22110.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"21557.25\",\"card_no\":null,\"bank_tran_id\":\"230904123055gy9juzL0WWvqiGI\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 12:30:47\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"5767e4994f2f126fee4fe4578e3275f0\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"813118ad33f3fb34930786220a7673d57b8caa4a6606bc39c3344b3f449a9d71\",\"currency_type\":\"BDT\",\"currency_amount\":\"22110.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:30:45', '2023-09-04 06:30:58', 'BDT', 1, 'hfjcdgzstg'),
(58, '9OX324Q012EP00', 6, 21000.0000, 21000.0000, 0.00, 0.00, 1050.0000, 1050.0000, 3, NULL, NULL, '0', 1, 'sslCommerz', '230904123726DdMPzpkor5oQRwb', 0, 0, 0, 1, '2309041237260zBWpROBtp2osrV', 'NAGAD-Nagad', '2023-09-04', '2023-09-05', '2023-09-04', 60, 60, 0.0000, 0.0000, 'ECR88440822040923', '{\"tran_id\":\"58\",\"val_id\":\"2309041237260zBWpROBtp2osrV\",\"amount\":\"22110.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"21557.25\",\"card_no\":null,\"bank_tran_id\":\"230904123726DdMPzpkor5oQRwb\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 12:37:16\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"68a9919e4aacc1493d5e8f41b67e3294\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"f5ec3ad899c5fb5e6eb41766d830231cbf9c51d08c3319ecb6b7b7891bf5864d\",\"currency_type\":\"BDT\",\"currency_amount\":\"22110.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:37:15', '2023-09-04 06:37:29', 'BDT', 1, 'fgfhg'),
(59, 'XNR20QI1492030', 6, 14000.0000, 14000.0000, 0.00, 0.00, 700.0000, 700.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '23090412412215F3vxYNQ9YXDfM', 0, 0, 0, 1, '2309041241231Qm4fVOxurfPZQq', 'BKASH-BKash', '2023-09-04', '2023-09-05', '2023-09-04', 60, 60, 0.0000, 0.0000, 'ECR61595682040923', '{\"tran_id\":\"59\",\"val_id\":\"2309041241231Qm4fVOxurfPZQq\",\"amount\":\"14760.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"14391.00\",\"card_no\":null,\"bank_tran_id\":\"23090412412215F3vxYNQ9YXDfM\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 12:38:40\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"f6137605aa71fceea75f97b2a8bdef0c\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8e9f6577a3e2437e302d5664fc6913e86375a08ef95de9e42656530df96de759\",\"currency_type\":\"BDT\",\"currency_amount\":\"14760.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:38:38', '2023-09-04 06:41:26', 'BDT', 1, 'gfrdrdr'),
(60, '0J12403BR09026', 6, 14000.0000, 14000.0000, 0.00, 0.00, 700.0000, 700.0000, 2, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-04', '2023-09-05', NULL, 60, 60, 0.0000, 0.0000, 'ECR78418448040923', NULL, 1, 1, 1, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:43:58', '2023-09-04 06:43:59', 'BDT', 1, 'dgbxdfhjcf'),
(61, 'U0292060E3144N', 6, 3150.0000, 3150.0000, 0.00, 0.00, 236.2500, 236.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '230904125356sjBsy138o3paWPk', 0, 0, 0, 1, '230904125356TH6pSEX5EE3SSN2', 'BKASH-BKash', '2023-09-04', '2023-09-05', '2023-09-04', 150, 150, 50.0000, 50.0000, 'ECR53291279040923', '{\"tran_id\":\"61\",\"val_id\":\"230904125356TH6pSEX5EE3SSN2\",\"amount\":\"3586.25\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"3496.59\",\"card_no\":null,\"bank_tran_id\":\"230904125356sjBsy138o3paWPk\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 12:53:48\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"b6e5908ec16a8f82ea5fbfa330b46ab3\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"df0a475519a7e1df964b2ee876aaace2ec39aff51fede59b60b4b8377d57e53d\",\"currency_type\":\"BDT\",\"currency_amount\":\"3586.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 06:53:48', '2023-09-04 06:53:59', 'BDT', 1, 'afsdehgsrh'),
(66, '3209X8J6200NE4', 4, 3980.0000, 3980.0000, 0.00, 0.00, 298.5000, 298.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '230904131211vizPyfYlTwxby4B', 0, 0, 0, 1, '2309041312110CMt7p0DQJhxo7D', 'UPay-UPay', '2023-09-04', '2023-09-05', '2023-09-04', 150, 150, 25.0000, 25.0000, 'ECR27239433040923', '{\"tran_id\":\"66\",\"val_id\":\"2309041312110CMt7p0DQJhxo7D\",\"amount\":\"4453.50\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"4342.16\",\"card_no\":null,\"bank_tran_id\":\"230904131211vizPyfYlTwxby4B\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 13:11:57\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"45c4bd05ab6363cced99094a07921f88\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"5612a505025d6228e67f5d685086c3ebf8492561bbf53abca099f3efa825ecc9\",\"currency_type\":\"BDT\",\"currency_amount\":\"4453.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 07:11:55', '2023-09-04 07:12:14', 'BDT', 1, NULL),
(67, '2EL4H40321090Z', 6, 7525.0000, 7525.0000, 0.00, 0.00, 376.2500, 376.0000, 1, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-04', '2023-09-05', NULL, 150, 150, 25.0000, 25.0000, 'ECR21877998040923', NULL, 1, 1, 1, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 07:16:03', '2023-09-04 07:16:04', 'BDT', 1, NULL),
(68, '3020C09DKI24VY', 6, 1075.0000, 1075.0000, 0.00, 0.00, 53.7500, 54.0000, 1, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-04', '2023-09-05', NULL, 150, 150, 25.0000, 25.0000, 'ECR46581027040923', NULL, 1, 1, 1, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 07:43:48', '2023-09-04 07:43:49', 'BDT', 1, 'zvzxb'),
(73, '0240237K9WA40U', 4, 1075.0000, 1075.0000, 0.00, 0.00, 53.7500, 54.0000, 1, NULL, NULL, '0', 1, 'sslCommerz', '230904155225fxmUZykTYnMH8AO', 0, 0, 0, 1, '2309041552251aSu2cOlqI24RgY', 'ABBANKIB-AB Bank', '2023-09-04', '2023-09-05', '2023-09-04', 150, 150, 25.0000, 25.0000, 'ECR65665543040923', '{\"tran_id\":\"73\",\"val_id\":\"2309041552251aSu2cOlqI24RgY\",\"amount\":\"1303.75\",\"card_type\":\"ABBANKIB-AB Bank\",\"store_amount\":\"1271.16\",\"card_no\":null,\"bank_tran_id\":\"230904155225fxmUZykTYnMH8AO\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 15:52:06\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"AB Bank Limited\",\"card_brand\":\"IB\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"13409ef28e9d020dc4979cb67d41b783\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"d167230b143ea654b1c6cfc3f205b22faca683a348bc13d91fd80f24a846dad5\",\"currency_type\":\"BDT\",\"currency_amount\":\"1303.75\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 09:52:05', '2023-09-04 09:52:28', 'BDT', 1, NULL),
(74, 'R02E369G401052', 6, 1075.0000, 1075.0000, 0.00, 0.00, 53.7500, 54.0000, 1, NULL, NULL, '0', 1, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-04', '2023-09-05', NULL, 60, 60, 25.0000, 25.0000, 'ECR81544875040923', NULL, 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 09:56:00', '2023-09-04 09:56:01', 'BDT', 1, 'sfasf'),
(75, '012003942A49HK', 6, 1075.0000, 1075.0000, 0.00, 0.00, 53.7500, 54.0000, 1, NULL, NULL, '0', 1, 'sslCommerz', '2309041557010zEs6rmG6TwW13z', 0, 0, 0, 1, '23090415570107flhSxeVyFMEYh', 'BKASH-BKash', '2023-09-04', '2023-09-05', '2023-09-04', 150, 150, 25.0000, 25.0000, 'ECR26208198040923', '{\"tran_id\":\"75\",\"val_id\":\"23090415570107flhSxeVyFMEYh\",\"amount\":\"1303.75\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"1271.16\",\"card_no\":null,\"bank_tran_id\":\"2309041557010zEs6rmG6TwW13z\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 15:56:48\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"197e3ca779605e009338c103bad6bc7f\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8903efcca067ec269a5ccb97529d9de92ac08a27d8d0d6c9ca12b6c1c82cc713\",\"currency_type\":\"BDT\",\"currency_amount\":\"1303.75\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 09:56:47', '2023-09-04 09:57:04', 'BDT', 1, NULL),
(76, 'VO2494N0000932', 6, 10025.0000, 10025.0000, 0.00, 0.00, 501.2500, 501.0000, 1, NULL, NULL, '0', 1, 'sslCommerz', '2309041613560uGh23ixmdLcDzc', 0, 0, 0, 1, '2309041613560LjF8spnei1dQnB', 'BKASH-BKash', '2023-09-04', '2023-09-05', '2023-09-04', 140, 140, 25.0000, 25.0000, 'ECR81619568040923', '{\"tran_id\":\"76\",\"val_id\":\"2309041613560LjF8spnei1dQnB\",\"amount\":\"10691.25\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"10423.97\",\"card_no\":null,\"bank_tran_id\":\"2309041613560uGh23ixmdLcDzc\",\"status\":\"VALID\",\"tran_date\":\"2023-09-04 16:13:46\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"aca52095e9cd5b464a6453612e5ca1cf\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"10b86ec5f7bf03633c2800f68e23b3cd3727401485fcea06c6b13584a7003fbd\",\"currency_type\":\"BDT\",\"currency_amount\":\"10691.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 3, 0, 'E-Courier', 0, NULL, NULL, '2023-09-04 10:13:45', '2023-09-05 09:28:14', 'BDT', 1, NULL),
(81, 'C3GA39022X0070', 4, 11100.0000, 11100.0000, 0.00, 0.00, 555.0000, 555.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '230907114052kgKjcEDzFN4bS27', 0, 0, 0, 1, '230907114052F3AWszAoBn2BBFD', 'UPay-UPay', '2023-09-07', '2023-09-08', '2023-09-07', 140, 140, 50.0000, 50.0000, 'ECR26528432070923', '{\"tran_id\":\"81\",\"val_id\":\"230907114052F3AWszAoBn2BBFD\",\"amount\":\"11845.00\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"11548.88\",\"card_no\":null,\"bank_tran_id\":\"230907114052kgKjcEDzFN4bS27\",\"status\":\"VALID\",\"tran_date\":\"2023-09-07 11:40:29\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"f9e5a92dab73011d664f06faa0f67fcd\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"84ff92d13f216985e2e692926428288f5cee92aa960d816866e842766acde622\",\"currency_type\":\"BDT\",\"currency_amount\":\"11845.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-07 05:40:27', '2023-09-07 05:40:54', 'BDT', 1, NULL),
(82, 'Z9F69207203001', 6, 54995.0000, 25274.0000, 0.00, 0.00, 4124.6250, 1895.0000, 3, NULL, NULL, '0', 1, 'sslCommerz', '230907114228SETxCFvYCaGp8gR', 0, 0, 0, 1, '2309071142290Hb432Pd2YWDSPz', 'BKASH-BKash', '2023-09-07', '2023-09-08', '2023-09-07', 60, 60, 0.0000, 0.0000, 'ECR54008092070923', '{\"tran_id\":\"82\",\"val_id\":\"2309071142290Hb432Pd2YWDSPz\",\"amount\":\"59179.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"57700.14\",\"card_no\":null,\"bank_tran_id\":\"230907114228SETxCFvYCaGp8gR\",\"status\":\"VALID\",\"tran_date\":\"2023-09-07 11:41:55\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"8471809cbdba54e09ac1a4484f39860f\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"7c2be7d279e94a3dda05a2a8b139910a89110049cbdd398db367fc9c4b81187d\",\"currency_type\":\"BDT\",\"currency_amount\":\"59179.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-07 05:41:53', '2023-09-07 05:42:31', 'USD', 0.00911, NULL),
(83, '2A39770F2W060M', 4, 31995.0000, 31995.0000, 0.00, 0.00, 2399.6250, 2400.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '2309071210351TCKtaPzfSRxK9Z', 0, 0, 0, 1, '230907121035MME48QoqhaZAUh9', 'Cellfine-Cellfine', '2023-09-07', '2023-09-08', '2023-09-07', 150, 150, 0.0000, 0.0000, 'ECR35926123070923', '{\"tran_id\":\"83\",\"val_id\":\"230907121035MME48QoqhaZAUh9\",\"amount\":\"34544.63\",\"card_type\":\"Cellfine-Cellfine\",\"store_amount\":\"33681.01\",\"card_no\":null,\"bank_tran_id\":\"2309071210351TCKtaPzfSRxK9Z\",\"status\":\"VALID\",\"tran_date\":\"2023-09-07 12:10:24\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Cellfine\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"814c861a29d1f378b5fdabff28685a64\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"625c6292cead3a7ae010a2c036bca19e7e88f307bfd690cb41bb4ebd2ced381b\",\"currency_type\":\"BDT\",\"currency_amount\":\"34544.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-07 06:10:22', '2023-09-07 06:10:37', 'BDT', 1, NULL),
(84, '1P692I079302O3', 9, 12000.0000, 109.3200, 0.00, 0.00, 600.0000, 5.4700, 2, NULL, NULL, '0', 1, 'sslCommerz', '230917175316039Qw3yZRn9fH46', 0, 0, 0, 1, '2309171753161E1FUFUiLf68sI7', 'NAGAD-Nagad', '2023-09-17', '2023-09-18', '2023-09-17', 1, 1, 0.4600, 0.4600, 'ECR89141836170923', '{\"tran_id\":\"84\",\"val_id\":\"2309171753161E1FUFUiLf68sI7\",\"amount\":\"12601.46\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"12286.42\",\"card_no\":null,\"bank_tran_id\":\"230917175316039Qw3yZRn9fH46\",\"status\":\"VALID\",\"tran_date\":\"2023-09-17 17:52:59\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"37778373b252445b5d12a01ef1fa8b3b\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1224a463cb95caa1eb663e5a024c696760f68211a57f8a0614e032361516a45a\",\"currency_type\":\"BDT\",\"currency_amount\":\"12601.46\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"http:\\/\\/localhost:3000\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-17 11:52:57', '2023-09-17 11:53:19', 'USD', 0.00911, 'sdfgsdfg'),
(85, '5S972ME0R12390', 5, 25500.0000, 232.3100, 0.00, 0.00, 1275.0000, 11.6100, 4, NULL, NULL, '0', 1, 'sslCommerz', '230917185906xg2JHq3Dw0PKkwz', 0, 0, 0, 1, '2309171859061Tn8DhRHX3NjMFd', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-09-17', '2023-09-18', '2023-09-17', 1, 1, 0.9100, 0.9100, 'ECR93066547170923', '{\"tran_id\":\"85\",\"val_id\":\"2309171859061Tn8DhRHX3NjMFd\",\"amount\":\"26776.91\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"26107.49\",\"card_no\":null,\"bank_tran_id\":\"230917185906xg2JHq3Dw0PKkwz\",\"status\":\"VALID\",\"tran_date\":\"2023-09-17 18:58:53\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"b70c9f371499b5c761f63fcb9bad4c42\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"6d488649081f8afd3a9e3458fb074516fa511d921eda7bf5329a8d93e1b5967f\",\"currency_type\":\"BDT\",\"currency_amount\":\"26776.91\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-17 12:58:52', '2023-09-17 12:59:09', 'USD', 0.00911, 'sdfgsdfg'),
(86, '02F23P10E81H9Q', 4, 12350.0000, 112.3900, 0.00, 0.00, 676.2500, 6.1500, 3, NULL, NULL, '0', 1, 'sslCommerz', '23091812541818a9vKduNaRPZiH', 0, 0, 0, 1, '2309181254190c64fxLO5DrOEHx', 'OKAYWALLET-Okay Wallet', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.2300, 0.2300, 'ECR61804360180923', '{\"tran_id\":\"86\",\"val_id\":\"2309181254190c64fxLO5DrOEHx\",\"amount\":\"13027.48\",\"card_type\":\"OKAYWALLET-Okay Wallet\",\"store_amount\":\"12701.79\",\"card_no\":null,\"bank_tran_id\":\"23091812541818a9vKduNaRPZiH\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 12:54:06\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":null,\"card_brand\":null,\"card_sub_brand\":\"Classic\",\"card_issuer_country\":null,\"card_issuer_country_code\":null,\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"3ccaf5b9198b723d59b64f7a06907c11\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"ca277ee54bbeddfef1cc4b1d7de5ab17351bf8f1b6974fb806090664ebb4bbec\",\"currency_type\":\"BDT\",\"currency_amount\":\"13027.48\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 06:54:05', '2023-09-18 06:54:21', 'USD', 0.0091, 'some info'),
(87, '3S1Q0FB89NZ202', 4, 6500.0000, 59.1500, 0.00, 0.00, 325.0000, 2.9600, 1, NULL, NULL, '0', 1, 'sslCommerz', '2309181304271WWCQbKYTZxY8eP', 0, 0, 0, 1, '2309181304271duolRs7VbUM8zo', 'UPay-UPay', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.2300, 0.2300, 'ECR47633709180923', '{\"tran_id\":\"87\",\"val_id\":\"2309181304271duolRs7VbUM8zo\",\"amount\":\"6826.23\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"6655.57\",\"card_no\":null,\"bank_tran_id\":\"2309181304271WWCQbKYTZxY8eP\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 13:04:00\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"247d8461ec398eade7ef669834b744e2\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8b0b82f7220ee0fc18886bca4c2e23e58eb9caccfc34d955e18a0beb1bd835be\",\"currency_type\":\"BDT\",\"currency_amount\":\"6826.23\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 07:03:59', '2023-09-18 07:04:30', 'USD', 0.0091, 'hgf ytfgvbh'),
(94, '2BH086G199302C', 4, 4995.0000, 45.4500, 0.00, 0.00, 374.6250, 3.4100, 1, NULL, NULL, '0', 1, 'sslCommerz', '230918133208xy0ujGVk5jHr1e0', 0, 0, 0, 1, '2309181332084x9dAWB8ATKwpfi', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.0000, 0.0000, 'ECR53212805180923', '{\"tran_id\":\"94\",\"val_id\":\"2309181332084x9dAWB8ATKwpfi\",\"amount\":\"5370.63\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"5236.36\",\"card_no\":null,\"bank_tran_id\":\"230918133208xy0ujGVk5jHr1e0\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 13:31:48\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"662af48b696c28c3b0c055314254f5c1\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e9cb4ba79b263bf82e72e64aa0ba8686fb9bff62a5b45b5e32c7c9fc0ceb19b7\",\"currency_type\":\"BDT\",\"currency_amount\":\"5370.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 07:31:47', '2023-09-18 07:32:10', 'USD', 0.0091, 'fghghj jfghjg'),
(95, '3Q02802K1Z0923', 4, 7250.0000, 65.9800, 0.00, 0.00, 543.7500, 4.9400, 2, NULL, NULL, '0', 1, 'sslCommerz', '2309181338350TgRbMSllMKFt3J', 0, 0, 0, 1, '2309181338350yZaQU4Q9AnlzeX', 'TAP-TAP', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.0000, 0.0000, 'ECR14925513180923', '{\"tran_id\":\"95\",\"val_id\":\"2309181338350yZaQU4Q9AnlzeX\",\"amount\":\"7794.75\",\"card_type\":\"TAP-TAP\",\"store_amount\":\"7599.88\",\"card_no\":null,\"bank_tran_id\":\"2309181338350TgRbMSllMKFt3J\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 13:38:24\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"TAB\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"eaf209d62ec60f337dc042602b8ddec9\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"7206e803bd79a0beceab1c8135d530b61196e38ae45cddd99573752498f66256\",\"currency_type\":\"BDT\",\"currency_amount\":\"7794.75\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 07:38:22', '2023-09-18 07:38:38', 'USD', 0.0091, 'kkjgk'),
(96, '7590824203P21K', 4, 6195.0000, 56.3700, 0.00, 0.00, 464.6250, 4.2300, 1, NULL, NULL, '0', 1, 'sslCommerz', '23091814031408sowUSAJA0D5V7', 0, 0, 0, 1, '230918140314vsiekiRkuIjsHYd', 'ABBANKIB-AB Bank', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.0000, 0.0000, 'ECR66706006180923', '{\"tran_id\":\"96\",\"val_id\":\"230918140314vsiekiRkuIjsHYd\",\"amount\":\"6660.63\",\"card_type\":\"ABBANKIB-AB Bank\",\"store_amount\":\"6494.11\",\"card_no\":null,\"bank_tran_id\":\"23091814031408sowUSAJA0D5V7\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 14:03:01\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"AB Bank Limited\",\"card_brand\":\"IB\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"cbfe9a74b445f15f9e6509a31c658d3b\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9727061c8ca5e468d13d22d5476422f8db3e675bc897bec7388353d0f763770d\",\"currency_type\":\"BDT\",\"currency_amount\":\"6660.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 08:02:59', '2023-09-18 08:03:17', 'USD', 0.0091, 'ghghjhgc'),
(97, '01USP023ZI2908', 4, 10000.0000, 91.0000, 0.00, 0.00, 500.0000, 4.5500, 1, NULL, NULL, '0', 1, 'sslCommerz', '2309181405121AVlahzrzvIagSq', 0, 0, 0, 1, '230918140512GFuMl04RxiNC8hn', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.2300, 0.2300, 'ECR11416960180923', '{\"tran_id\":\"97\",\"val_id\":\"230918140512GFuMl04RxiNC8hn\",\"amount\":\"10501.23\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"10238.70\",\"card_no\":null,\"bank_tran_id\":\"2309181405121AVlahzrzvIagSq\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 14:05:00\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"0d257de36109cc4cf7bc71fe90654cff\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"2951fa76bf3cac59ed9d5db9c7b6af0e5f392b180300c9d07459c991aa558d19\",\"currency_type\":\"BDT\",\"currency_amount\":\"10501.23\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 08:04:59', '2023-09-18 08:05:14', 'USD', 0.0091, 'jhg ukyjgkj');
INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `charge_total_price`, `vat_rate`, `charge_vat_rate`, `vat_amount`, `charge_vat_amount`, `total_item`, `shipping_method`, `coupon`, `payment_method`, `payment_via`, `payment_method_name`, `transaction_id`, `discount`, `charge_discount`, `coupon_discount`, `payment_status`, `validation_id`, `card_type`, `order_date`, `requested_delivery_date`, `payment_date`, `shipping_amount`, `charge_shipping_amount`, `total_fragile_amount`, `charge_fragile_amount`, `tracking_id`, `payment_info`, `status`, `is_same_address`, `order_position`, `delivery_type`, `delivery_platform`, `percel_type`, `pickup_point_no`, `deleted_at`, `created_at`, `updated_at`, `charged_currency`, `exchange_rate`, `user_note`) VALUES
(98, '4O122V03G29038', 4, 1050.0000, 9.5500, 0.00, 0.00, 52.5000, 0.4800, 1, NULL, NULL, '0', 1, 'sslCommerz', '230918142041WatHeSsiCoyWRCB', 0, 0, 0, 1, '230918142041ZV57CmLEqaWNuMM', 'OKAYWALLET-Okay Wallet', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.2300, 0.2300, 'ECR93344590180923', '{\"tran_id\":\"98\",\"val_id\":\"230918142041ZV57CmLEqaWNuMM\",\"amount\":\"1103.73\",\"card_type\":\"OKAYWALLET-Okay Wallet\",\"store_amount\":\"1076.14\",\"card_no\":null,\"bank_tran_id\":\"230918142041WatHeSsiCoyWRCB\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 14:20:29\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":null,\"card_brand\":null,\"card_sub_brand\":\"Classic\",\"card_issuer_country\":null,\"card_issuer_country_code\":null,\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"93f6ad1a811e0f1edf19f99899749e80\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"365f0f171bfb0626889060c4f6a0f6fea4fad097536a5fe8c344194e2fa73c4d\",\"currency_type\":\"BDT\",\"currency_amount\":\"1103.73\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 08:20:28', '2023-09-18 08:20:44', 'USD', 0.0091, 'hg ugikh'),
(99, '10302KH9IM28AG', 4, 3375.0000, 30.7100, 0.00, 0.00, 200.6250, 1.8300, 3, NULL, NULL, '0', 1, 'sslCommerz', '230918150739C3qkqRnhaMg6ecw', 0, 0, 0, 1, '2309181507391qTXxXQ3Oz8xjT4', 'UPay-UPay', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 50.0000, 0.4600, 'ECR41885907180923', '{\"tran_id\":\"99\",\"val_id\":\"2309181507391qTXxXQ3Oz8xjT4\",\"amount\":\"3626.63\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"3535.96\",\"card_no\":null,\"bank_tran_id\":\"230918150739C3qkqRnhaMg6ecw\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 15:07:27\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"e3343e7ef6c51f7cb92d3428e8a8675b\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"f641ae8a73b7d94a323f6583bf1e376e26cd0c67a6d068dbab00ba626cab4403\",\"currency_type\":\"BDT\",\"currency_amount\":\"3626.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 09:07:25', '2023-09-18 09:07:42', 'USD', 0.0091, 'fghj jhhhfjh'),
(101, 'U8B2921H00PO31', 4, 16380.0000, 149.0600, 0.00, 0.00, 1228.5000, 11.1800, 2, NULL, NULL, '0', 1, 'sslCommerz', '2309181528590jCjB4d16vaFGlH', 0, 0, 0, 1, '230918152859r5YZYUyzf1acXQ7', 'UPay-UPay', '2023-09-18', '2023-09-19', '2023-09-18', 1, 1, 0.0000, 0.0000, 'ECR80026944180923', '{\"tran_id\":\"101\",\"val_id\":\"230918152859r5YZYUyzf1acXQ7\",\"amount\":\"17609.50\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"17169.26\",\"card_no\":null,\"bank_tran_id\":\"2309181528590jCjB4d16vaFGlH\",\"status\":\"VALID\",\"tran_date\":\"2023-09-18 15:28:44\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"79014d28836a99f23c6e1c0d704a4f8d\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"d0deaf5049e4c4fb5c6aa1b8e8ab2cb84420787ac939a3ccc2a976585a4d5b86\",\"currency_type\":\"BDT\",\"currency_amount\":\"17609.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-18 09:28:43', '2023-09-18 09:29:01', 'USD', 0.0091, 'ghdf dghdf'),
(102, '2QZB270002G9O3', 0, 52000.0000, 52000.0000, 0.00, 0.00, 3900.0000, 3900.0000, 2, NULL, NULL, '0', 1, 'sslCommerz', '2309201300482C97GqQOHlaiSl5', 0, 0, 0, 1, '230920130048ZGmIgg0pIiTE6VL', 'BKASH-BKash', '2023-09-20', '2023-09-21', '2023-09-20', 60, 60, 0.0000, 0.0000, 'ECR86841171200923', '{\"tran_id\":\"102\",\"val_id\":\"230920130048ZGmIgg0pIiTE6VL\",\"amount\":\"55960.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"54561.00\",\"card_no\":null,\"bank_tran_id\":\"2309201300482C97GqQOHlaiSl5\",\"status\":\"VALID\",\"tran_date\":\"2023-09-20 13:00:36\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"98b4fe191f05e1432131f94cc90558bf\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"300fe1006c0fb9cba1fbe77f880287c76c92155eb74eee188406bb43507da546\",\"currency_type\":\"BDT\",\"currency_amount\":\"55960.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-20 07:00:35', '2023-09-20 07:00:51', 'BDT', 1, 'abc'),
(103, '200VA05329B290', 0, 6230.0000, 6230.0000, 0.00, 0.00, 467.2500, 467.2500, 1, NULL, NULL, '0', 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, '2023-09-20', '2023-09-21', NULL, 60, 60, 0.0000, 0.0000, 'ECR30182454200923', NULL, 1, 1, 1, 0, 'E-Courier', 0, NULL, NULL, '2023-09-20 07:11:32', '2023-09-20 07:11:32', 'BDT', 1, NULL),
(104, '81I9003220QO24', 10, 1275.0000, 1275.0000, 0.00, 0.00, 95.6250, 95.6300, 1, NULL, NULL, '0', 1, 'sslCommerz', '230921185934cJkMqvGx3Y6JCXO', 0, 0, 0, 1, '230921185934iIUS113lBwXArTm', 'BKASH-BKash', '2023-09-21', '2023-09-22', '2023-09-21', 60, 60, 0.0000, 0.0000, 'ECR12747465210923', '{\"tran_id\":\"104\",\"val_id\":\"230921185934iIUS113lBwXArTm\",\"amount\":\"1430.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"1394.86\",\"card_no\":null,\"bank_tran_id\":\"230921185934cJkMqvGx3Y6JCXO\",\"status\":\"VALID\",\"tran_date\":\"2023-09-21 18:59:24\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"6ecc5d2dda2dd6490645f453c4a78701\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9bfe421d1450ac0fbd24b8801bed2b8294493139416b9e0ae32fb05a0525034d\",\"currency_type\":\"BDT\",\"currency_amount\":\"1430.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-21 12:59:23', '2023-09-21 12:59:36', 'BDT', 1, NULL),
(105, 'ZUJ30V9281202K', 10, 13995.0000, 13995.0000, 0.00, 0.00, 1049.6250, 1049.6300, 1, NULL, NULL, '0', 1, 'sslCommerz', '23092119363703BBrO2kviqu0eb', 0, 0, 0, 1, '2309211936377TsdyAaIZ2C4vq4', 'BKASH-BKash', '2023-09-21', '2023-09-22', '2023-09-21', 60, 60, 0.0000, 0.0000, 'ECR21898657210923', '{\"tran_id\":\"105\",\"val_id\":\"2309211936377TsdyAaIZ2C4vq4\",\"amount\":\"15104.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"14727.01\",\"card_no\":null,\"bank_tran_id\":\"23092119363703BBrO2kviqu0eb\",\"status\":\"VALID\",\"tran_date\":\"2023-09-21 19:36:26\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"e6dd8fa39b15627de589cccccee60cd9\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"2bd4bf53f82ef59761f793eb03f898f0919749547b1db83dba08468a75b4af0c\",\"currency_type\":\"BDT\",\"currency_amount\":\"15104.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-21 13:36:24', '2023-09-21 13:36:39', 'BDT', 1, NULL),
(106, '23292128A040QO', 10, 2785.0000, 2785.0000, 0.00, 0.00, 208.8750, 208.8800, 1, NULL, NULL, '0', 1, 'sslCommerz', '230921193900CmUM7ONGtnsyNeJ', 0, 0, 0, 1, '230921193900acNzm4ZHhK8dMBH', 'BKASH-BKash', '2023-09-21', '2023-09-22', '2023-09-21', 60, 60, 0.0000, 0.0000, 'ECR68012661210923', '{\"tran_id\":\"106\",\"val_id\":\"230921193900acNzm4ZHhK8dMBH\",\"amount\":\"3053.88\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"2977.53\",\"card_no\":null,\"bank_tran_id\":\"230921193900CmUM7ONGtnsyNeJ\",\"status\":\"VALID\",\"tran_date\":\"2023-09-21 19:38:49\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"71983c3fea70600c77cae4303f91e644\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"34b24dfe07b9273636f8133515fa5f0c50177ba3395e5912cc7f096e1cf6f05d\",\"currency_type\":\"BDT\",\"currency_amount\":\"3053.88\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"https:\\/\\/staging.aranya.com.bd\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 'E-Courier', 0, NULL, NULL, '2023-09-21 13:38:48', '2023-09-21 13:39:18', 'BDT', 1, NULL);

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
  `total_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
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
  `total_fragile_amount` double(8,6) NOT NULL DEFAULT 0.000000,
  `charge_fragile_amount` double(8,6) NOT NULL DEFAULT 0.000000,
  `charged_currency` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BDT',
  `exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `colour_id`, `size_id`, `fabric_id`, `user_id`, `vat_rate`, `charge_vat_rate`, `vat_amount`, `charge_vat_amount`, `quantity`, `selling_price`, `charge_selling_price`, `buying_price`, `total_buying_price`, `total_selling_price`, `total_charge_selling_price`, `unit_discount`, `total_discount`, `status`, `deleted_at`, `created_at`, `updated_at`, `is_claim_refund`, `refund_claim_date`, `is_refunded`, `refund_date`, `refund_claim_reason`, `refund_reject_reason`, `refund_info`, `total_fragile_amount`, `charge_fragile_amount`, `charged_currency`, `exchange_rate`) VALUES
(7, 12, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:23:15', '2023-09-03 09:23:15', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(8, 12, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:23:15', '2023-09-03 09:23:15', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(9, 13, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:26:53', '2023-09-03 09:26:53', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(10, 13, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:26:53', '2023-09-03 09:26:53', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(11, 14, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:29:06', '2023-09-03 09:29:06', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(12, 14, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:29:06', '2023-09-03 09:29:06', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(13, 15, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:32:17', '2023-09-03 09:32:17', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(14, 15, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:32:17', '2023-09-03 09:32:17', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(15, 16, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:33:23', '2023-09-03 09:33:23', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(16, 16, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:33:23', '2023-09-03 09:33:23', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(17, 17, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:34:49', '2023-09-03 09:34:49', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(18, 17, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 09:34:49', '2023-09-03 09:34:49', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(19, 18, 127, 6, 34, 2, 0, 0, 4, 7.50, 7.50, 358.12500000, 358.00000000, 1, 4775.00000000, 4775.00000000, 2316.68000000, 2316.68000000, 4775.00000000, 4775.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 10:26:10', '2023-09-03 10:26:10', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(20, 18, 67, 2, 15, 2, 1, 0, 4, 7.50, 7.50, 191.25000000, 192.00000000, 2, 1275.00000000, 1275.00000000, 620.00000000, 1240.00000000, 2550.00000000, 2550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 10:26:10', '2023-09-03 10:26:10', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(21, 19, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:17:19', '2023-09-03 12:17:19', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(22, 19, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:17:19', '2023-09-03 12:17:19', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(25, 21, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:24:46', '2023-09-03 12:24:46', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(26, 21, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:24:46', '2023-09-03 12:24:46', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(27, 22, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:26:44', '2023-09-03 12:26:44', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(28, 22, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:26:44', '2023-09-03 12:26:44', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(29, 23, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:28:30', '2023-09-03 12:28:30', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(30, 23, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:28:30', '2023-09-03 12:28:30', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(31, 24, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:29:48', '2023-09-03 12:29:48', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(32, 24, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:29:48', '2023-09-03 12:29:48', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(33, 25, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:32:16', '2023-09-03 12:32:16', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(34, 25, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:32:16', '2023-09-03 12:32:16', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(35, 26, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:34:33', '2023-09-03 12:34:33', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(36, 26, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:34:33', '2023-09-03 12:34:33', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(37, 27, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:36:17', '2023-09-03 12:36:17', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(38, 27, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:36:17', '2023-09-03 12:36:17', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(39, 28, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:37:45', '2023-09-03 12:37:45', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(40, 28, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:37:45', '2023-09-03 12:37:45', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(41, 29, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:40:05', '2023-09-03 12:40:05', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(42, 29, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:40:05', '2023-09-03 12:40:05', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(43, 30, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:41:28', '2023-09-03 12:41:28', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(44, 30, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:41:28', '2023-09-03 12:41:28', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(45, 31, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:42:46', '2023-09-03 12:42:46', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(46, 31, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:42:46', '2023-09-03 12:42:46', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(47, 32, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:43:43', '2023-09-03 12:43:43', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(48, 32, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:43:43', '2023-09-03 12:43:43', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(49, 33, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:44:47', '2023-09-03 12:44:47', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(50, 33, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 12:44:47', '2023-09-03 12:44:47', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(65, 41, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 13:09:22', '2023-09-03 13:09:22', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(66, 41, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-03 13:09:22', '2023-09-03 13:09:22', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(73, 45, 98, 1, 11, 1, 4, 0, 4, 7.50, 7.50, 298.87500000, 299.00000000, 1, 3985.00000000, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 05:46:40', '2023-09-04 05:46:40', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(74, 45, 126, 6, 36, 18, 22, 0, 4, 5.00, 5.00, 326.25000000, 326.00000000, 1, 6525.00000000, 6525.00000000, 5500.00000000, 5500.00000000, 6525.00000000, 6525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 05:46:40', '2023-09-04 05:46:40', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(76, 47, 62, 2, 13, 10, 19, 0, 5, 7.50, 7.50, 1569.37500000, 1569.00000000, 3, 6975.00000000, 6975.00000000, 2462.90000000, 7388.70000000, 20925.00000000, 20925.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 05:52:52', '2023-09-04 05:52:52', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(82, 53, 129, 4, 24, 20, 0, 0, 6, 5.00, 5.00, 375.00000000, 375.00000000, 1, 7500.00000000, 7500.00000000, 6500.00000000, 6500.00000000, 7500.00000000, 7500.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:18:01', '2023-09-04 06:18:01', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(84, 55, 129, 4, 24, 19, 0, 0, 6, 5.00, 5.00, 1050.00000000, 1050.00000000, 3, 7000.00000000, 7000.00000000, 5500.00000000, 16500.00000000, 21000.00000000, 21000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:29:40', '2023-09-04 06:29:40', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(85, 56, 129, 4, 24, 19, 0, 0, 6, 5.00, 5.00, 1050.00000000, 1050.00000000, 3, 7000.00000000, 7000.00000000, 5500.00000000, 16500.00000000, 21000.00000000, 21000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:30:45', '2023-09-04 06:30:45', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(87, 58, 129, 4, 24, 19, 0, 0, 6, 5.00, 5.00, 1050.00000000, 1050.00000000, 3, 7000.00000000, 7000.00000000, 5500.00000000, 16500.00000000, 21000.00000000, 21000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:37:15', '2023-09-04 06:37:15', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(88, 59, 129, 4, 24, 19, 0, 0, 6, 5.00, 5.00, 700.00000000, 700.00000000, 2, 7000.00000000, 7000.00000000, 5500.00000000, 11000.00000000, 14000.00000000, 14000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:38:38', '2023-09-04 06:38:38', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(89, 60, 129, 4, 24, 19, 0, 0, 6, 5.00, 5.00, 700.00000000, 700.00000000, 2, 7000.00000000, 7000.00000000, 5500.00000000, 11000.00000000, 14000.00000000, 14000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:43:58', '2023-09-04 06:43:58', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(90, 61, 130, 37, 30, 0, 23, 0, 6, 7.50, 7.50, 114.37500000, 114.00000000, 1, 1525.00000000, 1525.00000000, 1020.00000000, 1020.00000000, 1525.00000000, 1525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:53:48', '2023-09-05 06:49:38', 1, '2023-09-05', 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(91, 61, 130, 37, 30, 0, 21, 0, 6, 7.50, 7.50, 121.87500000, 122.00000000, 1, 1625.00000000, 1625.00000000, 1050.00000000, 1050.00000000, 1625.00000000, 1625.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 06:53:48', '2023-09-04 06:53:48', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(97, 66, 99, 1, 11, 5, 2, 0, 4, 7.50, 7.50, 184.12500000, 184.00000000, 1, 2455.00000000, 2455.00000000, 874.05000000, 874.05000000, 2455.00000000, 2455.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 07:11:55', '2023-09-04 07:11:55', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(98, 66, 130, 37, 30, 0, 23, 0, 4, 7.50, 7.50, 114.37500000, 114.00000000, 1, 1525.00000000, 1525.00000000, 1020.00000000, 1020.00000000, 1525.00000000, 1525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 07:11:55', '2023-09-04 07:11:55', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(99, 67, 131, 5, 0, 0, 0, 0, 6, 5.00, 5.00, 376.25000000, 376.00000000, 1, 7525.00000000, 7525.00000000, 6000.00000000, 6000.00000000, 7525.00000000, 7525.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 07:16:03', '2023-09-04 07:16:03', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(100, 68, 132, 5, 0, 0, 0, 0, 6, 5.00, 5.00, 53.75000000, 54.00000000, 1, 1075.00000000, 1075.00000000, 890.00000000, 890.00000000, 1075.00000000, 1075.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 07:43:48', '2023-09-04 07:43:48', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(105, 73, 132, 5, 0, 0, 0, 0, 4, 5.00, 5.00, 53.75000000, 54.00000000, 1, 1075.00000000, 1075.00000000, 890.00000000, 890.00000000, 1075.00000000, 1075.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 09:52:05', '2023-09-04 09:52:05', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(106, 74, 132, 5, 0, 0, 0, 0, 6, 5.00, 5.00, 53.75000000, 54.00000000, 1, 1075.00000000, 1075.00000000, 890.00000000, 890.00000000, 1075.00000000, 1075.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 09:56:00', '2023-09-04 09:56:00', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(107, 75, 132, 5, 0, 0, 0, 0, 6, 5.00, 5.00, 53.75000000, 54.00000000, 1, 1075.00000000, 1075.00000000, 890.00000000, 890.00000000, 1075.00000000, 1075.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-25 07:26:34', '2023-09-25 07:26:34', 1, '2023-09-05', 2, '2023-09-25', NULL, 'Can\'t provide the fund', NULL, 25.000000, 25.000000, 'BDT', 1),
(108, 76, 133, 3, 40, 0, 0, 0, 6, 5.00, 5.00, 501.25000000, 501.00000000, 1, 10025.00000000, 10025.00000000, 9000.00000000, 9000.00000000, 10025.00000000, 10025.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-04 10:13:45', '2023-09-05 06:01:03', 1, '2023-09-05', 1, '2023-09-05', NULL, NULL, '{\"APIConnect\":\"DONE\",\"bank_tran_id\":\"2309041613560uGh23ixmdLcDzc\",\"trans_id\":\"76\",\"refund_ref_id\":\"64f6c41ee3560\",\"status\":\"success\",\"errorReason\":\"\"}', 25.000000, 25.000000, 'BDT', 1),
(115, 81, 133, 3, 40, 0, 0, 0, 4, 5.00, 5.00, 501.25000000, 501.00000000, 1, 10025.00000000, 10025.00000000, 9000.00000000, 9000.00000000, 10025.00000000, 10025.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-07 05:40:27', '2023-09-07 05:40:27', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(116, 81, 132, 5, 0, 0, 0, 0, 4, 5.00, 5.00, 53.75000000, 54.00000000, 1, 1075.00000000, 1075.00000000, 890.00000000, 890.00000000, 1075.00000000, 1075.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-07 05:40:27', '2023-09-07 05:40:27', 0, NULL, 0, NULL, NULL, NULL, NULL, 25.000000, 25.000000, 'BDT', 1),
(117, 82, 135, 1, 7, 20, 0, 0, 6, 7.50, 7.50, 3750.00000000, 1892.00000000, 2, 25000.00000000, 25000.00000000, 17500.00000000, 35000.00000000, 50000.00000000, 25228.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-07 05:41:53', '2023-09-07 05:41:53', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.00911),
(118, 82, 123, 1, 7, 1, 0, 0, 6, 7.50, 7.50, 374.62500000, 3.00000000, 1, 4995.00000000, 46.00000000, 2454.92000000, 2454.92000000, 4995.00000000, 46.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-07 05:41:53', '2023-09-07 05:41:53', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.00911),
(119, 83, 135, 1, 7, 16, 0, 0, 4, 7.50, 7.50, 2025.00000000, 2025.00000000, 1, 27000.00000000, 27000.00000000, 18000.00000000, 18000.00000000, 27000.00000000, 27000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-07 06:10:22', '2023-09-07 06:10:22', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(120, 83, 122, 1, 7, 10, 0, 0, 4, 7.50, 7.50, 374.62500000, 375.00000000, 1, 4995.00000000, 4995.00000000, 1709.97000000, 1709.97000000, 4995.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-07 06:10:22', '2023-09-07 06:10:22', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(121, 84, 126, 6, 36, 20, 23, 0, 9, 0.05, 0.05, 600.00000000, 5.47000000, 2, 6000.00000000, 54.66000000, 5000.00000000, 10000.00000000, 12000.00000000, 109.32000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-17 11:52:57', '2023-09-17 11:52:57', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.460000, 0.460000, 'USD', 0.00911),
(122, 85, 126, 6, 36, 20, 23, 0, 5, 0.05, 0.05, 300.00000000, 2.73000000, 1, 6000.00000000, 54.66000000, 5000.00000000, 5000.00000000, 6000.00000000, 54.66000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-17 12:58:52', '2023-09-17 12:58:52', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.230000, 0.230000, 'USD', 0.00911),
(123, 85, 126, 6, 36, 18, 22, 0, 5, 0.05, 0.05, 975.00000000, 8.88000000, 3, 6500.00000000, 59.22000000, 5500.00000000, 16500.00000000, 19500.00000000, 177.65000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-17 12:58:52', '2023-09-17 12:58:52', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.680000, 0.680000, 'USD', 0.00911),
(124, 86, 133, 3, 40, 0, 0, 0, 4, 0.05, 0.05, 500.00000000, 4.55000000, 1, 10000.00000000, 91.00000000, 9000.00000000, 9000.00000000, 10000.00000000, 91.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 06:54:05', '2023-09-18 06:54:05', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.230000, 0.230000, 'USD', 0.0091),
(125, 86, 66, 2, 15, 10, 1, 0, 4, 0.07, 0.07, 176.25000000, 1.60000000, 2, 1175.00000000, 10.69000000, 490.00000000, 980.00000000, 2350.00000000, 21.39000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 06:54:05', '2023-09-18 06:54:05', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(126, 87, 126, 6, 36, 18, 22, 0, 4, 0.05, 0.05, 325.00000000, 2.96000000, 1, 6500.00000000, 59.15000000, 5500.00000000, 5500.00000000, 6500.00000000, 59.15000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 07:03:59', '2023-09-18 07:03:59', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.230000, 0.230000, 'USD', 0.0091),
(131, 94, 123, 1, 7, 14, 0, 0, 4, 0.07, 0.07, 374.62500000, 3.41000000, 1, 4995.00000000, 45.45000000, 2454.92000000, 2454.92000000, 4995.00000000, 45.45000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 07:31:47', '2023-09-18 07:31:47', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(132, 95, 60, 2, 13, 16, 22, 0, 4, 0.07, 0.07, 223.12500000, 2.03000000, 1, 2975.00000000, 27.07000000, 1156.04000000, 1156.04000000, 2975.00000000, 27.07000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 07:38:22', '2023-09-18 07:38:22', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(133, 95, 61, 2, 13, 12, 22, 0, 4, 0.07, 0.07, 320.62500000, 2.92000000, 1, 4275.00000000, 38.90000000, 1571.18000000, 1571.18000000, 4275.00000000, 38.90000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 07:38:22', '2023-09-18 07:38:22', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(134, 96, 105, 1, 9, 0, 0, 0, 4, 0.07, 0.07, 464.62500000, 4.23000000, 1, 6195.00000000, 56.37000000, 2830.20000000, 2830.20000000, 6195.00000000, 56.37000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 08:03:00', '2023-09-18 08:03:00', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(135, 97, 133, 3, 40, 0, 0, 0, 4, 0.05, 0.05, 500.00000000, 4.55000000, 1, 10000.00000000, 91.00000000, 9000.00000000, 9000.00000000, 10000.00000000, 91.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 08:04:59', '2023-09-18 08:04:59', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.230000, 0.230000, 'USD', 0.0091),
(136, 98, 132, 5, 0, 0, 0, 0, 4, 0.05, 0.05, 52.50000000, 0.48000000, 1, 1050.00000000, 9.55000000, 890.00000000, 890.00000000, 1050.00000000, 9.55000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 08:20:28', '2023-09-18 08:20:28', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.230000, 0.230000, 'USD', 0.0091),
(137, 99, 132, 5, 0, 0, 0, 0, 4, 0.05, 0.05, 105.00000000, 0.96000000, 2, 1050.00000000, 9.55000000, 890.00000000, 1780.00000000, 2100.00000000, 19.11000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 09:07:25', '2023-09-18 09:07:25', 0, NULL, 0, NULL, NULL, NULL, NULL, 50.000000, 0.460000, 'USD', 0.0091),
(138, 99, 67, 2, 15, 2, 4, 0, 4, 0.07, 0.07, 95.62500000, 0.87000000, 1, 1275.00000000, 11.60000000, 620.00000000, 620.00000000, 1275.00000000, 11.60000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 09:07:25', '2023-09-18 09:07:25', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(139, 101, 86, 1, 8, 10, 1, 0, 4, 7.50, 0.07, 1049.62500000, 9.55000000, 1, 13995.00000000, 127.35000000, 5845.82000000, 5845.82000000, 13995.00000000, 127.35000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 09:28:43', '2023-09-18 09:28:43', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(140, 101, 16, 1, 8, 5, 11, 0, 4, 7.50, 0.07, 178.87500000, 1.63000000, 1, 2385.00000000, 21.70000000, 838.28000000, 838.28000000, 2385.00000000, 21.70000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-18 09:28:43', '2023-09-18 09:28:43', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'USD', 0.0091),
(141, 102, 135, 1, 7, 20, 0, 0, 0, 7.50, 7.50, 1875.00000000, 1875.00000000, 1, 25000.00000000, 25000.00000000, 17500.00000000, 17500.00000000, 25000.00000000, 25000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-20 07:00:35', '2023-09-20 07:00:35', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(142, 102, 135, 1, 7, 16, 0, 0, 0, 7.50, 7.50, 2025.00000000, 2025.00000000, 1, 27000.00000000, 27000.00000000, 18000.00000000, 18000.00000000, 27000.00000000, 27000.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-20 07:00:35', '2023-09-20 07:00:35', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(143, 103, 134, 2, 13, 0, 23, 0, 0, 7.50, 7.50, 467.25000000, 467.25000000, 1, 6230.00000000, 6230.00000000, 4500.00000000, 4500.00000000, 6230.00000000, 6230.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-20 07:11:32', '2023-09-20 07:11:32', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1),
(144, 104, 69, 2, 15, 2, 2, 0, 10, 7.50, 7.50, 95.62500000, 95.63000000, 1, 1275.00000000, 1275.00000000, 577.48000000, 577.48000000, 1275.00000000, 1275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-21 12:59:23', '2023-09-21 13:34:07', 1, '2023-09-21', 1, '2023-09-21', NULL, NULL, '{\"APIConnect\":\"DONE\",\"bank_tran_id\":\"230921185934cJkMqvGx3Y6JCXO\",\"trans_id\":\"104\",\"refund_ref_id\":\"650c464f899f6\",\"status\":\"success\",\"errorReason\":\"\"}', 0.000000, 0.000000, 'BDT', 1),
(145, 105, 86, 1, 8, 9, 1, 0, 10, 7.50, 7.50, 1049.62500000, 1049.63000000, 1, 13995.00000000, 13995.00000000, 5845.82000000, 5845.82000000, 13995.00000000, 13995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-21 13:36:24', '2023-09-21 13:37:29', 1, '2023-09-21', 2, '2023-09-21', NULL, 'N/A', NULL, 0.000000, 0.000000, 'BDT', 1),
(146, 106, 17, 1, 8, 2, 8, 0, 10, 7.50, 7.50, 208.87500000, 208.88000000, 1, 2785.00000000, 2785.00000000, 751.05000000, 751.05000000, 2785.00000000, 2785.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-09-21 13:38:48', '2023-09-21 13:38:48', 0, NULL, 0, NULL, NULL, NULL, NULL, 0.000000, 0.000000, 'BDT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back_url_six` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_type`, `image_one`, `back_url_one`, `image_two`, `back_url_two`, `image_three`, `back_url_three`, `image_four`, `back_url_four`, `image_five`, `back_url_five`, `image_six`, `back_url_six`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'home', 'home', 'https://res.cloudinary.com/diyc1dizi/video/upload/v1679551684/aranya-product/boishakh/Loop_For_Website.mp4', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001406.jpg', 'saree', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001793.jpg', 'boys?cat=3&sub_cat=39', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_4.png', 'kaftan', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_1.png', 'kimono', NULL, NULL, 1, NULL, '2023-03-12 08:28:58', '2023-09-25 03:08:23');

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
(1, 12, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 09:23:15', NULL, 0, NULL, NULL),
(2, 13, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 09:26:53', NULL, 0, NULL, NULL),
(3, 14, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 09:29:06', NULL, 0, NULL, NULL),
(4, 15, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 09:32:17', NULL, 0, NULL, NULL),
(5, 16, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 09:33:23', NULL, 0, NULL, NULL),
(6, 17, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 09:34:49', NULL, 0, NULL, NULL),
(7, 18, NULL, 8024.38, 8025.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 10:26:10', NULL, 0, NULL, NULL),
(8, 19, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:17:19', NULL, 0, NULL, NULL),
(10, 21, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:24:46', NULL, 0, NULL, NULL),
(11, 22, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:26:44', NULL, 0, NULL, NULL),
(12, 23, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:28:30', NULL, 0, NULL, NULL),
(13, 24, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:29:48', NULL, 0, NULL, NULL),
(14, 25, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:32:16', NULL, 0, NULL, NULL),
(15, 26, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:34:33', NULL, 0, NULL, NULL),
(16, 27, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:36:17', NULL, 0, NULL, NULL),
(17, 28, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:37:45', NULL, 0, NULL, NULL),
(18, 29, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:40:05', NULL, 0, NULL, NULL),
(19, 30, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:41:28', NULL, 0, NULL, NULL),
(20, 31, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:42:46', NULL, 0, NULL, NULL),
(21, 32, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:43:43', NULL, 0, NULL, NULL),
(22, 33, NULL, 11310.12, 11310.00, 'BDT', 1, NULL, 0, NULL, '2023-09-03 12:44:47', NULL, 0, NULL, NULL),
(30, 41, '230903190935NGDBL1HGryrcqAH', 11310.12, 11310.00, 'BDT', 1, 'sslCommerz-Cellfine-Cellfine', 1, NULL, '2023-09-03 13:09:22', '2023-09-03 13:09:38', 0, NULL, NULL),
(34, 45, '2309041147140miUdGFWacgll5w', 11310.12, 11310.00, 'BDT', 1, 'sslCommerz-OKAYWALLET-Okay Wallet', 1, NULL, '2023-09-04 05:46:40', '2023-09-04 05:47:17', 0, NULL, NULL),
(35, 47, '2309041153028sqWWWejc8yhqzI', 22644.38, 22644.00, 'BDT', 1, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-09-04 05:52:52', '2023-09-04 05:53:05', 0, NULL, NULL),
(37, 53, '230904122040Ev8vDiCjDifycrp', 7935.00, 7935.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-04 06:18:01', '2023-09-04 06:20:44', 0, NULL, NULL),
(39, 55, '230904123013luI82oo3IkuETD8', 22110.00, 22110.00, 'BDT', 1, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-09-04 06:29:40', '2023-09-04 06:30:16', 0, NULL, NULL),
(40, 56, '230904123055gy9juzL0WWvqiGI', 22110.00, 22110.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-04 06:30:45', '2023-09-04 06:30:58', 0, NULL, NULL),
(42, 58, '230904123726DdMPzpkor5oQRwb', 22110.00, 22110.00, 'BDT', 1, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-09-04 06:37:15', '2023-09-04 06:37:29', 0, NULL, NULL),
(43, 59, '23090412412215F3vxYNQ9YXDfM', 14760.00, 14760.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-04 06:38:38', '2023-09-04 06:41:26', 0, NULL, NULL),
(44, 60, NULL, 14760.00, 14760.00, 'BDT', 1, NULL, 0, NULL, '2023-09-04 06:43:58', NULL, 0, NULL, NULL),
(45, 61, '230904125356sjBsy138o3paWPk', 3586.25, 3586.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-04 06:53:48', '2023-09-04 06:53:59', 0, NULL, NULL),
(50, 66, '230904131211vizPyfYlTwxby4B', 4453.50, 4453.00, 'BDT', 1, 'sslCommerz-UPay-UPay', 1, NULL, '2023-09-04 07:11:55', '2023-09-04 07:12:14', 0, NULL, NULL),
(51, 67, NULL, 8076.25, 8076.00, 'BDT', 1, NULL, 0, NULL, '2023-09-04 07:16:03', NULL, 0, NULL, NULL),
(52, 68, NULL, 1303.75, 1304.00, 'BDT', 1, NULL, 0, NULL, '2023-09-04 07:43:48', NULL, 0, NULL, NULL),
(57, 73, '230904155225fxmUZykTYnMH8AO', 1303.75, 1304.00, 'BDT', 1, 'sslCommerz-ABBANKIB-AB Bank', 1, NULL, '2023-09-04 09:52:05', '2023-09-04 09:52:28', 0, NULL, NULL),
(58, 74, NULL, 1213.75, 1214.00, 'BDT', 1, NULL, 0, NULL, '2023-09-04 09:56:00', NULL, 0, NULL, NULL),
(59, 75, '2309041557010zEs6rmG6TwW13z', 1303.75, 1304.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-04 09:56:47', '2023-09-04 09:57:04', 0, NULL, NULL),
(60, 76, '2309041613560uGh23ixmdLcDzc', 10691.25, 10691.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-04 10:13:45', '2023-09-05 06:01:03', 1, '2023-09-05', '{\"APIConnect\":\"DONE\",\"bank_tran_id\":\"2309041613560uGh23ixmdLcDzc\",\"trans_id\":\"76\",\"refund_ref_id\":\"64f6c41ee3560\",\"status\":\"success\",\"errorReason\":\"\"}'),
(63, 81, '230907114052kgKjcEDzFN4bS27', 11845.00, 11845.00, 'BDT', 1, 'sslCommerz-UPay-UPay', 1, NULL, '2023-09-07 05:40:27', '2023-09-07 05:40:54', 0, NULL, NULL),
(64, 82, '230907114228SETxCFvYCaGp8gR', 59179.62, 27229.00, 'USD', 0.00911, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-07 05:41:53', '2023-09-07 05:42:31', 0, NULL, NULL),
(65, 83, '2309071210351TCKtaPzfSRxK9Z', 34544.62, 34545.00, 'BDT', 1, 'sslCommerz-Cellfine-Cellfine', 1, NULL, '2023-09-07 06:10:22', '2023-09-07 06:10:37', 0, NULL, NULL),
(66, 84, '230917175316039Qw3yZRn9fH46', 12601.83, 116.62, 'USD', 0.00911, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-09-17 11:52:57', '2023-09-17 11:53:19', 0, NULL, NULL),
(67, 85, '230917185906xg2JHq3Dw0PKkwz', 26777.28, 246.20, 'USD', 0.00911, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-09-17 12:58:52', '2023-09-17 12:59:09', 0, NULL, NULL),
(68, 86, '23091812541818a9vKduNaRPZiH', 13027.75, 120.04, 'USD', 0.0091, 'sslCommerz-OKAYWALLET-Okay Wallet', 1, NULL, '2023-09-18 06:54:05', '2023-09-18 06:54:21', 0, NULL, NULL),
(69, 87, '2309181304271WWCQbKYTZxY8eP', 6826.59, 63.70, 'USD', 0.0091, 'sslCommerz-UPay-UPay', 1, NULL, '2023-09-18 07:03:59', '2023-09-18 07:04:30', 0, NULL, NULL),
(70, 94, '230918133208xy0ujGVk5jHr1e0', 5370.98, 50.22, 'USD', 0.0091, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-09-18 07:31:47', '2023-09-18 07:32:10', 0, NULL, NULL),
(71, 95, '2309181338350TgRbMSllMKFt3J', 7795.11, 72.28, 'USD', 0.0091, 'sslCommerz-TAP-TAP', 1, NULL, '2023-09-18 07:38:22', '2023-09-18 07:38:38', 0, NULL, NULL),
(72, 96, '23091814031408sowUSAJA0D5V7', 6660.98, 61.96, 'USD', 0.0091, 'sslCommerz-ABBANKIB-AB Bank', 1, NULL, '2023-09-18 08:03:00', '2023-09-18 08:03:17', 0, NULL, NULL),
(73, 97, '2309181405121AVlahzrzvIagSq', 10501.50, 97.05, 'USD', 0.0091, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-09-18 08:04:59', '2023-09-18 08:05:14', 0, NULL, NULL),
(74, 98, '230918142041WatHeSsiCoyWRCB', 1104.09, 11.62, 'USD', 0.0091, 'sslCommerz-OKAYWALLET-Okay Wallet', 1, NULL, '2023-09-18 08:20:28', '2023-09-18 08:20:44', 0, NULL, NULL),
(75, 99, '230918150739C3qkqRnhaMg6ecw', 3626.99, 34.36, 'USD', 0.0091, 'sslCommerz-UPay-UPay', 1, NULL, '2023-09-18 09:07:25', '2023-09-18 09:07:42', 0, NULL, NULL),
(76, 101, '2309181528590jCjB4d16vaFGlH', 17609.86, 161.60, 'USD', 0.0091, 'sslCommerz-UPay-UPay', 1, NULL, '2023-09-18 09:28:43', '2023-09-18 09:29:01', 0, NULL, NULL),
(77, 102, '2309201300482C97GqQOHlaiSl5', 55960.00, 55960.00, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-20 07:00:35', '2023-09-20 07:00:51', 0, NULL, NULL),
(78, 103, NULL, 6757.25, 6757.25, 'BDT', 1, NULL, 0, NULL, '2023-09-20 07:11:32', NULL, 0, NULL, NULL),
(79, 104, '230921185934cJkMqvGx3Y6JCXO', 1430.62, 1430.63, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-21 12:59:23', '2023-09-21 13:34:07', 1, '2023-09-21', '{\"APIConnect\":\"DONE\",\"bank_tran_id\":\"230921185934cJkMqvGx3Y6JCXO\",\"trans_id\":\"104\",\"refund_ref_id\":\"650c464f899f6\",\"status\":\"success\",\"errorReason\":\"\"}'),
(80, 105, '23092119363703BBrO2kviqu0eb', 15104.62, 15104.63, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-21 13:36:24', '2023-09-21 13:36:39', 0, NULL, NULL),
(81, 106, '230921193900CmUM7ONGtnsyNeJ', 3053.88, 3053.88, 'BDT', 1, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-09-21 13:38:48', '2023-09-21 13:39:02', 0, NULL, NULL);

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
(32, 'App\\Models\\User', 4, 'API TOKEN', '8e03d41b2bf9c45eec05b523deeb8305882a5616804380a515886df2f7f724d4', '[\"*\"]', '2023-09-18 09:28:43', '2023-09-03 08:37:56', '2023-09-18 09:28:43'),
(33, 'App\\Models\\User', 5, 'API TOKEN', 'b427a3f34aa51d31406877dbaf03f44ed94c6ae49b48a33a3f2a8cf3af295d25', '[\"*\"]', '2023-09-17 12:58:52', '2023-09-04 05:50:39', '2023-09-17 12:58:52'),
(34, 'App\\Models\\User', 6, 'API TOKEN', 'b12922a74b886c387657f2d5aa60a314a2bb1688445f30501cfb7b2be422ebf0', '[\"*\"]', '2023-09-04 06:02:02', '2023-09-04 05:58:32', '2023-09-04 06:02:02'),
(35, 'App\\Models\\User', 6, 'nashitaiftekhar@gmail.com', 'cbe91d8f9f04202ecf7ed15a631dc1b8155be2a9b185713ce5ecaeca828eb4e3', '[\"*\"]', '2023-09-10 05:26:01', '2023-09-04 06:04:40', '2023-09-10 05:26:01'),
(36, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', 'df2e642f08ae411fdc03e69dc0702020b0b21b4ff33fdffae416231978684656', '[\"*\"]', '2023-09-07 05:22:08', '2023-09-07 03:41:58', '2023-09-07 05:22:08'),
(37, 'App\\Models\\User', 7, 'mdalamin.aranya@gmail.com', '6435ea2ba9a69f3b197a23ad7843544ef2581b77a8101934b8abef019532c0d3', '[\"*\"]', NULL, '2023-09-07 03:41:58', '2023-09-07 03:41:58'),
(38, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', 'fdb699305025a2b284a401bc966353c7d35aff6995df45037b6fd60725aa4f9f', '[\"*\"]', '2023-09-13 09:36:16', '2023-09-13 09:36:00', '2023-09-13 09:36:16'),
(39, 'App\\Models\\User', 8, 'masum.mollah@webable.digital', '81c2e003b5c41c90ead02f2e95721bf710c67bcb6666e6c9a0a1447a2f67dc1e', '[\"*\"]', NULL, '2023-09-13 09:36:00', '2023-09-13 09:36:00'),
(40, 'App\\Models\\User', 9, 'API TOKEN', '4afdaaa0b6bb044b0d7703f55ac696b44833f159a75632ba3f35bc146c269174', '[\"*\"]', '2023-09-19 04:49:10', '2023-09-17 11:52:31', '2023-09-19 04:49:10'),
(41, 'App\\Models\\User', 9, 'admin@suparadmin.com', '5e56c107e7e8a1055c3cb3581aa6ad509bc4adb86d2819fba5a691153ed329fc', '[\"*\"]', '2023-09-19 04:49:43', '2023-09-19 04:49:43', '2023-09-19 04:49:43'),
(42, 'App\\Models\\User', 9, 'admin@suparadmin.com', '1e21f7fa319ca9cdd145fc4f890436df736b35269c8bc381ca331f5dc62a381d', '[\"*\"]', '2023-09-19 04:50:52', '2023-09-19 04:50:51', '2023-09-19 04:50:52'),
(43, 'App\\Models\\User', 9, 'admin@suparadmin.com', 'f09511e185005ebb293055464b421da432901b9308cc8c41716756d5c6b3fdf2', '[\"*\"]', '2023-09-19 09:09:47', '2023-09-19 05:27:38', '2023-09-19 09:09:47'),
(44, 'App\\Models\\User', 10, 'API TOKEN', '507e69b9ad6a43380adae111eb74d30599d93d08426cc3974e8d2f6ecdc3a859', '[\"*\"]', '2023-09-20 07:12:23', '2023-09-20 06:57:02', '2023-09-20 07:12:23'),
(45, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '0f078aab1a12e936c476d83906596d3577032e6d2d73f641cc6e00c5b428fc50', '[\"*\"]', '2023-09-20 07:16:12', '2023-09-20 07:13:09', '2023-09-20 07:16:12'),
(46, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '348cdd22ad32c309c3852c647bea58603e41a3445f30532562ee33b2bc399516', '[\"*\"]', '2023-09-20 07:21:40', '2023-09-20 07:19:04', '2023-09-20 07:21:40'),
(47, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', 'a536b67950cb72872beb1ad43b413b008aef28e3a41c56fed45d6f63b5f33d25', '[\"*\"]', '2023-09-21 13:35:10', '2023-09-21 12:58:39', '2023-09-21 13:35:10'),
(48, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', '6d53f43dcd63e2194481509c6c3eac6ab2f8d7f9431086b16df84bb250fbdd99', '[\"*\"]', '2023-09-21 13:41:39', '2023-09-21 13:35:57', '2023-09-21 13:41:39'),
(49, 'App\\Models\\User', 10, 'tanzir.tushar@webable.digital', 'f4ab770b5496b0c787c7cb6e7d41716ce1bbae7a980c7f561e68ee45f11cebeb', '[\"*\"]', '2023-09-24 10:29:24', '2023-09-24 08:18:35', '2023-09-24 10:29:24');

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
  `has_variation` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'check variation',
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Pansy Cotton Voil Panjabi', 'pansy-cotton-voil-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373096/aranya-product-v2/K0010352FFS1202719/4_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373096/aranya-product-v2/K0010352FFS1202719/4_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373099/aranya-product-v2/K0010352FFS1202719/4_1.png', '', '', '', '22', '28', '36', 'cm', NULL, NULL, 'K0010352FFS1202719', NULL, '0', 0.0000, 'The mesmerizing shades of red complimenting in this panjabi were taken from organically grown madder successively. Block print has been used on cotton voil fabric to ensure the highest amount of easement. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:30', NULL, '2023-08-31 04:30:30'),
(2, 'Deutzia baby panjabi ', 'deutzia-baby-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373071/aranya-product-v2/K0010372NK10194019/5_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373071/aranya-product-v2/K0010372NK10194019/5_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373084/aranya-product-v2/K0010372NK10194019/5_2.png', '', '', '', '21', '27', '42', 'inch', NULL, NULL, 'K0010372NK10194019', NULL, '0', 0.0000, 'Dark designs on a light base and comfortable fabric makes it a perfect traditional wear for your child.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(3, 'Chiliad Kids Panjabi ', 'chiliad-kids-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368294/aranya-product-v2/K0010373NK10194019/6_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368294/aranya-product-v2/K0010373NK10194019/6_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368410/aranya-product-v2/K0010373NK10194019/6_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010373NK10194019', NULL, '0', 0.0000, 'Pomegranate and myrobalan have been used to bring out the olive color on this wax-printed cotton kids panjabi. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(4, 'Cistus Kids Panjabi ', 'cistus-kids-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368344/aranya-product-v2/K0010374NK10194019/7_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368344/aranya-product-v2/K0010374NK10194019/7_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368362/aranya-product-v2/K0010374NK10194019/7_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010374NK10194019', NULL, '0', 0.0000, 'Wax-printed pure cotton kids Panjabi that has been dipped in betelnut to extract the pink shade. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(5, 'Oboni Cotton Panjabi ', 'oboni-cotton-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373117/aranya-product-v2/K0010379NHS1204219/8_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373117/aranya-product-v2/K0010379NHS1204219/8_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373122/aranya-product-v2/K0010379NHS1204219/8_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010379NHS1204219', NULL, '0', 0.0000, 'The shiny blue in this Panjabi is taken from an enticing by indigo. Traditional tie-dyeing technique has been used on cotton and black kashmi print to create detailed intricacies. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(6, 'Mantecoso Baby Cotton Fotua ', 'mantecoso-baby-cotton-fotua', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368408/aranya-product-v2/K0020034RG11194619/9_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368408/aranya-product-v2/K0020034RG11194619/9_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368417/aranya-product-v2/K0020034RG11194619/9_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0020034RG11194619', NULL, '0', 0.0000, 'Myrabalan is used to produce the buttery golden color seen in this fotua. Wax print has been used to create the beautiful spiral imprints on a cotton fabric, which secures the smoothest touch to the skin.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(7, 'Acacias baby fatua ', 'acacias-baby-fatua', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368916/aranya-product-v2/K0020036RG11194519/10_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368916/aranya-product-v2/K0020036RG11194519/10_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369123/aranya-product-v2/K0020036RG11194519/10_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0020036RG11194519', NULL, '0', 0.0000, 'The simple and monotone combination of this outfit make it a unique traditional wear.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(8, 'Dogma kids Shirt ', 'dogma-kids-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368476/aranya-product-v2/K0030067IJ02190719/12_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368476/aranya-product-v2/K0030067IJ02190719/12_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030067IJ02190719', NULL, '0', 0.0000, 'Handmade block-printed creates the beauty in this pure cotton kids Shirt with a rich appearance and with the application of Natural red and black come from the natural essence of madder and black kashmi. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(9, 'Broom baby shirt ', 'broom-baby-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369250/aranya-product-v2/K0030072IJ03191319/13_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369250/aranya-product-v2/K0030072IJ03191319/13_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369215/aranya-product-v2/K0030072IJ03191319/13_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030072IJ03191319', NULL, '0', 0.0000, 'Light designs on a dark base and comfortable fabric makes it a perfect traditional wear for your child.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(10, 'Decumaria baby shirt ', 'decumaria-baby-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368846/aranya-product-v2/K0030073IJ03191319/14_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368846/aranya-product-v2/K0030073IJ03191319/14_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368794/aranya-product-v2/K0030073IJ03191319/14_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030073IJ03191319', NULL, '0', 0.0000, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(11, 'Dandelion baby shirt ', 'dandelion-baby-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369601/aranya-product-v2/K0030085IJ11194419/15_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369601/aranya-product-v2/K0030085IJ11194419/15_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369280/aranya-product-v2/K0030085IJ11194419/15_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030085IJ11194419', NULL, '0', 0.0000, 'Light designs on a dark base and comfortable fabric makes it a perfect wear for your child.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(12, 'Pansay Cotton Shirt ', 'pansay-cotton-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368463/aranya-product-v2/K0030086IJ11194319/16_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368463/aranya-product-v2/K0030086IJ11194319/16_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368486/aranya-product-v2/K0030086IJ11194319/16_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030086IJ11194319', NULL, '0', 0.0000, 'The segment of characteristic color myrobalan shows brilliant golden tone in this wax-printed cotton shirt. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(13, 'Estrella Baby Cotton Voil Salwar Kameez ', 'estrella-baby-cotton-voil-salwar-kameez', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368508/aranya-product-v2/K0050470SF04190819/17_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368508/aranya-product-v2/K0050470SF04190819/17_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368942/aranya-product-v2/K0050470SF04190819/17_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050470SF04190819', NULL, '0', 0.0000, 'The mesmerizing combination of the pink from betelnuts and brown from catechu gives the three pieces a subtle touch of elegance, rarely found anywhere else. Wax print has been used on cotton fabric to create the unique designs, while ensuring the highest easement.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(14, 'Meghmala Linen Suit ', 'meghmala-linen-suit', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369068/aranya-product-v2/K0050500SFE1204619/18_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369068/aranya-product-v2/K0050500SFE1204619/18_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368866/aranya-product-v2/K0050500SFE1204619/18_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050500SFE1204619', NULL, '0', 0.0000, 'The blue color in this salwar kameez is extracted from handpicked indigo. The Wax print has been utilized on linen fabric to create expuisite plans. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(15, 'Billergia baby suits ', 'billergia-baby-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368649/aranya-product-v2/K0050501IJ12194519/19_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368649/aranya-product-v2/K0050501IJ12194519/19_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368751/aranya-product-v2/K0050501IJ12194519/19_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050501IJ12194519', NULL, '0', 0.0000, 'Similar tones and minimal designs of this dress greatly compliment each other. Comfortable fabric provides soothing touch for your baby\'s skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(16, 'Aconite cotton baby suits ', 'aconite-cotton-baby-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369663/aranya-product-v2/K0050504FF12194819/20_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369663/aranya-product-v2/K0050504FF12194819/20_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369466/aranya-product-v2/K0050504FF12194819/20_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050504FF12194819', NULL, '0', 0.0000, 'Dual colors and minimal motifs are greatly paired with each other to create the perfect traditional piece for your baby. Cotton fabric used also provides good breathability making it good to wear all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:31', NULL, '2023-08-31 04:30:31'),
(17, 'Blazing star baby suits ', 'blazing-star-baby-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369717/aranya-product-v2/K0050505FF12190620/21_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369717/aranya-product-v2/K0050505FF12190620/21_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369362/aranya-product-v2/K0050505FF12190620/21_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050505FF12190620', NULL, '0', 0.0000, 'Tones of blue and gray represent the rainclouds in the sky. Comfortable fabric and stunning designs make it wearable all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(18, 'Piscina Baby Khadi Jacket', 'piscina-baby-khadi-jacket', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368409/aranya-product-v2/K0170029NK09193719/23_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368409/aranya-product-v2/K0170029NK09193719/23_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368495/aranya-product-v2/K0170029NK09193719/23_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0170029NK09193719', NULL, '0', 0.0000, 'The beautiful tones of blue in this jacket are made from colors extracted from organically grown indigo. Wax print has been used on khadi fabric to make the magical patterns.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(19, 'Woodland Baby Cotton Frock ', 'woodland-baby-cotton-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369873/aranya-product-v2/K0200021IJ03191219/24_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369873/aranya-product-v2/K0200021IJ03191219/24_1.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200021IJ03191219', NULL, '0', 0.0000, 'The earthy tones of brown in this frock are made with colors given off by organically grown catechu. Wax print is used on cotton to produce the treelike patterns and also ensuring the softest touch to the baby skin.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(20, 'Ellipse Cotton Baby Frock', 'ellipse-cotton-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368295/aranya-product-v2/K0200026SF03191319/43.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368295/aranya-product-v2/K0200026SF03191319/43.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368290/aranya-product-v2/K0200026SF03191319/44.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200026SF03191319', NULL, '0', 0.0000, 'The mix of red and black color in this enthusiastic baby frock is taken from the best-handpicked madder. Black kashmi print has been utilized on cotton material to create detailed intricacies. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(21, 'Oval Baby Frock ', 'oval-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369065/aranya-product-v2/K0200028SF04191519/26_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369065/aranya-product-v2/K0200028SF04191519/26_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369051/aranya-product-v2/K0200028SF04191519/26_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200028SF04191519', NULL, '0', 0.0000, 'The magnificent color in this baby Frock/dress is made from hand-plucked Indigo which is resembles blue shades. Wax print has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(22, 'Summer Fruits Baby Cotton Frock ', 'summer-fruits-baby-cotton-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387332/aranya-product-v2/K0200029IJ04191519/27_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387332/aranya-product-v2/K0200029IJ04191519/27_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387331/aranya-product-v2/K0200029IJ04191519/27_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200029IJ04191519', NULL, '0', 0.0000, 'The off white color of this frock gives out a vibe of everything pure and peaceful. This frock has been crafted with cotton material to ensure the highest comfort for your baby.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(23, 'Tierra Baby Cotton Voil Frock ', 'tierra-baby-cotton-voil-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368510/aranya-product-v2/K0200035FF07192819/28_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368510/aranya-product-v2/K0200035FF07192819/28_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200035FF07192819', NULL, '0', 0.0000, 'This graceful baby frock has been dyed with the purest brown extracted from organically grown catechu. Plain dye technique has been used to immerse the color on a cotton material to provide the utmost comfort.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(24, 'Anahi Baby Frock ', 'anahi-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387348/aranya-product-v2/K0200037SF07192819/29_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387348/aranya-product-v2/K0200037SF07192819/29_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387346/aranya-product-v2/K0200037SF07192819/29_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200037SF07192819', NULL, '0', 0.0000, 'The eye-catching brown color of this frock is exclusively taken from organically grown catechu. The mesmerizing designs are made with wax print on cotton fabric, providing the best of both easement and beauty.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(25, 'Espumosa Baby Cotton Voil Frock ', 'espumosa-baby-cotton-voil-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387357/aranya-product-v2/K0200044SF07193219/30_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387357/aranya-product-v2/K0200044SF07193219/30_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387364/aranya-product-v2/K0200044SF07193219/30_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200044SF07193219', NULL, '0', 0.0000, 'The enchanting shades of blue in this frock are all extracted from organically grown indigo. Wax print has been used on cotton fabric to make the captivating imprints and also securing the most easement.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(26, 'Avro Cotton Baby Frock ', 'avro-cotton-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387376/aranya-product-v2/K0200046SF07193119/31_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387376/aranya-product-v2/K0200046SF07193119/31_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387375/aranya-product-v2/K0200046SF07193119/31_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200046SF07193119', NULL, '0', 0.0000, 'The magnificent color in this baby forck is made from handplucked promegranate and myrabalan which is resemble of olive. traditional kantha stithc has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(27, 'Kadambini Cotton Frock ', 'kadambini-cotton-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387388/aranya-product-v2/K0200049FF07193119/32_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387388/aranya-product-v2/K0200049FF07193119/32_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387388/aranya-product-v2/K0200049FF07193119/32_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200049FF07193119', NULL, '0', 0.0000, 'The different shades of a heavenly blue in this baby frock are all extracted from organic indigo. Wax print has been used over cotton fabric to produce the cloudy vibrance. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(28, 'Kalpis Baby Frock ', 'kalpis-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368813/aranya-product-v2/K0200050FF07193119/33_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368813/aranya-product-v2/K0200050FF07193119/33_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368609/aranya-product-v2/K0200050FF07193119/33_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200050FF07193119', NULL, '0', 0.0000, 'The sweet color in this baby forck/dress is made from hand-plucked batelnut which is resembles pink tone. Traditional wax print has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(29, 'Alyssa Cotton Baby Frock ', 'alyssa-cotton-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387403/aranya-product-v2/K0200053IJ08193319/34_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387403/aranya-product-v2/K0200053IJ08193319/34_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387395/aranya-product-v2/K0200053IJ08193319/34_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200053IJ08193319', NULL, '0', 0.0000, 'Indigo is used to produce the blue color seen in this frock. Wax-print is used beautifully on a cotton fabric, which secures the smoothest touch to the skin. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(30, 'Peach Vibes Baby Silk Kantha Frock ', 'peach-vibes-baby-silk-kantha-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387604/aranya-product-v2/K0200056SF11194219/35_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387604/aranya-product-v2/K0200056SF11194219/35_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387604/aranya-product-v2/K0200056SF11194219/35_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200056SF11194219', NULL, '0', 0.0000, 'The soothing red color seen in this frock is extracted from organically grown madder. Kanthastitch hasbeen used on allover dyed silk to give a slight touch of the Bengali traditions.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(31, 'Blue eyed grass frock ', 'blue-eyed-grass-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368454/aranya-product-v2/K021041NKE1181918/11_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368454/aranya-product-v2/K021041NKE1181918/11_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368529/aranya-product-v2/K021041NKE1181918/11_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K021041NKE1181918', NULL, '0', 0.0000, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(32, 'Freesia baby frock ', 'freesia-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369007/aranya-product-v2/K0530002IJ12194619/36_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369007/aranya-product-v2/K0530002IJ12194619/36_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369096/aranya-product-v2/K0530002IJ12194619/36_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0530002IJ12194619', NULL, '0', 0.0000, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(33, 'Cosmo baby frock ', 'cosmo-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368985/aranya-product-v2/K0540001SF04193119/37_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368985/aranya-product-v2/K0540001SF04193119/37_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368943/aranya-product-v2/K0540001SF04193119/37_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369020/aranya-product-v2/K0540001SF04193119/37_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369067/aranya-product-v2/K0540001SF04193119/37_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0540001SF04193119', NULL, '0', 0.0000, 'This dual color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.</span>\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(34, 'Mimosa baby frock ', 'mimosa-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368942/aranya-product-v2/K0540003SF07193119/39_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368942/aranya-product-v2/K0540003SF07193119/39_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368780/aranya-product-v2/K0540003SF07193119/39_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369168/aranya-product-v2/K0540003SF07193119/39_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369128/aranya-product-v2/K0540003SF07193119/39_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0540003SF07193119', NULL, '0', 0.0000, 'This dual color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(35, 'Pansies baby frock', 'pansies-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369318/aranya-product-v2/K0540004IJ07193119/40_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369318/aranya-product-v2/K0540004IJ07193119/40_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369662/aranya-product-v2/K0540004IJ07193119/40_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369883/aranya-product-v2/K0540004IJ07193119/40_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369429/aranya-product-v2/K0540004IJ07193119/40_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0540004IJ07193119', NULL, '0', 0.0000, 'This color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(36, 'Space Yonder Cotton Panjabi ', 'space-yonder-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368433/aranya-product-v2/M0010164AR0817/42_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368433/aranya-product-v2/M0010164AR0817/42_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368426/aranya-product-v2/M0010164AR0817/42_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368347/aranya-product-v2/M0010164AR0817/42_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010164AR0817', NULL, '0', 0.0000, 'Teal and Black coloured Cotton Panjabi dyed from Indigo, Myrabalan and Kashmi. A layer of rich detail has been added by Block-printed designs.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(37, 'Spinel Cotton Voil Panjabi ', 'spinel-cotton-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369195/aranya-product-v2/M0010275SMA08182218/43_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369195/aranya-product-v2/M0010275SMA08182218/43_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369454/aranya-product-v2/M0010275SMA08182218/43_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368870/aranya-product-v2/M0010275SMA08182218/43_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369421/aranya-product-v2/M0010275SMA08182218/43_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010275SMA08182218', NULL, '0', 0.0000, 'The red shade on this block printed voil cotton Panjabi creates a festive look.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(38, 'Cadbury Cotton Panjabi ', 'cadbury-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368841/aranya-product-v2/M0010278RGE2182218/44_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368841/aranya-product-v2/M0010278RGE2182218/44_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368600/aranya-product-v2/M0010278RGE2182218/44_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368871/aranya-product-v2/M0010278RGE2182218/44_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010278RGE2182218', NULL, '0', 0.0000, 'Catechu is the natural dye ingredient which is used on this brown cotton Panjabi. It has been furnished with a shibori plain dyed.\n\\n\n\\nAll Aranya products are handmade, using natural fibres and materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(39, 'Jolpaiguri Cotton Panjabi ', 'jolpaiguri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368500/aranya-product-v2/M0010289MA08181119/45_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368500/aranya-product-v2/M0010289MA08181119/45_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368524/aranya-product-v2/M0010289MA08181119/45_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368484/aranya-product-v2/M0010289MA08181119/45_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368543/aranya-product-v2/M0010289MA08181119/45_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010289MA08181119', NULL, '0', 0.0000, 'Pomegranate &amp; Myrabalan are a few natural dye ingredients which were applied through wax resist &amp; plain dyed to achieve olive &amp; golden textures on this cotton Panjabi.\n\\n\n\\nAll Aranya products are handmade, using natural fibres and materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:32', NULL, '2023-08-31 04:30:32'),
(40, 'Juan Mens Panjabi', 'juan-mens-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387670/aranya-product-v2/M0010295RG0718/46.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387670/aranya-product-v2/M0010295RG0718/46.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010295RG0718', NULL, '0', 0.0000, 'The eye-catching brown seen in this panjabi is extracted from handpicked catechu. The elegant motifs are made using pipe tie dye on cotton fabric, providing the highest comfort.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(41, 'Cherubic Cotton Voil Slim Fit Panjabi ', 'cherubic-cotton-voil-slim-fit-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369023/aranya-product-v2/M0010316RGS1193018/47_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369023/aranya-product-v2/M0010316RGS1193018/47_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368709/aranya-product-v2/M0010316RGS1193018/47_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369351/aranya-product-v2/M0010316RGS1193018/47_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010316RGS1193018', NULL, '0', 0.0000, 'The calming red color in this panjabi is extracted from organically grown madder, and the color is printed traditionally on cotton voil fabric, which ensures the utmost comfort in the scorching heat of summer.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(42, 'Twilight Eri Cotton Panjabi ', 'twilight-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368985/aranya-product-v2/M0010338IJE1191519/48_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368985/aranya-product-v2/M0010338IJE1191519/48_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369022/aranya-product-v2/M0010338IJE1191519/48_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368700/aranya-product-v2/M0010338IJE1191519/48_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010338IJE1191519', NULL, '0', 0.0000, 'Wax printed design has been outlined on this Enri cotton Panjabi. Madder &amp; Myrabalan were used to flourish it\'s Red &amp; Gray Colors.\nEvery Aranya product is made from natural materials using craft techniques, Align with in a fair trade frame work.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(43, 'Teakwood Eri Cotton Panjabi ', 'teakwood-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387710/aranya-product-v2/M0010342FF04191819/49_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387710/aranya-product-v2/M0010342FF04191819/49_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387711/aranya-product-v2/M0010342FF04191819/49_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387705/aranya-product-v2/M0010342FF04191819/49_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387711/aranya-product-v2/M0010342FF04191819/49_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010342FF04191819', NULL, '0', 0.0000, 'The natural woddem vibe is the individuallity of this panjabi which is created by natural dye and kantha stitch work.All Aranya products are handmade, using natural materials, within a fair trade framework. .', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(44, 'Nandan Eri Silk Kantha Panjabi ', 'nandan-eri-silk-kantha-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369534/aranya-product-v2/M0010343IJ05191819/50_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369534/aranya-product-v2/M0010343IJ05191819/50_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369836/aranya-product-v2/M0010343IJ05191819/50_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010343IJ05191819', NULL, '0', 0.0000, 'The traditional way of dying Indigo and myrabalan is used to resemble the blue and gray color in this endi silk panjabi. Kantha stitch has been used on the placket to give a touch of elegance.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(45, 'Begonia Eri Cotton Panjabi ', 'begonia-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369012/aranya-product-v2/M0010344MA05194719/51_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369012/aranya-product-v2/M0010344MA05194719/51_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368848/aranya-product-v2/M0010344MA05194719/51_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368965/aranya-product-v2/M0010344MA05194719/51_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369135/aranya-product-v2/M0010344MA05194719/51_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010344MA05194719', NULL, '0', 0.0000, 'A balance of madder were used to bring out the Red colour . This Enri cotton panjabi was designed with plain dye technique to perish its natural outlook.\n\\n\n\\nUsing natural materials, Full hand-made Aranya\'s products are align within fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(46, 'Empyrean Cotton Panjabi ', 'empyrean-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369294/aranya-product-v2/M0010344MA05194819/52_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369294/aranya-product-v2/M0010344MA05194819/52_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368748/aranya-product-v2/M0010344MA05194819/52_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010344MA05194819', NULL, '0', 0.0000, 'Pieces from nature, Catechu &amp; Khasmi were used to bring out the Brown &amp; Black colours on this pure Cotton Panjabi. Block print technique added an elegant outlook on its design.\nEvery Aranya product is made from natural materials using craft techniques, align within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(47, 'Alder Eri Cotton Panjabi ', 'alder-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368719/aranya-product-v2/M0010348FF06194819/53_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368719/aranya-product-v2/M0010348FF06194819/53_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368747/aranya-product-v2/M0010348FF06194819/53_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368577/aranya-product-v2/M0010348FF06194819/53_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010348FF06194819', NULL, '0', 0.0000, 'Wax printed design has been outlined on this enri cotton Panjabi. Pomegranate &amp; Myrabalan were used to flourish it\'s olive Colors.\nEvery Aranya product is made from natural materials using craft techniques, Align with in a fair trade frame work.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(48, 'Sibyr Eri Silk Panjabi ', 'sibyr-eri-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368953/aranya-product-v2/M0010354SF07192719/54_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368953/aranya-product-v2/M0010354SF07192719/54_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368653/aranya-product-v2/M0010354SF07192719/54_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369031/aranya-product-v2/M0010354SF07192719/54_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010354SF07192719', NULL, '0', 0.0000, 'Block printed authentic silk panjabi, that has been colored with sagupast for the dark shade. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.\n\\n', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(49, 'Comfy Eri Cotton Panjabi ', 'comfy-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368700/aranya-product-v2/M0010356SF07193219/55_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368700/aranya-product-v2/M0010356SF07193219/55_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368752/aranya-product-v2/M0010356SF07193219/55_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368665/aranya-product-v2/M0010356SF07193219/55_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368843/aranya-product-v2/M0010356SF07193219/55_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010356SF07193219', NULL, '0', 0.0000, 'Catechu has been used to derive brown colour on this Endi Cotton Panjabi.TieDye technique was used to amplify it\'s bold design.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(50, 'Mellow Viscose Panjabi ', 'mellow-viscose-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368472/aranya-product-v2/M0010359IJS1203619/56_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368472/aranya-product-v2/M0010359IJS1203619/56_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368426/aranya-product-v2/M0010359IJS1203619/56_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368396/aranya-product-v2/M0010359IJS1203619/56_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368395/aranya-product-v2/M0010359IJS1203619/56_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010359IJS1203619', NULL, '0', 0.0000, 'Classic viscose fabric Panjabi that has been blocked wax print for the exquisite designs and naturally dyed with myrobalan for the brilliant golden tones. All Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(51, 'Trucage Eri Cotton Panjabi', 'trucage-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368409/aranya-product-v2/M0010365SRS1204019/58_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368409/aranya-product-v2/M0010365SRS1204019/58_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368343/aranya-product-v2/M0010365SRS1204019/58_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368464/aranya-product-v2/M0010365SRS1204019/58_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010365SRS1204019', NULL, '0', 0.0000, 'The magnificent black color in this Panjabi has been extracted from myrobalan. Plain dye cotton fabric with a dynamic touch of wax print on the placket. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(52, 'Brown Fantasia  Eri Cotton Panjabi ', 'brown-fantasia-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368787/aranya-product-v2/M0010367IJS1203919/59_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368787/aranya-product-v2/M0010367IJS1203919/59_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368444/aranya-product-v2/M0010367IJS1203919/59_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368859/aranya-product-v2/M0010367IJS1203919/59_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010367IJS1203919', NULL, '0', 0.0000, 'Pieces from nature, Catechu were used to bring out the Brown colours on this enri Cotton Panjabi. Plain dye technique added an elegant outlook on it\'s design.\nEvery Aranya product is made from natural materials using craft techniques, align within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(53, 'Aria Eri Cotton Panjabi ', 'aria-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368473/aranya-product-v2/M0010383IJE1204419/60_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368473/aranya-product-v2/M0010383IJE1204419/60_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368472/aranya-product-v2/M0010383IJE1204419/60_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010383IJE1204419', NULL, '0', 0.0000, 'This Panjabi gets its exclusive golden color from a mixture of colors given off by myrabalan. Karchupi has been applied on the neck with plain dye on eri cotton fabric. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(54, 'Rhodonite cotton panjabi ', 'rhodonite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369082/aranya-product-v2/M0010393RG02200820/61_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369082/aranya-product-v2/M0010393RG02200820/61_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368829/aranya-product-v2/M0010393RG02200820/61_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368936/aranya-product-v2/M0010393RG02200820/61_4.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010393RG02200820', NULL, '0', 0.0000, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(55, 'Bornite cotton panjabi', 'bornite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369064/aranya-product-v2/M0010395RG02200720/62_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369064/aranya-product-v2/M0010395RG02200720/62_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369316/aranya-product-v2/M0010395RG02200720/62_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368972/aranya-product-v2/M0010395RG02200720/62_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369179/aranya-product-v2/M0010395RG02200720/62_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010395RG02200720', NULL, '0', 0.0000, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:33', NULL, '2023-08-31 04:30:33'),
(56, 'Aciano Cotton Panjabi ', 'aciano-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369226/aranya-product-v2/M0010396RG02200920/63_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369226/aranya-product-v2/M0010396RG02200920/63_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369209/aranya-product-v2/M0010396RG02200920/63_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369175/aranya-product-v2/M0010396RG02200920/63_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369387/aranya-product-v2/M0010396RG02200920/63_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010396RG02200920', NULL, '0', 0.0000, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(57, 'Sodalite voil panjabi ', 'sodalite-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369716/aranya-product-v2/M0010401RGS1203821/64_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369716/aranya-product-v2/M0010401RGS1203821/64_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369119/aranya-product-v2/M0010401RGS1203821/64_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369753/aranya-product-v2/M0010401RGS1203821/64_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010401RGS1203821', NULL, '0', 0.0000, 'The hues of the blue &amp; grey represented by the enchanting blue color in this panjabi is extracted from natural ingredients. Wax print has been used on cotton material to produce the beautiful imprints that resemble very much to the clouds.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework. ', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(58, 'Kyanite cotton Voil panjabi ', 'kyanite-cotton-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369605/aranya-product-v2/M0010429MCE32211122/65_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369605/aranya-product-v2/M0010429MCE32211122/65_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369288/aranya-product-v2/M0010429MCE32211122/65_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369303/aranya-product-v2/M0010429MCE32211122/65_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369878/aranya-product-v2/M0010429MCE32211122/65_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010429MCE32211122', NULL, '0', 0.0000, 'The mysterious TEAL color in this panjabi is cultivated from the finest organic elements. Wax has been used to embed the gorgeous teal color on cotton panjabi.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(59, 'Ussingite cotton panjabi ', 'ussingite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387745/aranya-product-v2/M0010430NKE5220720/66_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387745/aranya-product-v2/M0010430NKE5220720/66_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387760/aranya-product-v2/M0010430NKE5220720/66_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387750/aranya-product-v2/M0010430NKE5220720/66_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387760/aranya-product-v2/M0010430NKE5220720/66_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010430NKE5220720', NULL, '0', 0.0000, 'The match of monochrome cotton fabric and stunning motifs are sure to make heads turn. Wear this stunning panjabi to any event and you\'re bound to be the eye candy.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(60, 'Cuprite cotton panjabi ', 'cuprite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369584/aranya-product-v2/M0010431NKE5224619/67_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369584/aranya-product-v2/M0010431NKE5224619/67_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369386/aranya-product-v2/M0010431NKE5224619/67_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369228/aranya-product-v2/M0010431NKE5224619/67_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010431NKE5224619', NULL, '0', 0.0000, 'This mesmerizing panjabi is not only the perfect combination of color and designs, but the cotton fabric also makes it the most eligible choice for any occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(61, 'Almandine cotton panjabi ', 'almandine-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368699/aranya-product-v2/M0010433NKE5221022/68_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368699/aranya-product-v2/M0010433NKE5221022/68_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368764/aranya-product-v2/M0010433NKE5221022/68_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368844/aranya-product-v2/M0010433NKE5221022/68_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010433NKE5221022', NULL, '0', 0.0000, 'This elegant cotton panjabi may be the perfect fit for any traditional occasion. Designs of white and brown are bound to make heads turn.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(62, 'Brown Rapture Silk Panjabi ', 'brown-rapture-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368378/aranya-product-v2/M001065MAS117/41_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368378/aranya-product-v2/M001065MAS117/41_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368354/aranya-product-v2/M001065MAS117/41_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368327/aranya-product-v2/M001065MAS117/41_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M001065MAS117', NULL, '0', 0.0000, 'Wax resistant dye on this Eri SIlk creates a layer of vivid designs on this Panjabi. Indigo and Myrabalan were used to bring out the Teal hue.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(63, 'Duman Eri Silk Fatua ', 'duman-eri-silk-fatua', 2, 16, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369927/aranya-product-v2/M0020033NH09193519/69_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369927/aranya-product-v2/M0020033NH09193519/69_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369164/aranya-product-v2/M0020033NH09193519/69_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0020033NH09193519', NULL, '0', 0.0000, 'The ravishing shade of golden in this silk fatua is extracted from handpicked myrabalan. The color is printed on endi silk to produce the gorgeous shades.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(64, 'Bletilla Bomber Jacket', 'bletilla-bomber-jacket', 2, 18, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368566/aranya-product-v2/M0170019SR08193419/70_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368566/aranya-product-v2/M0170019SR08193419/70_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368539/aranya-product-v2/M0170019SR08193419/70_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368606/aranya-product-v2/M0170019SR08193419/70_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0170019SR08193419', NULL, '0', 0.0000, 'Pomegranate &amp; Myrabalan has been used to derive olive colour on this bomber jacket. Wax print technique was used to amplify it\'s different looks.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(65, 'Lattice Cotton Vest ', 'lattice-cotton-vest', 2, 14, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368454/aranya-product-v2/M0340001SR08193419/71_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368454/aranya-product-v2/M0340001SR08193419/71_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368419/aranya-product-v2/M0340001SR08193419/71_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0340001SR08193419', NULL, '0', 0.0000, 'Wax printed design has been outlined on this pure Cotton vest, while naturally dyeing with khasmi has flourished it\'s black colour.\n\\n\n\\nUsing natural materials, full handmade Aranya\'s products are align within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(66, 'Brown Rebel T', 'brown-rebel-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387772/aranya-product-v2/M0920001NKE118/72_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387772/aranya-product-v2/M0920001NKE118/72_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387771/aranya-product-v2/M0920001NKE118/72_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387772/aranya-product-v2/M0920001NKE118/72_1.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920001NKE118', NULL, '0', 0.0000, 'Aranya\'s Debut T-Shirt line consists off Brown Rebel T-Shirt dipped in natural Catechu to make this solid brown colour.\n\\n\n\\nAranya\'s \"Natural Tee\" products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(67, 'Blue Serge Cotton T', 'blue-serge-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368701/aranya-product-v2/M0920002NKE118/73_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368701/aranya-product-v2/M0920002NKE118/73_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368814/aranya-product-v2/M0920002NKE118/73_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920002NKE118', NULL, '0', 0.0000, 'Blue Serge Cotton T-Shirt is part of Aranya\'s Exclusive \"Natural Tee\" collecction dyed in Indigo. Aarashi method, a Shibori technique was used on this pure cotton fabric to bring out the pattern.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(68, 'Aether Cotton T', 'aether-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368625/aranya-product-v2/M0920005NKE118/74_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368625/aranya-product-v2/M0920005NKE118/74_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368541/aranya-product-v2/M0920005NKE118/74_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368649/aranya-product-v2/M0920005NKE118/74_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920005NKE118', NULL, '0', 0.0000, 'Dipped and Dyed in Indigo, the Aether Cotton T-Shirt is part of the newly launched \"Natural Tee\" collection. It comes in a cool blue hue.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(69, 'Turquoise Cotton T', 'turquoise-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369658/aranya-product-v2/M0920009NH12194619/75_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369658/aranya-product-v2/M0920009NH12194619/75_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369631/aranya-product-v2/M0920009NH12194619/75_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369320/aranya-product-v2/M0920009NH12194619/75_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369734/aranya-product-v2/M0920009NH12194619/75_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920009NH12194619', NULL, '0', 0.0000, 'The brown patterns on the blue backcloth are made with colors extracted from organic blessing. Block print has been used on knit cotton fabric thus highest comfort is secured.\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(70, 'Rhapsody knit cotton T', 'rhapsody-knit-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369771/aranya-product-v2/M0920010NH12194519/76_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369771/aranya-product-v2/M0920010NH12194519/76_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369556/aranya-product-v2/M0920010NH12194519/76_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369485/aranya-product-v2/M0920010NH12194519/76_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369921/aranya-product-v2/M0920010NH12194519/76_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920010NH12194519', NULL, '0', 0.0000, 'Myrabalan has been used to derive golden colour on this knit cotton T-shirt. Wax print technique was used to amplify it\'s a bold design.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(71, 'Mandevilla Endi Cotton Saree', 'mandevilla-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369843/aranya-product-v2/W0041171RGE1180920/79_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369843/aranya-product-v2/W0041171RGE1180920/79_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369830/aranya-product-v2/W0041171RGE1180920/79_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041171RGE1180920', NULL, '0', 0.0000, 'This red and black endi cotton saree dyed allover entirely with maddar colour and has printed all over the saree. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.This red and black endi cotton saree dyed allover entirely with maddar colour and has printed all over the saree. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(72, 'Golden Odyssey Eri Cotton Saree', 'golden-odyssey-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387818/aranya-product-v2/W0041315RG08183018/80_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387818/aranya-product-v2/W0041315RG08183018/80_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387820/aranya-product-v2/W0041315RG08183018/80_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041315RG08183018', NULL, '0', 0.0000, 'Wax printed eri cotton saree that comes in shades of olive and golden derived from the natural pomegranate and myrabalan.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(73, 'Salvia Endi cotton saree', 'salvia-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369495/aranya-product-v2/W0041554IJ01203521/81_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369495/aranya-product-v2/W0041554IJ01203521/81_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041554IJ01203521', NULL, '0', 0.0000, 'The natural dye of teal at paar and anchol, and beige body in the endi cotton saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework.The natural dye of teal at paar and anchol, and beige body in the endi cotton saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(74, 'Lupine Cotton Kota Saree', 'lupine-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369626/aranya-product-v2/W0041703BAS06220722/82_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369626/aranya-product-v2/W0041703BAS06220722/82_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369738/aranya-product-v2/W0041703BAS06220722/82_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368985/aranya-product-v2/W0041703BAS06220722/82_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369926/aranya-product-v2/W0041703BAS06220722/82_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041703BAS06220722', NULL, '0', 0.0000, 'A cotton kota saree with a red and gray wax design with great bloom inspiration for a magnificent appearance. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(75, 'Eveline Cotton Saree', 'eveline-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369790/aranya-product-v2/W0041704SFS06220722/83_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369790/aranya-product-v2/W0041704SFS06220722/83_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369834/aranya-product-v2/W0041704SFS06220722/83_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369394/aranya-product-v2/W0041704SFS06220722/83_4.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041704SFS06220722', NULL, '0', 0.0000, 'Simplicity, elegance and charmness of this saree understory. Pinkish vibe and the cotton texture create a different look. All Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:34', NULL, '2023-08-31 04:30:34'),
(76, 'Senna Cotton kota Sare', 'senna-cotton-kota-sare', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387866/aranya-product-v2/W0041709BAS8220922/84_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387866/aranya-product-v2/W0041709BAS8220922/84_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387871/aranya-product-v2/W0041709BAS8220922/84_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387871/aranya-product-v2/W0041709BAS8220922/84_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387870/aranya-product-v2/W0041709BAS8220922/84_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041709BAS8220922', NULL, '0', 0.0000, 'This Wax printed cotton saree was dyed using the natural ingredients to bring out the marvelous Red &amp; golden color of the product.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(77, 'Lilac eri cotton saree', 'lilac-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387894/aranya-product-v2/W0041741SF05222022/85_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387894/aranya-product-v2/W0041741SF05222022/85_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387897/aranya-product-v2/W0041741SF05222022/85_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387896/aranya-product-v2/W0041741SF05222022/85_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387897/aranya-product-v2/W0041741SF05222022/85_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041741SF05222022', NULL, '0', 0.0000, 'cotton saree will be the perfect outfit choice in the scorching summer heat. The heavenly tones of white and blue help pose in great style too!\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(78, 'Azalea cotton saree', 'azalea-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369496/aranya-product-v2/W0041742BA05222022/86_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369496/aranya-product-v2/W0041742BA05222022/86_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369251/aranya-product-v2/W0041742BA05222022/86_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369424/aranya-product-v2/W0041742BA05222022/86_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369408/aranya-product-v2/W0041742BA05222022/86_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041742BA05222022', NULL, '0', 0.0000, 'The light colors of this beautiful cotton saree will reflect away the heat of the sun very efficiently. Cotton fabric has been used to ensure utmost comfort.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(79, 'Sapphire cotton saree', 'sapphire-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369720/aranya-product-v2/W0041743BA05222022/87_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369720/aranya-product-v2/W0041743BA05222022/87_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041743BA05222022', NULL, '0', 0.0000, 'cotton saree will be the perfect outfit choice in the scorching summer heat. The heavenly tones of white and blue help pose in great style too', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(80, 'Begonia Endi Cotton saree', 'begonia-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369533/aranya-product-v2/W0041748MCE25222122/88_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369533/aranya-product-v2/W0041748MCE25222122/88_1.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041748MCE25222122', NULL, '0', 0.0000, 'The earthy tones of this eri cotton saree do the best work in making you truly feel beautiful, making it the perfect wear for all of your favorite occasions.</span>\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(81, 'Clematis cotton  saree', 'clematis-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369430/aranya-product-v2/W0041749BAE25222222/89_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369430/aranya-product-v2/W0041749BAE25222222/89_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369806/aranya-product-v2/W0041749BAE25222222/89_4.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041749BAE25222222', NULL, '0', 0.0000, 'The contrasting shades of blue and orange in this saree make it the most elegant choice for any daytime occasion. Cotton fabric has been used to provide utmost comfort.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(82, 'Colasia cotton kota saree', 'colasia-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387920/aranya-product-v2/W0041750SFE25222122/90_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387920/aranya-product-v2/W0041750SFE25222122/90_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387921/aranya-product-v2/W0041750SFE25222122/90_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387919/aranya-product-v2/W0041750SFE25222122/90_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387917/aranya-product-v2/W0041750SFE25222122/90_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041750SFE25222122', NULL, '0', 0.0000, 'The contrasting tones of this saree makes both the colors stand out beautifully. With dual designs and cotton kota fabric, it\'s an eye catcher as well as comfort wear.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(83, 'Verbena cotton saree', 'verbena-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369354/aranya-product-v2/W0041753MCE26222122/91_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369354/aranya-product-v2/W0041753MCE26222122/91_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041753MCE26222122', NULL, '0', 0.0000, 'The blue and grey tones of this saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(84, 'Wisteria cotton saree', 'wisteria-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387951/aranya-product-v2/W0041755SFE26222122/92_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387951/aranya-product-v2/W0041755SFE26222122/92_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387949/aranya-product-v2/W0041755SFE26222122/92_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387948/aranya-product-v2/W0041755SFE26222122/92_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678387945/aranya-product-v2/W0041755SFE26222122/92_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041755SFE26222122', NULL, '0', 0.0000, 'The blue and black colors of this saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(85, 'Frankliana Alatamaha Balaka Silk Suits ', 'frankliana-alatamaha-balaka-silk-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388137/aranya-product-v2/W0050396RGE1181618/93_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388137/aranya-product-v2/W0050396RGE1181618/93_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388137/aranya-product-v2/W0050396RGE1181618/93_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388140/aranya-product-v2/W0050396RGE1181618/93_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388136/aranya-product-v2/W0050396RGE1181618/93_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0050396RGE1181618', NULL, '0', 0.0000, 'The stunning shades of brown and beige in this stunning suit is extracted from hand-plucked catechu and raintree. Wax print is added on balaka silk to add the subtle touches of elegance. All Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(86, 'Leah Kantha Eri Silk Salwar ', 'leah-kantha-eri-silk-salwar', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388230/aranya-product-v2/W0050465FFE1191519/94_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388230/aranya-product-v2/W0050465FFE1191519/94_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388233/aranya-product-v2/W0050465FFE1191519/94_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, 200, 'W0050465FFE1191519', NULL, '0', 0.0000, 'A delicate mixture of cateshu and raintree expressing the color brown and beige in this kantha eri silk salwar.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(87, 'Marigold eri silk suits ', 'marigold-eri-silk-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388341/aranya-product-v2/W0050474IJS1201919/95_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388341/aranya-product-v2/W0050474IJS1201919/95_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388342/aranya-product-v2/W0050474IJS1201919/95_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388346/aranya-product-v2/W0050474IJS1201919/95_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388345/aranya-product-v2/W0050474IJS1201919/95_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0050474IJS1201919', NULL, '0', 0.0000, 'The stunning combination of white and gold is bound to make heads turn. Wear this eri silk suit to any traditional meet and you are guaranteed to be the eye candy.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(88, 'Mirabilis Cotton Tops ', 'mirabilis-cotton-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388440/aranya-product-v2/W0060061RG06182418/96_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388440/aranya-product-v2/W0060061RG06182418/96_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388438/aranya-product-v2/W0060061RG06182418/96_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060061RG06182418', NULL, '0', 0.0000, 'The stunning shades of red in this top is extracted from handplucked madder. Block print is added on cotton voil to add the subtle touches of elegance. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(89, 'Daffodil Eri Cotton Tops ', 'daffodil-eri-cotton-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369659/aranya-product-v2/W0060096AA06193419/97_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369659/aranya-product-v2/W0060096AA06193419/97_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369172/aranya-product-v2/W0060096AA06193419/97_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369814/aranya-product-v2/W0060096AA06193419/97_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060096AA06193419', NULL, '0', 0.0000, 'A balance of Catechu were used to bring out the brown colour . This Enri cotton Tops was designed with wax print technique to perish its natural outlook.\nUsing natural materials, Full hand-made Aranya\'s products are align within fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(90, 'Amaryllis  Lilen Women  Tops ', 'amaryllis-lilen-women-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388633/aranya-product-v2/W0060107SR08190620/98_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388633/aranya-product-v2/W0060107SR08190620/98_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388634/aranya-product-v2/W0060107SR08190620/98_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388642/aranya-product-v2/W0060107SR08190620/98_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388633/aranya-product-v2/W0060107SR08190620/98_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060107SR08190620', NULL, '0', 0.0000, 'Pink is the sober color which suits for all type festive. Wax print is to safe color that has been utilized to make the complicated subtleties on this gathering. The combination of this shirt is really classic.\nAll Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(91, 'Myrtle Silk Kurti ', 'myrtle-silk-kurti', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369553/aranya-product-v2/W0060111AA09193719/99_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369553/aranya-product-v2/W0060111AA09193719/99_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369912/aranya-product-v2/W0060111AA09193719/99_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060111AA09193719', NULL, '0', 0.0000, 'This olive tone is a blend of natural color pomegranate and myrobalan in this asymetric tops. Wax print stripe and flower themes are used to draw out the modern fusion design. All Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(92, 'Borage Cotton orna', 'borage-cotton-orna', 6, 33, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369875/aranya-product-v2/W0080370SME1182018/100_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369875/aranya-product-v2/W0080370SME1182018/100_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369293/aranya-product-v2/W0080370SME1182018/100_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0080370SME1182018', NULL, '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The cotton fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(93, 'Scabiosa endi Cotton orna', 'scabiosa-endi-cotton-orna', 6, 33, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388779/aranya-product-v2/W0080630NK04221822/101_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388779/aranya-product-v2/W0080630NK04221822/101_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388778/aranya-product-v2/W0080630NK04221822/101_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388779/aranya-product-v2/W0080630NK04221822/101_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0080630NK04221822', NULL, '0', 0.0000, 'The tricky teal on this orna is taken from handpicked natural dye, and the beautiful designs are made with wax print on endi cotton material.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(94, 'Briar Rose Top and Skirt', 'briar-rose-top-and-skirt', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369358/aranya-product-v2/W0110015RG1017/102_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369358/aranya-product-v2/W0110015RG1017/102_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368936/aranya-product-v2/W0110015RG1017/102_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0110015RG1017', NULL, '0', 0.0000, 'The blue base of this orna is paired stunningly with cream and white colored designs. It can be worn with any colored tops or kamiz.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(95, 'Butea cotton skirt ', 'butea-cotton-skirt', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369846/aranya-product-v2/W0110025FF12184318/103_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369846/aranya-product-v2/W0110025FF12184318/103_1.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0110025FF12184318', NULL, '0', 0.0000, 'The heavenly tone in this skirt is taken from hand-plucked catechu and the perceptible motifs are made using wax print on cotton. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(96, 'Grizzle Bomber Jacket ', 'grizzle-bomber-jacket', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368750/aranya-product-v2/W0170018SR08193419/104_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368750/aranya-product-v2/W0170018SR08193419/104_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368903/aranya-product-v2/W0170018SR08193419/104_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0170018SR08193419', NULL, '0', 0.0000, 'Pieces from nature, madder &amp; myrabalan were used to dye this Cotton bomber jacket with Red &amp; Gray colour. Wax print added an elegant outlook on it\'s design.\n\\n\n\\nAll Aranya\'s products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(97, 'Parsley Bomber Jacket ', 'parsley-bomber-jacket', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368623/aranya-product-v2/W0170020SR08193319/105_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368623/aranya-product-v2/W0170020SR08193319/105_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368563/aranya-product-v2/W0170020SR08193319/105_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368494/aranya-product-v2/W0170020SR08193319/105_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0170020SR08193319', NULL, '0', 0.0000, 'Pieces from nature, madder &amp; myrabalan were used to dye this Cotton bomber jacket with Red &amp; Gray colour. Wax print added an elegant outlook on it\'s design.\nAll Aranya\'s products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:35', NULL, '2023-08-31 04:30:35'),
(98, 'Zenith Bomber Jacket ', 'zenith-bomber-jacket', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368915/aranya-product-v2/W0170031FF09193719/106_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368915/aranya-product-v2/W0170031FF09193719/106_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368784/aranya-product-v2/W0170031FF09193719/106_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369084/aranya-product-v2/W0170031FF09193719/106_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0170031FF09193719', NULL, '0', 0.0000, 'Madder has been used as dyeing materials to derive Red color on this khadi jacket. Anokhi print was used to get the elegant design.\n\\n\n\\nUsing natural materials, full-hand made Aranya\'s products are align with in fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(99, 'Azalea Cotton Kimono ', 'azalea-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368981/aranya-product-v2/W0180128NK06220720/107_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368981/aranya-product-v2/W0180128NK06220720/107_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369087/aranya-product-v2/W0180128NK06220720/107_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369091/aranya-product-v2/W0180128NK06220720/107_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369174/aranya-product-v2/W0180128NK06220720/107_1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180128NK06220720', NULL, '0', 0.0000, 'The soothing pink color in this gorgeous kaftan is taken from the best handpicked betelnuts. Wax print has been used on cotton material to creeate the detailed intricacies.All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(100, 'Alyssum Eri Cotton Kimono ', 'alyssum-eri-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369889/aranya-product-v2/W0180129NK07221020/108_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369889/aranya-product-v2/W0180129NK07221020/108_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369873/aranya-product-v2/W0180129NK07221020/108_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369558/aranya-product-v2/W0180129NK07221020/108_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369511/aranya-product-v2/W0180129NK07221020/108_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180129NK07221020', NULL, '0', 0.0000, 'The beguiling shades of brown in this mesmerizing kimono are produced from natural element. Wax print has been used on eri cotton to produce the magnificent patterns.All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(101, 'Lberis Eri Cotton Kimono ', 'lberis-eri-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369639/aranya-product-v2/W0180130NK07221020/109_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369639/aranya-product-v2/W0180130NK07221020/109_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369507/aranya-product-v2/W0180130NK07221020/109_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180130NK07221020', NULL, '0', 0.0000, 'The sensitive olive shade on this Eri cotton kimono comes from nature. eri cotton was utilized to upgrade the appearance with elite structure.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(102, 'Hyssop silk kimono ', 'hyssop-silk-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388891/aranya-product-v2/W0180131NK08224619/110_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388891/aranya-product-v2/W0180131NK08224619/110_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388892/aranya-product-v2/W0180131NK08224619/110_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388890/aranya-product-v2/W0180131NK08224619/110_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678388887/aranya-product-v2/W0180131NK08224619/110_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180131NK08224619', NULL, '0', 0.0000, 'Mixing the two different combinations of color and wax print in this pure silk makes this kimono a variant look.All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(103, 'Brunnera linen kaftan ', 'brunnera-linen-kaftan', 1, 12, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369917/aranya-product-v2/W0190088NK06220520/111_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369917/aranya-product-v2/W0190088NK06220520/111_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369786/aranya-product-v2/W0190088NK06220520/111_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369507/aranya-product-v2/W0190088NK06220520/111_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0190088NK06220520', NULL, '0', 0.0000, 'Mixing the two different combinations of color and wax print in this pure silk makes this kimono a variant look.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(104, 'Kantha Voil Kurti ', 'kantha-voil-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368914/aranya-product-v2/W0210145MAE2183118/112_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368914/aranya-product-v2/W0210145MAE2183118/112_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368808/aranya-product-v2/W0210145MAE2183118/112_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368747/aranya-product-v2/W0210145MAE2183118/112_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368717/aranya-product-v2/W0210145MAE2183118/112_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0210145MAE2183118', NULL, '0', 0.0000, 'The captivating shades of blue and red in this ravishing Kurti are produced with colors given off by organically grown cmadder and indigo. The shibori has been used on the body on cotton material to add details. The nakshi kantha work added a traditional lookAll Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(105, 'Lantana Kurti ', 'lantana-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389430/aranya-product-v2/W0210194FF04191819/_ASP8019-copy.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389430/aranya-product-v2/W0210194FF04191819/_ASP8019-copy.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389425/aranya-product-v2/W0210194FF04191819/_ASP8026-copy.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389417/aranya-product-v2/W0210194FF04191819/_ASP8023-copy.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0210194FF04191819', NULL, '0', 0.0000, 'A balance of Madder was used to bring out the Red colour. This Enri silk Kurti was designed with wax print technique to perish its natural outlook.\nUsing natural materials, Full hand-made Aranya\'s products are aligned within fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(106, 'Silk shirred blouse', 'silk-shirred-blouse', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389443/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-175.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389443/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-175.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389450/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-177.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389438/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-176.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389437/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-178.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0300133SF04221822', NULL, '0', 0.0000, 'This maroon shirred blouse is an universal fit and can be worn with any saree of your choice. Silk fabric used also provides a smooth touch to the skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(107, 'Jovial Knit Cotton T', 'jovial-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368541/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368541/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368590/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368550/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920012NH12194619', NULL, '0', 0.0000, 'A mixture of Madder &amp; Catechu were used to bring out Red &amp; Brown colours on this Cotton T-shirt . Block print technique amplified it bold design.\nAll Aranya products are hand-made, using natural materials, align within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(108, 'Aether cotton t', 'aether-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368930/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368930/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369799/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920013NH12194519', NULL, '0', 0.0000, 'A mixture of Madder &amp; Catechu were used to bring out Red &amp; Brown colours on this Cotton T-shirt . Block print technique amplified it bold design.\nAll Aranya products are hand-made, using natural materials, align within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(109, 'Delphinium Knit Cotton T', 'delphinium-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389460/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389460/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389458/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389462/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920014NH12194619', NULL, '0', 0.0000, 'Aranya\'s \"Natural Tee\" collection reveals the Delphinium Knit Cotton T-Shirt, a pure olive cotton T-Shirt created by using a wax technique.</span>\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(110, 'Celestial knit cotton T', 'celestial-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389496/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389496/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389493/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389496/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920015NH12194619', NULL, '0', 0.0000, 'Brown shades on this knit cotton T-shirt has derived from Catechu . The intricate details has been outlined with plain dye technique.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(111, 'Redmix Knit Cotton Leggings ', 'redmix-knit-cotton-leggings', 6, 35, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389511/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389511/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389507/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389507/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W1080001NH10194019', NULL, '0', 0.0000, 'Indigo has been used as dyeing materials which is derive to blue color on this knit cotton Leggings. Plain dye was used to get the elegant design.\n\\n\n\\nUsing natural materials, full-hand made Aranya\'s products are align with in fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `fragile`, `fragile_charge`, `description`, `status`, `is_discount`, `has_variation`, `created_at`, `deleted_at`, `updated_at`) VALUES
(112, 'Irises creap silk orna', 'irises-creap-silk-orna', 6, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389864/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369559/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WO002NK31R22INH3122', NULL, '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The creap silk fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(113, 'Spirea Cotton kota saree', 'spirea-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372948/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372948/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372949/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372951/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372952/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS018SF31R22INH3222', NULL, '0', 0.0000, 'This cotton kota saree which is dyed in olive and blue. This saree can use as regular wear and make one more alluring. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(114, 'Alyssum endi cotton saree', 'alyssum-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372958/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372958/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372954/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372951/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372949/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS021BA33R22INH3322', NULL, '0', 0.0000, 'A blend of modern workmanship, traditional block print and natural color madder as red and indigo as blue used in this eri cotton saree draw out the solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(115, 'Brunnera Cotton Than Saree', 'brunnera-cotton-than-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372953/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372953/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372955/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372957/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372958/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS022BA33R22INH3322', NULL, '0', 0.0000, 'By combining the natural dyes found in gray and blue paar for use in cotton saree. To give this composition a festive appearance, wax decoration print has been used. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(116, 'Sweet Pea Endi Half Silk Saree', 'sweet-pea-endi-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372972/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372972/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372959/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372958/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372957/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_2.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS023SF33R22INH3322', NULL, '0', 0.0000, 'Blue and Gray have been used as dyeing materials on this eri half silk saree. Wax print and Kantha stitch was used to get the elegant design. All Aranya products are handmade, using natural fibers and materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(117, 'Yarrow Cotton Saree', 'yarrow-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372962/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372962/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372967/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372963/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369767/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS024BA33R22INH3322', NULL, '0', 0.0000, 'With an inspiration of a olive shade, this wax ornamentation print has been applied to give this composition a festive look.All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(118, 'Starling Endi Cotton Saree', 'starling-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372970/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372970/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372969/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372968/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372965/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_2.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS025MC33R22INH3422', NULL, '0', 0.0000, 'The Flower tones of this eri cotton saree do the best work in making you truly feel beautiful, making it the perfect wear for all of your favorite occasions.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(119, 'Dendrobium Eri Cotton Saree', 'dendrobium-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372972/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372972/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372975/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372977/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372977/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS026SF33R22INH3422', NULL, '0', 0.0000, 'The pink color affects the mind and body by causing pleasant feelings. This eri cotton saree is decorated with wax. All Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(120, 'Clematis Cotton kota Saree', 'clematis-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372978/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372978/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372981/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372981/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372988/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS027SF33R22INH3422', NULL, '0', 0.0000, 'This exclusive wax printed natural dyed saree is contains two shades of Navy colour. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(121, 'Blosoom Cotton Kota saree', 'blosoom-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372988/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372988/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372983/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372988/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372991/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS028MC33R22INH3422', NULL, '0', 0.0000, 'This exclusive wax printed cotton kota saree dyed in brown and olive. Making it the perfect wear for all of your favorite occasions. All Aranya products are handmade, using natural materials, within a fair trade framework', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(122, 'Dazzling Cotton Kota Saree', 'dazzling-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678390112/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678390112/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678390108/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678390106/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678390105/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS030BA34R22INH3522', NULL, '0', 0.0000, 'Both hues show out brilliantly in this saree because to the contrasting tones. It is a comfortable fabric with dual designs and cotton kota fabric. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(123, 'Crimson Cotton Than Saree', 'crimson-cotton-than-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372996/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372996/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372997/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373001/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678373003/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS033SF35R22INH3622', NULL, '0', 0.0000, 'Beautiful imprints were created on cotton using the wax. Natural elements are used to create the stunning teal, blue and red colors. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(124, 'Anemone Cotton Saree', 'anemone-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372988/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372988/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372993/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372995/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678372999/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS32TA35R22INH3622', NULL, '0', 0.0000, 'By unifying the natural dye of Blue at paar and anchol, and teal body in the cotton than saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework. ', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(125, 'Tribal Flare Choker', 'tribal-flare-choker', 6, 32, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368334/aranya-product-v2/J0400004MA1116/web.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678368334/aranya-product-v2/J0400004MA1116/web.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'J0400004MA1116', NULL, '0', 0.0000, 'Sterling silver coins have been attached to this choker that has been woven delicately with Terracotta, Rudrakha and wooden beads. The colours are relfections of natural dyes of Indigo and Madder.', 1, 0, 0, '2023-08-31 04:30:36', NULL, '2023-08-31 04:30:36'),
(126, 'Test111', 'test111', 6, 36, 2, '123', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693720852/32_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693720852/32_1.png', NULL, NULL, NULL, NULL, '70', '50', '45', '60', NULL, 2, 'DE3456', 'Black,Off-White', 'Yes', 25.0000, '<p>Designer shawl</p>', 1, 0, 1, '2023-09-03 07:04:08', NULL, '2023-09-03 07:04:08'),
(127, 'Irises creap silk orna', 'irises-creap-silk-orna', 6, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389864/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369559/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2NK31R22INH3122', NULL, '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The creap silk fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-09-03 07:20:05', '2023-09-04 05:13:39', '2023-09-04 05:13:39'),
(128, 'Irises creap silk orna', 'irises-creap-silk-orna', 6, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389864/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369559/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2NK31R22INH3122', NULL, '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The creap silk fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-09-04 05:17:13', NULL, '2023-09-04 05:17:13'),
(129, 'Test112', 'test112', 4, 24, 2, '123', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693806757/13_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693806757/13_1.png', NULL, NULL, NULL, NULL, '60', '50', '20', '70', NULL, 0.2, 'S12345', '', 'No', 0.0000, '<p>beayty</p>', 1, 0, 1, '2023-09-04 05:54:34', NULL, '2023-09-04 05:54:34'),
(130, 'Test113', 'test113', 37, 30, 1, '345', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693810188/43.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693810188/43.png', NULL, NULL, NULL, NULL, '98', '78', '56', 'cm', NULL, 0.8, 'DEF567898', '', 'Yes', 25.0000, '<p>silver jewel</p>', 1, 0, 1, '2023-09-04 06:51:30', NULL, '2023-09-04 06:51:30'),
(131, 'Test114', 'test114', 5, 0, 2, '567890', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693811122/12_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693811122/12_1.png', NULL, NULL, NULL, NULL, '70', '90', '50', 'inch', NULL, 0.8, 'MNP890', 'Black,Off-White', 'Yes', 25.0000, '<p>Beauty product</p>', 1, 0, 0, '2023-09-04 07:14:28', NULL, '2023-09-04 07:14:28'),
(132, 'Test115', 'test115', 5, 0, 2, '123', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693811916/11_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693811916/11_1.png', NULL, NULL, NULL, NULL, '70', '56', '34', 'inch', NULL, 0.9, 'E234567', 'Navy,Off-White,White', 'Yes', 25.0000, '<p>beauty</p>', 1, 0, 0, '2023-09-04 07:20:03', NULL, '2023-09-04 07:20:03'),
(133, 'Test116', 'test116', 3, 40, 2, '234', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693822226/16_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1693822226/16_1.png', NULL, NULL, NULL, NULL, '10', '9', '7', 'kg', NULL, -2, 'GTY234', 'Black', 'Yes', 25.0000, '<p>Baby product</p>', 1, 0, 0, '2023-09-04 10:11:06', NULL, '2023-09-04 10:11:06'),
(134, 'Botev Eri Silk Panjabi', 'botev-eri-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_1.png', NULL, NULL, '20', '2', '30', 'cm', NULL, 10, 'M0010307MA08181019', 'White,Manjit', 'No', 0.0000, '<p><span style=\"color: rgb(0, 0, 0);\">Block printed design has been outlined on this Eri silk Panjabi, while naturally dyeing with Annato which flourished it\'s Red colours and kashmi for the black.</span></p><p><br></p><p><span style=\"color: rgb(0, 0, 0);\">All Aranya products are handmade, using natural materials, within a fair trade framework.</span></p>', 1, 0, 1, '2023-09-07 03:30:09', NULL, '2023-09-07 03:30:09'),
(135, 'Frissel Nakshi Silk Saree', 'frissel-nakshi-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_4.png', NULL, NULL, NULL, '20', '2', '30', 'cm', NULL, 4, 'W0041649RG03201120', '', 'No', 0.0000, '<p><span style=\"color: rgb(0, 0, 0);\">The joy of dressing is an art. This saree expose the art of rural reflection. Each stitches are carefully done by our artisan. All Aaranya products are handmade, using natural materials, within a fair trade framework.</span></p>', 1, 0, 1, '2023-09-07 03:34:11', NULL, '2023-09-07 03:34:11'),
(136, 'Riley Tyler test', 'riley-tyler-test', 1, 8, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_3.png', NULL, NULL, NULL, NULL, '65', '34', '544', 'inch', NULL, 344, 'ghgfh4576575', 'Black,White', 'No', 0.0000, '<p>sfhfgcdfj</p>', 1, 0, 0, '2023-09-21 15:34:31', NULL, '2023-09-21 15:34:31'),
(137, 'test123', 'test123', 66, 67, 2, '123', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_4.png', NULL, NULL, NULL, NULL, '89', '67', '35', 'inch', NULL, 700, 'DS112', 'Black', 'No', 0.0000, '<p>testing purpose</p>', 1, 0, 0, '2023-09-24 04:32:08', NULL, '2023-09-24 04:32:08'),
(138, 'Test223', 'test223', 66, 67, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_1.png', NULL, NULL, '56', '45', '50', 'cm', NULL, 500, 'SD123456', 'Black,Navy', 'No', 0.0000, '<p>Testing product</p>', 1, 0, 0, '2023-09-24 07:36:22', NULL, '2023-09-24 07:36:22'),
(139, 'Test225', 'test225', 66, 67, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_2.png', NULL, NULL, NULL, NULL, '10', '10', '10', 'inch', NULL, 2000, 'SD567', '', 'Yes', 50.0000, '<p>Dress</p>', 1, 0, 1, '2023-09-24 07:40:58', '2023-09-24 08:11:54', '2023-09-24 08:11:54'),
(140, 'Test226', 'test226', 66, 67, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_1.png', NULL, NULL, NULL, NULL, '15', '15', '15', 'inch', NULL, 200, 'SD789', '', 'Yes', 50.0000, '<p>tst</p>', 1, 0, 1, '2023-09-24 07:46:52', NULL, '2023-09-24 07:46:52'),
(141, 'Test890', 'test890', 66, 67, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_2.png', NULL, NULL, NULL, NULL, '10', '15', '10', 'inch', NULL, 600, 'DS230', '', 'No', 0.0000, '<p>Beautiful dress</p>', 1, 0, 1, '2023-09-24 08:10:48', NULL, '2023-09-24 08:10:48'),
(142, 'Test300', 'test300', 66, 67, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_3.png', NULL, NULL, NULL, NULL, '41', '41', '41', 'cm', NULL, 600, 'D345', '', 'No', 0.0000, '<p>Sale</p>', 1, 0, 1, '2023-09-24 10:24:48', NULL, '2023-09-24 10:24:48'),
(143, 'Irises creap silk orna test', 'irises-creap-silk-orna-test', 6, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389870/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678389864/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678369559/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2NK31R22INW3122', NULL, '0', 0.0000, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The creap silk fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, 0, '2023-10-15 01:23:41', NULL, '2023-10-15 01:23:41'),
(144, 'testing product 1', 'testing-product-1', 1, 7, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/3_3_11zon.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/3_3_11zon.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/2_2_11zon.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/4_4_11zon.jpg', '', '', '24', '44', '20', 'inch', NULL, 250, 'TESTING01', NULL, '0', 0.0000, 'description test 1', 1, 0, 0, '2023-10-15 01:46:39', NULL, '2023-10-15 01:46:39'),
(145, 'testing product 2', 'testing-product-2', 2, 13, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/54.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/54.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/56.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/55.jpg', '', '', '10', '10', '10', 'cm', NULL, 300, 'TESTING02', NULL, '0', 0.0000, 'description test 2', 1, 0, 0, '2023-10-15 01:46:39', NULL, '2023-10-15 01:46:39');

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

--
-- Dumping data for table `product_artists`
--

INSERT INTO `product_artists` (`id`, `product_id`, `artist_id`, `created_at`, `updated_at`) VALUES
(1, 126, 1, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(2, 129, 1, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(3, 130, 1, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(4, 132, 1, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(5, 133, 1, '2023-09-04 10:11:06', '2023-09-04 10:11:06'),
(6, 134, 1, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(7, 137, 2, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(8, 138, 2, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(10, 140, 1, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(11, 141, 1, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(12, 142, 1, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(13, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(14, 145, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 1, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 6, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 7, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 8, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 9, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 10, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 11, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 12, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 13, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 14, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 15, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 16, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 17, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(18, 18, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(19, 19, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(20, 20, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(21, 21, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 22, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 23, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 24, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 25, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 26, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 27, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 28, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 29, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 30, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 31, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 32, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 33, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 34, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 35, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 36, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 37, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 38, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 39, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(40, 40, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(41, 41, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(42, 42, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(43, 43, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(44, 44, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(45, 45, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(46, 46, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(47, 47, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(48, 48, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(49, 49, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(50, 50, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(51, 51, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(52, 52, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(53, 53, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 54, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 55, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(56, 56, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(57, 57, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(58, 58, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(59, 59, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(60, 60, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(61, 61, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(62, 62, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(63, 63, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(64, 64, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(65, 65, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(66, 66, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(67, 67, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(68, 68, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(69, 69, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(70, 70, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(71, 71, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(72, 72, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(73, 73, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(74, 74, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(75, 75, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(76, 76, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(77, 77, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(78, 78, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(79, 79, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(80, 80, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(81, 81, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(82, 82, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(83, 83, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(84, 84, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(85, 85, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(86, 86, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(87, 87, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(88, 88, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(89, 89, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(90, 90, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(91, 91, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(92, 92, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(93, 93, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(94, 94, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(95, 95, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(96, 96, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(97, 97, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(98, 98, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(99, 99, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(100, 100, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(101, 101, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(102, 102, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(103, 103, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(104, 104, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(105, 105, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(106, 106, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(107, 107, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(108, 108, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(109, 109, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(110, 110, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(111, 111, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(112, 112, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(113, 113, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(114, 114, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(115, 115, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(116, 116, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(117, 117, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(118, 118, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(119, 119, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(120, 120, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(121, 121, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(122, 122, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(123, 123, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(124, 124, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(125, 125, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(126, 126, 1, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(128, 128, 1, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(129, 129, 1, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(130, 130, 1, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(131, 131, 1, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(132, 132, 1, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(133, 134, 1, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(134, 135, 1, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(135, 136, 1, '2023-09-21 15:34:31', '2023-09-21 15:34:31'),
(136, 137, 2, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(137, 138, 2, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(139, 140, 1, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(140, 141, 1, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(141, 142, 2, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(142, 143, 1, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(143, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(144, 145, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 137, 5, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(2, 138, 5, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(4, 140, 5, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(5, 141, 5, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(6, 142, 5, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(7, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(8, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 1, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 20, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 13, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 5, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 2, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 5, 20, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 6, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 7, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 7, 12, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 8, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 9, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 10, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 11, 14, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 12, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 13, 5, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 13, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 14, 2, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(18, 15, 5, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(19, 16, 5, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(20, 16, 14, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(21, 17, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 17, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 18, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 19, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 20, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 20, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 21, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 21, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 22, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 23, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 24, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 25, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 26, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 27, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 28, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 29, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 30, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 31, 9, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 32, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(40, 33, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(41, 34, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(42, 36, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(43, 36, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(44, 37, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(45, 38, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(46, 39, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(47, 39, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(48, 40, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(49, 41, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(50, 42, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(51, 42, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(52, 43, 9, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(53, 43, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 44, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 44, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(56, 45, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(57, 46, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(58, 46, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(59, 47, 13, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(60, 48, 9, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(61, 48, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(62, 49, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(63, 50, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(64, 51, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(65, 51, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(66, 52, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(67, 53, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(68, 54, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(69, 55, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(70, 55, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(71, 56, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(72, 56, 12, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(73, 57, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(74, 57, 12, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(75, 58, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(76, 59, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(77, 60, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(78, 60, 16, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(79, 61, 12, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(80, 61, 16, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(81, 62, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(82, 63, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(83, 64, 13, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(84, 65, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(85, 66, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(86, 67, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(87, 68, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(88, 69, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(89, 69, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(90, 70, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(91, 71, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(92, 71, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(93, 72, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(94, 72, 13, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(95, 73, 9, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(96, 73, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(97, 74, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(98, 74, 12, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(99, 75, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(100, 75, 5, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(101, 77, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(102, 77, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(103, 78, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(104, 79, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(105, 80, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(106, 80, 15, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(107, 80, 16, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(108, 81, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(109, 81, 15, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(110, 81, 16, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(111, 82, 12, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(112, 82, 15, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(113, 82, 17, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(114, 83, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(115, 83, 13, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(116, 84, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(117, 84, 13, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(118, 85, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(119, 85, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(120, 86, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(121, 86, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(122, 87, 11, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(123, 88, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(124, 89, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(125, 90, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(126, 91, 13, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(127, 92, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(128, 93, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(129, 94, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(130, 95, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(131, 96, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(132, 96, 12, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(133, 97, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(134, 98, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(135, 99, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(136, 100, 11, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(137, 101, 13, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(138, 102, 14, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(139, 103, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(140, 104, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(141, 104, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(142, 106, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(143, 107, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(144, 108, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(145, 108, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(146, 109, 13, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(147, 110, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(148, 111, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(149, 111, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(150, 112, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(151, 113, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(152, 113, 13, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(153, 114, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(154, 114, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(155, 115, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(156, 115, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(157, 116, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(158, 116, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(159, 117, 13, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(160, 118, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(161, 119, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(162, 119, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(163, 120, 17, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(164, 121, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(165, 121, 13, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(166, 122, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(167, 122, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(168, 123, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(169, 123, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(170, 123, 14, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(171, 124, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(172, 124, 14, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(173, 126, 20, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(174, 126, 18, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(176, 128, 2, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(177, 129, 19, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(178, 129, 20, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(179, 135, 20, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(180, 135, 16, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(184, 140, 0, '2023-09-24 07:50:09', '2023-09-24 07:50:09'),
(185, 141, 19, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(186, 141, 20, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(187, 141, 17, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(188, 141, 16, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(189, 143, 2, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(190, 144, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(191, 145, 3, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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

--
-- Dumping data for table `product_consignments`
--

INSERT INTO `product_consignments` (`id`, `product_id`, `consignment_id`, `created_at`, `updated_at`) VALUES
(1, 137, 1, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(2, 138, 1, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(4, 140, 1, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(5, 141, 1, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(6, 142, 1, '2023-09-24 10:24:48', '2023-09-24 10:24:48');

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
(1, 1, 5, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 6, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 7, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 8, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 9, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 10, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 11, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 12, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 13, 12, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 14, 12, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 15, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 16, 5, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 17, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(18, 18, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(19, 19, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(20, 20, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(21, 21, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 22, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 23, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 24, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 25, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 26, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 27, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 28, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 29, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 30, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 31, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 32, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 33, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 34, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 36, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 37, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 38, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 39, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 40, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(40, 41, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(41, 42, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(42, 43, 5, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(43, 44, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(44, 45, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(45, 46, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(46, 47, 5, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(47, 48, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(48, 49, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(49, 50, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(50, 51, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(51, 52, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(52, 53, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(53, 54, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 55, 11, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 56, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(56, 57, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(57, 58, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(58, 59, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(59, 60, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(60, 61, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(61, 62, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(62, 63, 9, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(63, 64, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(64, 65, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(65, 66, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(66, 67, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(67, 68, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(68, 69, 9, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(69, 70, 9, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(70, 71, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(71, 72, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(72, 73, 6, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(73, 74, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(74, 75, 12, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(75, 76, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(76, 77, 12, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(77, 78, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(78, 79, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(79, 80, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(80, 81, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(81, 82, 12, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(82, 83, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(83, 84, 12, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(84, 85, 11, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(85, 86, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(86, 87, 6, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(87, 88, 11, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(88, 89, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(89, 90, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(90, 91, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(91, 92, 13, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(92, 93, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(93, 94, 11, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(94, 95, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(95, 96, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(96, 97, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(97, 98, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(98, 99, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(99, 100, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(100, 101, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(101, 102, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(102, 103, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(103, 104, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(104, 106, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(105, 107, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(106, 108, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(107, 109, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(108, 110, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(109, 111, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(110, 112, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(111, 113, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(112, 114, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(113, 115, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(114, 116, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(115, 117, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(116, 118, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(117, 119, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(118, 120, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(119, 121, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(120, 122, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(121, 123, 12, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(122, 124, 15, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(123, 125, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(124, 126, 16, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(126, 128, 10, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(127, 129, 16, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(128, 130, 16, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(129, 131, 14, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(130, 132, 14, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(131, 133, 15, '2023-09-04 10:11:06', '2023-09-04 10:11:06'),
(132, 134, 14, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(133, 135, 4, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(134, 137, 17, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(135, 138, 17, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(137, 140, 16, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(138, 141, 16, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(139, 142, 17, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(140, 143, 10, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(141, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(142, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 13, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 2, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 6, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 7, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 8, 13, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 9, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 10, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 11, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 12, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 13, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 14, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 15, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 16, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 17, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(18, 18, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(19, 19, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(20, 20, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(21, 21, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 23, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 24, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 25, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 26, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 27, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 28, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 29, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 30, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 31, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 32, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 33, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 33, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 34, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 36, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 37, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 38, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 39, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 40, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(40, 41, 13, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(41, 42, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(42, 43, 3, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(43, 44, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(44, 45, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(45, 46, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(46, 47, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(47, 48, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(48, 49, 16, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(49, 50, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(50, 51, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(51, 52, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(52, 53, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(53, 54, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 55, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 56, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(56, 57, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(57, 58, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(58, 59, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(59, 60, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(60, 61, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(61, 62, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(62, 62, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(63, 63, 13, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(64, 64, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(65, 65, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(66, 66, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(67, 67, 12, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(68, 68, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(69, 69, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(70, 70, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(71, 71, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(72, 72, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(73, 73, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(74, 74, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(75, 75, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(76, 76, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(77, 77, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(78, 78, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(79, 79, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(80, 80, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(81, 80, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(82, 81, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(83, 82, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(84, 83, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(85, 84, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(86, 85, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(87, 86, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(88, 87, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(89, 88, 13, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(90, 89, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(91, 90, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(92, 91, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(93, 92, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(94, 93, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(95, 94, 13, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(96, 95, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(97, 96, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(98, 97, 16, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(99, 98, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(100, 99, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(101, 100, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(102, 101, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(103, 102, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(104, 103, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(105, 104, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(106, 106, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(107, 107, 16, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(108, 108, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(109, 109, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(110, 110, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(111, 111, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(112, 112, 16, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(113, 113, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(114, 114, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(115, 115, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(116, 116, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(117, 117, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(118, 118, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(119, 119, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(120, 120, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(121, 121, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(122, 122, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(123, 123, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(124, 124, 18, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(125, 125, 15, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(126, 126, 19, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(128, 128, 16, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(129, 129, 18, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(130, 130, 18, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(131, 134, 17, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(132, 135, 9, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(133, 135, 11, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(134, 137, 20, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(135, 138, 20, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(137, 140, 19, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(138, 141, 18, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(139, 142, 19, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(140, 143, 16, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(141, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(142, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 10, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 6, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 7, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 8, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 9, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 10, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 11, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 12, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 13, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 14, 23, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 15, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 16, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 17, 23, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(18, 18, 21, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(19, 19, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(20, 20, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(21, 21, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 22, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 23, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 24, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 25, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 26, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 27, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 28, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 29, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 30, 26, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 31, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 32, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 33, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 34, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 36, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 37, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 38, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 39, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 40, 4, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(40, 41, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(41, 42, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(42, 43, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(43, 44, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(44, 45, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(45, 46, 4, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(46, 47, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(47, 48, 18, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(48, 49, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(49, 50, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(50, 51, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(51, 52, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(52, 53, 14, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(53, 54, 4, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 55, 25, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 56, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(56, 57, 28, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(57, 58, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(58, 59, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(59, 60, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(60, 61, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(61, 62, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(62, 63, 18, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(63, 64, 12, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(64, 65, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(65, 66, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(66, 67, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(67, 68, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(68, 69, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(69, 70, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(70, 71, 17, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(71, 72, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(72, 73, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(73, 74, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(74, 75, 14, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(75, 76, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(76, 77, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(77, 78, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(78, 79, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(79, 80, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(80, 81, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(81, 82, 6, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(82, 83, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(83, 84, 6, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(84, 85, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(85, 86, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(86, 87, 18, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(87, 88, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(88, 89, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(89, 90, 23, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(90, 91, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(91, 92, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(92, 93, 14, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(93, 94, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(94, 95, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(95, 96, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(96, 97, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(97, 98, 21, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(98, 99, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(99, 100, 20, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(100, 101, 20, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(101, 102, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(102, 103, 23, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(103, 104, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(104, 106, 25, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(105, 107, 22, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(106, 108, 22, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(107, 109, 22, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(108, 110, 22, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(109, 111, 22, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(110, 112, 11, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(111, 113, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(112, 114, 14, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(113, 115, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(114, 116, 16, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(115, 117, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(116, 118, 14, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(117, 119, 20, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(118, 120, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(119, 121, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(120, 122, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(121, 123, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(122, 124, 9, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(123, 125, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(124, 126, 32, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(126, 128, 11, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(127, 129, 32, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(128, 130, 32, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(129, 131, 32, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(130, 132, 31, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(131, 133, 31, '2023-09-04 10:11:06', '2023-09-04 10:11:06'),
(132, 134, 21, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(133, 135, 32, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(134, 135, 29, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(135, 136, 32, '2023-09-21 15:34:31', '2023-09-21 15:34:31'),
(136, 136, 31, '2023-09-21 15:34:31', '2023-09-21 15:34:31'),
(137, 137, 33, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(138, 138, 31, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(140, 140, 31, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(141, 141, 31, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(142, 141, 30, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(143, 142, 31, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(144, 143, 11, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(145, 144, 4, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(146, 145, 5, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 41, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(2, 43, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(3, 46, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(4, 129, 1, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(5, 130, 1, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(6, 131, 1, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(7, 134, 1, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(8, 137, 2, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(9, 138, 2, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(11, 140, 1, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(12, 141, 2, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(13, 142, 1, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(14, 144, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(15, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 6, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 3, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 4, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 5, 3, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 5, 12, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 6, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 7, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 7, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 8, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 9, 2, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 10, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 11, 3, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 11, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 12, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 13, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(18, 13, 2, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(19, 14, 3, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(20, 15, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(21, 16, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(22, 16, 3, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(23, 16, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(24, 17, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 17, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 18, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 19, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 20, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 20, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 21, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 21, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 23, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 24, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 25, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 26, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 26, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 27, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 28, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 29, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(40, 30, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(41, 31, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(42, 32, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(43, 32, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(44, 33, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(45, 34, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(46, 36, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(47, 36, 4, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(48, 36, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(49, 37, 5, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(50, 38, 2, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(51, 39, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(52, 39, 10, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(53, 40, 3, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 41, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 42, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(56, 42, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(57, 43, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(58, 43, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(59, 44, 3, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(60, 44, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(61, 45, 6, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(62, 46, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(63, 46, 4, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(64, 47, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(65, 47, 10, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(66, 48, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(67, 48, 13, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(68, 49, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(69, 50, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(70, 51, 3, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(71, 51, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(72, 52, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(73, 53, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(74, 54, 2, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(75, 55, 3, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(76, 55, 7, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(77, 56, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(78, 56, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(79, 57, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(80, 57, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(81, 58, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(82, 58, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(83, 59, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(84, 60, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(85, 60, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(86, 61, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(87, 61, 11, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(88, 62, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(89, 63, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(90, 64, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(91, 64, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(92, 66, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(93, 67, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(94, 68, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(95, 69, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(96, 69, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(97, 70, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(98, 71, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(99, 71, 6, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(100, 72, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(101, 72, 10, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(102, 73, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(103, 73, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(104, 73, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(105, 74, 6, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(106, 74, 7, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(107, 75, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(108, 75, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(109, 76, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(110, 76, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(111, 76, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(112, 77, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(113, 77, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(114, 78, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(115, 79, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(116, 80, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(117, 80, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(118, 80, 11, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(119, 81, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(120, 81, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(121, 81, 11, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(122, 82, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(123, 82, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(124, 82, 9, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(125, 83, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(126, 83, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(127, 83, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(128, 84, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(129, 84, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(130, 84, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(131, 85, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(132, 85, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(133, 86, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(134, 86, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(135, 87, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(136, 88, 6, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(137, 89, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(138, 90, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(139, 91, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(140, 91, 10, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(141, 92, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(142, 93, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(143, 93, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(144, 94, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(145, 95, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(146, 96, 6, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(147, 96, 7, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(148, 97, 6, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(149, 98, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(150, 99, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(151, 100, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(152, 101, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(153, 101, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(154, 102, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(155, 102, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(156, 103, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(157, 104, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(158, 104, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(159, 106, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(160, 107, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(161, 108, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(162, 108, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(163, 109, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(164, 109, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(165, 110, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(166, 111, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(167, 111, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(168, 112, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(169, 113, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(170, 113, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(171, 113, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(172, 114, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(173, 114, 6, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(174, 115, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(175, 115, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(176, 116, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(177, 116, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(178, 117, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(179, 117, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(180, 118, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(181, 119, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(182, 119, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(183, 120, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(184, 120, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(185, 121, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(186, 121, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(187, 121, 10, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(188, 122, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(189, 122, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(190, 123, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(191, 123, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(192, 123, 11, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(193, 124, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(194, 124, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(196, 128, 3, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(197, 132, 12, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(198, 132, 10, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(199, 133, 11, '2023-09-04 10:11:06', '2023-09-04 10:11:06'),
(200, 134, 11, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(201, 134, 5, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(202, 134, 3, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(203, 135, 6, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(204, 135, 4, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(205, 135, 2, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(206, 137, 14, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(207, 138, 14, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(209, 140, 12, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(210, 141, 12, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(211, 141, 11, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(212, 142, 13, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(213, 143, 3, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(214, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(215, 145, 3, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 13, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(2, 14, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 85, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(4, 86, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(5, 87, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(6, 126, 1, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(7, 129, 1, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(8, 130, 1, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(9, 131, 1, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(10, 132, 1, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(11, 134, 1, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(12, 135, 2, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(13, 137, 3, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(14, 138, 3, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(16, 140, 1, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(17, 141, 1, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(18, 142, 2, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(19, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(20, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 8, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 13, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 6, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 7, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 8, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 9, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 10, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 11, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 12, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 13, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 14, 4, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 18, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(16, 19, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(17, 20, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(18, 21, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(19, 22, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(20, 23, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(21, 24, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 25, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 26, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 27, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 28, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 29, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 30, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 31, 3, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 36, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 38, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 39, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 40, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(33, 41, 12, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(34, 42, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(35, 44, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(36, 45, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(37, 46, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(38, 47, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(39, 48, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(40, 49, 8, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(41, 50, 13, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(42, 51, 13, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(43, 52, 13, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(44, 53, 4, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(45, 62, 9, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(46, 63, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(47, 64, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(48, 65, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(49, 66, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(50, 67, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(51, 68, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(52, 69, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(53, 70, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(54, 72, 8, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(55, 85, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(56, 86, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(57, 87, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(58, 88, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(59, 89, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(60, 91, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(61, 92, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(62, 94, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(63, 95, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(64, 96, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(65, 97, 8, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(66, 98, 7, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(67, 107, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(68, 108, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(69, 109, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(70, 110, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(71, 111, 8, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(72, 126, 13, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(73, 129, 13, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(74, 130, 11, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(75, 131, 10, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(76, 132, 13, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(77, 133, 11, '2023-09-04 10:11:06', '2023-09-04 10:11:06'),
(78, 134, 1, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(79, 135, 3, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(80, 137, 14, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(81, 138, 14, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(83, 140, 12, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(84, 141, 12, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(85, 142, 13, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(86, 144, 9, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(87, 145, 10, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 9, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 1, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 1, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 1, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 1, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 1, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 1, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 2, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 2, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 2, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 2, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 2, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 2, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 2, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 3, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 3, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 3, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(18, 3, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(19, 3, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(20, 3, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(21, 3, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(22, 4, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(23, 4, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(24, 4, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(25, 4, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(26, 4, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(27, 4, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(28, 4, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(29, 5, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(30, 5, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(31, 5, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(32, 5, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(33, 5, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(34, 5, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(35, 5, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(36, 6, 6, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(37, 6, 13, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(38, 6, 14, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(39, 6, 15, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(40, 7, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(41, 7, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(42, 7, 12, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(43, 8, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(44, 8, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(45, 9, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(46, 9, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(47, 9, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(48, 9, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(49, 9, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(50, 9, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(51, 9, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(52, 10, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(53, 10, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(54, 10, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(55, 10, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(56, 10, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(57, 10, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(58, 10, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(59, 11, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(60, 11, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(61, 11, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(62, 11, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(63, 11, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(64, 11, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(65, 11, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(66, 12, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(67, 12, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(68, 12, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(69, 12, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(70, 12, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(71, 12, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(72, 12, 10, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(73, 13, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(74, 13, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(75, 13, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(76, 13, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(77, 13, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(78, 13, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(79, 14, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(80, 14, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(81, 14, 17, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(82, 14, 18, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(83, 14, 7, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(84, 14, 9, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(85, 15, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(86, 15, 11, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(87, 15, 12, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(88, 15, 16, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(89, 16, 8, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(90, 16, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(91, 16, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(92, 16, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(93, 16, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(94, 16, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(95, 16, 9, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(96, 17, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(97, 17, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(98, 17, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(99, 17, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(100, 17, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(101, 17, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(102, 17, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(103, 17, 9, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(104, 18, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(105, 18, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(106, 18, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(107, 18, 15, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(108, 19, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(109, 19, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(110, 19, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(111, 19, 15, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(112, 19, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(113, 19, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(114, 20, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(115, 20, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(116, 20, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(117, 20, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(118, 20, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(119, 20, 15, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(120, 20, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(121, 21, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(122, 21, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(123, 21, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(124, 21, 15, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(125, 22, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(126, 22, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(127, 22, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(128, 23, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(129, 23, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(130, 23, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(131, 23, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(132, 24, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(133, 24, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(134, 24, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(135, 24, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(136, 25, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(137, 25, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(138, 25, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(139, 25, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(140, 25, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(141, 26, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(142, 26, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(143, 26, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(144, 26, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(145, 26, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(146, 27, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(147, 27, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(148, 28, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(149, 28, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(150, 29, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(151, 29, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(152, 29, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(153, 30, 8, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(154, 30, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(155, 30, 12, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(156, 30, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(157, 30, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(158, 30, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(159, 31, 11, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(160, 31, 16, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(161, 31, 17, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(162, 31, 18, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(163, 31, 7, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(164, 31, 9, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(165, 32, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(166, 32, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(167, 32, 14, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(168, 32, 15, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(169, 33, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(170, 33, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(171, 34, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(172, 34, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(173, 35, 13, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(174, 35, 6, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(175, 36, 19, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(176, 36, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(177, 36, 21, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(178, 36, 22, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(179, 36, 23, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(180, 37, 19, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(181, 37, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(182, 37, 21, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(183, 37, 22, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(184, 37, 23, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(185, 38, 19, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(186, 38, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(187, 38, 21, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(188, 38, 22, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(189, 38, 23, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(190, 39, 19, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(191, 39, 20, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(192, 39, 21, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(193, 39, 22, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(194, 39, 23, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(195, 40, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(196, 40, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(197, 40, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(198, 40, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(199, 40, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(200, 41, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(201, 41, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(202, 41, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(203, 41, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(204, 41, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(205, 42, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(206, 42, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(207, 42, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(208, 42, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(209, 42, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(210, 43, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(211, 43, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(212, 43, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(213, 43, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(214, 43, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(215, 44, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(216, 44, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(217, 44, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(218, 44, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(219, 44, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(220, 45, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(221, 45, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(222, 45, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(223, 45, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(224, 45, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(225, 46, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(226, 46, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(227, 46, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(228, 46, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(229, 46, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(230, 47, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(231, 47, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(232, 47, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(233, 47, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(234, 47, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(235, 48, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(236, 48, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(237, 48, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(238, 48, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(239, 48, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(240, 49, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(241, 49, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(242, 49, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(243, 49, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(244, 49, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(245, 50, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(246, 50, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(247, 50, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(248, 50, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(249, 50, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(250, 51, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(251, 51, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(252, 51, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(253, 51, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(254, 51, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(255, 52, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(256, 52, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(257, 52, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(258, 52, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(259, 52, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(260, 53, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(261, 53, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(262, 53, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(263, 53, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(264, 53, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(265, 54, 19, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(266, 54, 20, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(267, 54, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(268, 54, 22, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(269, 54, 23, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(270, 55, 21, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(271, 55, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(272, 55, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(273, 55, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(274, 55, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(275, 56, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(276, 56, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(277, 56, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(278, 56, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(279, 56, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(280, 57, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(281, 57, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(282, 57, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(283, 57, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(284, 57, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(285, 58, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(286, 58, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(287, 58, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(288, 58, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(289, 58, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(290, 59, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(291, 59, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(292, 59, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(293, 59, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(294, 59, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(295, 60, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(296, 60, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(297, 60, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(298, 60, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(299, 60, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(300, 61, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(301, 61, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(302, 61, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(303, 61, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(304, 61, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(305, 62, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(306, 62, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(307, 62, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(308, 62, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(309, 62, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(310, 63, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(311, 63, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(312, 63, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(313, 63, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(314, 63, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(315, 64, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(316, 64, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(317, 64, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(318, 64, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(319, 64, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(320, 65, 19, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(321, 65, 20, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(322, 65, 21, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(323, 65, 22, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(324, 65, 23, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(325, 66, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(326, 66, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(327, 66, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(328, 66, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(329, 67, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(330, 67, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(331, 67, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(332, 67, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(333, 68, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(334, 68, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(335, 68, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(336, 68, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(337, 69, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(338, 69, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(339, 69, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(340, 69, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(341, 70, 2, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(342, 70, 3, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(343, 70, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(344, 70, 4, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(345, 85, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(346, 85, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(347, 85, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(348, 85, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(349, 85, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(350, 86, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(351, 86, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(352, 86, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(353, 86, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(354, 86, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(355, 87, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(356, 87, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(357, 87, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(358, 87, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(359, 87, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(360, 88, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(361, 88, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(362, 88, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(363, 88, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(364, 88, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(365, 89, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(366, 89, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(367, 89, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(368, 89, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(369, 89, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(370, 90, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(371, 90, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(372, 90, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(373, 90, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(374, 90, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(375, 91, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(376, 91, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(377, 91, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(378, 91, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(379, 91, 5, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(380, 94, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(381, 94, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(382, 95, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(383, 95, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(384, 95, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(385, 96, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(386, 96, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(387, 96, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(388, 96, 4, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(389, 97, 2, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(390, 97, 3, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(391, 97, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(392, 97, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(393, 98, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(394, 98, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(395, 98, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(396, 98, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(397, 99, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(398, 99, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(399, 100, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(400, 100, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(401, 101, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(402, 101, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(403, 102, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(404, 102, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(405, 103, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(406, 103, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(407, 104, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(408, 104, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(409, 104, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(410, 104, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(411, 104, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(412, 106, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(413, 106, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(414, 106, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(415, 107, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(416, 107, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(417, 107, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(418, 107, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(419, 108, 5, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(420, 108, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(421, 108, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(422, 108, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(423, 108, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(424, 109, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(425, 109, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(426, 109, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(427, 109, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(428, 110, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(429, 110, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(430, 110, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(431, 110, 4, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(432, 111, 3, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(433, 111, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(434, 111, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(435, 126, 23, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(436, 126, 22, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(437, 130, 23, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(438, 130, 21, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(439, 134, 23, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(440, 134, 22, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(441, 134, 21, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(442, 134, 20, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(443, 134, 19, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(444, 140, 23, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(445, 140, 21, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(446, 140, 19, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(447, 140, 22, '2023-09-24 07:50:09', '2023-09-24 07:50:09'),
(448, 140, 24, '2023-09-24 07:50:09', '2023-09-24 07:50:09'),
(449, 141, 23, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(450, 141, 22, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(451, 141, 21, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(452, 141, 20, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(453, 142, 19, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(454, 142, 23, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(455, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(456, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 136, 'yjgjh', NULL, 1, '2023-09-21 15:34:31', '2023-09-21 15:34:31'),
(2, 144, 'new2023', NULL, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(3, 145, 'new2024', NULL, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 13, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(2, 14, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 85, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(4, 86, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(5, 87, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(6, 129, 1, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(7, 130, 1, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(8, 137, 2, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(9, 138, 2, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(11, 140, 1, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(12, 141, 1, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(13, 142, 1, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(14, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(15, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(1, 1, 1, '2023-08-31 04:30:30', '2023-08-31 04:30:30'),
(2, 2, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(3, 3, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(4, 4, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(5, 5, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(6, 6, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(7, 7, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(8, 8, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(9, 9, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(10, 10, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(11, 11, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(12, 12, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(13, 13, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(14, 14, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(15, 15, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(16, 16, 1, '2023-08-31 04:30:31', '2023-08-31 04:30:31'),
(17, 17, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(18, 18, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(19, 19, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(20, 20, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(21, 21, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(22, 22, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(23, 23, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(24, 24, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(25, 25, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(26, 26, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(27, 27, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(28, 28, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(29, 29, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(30, 30, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(31, 31, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(32, 32, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(33, 33, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(34, 34, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(35, 35, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(36, 36, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(37, 37, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(38, 38, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(39, 39, 1, '2023-08-31 04:30:32', '2023-08-31 04:30:32'),
(40, 40, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(41, 41, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(42, 42, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(43, 43, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(44, 44, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(45, 45, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(46, 46, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(47, 47, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(48, 48, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(49, 49, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(50, 50, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(51, 51, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(52, 52, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(53, 53, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(54, 54, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(55, 55, 1, '2023-08-31 04:30:33', '2023-08-31 04:30:33'),
(56, 56, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(57, 57, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(58, 58, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(59, 59, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(60, 60, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(61, 61, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(62, 62, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(63, 63, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(64, 64, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(65, 65, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(66, 66, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(67, 67, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(68, 68, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(69, 69, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(70, 70, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(71, 71, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(72, 72, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(73, 73, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(74, 74, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(75, 75, 1, '2023-08-31 04:30:34', '2023-08-31 04:30:34'),
(76, 76, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(77, 77, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(78, 78, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(79, 79, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(80, 80, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(81, 81, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(82, 82, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(83, 83, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(84, 84, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(85, 85, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(86, 86, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(87, 87, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(88, 88, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(89, 89, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(90, 90, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(91, 91, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(92, 92, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(93, 93, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(94, 94, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(95, 95, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(96, 96, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(97, 97, 1, '2023-08-31 04:30:35', '2023-08-31 04:30:35'),
(98, 98, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(99, 99, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(100, 100, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(101, 101, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(102, 102, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(103, 103, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(104, 104, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(105, 105, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(106, 106, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(107, 107, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(108, 108, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(109, 109, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(110, 110, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(111, 111, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(112, 112, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(113, 113, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(114, 114, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(115, 115, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(116, 116, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(117, 117, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(118, 118, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(119, 119, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(120, 120, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(121, 121, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(122, 122, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(123, 123, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(124, 124, 1, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(125, 125, 2, '2023-08-31 04:30:36', '2023-08-31 04:30:36'),
(126, 126, 1, '2023-09-03 07:04:08', '2023-09-03 07:04:08'),
(128, 128, 1, '2023-09-04 05:17:13', '2023-09-04 05:17:13'),
(129, 129, 1, '2023-09-04 05:54:34', '2023-09-04 05:54:34'),
(130, 130, 1, '2023-09-04 06:51:30', '2023-09-04 06:51:30'),
(131, 131, 1, '2023-09-04 07:14:28', '2023-09-04 07:14:28'),
(132, 132, 1, '2023-09-04 07:20:03', '2023-09-04 07:20:03'),
(133, 133, 2, '2023-09-04 10:11:06', '2023-09-04 10:11:06'),
(134, 134, 1, '2023-09-07 03:30:09', '2023-09-07 03:30:09'),
(135, 135, 1, '2023-09-07 03:34:11', '2023-09-07 03:34:11'),
(136, 136, 2, '2023-09-21 15:34:31', '2023-09-21 15:34:31'),
(137, 137, 3, '2023-09-24 04:32:08', '2023-09-24 04:32:08'),
(138, 138, 3, '2023-09-24 07:36:22', '2023-09-24 07:36:22'),
(140, 140, 2, '2023-09-24 07:46:52', '2023-09-24 07:46:52'),
(141, 141, 1, '2023-09-24 08:10:48', '2023-09-24 08:10:48'),
(142, 142, 2, '2023-09-24 10:24:48', '2023-09-24 10:24:48'),
(143, 143, 1, '2023-10-15 01:23:41', '2023-10-15 01:23:41'),
(144, 144, 1, '2023-10-15 01:46:39', '2023-10-15 01:46:39'),
(145, 145, 2, '2023-10-15 01:46:39', '2023-10-15 01:46:39');

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
(3, 'test', 1, '2023-09-21 12:21:28', '2023-09-21 12:21:28');

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
(121, 3, 26, '2023-09-21 12:21:28', '2023-09-21 12:21:28'),
(122, 3, 27, '2023-09-21 12:21:28', '2023-09-21 12:21:28');

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
(14, 'C123', 'c123', NULL, 1, NULL, '2023-09-21 11:56:15', '2023-09-21 11:56:15');

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
(4, 'Sri Lanka', 'LK', '{\"amount\":182}', 1, '2023-07-20 03:47:24', '2023-07-20 03:47:24');

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
(1, NULL, NULL, 'Nashita | WebAble', 'nashita.iftekhar@webable.digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-03 07:46:47', '2023-09-03 07:46:47'),
(2, NULL, NULL, 'Customer', 'customer@mail.com', NULL, '$2y$10$aA1vgortgCHYMJqVsdl3teImua3EwsVgG/q6m7OReN.D2Sm2eGqRK', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-03 08:33:12', '2023-09-03 08:33:12'),
(3, NULL, NULL, 'user', 'user@mail.com', NULL, '$2y$10$9E55PgWJFbECKQFzQa1owuwkNibC.qtAYTgNdb1WhQpBcvadnmIlG', '015487965', NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-03 08:34:49', '2023-09-03 08:34:49'),
(4, NULL, NULL, 'users', 'users@mail.com', NULL, '$2y$10$nZNq1tWYfq7k3vai6uZieup2BiFVE5SNYGtMXUzoMMXbSWBTA9PYe', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-03 08:37:54', '2023-09-03 08:37:54'),
(5, NULL, NULL, 'Khandoker Shamimul Haque', 'admin@superadmin.com', NULL, '$2y$10$sXtiRRuCTrGgorTrmoZhKePxZiKOPjumVeonHpG2HU.4/I4j8Y.96', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-04 05:50:37', '2023-09-04 05:50:37'),
(6, NULL, NULL, 'Trial name', 'nashitaiftekhar@gmail.com', NULL, '$2y$10$0k8mGuPghgAp6zNG3307p.nn.Sh/doM9hGabukfNOaGYyMyGJIeG2', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-04 05:58:30', '2023-09-04 05:58:30'),
(7, NULL, NULL, 'MD.AL-AMIN MOJUMDER', 'mdalamin.aranya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-07 03:41:58', '2023-09-07 03:41:58'),
(8, NULL, NULL, 'Masum | WebAble', 'masum.mollah@webable.digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-13 09:36:00', '2023-09-13 09:36:00'),
(9, NULL, NULL, 'Khandoker Shamimul Haque', 'admin@suparadmin.com', NULL, '$2y$10$zRSy1VfYcRlpSy5rJJw48OhYq2mOBerbnJnwTncUDtt/xHH9c0Biu', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2023-09-17 11:52:28', '2023-09-17 11:52:28'),
(10, 'tester', NULL, 'Tushar', 'tanzir.tushar@webable.digital', NULL, '$2y$10$987mXpM63Y4g2aN3EfaMrOC7N11DHOv2tU2XEjI4utOTb5GX/FpDW', '12292901', 'banani', '2023-08-23', 'female', 'teacher', 1, NULL, NULL, '2023-09-20 06:56:59', '2023-09-20 07:12:23');

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
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_billing_infos`
--

INSERT INTO `user_billing_infos` (`id`, `user_id`, `order_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `apartment`, `street_address`, `created_at`, `updated_at`) VALUES
(1, 4, 12, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Omnis cupidatat ea d', 'Culpa maiores offic', '2023-09-03 09:23:15', '2023-09-03 09:23:15'),
(2, 4, 13, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Omnis cupidatat ea d', 'Culpa maiores offic', '2023-09-03 09:26:53', '2023-09-03 09:26:53'),
(3, 4, 14, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Omnis cupidatat ea d', 'Culpa maiores offic', '2023-09-03 09:29:06', '2023-09-03 09:29:06'),
(4, 4, 15, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Omnis cupidatat ea d', 'Culpa maiores offic', '2023-09-03 09:32:17', '2023-09-03 09:32:17'),
(5, 4, 16, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Omnis cupidatat ea d', 'Culpa maiores offic', '2023-09-03 09:33:23', '2023-09-03 09:33:23'),
(6, 4, 17, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Omnis cupidatat ea d', 'Culpa maiores offic', '2023-09-03 09:34:49', '2023-09-03 09:34:49'),
(7, 4, 18, 'Chaney', 'Nguyen', 'Bangladesh', 'Khulna Division', 'jyhy@mailinator.com', '018918084034', 'Maxime eius autem co', 'Excepturi dolor volu', 'Ex explicabo Suscip', '2023-09-03 10:26:10', '2023-09-03 10:26:10'),
(8, 4, 19, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:17:19', '2023-09-03 12:17:19'),
(10, 4, 21, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:24:46', '2023-09-03 12:24:46'),
(11, 4, 22, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:26:44', '2023-09-03 12:26:44'),
(12, 4, 23, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:28:30', '2023-09-03 12:28:30'),
(13, 4, 24, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:29:48', '2023-09-03 12:29:48'),
(14, 4, 25, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:32:16', '2023-09-03 12:32:16'),
(15, 4, 26, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:34:33', '2023-09-03 12:34:33'),
(16, 4, 27, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:36:17', '2023-09-03 12:36:17'),
(17, 4, 28, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:37:45', '2023-09-03 12:37:45'),
(18, 4, 29, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:40:05', '2023-09-03 12:40:05'),
(19, 4, 30, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:41:28', '2023-09-03 12:41:28'),
(20, 4, 31, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:42:46', '2023-09-03 12:42:46'),
(21, 4, 32, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:43:43', '2023-09-03 12:43:43'),
(22, 4, 33, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 12:44:47', '2023-09-03 12:44:47'),
(30, 4, 41, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-03 13:09:22', '2023-09-03 13:09:22'),
(34, 4, 45, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-04 05:46:40', '2023-09-04 05:46:40'),
(36, 5, 47, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Chittagong', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'fghfdg', 'Dhaka, Bangladesh.', '2023-09-04 05:52:52', '2023-09-04 05:52:52'),
(42, 6, 53, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-04 06:18:01', '2023-09-04 06:18:01'),
(44, 6, 55, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', NULL, 'Gulshan', '2023-09-04 06:29:40', '2023-09-04 06:29:40'),
(45, 6, 56, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-04 06:30:45', '2023-09-04 06:30:45'),
(47, 6, 58, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', NULL, NULL, 'Gulshan', '2023-09-04 06:37:15', '2023-09-04 06:37:15'),
(48, 6, 59, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', NULL, NULL, 'Gulshan', '2023-09-04 06:38:38', '2023-09-04 06:38:38'),
(49, 6, 60, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-04 06:43:58', '2023-09-04 06:43:58'),
(50, 6, 61, 'Nashita', 'Iftekhar', 'Bangladesh', 'Sylhet Division', 'abc@gmail.com', '01916287618', NULL, NULL, 'Moulovibazar', '2023-09-04 06:53:48', '2023-09-04 06:53:48'),
(55, 4, 66, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', NULL, NULL, 'Omnis cupidatat ea d', '2023-09-04 07:11:55', '2023-09-04 07:11:55'),
(56, 6, 67, 'Nashita', 'Iftekhar', 'Bangladesh', 'Mymensingh Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-04 07:16:03', '2023-09-04 07:16:03'),
(57, 6, 68, 'Sara', 'khan', 'Bangladesh', 'Khulna Division', 'ads@gmail.com', '+1 (748) 353-3482', NULL, NULL, 'Shiromoni', '2023-09-04 07:43:48', '2023-09-04 07:43:48'),
(62, 4, 73, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-04 09:52:05', '2023-09-04 09:52:05'),
(63, 6, 74, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-04 09:56:00', '2023-09-04 09:56:00'),
(64, 6, 75, 'Sara', 'khan', 'Bangladesh', 'Khulna Division', 'ads@gmail.com', '+1 (748) 353-3482', NULL, NULL, 'Shiromoni', '2023-09-04 09:56:47', '2023-09-04 09:56:47'),
(65, 6, 76, 'Sara', 'khan', 'Bangladesh', 'Khulna Division', 'ads@gmail.com', '+1 (748) 353-3482', NULL, NULL, 'Shiromoni', '2023-09-04 10:13:45', '2023-09-04 10:13:45'),
(70, 4, 81, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-07 05:40:27', '2023-09-07 05:40:27'),
(71, 6, 82, 'Nashita', 'Iftekhar', 'Bangladesh', 'Dhaka Division', 'abc@gmail.com', '01916287618', '1212', 'house 10/A', 'Gulshan', '2023-09-07 05:41:53', '2023-09-07 05:41:53'),
(72, 4, 83, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-07 06:10:22', '2023-09-07 06:10:22'),
(73, 9, 84, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Chittagong', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'rtfghdf', 'Dhaka, Bangladesh.', '2023-09-17 11:52:57', '2023-09-17 11:52:57'),
(74, 5, 85, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Chittagong', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'dtghedr', 'Dhaka, Bangladesh.', '2023-09-17 12:58:52', '2023-09-17 12:58:52'),
(75, 4, 86, 'Emma', 'Glass', 'Bangladesh', 'Rangpur Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 06:54:05', '2023-09-18 06:54:05'),
(76, 4, 87, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 07:03:59', '2023-09-18 07:03:59'),
(77, 4, 94, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 07:31:47', '2023-09-18 07:31:47'),
(78, 4, 95, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 07:38:22', '2023-09-18 07:38:22'),
(79, 4, 96, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 08:03:00', '2023-09-18 08:03:00'),
(80, 4, 97, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 08:04:59', '2023-09-18 08:04:59'),
(81, 4, 98, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 08:20:28', '2023-09-18 08:20:28'),
(82, 4, 99, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 09:07:25', '2023-09-18 09:07:25'),
(83, 4, 101, 'Emma', 'Glass', 'Bangladesh', 'Barisal Division', 'joridicefi@mailinator.com', '012972243053', 'Ut minus reiciendis', 'Culpa maiores offic', 'Omnis cupidatat ea d', '2023-09-18 09:28:43', '2023-09-18 09:28:43'),
(84, 0, 102, 'Test', 'Test', 'Bangladesh', 'Dhaka Division', 'test@gmail.com', '01554885147', NULL, NULL, 'test', '2023-09-20 07:00:35', '2023-09-20 07:00:35'),
(85, 0, 103, 'Test', 'test', 'Bangladesh', 'Dhaka Division', 'tanzir.tushar@webable.digital', '01567988101', NULL, NULL, 'gulshan', '2023-09-20 07:11:32', '2023-09-20 07:11:32'),
(86, 10, 104, 'Test', 'test', 'Bangladesh', 'Dhaka Division', 'tanzir.tushar@webable.digital', '01567988101', NULL, NULL, 'gulshan', '2023-09-21 12:59:23', '2023-09-21 12:59:23'),
(87, 10, 105, 'Test', 'test', 'Bangladesh', 'Dhaka Division', 'tanzir.tushar@webable.digital', '01567988101', NULL, NULL, 'gulshan', '2023-09-21 13:36:24', '2023-09-21 13:36:24'),
(88, 10, 106, 'Test', 'test', 'Bangladesh', 'Dhaka Division', 'tanzir.tushar@webable.digital', '01567988101', NULL, NULL, 'gulshan', '2023-09-21 13:38:48', '2023-09-21 13:38:48');

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
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cares`
--
ALTER TABLE `cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `embellishments`
--
ALTER TABLE `embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=774;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `product_artists`
--
ALTER TABLE `product_artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `product_cares`
--
ALTER TABLE `product_cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `product_consignments`
--
ALTER TABLE `product_consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_designers`
--
ALTER TABLE `product_designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `product_embellishments`
--
ALTER TABLE `product_embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `product_fits`
--
ALTER TABLE `product_fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `product_makings`
--
ALTER TABLE `product_makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_seasons`
--
ALTER TABLE `product_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_varieties`
--
ALTER TABLE `product_varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_vendors`
--
ALTER TABLE `product_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `refund_configure`
--
ALTER TABLE `refund_configure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shipping_configs`
--
ALTER TABLE `shipping_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_billing_infos`
--
ALTER TABLE `user_billing_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `user_shipping_infos`
--
ALTER TABLE `user_shipping_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
