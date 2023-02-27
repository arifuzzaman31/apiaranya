-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 08:42 AM
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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_default` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_banner_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_start_date` date NOT NULL,
  `campaign_expire_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `categories` (`id`, `category_name`, `slug`, `description`, `parent_category`, `category_image_one`, `category_image_two`, `category_image_three`, `category_video`, `status`, `precedence`, `created_at`, `updated_at`) VALUES
(1, 'Women', 'women', NULL, '0', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(2, 'Men', 'men', NULL, '0', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL),
(3, 'Kids', 'kids', NULL, '0', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL),
(4, 'Home Furnishings', 'home-furnishings', NULL, '0', NULL, NULL, NULL, NULL, 1, 4, NULL, NULL),
(5, 'Beauty Collection', 'beauty-collection', NULL, '0', NULL, NULL, NULL, NULL, 1, 5, NULL, NULL),
(6, 'Accessories', 'accessories', NULL, '0', NULL, NULL, NULL, NULL, 1, 6, NULL, NULL),
(7, 'Saree', 'saree', NULL, '1', 'v1677076428/aranya/rw3lihql0eorubsjzq3n.jpg', 'v1677076502/aranya/sy5hjzl4ym2vpujrrvuk.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676453485/aranya/omjgnbwzpkdgz3z8dxtc.png', NULL, 1, 1, NULL, '2023-02-22 08:35:03'),
(8, 'Salwar Kameez', 'salwar-kameez', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676454334/aranya/znxfhmyog1jul4znuwtt.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676454356/aranya/bgyvhtm5blbuat0rpsbw.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676454437/aranya/ubbmyack1on1bjycorts.jpg', NULL, 1, 2, NULL, '2023-02-15 03:47:18'),
(9, 'Kurti & Fatua', 'kurti-fatua', NULL, '1', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL),
(10, 'Tops & Shirts', 'tops-shirts', NULL, '1', NULL, NULL, NULL, NULL, 1, 4, NULL, NULL),
(11, 'Kimono', 'kimono', NULL, '1', NULL, NULL, NULL, NULL, 1, 5, NULL, NULL),
(12, 'Kaftan', 'kaftan', NULL, '1', NULL, NULL, NULL, NULL, 1, 6, NULL, NULL),
(13, 'Panjabi', 'panjabi', NULL, '2', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(14, 'Vest', 'vest', NULL, '2', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL),
(15, 'T-Shirt', 't-shirt', NULL, '2', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL),
(16, 'Fatua', 'fatua', NULL, '2', NULL, NULL, NULL, NULL, 1, 4, NULL, NULL),
(17, 'Shirts', 'shirts', NULL, '2', NULL, NULL, NULL, NULL, 1, 5, NULL, NULL),
(18, 'Jackets', 'jackets', NULL, '2', NULL, NULL, NULL, NULL, 1, 6, NULL, NULL),
(19, 'Baby Kantha', 'baby-kantha', NULL, '4', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(20, 'Cushion Cover', 'cushion-cover', NULL, '4', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL),
(21, 'Ceramic', 'ceramic', NULL, '4', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL),
(22, 'Table Cloth', 'table-cloth', NULL, '4', NULL, NULL, NULL, NULL, 1, 4, NULL, NULL),
(23, 'Bed Cover', 'bed-cover', NULL, '4', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676458502/aranya/yya1wubnvdia0ws4qt5l.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676458532/aranya/kxfdybdpthfrdpdxo622.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676458561/aranya/kgbihqnqotb6cbzetq05.jpg', NULL, 1, 5, NULL, '2023-02-15 04:56:02'),
(24, 'Basket', 'basket', NULL, '4', NULL, NULL, NULL, NULL, 1, 6, NULL, NULL),
(25, 'Napkin', 'napkin', NULL, '4', NULL, NULL, NULL, NULL, 1, 7, NULL, NULL),
(26, 'Table Runner', 'table-runner', NULL, '4', NULL, NULL, NULL, NULL, 1, 8, NULL, NULL),
(27, 'Aatong', 'aatong', NULL, '6', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(28, 'Cangbuk', 'cangbuk', NULL, '6', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL),
(29, 'Ashtodhatu Jewellery', 'ashtodhatu-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL),
(30, 'Silver Jewellery', 'silver-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 1, 4, NULL, NULL),
(31, 'Metal Jewellery', 'metal-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 1, 5, NULL, NULL),
(32, 'Other Jewellery', 'other-jewellery', NULL, '6', NULL, NULL, NULL, NULL, 1, 6, NULL, NULL),
(33, 'Scarves', 'scarves', NULL, '6', NULL, NULL, NULL, NULL, 1, 7, NULL, NULL),
(34, 'Orna', 'orna', NULL, '6', NULL, NULL, NULL, NULL, 1, 8, NULL, NULL),
(35, 'Stoles', 'stoles', NULL, '6', NULL, NULL, NULL, NULL, 1, 9, NULL, NULL),
(36, 'Shawls', 'shawls', NULL, '6', NULL, NULL, NULL, NULL, 1, 10, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `process_date` date DEFAULT NULL,
  `process_state` tinyint(4) DEFAULT NULL,
  `process_value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `on_delivery_date` date DEFAULT NULL,
  `on_delivery_state` tinyint(4) DEFAULT NULL,
  `on_delivery_value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_state` tinyint(4) DEFAULT NULL,
  `delivery_value` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `size_id` int(11) DEFAULT NULL,
  `colour_id` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `warning_amount` int(11) NOT NULL DEFAULT 10,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(25, '2023_02_07_071912_create_campaign_products_table', 7),
