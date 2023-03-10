-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 04:46 PM
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aranya', 'admin@admin.com', NULL, '$2y$10$ca9Xk39ikzsamtmFt/E.WeiDJpX0dsgzRbiRxh4N4zxu4uaS9NwQa', NULL, NULL, NULL, '2023-03-06 09:57:17', '2023-03-06 09:57:17');

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
(1, 'Ila Leach', 'ila-leach', NULL, 1, NULL, '2023-03-06 23:58:47', '2023-03-06 23:58:47'),
(2, 'Rinah Hicks', 'rinah-hicks', NULL, 1, NULL, '2023-03-06 23:58:51', '2023-03-06 23:58:51'),
(3, 'Cairo Jenkins', 'cairo-jenkins', NULL, 1, NULL, '2023-03-06 23:58:56', '2023-03-06 23:58:56'),
(4, 'Thaddeus Cash', 'thaddeus-cash', NULL, 1, NULL, '2023-03-06 23:59:00', '2023-03-06 23:59:00'),
(5, 'Stephanie Vance', 'stephanie-vance', NULL, 1, NULL, '2023-03-06 23:59:04', '2023-03-06 23:59:04'),
(6, 'Adam Strong', 'adam-strong', NULL, 1, NULL, '2023-03-06 23:59:18', '2023-03-06 23:59:18');

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
(1, 'Carly Ware', 'carly-ware', NULL, 1, NULL, '2023-03-06 23:57:37', '2023-03-06 23:57:37'),
(2, 'Lynn Barr', 'lynn-barr', NULL, 1, NULL, '2023-03-06 23:57:40', '2023-03-06 23:57:40'),
(3, 'Sean Dudley', 'sean-dudley', NULL, 1, NULL, '2023-03-06 23:57:44', '2023-03-06 23:57:44'),
(4, 'Kasimir Pacheco', 'kasimir-pacheco', NULL, 1, NULL, '2023-03-06 23:57:47', '2023-03-06 23:57:47'),
(5, 'Madonna Dunlap', 'madonna-dunlap', NULL, 1, NULL, '2023-03-06 23:57:51', '2023-03-06 23:57:51'),
(6, 'Coby Savage', 'coby-savage', NULL, 1, NULL, '2023-03-06 23:57:55', '2023-03-06 23:57:55'),
(7, 'Aspen Phelps', 'aspen-phelps', NULL, 1, NULL, '2023-03-06 23:58:02', '2023-03-06 23:58:02');

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
(1, 'Lydia Rush', 'lydia-rush', NULL, 1, NULL, '2023-03-07 00:06:13', '2023-03-07 00:06:13'),
(2, 'Katell Robbins', 'katell-robbins', NULL, 1, NULL, '2023-03-07 00:06:16', '2023-03-07 00:06:16'),
(3, 'Gregory Randall', 'gregory-randall', NULL, 1, NULL, '2023-03-07 00:06:22', '2023-03-07 00:06:22'),
(4, 'Taylor Mercer', 'taylor-mercer', NULL, 1, NULL, '2023-03-07 00:09:29', '2023-03-07 00:09:29'),
(5, 'Solomon Mccormick', 'solomon-mccormick', NULL, 1, NULL, '2023-03-07 00:09:34', '2023-03-07 00:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(3, 'Kids', 'kids', NULL, '0', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(4, 'Home Furnishings', 'home-furnishings', NULL, '0', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(5, 'Beauty Collection', 'beauty-collection', NULL, '0', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(6, 'Accessories', 'accessories', NULL, '0', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(7, 'Saree', 'saree', NULL, '1', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(8, 'Salwar Kameez', 'salwar-kameez', NULL, '1', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(9, 'Kurti & Fatua', 'kurti-fatua', NULL, '1', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(10, 'Tops & Shirts', 'tops-shirts', NULL, '1', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(11, 'Kimono', 'kimono', NULL, '1', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(12, 'Kaftan', 'kaftan', NULL, '1', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(13, 'Panjabi', 'panjabi', NULL, '2', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(14, 'Vest', 'vest', NULL, '2', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(15, 'T-Shirt', 't-shirt', NULL, '2', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(16, 'Fatua', 'fatua', NULL, '2', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(17, 'Shirts', 'shirts', NULL, '2', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(18, 'Jackets', 'jackets', NULL, '2', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(19, 'Baby Kantha', 'baby-kantha', NULL, '4', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(20, 'Cushion Cover', 'cushion-cover', NULL, '4', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(21, 'Ceramic', 'ceramic', NULL, '4', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(22, 'Table Cloth', 'table-cloth', NULL, '4', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(23, 'Bed Cover', 'bed-cover', NULL, '4', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(24, 'Basket', 'basket', NULL, '4', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(25, 'Napkin', 'napkin', NULL, '4', NULL, NULL, NULL, NULL, 7, 1, NULL, NULL, NULL),
(26, 'Table Runner', 'table-runner', NULL, '4', NULL, NULL, NULL, NULL, 8, 1, NULL, NULL, NULL),
(27, 'Aatong', 'aatong', NULL, '6', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(28, 'Cangbuk', 'cangbuk', NULL, '6', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL),
(29, 'Ashtodhatu Jewellery', 'ashtodhatu-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 3, 1, NULL, NULL, NULL),
(30, 'Silver Jewellery', 'silver-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(31, 'Metal Jewellery', 'metal-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(32, 'Other Jewellery', 'other-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(33, 'Scarves', 'scarves', NULL, '6', NULL, NULL, NULL, NULL, 7, 1, NULL, NULL, NULL),
(34, 'Orna', 'orna', NULL, '6', NULL, NULL, NULL, NULL, 8, 1, NULL, NULL, NULL),
(35, 'Stoles', 'stoles', NULL, '6', NULL, NULL, NULL, NULL, 9, 1, NULL, NULL, NULL),
(36, 'Shawls', 'shawls', NULL, '6', NULL, NULL, NULL, NULL, 10, 1, NULL, NULL, NULL);

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
(1, 16, 3, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 16, 1, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 8, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 8, 2, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 32, 4, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(6, 32, 1, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 'Black', '#030303', 'black', NULL, 1, NULL, '2023-03-06 23:55:05', '2023-03-06 23:55:05'),
(2, 'Red', '#e23232', 'red', NULL, 1, NULL, '2023-03-06 23:55:13', '2023-03-06 23:55:13'),
(3, 'Green', '#5be236', 'green', NULL, 1, NULL, '2023-03-06 23:55:28', '2023-03-06 23:55:28'),
(4, 'Yellow', '#fdee44', 'yellow', NULL, 1, NULL, '2023-03-06 23:55:41', '2023-03-06 23:55:41');

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
(1, 'Hedda Alvarez', 'hedda-alvarez', NULL, 1, NULL, '2023-03-07 00:05:14', '2023-03-07 00:05:14'),
(2, 'Leah Garner', 'leah-garner', NULL, 1, NULL, '2023-03-07 00:05:17', '2023-03-07 00:05:17'),
(3, 'Buffy Park', 'buffy-park', NULL, 1, NULL, '2023-03-07 00:05:21', '2023-03-07 00:05:21'),
(4, 'Dane Payne', 'dane-payne', NULL, 1, NULL, '2023-03-07 00:05:24', '2023-03-07 00:05:24'),
(5, 'Haley Melendez', 'haley-melendez', NULL, 1, NULL, '2023-03-07 00:05:27', '2023-03-07 00:05:27'),
(6, 'Emma Lane', 'emma-lane', NULL, 1, NULL, '2023-03-07 00:05:34', '2023-03-07 00:05:34'),
(7, 'Kasper Kane', 'kasper-kane', NULL, 1, NULL, '2023-03-07 00:05:38', '2023-03-07 00:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` int(11) NOT NULL,
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
(1, 'Chaim Duke', 'Samuel Clarke', 'chaim-duke', NULL, 1, NULL, '2023-03-06 23:58:11', '2023-03-06 23:58:11'),
(2, 'Eugenia Maldonado', 'Risa Miles', 'eugenia-maldonado', NULL, 1, NULL, '2023-03-06 23:58:15', '2023-03-06 23:58:15'),
(3, 'Nyssa Preston', 'Mariam Ratliff', 'nyssa-preston', NULL, 1, NULL, '2023-03-06 23:58:18', '2023-03-06 23:58:18'),
(4, 'Hayley Dalton', 'Lillith Sweet', 'hayley-dalton', NULL, 1, NULL, '2023-03-06 23:58:22', '2023-03-06 23:58:22'),
(5, 'Anastasia Robertson', 'Mary Medina', 'anastasia-robertson', NULL, 1, NULL, '2023-03-06 23:58:26', '2023-03-06 23:58:26'),
(6, 'Zia Black', 'Dante Barr', 'zia-black', NULL, 1, NULL, '2023-03-06 23:58:30', '2023-03-06 23:58:30'),
(7, 'Ramona Waters', 'Nasim Welch', 'ramona-waters', NULL, 1, NULL, '2023-03-06 23:58:34', '2023-03-06 23:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `discount_amount` double NOT NULL,
  `discount_type` enum('percentage','flat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_amount` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Yasir Morales', 'yasir-morales', NULL, 1, NULL, '2023-03-06 23:59:36', '2023-03-06 23:59:36'),
(2, 'Jesse Hoffman', 'jesse-hoffman', NULL, 1, NULL, '2023-03-06 23:59:39', '2023-03-06 23:59:39'),
(3, 'Rebecca Cochran', 'rebecca-cochran', NULL, 1, NULL, '2023-03-06 23:59:43', '2023-03-06 23:59:43'),
(4, 'Fallon Crawford', 'fallon-crawford', NULL, 1, NULL, '2023-03-06 23:59:47', '2023-03-06 23:59:47'),
(5, 'Laurel Mcknight', 'laurel-mcknight', NULL, 1, NULL, '2023-03-06 23:59:51', '2023-03-06 23:59:51'),
(6, 'Gisela Rowland', 'gisela-rowland', NULL, 1, NULL, '2023-03-07 00:00:00', '2023-03-07 00:00:00'),
(7, 'Wyoming Kirby', 'wyoming-kirby', NULL, 1, NULL, '2023-03-07 00:00:08', '2023-03-07 00:00:08');

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
(1, 'Cotton', '345err', 'cotton', NULL, 1, NULL, '2023-03-06 23:56:37', '2023-03-06 23:56:37'),
(2, 'Polyster', 'tyhh45', 'polyster', NULL, 1, NULL, '2023-03-06 23:56:54', '2023-03-06 23:56:54'),
(3, 'Aretha Gay', 'Saepe amet quo id', 'aretha-gay', NULL, 1, NULL, '2023-03-06 23:56:59', '2023-03-06 23:56:59'),
(4, 'Oleg Pittman', 'Maiores velit quisqu', 'oleg-pittman', NULL, 1, NULL, '2023-03-06 23:57:03', '2023-03-06 23:57:03');

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
(1, 'Gray Rojas', 'gray-rojas', NULL, 1, NULL, '2023-03-07 00:02:13', '2023-03-07 00:02:13'),
(2, 'Warren Wiley', 'warren-wiley', NULL, 1, NULL, '2023-03-07 00:02:17', '2023-03-07 00:02:17'),
(3, 'Jonah Lowery', 'jonah-lowery', NULL, 1, NULL, '2023-03-07 00:02:21', '2023-03-07 00:02:21'),
(4, 'Hollee Burks', 'hollee-burks', NULL, 1, NULL, '2023-03-07 00:02:24', '2023-03-07 00:02:24'),
(5, 'Carla Jenkins', 'carla-jenkins', NULL, 1, NULL, '2023-03-07 00:02:32', '2023-03-07 00:02:32'),
(6, 'Lila Ratliff', 'lila-ratliff', NULL, 1, NULL, '2023-03-07 00:02:38', '2023-03-07 00:02:38'),
(7, 'Asher Cooper', 'asher-cooper', NULL, 1, NULL, '2023-03-07 00:02:43', '2023-03-07 00:02:43'),
(8, 'Emi Lawson', 'emi-lawson', NULL, 1, NULL, '2023-03-07 00:02:53', '2023-03-07 00:02:53');

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
(1, 'Zelda Holloway', 'zelda-holloway', NULL, 1, NULL, '2023-03-07 00:05:46', '2023-03-07 00:05:46'),
(2, 'Wallace Everett', 'wallace-everett', NULL, 1, NULL, '2023-03-07 00:05:51', '2023-03-07 00:05:51'),
(3, 'Dane Fulton', 'dane-fulton', NULL, 1, NULL, '2023-03-07 00:05:54', '2023-03-07 00:05:54'),
(4, 'Myra Morgan', 'myra-morgan', NULL, 1, NULL, '2023-03-07 00:05:57', '2023-03-07 00:05:57'),
(5, 'Cade Contreras', 'cade-contreras', NULL, 1, NULL, '2023-03-07 00:06:00', '2023-03-07 00:06:00'),
(6, 'Kirsten Suarez', 'kirsten-suarez', NULL, 1, NULL, '2023-03-07 00:06:03', '2023-03-07 00:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `colour_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_amount` int(11) NOT NULL DEFAULT 10,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `colour_id`, `size_id`, `stock`, `sku`, `warning_amount`, `warehouse`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 323, 'C1511', 10, NULL, NULL, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 1, 3, 867, 'B321', 10, NULL, NULL, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 4, 6, 544, 'S123', 10, NULL, NULL, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 3, 3, 654, 'S432', 10, NULL, NULL, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 2, 1, 4, 545, 'V432', 10, NULL, NULL, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(6, 3, 4, 3, 433, 'A123', 10, NULL, NULL, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(7, 3, 2, 6, 544, 'D234', 10, NULL, NULL, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 'Ashely Sexton', 'ashely-sexton', NULL, 1, NULL, '2023-03-07 00:00:32', '2023-03-07 00:00:32'),
(2, 'Henry Quinn', 'henry-quinn', NULL, 1, NULL, '2023-03-07 00:00:35', '2023-03-07 00:00:35'),
(3, 'Eric Strickland', 'eric-strickland', NULL, 1, NULL, '2023-03-07 00:00:39', '2023-03-07 00:00:39'),
(4, 'Gavin Mathis', 'gavin-mathis', NULL, 1, NULL, '2023-03-07 00:00:42', '2023-03-07 00:00:42'),
(5, 'Honorato Knight', 'honorato-knight', NULL, 1, NULL, '2023-03-07 00:00:46', '2023-03-07 00:00:46'),
(6, 'Scarlet Hoover', 'scarlet-hoover', NULL, 1, NULL, '2023-03-07 00:00:49', '2023-03-07 00:00:49'),
(7, 'Barrett Blevins', 'barrett-blevins', NULL, 1, NULL, '2023-03-07 00:00:53', '2023-03-07 00:00:53');

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
(51, '2023_03_06_134546_create_vat_taxes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,4) NOT NULL,
  `vat_rate` double NOT NULL DEFAULT 0 COMMENT 'vat rate in percentage ''%''',
  `vat_amount` double NOT NULL DEFAULT 0 COMMENT 'value added vat amount',
  `total_item` int(11) NOT NULL DEFAULT 0,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 for COD/1 for MPAY/ 2 for POS/ 3 for CCRD/4 for BOD if not set default COD',
  `payment_method_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ssl,amex,stripe',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `coupon_discount` double NOT NULL DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 not paid 1 = paid',
  `validation_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` date NOT NULL,
  `requested_delivery_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_same_address` tinyint(4) NOT NULL DEFAULT 0,
  `order_position` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending 1=process 2=OnProcess 3=Delivered',
  `delivery_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for home, 1 for pickup point',
  `percel_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for Box, 1 for DOC',
  `pickup_point_no` int(11) DEFAULT NULL COMMENT 'pickup point id',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `quantity` int(11) NOT NULL,
  `selling_price` double(8,4) NOT NULL,
  `buying_price` double(8,4) NOT NULL,
  `total_buying_price` double(8,4) NOT NULL,
  `total_selling_price` double(8,4) NOT NULL,
  `unit_discount` double NOT NULL DEFAULT 0,
  `total_discount` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'home', 'home', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

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
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `cost` int(11) DEFAULT NULL,
  `mrp_price` int(11) NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the product',
  `is_discount` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `cost`, `mrp_price`, `dimension`, `country_of_origin`, `weight`, `design_code`, `description`, `status`, `is_discount`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Leslie Bradshaw', 'leslie-bradshaw', 2, 16, NULL, 'Shoshana Velasquez', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678172896/aranya/ajsrn47ta4icfy8plmvf.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678172896/aranya/ajsrn47ta4icfy8plmvf.jpg', NULL, NULL, NULL, NULL, 455, 644, '23X43X21 cm', NULL, '0.4 kg', 'Dolore quo dolores p', '<p><span style=\"color: rgba(0, 0, 0, 0.9);\">So, that was much about the User Guide of Laravel eCommerce Bulk Upload for any queries or doubts reach out to us</span></p>', 1, 0, '2023-03-07 01:10:30', NULL, '2023-03-07 01:10:30'),
(2, 'Dahlia Ortiz', 'dahlia-ortiz', 1, 8, NULL, 'Hilda Parrish', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678174910/aranya/gf9zbw3sisttlbitsqnl.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678174910/aranya/gf9zbw3sisttlbitsqnl.jpg', NULL, NULL, NULL, NULL, 453, 747, '23X43X21 cm', NULL, '0.2 kg', 'Fugiat consequuntu', '<p><span style=\"color: rgb(58, 58, 58);\">the extension allows the admin to create and add a bulk number of products into Bagisto online store. Using CSV or XLS file, the merchants/online store owners can easily and quickly add multiple types of products with images</span></p>', 1, 0, '2023-03-07 01:42:01', NULL, '2023-03-07 01:42:01'),
(3, 'Dahlia Ortiz', 'dahlia-ortiz', 6, 32, NULL, 'Nayda Rosario', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678175021/aranya/ldjydidpihwrb6z1zjku.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1678175021/aranya/ldjydidpihwrb6z1zjku.jpg', NULL, NULL, NULL, NULL, 476, 866, '23X43X22 cm', NULL, '0.2 kg', 'Lorem pariatur Cumq', '<p><span style=\"color: rgb(58, 58, 58);\">The extension allows the admin to create and add a bulk number of products into Bagisto online store. Using CSV or XLS file, the merchant</span></p><p><span style=\"color: rgb(58, 58, 58);\"><span class=\"ql-cursor\">﻿</span>The extension allows the admin to create and add a bulk number of products into Bagisto online store. Using CSV or XLS file, the merchant</span></p>', 1, 0, '2023-03-07 01:47:33', NULL, '2023-03-07 01:47:33');

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
(1, 1, 5, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 4, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 7, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 6, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(6, 3, 4, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(3, 3, 3, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 3, '2023-03-07 01:10:30', '2023-03-07 01:10:30'),
(2, 1, 1, '2023-03-07 01:10:30', '2023-03-07 01:10:30'),
(3, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 3, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 2, 1, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(6, 3, 4, '2023-03-07 01:47:33', '2023-03-07 01:47:33'),
(7, 3, 2, '2023-03-07 01:47:33', '2023-03-07 01:47:33');

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
(1, 1, 5, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 6, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 6, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 5, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(6, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 7, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 6, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(5, 3, 4, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 6, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 3, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 7, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 3, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 1, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 2, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 4, '2023-03-07 01:47:33', '2023-03-07 01:47:33'),
(6, 3, 1, '2023-03-07 01:47:33', '2023-03-07 01:47:33');

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
(1, 1, 8, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 6, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 7, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 6, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 8, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 5, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 3, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(6, 3, 3, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 5, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 3, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 2, 7, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(6, 3, 4, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 6, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 3, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(4, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 2, '2023-03-07 01:10:30', '2023-03-07 01:10:30'),
(2, 1, 3, '2023-03-07 01:10:30', '2023-03-07 01:10:30'),
(3, 2, 6, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(4, 2, 3, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 2, 4, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(6, 3, 3, '2023-03-07 01:47:33', '2023-03-07 01:47:33'),
(7, 3, 6, '2023-03-07 01:47:33', '2023-03-07 01:47:33');

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
(1, 1, '\"baby dress,colorfull\"', NULL, 1, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 2, '\"newarra\"', NULL, 1, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(3, 3, '\"eid dress\"', NULL, 1, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 7, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 5, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 1, 4, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(4, 2, 6, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 3, 6, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(6, 3, 7, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 1, 5, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(2, 1, 2, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(3, 1, 1, '2023-03-07 01:10:31', '2023-03-07 01:10:31'),
(4, 2, 5, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(5, 2, 2, '2023-03-07 01:42:01', '2023-03-07 01:42:01'),
(6, 3, 5, '2023-03-07 01:47:34', '2023-03-07 01:47:34'),
(7, 3, 3, '2023-03-07 01:47:34', '2023-03-07 01:47:34');

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
(1, 'Irma Glover', 'irma-glover', NULL, 1, NULL, '2023-03-07 00:01:04', '2023-03-07 00:01:04'),
(2, 'Palmer Carver', 'palmer-carver', NULL, 1, NULL, '2023-03-07 00:01:08', '2023-03-07 00:01:08'),
(3, 'Colleen Howard', 'colleen-howard', NULL, 1, NULL, '2023-03-07 00:01:15', '2023-03-07 00:01:15'),
(4, 'Yoshi Foley', 'yoshi-foley', NULL, 1, NULL, '2023-03-07 00:01:18', '2023-03-07 00:01:18'),
(5, 'Dominic Langley', 'dominic-langley', NULL, 1, NULL, '2023-03-07 00:01:22', '2023-03-07 00:01:22'),
(6, 'Lilah Schroeder', 'lilah-schroeder', NULL, 1, NULL, '2023-03-07 00:01:25', '2023-03-07 00:01:25'),
(7, 'Jerry England', 'jerry-england', NULL, 1, NULL, '2023-03-07 00:01:30', '2023-03-07 00:01:30');

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
(1, 'S', 's', NULL, 1, NULL, '2023-03-06 23:55:52', '2023-03-06 23:55:52'),
(2, 'L', 'l', NULL, 1, NULL, '2023-03-06 23:55:57', '2023-03-06 23:55:57'),
(3, 'M', 'm', NULL, 1, NULL, '2023-03-06 23:56:02', '2023-03-06 23:56:02'),
(4, 'XL', 'xl', NULL, 1, NULL, '2023-03-06 23:56:07', '2023-03-06 23:56:07'),
(5, '2XL', '2xl', NULL, 1, NULL, '2023-03-06 23:56:13', '2023-03-06 23:56:13'),
(6, '3XL', '3xl', NULL, 1, NULL, '2023-03-06 23:56:22', '2023-03-06 23:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for dissable the user',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Briar James', 'briar-james', NULL, 1, NULL, '2023-03-07 00:01:38', '2023-03-07 00:01:38'),
(2, 'Jonah Sellers', 'jonah-sellers', NULL, 1, NULL, '2023-03-07 00:01:42', '2023-03-07 00:01:42'),
(3, 'Aiko Wilson', 'aiko-wilson', NULL, 1, NULL, '2023-03-07 00:01:45', '2023-03-07 00:01:45'),
(4, 'Dustin Kirkland', 'dustin-kirkland', NULL, 1, NULL, '2023-03-07 00:01:48', '2023-03-07 00:01:48'),
(5, 'Gisela Montgomery', 'gisela-montgomery', NULL, 1, NULL, '2023-03-07 00:01:52', '2023-03-07 00:01:52'),
(6, 'Dacey Garner', 'dacey-garner', NULL, 1, NULL, '2023-03-07 00:01:56', '2023-03-07 00:01:56'),
(7, 'Burton Lester', 'burton-lester', NULL, 1, NULL, '2023-03-07 00:01:59', '2023-03-07 00:01:59'),
(8, 'Selma Monroe', 'selma-monroe', NULL, 1, NULL, '2023-03-07 00:02:03', '2023-03-07 00:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `vat_taxes`
--

CREATE TABLE `vat_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tax_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_percentage` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vat_taxes`
--

INSERT INTO `vat_taxes` (`id`, `tax_name`, `tax_percentage`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aphrodite Russo', 7, 1, NULL, '2023-03-06 23:08:44', '2023-03-07 00:09:54'),
(2, 'Jillian Poole', 5, 1, NULL, '2023-03-06 23:08:51', '2023-03-07 00:09:47');

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
(1, 'Liberty Warren', 'liberty-warren', NULL, 1, NULL, '2023-03-06 23:57:11', '2023-03-06 23:57:11'),
(2, 'Ursa Chapman', 'ursa-chapman', NULL, 1, NULL, '2023-03-06 23:57:15', '2023-03-06 23:57:15'),
(3, 'Phelan Joyner', 'phelan-joyner', NULL, 1, NULL, '2023-03-06 23:57:19', '2023-03-06 23:57:19'),
(4, 'Leila Garrison', 'leila-garrison', NULL, 1, NULL, '2023-03-06 23:57:23', '2023-03-06 23:57:23'),
(5, 'Rhonda Stout', 'rhonda-stout', NULL, 1, NULL, '2023-03-06 23:57:27', '2023-03-06 23:57:27');

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
-- Indexes for table `makings`
--
ALTER TABLE `makings`
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
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cares`
--
ALTER TABLE `cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category_fabric`
--
ALTER TABLE `category_fabric`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `consignments`
--
ALTER TABLE `consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `embellishments`
--
ALTER TABLE `embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fits`
--
ALTER TABLE `fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `makings`
--
ALTER TABLE `makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_artists`
--
ALTER TABLE `product_artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_cares`
--
ALTER TABLE `product_cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_consignments`
--
ALTER TABLE `product_consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_designers`
--
ALTER TABLE `product_designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_embellishments`
--
ALTER TABLE `product_embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_fits`
--
ALTER TABLE `product_fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_makings`
--
ALTER TABLE `product_makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_seasons`
--
ALTER TABLE `product_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_varieties`
--
ALTER TABLE `product_varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_vendors`
--
ALTER TABLE `product_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_billing_infos`
--
ALTER TABLE `user_billing_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_shipping_infos`
--
ALTER TABLE `user_shipping_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `varieties`
--
ALTER TABLE `varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vat_taxes`
--
ALTER TABLE `vat_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
