-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 06:03 AM
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

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `slug`, `campaign_title`, `campaign_banner_default`, `campaign_meta_image`, `campaign_banner_one`, `campaign_banner_two`, `campaign_start_date`, `campaign_expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eid-2022', NULL, 'Enjoy Eid', 'https://www.shutterstock.com/shutterstock/photos/1432421069/display_1500/stock-vector-photo-or-graphic-editor-on-computer-vector-illustration-flat-cartoon-laptop-screen-with-design-or-1432421069.jpg', 'https://www.shutterstock.com/shutterstock/photos/1432421069/display_1500/stock-vector-photo-or-graphic-editor-on-computer-vector-illustration-flat-cartoon-laptop-screen-with-design-or-1432421069.jpg', NULL, NULL, '2023-02-07', '2023-02-26', 1, '2023-02-07 11:51:46', '2023-02-07 11:51:47'),
(2, 'Adrian Vasquezaa', 'adrian-vasquezaa', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2023-05-20', '2023-06-15', 1, '2023-02-08 09:01:22', '2023-02-23 03:18:11'),
(4, 'Zia Palmer', NULL, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2018-07-25', '2018-07-31', 0, '2023-02-08 09:05:05', '2023-02-08 09:05:05'),
(5, 'Boishakh', 'boishakh', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2023-02-09', '2023-04-08', 1, '2023-02-08 09:17:03', '2023-02-23 03:15:06'),
(6, 'Falgun-23', NULL, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676192714/nelsjzhnuqzrrgxkun4x.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1676192714/nelsjzhnuqzrrgxkun4x.png', NULL, NULL, '2023-02-14', '2023-02-27', 0, '2023-02-12 03:05:23', '2023-02-12 03:05:23'),
(7, 'Orlando Leon', NULL, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2023-02-14', '2023-02-24', 1, '2023-02-14 09:57:38', '2023-02-14 09:57:38'),
(8, 'Edfghfgh', NULL, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1675867456/pjcuaraszf9jesnuecdr.jpg', NULL, NULL, NULL, '2023-02-24', '2023-02-28', 1, '2023-02-23 02:17:35', '2023-02-23 02:17:35');

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
(7, 9, 1, 1, NULL, NULL),
(8, 10, 1, 1, NULL, NULL);

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

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `color_name`, `color_code`, `slug`, `precedence`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#e64747', 'red', NULL, 1, '2023-01-24 07:35:13', '2023-02-13 05:13:00'),
(2, 'Blue', '#2778ce', 'blue', NULL, 1, '2023-01-24 07:39:27', '2023-02-13 05:12:43'),
(3, 'Green', '#77e548', 'green', NULL, 1, '2023-01-24 07:54:02', '2023-02-13 05:12:22'),
(5, 'White', '#fafafa', 'white', NULL, 1, '2023-01-25 00:05:35', '2023-02-13 05:11:58'),
(7, 'Blue Light', '#6179f5', 'blue-light', NULL, 1, '2023-01-25 04:54:03', '2023-02-16 00:08:21'),
(8, 'Light Green', '#7de170', 'light-green', NULL, 1, '2023-02-13 04:19:42', '2023-02-13 04:19:42'),
(9, 'Purple', '#cf4aca', 'purple', NULL, 1, '2023-02-14 05:57:10', '2023-02-14 05:57:10');

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

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `product_id`, `discount_amount`, `discount_type`, `max_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 7, 'percentage', 450, 1, '2023-02-12 03:08:16', '2023-02-12 03:08:16'),
(2, 7, 25, 'flat', NULL, 1, '2023-02-12 03:08:16', '2023-02-12 03:08:16'),
(3, 3, 10, 'percentage', 80, 1, '2023-02-14 09:52:35', '2023-02-14 09:52:35'),
(4, 3, 14, 'percentage', 56, 1, '2023-02-15 08:30:58', '2023-02-15 08:30:58'),
(5, 4, 32, 'flat', NULL, 1, '2023-02-15 08:33:10', '2023-02-15 08:33:10'),
(6, 8, 25, 'flat', NULL, 1, '2023-02-18 08:23:22', '2023-02-18 08:23:22'),
(7, 9, 25, 'flat', NULL, 1, '2023-02-18 08:23:22', '2023-02-18 08:23:22'),
(8, 10, 25, 'flat', NULL, 1, '2023-02-18 08:23:22', '2023-02-18 08:23:22');

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
(13, 'Cotton', 'Sunt quasi est esse', 'cotton', NULL, 1, '2023-01-25 08:21:12', '2023-02-16 00:08:52');

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

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `size_id`, `colour_id`, `stock`, `warning_amount`, `warehouse`, `created_at`, `updated_at`) VALUES
(1, 3, 0, 0, 267, 10, NULL, '2023-01-31 00:30:05', '2023-01-31 00:30:05'),
(3, 5, 0, 0, 507, 10, NULL, '2023-01-31 00:58:12', '2023-01-31 00:58:12'),
(4, 6, 4, 3, 36, 10, NULL, '2023-01-31 01:45:12', '2023-01-31 01:45:12'),
(5, 7, 0, 0, 182, 10, NULL, '2023-01-31 01:48:15', '2023-01-31 01:48:15'),
(6, 8, 0, 0, 71, 10, NULL, '2023-01-31 01:54:49', '2023-01-31 01:54:49'),
(7, 9, 0, 0, 568, 10, NULL, '2023-02-12 05:23:46', '2023-02-12 05:23:46'),
(8, 10, 0, 0, 426, 10, NULL, '2023-02-12 05:32:51', '2023-02-12 05:32:51'),
(9, 11, 0, 0, 76, 10, NULL, '2023-02-14 07:49:43', '2023-02-14 07:49:43'),
(10, 12, 0, 0, 977, 10, NULL, '2023-02-14 07:55:55', '2023-02-14 07:55:55'),
(11, 3, 0, 0, 198, 10, NULL, '2023-02-14 09:46:43', '2023-02-14 09:46:43'),
(12, 4, 0, 0, 532, 10, NULL, '2023-02-15 05:00:26', '2023-02-15 05:00:26'),
(13, 5, 0, 0, 242, 10, NULL, '2023-02-15 08:53:43', '2023-02-15 08:53:43'),
(14, 6, 4, 8, 714, 10, NULL, '2023-02-15 08:55:32', '2023-02-15 08:55:32'),
(15, 7, 0, 0, 724, 10, NULL, '2023-02-15 08:57:01', '2023-02-15 08:57:01'),
(16, 8, 0, 0, 27, 10, NULL, '2023-02-15 08:58:28', '2023-02-15 08:58:28'),
(17, 9, 0, 0, 17, 10, NULL, '2023-02-15 08:59:46', '2023-02-15 08:59:46'),
(18, 10, 0, 0, 949, 10, NULL, '2023-02-15 09:03:38', '2023-02-15 09:03:38'),
(19, 11, 0, 0, 745, 10, NULL, '2023-02-15 23:53:44', '2023-02-15 23:53:44'),
(20, 12, 0, 0, 641, 10, NULL, '2023-02-15 23:55:17', '2023-02-15 23:55:17'),
(21, 20, 14, 9, 13, 10, NULL, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(22, 20, 11, 8, 68, 10, NULL, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(23, 20, 2, 7, 97, 10, NULL, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(24, 25, 14, 9, 58, 10, NULL, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(25, 25, 10, 1, 64, 10, NULL, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(26, 25, 8, 3, 34, 10, NULL, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(27, 38, NULL, NULL, 210, 10, NULL, '2023-02-16 09:59:00', '2023-02-16 09:59:00');

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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `shipping_method`, `payment_method`, `payment_method_name`, `vat_rate`, `vat_amount`, `total_item`, `shipping_amount`, `transaction_id`, `discount`, `coupon_discount`, `coupon`, `card_type`, `payment_status`, `validation_id`, `order_date`, `payment_info`, `requested_delivery_date`, `payment_date`, `status`, `created_at`, `updated_at`, `order_position`, `is_same_address`, `tracking_id`, `delivery_type`, `percel_type`, `pickup_point_no`) VALUES
(2, 'AS1245', 2, 210.00, 'Point', 0, NULL, 0.00, 0.00, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-08-03', NULL, NULL, NULL, 1, '2023-02-02 09:48:35', '2023-02-12 03:00:23', 0, 0, 'AXD754456', 1, 1, NULL),
(3, 'AE5456', 2, 7897.00, 'Cash', 0, NULL, 0.00, 0.00, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2023-04-22', NULL, NULL, NULL, 1, '2023-02-02 10:07:15', '2023-02-02 10:07:16', 0, 0, 'SF45566', 1, 1, NULL);

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
(1, 3, 5, 2, 5, 4, 2, 2, 0, 2, 45.0000, 42.0000, 82.0000, 90.0000, 0, 0, 1, '2023-02-05 07:34:25', '2023-02-05 07:34:26'),
(2, 2, 8, 4, 5, 3, 6, 3, 0, 2, 60.0000, 50.0000, 100.0000, 120.0000, 0, 0, 1, '2023-02-05 07:47:27', '2023-02-05 07:47:28');

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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `description`, `sku`, `vandor`, `brand`, `designer`, `embellishment`, `making`, `lead_time`, `season`, `variety`, `product_image`, `fit`, `artist_name`, `ingredients`, `consignment`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `cost`, `mrp_price`, `dimension`, `weight`, `care`, `design_code`, `country_of_origin`, `status`, `created_at`, `updated_at`, `is_discount`) VALUES
(3, 'Emery Powers', 'emery-powers', 4, 23, '<p><span style=\"color: rgb(84, 84, 84);\">By unifying the natural dye of ol at paar and anchol and golden body in the silk saree.Natural print has been applied to give this composition a festive look. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p>', 'Mollit ea voluptates', 'Davis Brennan', 'Gareth Quinn', 'Charde Watkins', 'Howard Bryant', 'Benjamin Sampson', 'Hilda Parrish', 'Honorato Lindsey', 'Odessa Christensen', 'v1676473056/aranya/xb2iji6yyawrxrdmlidj.jpg', 'Bertha Stevenson', 'Adele Huff', 'Cynthia Page', 'Carissa Evans', 'v1676473398/aranya/lgkpsmwyqbsj6juhlzep.jpg', 'v1676526893/aranya/lh1au8jnmtdhttjljoxm.jpg', 'v1676473405/aranya/sfyzhwqcozrkehezfgcj.jpg', NULL, NULL, 360, 417, 'Nam qui qui et sint', 'Porro animi Nam qua', 'Distinctio Autem du', 'Obcaecati labore vel', 'Distinctio Autem du', 1, '2023-02-14 09:46:43', '2023-02-14 09:46:43', 0),
(4, 'Shaeleigh Crawford', 'shaeleigh-crawford', 1, 8, '<p><span style=\"color: rgb(35, 38, 41);\">seems to be the way to get an array of the postIds that would be revealed by this:seems to be the way to get an array of the postIds that would be revealed by this:seems to be the way to get an array of the postIds that would be revealed by this:seems to be the way to get an array of the postIds that would be revealed by this:seems to be the way to get an array of the postIds that would be revealed by this:</span></p><p><br></p><p><span style=\"color: rgb(35, 38, 41);\">seems to be the way to get an array of the postIds that would be revealed by this:seems to be the way to get an array of the postIds that would be revealed by this:</span></p>', 'Dignissimos totam be', 'Aurelia Britt', 'Vera Bradshaw', 'Sybil Wood', 'Gretchen Horton', 'Odysseus Hale', 'Shoshana Velasquez', 'Armando Cote', 'Lana Kline', 'v1676526742/aranya/aew1ez3h0kpajynzy365.jpg', 'Daphne Wongf', 'Shelly Rivers', 'Emi Simon', 'Ina Riddle', 'v1676472969/aranya/xolghx6cmblgh9aw6m3b.jpg', 'v1676526742/aranya/aew1ez3h0kpajynzy365.jpg', 'v1676473167/aranya/c6eovswepu32p65rt9av.jpg', 'v1676473398/aranya/lgkpsmwyqbsj6juhlzep.jpg', NULL, 20, 846, 'Culpa in libero iure', 'A cum dicta excepteu', 'Illum laboriosam e', 'Et et consequuntur m', 'Illum laboriosam e', 1, '2023-02-15 05:00:26', '2023-02-15 05:00:26', 0),
(5, 'Dai York', 'dai-york', 4, 19, '<p><span style=\"color: rgb(84, 84, 84);\">The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p>', 'Et eligendi doloribu', 'Jena Burns', 'Brenna Curtis', 'Dillon Battle', 'Gareth Boyd', 'Glenna Ochoa', 'Honorato Garrett', 'Leslie Chang', 'Chelsea Kline', 'v1676472782/aranya/y1rlsxmnxnfvjnf6qugd.jpg', 'Kiayada Parker', 'Jessamine Holland', 'Cassandra Bauer', 'September Forbes', 'v1676472782/aranya/y1rlsxmnxnfvjnf6qugd.jpg', 'v1676472795/aranya/tjp2qslsjlnb2ertnwrf.jpg', NULL, NULL, NULL, 56, 297, 'Ad lorem magnam dolo', 'Excepturi eiusmod in', 'Illum ad delectus', 'Voluptate velit maxi', 'Illum ad delectus', 1, '2023-02-15 08:53:42', '2023-02-15 08:53:42', 0),
(6, 'Sharon Tate', 'sharon-tate', 4, 20, '<p><span style=\"color: rgb(84, 84, 84);\">The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p><p><span style=\"color: rgb(84, 84, 84);\"><span class=\"ql-cursor\">﻿</span>The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p>', 'Vel ut sint dolor a', 'Jonas Hardin', 'Geraldine Hale', 'Tyler Mcdonald', 'Adena Walter', 'Keefe Baldwin', 'Liberty Foster', 'Paki Watkins', 'Kasimir Herman', 'v1676472920/aranya/xydyxxjaeo3sumldcqxi.jpg', 'Gabriel Crane', 'Paloma Barnett', 'Maggie Mayer', 'Xenos Guzman', 'v1676472920/aranya/xydyxxjaeo3sumldcqxi.jpg', NULL, NULL, NULL, NULL, 99, 214, '25x54x21cm', 'Vitae distinctio Ne', 'Beatae est blanditii', 'Dolore quo dolores p', 'Beatae est blanditii', 1, '2023-02-15 08:55:32', '2023-02-15 08:55:32', 0),
(7, 'Gwendolyn Madden', 'gwendolyn-madden', 2, 15, '<p><span style=\"color: rgb(84, 84, 84);\">The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p>', 'Qui rem ratione dict', 'Ferris Mosley', 'Cora Bennett', 'Amir Joseph', 'Daquan Allen', 'Madonna Ryan', 'Glenna Elliott', 'Jordan Wilkerson', 'Kylee Simmons', 'v1676472969/aranya/xolghx6cmblgh9aw6m3b.jpg', 'Avram Booker', 'Keely Lamb', 'Vaughan Harrison', 'India Shepherd', 'v1676472969/aranya/xolghx6cmblgh9aw6m3b.jpg', 'v1676472979/aranya/te4ooqlcrfnit0cofxeq.jpg', NULL, NULL, NULL, 255, 598, 'Molestiae veritatis', 'Magnam omnis necessi', 'Sint enim qui quis', 'Ad eum omnis fugit', 'Sint enim qui quis', 1, '2023-02-15 08:57:00', '2023-02-15 08:57:00', 0),
(8, 'Xantha Hoffman', 'xantha-hoffman', 6, 31, '<p><span style=\"color: rgb(84, 84, 84);\">The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p>', 'Illum proident exc', 'Danielle Cantu', 'Geoffrey Diaz', 'Anastasia Ayers', 'Melodie Donovan', 'India Cline', 'Karly Madden', 'Anne Green', 'Boris Sharpe', 'v1676473056/aranya/xb2iji6yyawrxrdmlidj.jpg', 'Griffin Reid', 'Ronan Morris', 'Heidi Rich', 'Claire Duran', 'v1676473056/aranya/xb2iji6yyawrxrdmlidj.jpg', 'v1676473066/aranya/tw9zew7r2jghkgmcufyn.jpg', NULL, NULL, NULL, 418, 774, 'Non culpa neque cons', 'Quibusdam doloribus', 'Corrupti eiusmod mi', 'Minima quaerat rerum', 'Corrupti eiusmod mi', 1, '2023-02-15 08:58:28', '2023-02-15 08:58:28', 0),
(9, 'Talon Daniel', 'talon-daniel', 2, 14, '<p><span style=\"color: rgb(84, 84, 84);\">The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.</span></p>', 'Id nobis minim volup', 'Leilani Fitzpatrick', 'Lynn Bullock', 'Cassady Lee', 'Aurora Wilkinson', 'Zoe Buckner', 'Cheryl Callahan', 'Athena Spencer', 'Alexandra Mcguire', 'v1676473145/aranya/esm6eocuxulddnxrzy00.jpg', 'Yael Mcintosh', 'Imogene Clay', 'Amy Johns', 'Erin Williamson', 'v1676473145/aranya/esm6eocuxulddnxrzy00.jpg', 'v1676473152/aranya/jrnbul4qbwsfzq4v3qfm.jpg', 'v1676473161/aranya/ahrod0rftnn8qgpd7uo7.jpg', 'v1676473167/aranya/c6eovswepu32p65rt9av.jpg', NULL, 300, 534, 'Enim asperiores volu', 'Ut sint labore nostr', 'Dolorum consequatur', 'Rerum velit itaque', 'Dolorum consequatur', 1, '2023-02-15 08:59:45', '2023-02-15 08:59:45', 0),
(10, 'Karleigh Whitfield', 'karleigh-whitfield', 5, NULL, '<p><span style=\"color: rgb(84, 84, 84);\">The fascinating shades of greenish-blue and brown in this bed cover are extracted from indigo, myrobalan, and catechu. Wax-print and hand embroidery have been used to ensure the most extreme solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.fsf</span></p>', 'Doloribus incididunt', 'Erich Dunn', 'Quincy Hess', 'Roanna Delgado', 'Wilma Juarez', 'Gay Mcpherson', 'Catherine Hill', 'Fredericka Emerson', 'Lucas Brooks', 'v1676473398/aranya/lgkpsmwyqbsj6juhlzep.jpg', 'Whoopi Ferrell', 'Sloane Pierce', 'Aaron Allison', 'Wallace Harvey', 'v1676473398/aranya/lgkpsmwyqbsj6juhlzep.jpg', 'v1676473405/aranya/sfyzhwqcozrkehezfgcj.jpg', NULL, NULL, NULL, 59, 352, 'Consequuntur in duis', 'Esse vel quam ut do', 'Voluptatibus volupta', 'Animi dicta adipisc', 'Voluptatibus volupta', 1, '2023-02-15 09:03:37', '2023-02-15 09:03:37', 0),
(11, 'Erin James', 'erin-james', 4, 22, '<p><span style=\"color: rgb(0, 0, 0);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 'Accusantium est rem', 'Ira Walters', 'Lewis Abbott', 'Dara Duncan', 'Kermit Tate', 'Ila Talley', 'Cairo Potts', 'Xavier Callahan', 'Libby Kemp', 'v1676526742/aranya/aew1ez3h0kpajynzy365.jpg', 'Kaitlin Rivera', 'Charlotte Booth', 'Drew Knox', 'Yael Newton', 'v1676526742/aranya/aew1ez3h0kpajynzy365.jpg', 'v1676526750/aranya/jwnwydmvvtoniwxsq0js.jpg', NULL, NULL, NULL, 578, 751, 'Velit enim voluptat', 'Ad sit nemo sit ea', 'Aliquam a distinctio', 'Odio sed necessitati', 'Aliquam a distinctio', 1, '2023-02-15 23:53:43', '2023-02-15 23:53:43', 0),
(12, 'Michelle Blair', 'michelle-blair', 3, NULL, '<p><span style=\"color: rgb(0, 0, 0);\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum</span></p>', 'Cum repellendus Com', 'Lillian Stein', 'Uta Vasquez', 'Rhona Montgomery', 'Virginia Charles', 'Alfonso Moss', 'Shay Carr', 'May Stafford', 'Megan Barnes', 'v1676526886/aranya/kwpg3cxqgieex7k6xxp7.jpg', 'Latifah Kim', 'Pandora Stephenson', 'Daphne Noel', 'Alfonso Horne', 'v1676526886/aranya/kwpg3cxqgieex7k6xxp7.jpg', 'v1676526893/aranya/lh1au8jnmtdhttjljoxm.jpg', NULL, NULL, NULL, 418, 748, 'Dolor in veniam est', 'Esse alias laudanti', 'Exercitation veritat', 'Placeat aliqua Eni', 'Exercitation veritat', 1, '2023-02-15 23:55:17', '2023-02-15 23:55:17', 0),
(14, 'Hadley Cohen', 'hadley-cohen', 4, 24, '<p><span style=\"color: rgb(35, 38, 41);\">I need to select multiple options and and based on the the same i need to add the rows dynamically.</span></p>', 'Assumenda sapiente e', 'Joelle Morales', 'Colorado Harrell', 'Desiree Macias', 'Sydney Lyons', 'Walker Owens', 'Cedric Austin', 'Ross Travis', 'Hiram Gates', 'v1676551676/aranya/by5wqxfnzdd2abmc1gy9.jpg', 'Eliana Trujillo', 'Selma Hurst', 'Hanae Riddle', 'Tad Norton', 'v1676551676/aranya/by5wqxfnzdd2abmc1gy9.jpg', 'v1676551685/aranya/peewstrofl7zlzetyobo.jpg', 'v1676551704/aranya/defa90zsjhosoyl42qtg.jpg', NULL, NULL, 100, 983, 'Quibusdam aut duis e', 'Officiis ipsa sit c', 'Omnis rerum nostrum', 'Ducimus corporis ad', 'Omnis rerum nostrum', 1, '2023-02-16 06:50:27', '2023-02-16 06:50:27', 0),
(20, 'August Rasmussen', 'august-rasmussen', 5, NULL, '<p><span style=\"color: rgb(33, 53, 71);\">Computed properties allow us to declaratively compute derived values. However, there are cases where we need to perform \"side effects\" in reaction to state changes - for example, mutating the DOM, or changing another piece of state based on the result of an async operation.</span></p>', 'A ullam ea inventore', 'Julie Duncan', 'Jermaine Franco', 'Hilary Jimenez', 'Holly Jacobson', 'Glenna Rosales', 'Tashya Craig', 'Drew Stone', 'Desiree Galloway', NULL, 'Eugenia Clayton', 'Chanda Stewart', 'Imani Mcgowan', 'Winter Morin', NULL, NULL, NULL, NULL, NULL, 522, 731, 'Dolorum sequi verita', 'Non totam tempore e', 'Nemo aliqua Et haru', 'Iure eu incidunt es', 'Nemo aliqua Et haru', 1, '2023-02-16 07:33:24', '2023-02-16 07:33:24', 0),
(25, 'Sasha Fowler', 'sasha-fowler', 3, NULL, '<p><span style=\"color: rgb(0, 0, 0);\">Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release</span></p>', 'Sunt nisi anim aut a', 'Ocean Dotson', 'Halee Chapman', 'Dacey Lott', 'Orli Weiss', 'Gillian Carney', 'Plato West', 'Tatyana Huffman', 'Deanna Morton', 'v1676556290/aranya/hruj03igyhyty1brlrhp.jpg', 'Ronan Cooley', 'Mannix Shaffer', 'Yoshi Langley', 'Rina Haynes', 'v1676556290/aranya/hruj03igyhyty1brlrhp.jpg', 'v1676557218/aranya/tuo1h8gzj9mdylqqfjpk.jpg', NULL, NULL, NULL, 198, 141, 'Architecto ut non re', 'Sint nisi quasi des', 'Voluptatum dolor nos', 'Non anim pariatur I', 'Voluptatum dolor nos', 1, '2023-02-16 08:20:52', '2023-02-16 08:20:52', 0),
(37, 'Garth Boyd', 'garth-boyd', 4, 26, '<p><span style=\"color: rgb(0, 0, 0);\">Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'Aspernatur veniam o', 'Hyacinth Sparks', 'Yvonne Burt', 'Alvin Buck', 'Amy Mcneil', 'Chloe Atkinson', 'Bo Yang', 'Wade Paul', 'Halla Boyer', 'v1676557362/aranya/grbrjsl1vaczgq6wo3wi.jpg', 'Harrison Baxter', 'Hayden Mcdowell', 'Bert Espinoza', 'Sade Bolton', 'v1676557362/aranya/grbrjsl1vaczgq6wo3wi.jpg', 'v1676557377/aranya/rv3ywxadmebojcot3kgd.jpg', NULL, NULL, NULL, 451, 546, 'Repudiandae voluptat', 'Sed impedit dolorem', 'Corporis obcaecati v', 'Ullamco pariatur Ad', 'Corporis obcaecati v', 1, '2023-02-16 08:49:01', '2023-02-16 08:49:01', 0),
(38, 'Libby Weaver', 'libby-weaver', 1, NULL, '<p><span style=\"color: rgb(0, 0, 0);\">Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'Voluptate laboriosam', 'Nehru Solomon', 'Gil Cabrera', 'Zelenia Trujillo', 'Alan Keller', 'Knox Bray', 'Sybill Pugh', 'Fredericka Phelps', 'Vera Powell', 'v1676563063/aranya/hxcuyq5cgnld9vvrun5z.jpg', 'Rhoda Lawrence', 'Maite Maddox', 'Caldwell Fisher', 'Lynn Wiley', 'v1676563063/aranya/hxcuyq5cgnld9vvrun5z.jpg', 'v1676563084/aranya/yt2gt9ewoj0edrr2feqx.jpg', 'v1676563097/aranya/p8cmsgrxxguunurhyji9.jpg', 'v1676563107/aranya/z2wgpobll7w4vri5p05l.jpg', NULL, 54, 96, 'Dolor sit unde poss', 'Est sit mollitia est', 'Aliquid numquam laud', 'Inventore minus sed', 'Aliquid numquam laud', 1, '2023-02-16 09:59:00', '2023-02-16 09:59:00', 0);

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
(3, 3, 9, '2023-02-14 09:46:43', '2023-02-14 09:46:43'),
(4, 4, 8, '2023-02-15 05:00:26', '2023-02-15 05:00:26'),
(5, 4, 3, '2023-02-15 05:00:26', '2023-02-15 05:00:26'),
(6, 5, 9, '2023-02-15 08:53:43', '2023-02-15 08:53:43'),
(7, 5, 3, '2023-02-15 08:53:43', '2023-02-15 08:53:43'),
(8, 6, 2, '2023-02-15 08:55:32', '2023-02-15 08:55:32'),
(9, 6, 5, '2023-02-15 08:55:32', '2023-02-15 08:55:32'),
(10, 7, 7, '2023-02-15 08:57:01', '2023-02-15 08:57:01'),
(11, 7, 8, '2023-02-15 08:57:01', '2023-02-15 08:57:01'),
(12, 11, 8, '2023-02-15 23:53:44', '2023-02-15 23:53:44'),
(13, 11, 5, '2023-02-15 23:53:44', '2023-02-15 23:53:44'),
(17, 14, 8, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(18, 14, 7, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(19, 14, 2, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(35, 20, 9, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(36, 20, 8, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(37, 20, 7, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(38, 25, 9, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(39, 25, 1, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(40, 25, 3, '2023-02-16 08:20:53', '2023-02-16 08:20:53');

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
(1, 3, 12, '2023-02-14 09:46:43', '2023-02-14 09:46:43'),
(2, 4, 13, '2023-02-15 05:00:26', '2023-02-15 05:00:26'),
(3, 5, 10, '2023-02-15 08:53:43', '2023-02-15 08:53:43'),
(4, 6, 11, '2023-02-15 08:55:32', '2023-02-15 08:55:32'),
(5, 7, 11, '2023-02-15 08:57:01', '2023-02-15 08:57:01'),
(6, 8, 12, '2023-02-15 08:58:28', '2023-02-15 08:58:28'),
(7, 9, 12, '2023-02-15 08:59:46', '2023-02-15 08:59:46'),
(8, 10, 12, '2023-02-15 09:03:38', '2023-02-15 09:03:38'),
(9, 11, 13, '2023-02-15 23:53:44', '2023-02-15 23:53:44'),
(10, 12, 11, '2023-02-15 23:55:17', '2023-02-15 23:55:17'),
(12, 14, 12, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(18, 20, 11, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(19, 25, 12, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(20, 37, 12, '2023-02-16 08:49:01', '2023-02-16 08:49:01'),
(21, 38, 11, '2023-02-16 09:59:00', '2023-02-16 09:59:00');

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
(3, 3, 3, '2023-02-14 09:46:43', '2023-02-14 09:46:43'),
(4, 4, 3, '2023-02-15 05:00:26', '2023-02-15 05:00:26'),
(5, 4, 4, '2023-02-15 05:00:26', '2023-02-15 05:00:26'),
(6, 5, 6, '2023-02-15 08:53:43', '2023-02-15 08:53:43'),
(7, 5, 1, '2023-02-15 08:53:43', '2023-02-15 08:53:43'),
(8, 6, 3, '2023-02-15 08:55:32', '2023-02-15 08:55:32'),
(9, 6, 5, '2023-02-15 08:55:32', '2023-02-15 08:55:32'),
(10, 7, 4, '2023-02-15 08:57:01', '2023-02-15 08:57:01'),
(11, 12, 3, '2023-02-15 23:55:17', '2023-02-15 23:55:17'),
(12, 12, 4, '2023-02-15 23:55:17', '2023-02-15 23:55:17'),
(16, 14, 14, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(17, 14, 6, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(18, 14, 3, '2023-02-16 06:50:27', '2023-02-16 06:50:27'),
(34, 20, 14, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(35, 20, 11, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(36, 20, 2, '2023-02-16 07:33:24', '2023-02-16 07:33:24'),
(37, 25, 14, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(38, 25, 10, '2023-02-16 08:20:53', '2023-02-16 08:20:53'),
(39, 25, 8, '2023-02-16 08:20:53', '2023-02-16 08:20:53');

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
(6, '3XL', '3xl', NULL, 1, '2023-01-25 05:39:01', '2023-01-25 06:31:30'),
(8, 'M', 'm', NULL, 1, '2023-02-16 00:06:40', '2023-02-16 00:06:40'),
(9, '5', '5', NULL, 1, '2023-02-16 00:06:56', '2023-02-16 00:06:56'),
(10, '6', '6', NULL, 1, '2023-02-16 00:07:01', '2023-02-16 00:07:01'),
(11, '7', '7', NULL, 1, '2023-02-16 00:07:06', '2023-02-16 00:07:06'),
(12, '8', '8', NULL, 1, '2023-02-16 00:07:10', '2023-02-16 00:07:10'),
(13, '9', '9', NULL, 1, '2023-02-16 00:07:15', '2023-02-16 00:07:15'),
(14, '10', '10', NULL, 1, '2023-02-16 00:07:20', '2023-02-16 00:07:20');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_attrs`
--
ALTER TABLE `product_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