(26, '2023_02_13_080837_create_pages_table', 8),
(27, '2023_02_18_200445_create_user_shipping_infos_table', 9),
(28, '2023_02_18_201457_create_user_billing_infos_table', 9),
(29, '2023_02_23_044707_create_category_fabrics_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for COD/1 for MPAY/ 2 for POS/ 3 for CCRD/4 for BOD if not set default COD',
  `payment_method_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `vat_rate` double(4,2) NOT NULL DEFAULT 0.00,
  `vat_amount` double(4,2) NOT NULL DEFAULT 0.00,
  `total_item` int(11) NOT NULL DEFAULT 0,
  `shipping_amount` int(11) NOT NULL DEFAULT 0,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `coupon_discount` double(8,2) DEFAULT NULL,
  `coupon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 not paid 1 = paid',
  `validation_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_info`)),
  `requested_delivery_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 order active , 0 cancel',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_position` int(11) DEFAULT 0,
  `is_same_address` int(11) DEFAULT 0,
  `tracking_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` tinyint(4) DEFAULT 0 COMMENT '0 for home, 1 for pickup point',
  `percel_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for BOX 1 for DOC if not set default BOX',
  `pickup_point_no` int(50) DEFAULT NULL
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_type`, `image_one`, `back_url_one`, `image_two`, `back_url_two`, `image_three`, `back_url_three`, `image_four`, `back_url_four`, `image_five`, `back_url_five`, `image_six`, `status`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', 'https://res.cloudinary.com/diyc1dizi/video/upload/v1676293175/aranya/xf6ije9ipvpxrbmpu4bz.webm', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676527368/aranya/r98zxbtcywpy4jocgyqd.jpg', 'salwar-kameez', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676527505/aranya/rt05psuzr0zscuru1bd0.jpg', 'kids', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676527416/aranya/otzzsonzgftymddvjqyl.jpg', 'beauty-collection', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1677161203/aranya/cjgiax3rbs8p72sblsyf.jpg', 'kimono', NULL, 1, '2023-02-13 11:20:14', '2023-02-26 07:49:33');

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
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vandor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embellishment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `making` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `season` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variety` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artist_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consignment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category_fabric`
--
ALTER TABLE `category_fabric`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_attrs`
--
ALTER TABLE `product_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
