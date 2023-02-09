-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 03:30 PM
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$LDdg9xv8M36Pfi40/dHwXedTv8qvUgKwiE9ixvPQdze1zIukSeqUe', NULL, NULL, '2023-01-05 07:39:25', '2023-01-05 07:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_start_date` date NOT NULL,
  `campaign_expire_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_title`, `campaign_banner_default`, `campaign_meta_image`, `campaign_banner_one`, `campaign_banner_two`, `campaign_start_date`, `campaign_expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eid-2022', 'Enjoy Eid', 'https://www.shutterstock.com/shutterstock/photos/1432421069/display_1500/stock-vector-photo-or-graphic-editor-on-computer-vector-illustration-flat-cartoon-laptop-screen-with-design-or-1432421069.jpg', 'https://www.shutterstock.com/shutterstock/photos/1432421069/display_1500/stock-vector-photo-or-graphic-editor-on-computer-vector-illustration-flat-cartoon-laptop-screen-with-design-or-1432421069.jpg', NULL, NULL, '2023-02-07', '2023-02-26', 1, '2023-02-07 11:51:46', '2023-02-07 11:51:47'),
(2, 'Adrian Vasquez', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2007-05-19', '2007-05-30', 1, '2023-02-08 09:01:22', '2023-02-08 09:01:22'),
(3, 'Nash Oneil', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2023-02-12', '2023-03-03', 1, '2023-02-08 09:03:44', '2023-02-08 09:03:44'),
(4, 'Zia Palmer', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2018-07-25', '2018-07-31', 1, '2023-02-08 09:05:05', '2023-02-08 09:05:05'),
(5, 'test', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2023-02-09', '2023-02-15', 1, '2023-02-08 09:17:03', '2023-02-08 09:17:03');

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
(1, 5, 1, 1, '2023-02-08 11:57:38', '2023-02-08 11:57:39'),
(2, 6, 1, 1, '2023-02-08 11:57:47', '2023-02-08 11:57:49'),
(3, 7, 1, 1, '2023-02-08 11:58:00', '2023-02-08 11:58:01'),
(4, 7, 3, 1, NULL, NULL),
(5, 8, 3, 1, NULL, NULL),
(6, 5, 2, 1, NULL, NULL),
(7, 6, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the category',
  `precedence` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `parent_category`, `category_image_one`, `category_image_two`, `category_image_three`, `category_video`, `status`, `precedence`, `created_at`, `updated_at`) VALUES
(1, 'Women', NULL, '0', NULL, NULL, NULL, NULL, 1, 1, '2023-01-29 13:53:24', '2023-01-29 13:53:25'),
(2, 'Men', NULL, '0', NULL, NULL, NULL, NULL, 1, 2, '2023-01-29 13:53:41', '2023-01-29 13:53:42'),
(3, 'Kids', NULL, '0', NULL, NULL, NULL, NULL, 1, 3, '2023-01-29 13:54:08', '2023-01-29 13:54:09'),
(4, 'Saree', NULL, '1', NULL, NULL, NULL, NULL, 1, 1, '2023-01-29 13:54:26', '2023-01-29 13:54:27'),
(5, 'Kurti & Fatua', NULL, '1', NULL, NULL, NULL, NULL, 1, 3, '2023-01-29 13:54:43', '2023-01-29 13:54:44'),
(6, 'Tops & Shirts', NULL, '1', NULL, NULL, NULL, NULL, 1, 4, '2023-01-29 13:55:00', '2023-01-29 13:55:01'),
(7, 'Kimono', NULL, '1', NULL, NULL, NULL, NULL, 1, 5, '2023-01-29 13:55:20', '2023-01-29 13:55:22'),
(8, 'Home Furnishings', NULL, '0', NULL, NULL, NULL, NULL, 1, 4, '2023-02-06 11:28:32', '2023-02-06 11:28:33'),
(9, 'Beauty Collection', NULL, '0', NULL, NULL, NULL, NULL, 1, 5, '2023-02-06 11:29:31', '2023-02-06 11:29:32'),
(10, 'Accessories', NULL, '0', NULL, NULL, NULL, NULL, 1, 6, '2023-02-06 11:30:49', '2023-02-06 11:30:51'),
(11, 'Salwar Kameez', NULL, '1', NULL, NULL, NULL, NULL, 1, 2, '2023-02-06 11:36:21', '2023-02-06 11:36:22'),
(12, 'Kaftan', NULL, '1', NULL, NULL, NULL, NULL, 1, 6, '2023-02-06 11:39:11', '2023-02-06 11:39:12'),
(13, 'Panjabi', NULL, '2', NULL, NULL, NULL, NULL, 1, 1, '2023-02-06 11:39:48', '2023-02-06 11:39:50'),
(14, 'Vest', NULL, '2', NULL, NULL, NULL, NULL, 1, 2, '2023-02-06 11:40:17', '2023-02-06 11:40:18'),
(15, 'T-Shirt', NULL, '2', NULL, NULL, NULL, NULL, 1, 3, '2023-02-06 11:40:40', '2023-02-06 11:40:41'),
(16, 'Fatua', NULL, '2', NULL, NULL, NULL, NULL, 1, 4, '2023-02-06 11:41:24', '2023-02-06 11:41:26'),
(17, 'Shirts', NULL, '2', NULL, NULL, NULL, NULL, 1, 5, '2023-02-06 11:41:54', '2023-02-06 11:41:55'),
(18, 'Jackets', NULL, '2', NULL, NULL, NULL, NULL, 1, 6, '2023-02-06 11:42:21', '2023-02-06 11:42:22');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `color_name`, `color_code`, `slug`, `precedence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', NULL, 'red', NULL, 1, '2023-01-24 07:35:13', '2023-01-24 07:35:13'),
(2, 'Blue', NULL, 'blue', NULL, 1, '2023-01-24 07:39:27', '2023-01-24 07:39:27'),
(3, 'Green', NULL, 'green', NULL, 0, '2023-01-24 07:54:02', '2023-01-25 23:49:50'),
(5, 'White', NULL, 'white', NULL, 1, '2023-01-25 00:05:35', '2023-01-25 00:05:35'),
(7, 'Nila', NULL, 'nila', NULL, 1, '2023-01-25 04:54:03', '2023-01-25 04:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipping_date` date NOT NULL,
  `delivered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_number` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`id`, `order_id`, `tracking_id`, `shipping_date`, `delivered_by`, `position_status`, `position_number`, `created_at`, `updated_at`) VALUES
(1, 2, 'AXD754456', '2023-02-02', NULL, 'panding', 0, '2023-02-02 10:18:59', '2023-02-02 10:19:01'),
(2, 2, 'AXD754456', '2023-02-02', NULL, 'process', 1, '2023-02-02 10:19:52', '2023-02-02 10:19:53'),
(3, 2, 'AXD754456', '2023-02-02', NULL, 'delivered', 2, '2023-02-02 10:20:52', '2023-02-02 10:20:53'),
(6, 2, 'AXD754456', '2023-02-05', NULL, 'Pending', 4, '2023-02-05 08:15:12', '2023-02-05 08:15:12'),
(7, 1, 'ACD232', '2023-02-05', NULL, 'On Delivery', 2, '2023-02-05 08:22:32', '2023-02-05 08:22:32'),
(8, 1, 'ACD232', '2023-02-05', NULL, 'Delivered', 3, '2023-02-05 08:23:22', '2023-02-05 08:23:22');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `discount_amount`, `discount_type`, `max_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 6, 'percentage', 34, 1, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(2, 6, 4, 'flat', 0, 1, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(3, 7, 4, 'flat', 0, 1, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(4, 8, 5, 'flat', 0, 1, '2023-01-31 01:54:49', '2023-01-31 01:54:49'),
(5, 7, 4, 'percentage', 50, 1, '2023-02-09 08:24:01', '2023-02-09 08:24:01'),
(6, 8, 4, 'percentage', 50, 1, '2023-02-09 08:24:01', '2023-02-09 08:24:01'),
(7, 5, 4, 'flat', NULL, 1, '2023-02-09 08:29:36', '2023-02-09 08:29:36'),
(8, 6, 4, 'flat', NULL, 1, '2023-02-09 08:29:36', '2023-02-09 08:29:36');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fabrics`
--

INSERT INTO `fabrics` (`id`, `fabric_name`, `fabric_code`, `slug`, `precedence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Voile Cotton', 'M0010401RGS1203821', 'voile-cotton', NULL, 1, '2023-01-25 07:35:22', '2023-01-25 07:35:22'),
(2, 'Zelenia', 'Ut id nemo', 'zelenia', NULL, 1, '2023-01-25 07:40:30', '2023-01-25 08:20:20'),
(3, 'Kennan Scott', 'Blanditiis veniam d', 'kennan-scott', NULL, 1, '2023-01-25 07:48:07', '2023-01-25 07:48:07'),
(4, 'Sandra Mcconnell', 'Qui', 'sandra-mcconnell', NULL, 0, '2023-01-25 07:49:43', '2023-01-25 08:19:53'),
(5, 'Quyn Tillman', 'Dignissimos quis nih', 'quyn-tillman', NULL, 1, '2023-01-25 08:03:31', '2023-01-25 08:03:31'),
(6, 'Veronica Clayton', 'Sed iure labore adip', 'veronica-clayton', NULL, 1, '2023-01-25 08:07:14', '2023-01-25 08:07:14'),
(7, 'Geraldine Finch', 'Consectetur', 'geraldine-finch', NULL, 1, '2023-01-25 08:07:23', '2023-01-25 08:18:09'),
(9, 'Rhiannon Franks', 'Beatae vitae quisqua', 'rhiannon-franks', NULL, 1, '2023-01-25 08:20:33', '2023-01-25 08:20:33'),
(10, 'Whitney Snider', 'Fuga In laborum ape', 'whitney-snider', NULL, 1, '2023-01-25 08:20:41', '2023-01-25 08:20:41'),
(11, 'Kylee Wynn', 'Laudantium', 'kylee-wynn', NULL, 0, '2023-01-25 08:20:50', '2023-01-25 23:37:18'),
(12, 'Dillon Meyers', 'Vel beatae amet', 'dillon-meyers', NULL, 1, '2023-01-25 08:21:05', '2023-01-25 23:46:48'),
(13, 'Kalia Santos', 'Sunt quasi est esse', 'kalia-santos', NULL, 1, '2023-01-25 08:21:12', '2023-01-25 08:21:12');

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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `warning_amount` int(11) NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `stock`, `warning_amount`, `warehouse`, `created_at`, `updated_at`) VALUES
(1, 3, 267, 10, NULL, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(3, 5, 507, 10, NULL, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(4, 6, 36, 10, NULL, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(5, 7, 182, 10, NULL, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(6, 8, 71, 10, NULL, '2023-01-31 01:54:49', '2023-01-31 01:54:49');

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
(11, '2022_12_13_063024_create_product_attrs_table', 1),
(12, '2023_01_03_112319_create_payments_table', 1),
(13, '2023_01_04_130809_create_attribute_values_table', 1),
(14, '2023_01_04_130916_create_attributes_table', 1),
(15, '2023_01_22_090936_create_discounts_table', 2),
(16, '2023_01_24_121207_create_colours_table', 3),
(17, '2023_01_24_121348_create_sizes_table', 3),
(18, '2023_01_24_121418_create_fabrics_table', 3),
(19, '2023_01_30_124951_create_product_colours_table', 4),
(20, '2023_01_30_125118_create_product_sizes_table', 4),
(21, '2023_01_30_125155_create_product_fabrics_table', 4),
(23, '2023_02_05_052839_create_order_details_table', 6),
(24, '2023_02_06_132655_create_campaigns_table', 7),
(25, '2023_02_07_071912_create_campaign_products_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 order active , 0 cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_position` int(11) DEFAULT 0,
  `tracking_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `order_id`, `user_id`, `total_price`, `shipping_method`, `payment_method`, `order_data`, `status`, `created_at`, `updated_at`, `order_position`, `tracking_id`) VALUES
(1, 2, 'AD124', 1, 364.00, 'Cash On', 'Bank', '\"{dhfghfd: dgdghdfg}\"', 0, '2023-02-02 09:44:25', '2023-02-05 08:45:53', 3, 'ACD232'),
(2, 3, 'AS1245', 2, 210.00, 'Point', 'Bkash', '\"{taka:1245,prod:2}\"', 1, '2023-02-02 09:48:35', '2023-02-05 08:15:12', 3, 'AXD754456'),
(3, 5, 'AE5456', 2, 7897.00, 'Cash', 'Nagad', '\"{dfdg:gdgd}\"', 0, '2023-02-02 10:07:15', '2023-02-02 10:07:16', 2, 'SF45566');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `colour_id`, `size_id`, `fabric_id`, `user_id`, `quantity`, `selling_price`, `buying_price`, `total_buying_price`, `total_selling_price`, `unit_discount`, `total_discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 2, 5, 4, 2, 2, 0, 2, 45.0000, 42.0000, 82.0000, 90.0000, 0, 0, 1, '2023-02-05 07:34:25', '2023-02-05 07:34:26'),
(2, 2, 8, 4, 5, 3, 6, 3, 0, 2, 60.0000, 50.0000, 100.0000, 120.0000, 0, 0, 1, '2023-02-05 07:47:27', '2023-02-05 07:47:28');

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
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL,
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'selim@mailc.com', 'ec1f8da02f39f52a49b64f44084e534ae5e7f38f1016d40077fbcbd3bed34672', '[\"*\"]', NULL, '2023-02-05 03:28:40', '2023-02-05 03:28:40'),
(2, 'App\\Models\\User', 3, 'API TOKEN', 'bce74b084da245bbe1fa9c765bdcd0b89b2edf8b1d6791ba5e000a71c9c4d22e', '[\"*\"]', NULL, '2023-02-05 03:34:10', '2023-02-05 03:34:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_four` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_five` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `mrp_price` int(11) NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `care` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_of_origin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for down the product',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `sub_category_id`, `description`, `sku`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `cost`, `mrp_price`, `dimension`, `weight`, `care`, `design_code`, `country_of_origin`, `status`, `created_at`, `updated_at`, `is_discount`) VALUES
(3, 'Zena Gordon', 2, 7, NULL, 'Veniam quia deserun', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvOu_xVVRCcdwutaWwCQ0Jp0zsPv4v1liyQ&usqp=CAU', NULL, NULL, NULL, NULL, NULL, 32, 849, 'Sint et voluptas fac', 'Error fugit odio li', 'Perspiciatis culpa', 'Delectus nostrud as', NULL, 1, '2023-01-31 00:30:05', '2023-01-31 00:30:05', 0),
(5, 'Heidi Goff', 2, 5, '<p><strong style=\"color: rgb(0, 0, 0);\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0);\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'Dolorum facere optio', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvOu_xVVRCcdwutaWwCQ0Jp0zsPv4v1liyQ&usqp=CAU', NULL, NULL, NULL, NULL, NULL, 100, 625, 'Velit incidunt nobi', 'Est voluptatum iste', 'Qui nemo sapiente am', 'Aspernatur dolorem n', 'Qui nemo sapiente am', 1, '2023-01-31 00:58:12', '2023-01-31 00:58:12', 0),
(6, 'Gregory Berg', 3, 5, '<p>Deserunt eos volupta.</p>', 'Consequatur sunt cil', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvOu_xVVRCcdwutaWwCQ0Jp0zsPv4v1liyQ&usqp=CAU', NULL, NULL, NULL, NULL, NULL, 67, 111, 'Aut exercitationem v', 'Quis provident non', 'In in voluptas optio', 'Doloribus doloremque', 'In in voluptas optio', 0, '2023-01-31 01:45:12', '2023-01-31 01:45:12', 1),
(7, 'Kalia Mcintosh', 2, 5, '<p>Esse proident, id, m.</p>', 'Rerum molestiae aliq', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvOu_xVVRCcdwutaWwCQ0Jp0zsPv4v1liyQ&usqp=CAU', NULL, NULL, NULL, NULL, NULL, 29, 892, 'Ex sed error et erro', 'Pariatur Illum ull', 'Ut est amet sint i', 'Nulla hic molestiae', 'Ut est amet sint i', 1, '2023-01-31 01:48:15', '2023-01-31 01:48:15', 0),
(8, 'Valentine George', 4, 5, '<p>Explicabo. Nobis qui.</p>', 'Consequatur est re', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvvOu_xVVRCcdwutaWwCQ0Jp0zsPv4v1liyQ&usqp=CAU', NULL, NULL, NULL, NULL, NULL, 79, 828, 'Sit ut qui cum aute', 'Ea sapiente cum sunt', 'Velit doloremque per', 'Occaecat quia natus', 'Velit doloremque per', 0, '2023-01-31 01:54:49', '2023-01-31 01:54:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_attrs`
--

CREATE TABLE `product_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, 3, 5, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(6, 3, 3, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(9, 5, 5, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(10, 5, 3, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(11, 6, 7, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(12, 6, 2, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(13, 7, 7, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(14, 7, 2, '2023-01-31 01:48:15', '2023-01-31 01:48:15');

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
(1, 3, 6, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(2, 3, 4, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(5, 5, 4, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(6, 5, 5, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(7, 6, 13, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(8, 6, 11, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(9, 7, 2, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(10, 7, 4, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(11, 8, 12, '2023-01-31 01:54:49', '2023-01-31 01:54:49'),
(12, 8, 10, '2023-01-31 01:54:49', '2023-01-31 01:54:49');

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
(1, 3, 3, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(2, 3, 4, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(5, 5, 4, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(6, 5, 5, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(7, 6, 5, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(8, 6, 6, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(9, 7, 6, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(10, 7, 4, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(11, 8, 6, '2023-01-31 01:54:49', '2023-01-31 01:54:49'),
(12, 8, 3, '2023-01-31 01:54:49', '2023-01-31 01:54:49');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `slug`, `precedence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', 's', NULL, 1, '2023-01-25 05:37:34', '2023-01-25 05:37:34'),
(2, 'M', 'm', NULL, 0, '2023-01-25 05:37:55', '2023-01-25 06:31:10'),
(3, 'L', 'l', NULL, 1, '2023-01-25 05:38:06', '2023-01-25 05:38:06'),
(4, 'XL', 'xl', NULL, 1, '2023-01-25 05:38:15', '2023-01-25 05:38:15'),
(5, 'XXL', 'xxl', NULL, 0, '2023-01-25 05:38:24', '2023-01-25 06:31:33'),
(6, '3XL', '3xl', NULL, 1, '2023-01-25 05:39:01', '2023-01-25 06:31:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 for dissable the user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Niloy', 'nila@alam.com', NULL, '$tytu8797667', '015846987', 'Dhaka', 1, NULL, '2023-02-02 09:46:06', '2023-02-02 09:46:07'),
(2, 'Selim', 'selim@mailc.com', NULL, '$2y$10$LDdg9xv8M36Pfi40/dHwXedTv8qvUgKwiE9ixvPQdze1zIukSeqUe', '015469875', 'Ctg', 1, NULL, '2023-02-02 09:47:04', '2023-02-02 09:47:05'),
(3, 'Jammal', 'jamal@mailc.com', NULL, '$2y$10$k35e3g0NRu3owjVfOthyq.g7GIfoLEVp415cc2uBB26POTyIt1Bj6', NULL, NULL, 1, NULL, '2023-02-05 03:34:10', '2023-02-05 03:34:10');

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
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
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
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
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
-- Indexes for table `product_attrs`
--
ALTER TABLE `product_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colours`
--
ALTER TABLE `product_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_attrs`
--
ALTER TABLE `product_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
