-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 02:42 PM
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
(1, 'Aranya', 'aranya', NULL, 1, NULL, '2023-03-07 04:55:52', '2023-03-11 09:19:42');

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
(1, 'diy', 'diy', NULL, 1, '2023-03-11 10:07:52', '2023-03-07 04:59:33', '2023-03-11 10:07:52'),
(2, 'wash', 'wash', NULL, 1, '2023-03-11 10:07:54', '2023-03-07 04:59:42', '2023-03-11 10:07:54'),
(3, 'Indigo Mcdowell', 'indigo-mcdowell', NULL, 1, '2023-03-11 10:07:57', '2023-03-07 05:58:16', '2023-03-11 10:07:57'),
(4, 'Angela Potter', 'angela-potter', NULL, 1, '2023-03-11 10:08:00', '2023-03-07 05:58:21', '2023-03-11 10:08:00');

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
(3, 'Kids', 'kids', NULL, '0', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021909/aranya-product-v2/DSCF0178.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1681021922/aranya-product-v2/DSC_8136.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1680757775/aranya-product-v2/DSC_8201.jpg', NULL, 3, 1, NULL, NULL, NULL),
(4, 'Home Furnishings', 'home-furnishings', NULL, '0', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL),
(5, 'Beauty Collection', 'beauty-collection', NULL, '0', NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL),
(6, 'Accessories', 'accessories', NULL, '0', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
(7, 'Saree', 'saree', NULL, '1', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001419.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001485.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001601.jpg', NULL, 1, 1, NULL, NULL, NULL),
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
(24, 'Basket', 'basket', NULL, '4', NULL, NULL, NULL, NULL, 6, 1, NULL, NULL, NULL),
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
(41, 'Toddlers', 'toddlers', NULL, '3', NULL, NULL, NULL, NULL, 4, 1, NULL, NULL, NULL);

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
(1, 3, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 3, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 8, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 8, 23, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(5, 8, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(6, 3, 21, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(7, 3, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(8, 3, 26, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(9, 13, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(10, 13, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(11, 13, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(12, 13, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(13, 13, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(14, 13, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(15, 13, 25, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(16, 13, 28, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(17, 13, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(18, 16, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(19, 18, 12, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(20, 14, 4, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(21, 15, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(22, 15, 22, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(23, 7, 17, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(24, 7, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(25, 7, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(26, 7, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(27, 7, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(28, 8, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(29, 8, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(30, 10, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(31, 10, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(32, 10, 23, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(33, 33, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(34, 33, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(35, 10, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(36, 10, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(37, 11, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(38, 11, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(39, 11, 21, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(40, 11, 20, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(41, 12, 23, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(42, 9, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(43, 10, 25, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(44, 10, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(45, 35, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(46, 34, 11, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(47, 7, 16, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(48, 7, 20, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(49, 32, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47');

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
(1, 265, '9999999993333', '2023-04-02', 1, 'Processig', '2023-04-02', 2, 'On Delivery', '2023-04-02', 3, 'Delivered', NULL, NULL, '2023-04-03 09:34:58', '2023-04-03 04:14:17'),
(2, 264, '4675765765657', '2023-04-05', 1, 'Processig', '2023-04-02', 2, 'On Delivery', NULL, NULL, NULL, NULL, NULL, '2023-04-03 09:34:59', '2023-04-03 04:09:54'),
(3, 266, '8888888886', '2023-04-01', 1, 'Processig', '2023-04-02', 2, 'On Delivery', '2023-04-03', 3, 'Delivered', NULL, NULL, '2023-04-03 10:17:20', '2023-04-03 04:17:01'),
(4, 267, NULL, '2023-04-05', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 07:18:17', '2023-04-05 07:18:34'),
(5, 268, NULL, '2023-04-05', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 07:39:38', '2023-04-05 07:39:52'),
(6, 269, NULL, '2023-04-05', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 07:43:04', '2023-04-05 07:43:15'),
(7, 270, NULL, '2023-04-05', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 07:51:19', '2023-04-05 07:51:33'),
(8, 271, NULL, '2023-04-06', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 03:47:19', '2023-04-06 03:47:34'),
(9, 272, NULL, '2023-04-06', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 05:36:20', '2023-04-06 05:36:32'),
(10, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 07:55:32', NULL),
(11, 274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 07:57:03', NULL),
(12, 275, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 08:14:24', NULL),
(13, 276, NULL, '2023-04-06', 1, 'Processig', '2023-05-11', 2, 'On Delivery', NULL, NULL, NULL, NULL, NULL, '2023-04-06 08:18:33', '2023-05-11 06:53:03'),
(14, 277, NULL, '2023-04-06', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 08:20:15', '2023-04-06 08:23:21'),
(15, 278, NULL, '2023-04-06', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:37'),
(16, 279, NULL, '2023-04-06', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 08:52:09', '2023-04-06 08:52:22'),
(17, 280, NULL, '2023-04-06', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 09:54:53', '2023-04-06 09:55:04'),
(18, 294, NULL, '2023-04-09', 1, 'Processig', '2023-05-11', 2, 'On Delivery', '2023-05-11', 3, 'Delivered', NULL, NULL, '2023-04-09 18:48:00', '2023-05-11 05:57:14'),
(19, 295, NULL, '2023-04-10', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:18:05', '2023-04-10 05:18:21'),
(20, 296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:18:07', NULL),
(21, 297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:18:08', NULL),
(22, 298, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:18:09', NULL),
(23, 299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:18:10', NULL),
(24, 300, NULL, '2023-04-10', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:24:19', '2023-04-10 05:24:38'),
(25, 301, NULL, '2023-04-10', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:25:29', '2023-04-10 05:25:43'),
(26, 302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:25:32', NULL),
(27, 303, NULL, '2023-04-10', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:26:36', NULL),
(28, 304, NULL, '2023-04-10', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:27:38', NULL),
(29, 305, NULL, '2023-04-10', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 05:27:42', NULL),
(30, 306, 'DE90752095734', NULL, 1, 'Processig', '2023-04-10', 2, 'On Delivery', NULL, 3, 'Delivered', NULL, NULL, '2023-04-10 05:27:42', '2023-04-10 11:26:01'),
(31, 307, NULL, '2023-04-17', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-17 11:53:38', '2023-04-17 11:54:02'),
(32, 337, NULL, '2023-05-01', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 07:17:13', '2023-05-01 07:17:35'),
(33, 338, NULL, '2023-05-01', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 08:57:53', '2023-05-01 08:58:17'),
(34, 339, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:21:28', NULL),
(35, 340, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:21:33', NULL),
(36, 341, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:21:34', NULL),
(37, 342, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:21:33', NULL),
(38, 343, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:21:36', NULL),
(39, 344, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 05:21:36', NULL),
(40, 345, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:12:18', '2023-05-02 06:13:44'),
(41, 346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:12:20', NULL),
(42, 347, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:12:22', NULL),
(43, 348, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:12:23', NULL),
(44, 349, NULL, '2023-05-02', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:13:44', '2023-05-02 06:14:11'),
(45, 350, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:19:27', NULL),
(46, 351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:20:12', NULL),
(47, 352, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:38:45', NULL),
(48, 353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:42:29', NULL),
(49, 354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:44:01', NULL),
(50, 355, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:46:16', NULL),
(51, 356, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:47:03', NULL),
(52, 357, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:48:43', NULL),
(53, 358, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:49:52', NULL),
(54, 359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:55:30', NULL),
(55, 360, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 06:58:20', NULL),
(56, 361, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 07:01:35', NULL),
(57, 362, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 07:02:54', NULL),
(58, 363, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-02 07:04:03', NULL),
(59, 364, NULL, '2023-05-03', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 09:27:01', '2023-05-03 09:27:23'),
(60, 365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:42:23', NULL),
(61, 366, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:43:14', NULL),
(62, 367, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:43:17', NULL),
(63, 368, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:43:28', NULL),
(64, 369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:43:51', NULL),
(65, 370, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:44:59', NULL),
(66, 371, NULL, '2023-05-11', 1, 'Processig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:46:30', '2023-05-11 06:36:15'),
(67, 372, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:48:18', NULL),
(68, 373, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-03 10:51:30', NULL);

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
(16, 'RA', 'RA', 'ra', NULL, 1, NULL, '2023-03-12 00:43:24', '2023-03-12 00:43:24');

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
(19, 'Embroidery', 'embroidery', NULL, 1, NULL, '2023-03-11 09:36:18', '2023-03-11 09:36:18');

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
(32, 'Kntha sitch', 'Kntha sitch', 'kntha-sitch', NULL, 1, NULL, '2023-04-06 08:37:36', '2023-04-06 08:37:36');

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
(1, 'Slim Fit', 'slim-fit', NULL, 1, NULL, '2023-03-07 04:58:21', '2023-03-11 09:46:14');

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
(13, 'Sagupest', 'sagupest', NULL, 1, NULL, '2023-03-11 10:07:06', '2023-03-11 10:07:06');

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
(1, 1, 1, 9, 0, 877.47000000, 2475.00000000, 'C4531', 10, NULL, NULL, '2023-03-22 03:14:41', '2023-03-22 03:14:41'),
(2, 1, 1, 10, 0, 877.47000000, 2475.00000000, 'C4532', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 1, 1, 11, 0, 548.12000000, 1675.00000000, 'C4524', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 1, 1, 16, 1, 548.12000000, 1675.00000000, 'C4525', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 1, 1, 7, 2, 620.16000000, 1975.00000000, 'C4527', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 1, 1, 17, 2, 620.16000000, 1975.00000000, 'C4528', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 1, 1, 18, 0, 620.16000000, 1975.00000000, 'C4529', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 1, 1, 9, 3, 877.47000000, 2475.00000000, 'C4540', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 1, 1, 10, 0, 877.47000000, 2475.00000000, 'C4541', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 2, 20, 11, 1, 575.39000000, 1375.00000000, 'C6553', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 2, 20, 16, 3, 418.87000000, 1375.00000000, 'C6554', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 2, 20, 17, 0, 466.15000000, 1375.00000000, 'C6556', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 2, 20, 18, 2, 466.15000000, 1375.00000000, 'C6557', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 2, 20, 7, 1, 575.39000000, 1675.00000000, 'C6559', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(15, 2, 20, 9, 2, 575.39000000, 1675.00000000, 'C6560', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(16, 2, 20, 10, 4, 575.39000000, 1675.00000000, 'C6561', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(17, 3, 13, 11, 1, 430.23000000, 1675.00000000, 'C5565', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(18, 3, 13, 16, 1, 430.23000000, 1375.00000000, 'C5566', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(19, 3, 13, 17, 0, 474.90000000, 1375.00000000, 'C5568', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(20, 3, 13, 18, 1, 474.98000000, 1375.00000000, 'C5569', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(21, 3, 13, 7, 4, 578.38000000, 1675.00000000, 'C5571', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(22, 3, 13, 9, 3, 578.38000000, 1675.00000000, 'C5572', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(23, 3, 13, 10, 2, 578.38000000, 1675.00000000, 'C5573', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(24, 4, 5, 11, 3, 424.00000000, 1675.00000000, 'C5575', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(25, 4, 5, 16, 2, 424.00000000, 1375.00000000, 'C5576', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(26, 4, 5, 17, 2, 472.54000000, 1375.00000000, 'C5578', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(27, 4, 5, 18, 2, 472.54000000, 1375.00000000, 'C5579', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(28, 4, 5, 7, 2, 584.69000000, 1675.00000000, 'C5581', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(29, 4, 5, 9, 6, 584.69000000, 1675.00000000, 'C5582', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(30, 4, 5, 10, 3, 584.69000000, 1675.00000000, 'C5583', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(31, 5, 2, 11, 1, 540.64000000, 2475.00000000, 'C7171', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(32, 5, 20, 11, 1, 540.64000000, 2475.00000000, 'C7171', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(33, 5, 2, 16, 2, 540.64000000, 1675.00000000, 'C7172', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(34, 5, 20, 16, 2, 540.64000000, 1675.00000000, 'C7172', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(35, 5, 2, 17, 1, 620.63000000, 1975.00000000, 'C7174', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(36, 5, 20, 17, 1, 620.63000000, 1975.00000000, 'C7174', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(37, 5, 2, 18, 3, 620.63000000, 1975.00000000, 'C7175', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(38, 5, 20, 18, 3, 620.63000000, 1975.00000000, 'C7175', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(39, 5, 2, 7, 3, 805.45000000, 2475.00000000, 'C7177', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(40, 5, 20, 7, 3, 805.45000000, 2475.00000000, 'C7177', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(41, 5, 2, 9, 3, 805.45000000, 2475.00000000, 'C7178', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(42, 5, 20, 9, 3, 805.45000000, 2475.00000000, 'C7178', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(43, 5, 2, 10, 5, 805.45000000, 2475.00000000, 'C7179', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(44, 5, 20, 10, 5, 805.45000000, 2475.00000000, 'C7179', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(45, 6, 11, 6, 3, 221.40000000, 565.00000000, 'C7237', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(46, 6, 11, 13, 0, 221.40000000, 565.00000000, 'C7238', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(47, 6, 11, 14, 1, 221.40000000, 565.00000000, 'C7239', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(48, 6, 11, 15, 1, 221.40000000, 565.00000000, 'C7240', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(49, 7, 1, 8, 4, 323.35000000, 865.00000000, 'C7386', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(50, 7, 12, 8, 4, 323.35000000, 865.00000000, 'C7386', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(51, 7, 1, 11, 4, 323.35000000, 865.00000000, 'C7387', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(52, 7, 12, 11, 4, 323.35000000, 865.00000000, 'C7387', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(53, 7, 1, 12, 5, 323.35000000, 865.00000000, 'C7388', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(54, 7, 12, 12, 5, 323.35000000, 865.00000000, 'C7388', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(55, 8, 1, 10, 5, 907.83000000, 2165.00000000, 'C2738', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(56, 8, 1, 18, 1, 907.83000000, 2165.00000000, 'C2739', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(57, 9, 10, 11, 2, 402.96000000, 1465.00000000, 'C4074', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(58, 9, 10, 16, 1, 402.96000000, 1165.00000000, 'C4075', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(59, 9, 10, 17, 0, 402.96000000, 1165.00000000, 'C4076', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(60, 9, 10, 7, 3, 487.80000000, 1465.00000000, 'C4078', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(61, 9, 10, 9, 5, 487.80000000, 1465.00000000, 'C4079', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(62, 9, 10, 10, 6, 487.80000000, 1465.00000000, 'C4080', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(63, 9, 10, 18, 4, 487.80000000, 1465.00000000, 'C4081', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(64, 10, 9, 11, 1, 389.77000000, 1465.00000000, 'C4113', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(65, 10, 9, 16, 1, 389.77000000, 1165.00000000, 'C4114', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(66, 10, 9, 17, 3, 389.77000000, 1165.00000000, 'C4115', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(67, 10, 9, 7, 6, 472.22000000, 1465.00000000, 'C4117', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(68, 10, 9, 9, 6, 472.22000000, 1465.00000000, 'C4118', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(69, 10, 9, 10, 6, 472.22000000, 1465.00000000, 'C4119', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(70, 10, 9, 18, 3, 472.22000000, 1465.00000000, 'C4120', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(71, 11, 14, 11, 1, 441.19000000, 1465.00000000, 'C7070', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(72, 11, 14, 16, 0, 441.19000000, 1165.00000000, 'C7071', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(73, 11, 14, 17, 2, 545.26000000, 1465.00000000, 'C7073', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(74, 11, 14, 18, 1, 545.26000000, 1465.00000000, 'C7074', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(75, 11, 14, 7, 5, 586.19000000, 1465.00000000, 'C7076', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(76, 11, 14, 9, 3, 586.19000000, 1465.00000000, 'C7077', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(77, 11, 14, 10, 5, 586.19000000, 1465.00000000, 'C7078', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(78, 12, 11, 11, 2, 355.51000000, 1165.00000000, 'C6511', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(79, 12, 11, 16, 2, 355.51000000, 965.00000000, 'C6512', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(80, 12, 11, 17, 5, 383.82000000, 965.00000000, 'C6514', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(81, 12, 11, 18, 3, 383.82000000, 965.00000000, 'C6515', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(82, 12, 11, 7, 4, 449.36000000, 1165.00000000, 'C6517', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(83, 12, 11, 9, 5, 449.36000000, 1165.00000000, 'C6518', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(84, 12, 11, 10, 5, 449.36000000, 1165.00000000, 'C6519', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(85, 13, 5, 11, 2, 966.45000000, 2385.00000000, 'C2295', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(86, 13, 10, 11, 2, 966.45000000, 2385.00000000, 'C2295', 10, NULL, NULL, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(87, 13, 5, 16, 2, 966.45000000, 2385.00000000, 'C2296', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(88, 13, 10, 16, 2, 966.45000000, 2385.00000000, 'C2296', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(89, 13, 5, 17, 2, 1222.07000000, 2885.00000000, 'C2298', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(90, 13, 10, 17, 2, 1222.07000000, 2885.00000000, 'C2298', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(91, 13, 5, 18, 1, 1222.07000000, 2885.00000000, 'C2299', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(92, 13, 10, 18, 1, 1222.07000000, 2885.00000000, 'C2299', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(93, 13, 5, 7, 1, 1431.23000000, 3485.00000000, 'C2301', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(94, 13, 10, 7, 1, 1431.23000000, 3485.00000000, 'C2301', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(95, 13, 5, 9, 3, 1431.23000000, 3485.00000000, 'C2302', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(96, 13, 10, 9, 3, 1431.23000000, 3485.00000000, 'C2302', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(97, 14, 2, 11, 3, 947.39000000, 2885.00000000, 'C7354', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(98, 14, 2, 16, 1, 947.39000000, 2385.00000000, 'C7355', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(99, 14, 2, 17, 0, 1076.35000000, 2785.00000000, 'C7357', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(100, 14, 2, 18, 0, 1076.35000000, 2785.00000000, 'C7358', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(101, 14, 2, 7, 0, 1252.55000000, 2885.00000000, 'C7360', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(102, 14, 2, 9, 0, 1252.55000000, 2885.00000000, 'C7361', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(103, 15, 5, 8, 5, 768.20000000, 1875.00000000, 'D0090', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(104, 15, 5, 11, 6, 768.20000000, 1875.00000000, 'D0091', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(105, 15, 5, 12, 5, 768.20000000, 1875.00000000, 'D0092', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(106, 15, 5, 16, 5, 768.20000000, 1875.00000000, 'D0093', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(107, 16, 5, 8, 7, 838.28000000, 3485.00000000, 'C8720', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(108, 16, 14, 8, 7, 838.28000000, 3485.00000000, 'C8720', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(109, 16, 5, 11, 6, 838.28000000, 2385.00000000, 'C8721', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(110, 16, 14, 11, 6, 838.28000000, 2385.00000000, 'C8721', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(111, 16, 5, 16, 7, 838.28000000, 2385.00000000, 'C8722', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(112, 16, 14, 16, 7, 838.28000000, 2385.00000000, 'C8722', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(113, 16, 5, 17, 1, 838.28000000, 2385.00000000, 'C8724', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(114, 16, 14, 17, 1, 838.28000000, 2385.00000000, 'C8724', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(115, 16, 5, 18, 2, 838.28000000, 2385.00000000, 'C8725', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(116, 16, 14, 18, 2, 838.28000000, 2385.00000000, 'C8725', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(117, 16, 5, 7, 2, 1395.44000000, 3485.00000000, 'C8727', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(118, 16, 14, 7, 2, 1395.44000000, 3485.00000000, 'C8727', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(119, 16, 5, 9, 3, 1395.44000000, 3485.00000000, 'C8728', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(120, 16, 14, 9, 3, 1395.44000000, 3485.00000000, 'C8728', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(121, 17, 2, 8, 5, 751.05000000, 2785.00000000, 'D0095', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(122, 17, 12, 8, 5, 751.05000000, 2785.00000000, 'D0095', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(123, 17, 2, 11, 7, 751.05000000, 1685.00000000, 'D0096', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(124, 17, 12, 11, 7, 751.05000000, 1685.00000000, 'D0096', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(125, 17, 2, 12, 0, 751.05000000, 1685.00000000, 'D0097', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(126, 17, 12, 12, 0, 751.05000000, 1685.00000000, 'D0097', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(127, 17, 2, 16, 8, 751.05000000, 1685.00000000, 'D0098', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(128, 17, 12, 16, 8, 751.05000000, 1685.00000000, 'D0098', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(129, 17, 2, 17, 2, 927.42000000, 2385.00000000, 'D0100', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(130, 17, 12, 17, 2, 927.42000000, 2385.00000000, 'D0100', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(131, 17, 2, 18, 4, 927.42000000, 2385.00000000, 'D0101', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(132, 17, 12, 18, 4, 927.42000000, 2385.00000000, 'D0101', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(133, 17, 2, 7, 5, 1095.22000000, 2785.00000000, 'D0103', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(134, 17, 12, 7, 5, 1095.22000000, 2785.00000000, 'D0103', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(135, 17, 2, 9, 2, 1095.22000000, 2785.00000000, 'D0104', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(136, 17, 12, 9, 2, 1095.22000000, 2785.00000000, 'D0104', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(137, 18, 2, 6, 0, 714.79000000, 1685.00000000, 'C5626', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(138, 18, 2, 13, 3, 714.79000000, 1685.00000000, 'C5627', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(139, 18, 2, 14, 0, 714.79000000, 1685.00000000, 'C5628', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(140, 18, 2, 15, 0, 714.79000000, 1685.00000000, 'C5629', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(141, 19, 10, 6, 6, 493.42000000, 1375.00000000, 'C3854', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(142, 19, 10, 13, 5, 493.42000000, 1185.00000000, 'C3855', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(143, 19, 10, 14, 3, 493.42000000, 1185.00000000, 'C3856', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(144, 19, 10, 15, 3, 493.42000000, 1185.00000000, 'C3857', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(145, 19, 10, 11, 2, 570.27000000, 1375.00000000, 'C3859', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(146, 19, 10, 16, 0, 570.27000000, 1375.00000000, 'C3860', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(147, 20, 1, 6, 0, 846.26000000, 2375.00000000, 'C6625', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(148, 20, 20, 6, 0, 846.26000000, 2375.00000000, 'C6625', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(149, 20, 1, 13, 0, 846.26000000, 2375.00000000, 'C6626', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(150, 20, 20, 13, 0, 846.26000000, 2375.00000000, 'C6626', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(151, 20, 1, 6, 6, 701.63000000, 1875.00000000, 'C6583', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(152, 20, 20, 6, 6, 701.63000000, 1875.00000000, 'C6583', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(153, 20, 1, 13, 5, 701.63000000, 1875.00000000, 'C6584', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(154, 20, 20, 13, 5, 701.63000000, 1875.00000000, 'C6584', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(155, 20, 1, 11, 5, 846.26000000, 2375.00000000, 'C6586', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(156, 20, 20, 11, 5, 846.26000000, 2375.00000000, 'C6586', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(157, 20, 1, 12, 0, 846.26000000, 2375.00000000, 'C6587', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(158, 20, 20, 12, 0, 846.26000000, 2375.00000000, 'C6587', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(159, 20, 1, 14, 3, 940.18000000, 2375.00000000, 'C6589', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(160, 20, 20, 14, 3, 940.18000000, 2375.00000000, 'C6589', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(161, 20, 1, 15, 3, 940.18000000, 2375.00000000, 'C6590', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(162, 20, 20, 15, 3, 940.18000000, 2375.00000000, 'C6590', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(163, 20, 1, 16, 4, 846.26000000, 2375.00000000, 'C6628', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(164, 20, 20, 16, 4, 846.26000000, 2375.00000000, 'C6628', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(165, 21, 2, 6, 4, 670.28000000, 1675.00000000, 'C4513', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(166, 21, 20, 6, 4, 670.28000000, 1675.00000000, 'C4513', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(167, 21, 2, 13, 1, 670.28000000, 1675.00000000, 'C4514', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(168, 21, 20, 13, 1, 670.28000000, 1675.00000000, 'C4514', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(169, 21, 2, 14, 1, 670.28000000, 1675.00000000, 'C4515', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(170, 21, 20, 14, 1, 670.28000000, 1675.00000000, 'C4515', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(171, 21, 2, 15, 1, 670.28000000, 1675.00000000, 'C4516', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(172, 21, 20, 15, 1, 670.28000000, 1675.00000000, 'C4516', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(173, 22, 18, 6, 3, 640.94000000, 1675.00000000, 'C4353', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(174, 22, 18, 13, 1, 640.94000000, 1675.00000000, 'C4354', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(175, 22, 18, 14, 2, 640.94000000, 1675.00000000, 'C4355', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(176, 23, 10, 11, 8, 609.09000000, 1875.00000000, 'C4469', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(177, 23, 10, 16, 3, 609.09000000, 1675.00000000, 'C4470', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(178, 23, 10, 17, 6, 670.09000000, 1875.00000000, 'C4472', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(179, 23, 10, 18, 6, 670.09000000, 1875.00000000, 'C4473', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(180, 24, 10, 11, 5, 806.01000000, 2275.00000000, 'C4475', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(181, 24, 10, 16, 9, 806.01000000, 2075.00000000, 'C4476', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(182, 24, 10, 17, 1, 950.57000000, 2275.00000000, 'C4478', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(183, 24, 10, 18, 3, 950.57000000, 2275.00000000, 'C4479', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(184, 25, 2, 8, 3, 716.39000000, 2075.00000000, 'C5676', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(185, 25, 2, 11, 1, 716.39000000, 1875.00000000, 'C5677', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(186, 25, 2, 16, 1, 716.39000000, 1875.00000000, 'C5678', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(187, 25, 2, 17, 5, 850.77000000, 2075.00000000, 'C5680', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(188, 25, 2, 18, 4, 850.77000000, 2075.00000000, 'C5681', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(189, 26, 13, 11, 7, 1093.27000000, 3375.00000000, 'C7484', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(190, 26, 13, 12, 4, 1093.27000000, 2975.00000000, 'C7485', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(191, 26, 13, 16, 5, 1093.27000000, 2975.00000000, 'C7486', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(192, 26, 13, 17, 8, 1251.30000000, 3375.00000000, 'C7488', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(193, 26, 13, 18, 8, 1251.30000000, 3375.00000000, 'C7489', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(194, 27, 2, 11, 1, 536.12000000, 1375.00000000, 'C6764', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(195, 27, 2, 16, 0, 536.12000000, 1375.00000000, 'C6765', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(196, 28, 5, 11, 3, 514.66000000, 1375.00000000, 'C5623', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(197, 28, 5, 16, 5, 514.66000000, 1375.00000000, 'C5624', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(198, 29, 2, 16, 2, 994.81000000, 2275.00000000, 'C6767', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(199, 29, 2, 17, 3, 994.81000000, 2275.00000000, 'C6769', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(200, 29, 2, 18, 1, 994.81000000, 2275.00000000, 'C6770', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(201, 30, 1, 8, 4, 1846.42000000, 5175.00000000, 'C7538', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(202, 30, 1, 11, 5, 1846.42000000, 4575.00000000, 'C7539', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(203, 30, 1, 12, 10, 1846.42000000, 4575.00000000, 'C7540', 10, NULL, NULL, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(204, 30, 1, 16, 3, 2097.50000000, 5175.00000000, 'C7542', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(205, 30, 1, 17, 5, 2097.50000000, 5175.00000000, 'C7543', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(206, 30, 1, 18, 2, 2097.50000000, 5175.00000000, 'C7544', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(207, 31, 9, 11, 3, 594.68000000, 2295.00000000, 'B6921', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(208, 31, 9, 16, 3, 594.68000000, 1495.00000000, 'B6922', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(209, 31, 9, 17, 2, 736.12000000, 1795.00000000, 'B6924', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(210, 31, 9, 18, 6, 736.12000000, 1795.00000000, 'B6925', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(211, 31, 9, 7, 6, 950.79000000, 2295.00000000, 'B6927', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(212, 31, 9, 9, 4, 950.79000000, 2295.00000000, 'B6928', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(213, 32, 12, 6, 8, 224.55000000, 865.00000000, 'C9846', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(214, 32, 12, 13, 5, 224.55000000, 865.00000000, 'C9847', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(215, 32, 12, 14, 7, 224.55000000, 865.00000000, 'C9848', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(216, 32, 12, 15, 6, 224.55000000, 865.00000000, 'C9849', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(217, 33, 2, 6, 7, 258.98000000, 985.00000000, 'C8771', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(218, 33, 2, 13, 7, 258.98000000, 985.00000000, 'C8772', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(219, 34, 10, 6, 11, 198.08000000, 865.00000000, 'C9851', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(220, 34, 10, 13, 9, 198.08000000, 865.00000000, 'C9852', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(221, 35, 0, 13, 0, 242.20000000, 865.00000000, 'C9855', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(222, 35, 2, 6, 11, 242.20000000, 865.00000000, 'C9857', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(223, 35, 2, 6, 1, 198.08000000, 865.00000000, 'D1736', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(224, 35, 0, 6, 0, 242.20000000, 865.00000000, 'C9854', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(225, 35, 2, 13, 4, 242.20000000, 865.00000000, 'C9858', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(226, 36, 14, 19, 3, 1138.39000000, 3675.00000000, 'B1949', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(227, 36, 20, 19, 3, 1138.39000000, 3675.00000000, 'B1949', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(228, 36, 14, 20, 0, 1138.39000000, 3675.00000000, 'B1950', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(229, 36, 20, 20, 0, 1138.39000000, 3675.00000000, 'B1950', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(230, 36, 14, 21, 0, 0.00000000, 3675.00000000, 'B1951', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(231, 36, 20, 21, 0, 0.00000000, 3675.00000000, 'B1951', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(232, 36, 14, 22, 0, 1138.39000000, 3675.00000000, 'B1952', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(233, 36, 20, 22, 0, 1138.39000000, 3675.00000000, 'B1952', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(234, 36, 14, 23, 0, 1138.39000000, 3675.00000000, 'B1953', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(235, 36, 20, 23, 0, 1138.39000000, 3675.00000000, 'B1953', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(236, 37, 1, 19, 3, 1525.36000000, 3930.00000000, 'D0034', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(237, 37, 1, 20, 2, 1525.36000000, 3930.00000000, 'D0035', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(238, 37, 1, 21, 4, 1525.36000000, 3930.00000000, 'D0036', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(239, 37, 1, 22, 1, 1525.36000000, 3930.00000000, 'D0037', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(240, 37, 1, 23, 1, 1525.36000000, 3930.00000000, 'D0038', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(241, 38, 10, 19, 2, 1068.42000000, 3675.00000000, 'B8670', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(242, 38, 10, 20, 3, 1068.42000000, 3675.00000000, 'B8671', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(243, 38, 10, 21, 0, 1068.42000000, 3675.00000000, 'B8672', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(244, 38, 10, 22, 1, 1068.42000000, 3675.00000000, 'B8673', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(245, 38, 10, 23, 0, 1068.42000000, 3675.00000000, 'B8674', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(246, 39, 11, 19, 0, 625.89000000, 2230.00000000, 'C3208', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(247, 39, 13, 19, 0, 625.89000000, 2230.00000000, 'C3208', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(248, 39, 11, 20, 0, 625.89000000, 1975.00000000, 'C3209', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(249, 39, 13, 20, 0, 625.89000000, 1975.00000000, 'C3209', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(250, 39, 11, 21, 0, 625.89000000, 1975.00000000, 'C3210', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(251, 39, 13, 21, 0, 625.89000000, 1975.00000000, 'C3210', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(252, 39, 11, 22, 0, 625.89000000, 1975.00000000, 'C3211', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(253, 39, 13, 22, 0, 625.89000000, 1975.00000000, 'C3211', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(254, 39, 11, 23, 0, 625.89000000, 1975.00000000, 'C3212', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(255, 39, 13, 23, 0, 625.89000000, 1975.00000000, 'C3212', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(256, 39, 1, 19, 4, 625.89000000, 2230.00000000, 'C9996', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(257, 39, 13, 19, 4, 625.89000000, 2230.00000000, 'C9996', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(258, 39, 1, 20, 0, 625.89000000, 2230.00000000, 'C9997', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(259, 39, 13, 20, 0, 625.89000000, 2230.00000000, 'C9997', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(260, 39, 1, 21, 1, 625.89000000, 2230.00000000, 'C9998', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(261, 39, 13, 21, 1, 625.89000000, 2230.00000000, 'C9998', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(262, 40, 2, 22, 0, 1466.12000000, 4675.00000000, 'B7763', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(263, 40, 2, 19, 0, 1190.90000000, 2475.00000000, 'B7765', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(264, 40, 2, 20, 0, 1190.90000000, 2475.00000000, 'B7766', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(265, 40, 2, 21, 0, 1190.90000000, 2475.00000000, 'B7767', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(266, 40, 2, 22, 0, 1190.90000000, 2475.00000000, 'B7768', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(267, 40, 10, 19, 4, 793.40000000, 2475.00000000, 'B7752', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(268, 40, 10, 20, 0, 793.40000000, 2475.00000000, 'B7753', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(269, 40, 10, 21, 0, 793.40000000, 2475.00000000, 'B7754', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(270, 40, 10, 22, 0, 793.40000000, 2475.00000000, 'B7755', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(271, 40, 10, 23, 0, 793.40000000, 2475.00000000, 'B7756', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(272, 41, 1, 19, 3, 1116.73000000, 3675.00000000, 'B9677', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(273, 41, 1, 20, 1, 1116.73000000, 3675.00000000, 'B9678', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(274, 41, 1, 21, 0, 1116.73000000, 3675.00000000, 'B9679', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(275, 41, 1, 22, 1, 1116.73000000, 3675.00000000, 'B9680', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(276, 41, 1, 23, 0, 1116.73000000, 3675.00000000, 'B9681', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(277, 42, 1, 19, 3, 1712.91000000, 4275.00000000, 'C3610', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(278, 42, 12, 19, 3, 1712.91000000, 4275.00000000, 'C3610', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(279, 42, 1, 20, 0, 1712.91000000, 4275.00000000, 'C3611', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(280, 42, 12, 20, 0, 1712.91000000, 4275.00000000, 'C3611', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(281, 42, 1, 21, 0, 1712.91000000, 4275.00000000, 'C3612', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(282, 42, 12, 21, 0, 1712.91000000, 4275.00000000, 'C3612', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(283, 42, 1, 22, 0, 1712.91000000, 4275.00000000, 'C3613', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(284, 42, 12, 22, 0, 1712.91000000, 4275.00000000, 'C3613', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(285, 42, 1, 23, 0, 1712.91000000, 4275.00000000, 'C3614', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(286, 42, 12, 23, 0, 1712.91000000, 4275.00000000, 'C3614', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(287, 43, 9, 19, 4, 2349.00000000, 5975.00000000, 'C9341', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(288, 43, 10, 19, 4, 2349.00000000, 5975.00000000, 'C9341', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(289, 43, 9, 20, 2, 2349.00000000, 5975.00000000, 'C9342', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(290, 43, 10, 20, 2, 2349.00000000, 5975.00000000, 'C9342', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(291, 43, 9, 21, 0, 2349.00000000, 5975.00000000, 'C9343', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(292, 43, 10, 21, 0, 2349.00000000, 5975.00000000, 'C9343', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(293, 43, 9, 22, 0, 2349.00000000, 5975.00000000, 'C9344', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(294, 43, 10, 22, 0, 2349.00000000, 5975.00000000, 'C9344', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(295, 43, 9, 23, 0, 2349.00000000, 5975.00000000, 'C9345', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(296, 43, 10, 23, 0, 2349.00000000, 5975.00000000, 'C9345', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(297, 44, 2, 19, 4, 2504.80000000, 7000.00000000, 'C3346', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(298, 44, 12, 19, 4, 2504.80000000, 7000.00000000, 'C3346', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(299, 44, 2, 20, 0, 2504.80000000, 7000.00000000, 'C3347', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(300, 44, 12, 20, 0, 2504.80000000, 7000.00000000, 'C3347', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(301, 44, 2, 21, 0, 2504.80000000, 7000.00000000, 'C3348', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(302, 44, 12, 21, 0, 2504.80000000, 7000.00000000, 'C3348', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(303, 44, 2, 22, 0, 2504.80000000, 7000.00000000, 'C3349', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(304, 44, 12, 22, 0, 2504.80000000, 7000.00000000, 'C3349', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(305, 44, 2, 23, 0, 2504.80000000, 7000.00000000, 'C3350', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(306, 44, 12, 23, 0, 2504.80000000, 7000.00000000, 'C3350', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(307, 45, 1, 19, 0, 1390.29000000, 3675.00000000, 'C6734', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(308, 45, 1, 20, 0, 1390.29000000, 3675.00000000, 'C6735', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(309, 45, 1, 21, 0, 1390.29000000, 3675.00000000, 'C6736', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(310, 45, 1, 22, 0, 1390.29000000, 3675.00000000, 'C6737', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(311, 45, 1, 23, 0, 1390.29000000, 3675.00000000, 'C6738', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(312, 46, 10, 19, 3, 753.05000000, 2475.00000000, 'C6979', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(313, 46, 20, 19, 3, 753.05000000, 2475.00000000, 'C6979', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(314, 46, 10, 20, 0, 753.05000000, 2475.00000000, 'C6980', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(315, 46, 20, 20, 0, 753.05000000, 2475.00000000, 'C6980', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(316, 46, 10, 21, 0, 753.05000000, 2475.00000000, 'C6981', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(317, 46, 20, 21, 0, 753.05000000, 2475.00000000, 'C6981', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(318, 46, 10, 22, 0, 753.05000000, 2475.00000000, 'C6982', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(319, 46, 20, 22, 0, 753.05000000, 2475.00000000, 'C6982', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(320, 46, 10, 23, 0, 753.05000000, 2475.00000000, 'C6983', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(321, 46, 20, 23, 0, 753.05000000, 2475.00000000, 'C6983', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(322, 47, 13, 19, 4, 1588.32000000, 4675.00000000, 'C6662', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(323, 47, 13, 20, 1, 1588.32000000, 4675.00000000, 'C6663', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(324, 47, 13, 21, 0, 1588.32000000, 4675.00000000, 'C6664', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(325, 47, 13, 22, 0, 1588.32000000, 4675.00000000, 'C6665', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(326, 47, 13, 23, 0, 1588.32000000, 4675.00000000, 'C6666', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(327, 48, 9, 19, 5, 2396.54000000, 5975.00000000, 'C6668', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(328, 48, 20, 19, 5, 2396.54000000, 5975.00000000, 'C6668', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(329, 48, 9, 20, 2, 2396.54000000, 5975.00000000, 'C6669', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(330, 48, 20, 20, 2, 2396.54000000, 5975.00000000, 'C6669', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(331, 48, 9, 21, 1, 2396.54000000, 5975.00000000, 'C6670', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(332, 48, 20, 21, 1, 2396.54000000, 5975.00000000, 'C6670', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(333, 48, 9, 22, 1, 2396.54000000, 5975.00000000, 'C6671', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(334, 48, 20, 22, 1, 2396.54000000, 5975.00000000, 'C6671', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(335, 48, 9, 23, 0, 2396.54000000, 5975.00000000, 'C6672', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(336, 48, 20, 23, 0, 2396.54000000, 5975.00000000, 'C6672', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(337, 49, 10, 19, 0, 1304.53000000, 3970.00000000, 'C4855', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(338, 49, 10, 20, 0, 1304.53000000, 3675.00000000, 'C4856', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(339, 49, 10, 21, 0, 1304.53000000, 3675.00000000, 'C4857', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(340, 49, 10, 22, 0, 1304.53000000, 3675.00000000, 'C4858', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(341, 49, 10, 23, 0, 1304.53000000, 3675.00000000, 'C4859', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(342, 49, 1, 19, 4, 1304.53000000, 3970.00000000, 'C9919', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(343, 49, 10, 19, 4, 1304.53000000, 3970.00000000, 'C9919', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(344, 49, 1, 20, 0, 1304.53000000, 3970.00000000, 'C9920', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(345, 49, 10, 20, 0, 1304.53000000, 3970.00000000, 'C9920', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(346, 49, 1, 21, 0, 1304.53000000, 3970.00000000, 'C9921', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(347, 49, 10, 21, 0, 1304.53000000, 3970.00000000, 'C9921', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(348, 49, 1, 22, 1, 1304.53000000, 3970.00000000, 'C9922', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(349, 49, 10, 22, 1, 1304.53000000, 3970.00000000, 'C9922', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(350, 49, 1, 23, 0, 1304.53000000, 3970.00000000, 'C9923', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(351, 49, 10, 23, 0, 1304.53000000, 3970.00000000, 'C9923', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(352, 50, 11, 19, 0, 783.38000000, 2730.00000000, 'C7672', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(353, 50, 11, 20, 0, 783.38000000, 2475.00000000, 'C7673', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(354, 50, 11, 21, 0, 783.38000000, 2475.00000000, 'C7674', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(355, 50, 11, 22, 0, 783.38000000, 2475.00000000, 'C7675', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(356, 50, 11, 23, 0, 783.38000000, 2475.00000000, 'C7676', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(357, 50, 1, 19, 4, 783.38000000, 2730.00000000, 'D0080', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(358, 50, 1, 20, 4, 783.38000000, 2730.00000000, 'D0081', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(359, 50, 1, 21, 2, 783.38000000, 2730.00000000, 'D0082', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(360, 50, 1, 22, 2, 783.38000000, 2730.00000000, 'D0083', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(361, 50, 1, 23, 2, 783.38000000, 2730.00000000, 'D0084', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(362, 51, 2, 19, 4, 1675.42000000, 4675.00000000, 'C6224', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(363, 51, 12, 19, 4, 1675.42000000, 4675.00000000, 'C6224', 10, NULL, NULL, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(364, 51, 2, 20, 0, 1675.42000000, 4675.00000000, 'C6225', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(365, 51, 12, 20, 0, 1675.42000000, 4675.00000000, 'C6225', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(366, 51, 2, 21, 1, 1675.42000000, 4675.00000000, 'C6226', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(367, 51, 12, 21, 1, 1675.42000000, 4675.00000000, 'C6226', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(368, 51, 2, 22, 0, 1675.42000000, 4675.00000000, 'C6227', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(369, 51, 12, 22, 0, 1675.42000000, 4675.00000000, 'C6227', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(370, 51, 2, 23, 0, 1675.42000000, 4675.00000000, 'C6228', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(371, 51, 12, 23, 0, 1675.42000000, 4675.00000000, 'C6228', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(372, 52, 10, 19, 5, 1350.86000000, 3675.00000000, 'C6242', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(373, 52, 10, 20, 0, 1350.86000000, 3675.00000000, 'C6243', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(374, 52, 10, 21, 0, 1350.86000000, 3675.00000000, 'C6244', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(375, 52, 10, 22, 0, 1350.86000000, 3675.00000000, 'C6245', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(376, 52, 10, 23, 0, 1350.86000000, 3675.00000000, 'C6246', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(377, 53, 11, 19, 4, 2346.08000000, 5975.00000000, 'C7363', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(378, 53, 11, 20, 1, 2346.08000000, 5975.00000000, 'C7364', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(379, 53, 11, 21, 0, 2346.08000000, 5975.00000000, 'C7365', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(380, 53, 11, 22, 4, 2346.08000000, 5975.00000000, 'C7366', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(381, 53, 11, 23, 2, 2346.08000000, 5975.00000000, 'C7367', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(382, 54, 10, 19, 6, 1059.52000000, 2975.00000000, 'D0417', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(383, 54, 10, 20, 4, 1059.52000000, 2975.00000000, 'D0419', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(384, 54, 10, 21, 0, 1059.52000000, 2975.00000000, 'D0421', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(385, 54, 10, 22, 0, 1059.52000000, 2975.00000000, 'D0423', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(386, 54, 10, 23, 1, 1059.52000000, 2975.00000000, 'D0425', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(387, 55, 2, 21, 0, 1245.16000000, 2975.00000000, 'D0614', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(388, 55, 11, 21, 0, 1245.16000000, 2975.00000000, 'D0614', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(389, 55, 2, 22, 0, 1245.16000000, 2975.00000000, 'D0616', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(390, 55, 11, 22, 0, 1245.16000000, 2975.00000000, 'D0616', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(391, 55, 2, 19, 4, 1245.16000000, 2975.00000000, 'D0610', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(392, 55, 11, 19, 4, 1245.16000000, 2975.00000000, 'D0610', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(393, 55, 2, 20, 0, 1245.16000000, 2975.00000000, 'D0612', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(394, 55, 11, 20, 0, 1245.16000000, 2975.00000000, 'D0612', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(395, 55, 2, 23, 0, 1245.16000000, 2975.00000000, 'D0618', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(396, 55, 11, 23, 0, 1245.16000000, 2975.00000000, 'D0618', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(397, 55, 2, 22, 0, 1245.16000000, 2975.00000000, 'D0620', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(398, 55, 11, 22, 0, 1245.16000000, 2975.00000000, 'D0620', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(399, 55, 2, 21, 0, 1245.16000000, 2975.00000000, 'D0622', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(400, 55, 11, 21, 0, 1245.16000000, 2975.00000000, 'D0622', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(401, 56, 2, 19, 3, 1294.24000000, 3075.00000000, 'D0427', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(402, 56, 12, 19, 3, 1294.24000000, 3075.00000000, 'D0427', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(403, 56, 2, 20, 0, 1294.24000000, 3075.00000000, 'D0429', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(404, 56, 12, 20, 0, 1294.24000000, 3075.00000000, 'D0429', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(405, 56, 2, 21, 0, 1294.24000000, 3075.00000000, 'D0431', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(406, 56, 12, 21, 0, 1294.24000000, 3075.00000000, 'D0431', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(407, 56, 2, 22, 0, 1294.24000000, 3075.00000000, 'D0433', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(408, 56, 12, 22, 0, 1294.24000000, 3075.00000000, 'D0433', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(409, 56, 2, 23, 0, 1294.24000000, 3075.00000000, 'D0435', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(410, 56, 12, 23, 0, 1294.24000000, 3075.00000000, 'D0435', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(411, 57, 2, 19, 3, 1520.88000000, 3475.00000000, 'C9301', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(412, 57, 12, 19, 3, 1520.88000000, 3475.00000000, 'C9301', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(413, 57, 2, 20, 0, 1520.88000000, 3475.00000000, 'C9302', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(414, 57, 12, 20, 0, 1520.88000000, 3475.00000000, 'C9302', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(415, 57, 2, 21, 0, 1520.88000000, 3475.00000000, 'C9303', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(416, 57, 12, 21, 0, 1520.88000000, 3475.00000000, 'C9303', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(417, 57, 2, 22, 1, 1520.88000000, 3475.00000000, 'C9304', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45');
INSERT INTO `inventories` (`id`, `product_id`, `colour_id`, `size_id`, `stock`, `cpu`, `mrp`, `sku`, `warning_amount`, `warehouse`, `deleted_at`, `created_at`, `updated_at`) VALUES
(418, 57, 12, 22, 1, 1520.88000000, 3475.00000000, 'C9304', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(419, 57, 2, 23, 0, 1520.88000000, 3475.00000000, 'C9305', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(420, 57, 12, 23, 0, 1520.88000000, 3475.00000000, 'C9305', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(421, 58, 14, 19, 4, 1323.63000000, 2815.00000000, 'D0270', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(422, 58, 14, 20, 0, 1323.63000000, 2815.00000000, 'D0271', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(423, 58, 14, 21, 0, 1323.63000000, 2815.00000000, 'D0272', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(424, 58, 14, 22, 0, 1323.63000000, 2815.00000000, 'D0273', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(425, 58, 14, 23, 0, 1323.63000000, 2815.00000000, 'D0274', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(426, 59, 10, 19, 4, 678.19000000, 2475.00000000, 'D0471', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(427, 59, 10, 20, 1, 678.19000000, 2475.00000000, 'D0473', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(428, 59, 10, 21, 0, 678.19000000, 2475.00000000, 'D0475', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(429, 59, 10, 22, 2, 678.19000000, 2475.00000000, 'D0477', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(430, 59, 10, 23, 0, 678.19000000, 2475.00000000, 'D0479', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(431, 60, 10, 19, 6, 1156.04000000, 2975.00000000, 'D0461', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(432, 60, 16, 19, 6, 1156.04000000, 2975.00000000, 'D0461', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(433, 60, 10, 20, 3, 1156.04000000, 2975.00000000, 'D0463', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(434, 60, 16, 20, 3, 1156.04000000, 2975.00000000, 'D0463', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(435, 60, 10, 21, 3, 1156.04000000, 2975.00000000, 'D0465', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(436, 60, 16, 21, 3, 1156.04000000, 2975.00000000, 'D0465', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(437, 60, 10, 22, 1, 1156.04000000, 2975.00000000, 'D0467', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(438, 60, 16, 22, 1, 1156.04000000, 2975.00000000, 'D0467', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(439, 60, 10, 23, 1, 1156.04000000, 2975.00000000, 'D0469', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(440, 60, 16, 23, 1, 1156.04000000, 2975.00000000, 'D0469', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(441, 61, 12, 19, 4, 1571.18000000, 4275.00000000, 'D0481', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(442, 61, 16, 19, 4, 1571.18000000, 4275.00000000, 'D0481', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(443, 61, 12, 20, 3, 1571.18000000, 4275.00000000, 'D0483', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(444, 61, 16, 20, 3, 1571.18000000, 4275.00000000, 'D0483', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(445, 61, 12, 21, 2, 1571.18000000, 4275.00000000, 'D0485', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(446, 61, 16, 21, 2, 1571.18000000, 4275.00000000, 'D0485', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(447, 61, 12, 22, 1, 1571.18000000, 4275.00000000, 'D0487', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(448, 61, 16, 22, 1, 1571.18000000, 4275.00000000, 'D0487', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(449, 61, 12, 23, 1, 1571.18000000, 4275.00000000, 'D0489', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(450, 61, 16, 23, 1, 1571.18000000, 4275.00000000, 'D0489', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(451, 62, 0, 19, 4, 2462.90000000, 6975.00000000, 'B1460', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(452, 62, 0, 20, 0, 2462.90000000, 6975.00000000, 'B1461', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(453, 62, 0, 21, 0, 2462.90000000, 6975.00000000, 'B1462', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(454, 62, 0, 22, 0, 2462.90000000, 6975.00000000, 'B1463', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(455, 62, 0, 23, 0, 2462.90000000, 6975.00000000, 'B1464', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(456, 63, 11, 19, 3, 1446.68000000, 3765.00000000, 'C5174', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(457, 63, 11, 20, 0, 1446.68000000, 3765.00000000, 'C5175', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(458, 63, 11, 21, 0, 1446.68000000, 3765.00000000, 'C5176', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(459, 63, 11, 22, 0, 1446.68000000, 3765.00000000, 'C5177', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(460, 63, 11, 23, 0, 1446.68000000, 3765.00000000, 'C5178', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(461, 64, 13, 23, 0, 1128.26000000, 3985.00000000, 'C5206', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(462, 64, 13, 19, 3, 1128.26000000, 3985.00000000, 'C5202', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(463, 64, 13, 20, 0, 1128.26000000, 3985.00000000, 'C5203', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(464, 64, 13, 21, 0, 1128.26000000, 3985.00000000, 'C5204', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(465, 64, 13, 22, 1, 1128.26000000, 3985.00000000, 'C5205', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(466, 65, 20, 19, 2, 1151.40000000, 5285.00000000, 'C4901', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(467, 65, 20, 20, 3, 1151.40000000, 5285.00000000, 'C4902', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(468, 65, 20, 21, 1, 1151.40000000, 5285.00000000, 'C4903', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(469, 65, 20, 22, 1, 1151.40000000, 5285.00000000, 'C4904', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(470, 65, 20, 23, 0, 1151.40000000, 5285.00000000, 'C4905', 10, NULL, NULL, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(471, 66, 10, 2, 3, 490.00000000, 1175.00000000, 'B6135', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(472, 66, 10, 3, 4, 490.00000000, 1175.00000000, 'B6136', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(473, 66, 10, 1, 4, 490.00000000, 1175.00000000, 'B6137', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(474, 66, 10, 4, 0, 490.00000000, 1175.00000000, 'B6138', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(475, 67, 2, 2, 2, 620.00000000, 1275.00000000, 'B6140', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(476, 67, 2, 3, 0, 620.00000000, 1275.00000000, 'B6141', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(477, 67, 2, 1, 1, 620.00000000, 1275.00000000, 'B6142', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(478, 67, 2, 4, 3, 620.00000000, 1275.00000000, 'B6143', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(479, 68, 2, 2, 2, 610.00000000, 1275.00000000, 'B6155', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(480, 68, 2, 3, 1, 610.00000000, 1275.00000000, 'B6156', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(481, 68, 2, 1, 3, 610.00000000, 1275.00000000, 'B6157', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(482, 68, 2, 4, 2, 610.00000000, 1275.00000000, 'B6158', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(483, 69, 2, 2, 3, 577.48000000, 1275.00000000, 'C7112', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(484, 69, 10, 2, 3, 577.48000000, 1275.00000000, 'C7112', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(485, 69, 2, 3, 1, 577.48000000, 1275.00000000, 'C7113', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(486, 69, 10, 3, 1, 577.48000000, 1275.00000000, 'C7113', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(487, 69, 2, 1, 7, 577.48000000, 1275.00000000, 'C7114', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(488, 69, 10, 1, 7, 577.48000000, 1275.00000000, 'C7114', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(489, 69, 2, 4, 1, 577.48000000, 1275.00000000, 'C7115', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(490, 69, 10, 4, 1, 577.48000000, 1275.00000000, 'C7115', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(491, 70, 11, 2, 4, 425.16000000, 1175.00000000, 'C6772', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(492, 70, 11, 3, 9, 425.16000000, 1175.00000000, 'C6773', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(493, 70, 11, 1, 11, 425.16000000, 1175.00000000, 'C6774', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(494, 70, 11, 4, 3, 425.16000000, 1175.00000000, 'C6775', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(495, 70, 11, 2, 1, 466.76000000, 1175.00000000, 'C7099', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(496, 70, 11, 3, 2, 466.76000000, 1175.00000000, 'C7100', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(497, 70, 11, 1, 1, 466.76000000, 1175.00000000, 'C7101', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(498, 70, 11, 4, 0, 466.76000000, 1175.00000000, 'C7102', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(499, 71, 1, 0, 0, 3777.86000000, 16000.00000000, 'C8864', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(500, 71, 10, 0, 0, 3777.86000000, 16000.00000000, 'C8864', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(501, 71, 1, 0, 2, 2305.54000000, 5995.00000000, 'D0343', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(502, 71, 20, 0, 2, 2305.54000000, 5995.00000000, 'D0343', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(503, 72, 11, 0, 0, 3813.56000000, 10295.00000000, 'B9064', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(504, 72, 13, 0, 0, 3813.56000000, 10295.00000000, 'B9064', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(505, 72, 11, 0, 4, 3972.96000000, 8500.00000000, 'C8449', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(506, 72, 13, 0, 4, 3972.96000000, 8500.00000000, 'C8449', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(507, 73, 9, 0, 3, 2255.91000000, 5995.00000000, 'C9085', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(508, 73, 14, 0, 3, 2255.91000000, 5995.00000000, 'C9085', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(509, 74, 1, 0, 5, 1875.60000000, 4995.00000000, 'C9977', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(510, 74, 12, 0, 5, 1875.60000000, 4995.00000000, 'C9977', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(511, 75, 1, 0, 0, 1958.28000000, 5995.00000000, 'C9981', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(512, 75, 5, 0, 0, 1958.28000000, 5995.00000000, 'C9981', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(513, 75, 1, 0, 6, 1658.28000000, 4500.00000000, 'C9979', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(514, 75, 5, 0, 6, 1658.28000000, 4500.00000000, 'C9979', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(515, 76, 0, 0, 2, 1590.48000000, 4995.00000000, 'D0064', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(516, 77, 2, 0, 2, 2207.89000000, 5995.00000000, 'D0402', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(517, 77, 14, 0, 2, 2207.89000000, 5995.00000000, 'D0402', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(518, 78, 5, 0, 3, 1630.13000000, 4500.00000000, 'D0411', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(519, 79, 2, 0, 3, 2011.31000000, 4500.00000000, 'D0413', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(520, 80, 2, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(521, 80, 15, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(522, 80, 16, 0, 5, 2345.79000000, 5995.00000000, 'D0519', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(523, 81, 2, 0, 5, 2108.11000000, 4500.00000000, 'D0539', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(524, 81, 15, 0, 5, 2108.11000000, 4500.00000000, 'D0539', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(525, 81, 16, 0, 5, 2108.11000000, 4500.00000000, 'D0539', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(526, 82, 12, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(527, 82, 15, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(528, 82, 17, 0, 4, 1995.74000000, 4995.00000000, 'D0455', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(529, 83, 2, 0, 5, 1583.15000000, 4500.00000000, 'D0553', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(530, 83, 13, 0, 5, 1583.15000000, 4500.00000000, 'D0553', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(531, 84, 2, 0, 4, 2400.59000000, 4995.00000000, 'D0555', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(532, 84, 13, 0, 4, 2400.59000000, 4995.00000000, 'D0555', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(533, 85, 9, 2, 3, 6326.55000000, 14185.00000000, 'B8045', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(534, 85, 10, 2, 3, 6326.55000000, 14185.00000000, 'B8045', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(535, 85, 9, 3, 2, 6326.55000000, 14185.00000000, 'B8046', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(536, 85, 10, 3, 2, 6326.55000000, 14185.00000000, 'B8046', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(537, 85, 9, 1, 3, 6326.55000000, 14185.00000000, 'B8047', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(538, 85, 10, 1, 3, 6326.55000000, 14185.00000000, 'B8047', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(539, 85, 9, 4, 1, 6326.55000000, 14185.00000000, 'B8048', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(540, 85, 10, 4, 1, 6326.55000000, 14185.00000000, 'B8048', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(541, 85, 9, 5, 2, 6326.55000000, 14185.00000000, 'B8049', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(542, 85, 10, 5, 2, 6326.55000000, 14185.00000000, 'B8049', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(543, 86, 9, 2, 0, 5845.82000000, 13995.00000000, 'C2842', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(544, 86, 10, 2, 0, 5845.82000000, 13995.00000000, 'C2842', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(545, 86, 9, 3, 0, 5845.82000000, 13995.00000000, 'C2843', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(546, 86, 10, 3, 0, 5845.82000000, 13995.00000000, 'C2843', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(547, 86, 9, 1, 2, 5845.82000000, 13995.00000000, 'C2844', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(548, 86, 10, 1, 2, 5845.82000000, 13995.00000000, 'C2844', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(549, 86, 9, 4, 0, 5845.82000000, 13995.00000000, 'C2845', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(550, 86, 10, 4, 0, 5845.82000000, 13995.00000000, 'C2845', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(551, 86, 9, 5, 0, 5845.82000000, 13995.00000000, 'C2846', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(552, 86, 10, 5, 0, 5845.82000000, 13995.00000000, 'C2846', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(553, 87, 11, 2, 1, 6487.67000000, 19995.00000000, 'C8300', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(554, 87, 11, 3, 3, 6487.67000000, 19995.00000000, 'C8301', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(555, 87, 11, 1, 6, 6487.67000000, 19995.00000000, 'C8302', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(556, 87, 11, 4, 2, 6487.67000000, 19995.00000000, 'C8303', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(557, 87, 11, 5, 0, 6487.67000000, 19995.00000000, 'C8304', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(558, 88, 1, 2, 2, 870.21000000, 2455.00000000, 'B9160', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(559, 88, 1, 3, 0, 870.21000000, 2455.00000000, 'B9161', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(560, 88, 1, 1, 1, 870.21000000, 2455.00000000, 'B9162', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(561, 88, 1, 4, 0, 870.21000000, 2455.00000000, 'B9163', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(562, 88, 1, 5, 0, 870.21000000, 2455.00000000, 'B9164', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(563, 89, 10, 2, 0, 959.72000000, 2455.00000000, 'C6272', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(564, 89, 10, 3, 0, 959.72000000, 2455.00000000, 'C6273', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(565, 89, 10, 1, 1, 959.72000000, 2455.00000000, 'C6274', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(566, 89, 10, 4, 4, 959.72000000, 2455.00000000, 'C6275', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(567, 89, 10, 5, 0, 959.72000000, 2455.00000000, 'C6276', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(568, 90, 5, 2, 6, 997.80000000, 2455.00000000, 'C9394', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(569, 90, 5, 3, 3, 997.80000000, 2455.00000000, 'C9395', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(570, 90, 5, 1, 5, 997.80000000, 2455.00000000, 'C9396', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(571, 90, 5, 4, 6, 997.80000000, 2455.00000000, 'C9397', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(572, 90, 5, 5, 3, 997.80000000, 2455.00000000, 'C9398', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(573, 91, 13, 2, 0, 1506.69000000, 5155.00000000, 'C7181', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(574, 91, 13, 3, 1, 1506.69000000, 5155.00000000, 'C7182', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(575, 91, 13, 1, 3, 1506.69000000, 5155.00000000, 'C7183', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(576, 91, 13, 4, 1, 1506.69000000, 5155.00000000, 'C7184', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(577, 91, 13, 5, 2, 1506.69000000, 5155.00000000, 'C7185', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(578, 92, 2, 0, 3, 611.16000000, 1975.00000000, 'B7493', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(579, 93, 14, 0, 2, 1493.86000000, 4485.00000000, 'D0662', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(580, 94, 10, 2, 0, 1191.57000000, 2535.00000000, 'B2643', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(581, 94, 10, 3, 0, 1191.57000000, 2535.00000000, 'B2644', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(582, 94, 10, 2, 0, 1191.57000000, 2535.00000000, 'C9806', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(583, 94, 10, 2, 0, 1191.57000000, 2535.00000000, 'B3169', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(584, 94, 10, 3, 4, 1191.57000000, 2535.00000000, 'B3170', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(585, 95, 10, 2, 2, 723.25000000, 2065.00000000, 'C2322', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(586, 95, 10, 3, 6, 723.25000000, 2065.00000000, 'C2323', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(587, 95, 10, 1, 4, 723.25000000, 2065.00000000, 'C2324', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(588, 96, 1, 2, 0, 1928.91000000, 5285.00000000, 'C5163', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(589, 96, 12, 2, 0, 1928.91000000, 5285.00000000, 'C5163', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(590, 96, 1, 3, 1, 1928.91000000, 5285.00000000, 'C5164', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(591, 96, 12, 3, 1, 1928.91000000, 5285.00000000, 'C5164', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(592, 96, 1, 1, 1, 1928.91000000, 5285.00000000, 'C5165', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(593, 96, 12, 1, 1, 1928.91000000, 5285.00000000, 'C5165', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(594, 96, 1, 4, 1, 1928.91000000, 5285.00000000, 'C5166', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(595, 96, 12, 4, 1, 1928.91000000, 5285.00000000, 'C5166', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(596, 97, 1, 2, 3, 2407.78000000, 6985.00000000, 'C4974', 10, NULL, NULL, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(597, 97, 1, 3, 3, 2407.78000000, 6985.00000000, 'C4975', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(598, 97, 1, 1, 1, 2407.78000000, 6985.00000000, 'C4976', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(599, 97, 1, 4, 1, 2407.78000000, 6985.00000000, 'C4977', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(600, 98, 1, 2, 0, 1239.38000000, 3985.00000000, 'C6066', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(601, 98, 1, 3, 0, 1239.38000000, 3985.00000000, 'C6067', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(602, 98, 1, 1, 0, 1239.38000000, 3985.00000000, 'C6068', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(603, 98, 1, 4, 1, 1239.38000000, 3985.00000000, 'C6069', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(604, 99, 5, 3, 3, 874.05000000, 2455.00000000, 'D0770', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(605, 99, 5, 2, 1, 874.05000000, 2455.00000000, 'D0772', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(606, 100, 11, 3, 3, 1790.37000000, 5855.00000000, 'D0826', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(607, 100, 11, 2, 4, 1905.34000000, 5855.00000000, 'D0828', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(608, 101, 13, 3, 3, 1816.37000000, 5855.00000000, 'D0822', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(609, 101, 13, 2, 1, 1933.20000000, 5855.00000000, 'D0824', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(610, 102, 14, 3, 2, 3113.23000000, 6955.00000000, 'D0788', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(611, 102, 14, 2, 0, 3113.23000000, 6955.00000000, 'D0790', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(612, 103, 2, 1, 8, 830.44000000, 2955.00000000, 'D0830', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(613, 103, 2, 2, 0, 830.44000000, 2955.00000000, 'D0832', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(614, 104, 1, 2, 2, 1494.03000000, 4495.00000000, 'C9129', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(615, 104, 2, 2, 2, 1494.03000000, 4495.00000000, 'C9129', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(616, 104, 1, 3, 3, 1494.03000000, 4495.00000000, 'C9130', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(617, 104, 2, 3, 3, 1494.03000000, 4495.00000000, 'C9130', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(618, 104, 1, 1, 4, 1494.03000000, 4495.00000000, 'C9131', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(619, 104, 2, 1, 4, 1494.03000000, 4495.00000000, 'C9131', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(620, 104, 1, 4, 1, 1494.03000000, 4495.00000000, 'C9132', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(621, 104, 2, 4, 1, 1494.03000000, 4495.00000000, 'C9132', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(622, 104, 1, 5, 0, 1494.03000000, 4495.00000000, 'C9133', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(623, 104, 2, 5, 0, 1494.03000000, 4495.00000000, 'C9133', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(624, 105, 0, 0, 4, 2830.20000000, 6195.00000000, 'C6031', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(625, 105, 0, 0, 3, 2830.20000000, 6195.00000000, 'C6032', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(626, 105, 0, 0, 1, 2830.20000000, 6195.00000000, 'C6033', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(627, 105, 0, 0, 2, 2830.20000000, 6195.00000000, 'C6034', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(628, 105, 0, 0, 1, 2830.20000000, 6195.00000000, 'C6035', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(629, 106, 10, 1, 0, 2425.77000000, 5800.00000000, 'D0730', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(630, 106, 10, 1, 5, 2425.77000000, 5800.00000000, 'D0390', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(631, 106, 10, 3, 2, 2425.77000000, 5800.00000000, 'D0392', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(632, 106, 10, 2, 2, 2425.77000000, 5800.00000000, 'D0394', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(633, 107, 10, 2, 3, 385.00000000, 975.00000000, 'C6724', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(634, 107, 10, 3, 9, 385.00000000, 975.00000000, 'C6725', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(635, 107, 10, 1, 8, 385.00000000, 975.00000000, 'C6726', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(636, 107, 10, 5, 0, 385.00000000, 975.00000000, 'C6727', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(637, 108, 1, 5, 0, 433.84000000, 1175.00000000, 'C7110', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(638, 108, 10, 5, 0, 433.84000000, 1175.00000000, 'C7110', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(639, 108, 1, 2, 8, 433.84000000, 1175.00000000, 'C7106', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(640, 108, 10, 2, 8, 433.84000000, 1175.00000000, 'C7106', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(641, 108, 1, 3, 4, 433.84000000, 1175.00000000, 'C7107', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(642, 108, 10, 3, 4, 433.84000000, 1175.00000000, 'C7107', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(643, 108, 1, 1, 12, 433.84000000, 1175.00000000, 'C7108', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(644, 108, 10, 1, 12, 433.84000000, 1175.00000000, 'C7108', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(645, 108, 1, 4, 2, 433.84000000, 1175.00000000, 'C7109', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(646, 108, 10, 4, 2, 433.84000000, 1175.00000000, 'C7109', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(647, 108, 1, 2, 0, 642.41000000, 1565.00000000, 'C7499', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(648, 108, 2, 2, 0, 642.41000000, 1565.00000000, 'C7499', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(649, 108, 1, 3, 0, 642.41000000, 1565.00000000, 'C7500', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(650, 108, 2, 3, 0, 642.41000000, 1565.00000000, 'C7500', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(651, 108, 1, 1, 1, 642.41000000, 1565.00000000, 'C7501', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(652, 108, 2, 1, 1, 642.41000000, 1565.00000000, 'C7501', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(653, 108, 1, 4, 0, 642.41000000, 1565.00000000, 'C7502', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(654, 108, 2, 4, 0, 642.41000000, 1565.00000000, 'C7502', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(655, 109, 13, 2, 3, 325.74000000, 975.00000000, 'C6729', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(656, 109, 13, 3, 8, 325.74000000, 975.00000000, 'C6730', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(657, 109, 13, 1, 11, 325.74000000, 975.00000000, 'C6731', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(658, 109, 13, 4, 1, 325.74000000, 975.00000000, 'C6732', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(659, 110, 10, 2, 1, 430.84000000, 1175.00000000, 'C6997', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(660, 110, 10, 3, 2, 430.84000000, 1175.00000000, 'C6998', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(661, 110, 10, 1, 8, 430.84000000, 1175.00000000, 'C6999', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(662, 110, 10, 4, 4, 430.84000000, 1175.00000000, 'C7000', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(663, 111, 1, 3, 0, 384.58000000, 955.00000000, 'C5738', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(664, 111, 12, 3, 0, 384.58000000, 955.00000000, 'C5738', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(665, 111, 1, 1, 0, 384.58000000, 955.00000000, 'C5739', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(666, 111, 12, 1, 0, 384.58000000, 955.00000000, 'C5739', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(667, 111, 12, 2, 0, 266.95000000, 955.00000000, 'C5741', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(668, 111, 12, 3, 0, 266.95000000, 955.00000000, 'C5742', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(669, 111, 12, 1, 0, 266.95000000, 955.00000000, 'C5743', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(670, 111, 11, 2, 0, 270.64000000, 955.00000000, 'C5745', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(671, 111, 11, 3, 0, 270.64000000, 955.00000000, 'C5746', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(672, 111, 11, 1, 4, 270.64000000, 955.00000000, 'C5747', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(673, 111, 13, 2, 0, 273.80000000, 955.00000000, 'C5749', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(674, 111, 13, 3, 0, 273.80000000, 955.00000000, 'C5750', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(675, 111, 13, 1, 0, 273.80000000, 955.00000000, 'C5751', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(676, 111, 2, 2, 0, 406.07000000, 955.00000000, 'C5753', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(677, 111, 2, 3, 0, 406.07000000, 955.00000000, 'C5754', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(678, 111, 2, 1, 0, 406.07000000, 955.00000000, 'C5755', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(679, 112, 2, 0, 3, 2316.68000000, 4775.00000000, 'D0920', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(680, 113, 2, 0, 7, 1733.15000000, 4995.00000000, 'D0854', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(681, 113, 13, 0, 7, 1733.15000000, 4995.00000000, 'D0854', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(682, 114, 1, 0, 7, 3065.98000000, 5995.00000000, 'D0916', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(683, 114, 2, 0, 7, 3065.98000000, 5995.00000000, 'D0916', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(684, 115, 2, 0, 4, 1772.18000000, 4500.00000000, 'D0914', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(685, 115, 12, 0, 4, 1772.18000000, 4500.00000000, 'D0914', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(686, 116, 2, 0, 4, 4547.32000000, 10995.00000000, 'D0962', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(687, 116, 12, 0, 4, 4547.32000000, 10995.00000000, 'D0962', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(688, 117, 13, 0, 7, 1600.70000000, 4500.00000000, 'D0912', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(689, 118, 10, 0, 8, 1997.47000000, 5995.00000000, 'D0936', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(690, 119, 2, 0, 9, 2225.74000000, 5995.00000000, 'D0938', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(691, 119, 5, 0, 9, 2225.74000000, 5995.00000000, 'D0938', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(692, 120, 0, 4, 5, 2986.71000000, 5995.00000000, 'D0928', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(693, 121, 10, 0, 8, 1833.32000000, 4995.00000000, 'D0926', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(694, 121, 13, 0, 8, 1833.32000000, 4995.00000000, 'D0926', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(695, 122, 5, 0, 8, 1709.97000000, 4995.00000000, 'D0966', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(696, 122, 10, 0, 8, 1709.97000000, 4995.00000000, 'D0966', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(697, 123, 1, 0, 2, 2454.92000000, 4995.00000000, 'D0980', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(698, 123, 2, 0, 2, 2454.92000000, 4995.00000000, 'D0980', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(699, 123, 14, 0, 2, 2454.92000000, 4995.00000000, 'D0980', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(700, 124, 2, 0, 4, 2358.45000000, 4995.00000000, 'D0982', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(701, 124, 14, 0, 4, 2358.45000000, 4995.00000000, 'D0982', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(702, 125, 0, 0, 10, 3320.00000000, 4650.00000000, 'B0379', 10, NULL, NULL, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(703, 126, 0, 0, 25, 433.00000000, 544.00000000, 'S1253', 10, NULL, NULL, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(2, 'Unstitched', 'unstitched', NULL, 1, NULL, '2023-03-07 04:57:29', '2023-03-11 09:38:01');

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
(56, '2023_05_16_065716_create_role_permissions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(16,4) NOT NULL,
  `vat_rate` double(4,2) NOT NULL DEFAULT 0.00 COMMENT 'vat rate in percentage ''%''',
  `vat_amount` double(16,4) NOT NULL DEFAULT 0.0000 COMMENT 'value added vat amount',
  `total_item` int(11) NOT NULL DEFAULT 0,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '0 for COD/1 for MPAY/ 2 for POS/ 3 for CCRD/4 for BOD if not set default COD',
  `payment_via` tinyint(4) DEFAULT NULL COMMENT '0 for COD,1 Online',
  `payment_method_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ssl,amex,stripe',
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `coupon_discount` double DEFAULT 0,
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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `vat_rate`, `vat_amount`, `total_item`, `shipping_method`, `coupon`, `payment_method`, `payment_via`, `payment_method_name`, `transaction_id`, `discount`, `coupon_discount`, `payment_status`, `validation_id`, `card_type`, `order_date`, `requested_delivery_date`, `payment_date`, `shipping_amount`, `tracking_id`, `payment_info`, `status`, `is_same_address`, `order_position`, `delivery_type`, `percel_type`, `pickup_point_no`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '202303141678775410', 3, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-14', '2023-03-15', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-14 06:30:10', '2023-03-14 06:30:10'),
(3, '202303141678775616', 3, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-14', '2023-03-15', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-14 06:33:36', '2023-03-14 06:33:36'),
(4, '202303141678777759', 3, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-14', '2023-03-15', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-14 07:09:19', '2023-03-14 07:09:19'),
(5, '202303141678786180', 1, 11990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-14', '2023-03-15', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-14 09:29:40', '2023-03-14 09:29:40'),
(6, '202303141678786816', 1, 1875.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-14', '2023-03-15', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-14 09:40:16', '2023-03-14 09:40:16'),
(7, '202303141678804307', 4, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-14', '2023-03-15', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-14 14:31:47', '2023-03-14 14:31:47'),
(17, '202303151678875458', 4, 21990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-15', '2023-03-16', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-15 10:17:38', '2023-03-15 10:17:38'),
(18, '202303161678955315', 4, 4500.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 08:28:35', '2023-03-16 08:28:35'),
(20, '202303161678955384', 4, 4500.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 08:29:44', '2023-03-16 08:29:44'),
(22, '202303161678956064', 4, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 08:41:04', '2023-03-16 08:41:04'),
(26, '202303161678958596', 7, 10990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 09:23:16', '2023-03-16 09:23:16'),
(28, '202303161678959898', 9, 8950.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 09:44:58', '2023-03-16 09:44:58'),
(30, '202303161678959951', 7, 16985.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 09:45:51', '2023-03-16 09:45:51'),
(32, '202303161678959981', 9, 8950.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-16', '2023-03-17', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-16 09:46:21', '2023-03-16 09:46:21'),
(35, '202303191679206210', 10, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-19', '2023-03-20', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-19 06:10:10', '2023-03-19 06:10:10'),
(36, '202303191679206210', 10, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-19', '2023-03-20', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-19 06:10:10', '2023-03-19 06:10:10'),
(38, '202303191679206303', 10, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-19', '2023-03-20', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-19 06:11:43', '2023-03-19 06:11:43'),
(39, '202303191679206304', 10, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-19', '2023-03-20', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-19 06:11:44', '2023-03-19 06:11:44'),
(41, '202303191679225534', 5, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-19', '2023-03-20', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-19 11:32:14', '2023-03-19 11:32:14'),
(43, '202303191679244682', 4, 41850.0000, 0.00, 0.0000, 6, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-19', '2023-03-20', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-19 16:51:22', '2023-03-19 16:51:22'),
(45, '202303201679311935', 5, 27900.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 11:32:15', '2023-03-20 11:32:15'),
(47, '202303201679312252', 5, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 11:37:32', '2023-03-20 11:37:32'),
(49, '202303201679314118', 4, 26975.0000, 0.00, 0.0000, 5, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 12:08:38', '2023-03-20 12:08:38'),
(50, '202303201679317678', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 13:07:58', '2023-03-20 13:07:58'),
(51, '202303201679318124', 0, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 13:15:24', '2023-03-20 13:15:24'),
(53, '202303201679318894', 0, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 13:28:14', '2023-03-20 13:28:14'),
(54, '202303201679321347', 0, 27900.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:09:07', '2023-03-20 14:09:07'),
(55, '202303201679322421', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:27:01', '2023-03-20 14:27:01'),
(56, '202303201679322435', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:27:15', '2023-03-20 14:27:15'),
(57, '202303201679322503', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:28:23', '2023-03-20 14:28:23'),
(59, '202303201679322583', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:29:43', '2023-03-20 14:29:43'),
(60, '202303201679322634', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:30:34', '2023-03-20 14:30:34'),
(61, '202303201679322815', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:33:35', '2023-03-20 14:33:35'),
(62, '202303201679323480', 0, 14985.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:44:40', '2023-03-20 14:44:40'),
(64, '202303201679324130', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:55:30', '2023-03-20 14:55:30'),
(66, '202303201679324277', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:57:57', '2023-03-20 14:57:57'),
(68, '202303201679324317', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:58:37', '2023-03-20 14:58:37'),
(70, '202303201679324380', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-20', '2023-03-21', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-20 14:59:40', '2023-03-20 14:59:40'),
(73, '202303211679376993', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-21', '2023-03-22', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 05:36:33', '2023-03-21 05:36:33'),
(74, '202303211679377054', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '2303211138010QqEP02UBodiwDl', 0, 0, 1, '230321113801O52gJTtol8Yn0I7', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"74\",\"val_id\":\"230321113801O52gJTtol8Yn0I7\",\"amount\":\"10090.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"9837.75\",\"card_no\":null,\"bank_tran_id\":\"2303211138010QqEP02UBodiwDl\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 11:37:34\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"73e5ccb80cb2e6e35fdff5bd2d997522\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"aceac91f945a34385ea5115ae353e087e2db785146c19a7bf3f76dde7a3496f1\",\"currency_type\":\"BDT\",\"currency_amount\":\"10090.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 05:37:34', '2023-03-21 05:38:04'),
(75, '202303211679377215', 5, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-21', '2023-03-22', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 05:40:15', '2023-03-21 05:40:15'),
(78, '202303211679377966', 5, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303211153081vrYmWI7ZkktpGx', 0, 0, 1, '2303211153081c1geTPLtscAju3', 'TAP-TAP', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"78\",\"val_id\":\"2303211153081c1geTPLtscAju3\",\"amount\":\"100.00\",\"card_type\":\"TAP-TAP\",\"store_amount\":\"97.50\",\"card_no\":null,\"bank_tran_id\":\"2303211153081vrYmWI7ZkktpGx\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 11:52:47\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"TAB\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"f195822ced2c59a1b128ed59357a59b2\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"93ec9960dbded11806e1109e2d9d41ac7e001def185daae1d419330bb5dfa761\",\"currency_type\":\"BDT\",\"currency_amount\":\"100.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 05:52:46', '2023-03-21 05:53:10'),
(81, '202303211679379959', 0, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-21', '2023-03-22', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 06:25:59', '2023-03-21 06:25:59'),
(82, '202303211679380794', 5, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23032112400207KvD0qDGQsyVte', 0, 0, 1, '2303211240030te6zeITmQtKyud', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"82\",\"val_id\":\"2303211240030te6zeITmQtKyud\",\"amount\":\"100.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"97.50\",\"card_no\":null,\"bank_tran_id\":\"23032112400207KvD0qDGQsyVte\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 12:39:54\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"9a24e4e368a7381243ee42b33379f7eb\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"546fc37a5e1352979109109feeb05994bb3ade04cda26017208d84094bee5ca8\",\"currency_type\":\"BDT\",\"currency_amount\":\"100.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 06:39:54', '2023-03-21 06:40:05'),
(83, '202303211679380995', 5, 79980.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230321124324BTL4i46ljUo5Z8w', 0, 0, 1, '23032112432401ANBf6hlYj4EoK', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"83\",\"val_id\":\"23032112432401ANBf6hlYj4EoK\",\"amount\":\"80080.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"78078.00\",\"card_no\":null,\"bank_tran_id\":\"230321124324BTL4i46ljUo5Z8w\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 12:43:15\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"f27f9efcf7786b5d40feeb7e88689e7d\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"50d4c23eb63f06c7ee0cc1fca1ca306a9174a1d15e1c6d11269a0ab4bfe84a33\",\"currency_type\":\"BDT\",\"currency_amount\":\"80080.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 06:43:15', '2023-03-21 06:43:27'),
(84, '202303211679381452', 5, 27900.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '2303211251121M8TljyY6T03usv', 0, 0, 1, '230321125113rwISOuhvW3GMSQC', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"84\",\"val_id\":\"230321125113rwISOuhvW3GMSQC\",\"amount\":\"28000.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"27300.00\",\"card_no\":null,\"bank_tran_id\":\"2303211251121M8TljyY6T03usv\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 12:50:52\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"fc1556de8ff471ff1ec3429c3951a21f\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"5076602a67857d9d243225a0f1094408f0b4a2182cbbe241747ddb916925a5b8\",\"currency_type\":\"BDT\",\"currency_amount\":\"28000.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 06:50:52', '2023-03-21 06:51:15'),
(86, '202303211679382029', 4, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23032113005114pll04iK0TX5Bm', 0, 0, 1, '230321130051BCV0hwJcJqTmKM8', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"86\",\"val_id\":\"230321130051BCV0hwJcJqTmKM8\",\"amount\":\"5095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"4967.63\",\"card_no\":null,\"bank_tran_id\":\"23032113005114pll04iK0TX5Bm\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 13:00:30\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"cbf6c0e40165084ed0aca594f3255f61\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e9f0b022a7a911b8af6da1b999fee781fa6dc46d13b14dc00da9c8bfe4f5cc0e\",\"currency_type\":\"BDT\",\"currency_amount\":\"5095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 07:00:29', '2023-03-21 07:00:53'),
(87, '202303211679385791', 5, 27900.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-21', '2023-03-22', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 08:03:11', '2023-03-21 08:03:11'),
(88, '202303211679385998', 5, 27900.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-21', '2023-03-22', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 08:06:38', '2023-03-21 08:06:38'),
(120, '202303211679390200', 4, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230321151656joh5b8vQKLfBUCJ', 0, 0, 1, '2303211516561BCzQuPJSCY4ebt', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"120\",\"val_id\":\"2303211516561BCzQuPJSCY4ebt\",\"amount\":\"10090.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"9837.75\",\"card_no\":null,\"bank_tran_id\":\"230321151656joh5b8vQKLfBUCJ\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 15:16:41\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"ea3804def154fda73d68b9ef18edabbb\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"d255ec5e7c3e14a68adf296ecaa53eb3caa6595c3156019b77c22f040c0f507b\",\"currency_type\":\"BDT\",\"currency_amount\":\"10090.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 09:16:40', '2023-03-21 09:16:59'),
(125, '202303211679393624', 5, 19945.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '230321161359AbNAAbdXFKfOXbF', 0, 0, 1, '23032116135913Au2Lzlx1oA5Or', 'IBBL-Islami Bank', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"125\",\"val_id\":\"23032116135913Au2Lzlx1oA5Or\",\"amount\":\"20045.00\",\"card_type\":\"IBBL-Islami Bank\",\"store_amount\":\"19543.88\",\"card_no\":null,\"bank_tran_id\":\"230321161359AbNAAbdXFKfOXbF\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 16:13:44\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Islami Bank Bangladesh Limited\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"4e75558dc29a19deebe43ed2414557e4\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9db4b408a3d178b5fbaa41e69474ffe1e346ccfe078d34f1bba911162b4b33ca\",\"currency_type\":\"BDT\",\"currency_amount\":\"20045.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 10:13:44', '2023-03-21 10:14:02'),
(128, '202303211679395175', 5, 19945.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '230321163956RJv9piw6Iay5fzr', 0, 0, 1, '230321163956tR0ewvMaaimZamz', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"128\",\"val_id\":\"230321163956tR0ewvMaaimZamz\",\"amount\":\"20045.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"19543.88\",\"card_no\":null,\"bank_tran_id\":\"230321163956RJv9piw6Iay5fzr\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 16:39:35\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"48f1782ba03a453e9a3f2daf19f892fb\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1b108750df760eeb1875756e041cb9393e753f69159ec6f3a16ffedb740e5fe8\",\"currency_type\":\"BDT\",\"currency_amount\":\"20045.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 10:39:35', '2023-03-21 10:39:59'),
(131, '202303211679396634', 5, 19945.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-21', '2023-03-22', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 11:03:54', '2023-03-21 11:03:54'),
(133, '202303211679396691', 5, 19945.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '230321170512Fsqy5vR70FrXXUd', 0, 0, 1, '230321170512rmbgbcVIALTltX1', 'BKASH-BKash', '2023-03-21', '2023-03-22', '2023-03-21', 100, NULL, '{\"tran_id\":\"133\",\"val_id\":\"230321170512rmbgbcVIALTltX1\",\"amount\":\"20045.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"19543.88\",\"card_no\":null,\"bank_tran_id\":\"230321170512Fsqy5vR70FrXXUd\",\"status\":\"VALID\",\"tran_date\":\"2023-03-21 17:04:51\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"5a04bf7aa432ad3b84fbbe501a138230\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"6973c68d96a9bd885dcacc3f746f30e4ece01ef839647ca37d4dad303dd86d4a\",\"currency_type\":\"BDT\",\"currency_amount\":\"20045.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-21 11:04:51', '2023-03-21 11:05:14'),
(135, '202303221679465527', 4, 49950.0000, 0.00, 0.0000, 10, NULL, NULL, '0', NULL, 'sslCommerz', '23032212123014AkQv0DgfBlBiP', 0, 0, 1, '23032212123136QgX0XU3KkuETG', 'NAGAD-Nagad', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"135\",\"val_id\":\"23032212123136QgX0XU3KkuETG\",\"amount\":\"50050.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"48798.75\",\"card_no\":null,\"bank_tran_id\":\"23032212123014AkQv0DgfBlBiP\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 12:12:07\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"0ae10287bf250765cf56a7c7ebd38981\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e541621a95abe96349e23c3a2457a5167ab7fa4a274859322d330e359ae975f8\",\"currency_type\":\"BDT\",\"currency_amount\":\"50050.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 06:12:07', '2023-03-22 06:12:33'),
(136, '202303221679472209', 4, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230322140337M9Kxbp5TeLzvxJ9', 0, 0, 1, '230322140337yqWREKC3tJpQDpQ', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"136\",\"val_id\":\"230322140337yqWREKC3tJpQDpQ\",\"amount\":\"5095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"4967.63\",\"card_no\":null,\"bank_tran_id\":\"230322140337M9Kxbp5TeLzvxJ9\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 14:03:30\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"defbf4374903ddc598e601c94e2df1fc\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"755b72e8d8a9d318e7f56d15c4a16200a398d47b4ed56c16b48b9612838abeb9\",\"currency_type\":\"BDT\",\"currency_amount\":\"5095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 08:03:29', '2023-03-22 08:03:39'),
(137, '202303221679472268', 0, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303221404361y7TRo55FRT6PNy', 0, 0, 1, '230322140436IP4DVjgpan3XnuB', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"137\",\"val_id\":\"230322140436IP4DVjgpan3XnuB\",\"amount\":\"5095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"4967.63\",\"card_no\":null,\"bank_tran_id\":\"2303221404361y7TRo55FRT6PNy\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 14:04:28\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"300f97c20424f37ec9fba009781e9e2f\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"bca647082f1c79e6162341aff84fc650ce6c7875aec95493f1ce1e443b684dc4\",\"currency_type\":\"BDT\",\"currency_amount\":\"5095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 08:04:28', '2023-03-22 08:04:38'),
(138, '202303221679476999', 5, 6975.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230322152327oIWce8js24RywBX', 0, 0, 1, '2303221523271BF73zZ3QPanbfk', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"138\",\"val_id\":\"2303221523271BF73zZ3QPanbfk\",\"amount\":\"7075.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"6898.13\",\"card_no\":null,\"bank_tran_id\":\"230322152327oIWce8js24RywBX\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 15:23:19\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"4cd5734c928271e1216bd72b96a71266\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9b69891757be39d71e4d987d1f00812593061f83c1a1b06f9bb37853a95503de\",\"currency_type\":\"BDT\",\"currency_amount\":\"7075.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 09:23:19', '2023-03-22 09:23:30'),
(139, '202303221679488611', 12, 9490.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230322183703PhTwkaNQw5220f9', 0, 0, 1, '230322183703jf1f7B0LmefzW3X', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-03-22', '2023-03-23', '2023-03-22', 250, NULL, '{\"tran_id\":\"139\",\"val_id\":\"230322183703jf1f7B0LmefzW3X\",\"amount\":\"9740.00\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"9496.50\",\"card_no\":null,\"bank_tran_id\":\"230322183703PhTwkaNQw5220f9\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 18:36:52\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"2d0ff8cd6eac8e80305b3ea793104eb2\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"869959afa9af7d31ba275b1ffed63438fef768c651430592d0f2091a998b7db5\",\"currency_type\":\"BDT\",\"currency_amount\":\"9740.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 12:36:51', '2023-03-22 12:37:05'),
(140, '202303221679488690', 12, 11035.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '2303221838186cks2JwC3jT9UzO', 0, 0, 1, '2303221838190OY2few8dKYUJzk', 'ABBANKIB-AB Bank', '2023-03-22', '2023-03-23', '2023-03-22', 250, NULL, '{\"tran_id\":\"140\",\"val_id\":\"2303221838190OY2few8dKYUJzk\",\"amount\":\"11285.00\",\"card_type\":\"ABBANKIB-AB Bank\",\"store_amount\":\"11002.88\",\"card_no\":null,\"bank_tran_id\":\"2303221838186cks2JwC3jT9UzO\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 18:38:10\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"AB Bank Limited\",\"card_brand\":\"IB\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"9a227bb70d445e707693c2b3183872c9\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8421b09631d465e4c6982662c2df5d41cdbf2d236b3c24b00aadab1175679293\",\"currency_type\":\"BDT\",\"currency_amount\":\"11285.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 12:38:10', '2023-03-22 12:38:21'),
(141, '202303221679489175', 5, 0.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230322184623059GnJ85gEIidXk', 0, 0, 1, '230322184624Sm87YgmutJzuikM', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"141\",\"val_id\":\"230322184624Sm87YgmutJzuikM\",\"amount\":\"100.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"97.50\",\"card_no\":null,\"bank_tran_id\":\"230322184623059GnJ85gEIidXk\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 18:46:15\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"c7e909575dda1e52d108194c42300fa3\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"87924697ba9c3885af5ccd7bca76c9f62c93dffeda2afda0f4ad0fdc61625839\",\"currency_type\":\"BDT\",\"currency_amount\":\"100.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 12:46:15', '2023-03-22 12:46:26'),
(142, '202303221679489279', 0, 27900.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '2303221848480Byqb84rDlu48EN', 0, 0, 0, '230322184848Kd0MIP2Id6ovqZb', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-04-10', 100, NULL, '{\"tran_id\":\"142\",\"val_id\":\"230322184848Kd0MIP2Id6ovqZb\",\"amount\":\"28000.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"27300.00\",\"card_no\":null,\"bank_tran_id\":\"2303221848480Byqb84rDlu48EN\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 18:48:48\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"99ec6d3808751aaa8cae943865e4dc85\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"d0e0205a75e037289f9bac7a600c1a4f4552ce77396f55450c1ffbd3287fe84d\",\"currency_type\":null,\"currency_amount\":null,\"currency_rate\":null,\"base_fair\":null,\"value_a\":null,\"value_b\":null,\"value_c\":null,\"value_d\":null,\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 12:47:59', '2023-04-10 11:34:49'),
(143, '202303221679496384', 5, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230322204842XYnWQ1XnUXyeLOV', 0, 0, 1, '230322204842XxklHvhRyiz5ABZ', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 250, NULL, '{\"tran_id\":\"143\",\"val_id\":\"230322204842XxklHvhRyiz5ABZ\",\"amount\":\"10240.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"9984.00\",\"card_no\":null,\"bank_tran_id\":\"230322204842XYnWQ1XnUXyeLOV\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 20:48:42\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"89abb2a5add2b5a130fa8a173d8cfe6e\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"948d1bbc1ef9c19eae643db598cc722b241b35d33458e0bb82142e662cdb9e65\",\"currency_type\":null,\"currency_amount\":null,\"currency_rate\":null,\"base_fair\":null,\"value_a\":null,\"value_b\":null,\"value_c\":null,\"value_d\":null,\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 14:46:24', '2023-03-22 14:48:44'),
(144, '202303221679496810', 0, 9990.0000, 0.00, 0.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '2303222053551JpFmaZl9ck0lZO', 0, 0, 1, '23032220535512mJLOLtVfFvg4l', 'Cellfine-Cellfine', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"144\",\"val_id\":\"23032220535512mJLOLtVfFvg4l\",\"amount\":\"10090.00\",\"card_type\":\"Cellfine-Cellfine\",\"store_amount\":\"9837.75\",\"card_no\":null,\"bank_tran_id\":\"2303222053551JpFmaZl9ck0lZO\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 20:53:30\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Cellfine\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"1add51cf52c7ae304fd92a8291f1f218\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"13441ab99d8cf731175ce7b5261c9b0aa929623832d6bb277ad4db9399804393\",\"currency_type\":\"BDT\",\"currency_amount\":\"10090.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 14:53:30', '2023-03-22 14:53:57'),
(145, '202303221679498178', 0, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23032221163013JVYOut2lwnZhY', 0, 0, 1, '2303222116300K3230Q55j8XS8g', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"145\",\"val_id\":\"2303222116300K3230Q55j8XS8g\",\"amount\":\"6095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5942.63\",\"card_no\":null,\"bank_tran_id\":\"23032221163013JVYOut2lwnZhY\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 21:16:18\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"190348cb4cd3f7b863acbc8720cc76af\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"bf5f5b776f39128a4323ac5b2cb30024194b216b64991cca2918b568ea2d3315\",\"currency_type\":\"BDT\",\"currency_amount\":\"6095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 15:16:18', '2023-03-22 15:16:32'),
(146, '202303221679498408', 0, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303222120161QGjlNQil8k0N49', 0, 0, 1, '230322212016KEaZuQlRJVyRqfP', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"146\",\"val_id\":\"230322212016KEaZuQlRJVyRqfP\",\"amount\":\"6095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5942.63\",\"card_no\":null,\"bank_tran_id\":\"2303222120161QGjlNQil8k0N49\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 21:20:08\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"1f370ed63e7902c9181fe826fd19fa1c\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"21a662d49280e198a5b8837eb727cdf97ed8ccd39e44ad7c88882181091d1169\",\"currency_type\":\"BDT\",\"currency_amount\":\"6095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 15:20:08', '2023-03-22 15:20:19'),
(147, '202303221679498515', 0, 5995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230322212205DoXJarGBr80dopQ', 0, 0, 1, '230322212206v4MqlQof00kr0y0', 'NAGAD-Nagad', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"147\",\"val_id\":\"230322212206v4MqlQof00kr0y0\",\"amount\":\"6095.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"5942.63\",\"card_no\":null,\"bank_tran_id\":\"230322212205DoXJarGBr80dopQ\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 21:21:56\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"6315b282bb82eb6cb577a80f8a5b4ddd\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"85df36e2dec65508525957435262f747360b92495c42304085f3e26fa9b7fbde\",\"currency_type\":\"BDT\",\"currency_amount\":\"6095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 15:21:55', '2023-03-22 15:22:08'),
(148, '202303221679499851', 0, 42885.0000, 0.00, 0.0000, 7, NULL, NULL, '0', NULL, 'sslCommerz', '2303222144191Mk5Z0Hf2wJQJXb', 0, 0, 1, '2303222144201B4lax5k52IseTc', 'NAGAD-Nagad', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"148\",\"val_id\":\"2303222144201B4lax5k52IseTc\",\"amount\":\"42985.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"41910.38\",\"card_no\":null,\"bank_tran_id\":\"2303222144191Mk5Z0Hf2wJQJXb\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 21:44:12\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"79a72180c8a1bfd841c315ccd64f7b33\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e71a438872333023d0446f1af81753e60d0914a31caa9936ee7d135a88c91b4b\",\"currency_type\":\"BDT\",\"currency_amount\":\"42985.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 15:44:11', '2023-03-22 15:44:22'),
(149, '202303221679500728', 0, 14985.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '23032221590917FKKdxqbWmlFGD', 0, 0, 1, '230322215909k4aoAJI1Xh1qSEI', 'NAGAD-Nagad', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"149\",\"val_id\":\"230322215909k4aoAJI1Xh1qSEI\",\"amount\":\"15085.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"14707.88\",\"card_no\":null,\"bank_tran_id\":\"23032221590917FKKdxqbWmlFGD\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 21:58:49\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"3e6b877a7c8ece1d048d4caaac8b089c\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"5caf69d1a2953b4c28f8458896a91a805d46962bfcda75db8720fd8d3cc9a47a\",\"currency_type\":\"BDT\",\"currency_amount\":\"15085.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 15:58:48', '2023-03-22 15:59:12');
INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `vat_rate`, `vat_amount`, `total_item`, `shipping_method`, `coupon`, `payment_method`, `payment_via`, `payment_method_name`, `transaction_id`, `discount`, `coupon_discount`, `payment_status`, `validation_id`, `card_type`, `order_date`, `requested_delivery_date`, `payment_date`, `shipping_amount`, `tracking_id`, `payment_info`, `status`, `is_same_address`, `order_position`, `delivery_type`, `percel_type`, `pickup_point_no`, `deleted_at`, `created_at`, `updated_at`) VALUES
(150, '202303221679500801', 5, 14985.0000, 0.00, 0.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '230322220009dZHSKxmUkriGeKt', 0, 0, 1, '230322220009089vzNyM674gDWe', 'NAGAD-Nagad', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"150\",\"val_id\":\"230322220009089vzNyM674gDWe\",\"amount\":\"15085.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"14707.88\",\"card_no\":null,\"bank_tran_id\":\"230322220009dZHSKxmUkriGeKt\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 22:00:01\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"1355961b1af3dc9360f105a9a6524dbf\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"bf5a7a71833a606e356bc930bcf244263fe9aaf0706557401148997c956c14f1\",\"currency_type\":\"BDT\",\"currency_amount\":\"15085.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 16:00:01', '2023-03-22 16:00:11'),
(151, '202303221679501883', 0, 19995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23032222181205htZgVL8amS71K', 0, 0, 1, '230322221812ifceW5wwkuCi9i8', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"151\",\"val_id\":\"230322221812ifceW5wwkuCi9i8\",\"amount\":\"20095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"19592.63\",\"card_no\":null,\"bank_tran_id\":\"23032222181205htZgVL8amS71K\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 22:18:04\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"e5ee6e34af2f0707fc9d8f3cbef4a64a\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"6946ea7d7b1cecf725bfee62def2cb86fff19c9228f83e01365882e1671609ea\",\"currency_type\":\"BDT\",\"currency_amount\":\"20095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 16:18:03', '2023-03-22 16:18:15'),
(152, '202303221679502038', 5, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303222220560IeMdDnNQyMtq3A', 0, 0, 1, '2303222220569QWkyIDLKKYMqVC', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"152\",\"val_id\":\"2303222220569QWkyIDLKKYMqVC\",\"amount\":\"5095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"4967.63\",\"card_no\":null,\"bank_tran_id\":\"2303222220560IeMdDnNQyMtq3A\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 22:20:38\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"7c2da7cb356120c41d875dfee503cdc8\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e7fc24d8a160d7285503e8e10deb98b6fdb2debe1a68393ea40f6744e2ce8f0f\",\"currency_type\":\"BDT\",\"currency_amount\":\"5095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 16:20:38', '2023-03-22 16:20:59'),
(153, '202303221679505326', 11, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23032223154814RvNrHghAjwyTZ', 0, 0, 1, '2303222315486TqyueSszwjIrM3', 'BKASH-BKash', '2023-03-22', '2023-03-23', '2023-03-22', 100, NULL, '{\"tran_id\":\"153\",\"val_id\":\"2303222315486TqyueSszwjIrM3\",\"amount\":\"5095.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"4967.63\",\"card_no\":null,\"bank_tran_id\":\"23032223154814RvNrHghAjwyTZ\",\"status\":\"VALID\",\"tran_date\":\"2023-03-22 23:15:26\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"2eb12892f98daa0d9b76daf26e4d5e15\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1e03e9ed1ce38a66dca79dd6032e5c71fee4327d386fba5a3db5036b2e2de6f4\",\"currency_type\":\"BDT\",\"currency_amount\":\"5095.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-22 17:15:26', '2023-03-22 17:15:50'),
(155, '202303231679547260', 4, 4995.0000, 0.00, 0.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303231054310tZ2JskxNmghlcD', 0, 0, 1, '230323105431njsbDzZvsJdhYuY', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 250, NULL, '{\"tran_id\":\"155\",\"val_id\":\"230323105431njsbDzZvsJdhYuY\",\"amount\":\"5245.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5113.88\",\"card_no\":null,\"bank_tran_id\":\"2303231054310tZ2JskxNmghlcD\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 10:54:20\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"6055c2c50a002e20b52dbdced48ea9a1\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"b00f2556003a9d755241a2fbfd4dcf2213f9c024b78692c53a9ce275bc740b18\",\"currency_type\":\"BDT\",\"currency_amount\":\"5245.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-23 04:54:20', '2023-03-23 04:54:33'),
(156, '202303231679554567', 12, 9700.0000, 0.00, 0.0000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '2303231256180hjsS4QHyNjp8vM', 0, 0, 1, '23032312561805fbcVa9BpEWiim', 'OKAYWALLET-Okay Wallet', '2023-03-23', '2023-03-24', '2023-03-23', 250, NULL, '{\"tran_id\":\"156\",\"val_id\":\"23032312561805fbcVa9BpEWiim\",\"amount\":\"9950.00\",\"card_type\":\"OKAYWALLET-Okay Wallet\",\"store_amount\":\"9701.25\",\"card_no\":null,\"bank_tran_id\":\"2303231256180hjsS4QHyNjp8vM\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 12:56:07\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":null,\"card_brand\":null,\"card_sub_brand\":\"Classic\",\"card_issuer_country\":null,\"card_issuer_country_code\":null,\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"d6b1354e84bf06f741aa82fec098a2c6\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e85c21014bf770f79b2cd2a297f670c03331f5f70e5d3ebef27f60c45fd1e961\",\"currency_type\":\"BDT\",\"currency_amount\":\"9950.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-23 06:56:07', '2023-03-23 06:56:21'),
(157, '202303231679569734', 12, 14970.0000, 7.50, 1122.7500, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230323170901CEo6fk1tpZaFR6P', 0, 0, 1, '2303231709020FTw5zR6C9ZeRIZ', 'UPay-UPay', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"157\",\"val_id\":\"2303231709020FTw5zR6C9ZeRIZ\",\"amount\":\"16192.75\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"15787.93\",\"card_no\":null,\"bank_tran_id\":\"230323170901CEo6fk1tpZaFR6P\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 17:08:54\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"9d05f041db24f546b8f6ab2b4b50191e\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"f3665225d171316b75acc088bfaa786513bf02c8bcc334a563af1d94f1e29df9\",\"currency_type\":\"BDT\",\"currency_amount\":\"16192.75\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:08:54', '2023-03-23 11:09:04'),
(161, '202303231679570160', 4, 13955.0000, 7.50, 1046.6250, 3, NULL, NULL, '0', NULL, 'sslCommerz', '23032317160811bC7nDhGQZtnfd', 0, 0, 1, '230323171608Nrclt1Y7Q3hECsb', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 250, NULL, '{\"tran_id\":\"161\",\"val_id\":\"230323171608Nrclt1Y7Q3hECsb\",\"amount\":\"15251.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"14870.34\",\"card_no\":null,\"bank_tran_id\":\"23032317160811bC7nDhGQZtnfd\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 17:16:01\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"ab33c6fa05d5e739c2656984643ce955\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"d2a3d56fb82f12e2bf405a0ebc7635adef96c3235474ac6a8c9ab25c9623f3fc\",\"currency_type\":\"BDT\",\"currency_amount\":\"15251.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:16:00', '2023-03-23 11:16:10'),
(162, '202303231679570195', 0, 19995.0000, 7.50, 1499.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:16:35', '2023-03-23 11:16:35'),
(163, '202303231679571724', 0, 0.0000, 7.50, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:42:04', '2023-03-23 11:42:04'),
(164, '202303231679571724', 0, 0.0000, 7.50, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:42:04', '2023-03-23 11:42:04'),
(165, '202303231679571895', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:44:55', '2023-03-23 11:44:55'),
(166, '202303231679571895', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:44:55', '2023-03-23 11:44:55'),
(167, '202303231679571895', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:44:55', '2023-03-23 11:44:55'),
(168, '202303231679572021', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:47:01', '2023-03-23 11:47:01'),
(169, '202303231679572021', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:47:01', '2023-03-23 11:47:01'),
(170, '202303231679572078', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:47:58', '2023-03-23 11:47:58'),
(171, '202303231679572078', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:47:58', '2023-03-23 11:47:58'),
(172, '202303231679572102', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:48:22', '2023-03-23 11:48:22'),
(173, '202303231679572124', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:48:44', '2023-03-23 11:48:44'),
(174, '202303231679572275', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:51:15', '2023-03-23 11:51:15'),
(175, '202303231679572275', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:51:15', '2023-03-23 11:51:15'),
(177, '202303231679572368', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:52:48', '2023-03-23 11:52:48'),
(178, '202303231679572372', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:52:52', '2023-03-23 11:52:52'),
(179, '202303231679572378', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:52:58', '2023-03-23 11:52:58'),
(180, '202303231679572378', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:52:58', '2023-03-23 11:52:58'),
(181, '202303231679572511', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:55:11', '2023-03-23 11:55:11'),
(182, '202303231679572511', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:55:11', '2023-03-23 11:55:11'),
(183, '202303231679572556', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:55:56', '2023-03-23 11:55:56'),
(184, '202303231679572622', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:57:02', '2023-03-23 11:57:02'),
(185, '202303231679572679', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:57:59', '2023-03-23 11:57:59'),
(186, '202303231679572745', 0, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 11:59:05', '2023-03-23 11:59:05'),
(187, '202303231679572803', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 250, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:00:03', '2023-03-23 12:00:03'),
(188, '202303231679572972', 5, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:02:52', '2023-03-23 12:02:52'),
(189, '202303231679573027', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:03:47', '2023-03-23 12:03:47'),
(190, '202303231679573059', 5, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:04:19', '2023-03-23 12:04:19'),
(191, '202303231679573386', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:09:46', '2023-03-23 12:09:46'),
(193, '202303231679573578', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:12:58', '2023-03-23 12:12:58'),
(194, '202303231679573782', 5, 0.0000, 7.50, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-23 12:16:22', '2023-03-23 12:16:22'),
(195, '202303231679573839', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:17:19', '2023-03-23 12:17:19'),
(196, '202303231679574143', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303231823070W6O5SskzcUQx8y', 0, 0, 1, '2303231823081moqKpEe3ym0S4o', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"196\",\"val_id\":\"2303231823081moqKpEe3ym0S4o\",\"amount\":\"6544.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"6381.01\",\"card_no\":null,\"bank_tran_id\":\"2303231823070W6O5SskzcUQx8y\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 18:22:24\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"bf098af9aaa62fd758df35762d65ac42\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"176531d012e7fdc050b475ff051a5b09a96e4bdec277e959eb9b4f080fcd0de3\",\"currency_type\":\"BDT\",\"currency_amount\":\"6544.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:22:23', '2023-03-23 12:23:10'),
(197, '202303231679574422', 4, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:27:02', '2023-03-23 12:27:02'),
(198, '202303231679574606', 5, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:30:06', '2023-03-23 12:30:06'),
(199, '202303231679574625', 4, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230323183032NVw7FKNkdkzgiXR', 0, 0, 1, '2303231830321ZIFxVPAVotqX1Z', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"199\",\"val_id\":\"2303231830321ZIFxVPAVotqX1Z\",\"amount\":\"5469.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5332.89\",\"card_no\":null,\"bank_tran_id\":\"230323183032NVw7FKNkdkzgiXR\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 18:30:26\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"0f3ad38d3ee653f380c25b13146a6bcc\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8b4da86126fa6311e3ca512e42c967133feb2bb3fd50a6194a8e8ba3b166673b\",\"currency_type\":\"BDT\",\"currency_amount\":\"5469.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:30:25', '2023-03-23 12:30:34'),
(200, '202303231679574884', 0, 0.0000, 7.50, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:34:44', '2023-03-23 12:34:44'),
(201, '202303231679574963', 0, 9990.0000, 7.50, 749.2500, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-23 12:36:03', '2023-03-23 12:36:03'),
(205, '202303231679575395', 5, 9990.0000, 7.50, 749.2500, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-23 12:43:15', '2023-03-23 12:43:15'),
(206, '202303231679576015', 0, 0.0000, 7.50, 0.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, '2023-03-23 12:53:35', '2023-03-23 12:53:35'),
(207, '202303231679576089', 5, 19995.0000, 7.50, 1499.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:54:49', '2023-03-23 12:54:49'),
(208, '202303231679576144', 5, 19995.0000, 7.50, 1499.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 12:55:44', '2023-03-23 12:55:44'),
(209, '202303231679576410', 5, 9990.0000, 7.50, 749.2500, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230323190018rtTJM2ES77N4ypL', 0, 0, 1, '230323190019Bx3KPlhHUIMH69c', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"209\",\"val_id\":\"230323190019Bx3KPlhHUIMH69c\",\"amount\":\"10839.25\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"10568.27\",\"card_no\":null,\"bank_tran_id\":\"230323190018rtTJM2ES77N4ypL\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 19:00:10\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"5bcd75a569a75291334ad29697df1b99\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"e249faa60978963840f4ef4a9c22c9a4d8609348a2b2fce58024db56ff505ce1\",\"currency_type\":\"BDT\",\"currency_amount\":\"10839.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 13:00:10', '2023-03-23 13:00:21'),
(210, '202303231679576474', 0, 9990.0000, 7.50, 749.2500, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230323190146FiWqC2Zh5NTl2Xp', 0, 0, 1, '230323190147zsjqs5bKUbBfJkx', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"210\",\"val_id\":\"230323190147zsjqs5bKUbBfJkx\",\"amount\":\"10839.25\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"10568.27\",\"card_no\":null,\"bank_tran_id\":\"230323190146FiWqC2Zh5NTl2Xp\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 19:01:15\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"5e9ead2da0aa7fe9771c674a03193073\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"57996a55407faa5e29676aaf35981139ed957b08376d22fefc55bffacb084d12\",\"currency_type\":\"BDT\",\"currency_amount\":\"10839.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 13:01:14', '2023-03-23 13:01:49'),
(211, '202303231679578015', 5, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303231927020np08Xp4seZefKC', 0, 0, 1, '2303231927020GDRsr6LZNQjYwV', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"211\",\"val_id\":\"2303231927020GDRsr6LZNQjYwV\",\"amount\":\"5469.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5332.89\",\"card_no\":null,\"bank_tran_id\":\"2303231927020np08Xp4seZefKC\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 19:26:56\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"c043c254d8fc51eb2355971a9a209974\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"d34760a559f088287575909565904bd10552ab3179f9c550f28887e6b913e1ad\",\"currency_type\":\"BDT\",\"currency_amount\":\"5469.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 13:26:55', '2023-03-23 13:27:05'),
(239, '202303231679590237', 11, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-23', '2023-03-24', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 16:50:37', '2023-03-23 16:50:37'),
(240, '202303231679590856', 11, 4275.0000, 7.50, 320.6250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230323230106ziKHzqV0030558m', 0, 0, 1, '2303232301070JmsJAeraIAoMS5', 'BKASH-BKash', '2023-03-23', '2023-03-24', '2023-03-23', 100, NULL, '{\"tran_id\":\"240\",\"val_id\":\"2303232301070JmsJAeraIAoMS5\",\"amount\":\"4695.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"4578.24\",\"card_no\":null,\"bank_tran_id\":\"230323230106ziKHzqV0030558m\",\"status\":\"VALID\",\"tran_date\":\"2023-03-23 23:00:56\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"dbecc89a9d8b6d12ed14e5ebb6b86b75\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"5919232b18d85e45f84bc6eb45cb85a97f76dac03fb305e50c8443857067ff1b\",\"currency_type\":\"BDT\",\"currency_amount\":\"4695.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-23 17:00:56', '2023-03-23 17:01:09'),
(251, '202303271679880329', 5, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-27', '2023-03-28', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-27 01:25:29', '2023-03-27 01:25:29'),
(252, '202303271679882406', 5, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23032780022jCmc0vkmiFn8SD0', 0, 0, 1, '23032780022L9YgnFfe3M9TPfg', 'BKASH-BKash', '2023-03-27', '2023-03-28', '2023-03-27', 100, NULL, '{\"tran_id\":\"252\",\"val_id\":\"23032780022L9YgnFfe3M9TPfg\",\"amount\":\"5469.63\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5332.89\",\"card_no\":null,\"bank_tran_id\":\"23032780022jCmc0vkmiFn8SD0\",\"status\":\"VALID\",\"tran_date\":\"2023-03-27 08:00:07\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"c2364d428a6d3c26f66535a5c975932b\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"3b67f03cf649500287310a34a1b1ea03f64253a45d21acb83decef54a4b28451\",\"currency_type\":\"BDT\",\"currency_amount\":\"5469.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-03-27 02:00:06', '2023-03-27 02:00:25'),
(254, '202303271679885848', 4, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-27', '2023-03-28', NULL, 250, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-27 02:57:28', '2023-03-27 02:57:28'),
(255, '202303271679885868', 4, 4995.0000, 7.50, 374.6250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230327857571hFW6n29o1H0i5h', 0, 0, 1, '230327857570jA9hKmQw42frL3', 'NAGAD-Nagad', '2023-03-27', '2023-03-28', '2023-03-27', 250, NULL, '{\"tran_id\":\"255\",\"val_id\":\"230327857570jA9hKmQw42frL3\",\"amount\":\"5619.63\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"5479.14\",\"card_no\":null,\"bank_tran_id\":\"230327857571hFW6n29o1H0i5h\",\"status\":\"VALID\",\"tran_date\":\"2023-03-27 08:57:49\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"1993e23e4f3d58bc955debcf7c65bc7d\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"68a31f053cfe62ab6a0d62fa225d0f7078b7acfc0b311150d60cfda67d434ffb\",\"currency_type\":\"BDT\",\"currency_amount\":\"5619.63\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 2, 0, 0, NULL, NULL, '2023-03-27 02:57:48', '2023-04-04 08:22:53'),
(256, '202303271679898049', 10, 5995.0000, 7.50, 449.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-27', '2023-03-28', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-27 06:20:49', '2023-03-27 06:20:49'),
(257, '202303271679898854', 10, 4275.0000, 7.50, 320.6250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-27', '2023-03-28', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-03-27 06:34:14', '2023-03-27 06:34:14'),
(258, '202303271679899426', 5, 20925.0000, 7.50, 1569.3750, 3, NULL, NULL, '0', NULL, 'sslCommerz', '2303271244001jL6vZUFe71kAVe', 0, 0, 1, '2303271244011kCA7iyHWnPt6Bh', 'NAGAD-Nagad', '2023-03-27', '2023-03-28', '2023-03-27', 100, NULL, '{\"tran_id\":\"258\",\"val_id\":\"2303271244011kCA7iyHWnPt6Bh\",\"amount\":\"22594.38\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"22029.52\",\"card_no\":null,\"bank_tran_id\":\"2303271244001jL6vZUFe71kAVe\",\"status\":\"VALID\",\"tran_date\":\"2023-03-27 12:43:47\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"59c56e19a09b8d55706f8562794d5ea5\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"ae8cbd5c1d5c55759cb47f66059d97ca8466e73ae024dbb092eeb0e230ace520\",\"currency_type\":\"BDT\",\"currency_amount\":\"22594.38\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 0, 1, 0, 0, NULL, NULL, '2023-03-27 06:43:46', '2023-04-04 08:17:11'),
(261, '202303281679975348', 4, 11990.0000, 7.50, 899.2500, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-28', '2023-03-29', NULL, 0, NULL, NULL, 0, 1, 0, 1, 0, NULL, NULL, '2023-03-28 03:49:08', '2023-04-02 02:24:21'),
(262, '202303291680064052', 5, 27900.0000, 7.50, 2092.5000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230329102758oktmRLhbh8BNJip', 0, 0, 1, '230329102758vyx09LjQsFIp9KJ', 'NAGAD-Nagad', '2023-03-29', '2023-03-30', '2023-03-29', 100, NULL, '{\"tran_id\":\"262\",\"val_id\":\"230329102758vyx09LjQsFIp9KJ\",\"amount\":\"30092.50\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"29340.19\",\"card_no\":null,\"bank_tran_id\":\"230329102758oktmRLhbh8BNJip\",\"status\":\"VALID\",\"tran_date\":\"2023-03-29 10:27:33\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"e34bc1b3fa6b4c0b19b458e445b26cd2\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9fe58949302954d717363fb360c23e28a42ee480d005ff6fc69cd5841f662974\",\"currency_type\":\"BDT\",\"currency_amount\":\"30092.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-03-29 04:27:32', '2023-04-03 04:20:17'),
(263, '202303291680064296', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2303291031441suhQfOvlvjSMip', 0, 0, 1, '2303291031440dWzSA0XWTB3R2C', 'NAGAD-Nagad', '2023-03-29', '2023-03-30', '2023-03-29', 100, NULL, '{\"tran_id\":\"263\",\"val_id\":\"2303291031440dWzSA0XWTB3R2C\",\"amount\":\"7598.13\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"7408.18\",\"card_no\":null,\"bank_tran_id\":\"2303291031441suhQfOvlvjSMip\",\"status\":\"VALID\",\"tran_date\":\"2023-03-29 10:31:36\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"e856aa97cfce4a075433016fd82d7fd9\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"c00c1f9fefc70dc7edebbedd0131624eb7970d0300f2f18587b88661425e18c5\",\"currency_type\":\"BDT\",\"currency_amount\":\"7598.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 0, 0, 0, NULL, NULL, '2023-03-29 04:31:36', '2023-03-29 04:31:46'),
(264, '202303291680067397', 5, 27900.0000, 7.50, 2092.5000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230329112329cvcdQABQqQhGH1Q', 0, 0, 1, '230329112329MNtoMrkRsThVE2Y', 'NAGAD-Nagad', '2023-03-29', '2023-03-30', '2023-03-29', 100, '4675765765657', '{\"tran_id\":\"264\",\"val_id\":\"230329112329MNtoMrkRsThVE2Y\",\"amount\":\"30092.50\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"29340.19\",\"card_no\":null,\"bank_tran_id\":\"230329112329cvcdQABQqQhGH1Q\",\"status\":\"VALID\",\"tran_date\":\"2023-03-29 11:23:17\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"834d4e9bdd45a24e25007070672ffbae\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"209f9900aaf46614a3fb09436abcea118c57a87c0347fd6df3acd0ff9581b0db\",\"currency_type\":\"BDT\",\"currency_amount\":\"30092.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 2, 0, 0, NULL, NULL, '2023-03-29 05:23:17', '2023-04-03 04:09:54'),
(265, '202303291680073032', 5, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-03-29', '2023-03-30', NULL, 100, '9999999993333', NULL, 2, 1, 3, 0, 0, NULL, NULL, '2023-03-29 06:57:12', '2023-04-04 08:11:40'),
(266, '202303291680084099', 0, 15850.0000, 7.50, 1188.7500, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230329160145rLdYzVdMJ1JFnHD', 0, 0, 1, '230329160146189o5RUUKdx5Xml', 'NAGAD-Nagad', '2023-03-29', '2023-03-30', '2023-03-29', 100, '8888888886', '{\"tran_id\":\"266\",\"val_id\":\"230329160146189o5RUUKdx5Xml\",\"amount\":\"17138.75\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"16710.28\",\"card_no\":null,\"bank_tran_id\":\"230329160145rLdYzVdMJ1JFnHD\",\"status\":\"VALID\",\"tran_date\":\"2023-03-29 16:01:39\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"1daa6469e3db56898d537988ee9762cd\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"565683dc7c105570a3183c9f59c720ea3b3b9bb117ce640dc67a11d42d6aa617\",\"currency_type\":\"BDT\",\"currency_amount\":\"17138.75\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 0, 3, 0, 0, NULL, NULL, '2023-03-29 10:01:39', '2023-04-03 04:17:01'),
(267, '202304051680679097', 0, 5950.0000, 7.50, 446.2500, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230405131832UbL96E9BYxfxdER', 0, 0, 1, '2304051318321RHaHiatQ5tCVRZ', 'TAP-TAP', '2023-04-05', '2023-04-06', '2023-04-05', 100, NULL, '{\"tran_id\":\"267\",\"val_id\":\"2304051318321RHaHiatQ5tCVRZ\",\"amount\":\"6496.25\",\"card_type\":\"TAP-TAP\",\"store_amount\":\"6333.84\",\"card_no\":null,\"bank_tran_id\":\"230405131832UbL96E9BYxfxdER\",\"status\":\"VALID\",\"tran_date\":\"2023-04-05 13:18:17\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"TAB\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"da4115e318f0695654be70e0f2da3826\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9590a227aac00256cecb1710153e58c5e04370878359b0d5efc9f14e91c4a412\",\"currency_type\":\"BDT\",\"currency_amount\":\"6496.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-04-05 07:18:17', '2023-04-05 07:18:34'),
(268, '202304051680680378', 0, 17100.0000, 7.50, 1282.5000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230405133949L5fsHi3nnwgMrvn', 0, 0, 1, '2304051339500qC4seFH1UdjXS2', 'BKASH-BKash', '2023-04-05', '2023-04-06', '2023-04-05', 100, NULL, '{\"tran_id\":\"268\",\"val_id\":\"2304051339500qC4seFH1UdjXS2\",\"amount\":\"18482.50\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"18020.44\",\"card_no\":null,\"bank_tran_id\":\"230405133949L5fsHi3nnwgMrvn\",\"status\":\"VALID\",\"tran_date\":\"2023-04-05 13:39:38\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"c3aab0964f5419b0285816fab9717173\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"0e633cfb9e9522bb757198e901a926c6647e49f585411e4348d37dd7ed49d0ce\",\"currency_type\":\"BDT\",\"currency_amount\":\"18482.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-04-05 07:39:38', '2023-04-05 07:39:52'),
(269, '202304051680680584', 1, 27900.0000, 7.50, 2092.5000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230405134312GBEc486MrPyngdN', 0, 0, 1, '23040513431316PIfa2UbxIQQIG', 'BKASH-BKash', '2023-04-05', '2023-04-06', '2023-04-05', 100, NULL, '{\"tran_id\":\"269\",\"val_id\":\"23040513431316PIfa2UbxIQQIG\",\"amount\":\"30092.50\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"29340.19\",\"card_no\":null,\"bank_tran_id\":\"230405134312GBEc486MrPyngdN\",\"status\":\"VALID\",\"tran_date\":\"2023-04-05 13:43:04\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"2dc79fe0a24a4a7d01051a08db900432\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"8a5e02bee034b076b6e972d6a925abbfcba04abeb59882ab71f1ea42214de9e4\",\"currency_type\":\"BDT\",\"currency_amount\":\"30092.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 0, 0, 0, 0, NULL, NULL, '2023-04-05 07:43:04', '2023-04-09 04:18:28');
INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_price`, `vat_rate`, `vat_amount`, `total_item`, `shipping_method`, `coupon`, `payment_method`, `payment_via`, `payment_method_name`, `transaction_id`, `discount`, `coupon_discount`, `payment_status`, `validation_id`, `card_type`, `order_date`, `requested_delivery_date`, `payment_date`, `shipping_amount`, `tracking_id`, `payment_info`, `status`, `is_same_address`, `order_position`, `delivery_type`, `percel_type`, `pickup_point_no`, `deleted_at`, `created_at`, `updated_at`) VALUES
(270, '202304051680681078', 1, 20925.0000, 7.50, 1569.3750, 3, NULL, NULL, '0', NULL, 'sslCommerz', '2304051351301TmDrDUI6B8NNYW', 0, 0, 1, '230405135130pOCIDues3hrvKVs', 'BKASH-BKash', '2023-04-05', '2023-04-06', '2023-04-05', 100, NULL, '{\"tran_id\":\"270\",\"val_id\":\"230405135130pOCIDues3hrvKVs\",\"amount\":\"22594.38\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"22029.52\",\"card_no\":null,\"bank_tran_id\":\"2304051351301TmDrDUI6B8NNYW\",\"status\":\"VALID\",\"tran_date\":\"2023-04-05 13:51:19\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"ca0d1d4e12a7272914244e49e3d3c366\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"6cf1466707a40540835c61eb8252130bfdf3d0df03205277a3d1cb3e55abe43b\",\"currency_type\":\"BDT\",\"currency_amount\":\"22594.38\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-05 07:51:18', '2023-04-06 09:02:08'),
(271, '202304061680752839', 1, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230406947311nimhXdF469lrL5', 0, 0, 1, '23040694731mNHHZ7fHNGpYZrA', 'UPay-UPay', '2023-04-06', '2023-04-07', '2023-04-06', 100, NULL, '{\"tran_id\":\"271\",\"val_id\":\"23040694731mNHHZ7fHNGpYZrA\",\"amount\":\"7598.13\",\"card_type\":\"UPay-UPay\",\"store_amount\":\"7408.18\",\"card_no\":null,\"bank_tran_id\":\"230406947311nimhXdF469lrL5\",\"status\":\"VALID\",\"tran_date\":\"2023-04-06 09:47:19\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"UPay\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"3bdc20023353a4edebb1a4d4b0ceb68c\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"9e388ef08307b7bd5c7e4ff2b9f48fad8d44808dea29732ee2c20d9432e295a8\",\"currency_type\":\"BDT\",\"currency_amount\":\"7598.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-06 03:47:19', '2023-04-09 04:18:17'),
(272, '202304061680759380', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2304061136290rNg0nGTkeiyuhE', 0, 0, 1, '23040611362907iJdD7t8uWNSSh', 'NAGAD-Nagad', '2023-04-06', '2023-04-07', '2023-04-06', 100, NULL, '{\"tran_id\":\"272\",\"val_id\":\"23040611362907iJdD7t8uWNSSh\",\"amount\":\"7598.13\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"7408.18\",\"card_no\":null,\"bank_tran_id\":\"2304061136290rNg0nGTkeiyuhE\",\"status\":\"VALID\",\"tran_date\":\"2023-04-06 11:36:20\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"a45c54ae1e573a7575364e90ce247fc0\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"836ac7adb8c43bc4c0d5e4739bbecd40b42311219850849a3e778f4c3bd4090d\",\"currency_type\":\"BDT\",\"currency_amount\":\"7598.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-04-06 05:36:20', '2023-04-06 05:36:32'),
(273, '20230406', 1, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-06', '2023-04-07', NULL, 100, NULL, NULL, 0, 1, 0, 0, 0, NULL, NULL, '2023-04-06 07:55:32', '2023-04-06 10:37:50'),
(274, '20230406', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-06', '2023-04-07', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-04-06 07:57:03', '2023-04-06 07:57:03'),
(275, '20230406', 1, -5425.0000, 7.50, 565.8750, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-06', '2023-04-07', NULL, 0, NULL, NULL, 0, 1, 0, 1, 0, NULL, NULL, '2023-04-06 08:14:24', '2023-04-06 10:37:34'),
(276, '20230406', 1, -5425.0000, 7.50, 565.8750, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2023-04-06', '2023-04-07', '2023-05-11', 100, NULL, NULL, 0, 1, 2, 0, 0, NULL, NULL, '2023-04-06 08:18:33', '2023-05-11 06:53:03'),
(277, '20230406', 1, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23040614231832WVpRh7HKToHuT', 0, 0, 1, '2304061423188LefKwf1gUmIaWR', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-04-06', '2023-04-07', '2023-04-06', 100, NULL, '{\"tran_id\":\"277\",\"val_id\":\"2304061423188LefKwf1gUmIaWR\",\"amount\":\"5781.38\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"5636.85\",\"card_no\":null,\"bank_tran_id\":\"23040614231832WVpRh7HKToHuT\",\"status\":\"VALID\",\"tran_date\":\"2023-04-06 14:23:18\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"a2fc701795ffb4bda209207866a92dad\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"79dcb84a6380d6059a6ef0f3edacb3f34245e38abd7d103981c392da15f7e037\",\"currency_type\":null,\"currency_amount\":null,\"currency_rate\":null,\"base_fair\":null,\"value_a\":null,\"value_b\":null,\"value_c\":null,\"value_d\":null,\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-06 08:20:15', '2023-04-06 09:27:16'),
(278, '20230406', 0, 16700.0000, 7.50, 1252.5000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '230406142135KtG4ty4lnJvi417', 0, 0, 1, '230406142135merftx0SnQflDSW', 'NAGAD-Nagad', '2023-04-06', '2023-04-07', '2023-04-06', 100, NULL, '{\"tran_id\":\"278\",\"val_id\":\"230406142135merftx0SnQflDSW\",\"amount\":\"18052.50\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"17601.19\",\"card_no\":null,\"bank_tran_id\":\"230406142135KtG4ty4lnJvi417\",\"status\":\"VALID\",\"tran_date\":\"2023-04-06 14:21:23\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"946eba619ba22043b2dd084a039d9e41\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"2b032fba2266a81369454bd1f9b5c4b9842950a0fe0f6884313c08c9346b6b00\",\"currency_type\":\"BDT\",\"currency_amount\":\"18052.50\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:37'),
(279, '20230406', 1, 3985.0000, 7.50, 298.8750, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2304061452200XDUdwcbZ1PILge', 0, 0, 1, '230406145220FJv4IN48FIqTXYi', 'ABBANKIB-AB Bank', '2023-04-06', '2023-04-07', '2023-04-06', 100, NULL, '{\"tran_id\":\"279\",\"val_id\":\"230406145220FJv4IN48FIqTXYi\",\"amount\":\"4383.88\",\"card_type\":\"ABBANKIB-AB Bank\",\"store_amount\":\"4274.28\",\"card_no\":null,\"bank_tran_id\":\"2304061452200XDUdwcbZ1PILge\",\"status\":\"VALID\",\"tran_date\":\"2023-04-06 14:52:12\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"AB Bank Limited\",\"card_brand\":\"IB\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"b3b3f3915f2c11fb391c8b3404e3a966\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"769455d8b9c6feeeda1781663fbb709484ea262a9a1b10960ce123f89fc67704\",\"currency_type\":\"BDT\",\"currency_amount\":\"4383.88\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-06 08:52:09', '2023-04-06 09:17:18'),
(280, '20230406', 1, 5975.0000, 7.50, 448.1250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '2304061555010VsW44wJLWESI2s', 0, 0, 1, '230406155502HBVFslWS3YSUE4m', 'NAGAD-Nagad', '2023-04-06', '2023-04-07', '2023-04-06', 100, NULL, '{\"tran_id\":\"280\",\"val_id\":\"230406155502HBVFslWS3YSUE4m\",\"amount\":\"6523.13\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"6360.05\",\"card_no\":null,\"bank_tran_id\":\"2304061555010VsW44wJLWESI2s\",\"status\":\"VALID\",\"tran_date\":\"2023-04-06 15:54:54\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"f2d3ea56ee7f0ef37d9df63fc7f814ab\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"33d7163b9a4827641eff432b071cbefc43b28543c4bde7f4d85c321d262297ae\",\"currency_type\":\"BDT\",\"currency_amount\":\"6523.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-06 09:54:53', '2023-04-06 10:37:06'),
(294, '20230409', 2, 5950.0000, 7.50, 450.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230410048261R0KaZpUSa8ZJyN', 0, 0, 1, '230410048260tWLMb1krx73Rkz', 'TAP-TAP', '2023-04-09', '2023-04-10', '2023-05-11', 250, NULL, '{\"tran_id\":\"294\",\"val_id\":\"230410048260tWLMb1krx73Rkz\",\"amount\":\"6650.00\",\"card_type\":\"TAP-TAP\",\"store_amount\":\"6483.75\",\"card_no\":null,\"bank_tran_id\":\"230410048261R0KaZpUSa8ZJyN\",\"status\":\"VALID\",\"tran_date\":\"2023-04-10 00:48:06\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"TAB\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"9dbb70bf156af02054ce4511e2fa7a79\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"7f53c7307c6ec30e1dcf2af28b91e02ee910be4e04a84650afdb45ab017600d8\",\"currency_type\":\"BDT\",\"currency_amount\":\"6650.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 3, 0, 0, NULL, NULL, '2023-04-09 18:48:00', '2023-05-11 05:57:14'),
(295, '20230410', 1, 31965.0000, 7.50, 450.0000, 3, NULL, NULL, '0', NULL, 'sslCommerz', '23041011181805ua2EkhGickkT9', 0, 0, 1, '2304101118180f3EIgHqhoytpak', 'NAGAD-Nagad', '2023-04-10', '2023-04-11', '2023-04-10', 100, NULL, '{\"tran_id\":\"295\",\"val_id\":\"2304101118180f3EIgHqhoytpak\",\"amount\":\"32515.00\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"31702.13\",\"card_no\":null,\"bank_tran_id\":\"23041011181805ua2EkhGickkT9\",\"status\":\"VALID\",\"tran_date\":\"2023-04-10 11:18:09\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"88913e26fe2a01ca76e0a0e4578379c4\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"5be171710255866897cbdc7593ef9a09f5c5e788982c20dd5ddc1f22ae2ad406\",\"currency_type\":\"BDT\",\"currency_amount\":\"32515.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:18:05', '2023-04-10 11:39:00'),
(296, '20230410', 1, 31965.0000, 7.50, 450.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-10', '2023-04-11', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:18:07', '2023-04-10 05:18:07'),
(297, '20230410', 1, 31965.0000, 7.50, 450.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-10', '2023-04-11', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:18:08', '2023-04-10 05:18:08'),
(298, '20230410', 1, 31965.0000, 7.50, 450.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-10', '2023-04-11', NULL, 100, NULL, NULL, 0, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:18:09', '2023-04-10 05:22:38'),
(299, '20230410', 1, 31965.0000, 7.50, 450.0000, 3, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-10', '2023-04-11', NULL, 100, NULL, NULL, 0, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:18:10', '2023-04-10 05:22:03'),
(300, '20230410', 1, 22500.0000, 7.50, 450.0000, 4, NULL, NULL, '0', NULL, 'sslCommerz', '2304101124361Vv1Ez4WKNRhEg1', 0, 0, 1, '2304101124360X4iJQmuXdOCElj', 'BKASH-BKash', '2023-04-10', '2023-04-11', '2023-04-10', 100, NULL, '{\"tran_id\":\"300\",\"val_id\":\"2304101124360X4iJQmuXdOCElj\",\"amount\":\"23050.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"22473.75\",\"card_no\":null,\"bank_tran_id\":\"2304101124361Vv1Ez4WKNRhEg1\",\"status\":\"VALID\",\"tran_date\":\"2023-04-10 11:24:24\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"2ea04f8d9fc5681dc7c501a26fd3c49d\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"0e313d414ec377375eec70480762f872115c3232c479062c0744c53e421bbf95\",\"currency_type\":\"BDT\",\"currency_amount\":\"23050.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 0, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:24:19', '2023-04-10 05:26:00'),
(301, '20230410', 0, 5430.0000, 7.50, 450.0000, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230410112541ZiBjYC0gYXYRh6i', 0, 0, 1, '2304101125410mORWiTBnIWPE1J', 'BKASH-BKash', '2023-04-10', '2023-04-11', '2023-04-10', 250, NULL, '{\"tran_id\":\"301\",\"val_id\":\"2304101125410mORWiTBnIWPE1J\",\"amount\":\"6130.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"5976.75\",\"card_no\":null,\"bank_tran_id\":\"230410112541ZiBjYC0gYXYRh6i\",\"status\":\"VALID\",\"tran_date\":\"2023-04-10 11:25:33\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"e0e448ca179faa8ee70e0cf417a321f9\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"3d46d2b4af7457a23ed05c15f66f0340fc6400e27d3ddcace26d221c662766b0\",\"currency_type\":\"BDT\",\"currency_amount\":\"6130.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:25:29', '2023-04-10 05:25:43'),
(302, '20230410', 0, 5430.0000, 7.50, 450.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2023-04-10', '2023-04-11', '2023-04-10', 250, NULL, NULL, 2, 1, 0, 0, 0, NULL, NULL, '2023-04-10 05:25:32', '2023-04-10 11:35:07'),
(303, '20230410', 0, 6975.0000, 7.50, 450.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2023-04-10', '2023-04-11', '2023-04-10', 250, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-04-10 05:26:32', '2023-04-10 11:10:55'),
(304, '20230410', 0, 26970.0000, 7.50, 450.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-04-10', '2023-04-11', NULL, 250, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-04-10 05:27:34', '2023-04-10 05:27:34'),
(305, '20230410', 0, 26970.0000, 7.50, 450.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2023-04-10', '2023-04-11', '2023-04-10', 250, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-04-10 05:27:37', '2023-04-10 11:31:52'),
(306, '20230410', 0, 26970.0000, 7.50, 450.0000, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2023-04-10', '2023-04-11', '2023-04-10', 250, 'DE90752095734', NULL, 0, 1, 3, 0, 0, NULL, NULL, '2023-04-10 05:27:38', '2023-04-13 05:39:06'),
(307, '20230417', 1, 11650.0000, 7.50, 873.7500, 2, NULL, NULL, '0', NULL, 'sslCommerz', '2304171753590PJA9uLBcXJ8rmg', 0, 0, 1, '2304171754000FkG8gxP0YwEV87', 'BKASH-BKash', '2023-04-17', '2023-04-18', '2023-04-17', 100, NULL, '{\"tran_id\":\"307\",\"val_id\":\"2304171754000FkG8gxP0YwEV87\",\"amount\":\"12623.75\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"12308.16\",\"card_no\":null,\"bank_tran_id\":\"2304171753590PJA9uLBcXJ8rmg\",\"status\":\"VALID\",\"tran_date\":\"2023-04-17 17:53:43\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"62a1fd5ff6c58bc00f685523bb7f7446\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"75c21b92319e50be58de2f08a9faa08900548bbb48433567d4b65e027327aba6\",\"currency_type\":\"BDT\",\"currency_amount\":\"12623.75\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-04-17 11:53:38', '2023-04-17 11:54:02'),
(337, '20230501', 0, 27990.0000, 7.50, 2099.2500, 2, NULL, NULL, '0', NULL, 'sslCommerz', '230501131732S673ZZScJajEXYt', 0, 0, 1, '23050113173218rWy36g7FTx3WL', 'DBBLMOBILEB-Dbbl Mobile Banking', '2023-05-01', '2023-05-02', '2023-05-01', 100, NULL, '{\"tran_id\":\"337\",\"val_id\":\"23050113173218rWy36g7FTx3WL\",\"amount\":\"30189.25\",\"card_type\":\"DBBLMOBILEB-Dbbl Mobile Banking\",\"store_amount\":\"29434.52\",\"card_no\":null,\"bank_tran_id\":\"230501131732S673ZZScJajEXYt\",\"status\":\"VALID\",\"tran_date\":\"2023-05-01 13:17:20\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"DBBL Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"ba067bd194294869395838a2f5284e55\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"da842fda12261d3d3dc5dfd168f0487e0e952d9b6ddfe2ff8a2cc180037db5db\",\"currency_type\":\"BDT\",\"currency_amount\":\"30189.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-05-01 07:17:13', '2023-05-01 07:17:35'),
(338, '20230501', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '23050114581409OS8eaWoUvA4tN', 0, 0, 1, '2305011458141k4dEanwKCvPe88', 'BKASH-BKash', '2023-05-01', '2023-05-02', '2023-05-01', 100, NULL, '{\"tran_id\":\"338\",\"val_id\":\"2305011458141k4dEanwKCvPe88\",\"amount\":\"7598.13\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"7408.18\",\"card_no\":null,\"bank_tran_id\":\"23050114581409OS8eaWoUvA4tN\",\"status\":\"VALID\",\"tran_date\":\"2023-05-01 14:57:58\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"8d6f2544f7b396014eef8da21284cab1\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"c4e0dc8810801b2a222b09fc819149dfbece1a59830764b181557e5bf7de8eb3\",\"currency_type\":\"BDT\",\"currency_amount\":\"7598.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-05-01 08:57:53', '2023-05-01 08:58:17'),
(339, '20230502', 0, 9990.0000, 7.50, 69941.6250, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-02 05:21:23', '2023-05-02 05:21:23'),
(340, '20230502', 0, 9990.0000, 7.50, 69941.6250, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-02 05:21:27', '2023-05-02 05:21:27'),
(341, '20230502', 0, 9990.0000, 7.50, 69941.6250, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-02 05:21:28', '2023-05-02 05:21:28'),
(342, '20230502', 0, 9990.0000, 7.50, 69941.6250, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-02 05:21:28', '2023-05-02 05:21:28'),
(343, '20230502', 0, 9990.0000, 7.50, 69941.6250, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-02 05:21:29', '2023-05-02 05:21:29'),
(344, '20230502', 0, 9990.0000, 7.50, 69941.6250, 2, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-02 05:21:29', '2023-05-02 05:21:29'),
(345, '20230502', 0, 4995.0000, 7.50, 69567.0000, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230502121341yzuFXlzuofSPaLx', 0, 0, 1, '230502121342I0q0y8oLZc4LyGy', 'BKASH-BKash', '2023-05-02', '2023-05-03', '2023-05-02', 200, NULL, '{\"tran_id\":\"345\",\"val_id\":\"230502121342I0q0y8oLZc4LyGy\",\"amount\":\"74762.00\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"72892.95\",\"card_no\":null,\"bank_tran_id\":\"230502121341yzuFXlzuofSPaLx\",\"status\":\"VALID\",\"tran_date\":\"2023-05-02 12:12:23\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"777d8ed29cda01f556c0dff76d4981ba\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"a5067c811ad427c5ca2a82155045f2648b048e85566be2e4acb2fe120540f4e7\",\"currency_type\":\"BDT\",\"currency_amount\":\"74762.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:12:18', '2023-05-02 06:13:44'),
(346, '20230502', 0, 4995.0000, 7.50, 69567.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:12:20', '2023-05-02 06:12:20'),
(347, '20230502', 0, 4995.0000, 7.50, 69567.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:12:21', '2023-05-02 06:12:21'),
(348, '20230502', 0, 4995.0000, 7.50, 69567.0000, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 200, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:12:23', '2023-05-02 06:12:23'),
(349, '20230502', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230502121408Ox25LzT6lK8o2Kv', 0, 0, 1, '230502121408BF7GHIcaK1s4VPm', 'BKASH-BKash', '2023-05-02', '2023-05-03', '2023-05-02', 100, NULL, '{\"tran_id\":\"349\",\"val_id\":\"230502121408BF7GHIcaK1s4VPm\",\"amount\":\"7598.13\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"7408.18\",\"card_no\":null,\"bank_tran_id\":\"230502121408Ox25LzT6lK8o2Kv\",\"status\":\"VALID\",\"tran_date\":\"2023-05-02 12:13:50\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"f00662b842efe86ff4c608de55c72eef\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"6d281064a055002dae1016a6ff825d1ba2245bf9ef5bac1e56b3b1b881fab17e\",\"currency_type\":\"BDT\",\"currency_amount\":\"7598.13\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:13:44', '2023-05-02 06:14:11'),
(350, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:19:27', '2023-05-02 06:19:27'),
(351, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:20:12', '2023-05-02 06:20:12'),
(352, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:38:45', '2023-05-02 06:38:45'),
(353, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:42:29', '2023-05-02 06:42:29'),
(354, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:44:01', '2023-05-02 06:44:01'),
(355, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:46:16', '2023-05-02 06:46:16'),
(356, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:47:03', '2023-05-02 06:47:03'),
(357, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:48:43', '2023-05-02 06:48:43'),
(358, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:49:52', '2023-05-02 06:49:52'),
(359, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:55:30', '2023-05-02 06:55:30'),
(360, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 06:58:20', '2023-05-02 06:58:20'),
(361, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 07:01:35', '2023-05-02 07:01:35'),
(362, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 07:02:54', '2023-05-02 07:02:54'),
(363, '20230502', 0, 5285.0000, 7.50, 396.3750, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-02', '2023-05-03', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-02 07:04:03', '2023-05-02 07:04:03'),
(364, '20230503', 0, 6975.0000, 7.50, 8021.2500, 1, NULL, NULL, '0', NULL, 'sslCommerz', '230503152720cqrLuF47R2vNmwH', 0, 0, 1, '230503152721iYpgIrySFgqmZG5', 'NAGAD-Nagad', '2023-05-03', '2023-05-04', '2023-05-03', 100, NULL, '{\"tran_id\":\"364\",\"val_id\":\"230503152721iYpgIrySFgqmZG5\",\"amount\":\"15096.25\",\"card_type\":\"NAGAD-Nagad\",\"store_amount\":\"14718.84\",\"card_no\":null,\"bank_tran_id\":\"230503152720cqrLuF47R2vNmwH\",\"status\":\"VALID\",\"tran_date\":\"2023-05-03 15:27:08\",\"error\":null,\"currency\":\"BDT\",\"card_issuer\":\"Nagad\",\"card_brand\":\"MOBILEBANKING\",\"card_sub_brand\":\"Classic\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"limme601b86f8e6dd4\",\"verify_sign\":\"3104023ffef7b578cd7c3b11102017e5\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_sub_brand,card_type,currency,currency_amount,currency_rate,currency_type,error,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"96dde7bcd82247e653c9364d7fd64cbab376c006870da782455a2d8dc3b200b4\",\"currency_type\":\"BDT\",\"currency_amount\":\"15096.25\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"0\",\"value_b\":null,\"value_c\":\"ref003\",\"value_d\":\"ref004\",\"subscription_id\":null,\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 09:27:01', '2023-05-10 00:36:48'),
(365, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:42:23', '2023-05-03 10:42:23'),
(366, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:43:14', '2023-05-03 10:43:14'),
(367, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:43:17', '2023-05-03 10:43:17'),
(368, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:43:28', '2023-05-03 10:43:28'),
(369, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:43:51', '2023-05-03 10:43:51'),
(370, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:44:59', '2023-05-03 10:44:59'),
(371, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 1, 0, 0, NULL, NULL, '2023-05-03 10:46:30', '2023-05-11 06:36:15'),
(372, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2023-05-03', '2023-05-04', NULL, 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:48:18', '2023-05-03 10:48:18'),
(373, '20230503', 0, 6975.0000, 7.50, 523.1250, 1, NULL, NULL, '0', NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2023-05-03', '2023-05-04', '2023-05-08', 100, NULL, NULL, 1, 1, 0, 0, 0, NULL, NULL, '2023-05-03 10:51:30', '2023-05-08 04:37:07');

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
  `vat_amount` double(16,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `quantity` int(11) NOT NULL,
  `selling_price` double(16,8) NOT NULL,
  `buying_price` double(16,8) NOT NULL,
  `total_buying_price` double(16,8) NOT NULL,
  `total_selling_price` double(16,8) NOT NULL,
  `unit_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `total_discount` double(16,8) NOT NULL DEFAULT 0.00000000,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_claim_refund` int(4) DEFAULT 0 COMMENT '0 for No Claim, 1 for claimed',
  `refund_claim_date` date DEFAULT NULL,
  `is_refunded` tinyint(4) DEFAULT 0 COMMENT '0 for refund not done, 1 for refund done, 2 for reject',
  `refund_date` date DEFAULT NULL,
  `refund_claim_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_reject_reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `colour_id`, `size_id`, `fabric_id`, `user_id`, `vat_rate`, `vat_amount`, `quantity`, `selling_price`, `buying_price`, `total_buying_price`, `total_selling_price`, `unit_discount`, `total_discount`, `status`, `deleted_at`, `created_at`, `updated_at`, `is_claim_refund`, `refund_claim_date`, `is_refunded`, `refund_date`, `refund_claim_reason`, `refund_reject_reason`, `refund_info`) VALUES
(2, 2, 62, 2, 13, 10, 19, 0, 3, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 0.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 06:30:10', '2023-03-14 06:30:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(3, 3, 119, 1, 7, 2, 0, 0, 3, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 06:33:36', '2023-03-14 06:33:36', 0, NULL, 0, NULL, NULL, NULL, NULL),
(4, 4, 62, 2, 13, 10, 19, 0, 3, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 0.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 07:09:19', '2023-03-14 07:09:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(5, 5, 120, 1, 7, 17, 0, 0, 1, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 09:29:40', '2023-03-14 09:29:40', 0, NULL, 0, NULL, NULL, NULL, NULL),
(6, 5, 119, 1, 7, 5, 0, 0, 1, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 09:29:40', '2023-03-14 09:29:40', 0, NULL, 0, NULL, NULL, NULL, NULL),
(7, 6, 15, 1, 8, 5, 11, 0, 1, 0.00, 0.00000000, 1, 1875.00000000, 768.00000000, 0.00000000, 1875.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 09:40:16', '2023-03-14 09:40:16', 0, NULL, 0, NULL, NULL, NULL, NULL),
(8, 7, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 0.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-14 14:31:47', '2023-03-14 14:31:47', 0, NULL, 0, NULL, NULL, NULL, NULL),
(9, 17, 116, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 2, 21990.00000000, 4547.00000000, 0.00000000, 21990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-15 10:17:38', '2023-03-15 10:17:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(10, 18, 79, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4500.00000000, 2011.00000000, 0.00000000, 4500.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 08:28:35', '2023-03-16 08:28:35', 0, NULL, 0, NULL, NULL, NULL, NULL),
(12, 20, 79, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4500.00000000, 2011.00000000, 0.00000000, 4500.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 08:29:44', '2023-03-16 08:29:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(14, 22, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 08:41:04', '2023-03-16 08:41:04', 0, NULL, 0, NULL, NULL, NULL, NULL),
(21, 26, 124, 1, 7, 2, 0, 0, 7, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 0.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:23:16', '2023-03-16 09:23:16', 0, NULL, 0, NULL, NULL, NULL, NULL),
(22, 26, 120, 1, 7, 17, 0, 0, 7, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:23:16', '2023-03-16 09:23:16', 0, NULL, 0, NULL, NULL, NULL, NULL),
(25, 28, 47, 2, 13, 13, 20, 0, 9, 0.00, 0.00000000, 1, 4675.00000000, 1588.00000000, 0.00000000, 4675.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:44:58', '2023-03-16 09:44:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(26, 28, 42, 2, 13, 1, 19, 0, 9, 0.00, 0.00000000, 1, 4275.00000000, 1713.00000000, 0.00000000, 4275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:44:58', '2023-03-16 09:44:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(29, 30, 124, 1, 7, 2, 0, 0, 7, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 0.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:45:51', '2023-03-16 09:45:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(30, 30, 120, 1, 7, 17, 0, 0, 7, 0.00, 0.00000000, 2, 11990.00000000, 2987.00000000, 0.00000000, 11990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:45:51', '2023-03-16 09:45:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(33, 32, 47, 2, 13, 13, 20, 0, 9, 0.00, 0.00000000, 1, 4675.00000000, 1588.00000000, 0.00000000, 4675.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:46:21', '2023-03-16 09:46:21', 0, NULL, 0, NULL, NULL, NULL, NULL),
(34, 32, 42, 2, 13, 1, 19, 0, 9, 0.00, 0.00000000, 1, 4275.00000000, 1713.00000000, 0.00000000, 4275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-16 09:46:21', '2023-03-16 09:46:21', 0, NULL, 0, NULL, NULL, NULL, NULL),
(38, 35, 119, 1, 7, 5, 0, 0, 10, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-19 06:10:10', '2023-03-19 06:10:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(39, 36, 119, 1, 7, 5, 0, 0, 10, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-19 06:10:10', '2023-03-19 06:10:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(41, 38, 119, 1, 7, 5, 0, 0, 10, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-19 06:11:44', '2023-03-19 06:11:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(42, 39, 119, 1, 7, 5, 0, 0, 10, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 0.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-19 06:11:44', '2023-03-19 06:11:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(44, 41, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 0.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-19 11:32:14', '2023-03-19 11:32:14', 0, NULL, 0, NULL, NULL, NULL, NULL),
(46, 43, 62, 2, 13, 10, 19, 0, 4, 0.00, 0.00000000, 6, 41850.00000000, 2463.00000000, 0.00000000, 41850.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-19 16:51:22', '2023-05-15 01:11:27', 1, '2023-05-15', 2, NULL, NULL, 'reason described here', NULL),
(48, 45, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 4, 27900.00000000, 2463.00000000, 0.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 11:32:15', '2023-03-20 11:32:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(50, 47, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 0.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 11:37:32', '2023-05-15 01:06:46', 1, '2023-05-15', 1, '2023-05-15', NULL, NULL, NULL),
(55, 49, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 0.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 12:08:38', '2023-03-20 12:08:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(56, 49, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 2, 11990.00000000, 2987.00000000, 0.00000000, 11990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 12:08:38', '2023-03-20 12:08:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(57, 49, 121, 1, 7, 13, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 1833.00000000, 0.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 12:08:38', '2023-03-20 12:08:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(58, 49, 124, 1, 7, 14, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 0.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 12:08:38', '2023-03-20 12:08:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(59, 51, 62, 2, 13, 10, 19, 0, 0, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 0.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 13:15:24', '2023-03-20 13:15:24', 0, NULL, 0, NULL, NULL, NULL, NULL),
(61, 53, 62, 2, 13, 10, 19, 0, 0, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 0.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 13:28:14', '2023-03-20 13:28:14', 0, NULL, 0, NULL, NULL, NULL, NULL),
(62, 54, 62, 2, 13, 10, 19, 0, 0, 0.00, 0.00000000, 4, 27900.00000000, 2463.00000000, 0.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 14:09:07', '2023-03-20 14:09:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(63, 62, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 3, 14985.00000000, 1833.00000000, 0.00000000, 14985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 14:44:40', '2023-03-20 14:44:40', 0, NULL, 0, NULL, NULL, NULL, NULL),
(65, 64, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 14:55:30', '2023-03-20 14:55:30', 0, NULL, 0, NULL, NULL, NULL, NULL),
(67, 66, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 14:57:57', '2023-03-20 14:57:57', 0, NULL, 0, NULL, NULL, NULL, NULL),
(69, 68, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 14:58:37', '2023-03-20 14:58:37', 0, NULL, 0, NULL, NULL, NULL, NULL),
(71, 70, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-20 14:59:40', '2023-03-20 14:59:40', 0, NULL, 0, NULL, NULL, NULL, NULL),
(74, 73, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 05:36:33', '2023-03-21 05:36:33', 0, NULL, 0, NULL, NULL, NULL, NULL),
(75, 74, 121, 1, 7, 13, 0, 0, 0, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 05:37:34', '2023-03-21 05:37:34', 0, NULL, 0, NULL, NULL, NULL, NULL),
(76, 75, 121, 1, 7, 13, 0, 0, 5, 0.00, 0.00000000, 2, 9990.00000000, 1833.00000000, 0.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 05:40:15', '2023-03-21 05:40:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(79, 83, 87, 1, 8, 11, 2, 0, 5, 0.00, 0.00000000, 4, 79980.00000000, 6488.00000000, 25952.00000000, 319920.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 06:43:15', '2023-03-21 06:43:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(80, 84, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 4, 27900.00000000, 2463.00000000, 9852.00000000, 111600.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 06:50:52', '2023-03-21 06:50:52', 0, NULL, 0, NULL, NULL, NULL, NULL),
(82, 86, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 07:00:29', '2023-03-21 07:00:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(83, 87, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 4, 27900.00000000, 2463.00000000, 9852.00000000, 111600.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 08:03:11', '2023-03-21 08:03:11', 0, NULL, 0, NULL, NULL, NULL, NULL),
(84, 88, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 4, 27900.00000000, 2463.00000000, 9852.00000000, 111600.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 08:06:38', '2023-03-21 08:06:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(116, 120, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 2, 9990.00000000, 2358.00000000, 4716.00000000, 19980.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 09:16:40', '2023-03-21 09:16:40', 0, NULL, 0, NULL, NULL, NULL, NULL),
(123, 125, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 2, 13950.00000000, 2463.00000000, 4926.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 10:13:44', '2023-03-21 10:13:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(124, 125, 119, 1, 7, 5, 0, 0, 5, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 10:13:44', '2023-03-21 10:13:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(129, 128, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 2, 6975.00000000, 2463.00000000, 4926.00000000, 13950.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 10:39:35', '2023-03-21 10:39:35', 0, NULL, 0, NULL, NULL, NULL, NULL),
(130, 128, 119, 1, 7, 5, 0, 0, 5, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 10:39:35', '2023-03-21 10:39:35', 0, NULL, 0, NULL, NULL, NULL, NULL),
(135, 131, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 2, 6975.00000000, 2463.00000000, 4926.00000000, 13950.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 11:03:54', '2023-03-21 11:03:54', 0, NULL, 0, NULL, NULL, NULL, NULL),
(136, 131, 119, 1, 7, 5, 0, 0, 5, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 11:03:54', '2023-03-21 11:03:54', 0, NULL, 0, NULL, NULL, NULL, NULL),
(139, 133, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 2, 6975.00000000, 2463.00000000, 4926.00000000, 13950.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 11:04:51', '2023-03-21 11:04:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(140, 133, 119, 1, 7, 5, 0, 0, 5, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-21 11:04:51', '2023-03-21 11:04:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(142, 135, 124, 1, 7, 14, 0, 0, 4, 0.00, 0.00000000, 10, 4995.00000000, 2358.00000000, 23580.00000000, 49950.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 06:12:07', '2023-03-22 06:12:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(143, 136, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 08:03:29', '2023-03-22 08:03:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(144, 137, 124, 1, 7, 2, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 08:04:28', '2023-03-22 08:04:28', 0, NULL, 0, NULL, NULL, NULL, NULL),
(145, 138, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 2463.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 09:23:19', '2023-03-22 09:23:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(146, 139, 122, 1, 7, 10, 0, 0, 12, 0.00, 0.00000000, 1, 4995.00000000, 1710.00000000, 1710.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 12:36:51', '2023-03-22 12:36:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(147, 139, 104, 1, 9, 2, 3, 0, 12, 0.00, 0.00000000, 1, 4495.00000000, 1494.00000000, 1494.00000000, 4495.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 12:36:51', '2023-03-22 12:36:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(148, 140, 67, 2, 15, 2, 1, 0, 12, 0.00, 0.00000000, 1, 1275.00000000, 620.00000000, 620.00000000, 1275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 12:38:10', '2023-03-22 12:38:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(149, 140, 63, 2, 16, 11, 19, 0, 12, 0.00, 0.00000000, 1, 3765.00000000, 1447.00000000, 1447.00000000, 3765.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 12:38:10', '2023-03-22 12:38:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(150, 140, 120, 1, 7, 17, 0, 0, 12, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 12:38:10', '2023-03-22 12:38:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(151, 142, 62, 2, 13, 10, 19, 0, 0, 0.00, 0.00000000, 4, 6975.00000000, 2463.00000000, 9852.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 12:47:59', '2023-03-22 12:47:59', 0, NULL, 0, NULL, NULL, NULL, NULL),
(152, 143, 124, 1, 7, 14, 0, 0, 5, 0.00, 0.00000000, 2, 4995.00000000, 2358.00000000, 4716.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 14:46:24', '2023-03-22 14:46:24', 0, NULL, 0, NULL, NULL, NULL, NULL),
(153, 144, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 2, 4995.00000000, 2358.00000000, 4716.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 14:53:30', '2023-03-22 14:53:30', 0, NULL, 0, NULL, NULL, NULL, NULL),
(154, 145, 119, 1, 7, 5, 0, 0, 0, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 15:16:18', '2023-03-22 15:16:18', 0, NULL, 0, NULL, NULL, NULL, NULL),
(155, 146, 119, 1, 7, 5, 0, 0, 0, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 15:20:08', '2023-03-22 15:20:08', 1, '2023-05-15', 1, '2023-05-15', NULL, NULL, NULL),
(156, 147, 119, 1, 7, 5, 0, 0, 0, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 15:21:55', '2023-03-22 15:21:55', 0, NULL, 0, NULL, NULL, NULL, NULL),
(157, 148, 122, 1, 7, 10, 0, 0, 0, 0.00, 0.00000000, 3, 4995.00000000, 1710.00000000, 5130.00000000, 14985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 15:44:11', '2023-03-22 15:44:11', 0, NULL, 0, NULL, NULL, NULL, NULL),
(158, 148, 62, 2, 13, 10, 19, 0, 0, 0.00, 0.00000000, 4, 6975.00000000, 2463.00000000, 9852.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 15:44:11', '2023-03-22 15:44:11', 0, NULL, 0, NULL, NULL, NULL, NULL),
(159, 149, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 3, 4995.00000000, 2358.00000000, 7074.00000000, 14985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 15:58:48', '2023-03-22 15:58:48', 0, NULL, 0, NULL, NULL, NULL, NULL),
(160, 150, 124, 1, 7, 14, 0, 0, 5, 0.00, 0.00000000, 3, 4995.00000000, 2358.00000000, 7074.00000000, 14985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 16:00:01', '2023-03-22 16:00:01', 0, NULL, 0, NULL, NULL, NULL, NULL),
(161, 151, 87, 1, 8, 11, 2, 0, 0, 0.00, 0.00000000, 1, 19995.00000000, 6488.00000000, 6488.00000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 16:18:03', '2023-03-22 16:18:03', 0, NULL, 0, NULL, NULL, NULL, NULL),
(162, 152, 124, 1, 7, 2, 0, 0, 5, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 16:20:38', '2023-03-22 16:20:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(163, 153, 123, 1, 7, 1, 0, 0, 11, 0.00, 0.00000000, 1, 4995.00000000, 2455.00000000, 2455.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-22 17:15:26', '2023-03-22 17:15:26', 0, NULL, 0, NULL, NULL, NULL, NULL),
(165, 155, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 04:54:20', '2023-03-23 04:54:20', 0, NULL, 0, NULL, NULL, NULL, NULL),
(166, 156, 98, 1, 11, 1, 4, 0, 12, 0.00, 0.00000000, 2, 3985.00000000, 1239.00000000, 2478.00000000, 7970.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 06:56:07', '2023-03-23 06:56:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(167, 156, 34, 3, 0, 10, 13, 0, 12, 0.00, 0.00000000, 2, 865.00000000, 198.00000000, 396.00000000, 1730.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 06:56:07', '2023-03-23 06:56:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(168, 157, 122, 1, 7, 10, 0, 0, 12, 0.00, 0.00000000, 1, 4995.00000000, 1710.00000000, 1710.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:08:54', '2023-03-23 11:08:54', 0, NULL, 0, NULL, NULL, NULL, NULL),
(169, 157, 104, 1, 9, 2, 3, 0, 12, 0.00, 0.00000000, 2, 4495.00000000, 1494.00000000, 2988.00000000, 8990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:08:54', '2023-03-23 11:08:54', 0, NULL, 0, NULL, NULL, NULL, NULL),
(170, 157, 33, 3, 0, 2, 13, 0, 12, 0.00, 0.00000000, 1, 985.00000000, 259.00000000, 259.00000000, 985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:08:54', '2023-03-23 11:08:54', 0, NULL, 0, NULL, NULL, NULL, NULL),
(180, 161, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:16:00', '2023-03-23 11:16:00', 0, NULL, 0, NULL, NULL, NULL, NULL),
(181, 161, 62, 2, 13, 10, 19, 0, 4, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 2463.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:16:00', '2023-03-23 11:16:00', 0, NULL, 0, NULL, NULL, NULL, NULL),
(182, 161, 33, 3, 0, 2, 6, 0, 4, 0.00, 0.00000000, 1, 985.00000000, 259.00000000, 259.00000000, 985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:16:00', '2023-03-23 11:16:00', 0, NULL, 0, NULL, NULL, NULL, NULL),
(183, 162, 87, 1, 8, 11, 2, 0, 0, 0.00, 0.00000000, 1, 19995.00000000, 6488.00000000, 6488.00000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:16:35', '2023-03-23 11:16:35', 0, NULL, 0, NULL, NULL, NULL, NULL),
(184, 165, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:44:55', '2023-03-23 11:44:55', 0, NULL, 0, NULL, NULL, NULL, NULL),
(185, 166, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:44:55', '2023-03-23 11:44:55', 0, NULL, 0, NULL, NULL, NULL, NULL),
(186, 167, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:44:55', '2023-03-23 11:44:55', 0, NULL, 0, NULL, NULL, NULL, NULL),
(187, 168, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:47:01', '2023-03-23 11:47:01', 0, NULL, 0, NULL, NULL, NULL, NULL),
(188, 169, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:47:01', '2023-03-23 11:47:01', 0, NULL, 0, NULL, NULL, NULL, NULL),
(189, 170, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:47:58', '2023-03-23 11:47:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(190, 171, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:47:58', '2023-03-23 11:47:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(191, 172, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:48:22', '2023-03-23 11:48:22', 0, NULL, 0, NULL, NULL, NULL, NULL),
(192, 173, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:48:44', '2023-03-23 11:48:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(193, 174, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:51:15', '2023-03-23 11:51:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(194, 175, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:51:15', '2023-03-23 11:51:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(196, 177, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:52:48', '2023-03-23 11:52:48', 0, NULL, 0, NULL, NULL, NULL, NULL),
(197, 178, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:52:52', '2023-03-23 11:52:52', 0, NULL, 0, NULL, NULL, NULL, NULL),
(198, 179, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:52:58', '2023-03-23 11:52:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(199, 180, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:52:58', '2023-03-23 11:52:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(200, 181, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:55:11', '2023-03-23 11:55:11', 0, NULL, 0, NULL, NULL, NULL, NULL),
(201, 182, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:55:11', '2023-03-23 11:55:11', 0, NULL, 0, NULL, NULL, NULL, NULL),
(202, 183, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:55:56', '2023-03-23 11:55:56', 0, NULL, 0, NULL, NULL, NULL, NULL),
(203, 184, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:57:02', '2023-03-23 11:57:02', 0, NULL, 0, NULL, NULL, NULL, NULL),
(204, 185, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:57:59', '2023-03-23 11:57:59', 0, NULL, 0, NULL, NULL, NULL, NULL),
(205, 186, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 11:59:05', '2023-03-23 11:59:05', 0, NULL, 0, NULL, NULL, NULL, NULL),
(206, 187, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:00:03', '2023-03-23 12:00:03', 0, NULL, 0, NULL, NULL, NULL, NULL),
(207, 188, 124, 1, 7, 14, 0, 0, 5, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:02:52', '2023-03-23 12:02:52', 0, NULL, 0, NULL, NULL, NULL, NULL),
(208, 189, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:03:47', '2023-03-23 12:03:47', 0, NULL, 0, NULL, NULL, NULL, NULL),
(209, 190, 124, 1, 7, 14, 0, 0, 5, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:04:19', '2023-03-23 12:04:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(210, 191, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:09:46', '2023-03-23 12:09:46', 0, NULL, 0, NULL, NULL, NULL, NULL),
(212, 193, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:12:58', '2023-03-23 12:12:58', 0, NULL, 0, NULL, NULL, NULL, NULL),
(213, 195, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:17:19', '2023-03-23 12:17:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(214, 196, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:22:23', '2023-03-23 12:22:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(215, 197, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:27:02', '2023-03-23 12:27:02', 0, NULL, 0, NULL, NULL, NULL, NULL),
(216, 198, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 2463.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:30:06', '2023-03-23 12:30:06', 0, NULL, 0, NULL, NULL, NULL, NULL),
(217, 199, 121, 1, 7, 10, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 1833.00000000, 1833.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:30:25', '2023-03-23 12:30:25', 0, NULL, 0, NULL, NULL, NULL, NULL),
(218, 201, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 2, 4995.00000000, 2358.00000000, 4716.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:36:03', '2023-03-23 12:36:03', 0, NULL, 0, NULL, NULL, NULL, NULL),
(222, 205, 124, 1, 7, 14, 0, 0, 5, 0.00, 0.00000000, 2, 4995.00000000, 2358.00000000, 4716.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:43:15', '2023-03-23 12:43:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(223, 207, 87, 1, 8, 11, 2, 0, 5, 0.00, 0.00000000, 1, 19995.00000000, 6488.00000000, 6488.00000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:54:49', '2023-03-23 12:54:49', 0, NULL, 0, NULL, NULL, NULL, NULL),
(224, 208, 87, 1, 8, 11, 2, 0, 5, 0.00, 0.00000000, 1, 19995.00000000, 6488.00000000, 6488.00000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 12:55:44', '2023-03-23 12:55:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(225, 209, 124, 1, 7, 14, 0, 0, 5, 0.00, 0.00000000, 2, 4995.00000000, 2358.00000000, 4716.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 13:00:10', '2023-03-23 13:00:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(226, 210, 124, 1, 7, 14, 0, 0, 0, 0.00, 0.00000000, 2, 4995.00000000, 2358.00000000, 4716.00000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 13:01:14', '2023-03-23 13:01:14', 0, NULL, 0, NULL, NULL, NULL, NULL),
(227, 211, 124, 1, 7, 2, 0, 0, 5, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 13:26:55', '2023-03-23 13:26:55', 0, NULL, 0, NULL, NULL, NULL, NULL),
(336, 239, 119, 1, 7, 5, 0, 0, 11, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 16:50:37', '2023-03-23 16:50:37', 0, NULL, 0, NULL, NULL, NULL, NULL),
(337, 240, 61, 2, 13, 12, 21, 0, 11, 0.00, 0.00000000, 1, 4275.00000000, 1571.00000000, 1571.00000000, 4275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-23 17:00:56', '2023-03-23 17:00:56', 0, NULL, 0, NULL, NULL, NULL, NULL),
(388, 251, 124, 1, 7, 2, 0, 0, 5, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 01:25:29', '2023-03-27 01:25:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(389, 252, 124, 1, 7, 2, 0, 0, 5, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 02:00:06', '2023-03-27 02:00:06', 0, NULL, 0, NULL, NULL, NULL, NULL),
(394, 254, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 02:57:28', '2023-03-27 02:57:28', 0, NULL, 0, NULL, NULL, NULL, NULL),
(395, 255, 124, 1, 7, 2, 0, 0, 4, 0.00, 0.00000000, 1, 4995.00000000, 2358.00000000, 2358.00000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 02:57:48', '2023-03-27 02:57:48', 0, NULL, 0, NULL, NULL, NULL, NULL),
(396, 256, 119, 1, 7, 5, 0, 0, 10, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 06:20:49', '2023-03-27 06:20:49', 0, NULL, 0, NULL, NULL, NULL, NULL),
(397, 257, 61, 2, 13, 12, 21, 0, 10, 0.00, 0.00000000, 1, 4275.00000000, 1571.00000000, 1571.00000000, 4275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 06:34:14', '2023-03-27 06:34:14', 0, NULL, 0, NULL, NULL, NULL, NULL),
(398, 258, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 3, 6975.00000000, 2463.00000000, 7389.00000000, 20925.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-27 06:43:46', '2023-03-27 06:43:46', 0, NULL, 0, NULL, NULL, NULL, NULL),
(403, 261, 120, 1, 7, 17, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2987.00000000, 2987.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-28 03:49:08', '2023-03-28 03:49:08', 0, NULL, 0, NULL, NULL, NULL, NULL),
(404, 261, 119, 1, 7, 5, 0, 0, 4, 0.00, 0.00000000, 1, 5995.00000000, 2226.00000000, 2226.00000000, 5995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-28 03:49:08', '2023-03-28 03:49:08', 0, NULL, 0, NULL, NULL, NULL, NULL),
(405, 262, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 4, 6975.00000000, 2463.00000000, 9852.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-29 04:27:32', '2023-03-29 04:27:32', 0, NULL, 0, NULL, NULL, NULL, NULL),
(406, 263, 62, 2, 13, 10, 19, 0, 0, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 2463.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-29 04:31:36', '2023-03-29 04:31:36', 0, NULL, 0, NULL, NULL, NULL, NULL),
(407, 264, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 4, 6975.00000000, 2463.00000000, 9852.00000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-29 05:23:17', '2023-03-29 05:23:17', 0, NULL, 0, NULL, NULL, NULL, NULL),
(408, 265, 62, 2, 13, 10, 19, 0, 5, 0.00, 0.00000000, 1, 6975.00000000, 2463.00000000, 2463.00000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-29 06:57:12', '2023-03-29 06:57:12', 0, NULL, 0, NULL, NULL, NULL, NULL),
(409, 266, 124, 1, 7, 2, 0, 0, 0, 0.00, 0.00000000, 3, 4995.00000000, 2358.00000000, 7074.00000000, 14985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-29 10:01:39', '2023-03-29 10:01:39', 0, NULL, 0, NULL, NULL, NULL, NULL),
(410, 266, 35, 3, 0, 0, 13, 0, 0, 0.00, 0.00000000, 1, 865.00000000, 242.00000000, 242.00000000, 865.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-03-29 10:01:39', '2023-03-29 10:01:39', 0, NULL, 0, NULL, NULL, NULL, NULL),
(411, 267, 60, 2, 13, 16, 20, 0, 0, 7.50, 0.00000000, 1, 2975.00000000, 1156.04000000, 1156.04000000, 2975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-05 07:18:17', '2023-04-05 07:18:17', 0, NULL, 0, NULL, NULL, NULL, NULL),
(412, 267, 60, 2, 13, 10, 19, 0, 0, 7.50, 0.00000000, 1, 2975.00000000, 1156.04000000, 1156.04000000, 2975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-05 07:18:17', '2023-04-05 07:18:17', 0, NULL, 0, NULL, NULL, NULL, NULL),
(413, 268, 61, 2, 13, 12, 19, 0, 0, 7.50, 0.00000000, 4, 4275.00000000, 1571.18000000, 6284.72000000, 17100.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-05 07:39:38', '2023-04-05 07:39:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(414, 269, 62, 2, 13, 10, 19, 0, 1, 7.50, 0.00000000, 4, 6975.00000000, 2462.90000000, 9851.60000000, 27900.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-05 07:43:04', '2023-04-05 07:43:04', 0, NULL, 0, NULL, NULL, NULL, NULL),
(415, 270, 62, 2, 13, 10, 19, 0, 1, 7.50, 0.00000000, 3, 6975.00000000, 2462.90000000, 7388.70000000, 20925.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-05 07:51:19', '2023-04-05 07:51:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(416, 271, 62, 2, 13, 10, 19, 0, 1, 7.50, 0.00000000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 03:47:19', '2023-04-06 03:47:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(417, 272, 62, 2, 13, 10, 19, 0, 0, 7.50, 0.00000000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 05:36:20', '2023-04-06 05:36:20', 0, NULL, 0, NULL, NULL, NULL, NULL),
(418, 273, 62, 2, 13, 10, 19, 0, 1, 7.50, 0.00000000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 07:55:32', '2023-04-06 07:55:32', 0, NULL, 0, NULL, NULL, NULL, NULL),
(419, 274, 62, 2, 13, 10, 19, 0, 0, 7.50, 0.00000000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 07:57:03', '2023-04-06 07:57:03', 0, NULL, 0, NULL, NULL, NULL, NULL),
(420, 275, 35, 3, 0, 0, 6, 0, 1, 7.50, 0.00000000, 1, 865.00000000, 242.20000000, 242.20000000, 865.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:14:24', '2023-04-06 08:14:24', 0, NULL, 0, NULL, NULL, NULL, NULL),
(421, 275, 124, 1, 7, 2, 0, 0, 1, 7.50, 0.00000000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:14:24', '2023-04-06 08:14:24', 0, NULL, 0, NULL, NULL, NULL, NULL),
(422, 275, 17, 1, 8, 12, 11, 0, 1, 7.50, 0.00000000, 1, 1685.00000000, 751.05000000, 751.05000000, 1685.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:14:24', '2023-04-06 08:14:24', 0, NULL, 0, NULL, NULL, NULL, NULL),
(423, 276, 35, 3, 0, 0, 6, 0, 1, 7.50, 0.00000000, 1, 865.00000000, 242.20000000, 242.20000000, 865.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:18:33', '2023-04-06 08:18:33', 0, NULL, 0, NULL, NULL, NULL, NULL),
(424, 276, 124, 1, 7, 2, 0, 0, 1, 7.50, 0.00000000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:18:33', '2023-04-06 08:18:33', 0, NULL, 0, NULL, NULL, NULL, NULL),
(425, 276, 17, 1, 8, 12, 11, 0, 1, 7.50, 0.00000000, 1, 1685.00000000, 751.05000000, 751.05000000, 1685.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:18:33', '2023-04-06 08:18:33', 0, NULL, 0, NULL, NULL, NULL, NULL),
(426, 277, 65, 2, 14, 20, 20, 0, 1, 7.50, 0.00000000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:20:15', '2023-04-06 08:20:15', 0, NULL, 0, NULL, NULL, NULL, NULL),
(427, 278, 62, 2, 13, 10, 19, 0, 0, 7.50, 0.00000000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(428, 278, 61, 2, 13, 12, 19, 0, 0, 7.50, 0.00000000, 1, 4275.00000000, 1571.18000000, 1571.18000000, 4275.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(429, 278, 60, 2, 13, 10, 19, 0, 0, 7.50, 0.00000000, 1, 2975.00000000, 1156.04000000, 1156.04000000, 2975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(430, 278, 59, 2, 13, 10, 19, 0, 0, 7.50, 0.00000000, 1, 2475.00000000, 678.19000000, 678.19000000, 2475.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(431, 279, 98, 1, 11, 1, 4, 0, 1, 7.50, 0.00000000, 1, 3985.00000000, 1239.38000000, 1239.38000000, 3985.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 08:52:09', '2023-04-06 08:52:09', 0, NULL, 0, NULL, NULL, NULL, NULL),
(432, 280, 53, 2, 13, 11, 19, 0, 1, 7.50, 0.00000000, 1, 5975.00000000, 2346.08000000, 2346.08000000, 5975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-06 09:54:53', '2023-04-06 09:54:53', 0, NULL, 0, NULL, NULL, NULL, NULL),
(433, 294, 26, 3, 0, 13, 12, 0, 2, 7.50, 892.50000000, 2, 2975.00000000, 1093.27000000, 2186.54000000, 5950.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-09 18:48:00', '2023-04-09 18:48:00', 0, NULL, 0, NULL, NULL, NULL, NULL),
(434, 295, 124, 1, 7, 14, 0, 0, 1, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:05', '2023-04-10 05:18:05', 0, NULL, 0, NULL, NULL, NULL, NULL),
(435, 295, 87, 1, 8, 11, 3, 0, 1, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:05', '2023-04-10 05:18:05', 0, NULL, 0, NULL, NULL, NULL, NULL),
(436, 295, 62, 2, 13, 10, 19, 0, 1, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:05', '2023-04-10 05:18:05', 0, NULL, 0, NULL, NULL, NULL, NULL),
(437, 296, 124, 1, 7, 14, 0, 0, 1, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:07', '2023-04-10 05:18:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(438, 296, 87, 1, 8, 11, 3, 0, 1, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:07', '2023-04-10 05:18:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(439, 296, 62, 2, 13, 10, 19, 0, 1, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:07', '2023-04-10 05:18:07', 0, NULL, 0, NULL, NULL, NULL, NULL),
(440, 297, 124, 1, 7, 14, 0, 0, 1, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:08', '2023-04-10 05:18:08', 0, NULL, 0, NULL, NULL, NULL, NULL),
(441, 297, 87, 1, 8, 11, 3, 0, 1, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:08', '2023-04-10 05:18:08', 0, NULL, 0, NULL, NULL, NULL, NULL),
(442, 297, 62, 2, 13, 10, 19, 0, 1, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:08', '2023-04-10 05:18:08', 0, NULL, 0, NULL, NULL, NULL, NULL),
(443, 298, 124, 1, 7, 14, 0, 0, 1, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:09', '2023-04-10 05:18:09', 0, NULL, 0, NULL, NULL, NULL, NULL),
(444, 298, 87, 1, 8, 11, 3, 0, 1, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:09', '2023-04-10 05:18:09', 0, NULL, 0, NULL, NULL, NULL, NULL),
(445, 298, 62, 2, 13, 10, 19, 0, 1, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:09', '2023-04-10 05:18:09', 0, NULL, 0, NULL, NULL, NULL, NULL),
(446, 299, 124, 1, 7, 14, 0, 0, 1, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:10', '2023-04-10 05:18:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(447, 299, 87, 1, 8, 11, 3, 0, 1, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:10', '2023-04-10 05:18:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(448, 299, 62, 2, 13, 10, 19, 0, 1, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:18:10', '2023-04-10 05:18:10', 0, NULL, 0, NULL, NULL, NULL, NULL),
(449, 300, 62, 2, 13, 10, 19, 0, 1, 7.50, 2092.50000000, 2, 6975.00000000, 2462.90000000, 4925.80000000, 13950.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:24:19', '2023-04-10 05:24:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(450, 300, 61, 2, 13, 12, 19, 0, 1, 7.50, 1282.50000000, 2, 4275.00000000, 1571.18000000, 3142.36000000, 8550.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:24:19', '2023-04-10 05:24:19', 0, NULL, 0, NULL, NULL, NULL, NULL),
(451, 301, 99, 1, 11, 5, 3, 0, 0, 7.50, 184.12500000, 1, 2455.00000000, 874.05000000, 874.05000000, 2455.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:25:29', '2023-04-10 05:25:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(452, 301, 60, 2, 13, 16, 20, 0, 0, 7.50, 223.12500000, 1, 2975.00000000, 1156.04000000, 1156.04000000, 2975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:25:29', '2023-04-10 05:25:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(453, 302, 99, 1, 11, 5, 3, 0, 0, 7.50, 184.12500000, 1, 2455.00000000, 874.05000000, 874.05000000, 2455.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:25:32', '2023-04-10 05:25:32', 0, NULL, 0, NULL, NULL, NULL, NULL),
(454, 302, 60, 2, 13, 16, 20, 0, 0, 7.50, 223.12500000, 1, 2975.00000000, 1156.04000000, 1156.04000000, 2975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:25:32', '2023-04-10 05:25:32', 0, NULL, 0, NULL, NULL, NULL, NULL),
(455, 303, 62, 2, 13, 10, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:26:32', '2023-04-10 05:26:32', 0, NULL, 0, NULL, NULL, NULL, NULL),
(456, 304, 62, 2, 13, 10, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:27:34', '2023-04-10 05:27:34', 0, NULL, 0, NULL, NULL, NULL, NULL),
(457, 304, 87, 1, 8, 11, 2, 0, 0, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:27:34', '2023-04-10 05:27:34', 0, NULL, 0, NULL, NULL, NULL, NULL),
(458, 305, 62, 2, 13, 10, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:27:37', '2023-04-10 05:27:37', 0, NULL, 0, NULL, NULL, NULL, NULL),
(459, 305, 87, 1, 8, 11, 2, 0, 0, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:27:37', '2023-04-10 05:27:37', 0, NULL, 0, NULL, NULL, NULL, NULL),
(460, 306, 62, 2, 13, 10, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:27:38', '2023-04-10 05:27:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(461, 306, 87, 1, 8, 11, 2, 0, 0, 7.50, 1499.62500000, 1, 19995.00000000, 6487.67000000, 6487.67000000, 19995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-10 05:27:38', '2023-04-10 05:27:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(462, 307, 62, 2, 13, 10, 19, 0, 1, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-17 11:53:38', '2023-04-17 11:53:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(463, 307, 51, 2, 13, 12, 19, 0, 1, 7.50, 350.62500000, 1, 4675.00000000, 1675.42000000, 1675.42000000, 4675.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-04-17 11:53:38', '2023-04-17 11:53:38', 0, NULL, 0, NULL, NULL, NULL, NULL),
(464, 337, 86, 1, 8, 0, 1, 0, 0, 7.50, 2099.25000000, 2, 13995.00000000, 5845.82000000, 11691.64000000, 27990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-01 07:17:13', '2023-05-01 07:17:13', 0, NULL, 0, NULL, NULL, NULL, NULL),
(465, 338, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-01 08:57:53', '2023-05-01 08:57:53', 0, NULL, 0, NULL, NULL, NULL, NULL),
(466, 339, 124, 1, 7, 0, 0, 0, 0, 7.50, 749.25000000, 2, 4995.00000000, 2358.45000000, 4716.90000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 05:21:23', '2023-05-02 05:21:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(467, 340, 124, 1, 7, 0, 0, 0, 0, 7.50, 749.25000000, 2, 4995.00000000, 2358.45000000, 4716.90000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 05:21:27', '2023-05-02 05:21:27', 0, NULL, 0, NULL, NULL, NULL, NULL),
(468, 341, 124, 1, 7, 0, 0, 0, 0, 7.50, 749.25000000, 2, 4995.00000000, 2358.45000000, 4716.90000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 05:21:28', '2023-05-02 05:21:28', 0, NULL, 0, NULL, NULL, NULL, NULL),
(469, 342, 124, 1, 7, 0, 0, 0, 0, 7.50, 749.25000000, 2, 4995.00000000, 2358.45000000, 4716.90000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 05:21:28', '2023-05-02 05:21:28', 0, NULL, 0, NULL, NULL, NULL, NULL),
(470, 343, 124, 1, 7, 0, 0, 0, 0, 7.50, 749.25000000, 2, 4995.00000000, 2358.45000000, 4716.90000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 05:21:29', '2023-05-02 05:21:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(471, 344, 124, 1, 7, 0, 0, 0, 0, 7.50, 749.25000000, 2, 4995.00000000, 2358.45000000, 4716.90000000, 9990.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 05:21:29', '2023-05-02 05:21:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(472, 345, 124, 1, 7, 0, 0, 0, 0, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:12:18', '2023-05-02 06:12:18', 0, NULL, 0, NULL, NULL, NULL, NULL),
(473, 346, 124, 1, 7, 0, 0, 0, 0, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:12:20', '2023-05-02 06:12:20', 0, NULL, 0, NULL, NULL, NULL, NULL),
(474, 347, 124, 1, 7, 0, 0, 0, 0, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:12:22', '2023-05-02 06:12:22', 0, NULL, 0, NULL, NULL, NULL, NULL),
(475, 348, 124, 1, 7, 0, 0, 0, 0, 7.50, 374.62500000, 1, 4995.00000000, 2358.45000000, 2358.45000000, 4995.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:12:23', '2023-05-02 06:12:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(476, 349, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:13:44', '2023-05-02 06:13:44', 0, NULL, 0, NULL, NULL, NULL, NULL),
(477, 350, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:19:27', '2023-05-02 06:19:27', 0, NULL, 0, NULL, NULL, NULL, NULL),
(478, 351, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:20:12', '2023-05-02 06:20:12', 0, NULL, 0, NULL, NULL, NULL, NULL),
(479, 352, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:38:45', '2023-05-02 06:38:45', 0, NULL, 0, NULL, NULL, NULL, NULL),
(480, 353, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:42:29', '2023-05-02 06:42:29', 0, NULL, 0, NULL, NULL, NULL, NULL),
(481, 354, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:44:01', '2023-05-02 06:44:01', 0, NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `category_id`, `sub_category_id`, `colour_id`, `size_id`, `fabric_id`, `user_id`, `vat_rate`, `vat_amount`, `quantity`, `selling_price`, `buying_price`, `total_buying_price`, `total_selling_price`, `unit_discount`, `total_discount`, `status`, `deleted_at`, `created_at`, `updated_at`, `is_claim_refund`, `refund_claim_date`, `is_refunded`, `refund_date`, `refund_claim_reason`, `refund_reject_reason`, `refund_info`) VALUES
(482, 355, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:46:16', '2023-05-02 06:46:16', 0, NULL, 0, NULL, NULL, NULL, NULL),
(483, 356, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:47:03', '2023-05-02 06:47:03', 0, NULL, 0, NULL, NULL, NULL, NULL),
(484, 357, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:48:43', '2023-05-02 06:48:43', 0, NULL, 0, NULL, NULL, NULL, NULL),
(485, 358, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:49:52', '2023-05-02 06:49:52', 0, NULL, 0, NULL, NULL, NULL, NULL),
(486, 359, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:55:30', '2023-05-02 06:55:30', 0, NULL, 0, NULL, NULL, NULL, NULL),
(487, 360, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 06:58:20', '2023-05-02 06:58:20', 0, NULL, 0, NULL, NULL, NULL, NULL),
(488, 361, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 07:01:35', '2023-05-02 07:01:35', 0, NULL, 0, NULL, NULL, NULL, NULL),
(489, 362, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 07:02:54', '2023-05-02 07:02:54', 0, NULL, 0, NULL, NULL, NULL, NULL),
(490, 363, 65, 2, 14, 0, 19, 0, 0, 7.50, 396.37500000, 1, 5285.00000000, 1151.40000000, 1151.40000000, 5285.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-02 07:04:03', '2023-05-02 07:04:03', 0, NULL, 0, NULL, NULL, NULL, NULL),
(491, 364, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 09:27:01', '2023-05-03 09:27:01', 0, NULL, 0, NULL, NULL, NULL, NULL),
(492, 365, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:42:23', '2023-05-03 10:42:23', 0, NULL, 0, NULL, NULL, NULL, NULL),
(493, 366, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:43:14', '2023-05-03 10:43:14', 0, NULL, 0, NULL, NULL, NULL, NULL),
(494, 367, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:43:17', '2023-05-03 10:43:17', 0, NULL, 0, NULL, NULL, NULL, NULL),
(495, 368, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:43:28', '2023-05-03 10:43:28', 0, NULL, 0, NULL, NULL, NULL, NULL),
(496, 369, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:43:51', '2023-05-03 10:43:51', 0, NULL, 0, NULL, NULL, NULL, NULL),
(497, 370, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:44:59', '2023-05-03 10:44:59', 0, NULL, 0, NULL, NULL, NULL, NULL),
(498, 371, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:46:30', '2023-05-03 10:46:30', 0, NULL, 0, NULL, NULL, NULL, NULL),
(499, 372, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:48:18', '2023-05-03 10:48:18', 0, NULL, 0, NULL, NULL, NULL, NULL),
(500, 373, 62, 2, 13, 0, 19, 0, 0, 7.50, 523.12500000, 1, 6975.00000000, 2462.90000000, 2462.90000000, 6975.00000000, 0.00000000, 0.00000000, 1, NULL, '2023-05-03 10:51:30', '2023-05-03 10:51:30', 0, NULL, 0, NULL, NULL, NULL, NULL);

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
(1, 'home', 'home', 'https://res.cloudinary.com/diyc1dizi/video/upload/v1679551684/aranya-product/boishakh/Loop_For_Website.mp4', NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001406.jpg', 'saree', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001793.jpg', 'panjabi', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001125.jpg', 'saree', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product/boishakh/ZS001819.jpg', 'kurti-fatua', NULL, NULL, 1, NULL, '2023-03-12 08:28:58', '2023-03-12 08:29:00');

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
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `transaction_id`, `amount`, `payment_type`, `payment_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 202303211679381452, NULL, 28000.00, 'sslCommerz-BKASH-BKash', 1, NULL, NULL, NULL),
(2, 202303211679382029, '23032113005114pll04iK0TX5Bm', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, NULL, NULL),
(3, 202303211679385791, NULL, 28000.00, NULL, 0, NULL, NULL, NULL),
(4, 202303211679385998, NULL, 28000.00, NULL, 0, NULL, NULL, NULL),
(5, 202303211679390200, '230321151656joh5b8vQKLfBUCJ', 10090.00, 'sslCommerz-BKASH-BKash', 1, NULL, NULL, NULL),
(6, 202303211679393624, '230321161359AbNAAbdXFKfOXbF', 20045.00, 'sslCommerz-IBBL-Islami Bank', 1, NULL, '2023-03-21 10:13:44', '2023-03-21 10:14:02'),
(7, 202303211679395175, '230321163956RJv9piw6Iay5fzr', 20045.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-21 10:39:35', '2023-03-21 10:39:59'),
(8, 202303211679396634, NULL, 20045.00, NULL, 0, NULL, '2023-03-21 11:03:54', NULL),
(9, 202303211679396691, '230321170512Fsqy5vR70FrXXUd', 20045.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-21 11:04:51', '2023-03-21 11:05:14'),
(10, 202303221679465527, '23032212123014AkQv0DgfBlBiP', 50050.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-22 06:12:07', '2023-03-22 06:12:33'),
(11, 202303221679472209, '230322140337M9Kxbp5TeLzvxJ9', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 08:03:29', '2023-03-22 08:03:39'),
(12, 202303221679472268, '2303221404361y7TRo55FRT6PNy', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 08:04:28', '2023-03-22 08:04:38'),
(13, 202303221679476999, '230322152327oIWce8js24RywBX', 7075.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 09:23:19', '2023-03-22 09:23:30'),
(14, 202303221679488611, '230322183703PhTwkaNQw5220f9', 9740.00, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-03-22 12:36:51', '2023-03-22 12:37:05'),
(15, 202303221679488690, '2303221838186cks2JwC3jT9UzO', 11285.00, 'sslCommerz-ABBANKIB-AB Bank', 1, NULL, '2023-03-22 12:38:10', '2023-03-22 12:38:21'),
(16, 202303221679489175, '230322184623059GnJ85gEIidXk', 100.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 12:46:15', '2023-03-22 12:46:26'),
(17, 202303221679489279, '2303221848480Byqb84rDlu48EN', 28000.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 12:47:59', '2023-03-22 12:48:50'),
(18, 202303221679496384, '230322204842XYnWQ1XnUXyeLOV', 10240.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 14:46:24', '2023-03-22 14:48:44'),
(19, 202303221679496810, '2303222053551JpFmaZl9ck0lZO', 10090.00, 'sslCommerz-Cellfine-Cellfine', 1, NULL, '2023-03-22 14:53:30', '2023-03-22 14:53:57'),
(20, 202303221679498178, '23032221163013JVYOut2lwnZhY', 6095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 15:16:18', '2023-03-22 15:16:32'),
(21, 202303221679498408, '2303222120161QGjlNQil8k0N49', 6095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 15:20:08', '2023-03-22 15:20:19'),
(22, 202303221679498515, '230322212205DoXJarGBr80dopQ', 6095.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-22 15:21:55', '2023-03-22 15:22:08'),
(23, 202303221679499851, '2303222144191Mk5Z0Hf2wJQJXb', 42985.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-22 15:44:11', '2023-03-22 15:44:22'),
(24, 202303221679500728, '23032221590917FKKdxqbWmlFGD', 15085.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-22 15:58:48', '2023-03-22 15:59:12'),
(25, 202303221679500801, '230322220009dZHSKxmUkriGeKt', 15085.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-22 16:00:01', '2023-03-22 16:00:11'),
(26, 202303221679501883, '23032222181205htZgVL8amS71K', 20095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 16:18:03', '2023-03-22 16:18:15'),
(27, 202303221679502038, '2303222220560IeMdDnNQyMtq3A', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 16:20:38', '2023-03-22 16:20:59'),
(28, 202303221679505326, '23032223154814RvNrHghAjwyTZ', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-22 17:15:26', '2023-03-22 17:15:50'),
(29, 202303231679547260, '2303231054310tZ2JskxNmghlcD', 5245.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 04:54:20', '2023-03-23 04:54:33'),
(30, 202303231679554567, '2303231256180hjsS4QHyNjp8vM', 9950.00, 'sslCommerz-OKAYWALLET-Okay Wallet', 1, NULL, '2023-03-23 06:56:07', '2023-03-23 06:56:21'),
(31, 202303231679569734, '230323170901CEo6fk1tpZaFR6P', 15070.00, 'sslCommerz-UPay-UPay', 1, NULL, '2023-03-23 11:08:54', '2023-03-23 11:09:04'),
(32, 202303231679570160, '23032317160811bC7nDhGQZtnfd', 14205.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 11:16:00', '2023-03-23 11:16:10'),
(33, 202303231679570195, NULL, 20095.00, NULL, 0, NULL, '2023-03-23 11:16:35', NULL),
(34, 202303231679571724, NULL, 100.00, NULL, 0, NULL, '2023-03-23 11:42:04', NULL),
(35, 202303231679571724, NULL, 100.00, NULL, 0, NULL, '2023-03-23 11:42:04', NULL),
(36, 202303231679571895, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:44:55', NULL),
(37, 202303231679571895, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:44:55', NULL),
(38, 202303231679571895, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:44:55', NULL),
(39, 202303231679572021, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:47:01', NULL),
(40, 202303231679572021, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:47:01', NULL),
(41, 202303231679572078, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:47:58', NULL),
(42, 202303231679572078, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:47:58', NULL),
(43, 202303231679572102, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 11:48:22', NULL),
(44, 202303231679572124, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 11:48:44', NULL),
(45, 202303231679572275, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:51:15', NULL),
(46, 202303231679572275, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:51:15', NULL),
(47, 202303231679572368, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 11:52:48', NULL),
(48, 202303231679572372, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 11:52:52', NULL),
(49, 202303231679572378, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:52:58', NULL),
(50, 202303231679572378, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:52:58', NULL),
(51, 202303231679572511, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:55:11', NULL),
(52, 202303231679572511, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:55:11', NULL),
(53, 202303231679572556, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 11:55:56', NULL),
(54, 202303231679572622, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:57:02', NULL),
(55, 202303231679572679, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:57:59', NULL),
(56, 202303231679572745, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 11:59:05', NULL),
(57, 202303231679572803, NULL, 6245.00, NULL, 0, NULL, '2023-03-23 12:00:03', NULL),
(58, 202303231679572972, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 12:02:52', NULL),
(59, 202303231679573027, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 12:03:47', NULL),
(60, 202303231679573059, NULL, 5095.00, NULL, 0, NULL, '2023-03-23 12:04:19', NULL),
(61, 202303231679573386, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 12:09:46', NULL),
(62, 202303231679573578, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 12:12:58', NULL),
(63, 202303231679573782, NULL, 100.00, NULL, 0, NULL, '2023-03-23 12:16:22', NULL),
(64, 202303231679573839, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 12:17:19', NULL),
(65, 202303231679574143, '2303231823070W6O5SskzcUQx8y', 6095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 12:22:23', '2023-03-23 12:23:10'),
(66, 202303231679574422, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 12:27:02', NULL),
(67, 202303231679574606, NULL, 7075.00, NULL, 0, NULL, '2023-03-23 12:30:06', NULL),
(68, 202303231679574625, '230323183032NVw7FKNkdkzgiXR', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 12:30:25', '2023-03-23 12:30:34'),
(69, 202303231679574884, NULL, 100.00, NULL, 0, NULL, '2023-03-23 12:34:44', NULL),
(70, 202303231679574963, NULL, 10090.00, NULL, 0, NULL, '2023-03-23 12:36:03', NULL),
(71, 202303231679575395, NULL, 10090.00, NULL, 0, NULL, '2023-03-23 12:43:15', NULL),
(72, 202303231679576015, NULL, 100.00, NULL, 0, NULL, '2023-03-23 12:53:35', NULL),
(73, 202303231679576089, NULL, 20095.00, NULL, 0, NULL, '2023-03-23 12:54:49', NULL),
(74, 202303231679576144, NULL, 20095.00, NULL, 0, NULL, '2023-03-23 12:55:44', NULL),
(75, 202303231679576410, '230323190018rtTJM2ES77N4ypL', 10090.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 13:00:10', '2023-03-23 13:00:21'),
(76, 202303231679576474, '230323190146FiWqC2Zh5NTl2Xp', 10090.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 13:01:14', '2023-04-04 05:11:35'),
(77, 202303231679578015, '2303231927020np08Xp4seZefKC', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 13:26:55', '2023-03-23 13:27:05'),
(78, 202303231679590237, NULL, 6095.00, NULL, 0, NULL, '2023-03-23 16:50:37', NULL),
(79, 202303231679590856, '230323230106ziKHzqV0030558m', 4375.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-23 17:00:56', '2023-03-23 17:01:09'),
(80, 202303271679880329, NULL, 5095.00, NULL, 0, NULL, '2023-03-27 01:25:29', NULL),
(81, 202303271679882406, '23032780022jCmc0vkmiFn8SD0', 5095.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-03-27 02:00:06', '2023-03-27 02:00:25'),
(82, 202303271679882573, '230327803060NzRHWXTQqws5zT', 55050.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-27 02:02:53', '2023-03-27 02:03:09'),
(83, 202303271679885848, NULL, 5245.00, NULL, 0, NULL, '2023-03-27 02:57:28', NULL),
(84, 202303271679885868, '230327857571hFW6n29o1H0i5h', 5245.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-27 02:57:48', '2023-03-27 02:58:00'),
(85, 202303271679898049, NULL, 6095.00, NULL, 0, NULL, '2023-03-27 06:20:49', NULL),
(86, 202303271679898854, NULL, 4375.00, NULL, 0, NULL, '2023-03-27 06:34:14', NULL),
(87, 202303271679899426, '2303271244001jL6vZUFe71kAVe', 21025.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-27 06:43:46', '2023-03-27 06:44:03'),
(88, 202303281679975348, NULL, 11990.00, NULL, 0, NULL, '2023-03-28 03:49:08', NULL),
(89, 202303291680064052, '230329102758oktmRLhbh8BNJip', 28000.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-29 04:27:32', '2023-03-29 04:28:00'),
(90, 202303291680064296, '2303291031441suhQfOvlvjSMip', 7075.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-29 04:31:36', '2023-03-29 04:31:46'),
(91, 202303291680067397, '230329112329cvcdQABQqQhGH1Q', 28000.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-29 05:23:17', '2023-03-29 05:23:31'),
(92, 202303291680073032, NULL, 7075.00, NULL, 0, NULL, '2023-03-29 06:57:12', NULL),
(93, 202303291680084099, '230329160145rLdYzVdMJ1JFnHD', 15950.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-03-29 10:01:39', '2023-03-29 10:01:48'),
(94, 202304051680679097, NULL, 6050.00, NULL, 0, NULL, '2023-04-05 07:18:17', NULL),
(95, 202304051680680378, NULL, 17200.00, NULL, 0, NULL, '2023-04-05 07:39:38', NULL),
(96, 202304051680680584, NULL, 28000.00, NULL, 0, NULL, '2023-04-05 07:43:04', NULL),
(97, 202304051680681078, NULL, 21025.00, NULL, 0, NULL, '2023-04-05 07:51:19', NULL),
(98, 202304061680752839, NULL, 7075.00, NULL, 0, NULL, '2023-04-06 03:47:19', NULL),
(99, 202304061680759380, NULL, 7075.00, NULL, 0, NULL, '2023-04-06 05:36:20', NULL),
(100, 273, NULL, 7075.00, NULL, 0, NULL, '2023-04-06 07:55:32', NULL),
(101, 274, NULL, 7075.00, NULL, 0, NULL, '2023-04-06 07:57:03', NULL),
(102, 275, NULL, -5425.00, NULL, 0, NULL, '2023-04-06 08:14:24', NULL),
(103, 276, NULL, -5325.00, NULL, 0, NULL, '2023-04-06 08:18:33', NULL),
(104, 277, '23040614231832WVpRh7HKToHuT', 5385.00, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-04-06 08:20:15', '2023-04-06 08:23:21'),
(105, 278, '230406142135KtG4ty4lnJvi417', 16800.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-04-06 08:21:23', '2023-04-06 08:21:37'),
(106, 279, '2304061452200XDUdwcbZ1PILge', 4085.00, 'sslCommerz-ABBANKIB-AB Bank', 1, NULL, '2023-04-06 08:52:09', '2023-04-06 08:52:22'),
(107, 280, '2304061555010VsW44wJLWESI2s', 6075.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-04-06 09:54:53', '2023-04-06 09:55:04'),
(108, 294, '230410048261R0KaZpUSa8ZJyN', 6650.00, 'sslCommerz-TAP-TAP', 1, NULL, '2023-04-09 18:48:00', '2023-04-09 18:48:28'),
(109, 295, '23041011181805ua2EkhGickkT9', 32515.00, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-04-10 05:18:05', '2023-04-10 05:18:21'),
(110, 296, NULL, 32515.00, NULL, 0, NULL, '2023-04-10 05:18:07', NULL),
(111, 297, NULL, 32515.00, NULL, 0, NULL, '2023-04-10 05:18:08', NULL),
(112, 298, NULL, 32515.00, NULL, 0, NULL, '2023-04-10 05:18:09', NULL),
(113, 299, NULL, 32515.00, NULL, 0, NULL, '2023-04-10 05:18:10', NULL),
(114, 300, '2304101124361Vv1Ez4WKNRhEg1', 23050.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-04-10 05:24:19', '2023-04-10 05:24:38'),
(115, 301, '230410112541ZiBjYC0gYXYRh6i', 6130.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-04-10 05:25:29', '2023-04-10 05:25:43'),
(116, 302, NULL, 6130.00, NULL, 0, NULL, '2023-04-10 05:25:32', NULL),
(117, 303, NULL, 7675.00, NULL, 0, NULL, '2023-04-10 05:26:32', NULL),
(118, 304, NULL, 27670.00, NULL, 0, NULL, '2023-04-10 05:27:34', NULL),
(119, 305, NULL, 27670.00, NULL, 0, NULL, '2023-04-10 05:27:37', NULL),
(120, 306, NULL, 27670.00, NULL, 0, NULL, '2023-04-10 05:27:38', NULL),
(121, 307, '2304171753590PJA9uLBcXJ8rmg', 12623.75, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-04-17 11:53:38', '2023-04-17 11:54:02'),
(122, 337, '230501131732S673ZZScJajEXYt', 30189.25, 'sslCommerz-DBBLMOBILEB-Dbbl Mobile Banking', 1, NULL, '2023-05-01 07:17:13', '2023-05-01 07:17:35'),
(123, 338, '23050114581409OS8eaWoUvA4tN', 7598.12, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-05-01 08:57:53', '2023-05-01 08:58:17'),
(124, 339, NULL, 80131.62, NULL, 0, NULL, '2023-05-02 05:21:23', NULL),
(125, 340, NULL, 80131.62, NULL, 0, NULL, '2023-05-02 05:21:27', NULL),
(126, 341, NULL, 80131.62, NULL, 0, NULL, '2023-05-02 05:21:28', NULL),
(127, 342, NULL, 80131.62, NULL, 0, NULL, '2023-05-02 05:21:28', NULL),
(128, 343, NULL, 80131.62, NULL, 0, NULL, '2023-05-02 05:21:29', NULL),
(129, 344, NULL, 80131.62, NULL, 0, NULL, '2023-05-02 05:21:29', NULL),
(130, 345, '230502121341yzuFXlzuofSPaLx', 74762.00, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-05-02 06:12:18', '2023-05-02 06:13:44'),
(131, 346, NULL, 74762.00, NULL, 0, NULL, '2023-05-02 06:12:20', NULL),
(132, 347, NULL, 74762.00, NULL, 0, NULL, '2023-05-02 06:12:22', NULL),
(133, 348, NULL, 74762.00, NULL, 0, NULL, '2023-05-02 06:12:23', NULL),
(134, 349, '230502121408Ox25LzT6lK8o2Kv', 7598.12, 'sslCommerz-BKASH-BKash', 1, NULL, '2023-05-02 06:13:44', '2023-05-02 06:14:11'),
(135, 350, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:19:27', NULL),
(136, 351, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:20:12', NULL),
(137, 352, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:38:45', NULL),
(138, 353, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:42:29', NULL),
(139, 354, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:44:01', NULL),
(140, 355, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:46:16', NULL),
(141, 356, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:47:03', NULL),
(142, 357, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:48:43', NULL),
(143, 358, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:49:52', NULL),
(144, 359, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:55:30', NULL),
(145, 360, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 06:58:20', NULL),
(146, 361, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 07:01:35', NULL),
(147, 362, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 07:02:54', NULL),
(148, 363, NULL, 5781.38, NULL, 0, NULL, '2023-05-02 07:04:03', NULL),
(149, 364, '230503152720cqrLuF47R2vNmwH', 15096.25, 'sslCommerz-NAGAD-Nagad', 1, NULL, '2023-05-03 09:27:01', '2023-05-10 00:36:48'),
(150, 365, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:42:23', NULL),
(151, 366, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:43:14', NULL),
(152, 367, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:43:17', NULL),
(153, 368, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:43:28', NULL),
(154, 369, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:43:51', NULL),
(155, 370, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:44:59', NULL),
(156, 371, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:46:30', NULL),
(157, 372, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:48:18', NULL),
(158, 373, NULL, 7598.12, NULL, 0, NULL, '2023-05-03 10:51:30', NULL);

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
(1, 'Refund', 'Refund Configure', 'refund-configure', NULL, 1, '2023-05-16 09:23:58', '2023-05-16 09:24:00'),
(2, 'Refund', 'Refund View', 'refund-view', NULL, 1, '2023-05-16 09:28:41', '2023-05-16 09:28:42'),
(3, 'Refund', 'Refund Reject', 'reject-refund', NULL, 1, '2023-05-16 09:34:11', '2023-05-16 09:34:12'),
(4, 'Refund', 'Refund Approve', 'refund-approve', NULL, 1, '2023-05-16 09:36:36', '2023-05-16 09:36:36'),
(5, 'Order', 'Order View', 'order-view', NULL, 1, '2023-05-16 09:38:14', '2023-05-16 09:38:15'),
(6, 'Order', 'Order Details', 'order-details', NULL, 1, '2023-05-16 09:39:07', '2023-05-16 09:39:08'),
(7, 'Order', 'Order Cancel', 'order-cancel', NULL, 1, '2023-05-16 09:39:44', '2023-05-16 09:39:45'),
(8, 'Order', 'Order Payment Status', 'order-payment-status', NULL, 1, '2023-05-16 09:41:01', '2023-05-16 09:41:02'),
(9, 'Customer', 'Customer View', 'customer-view', NULL, 1, '2023-05-16 09:42:08', '2023-05-16 09:42:09'),
(10, 'Customer', 'Customer Order', 'customer-order', NULL, 1, '2023-05-16 09:45:30', '2023-05-16 09:45:31');

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
(24, 'App\\Models\\User', 4, 'API TOKEN', '197d77fc45a76139147b9a767e0156e7f90dc1bc3b1bd269635f5e9fb128706f', '[\"*\"]', NULL, '2023-05-03 09:30:40', '2023-05-03 09:30:40');

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
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `design_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flat_colour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `description`, `status`, `is_discount`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Pansy Cotton Voil Panjabi', 'pansy-cotton-voil-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010352FFS1202719/4_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010352FFS1202719/4_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010352FFS1202719/4_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010352FFS1202719', NULL, 'The mesmerizing shades of red complimenting in this panjabi were taken from organically grown madder successively. Block print has been used on cotton voil fabric to ensure the highest amount of easement. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:41', NULL, '2023-03-22 03:14:41'),
(2, 'Deutzia baby panjabi ', 'deutzia-baby-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010372NK10194019/5_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010372NK10194019/5_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010372NK10194019/5_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010372NK10194019', NULL, 'Dark designs on a light base and comfortable fabric makes it a perfect traditional wear for your child.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(3, 'Chiliad Kids Panjabi ', 'chiliad-kids-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010373NK10194019/6_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010373NK10194019/6_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010373NK10194019/6_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010373NK10194019', NULL, 'Pomegranate and myrobalan have been used to bring out the olive color on this wax-printed cotton kids panjabi. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(4, 'Cistus Kids Panjabi ', 'cistus-kids-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010374NK10194019/7_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010374NK10194019/7_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010374NK10194019/7_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010374NK10194019', NULL, 'Wax-printed pure cotton kids Panjabi that has been dipped in betelnut to extract the pink shade. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(5, 'Oboni Cotton Panjabi ', 'oboni-cotton-panjabi', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010379NHS1204219/8_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010379NHS1204219/8_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010379NHS1204219/8_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0010379NHS1204219/8_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0010379NHS1204219', NULL, 'The shiny blue in this Panjabi is taken from an enticing by indigo. Traditional tie-dyeing technique has been used on cotton and black kashmi print to create detailed intricacies. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(6, 'Mantecoso Baby Cotton Fotua ', 'mantecoso-baby-cotton-fotua', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020034RG11194619/9_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020034RG11194619/9_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020034RG11194619/9_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020034RG11194619/9_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0020034RG11194619', NULL, 'Myrabalan is used to produce the buttery golden color seen in this fotua. Wax print has been used to create the beautiful spiral imprints on a cotton fabric, which secures the smoothest touch to the skin.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(7, 'Acacias baby fatua ', 'acacias-baby-fatua', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0020036RG11194519/10_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0020036RG11194519', NULL, 'The simple and monotone combination of this outfit make it a unique traditional wear.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(8, 'Dogma kids Shirt ', 'dogma-kids-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030067IJ02190719/12_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030067IJ02190719/12_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030067IJ02190719', NULL, 'Handmade block-printed creates the beauty in this pure cotton kids Shirt with a rich appearance and with the application of Natural red and black come from the natural essence of madder and black kashmi. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(9, 'Broom baby shirt ', 'broom-baby-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030072IJ03191319/13_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030072IJ03191319/13_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030072IJ03191319/13_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030072IJ03191319', NULL, 'Light designs on a dark base and comfortable fabric makes it a perfect traditional wear for your child.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(10, 'Decumaria baby shirt ', 'decumaria-baby-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030073IJ03191319/14_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030073IJ03191319/14_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030073IJ03191319/14_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030073IJ03191319', NULL, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(11, 'Dandelion baby shirt ', 'dandelion-baby-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030085IJ11194419/15_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030085IJ11194419/15_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030085IJ11194419/15_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030085IJ11194419', NULL, 'Light designs on a dark base and comfortable fabric makes it a perfect wear for your child.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(12, 'Pansay Cotton Shirt ', 'pansay-cotton-shirt', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030086IJ11194319/16_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030086IJ11194319/16_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0030086IJ11194319/16_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0030086IJ11194319', NULL, 'The segment of characteristic color myrobalan shows brilliant golden tone in this wax-printed cotton shirt. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(13, 'Estrella Baby Cotton Voil Salwar Kameez ', 'estrella-baby-cotton-voil-salwar-kameez', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050470SF04190819/17_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050470SF04190819/17_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050470SF04190819/17_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050470SF04190819', NULL, 'The mesmerizing combination of the pink from betelnuts and brown from catechu gives the three pieces a subtle touch of elegance, rarely found anywhere else. Wax print has been used on cotton fabric to create the unique designs, while ensuring the highest easement.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:42', NULL, '2023-03-22 03:14:42'),
(14, 'Meghmala Linen Suit ', 'meghmala-linen-suit', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050500SFE1204619/18_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050500SFE1204619/18_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050500SFE1204619/18_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050500SFE1204619', NULL, 'The blue color in this salwar kameez is extracted from handpicked indigo. The Wax print has been utilized on linen fabric to create expuisite plans. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(15, 'Billergia baby suits ', 'billergia-baby-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050501IJ12194519/19_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050501IJ12194519/19_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050501IJ12194519/19_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050501IJ12194519', NULL, 'Similar tones and minimal designs of this dress greatly compliment each other. Comfortable fabric provides soothing touch for your baby\'s skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(16, 'Aconite cotton baby suits ', 'aconite-cotton-baby-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050504FF12194819/20_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050504FF12194819/20_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050504FF12194819/20_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050504FF12194819', NULL, 'Dual colors and minimal motifs are greatly paired with each other to create the perfect traditional piece for your baby. Cotton fabric used also provides good breathability making it good to wear all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(17, 'Blazing star baby suits ', 'blazing-star-baby-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050505FF12190620/21_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050505FF12190620/21_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0050505FF12190620/21_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0050505FF12190620', NULL, 'Tones of blue and gray represent the rainclouds in the sky. Comfortable fabric and stunning designs make it wearable all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(18, 'Piscina Baby Khadi Jacket', 'piscina-baby-khadi-jacket', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0170029NK09193719/23_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0170029NK09193719/23_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0170029NK09193719/23_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0170029NK09193719', NULL, 'The beautiful tones of blue in this jacket are made from colors extracted from organically grown indigo. Wax print has been used on khadi fabric to make the magical patterns.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(19, 'Woodland Baby Cotton Frock ', 'woodland-baby-cotton-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200021IJ03191219/24_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200021IJ03191219/24_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200021IJ03191219/24_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200021IJ03191219', NULL, 'The earthy tones of brown in this frock are made with colors given off by organically grown catechu. Wax print is used on cotton to produce the treelike patterns and also ensuring the softest touch to the baby skin.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(20, 'Ellipse Cotton Baby Frock', 'ellipse-cotton-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200026SF03191319/43.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200026SF03191319/43.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200026SF03191319/44.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200026SF03191319', NULL, 'The mix of red and black color in this enthusiastic baby frock is taken from the best-handpicked madder. Black kashmi print has been utilized on cotton material to create detailed intricacies. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(21, 'Oval Baby Frock ', 'oval-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200028SF04191519/26_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200028SF04191519/26_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200028SF04191519/26_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200028SF04191519', NULL, 'The magnificent color in this baby Frock/dress is made from hand-plucked Indigo which is resembles blue shades. Wax print has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(22, 'Summer Fruits Baby Cotton Frock ', 'summer-fruits-baby-cotton-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200029IJ04191519/27_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200029IJ04191519/27_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200029IJ04191519/27_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200029IJ04191519', NULL, 'The off white color of this frock gives out a vibe of everything pure and peaceful. This frock has been crafted with cotton material to ensure the highest comfort for your baby.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(23, 'Tierra Baby Cotton Voil Frock ', 'tierra-baby-cotton-voil-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200035FF07192819/28_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200035FF07192819/28_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200035FF07192819/28_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200035FF07192819', NULL, 'This graceful baby frock has been dyed with the purest brown extracted from organically grown catechu. Plain dye technique has been used to immerse the color on a cotton material to provide the utmost comfort.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(24, 'Anahi Baby Frock ', 'anahi-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200037SF07192819/29_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200037SF07192819/29_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200037SF07192819/29_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200037SF07192819', NULL, 'The eye-catching brown color of this frock is exclusively taken from organically grown catechu. The mesmerizing designs are made with wax print on cotton fabric, providing the best of both easement and beauty.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(25, 'Espumosa Baby Cotton Voil Frock ', 'espumosa-baby-cotton-voil-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200044SF07193219/30_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200044SF07193219/30_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200044SF07193219/30_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200044SF07193219', NULL, 'The enchanting shades of blue in this frock are all extracted from organically grown indigo. Wax print has been used on cotton fabric to make the captivating imprints and also securing the most easement.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(26, 'Avro Cotton Baby Frock ', 'avro-cotton-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200046SF07193119/31_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200046SF07193119/31_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200046SF07193119/31_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200046SF07193119', NULL, 'The magnificent color in this baby forck is made from handplucked promegranate and myrabalan which is resemble of olive. traditional kantha stithc has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(27, 'Kadambini Cotton Frock ', 'kadambini-cotton-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200049FF07193119/32_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200049FF07193119/32_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200049FF07193119/32_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200049FF07193119', NULL, 'The different shades of a heavenly blue in this baby frock are all extracted from organic indigo. Wax print has been used over cotton fabric to produce the cloudy vibrance. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(28, 'Kalpis Baby Frock ', 'kalpis-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200050FF07193119/33_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200050FF07193119/33_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200050FF07193119/33_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200050FF07193119', NULL, 'The sweet color in this baby forck/dress is made from hand-plucked batelnut which is resembles pink tone. Traditional wax print has been used on cotton fabric to produce the designs. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(29, 'Alyssa Cotton Baby Frock ', 'alyssa-cotton-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200053IJ08193319/34_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200053IJ08193319/34_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200053IJ08193319/34_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200053IJ08193319', NULL, 'Indigo is used to produce the blue color seen in this frock. Wax-print is used beautifully on a cotton fabric, which secures the smoothest touch to the skin. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(30, 'Peach Vibes Baby Silk Kantha Frock ', 'peach-vibes-baby-silk-kantha-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200056SF11194219/35_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200056SF11194219/35_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0200056SF11194219/35_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0200056SF11194219', NULL, 'The soothing red color seen in this frock is extracted from organically grown madder. Kanthastitch hasbeen used on allover dyed silk to give a slight touch of the Bengali traditions.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:43', NULL, '2023-03-22 03:14:43'),
(31, 'Blue eyed grass frock ', 'blue-eyed-grass-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K021041NKE1181918/11_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K021041NKE1181918/11_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K021041NKE1181918/11_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K021041NKE1181918', NULL, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(32, 'Freesia baby frock ', 'freesia-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0530002IJ12194619/36_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0530002IJ12194619/36_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0530002IJ12194619/36_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0530002IJ12194619', NULL, 'Monotone colors and stunning designs along with a comfortable fabric makes it a perfect wear for your child.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(33, 'Cosmo baby frock ', 'cosmo-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540001SF04193119/37_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540001SF04193119/37_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540001SF04193119/37_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540001SF04193119/37_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540001SF04193119/37_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0540001SF04193119', NULL, 'This dual color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.</span>\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(34, 'Mimosa baby frock ', 'mimosa-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540003SF07193119/39_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0540003SF07193119', NULL, 'This dual color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(35, 'Pansies baby frock', 'pansies-baby-frock', 3, 0, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/K0540004IJ07193119/40_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'K0540004IJ07193119', NULL, 'This color and vividly designed combination of dresses can be the best choice for your baby. No harmful colors and the smoothest touch to their skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(36, 'Space Yonder Cotton Panjabi ', 'space-yonder-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010164AR0817/42_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010164AR0817/42_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010164AR0817/42_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010164AR0817/42_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010164AR0817', NULL, 'Teal and Black coloured Cotton Panjabi dyed from Indigo, Myrabalan and Kashmi. A layer of rich detail has been added by Block-printed designs.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(37, 'Spinel Cotton Voil Panjabi ', 'spinel-cotton-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010275SMA08182218/43_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010275SMA08182218', NULL, 'The red shade on this block printed voil cotton Panjabi creates a festive look.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(38, 'Cadbury Cotton Panjabi ', 'cadbury-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010278RGE2182218/44_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010278RGE2182218/44_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010278RGE2182218/44_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010278RGE2182218/44_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010278RGE2182218', NULL, 'Catechu is the natural dye ingredient which is used on this brown cotton Panjabi. It has been furnished with a shibori plain dyed.\n\\n\n\\nAll Aranya products are handmade, using natural fibres and materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(39, 'Jolpaiguri Cotton Panjabi ', 'jolpaiguri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010289MA08181119/45_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010289MA08181119/45_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010289MA08181119/45_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010289MA08181119/45_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010289MA08181119/45_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010289MA08181119', NULL, 'Pomegranate &amp; Myrabalan are a few natural dye ingredients which were applied through wax resist &amp; plain dyed to achieve olive &amp; golden textures on this cotton Panjabi.\n\\n\n\\nAll Aranya products are handmade, using natural fibres and materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(40, 'Juan Mens Panjabi', 'juan-mens-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010295RG0718/46.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010295RG0718/46.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010295RG0718', NULL, 'The eye-catching brown seen in this panjabi is extracted from handpicked catechu. The elegant motifs are made using pipe tie dye on cotton fabric, providing the highest comfort.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(41, 'Cherubic Cotton Voil Slim Fit Panjabi ', 'cherubic-cotton-voil-slim-fit-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010316RGS1193018/47_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010316RGS1193018/47_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010316RGS1193018/47_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010316RGS1193018/47_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010316RGS1193018', NULL, 'The calming red color in this panjabi is extracted from organically grown madder, and the color is printed traditionally on cotton voil fabric, which ensures the utmost comfort in the scorching heat of summer.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(42, 'Twilight Eri Cotton Panjabi ', 'twilight-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010338IJE1191519/48_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010338IJE1191519/48_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010338IJE1191519/48_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010338IJE1191519/48_2.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010338IJE1191519', NULL, 'Wax printed design has been outlined on this Enri cotton Panjabi. Madder &amp; Myrabalan were used to flourish it\'s Red &amp; Gray Colors.\nEvery Aranya product is made from natural materials using craft techniques, Align with in a fair trade frame work.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(43, 'Teakwood Eri Cotton Panjabi ', 'teakwood-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010342FF04191819/49_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010342FF04191819', NULL, 'The natural woddem vibe is the individuallity of this panjabi which is created by natural dye and kantha stitch work.All Aranya products are handmade, using natural materials, within a fair trade framework. .', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(44, 'Nandan Eri Silk Kantha Panjabi ', 'nandan-eri-silk-kantha-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010343IJ05191819/50_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010343IJ05191819/50_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010343IJ05191819/50_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010343IJ05191819', NULL, 'The traditional way of dying Indigo and myrabalan is used to resemble the blue and gray color in this endi silk panjabi. Kantha stitch has been used on the placket to give a touch of elegance.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(45, 'Begonia Eri Cotton Panjabi ', 'begonia-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194719/51_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010344MA05194719', NULL, 'A balance of madder were used to bring out the Red colour . This Enri cotton panjabi was designed with plain dye technique to perish its natural outlook.\n\\n\n\\nUsing natural materials, Full hand-made Aranya\'s products are align within fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(46, 'Empyrean Cotton Panjabi ', 'empyrean-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194819/52_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194819/52_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010344MA05194819/52_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010344MA05194819', NULL, 'Pieces from nature, Catechu &amp; Khasmi were used to bring out the Brown &amp; Black colours on this pure Cotton Panjabi. Block print technique added an elegant outlook on its design.\nEvery Aranya product is made from natural materials using craft techniques, align within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(47, 'Alder Eri Cotton Panjabi ', 'alder-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010348FF06194819/53_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010348FF06194819/53_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010348FF06194819/53_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010348FF06194819/53_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010348FF06194819', NULL, 'Wax printed design has been outlined on this enri cotton Panjabi. Pomegranate &amp; Myrabalan were used to flourish it\'s olive Colors.\nEvery Aranya product is made from natural materials using craft techniques, Align with in a fair trade frame work.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(48, 'Sibyr Eri Silk Panjabi ', 'sibyr-eri-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010354SF07192719/54_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010354SF07192719/54_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010354SF07192719/54_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010354SF07192719/54_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010354SF07192719', NULL, 'Block printed authentic silk panjabi, that has been colored with sagupast for the dark shade. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.\n\\n', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(49, 'Comfy Eri Cotton Panjabi ', 'comfy-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010356SF07193219/55_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010356SF07193219/55_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010356SF07193219/55_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010356SF07193219/55_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010356SF07193219/55_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010356SF07193219', NULL, 'Catechu has been used to derive brown colour on this Endi Cotton Panjabi.TieDye technique was used to amplify it\'s bold design.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(50, 'Mellow Viscose Panjabi ', 'mellow-viscose-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010359IJS1203619/56_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010359IJS1203619/56_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010359IJS1203619/56_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010359IJS1203619/56_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010359IJS1203619/56_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010359IJS1203619', NULL, 'Classic viscose fabric Panjabi that has been blocked wax print for the exquisite designs and naturally dyed with myrobalan for the brilliant golden tones. All Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(51, 'Trucage Eri Cotton Panjabi', 'trucage-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010365SRS1204019/58_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010365SRS1204019/58_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010365SRS1204019/58_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010365SRS1204019/58_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010365SRS1204019', NULL, 'The magnificent black color in this Panjabi has been extracted from myrobalan. Plain dye cotton fabric with a dynamic touch of wax print on the placket. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:44', NULL, '2023-03-22 03:14:44'),
(52, 'Brown Fantasia  Eri Cotton Panjabi ', 'brown-fantasia-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010367IJS1203919/59_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010367IJS1203919/59_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010367IJS1203919/59_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010367IJS1203919/59_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010367IJS1203919', NULL, 'Pieces from nature, Catechu were used to bring out the Brown colours on this enri Cotton Panjabi. Plain dye technique added an elegant outlook on it\'s design.\nEvery Aranya product is made from natural materials using craft techniques, align within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(53, 'Aria Eri Cotton Panjabi ', 'aria-eri-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010383IJE1204419/60_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010383IJE1204419/60_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010383IJE1204419/60_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010383IJE1204419', NULL, 'This Panjabi gets its exclusive golden color from a mixture of colors given off by myrabalan. Karchupi has been applied on the neck with plain dye on eri cotton fabric. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(54, 'Rhodonite cotton panjabi ', 'rhodonite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010393RG02200820/61_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010393RG02200820/61_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010393RG02200820/61_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010393RG02200820/61_4.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010393RG02200820', NULL, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(55, 'Bornite cotton panjabi', 'bornite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010395RG02200720/62_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010395RG02200720', NULL, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(56, 'Aciano Cotton Panjabi ', 'aciano-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010396RG02200920/63_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010396RG02200920', NULL, 'The colorful intriacies of this panjabi stand out like no other. With black and blue colors contrasting with the yellow placket paired with cotton fabric, it is the perfect wear for any traditional occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(57, 'Sodalite voil panjabi ', 'sodalite-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010401RGS1203821/64_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010401RGS1203821/64_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010401RGS1203821/64_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010401RGS1203821/64_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010401RGS1203821', NULL, 'The hues of the blue &amp; grey represented by the enchanting blue color in this panjabi is extracted from natural ingredients. Wax print has been used on cotton material to produce the beautiful imprints that resemble very much to the clouds.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework. ', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(58, 'Kyanite cotton Voil panjabi ', 'kyanite-cotton-voil-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_4.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010429MCE32211122/65_3.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010429MCE32211122', NULL, 'The mysterious TEAL color in this panjabi is cultivated from the finest organic elements. Wax has been used to embed the gorgeous teal color on cotton panjabi.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(59, 'Ussingite cotton panjabi ', 'ussingite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010430NKE5220720/66_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010430NKE5220720', NULL, 'The match of monochrome cotton fabric and stunning motifs are sure to make heads turn. Wear this stunning panjabi to any event and you\'re bound to be the eye candy.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(60, 'Cuprite cotton panjabi ', 'cuprite-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010431NKE5224619/67_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010431NKE5224619', NULL, 'This mesmerizing panjabi is not only the perfect combination of color and designs, but the cotton fabric also makes it the most eligible choice for any occasion.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `description`, `status`, `is_discount`, `created_at`, `deleted_at`, `updated_at`) VALUES
(61, 'Almandine cotton panjabi ', 'almandine-cotton-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010433NKE5221022/68_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010433NKE5221022/68_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010433NKE5221022/68_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0010433NKE5221022/68_4.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0010433NKE5221022', NULL, 'This elegant cotton panjabi may be the perfect fit for any traditional occasion. Designs of white and brown are bound to make heads turn.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(62, 'Brown Rapture Silk Panjabi ', 'brown-rapture-silk-panjabi', 2, 13, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M001065MAS117/41_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M001065MAS117/41_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M001065MAS117/41_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M001065MAS117/41_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M001065MAS117', 'White,Manjit,Teal,Gray,Brown', 'Wax resistant dye on this Eri SIlk creates a layer of vivid designs on this Panjabi. Indigo and Myrabalan were used to bring out the Teal hue.\r\n\\n\r\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(63, 'Duman Eri Silk Fatua ', 'duman-eri-silk-fatua', 2, 16, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0020033NH09193519/69_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0020033NH09193519/69_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0020033NH09193519/69_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0020033NH09193519', NULL, 'The ravishing shade of golden in this silk fatua is extracted from handpicked myrabalan. The color is printed on endi silk to produce the gorgeous shades.\n\\n\n\\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(64, 'Bletilla Bomber Jacket', 'bletilla-bomber-jacket', 2, 18, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0170019SR08193419/70_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0170019SR08193419/70_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0170019SR08193419/70_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0170019SR08193419/70_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0170019SR08193419', NULL, 'Pomegranate &amp; Myrabalan has been used to derive olive colour on this bomber jacket. Wax print technique was used to amplify it\'s different looks.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(65, 'Lattice Cotton Vest ', 'lattice-cotton-vest', 2, 14, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0340001SR08193419/71_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0340001SR08193419/71_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0340001SR08193419/71_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0340001SR08193419', NULL, 'Wax printed design has been outlined on this pure Cotton vest, while naturally dyeing with khasmi has flourished it\'s black colour.\n\\n\n\\nUsing natural materials, full handmade Aranya\'s products are align within a fair trade framework.', 1, 0, '2023-03-22 03:14:45', NULL, '2023-03-22 03:14:45'),
(66, 'Brown Rebel T', 'brown-rebel-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920001NKE118/72_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920001NKE118', NULL, 'Aranya\'s Debut T-Shirt line consists off Brown Rebel T-Shirt dipped in natural Catechu to make this solid brown colour.\n\\n\n\\nAranya\'s \"Natural Tee\" products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(67, 'Blue Serge Cotton T', 'blue-serge-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920002NKE118/73_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920002NKE118/73_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920002NKE118/73_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920002NKE118', NULL, 'Blue Serge Cotton T-Shirt is part of Aranya\'s Exclusive \"Natural Tee\" collecction dyed in Indigo. Aarashi method, a Shibori technique was used on this pure cotton fabric to bring out the pattern.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(68, 'Aether Cotton T', 'aether-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920005NKE118/74_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920005NKE118/74_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920005NKE118/74_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920005NKE118/74_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920005NKE118', NULL, 'Dipped and Dyed in Indigo, the Aether Cotton T-Shirt is part of the newly launched \"Natural Tee\" collection. It comes in a cool blue hue.\n\\n\n\\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(69, 'Turquoise Cotton T', 'turquoise-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920009NH12194619/75_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920009NH12194619', NULL, 'The brown patterns on the blue backcloth are made with colors extracted from organic blessing. Block print has been used on knit cotton fabric thus highest comfort is secured.\nAll Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(70, 'Rhapsody knit cotton T', 'rhapsody-knit-cotton-t', 2, 15, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/M0920010NH12194519/76_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'M0920010NH12194519', NULL, 'Myrabalan has been used to derive golden colour on this knit cotton T-shirt. Wax print technique was used to amplify it\'s a bold design.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(71, 'Mandevilla Endi Cotton Saree', 'mandevilla-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041171RGE1180920/79_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041171RGE1180920/79_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041171RGE1180920/79_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041171RGE1180920', NULL, 'This red and black endi cotton saree dyed allover entirely with maddar colour and has printed all over the saree. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.This red and black endi cotton saree dyed allover entirely with maddar colour and has printed all over the saree. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(72, 'Golden Odyssey Eri Cotton Saree', 'golden-odyssey-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041315RG08183018/80_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041315RG08183018/80_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041315RG08183018/80_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041315RG08183018', NULL, 'Wax printed eri cotton saree that comes in shades of olive and golden derived from the natural pomegranate and myrabalan.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(73, 'Salvia Endi cotton saree', 'salvia-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041554IJ01203521/81_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041554IJ01203521/81_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041554IJ01203521', NULL, 'The natural dye of teal at paar and anchol, and beige body in the endi cotton saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework.The natural dye of teal at paar and anchol, and beige body in the endi cotton saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(74, 'Lupine Cotton Kota Saree', 'lupine-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041703BAS06220722/82_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041703BAS06220722', NULL, 'A cotton kota saree with a red and gray wax design with great bloom inspiration for a magnificent appearance. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(75, 'Eveline Cotton Saree', 'eveline-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041704SFS06220722/83_4.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041704SFS06220722', NULL, 'Simplicity, elegance and charmness of this saree understory. Pinkish vibe and the cotton texture create a different look. All Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(76, 'Senna Cotton kota Sare', 'senna-cotton-kota-sare', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041709BAS8220922/84_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041709BAS8220922', NULL, 'This Wax printed cotton saree was dyed using the natural ingredients to bring out the marvelous Red &amp; golden color of the product.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(77, 'Lilac eri cotton saree', 'lilac-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041741SF05222022/85_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041741SF05222022', NULL, 'cotton saree will be the perfect outfit choice in the scorching summer heat. The heavenly tones of white and blue help pose in great style too!\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(78, 'Azalea cotton saree', 'azalea-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041742BA05222022/86_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041742BA05222022', NULL, 'The light colors of this beautiful cotton saree will reflect away the heat of the sun very efficiently. Cotton fabric has been used to ensure utmost comfort.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(79, 'Sapphire cotton saree', 'sapphire-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041743BA05222022/87_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041743BA05222022/87_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041743BA05222022', NULL, 'cotton saree will be the perfect outfit choice in the scorching summer heat. The heavenly tones of white and blue help pose in great style too', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(80, 'Begonia Endi Cotton saree', 'begonia-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041748MCE25222122/88_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041748MCE25222122/88_1.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041748MCE25222122', NULL, 'The earthy tones of this eri cotton saree do the best work in making you truly feel beautiful, making it the perfect wear for all of your favorite occasions.</span>\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(81, 'Clematis cotton  saree', 'clematis-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041749BAE25222222/89_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041749BAE25222222/89_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041749BAE25222222/89_4.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041749BAE25222222', NULL, 'The contrasting shades of blue and orange in this saree make it the most elegant choice for any daytime occasion. Cotton fabric has been used to provide utmost comfort.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(82, 'Colasia cotton kota saree', 'colasia-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041750SFE25222122/90_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041750SFE25222122', NULL, 'The contrasting tones of this saree makes both the colors stand out beautifully. With dual designs and cotton kota fabric, it\'s an eye catcher as well as comfort wear.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(83, 'Verbena cotton saree', 'verbena-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041753MCE26222122/91_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041753MCE26222122/91_2.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041753MCE26222122', NULL, 'The blue and grey tones of this saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(84, 'Wisteria cotton saree', 'wisteria-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0041755SFE26222122/92_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0041755SFE26222122', NULL, 'The blue and black colors of this saree represent the perfect harmony of the clouds and the sky on a rainy day. Cotton fabric used in this saree makes it wearable all year round.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(85, 'Frankliana Alatamaha Balaka Silk Suits ', 'frankliana-alatamaha-balaka-silk-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050396RGE1181618/93_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0050396RGE1181618', NULL, 'The stunning shades of brown and beige in this stunning suit is extracted from hand-plucked catechu and raintree. Wax print is added on balaka silk to add the subtle touches of elegance. All Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(86, 'Leah Kantha Eri Silk Salwar ', 'leah-kantha-eri-silk-salwar', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050465FFE1191519/94_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050465FFE1191519/94_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050465FFE1191519/94_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0050465FFE1191519', NULL, 'A delicate mixture of cateshu and raintree expressing the color brown and beige in this kantha eri silk salwar.\n\\n\n\\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(87, 'Marigold eri silk suits ', 'marigold-eri-silk-suits', 1, 8, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0050474IJS1201919/95_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0050474IJS1201919', NULL, 'The stunning combination of white and gold is bound to make heads turn. Wear this eri silk suit to any traditional meet and you are guaranteed to be the eye candy.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(88, 'Mirabilis Cotton Tops ', 'mirabilis-cotton-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060061RG06182418/96_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060061RG06182418/96_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060061RG06182418/96_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060061RG06182418', NULL, 'The stunning shades of red in this top is extracted from handplucked madder. Block print is added on cotton voil to add the subtle touches of elegance. All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(89, 'Daffodil Eri Cotton Tops ', 'daffodil-eri-cotton-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060096AA06193419/97_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060096AA06193419', NULL, 'A balance of Catechu were used to bring out the brown colour . This Enri cotton Tops was designed with wax print technique to perish its natural outlook.\nUsing natural materials, Full hand-made Aranya\'s products are align within fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(90, 'Amaryllis  Lilen Women  Tops ', 'amaryllis-lilen-women-tops', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060107SR08190620/98_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060107SR08190620', NULL, 'Pink is the sober color which suits for all type festive. Wax print is to safe color that has been utilized to make the complicated subtleties on this gathering. The combination of this shirt is really classic.\nAll Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(91, 'Myrtle Silk Kurti ', 'myrtle-silk-kurti', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060111AA09193719/99_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060111AA09193719/99_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0060111AA09193719/99_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0060111AA09193719', NULL, 'This olive tone is a blend of natural color pomegranate and myrobalan in this asymetric tops. Wax print stripe and flower themes are used to draw out the modern fusion design. All Aranya products are hand-made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(92, 'Borage Cotton orna', 'borage-cotton-orna', 6, 33, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080370SME1182018/100_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080370SME1182018/100_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080370SME1182018/100_1.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0080370SME1182018', NULL, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The cotton fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(93, 'Scabiosa endi Cotton orna', 'scabiosa-endi-cotton-orna', 6, 33, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0080630NK04221822/101_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0080630NK04221822', NULL, 'The tricky teal on this orna is taken from handpicked natural dye, and the beautiful designs are made with wax print on endi cotton material.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(94, 'Briar Rose Top and Skirt', 'briar-rose-top-and-skirt', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110015RG1017/102_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110015RG1017/102_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110015RG1017/102_2.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0110015RG1017', NULL, 'The blue base of this orna is paired stunningly with cream and white colored designs. It can be worn with any colored tops or kamiz.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(95, 'Butea cotton skirt ', 'butea-cotton-skirt', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110025FF12184318/103_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0110025FF12184318/103_1.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0110025FF12184318', NULL, 'The heavenly tone in this skirt is taken from hand-plucked catechu and the perceptible motifs are made using wax print on cotton. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(96, 'Grizzle Bomber Jacket ', 'grizzle-bomber-jacket', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170018SR08193419/104_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170018SR08193419/104_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170018SR08193419/104_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0170018SR08193419', NULL, 'Pieces from nature, madder &amp; myrabalan were used to dye this Cotton bomber jacket with Red &amp; Gray colour. Wax print added an elegant outlook on it\'s design.\n\\n\n\\nAll Aranya\'s products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(97, 'Parsley Bomber Jacket ', 'parsley-bomber-jacket', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170020SR08193319/105_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170020SR08193319/105_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170020SR08193319/105_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170020SR08193319/105_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0170020SR08193319', NULL, 'Pieces from nature, madder &amp; myrabalan were used to dye this Cotton bomber jacket with Red &amp; Gray colour. Wax print added an elegant outlook on it\'s design.\nAll Aranya\'s products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:46', NULL, '2023-03-22 03:14:46'),
(98, 'Zenith Bomber Jacket ', 'zenith-bomber-jacket', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170031FF09193719/106_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170031FF09193719/106_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170031FF09193719/106_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0170031FF09193719/106_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0170031FF09193719', NULL, 'Madder has been used as dyeing materials to derive Red color on this khadi jacket. Anokhi print was used to get the elegant design.\n\\n\n\\nUsing natural materials, full-hand made Aranya\'s products are align with in fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(99, 'Azalea Cotton Kimono ', 'azalea-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180128NK06220720/107_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180128NK06220720', NULL, 'The soothing pink color in this gorgeous kaftan is taken from the best handpicked betelnuts. Wax print has been used on cotton material to creeate the detailed intricacies.All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(100, 'Alyssum Eri Cotton Kimono ', 'alyssum-eri-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180129NK07221020/108_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180129NK07221020', NULL, 'The beguiling shades of brown in this mesmerizing kimono are produced from natural element. Wax print has been used on eri cotton to produce the magnificent patterns.All Aranya products are hand made, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(101, 'Lberis Eri Cotton Kimono ', 'lberis-eri-cotton-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180130NK07221020/109_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180130NK07221020/109_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180130NK07221020/109_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180130NK07221020', NULL, 'The sensitive olive shade on this Eri cotton kimono comes from nature. eri cotton was utilized to upgrade the appearance with elite structure.All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(102, 'Hyssop silk kimono ', 'hyssop-silk-kimono', 1, 11, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0180131NK08224619/110_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0180131NK08224619', NULL, 'Mixing the two different combinations of color and wax print in this pure silk makes this kimono a variant look.All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(103, 'Brunnera linen kaftan ', 'brunnera-linen-kaftan', 1, 12, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0190088NK06220520/111_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0190088NK06220520', NULL, 'Mixing the two different combinations of color and wax print in this pure silk makes this kimono a variant look.\nAll Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(104, 'Kantha Voil Kurti ', 'kantha-voil-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210145MAE2183118/112_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210145MAE2183118/112_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210145MAE2183118/112_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210145MAE2183118/112_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210145MAE2183118/112_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0210145MAE2183118', NULL, 'The captivating shades of blue and red in this ravishing Kurti are produced with colors given off by organically grown cmadder and indigo. The shibori has been used on the body on cotton material to add details. The nakshi kantha work added a traditional lookAll Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(105, 'Lantana Kurti ', 'lantana-kurti', 1, 9, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8019-copy.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8019-copy.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8026-copy.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0210194FF04191819/_ASP8023-copy.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0210194FF04191819', NULL, 'A balance of Madder was used to bring out the Red colour. This Enri silk Kurti was designed with wax print technique to perish its natural outlook.\nUsing natural materials, Full hand-made Aranya\'s products are aligned within fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(106, 'Silk shirred blouse', 'silk-shirred-blouse', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-175.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-175.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-176.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-177.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0300133SF04221822/Aranya-_01-06-22_-178.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0300133SF04221822', NULL, 'This maroon shirred blouse is an universal fit and can be worn with any saree of your choice. Silk fabric used also provides a smooth touch to the skin.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(107, 'Jovial Knit Cotton T', 'jovial-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920012NH12194619/W0920012NH12194619_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920012NH12194619', NULL, 'A mixture of Madder &amp; Catechu were used to bring out Red &amp; Brown colours on this Cotton T-shirt . Block print technique amplified it bold design.\nAll Aranya products are hand-made, using natural materials, align within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(108, 'Aether cotton t', 'aether-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920013NH12194519/W0920013NH12194519_3.png', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920013NH12194519', NULL, 'A mixture of Madder &amp; Catechu were used to bring out Red &amp; Brown colours on this Cotton T-shirt . Block print technique amplified it bold design.\nAll Aranya products are hand-made, using natural materials, align within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(109, 'Delphinium Knit Cotton T', 'delphinium-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920014NH12194619/W0920014NH12194619_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920014NH12194619', NULL, 'Aranya\'s \"Natural Tee\" collection reveals the Delphinium Knit Cotton T-Shirt, a pure olive cotton T-Shirt created by using a wax technique.</span>\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(110, 'Celestial knit cotton T', 'celestial-knit-cotton-t', 1, 10, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W0920015NH12194619/W0920015NH12194619_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W0920015NH12194619', NULL, 'Brown shades on this knit cotton T-shirt has derived from Catechu . The intricate details has been outlined with plain dye technique.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(111, 'Redmix Knit Cotton Leggings ', 'redmix-knit-cotton-leggings', 6, 35, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/W1080001NH10194019/W1080001NH10194019_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'W1080001NH10194019', NULL, 'Indigo has been used as dyeing materials which is derive to blue color on this knit cotton Leggings. Plain dye was used to get the elegant design.\n\\n\n\\nUsing natural materials, full-hand made Aranya\'s products are align with in fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(112, 'Irises creap silk orna', 'irises-creap-silk-orna', 6, 34, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WO002NK31R22INH3122/WO002NK31R22INH3122_3.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WO002NK31R22INH3122', NULL, 'The subtle tones in this orna would pair amazingly with a contrasting dark colored dress. The creap silk fabric provides comfort from the scorching heat.\nAll Aaranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(113, 'Spirea Cotton kota saree', 'spirea-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS018SF31R22INH3222/WS018SF31R22INH3222_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS018SF31R22INH3222', NULL, 'This cotton kota saree which is dyed in olive and blue. This saree can use as regular wear and make one more alluring. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(114, 'Alyssum endi cotton saree', 'alyssum-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS021BA33R22INH3322/WS021BA33R22INH3322_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS021BA33R22INH3322', NULL, 'A blend of modern workmanship, traditional block print and natural color madder as red and indigo as blue used in this eri cotton saree draw out the solace and style. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(115, 'Brunnera Cotton Than Saree', 'brunnera-cotton-than-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS022BA33R22INH3322/WS022BA33R22INH3322_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS022BA33R22INH3322', NULL, 'By combining the natural dyes found in gray and blue paar for use in cotton saree. To give this composition a festive appearance, wax decoration print has been used. All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(116, 'Sweet Pea Endi Half Silk Saree', 'sweet-pea-endi-half-silk-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS023SF33R22INH3322/WS023SF33R22INH3322_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS023SF33R22INH3322', NULL, 'Blue and Gray have been used as dyeing materials on this eri half silk saree. Wax print and Kantha stitch was used to get the elegant design. All Aranya products are handmade, using natural fibers and materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(117, 'Yarrow Cotton Saree', 'yarrow-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS024BA33R22INH3322/WS024BA33R22INH3322_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS024BA33R22INH3322', NULL, 'With an inspiration of a olive shade, this wax ornamentation print has been applied to give this composition a festive look.All Aranya products are handmade, using natural fibers and materials within a fair-trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47');
INSERT INTO `products` (`id`, `product_name`, `slug`, `category_id`, `sub_category_id`, `vat_tax_id`, `lead_time`, `product_image`, `image_one`, `image_two`, `image_three`, `image_four`, `image_five`, `length`, `height`, `width`, `unit`, `country_of_origin`, `weight`, `design_code`, `flat_colour`, `description`, `status`, `is_discount`, `created_at`, `deleted_at`, `updated_at`) VALUES
(118, 'Starling Endi Cotton Saree', 'starling-endi-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS025MC33R22INH3422/WS025MC33R22INH3422_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS025MC33R22INH3422', NULL, 'The Flower tones of this eri cotton saree do the best work in making you truly feel beautiful, making it the perfect wear for all of your favorite occasions.\nAll Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(119, 'Dendrobium Eri Cotton Saree', 'dendrobium-eri-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS026SF33R22INH3422/WS026SF33R22INH3422_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS026SF33R22INH3422', NULL, 'The pink color affects the mind and body by causing pleasant feelings. This eri cotton saree is decorated with wax. All Aranya products are handmade, using natural fibers and materials within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(120, 'Clematis Cotton kota Saree', 'clematis-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS027SF33R22INH3422/WS027SF33R22INH3422_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS027SF33R22INH3422', 'White,Manjit,Teal,Gray,Brown,Green,Red', 'This exclusive wax printed natural dyed saree is contains two shades of Navy colour. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(121, 'Blosoom Cotton Kota saree', 'blosoom-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS028MC33R22INH3422/WS028MC33R22INH3422_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS028MC33R22INH3422', NULL, 'This exclusive wax printed cotton kota saree dyed in brown and olive. Making it the perfect wear for all of your favorite occasions. All Aranya products are handmade, using natural materials, within a fair trade framework', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(122, 'Dazzling Cotton Kota Saree', 'dazzling-cotton-kota-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS030BA34R22INH3522/WS030BA34R22INH3522_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS030BA34R22INH3522', NULL, 'Both hues show out brilliantly in this saree because to the contrasting tones. It is a comfortable fabric with dual designs and cotton kota fabric. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(123, 'Crimson Cotton Than Saree', 'crimson-cotton-than-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS033SF35R22INH3622/WS033SF35R22INH3622_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS033SF35R22INH3622', NULL, 'Beautiful imprints were created on cotton using the wax. Natural elements are used to create the stunning teal, blue and red colors. All Aranya products are handmade, using natural materials, within a fair trade framework.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(124, 'Anemone Cotton Saree', 'anemone-cotton-saree', 1, 7, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_1.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_2.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_3.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/WS32TA35R22INH3622/WS32TA35R22INH3622_4.png', '', NULL, NULL, NULL, NULL, NULL, NULL, 'WS32TA35R22INH3622', NULL, 'By unifying the natural dye of Blue at paar and anchol, and teal body in the cotton than saree. Wax ornamentation print has been applied to give this composition a festive look. All Aranya products are handmade, using natural materials, within a fair trade framework. ', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(125, 'Tribal Flare Choker', 'tribal-flare-choker', 6, 32, 1, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/J0400004MA1116/web.png', 'https://res.cloudinary.com/diyc1dizi/image/upload/aranya-product-v2/J0400004MA1116/web.png', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'J0400004MA1116', NULL, 'Sterling silver coins have been attached to this choker that has been woven delicately with Terracotta, Rudrakha and wooden beads. The colours are relfections of natural dyes of Indigo and Madder.', 1, 0, '2023-03-22 03:14:47', NULL, '2023-03-22 03:14:47'),
(126, 'Macbook Pro', 'macbook-pro', 6, 28, 2, NULL, 'https://res.cloudinary.com/diyc1dizi/image/upload/v1683708568/aranya/338334282_1308641929686659_5561078571324706171_n.jpg', 'https://res.cloudinary.com/diyc1dizi/image/upload/v1683708568/aranya/338334282_1308641929686659_5561078571324706171_n.jpg', NULL, NULL, NULL, NULL, '19', '14', '13', 'cm', 'Bangladeshi', '500 gm', 'CS234354DW5', 'Off-White,White', '<p><span style=\"color: rgb(5, 5, 5);\">My father told me that it was better to learn to control the ball barefoot in order to have sensitivity in my feet, and I promised him that I would control that ball like no other, but what really happened was that he didn\'t have the money to buy me a pair of shoes. When I won my first Ballon d\'Or, I didn\'t cry for joy, I cried because I didn\'t have my father alive.</span></p>', 1, 0, '2023-05-10 03:09:37', NULL, '2023-05-10 03:09:37');

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
(1, 1, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 6, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 7, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 8, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 9, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 10, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 11, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 12, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 13, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 14, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(15, 15, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(16, 16, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(17, 17, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 18, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 19, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 20, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 21, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 22, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 23, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 24, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 25, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 26, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 27, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 28, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 29, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 30, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(31, 31, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(32, 32, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(33, 33, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(34, 34, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(35, 35, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(36, 36, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(37, 37, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(38, 38, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 39, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 40, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 41, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 42, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 43, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 44, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 45, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 46, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 47, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 48, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 49, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 50, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(51, 51, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(52, 52, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(53, 53, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(54, 54, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(55, 55, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(56, 56, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(57, 57, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(58, 58, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(59, 59, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(60, 60, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(61, 61, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(62, 62, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(63, 63, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(64, 64, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(65, 65, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(66, 66, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(67, 67, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(68, 68, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(69, 69, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(70, 70, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(71, 71, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(72, 72, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(73, 73, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(74, 74, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(75, 75, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(76, 76, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(77, 77, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(78, 78, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(79, 79, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(80, 80, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(81, 81, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(82, 82, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(83, 83, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(84, 84, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(85, 85, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(86, 86, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(87, 87, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(88, 88, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(89, 89, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(90, 90, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(91, 91, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(92, 92, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(93, 93, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(94, 94, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(95, 95, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(96, 96, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(97, 97, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(98, 98, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(99, 99, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(100, 100, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(101, 101, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(102, 102, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(103, 103, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(104, 104, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(105, 105, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(106, 106, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(107, 107, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(108, 108, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(109, 109, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(110, 110, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(111, 111, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(112, 112, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(113, 113, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(114, 114, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(115, 115, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(116, 116, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(117, 117, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(118, 118, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(119, 119, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(120, 120, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(121, 121, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(122, 122, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(123, 123, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(124, 124, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(125, 125, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(126, 126, 1, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 126, 2, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 1, '2023-03-22 03:14:41', '2023-03-22 03:14:41'),
(2, 2, 20, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 13, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 5, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 2, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 5, 20, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 6, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 7, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 7, 12, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 8, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 9, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 10, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 11, 14, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 12, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(15, 13, 5, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(16, 13, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(17, 14, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 15, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 16, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 16, 14, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 17, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 17, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 18, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 19, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 20, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 20, 20, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 21, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 21, 20, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 22, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 23, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(31, 24, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(32, 25, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(33, 26, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(34, 27, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(35, 28, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(36, 29, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(37, 30, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(38, 31, 9, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 32, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 33, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 34, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 36, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 36, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 37, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 38, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 39, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 39, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 40, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 41, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 42, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(51, 42, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(52, 43, 9, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(53, 43, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(54, 44, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(55, 44, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(56, 45, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(57, 46, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(58, 46, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(59, 47, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(60, 48, 9, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(61, 48, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(62, 49, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(63, 50, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(64, 51, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(65, 51, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(66, 52, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(67, 53, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(68, 54, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(69, 55, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(70, 55, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(71, 56, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(72, 56, 12, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(73, 57, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(74, 57, 12, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(75, 58, 14, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(76, 59, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(77, 60, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(78, 60, 16, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(79, 61, 12, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(80, 61, 16, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(81, 62, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(82, 63, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(83, 64, 13, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(84, 65, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(85, 66, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(86, 67, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(87, 68, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(88, 69, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(89, 69, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(90, 70, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(118, 85, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(119, 85, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(120, 86, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(121, 86, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(122, 87, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(123, 88, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(124, 89, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(125, 90, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(126, 91, 13, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(127, 92, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(128, 93, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(129, 94, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(130, 95, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(131, 96, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(132, 96, 12, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(133, 97, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(134, 98, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(135, 99, 5, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(136, 100, 11, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(137, 101, 13, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(138, 102, 14, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(139, 103, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(140, 104, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(141, 104, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(142, 106, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(143, 107, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(144, 108, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(145, 108, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(146, 109, 13, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(147, 110, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(148, 111, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(149, 111, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(150, 112, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47');

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
(1, 1, 5, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 6, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 7, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 8, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 9, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 10, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 11, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 12, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 13, 12, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 14, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(15, 15, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(16, 16, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(17, 17, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 18, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 19, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 20, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 21, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 22, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 23, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 24, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 25, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 26, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 27, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 28, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 29, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 30, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(31, 31, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(32, 32, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(33, 33, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(34, 34, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(35, 36, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(36, 37, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(37, 38, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(38, 39, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 40, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 41, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 42, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 43, 5, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 44, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 45, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 46, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 47, 5, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 48, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 49, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 50, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 51, 14, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(51, 52, 6, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(52, 53, 6, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(53, 54, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(54, 55, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(55, 56, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(56, 57, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(57, 58, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(58, 59, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(59, 60, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(60, 61, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(61, 62, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(62, 63, 9, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(63, 64, 14, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(64, 65, 14, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(65, 66, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(66, 67, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(67, 68, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(68, 69, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(69, 70, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(70, 71, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(71, 72, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(72, 73, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(73, 74, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(74, 75, 12, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(75, 76, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(76, 77, 12, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(77, 78, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(78, 79, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(79, 80, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(80, 81, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(81, 82, 12, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(82, 83, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(83, 84, 12, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(84, 85, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(85, 86, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(86, 87, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(87, 88, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(88, 89, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(89, 90, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(90, 91, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(91, 92, 13, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(92, 93, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(93, 94, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(94, 95, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(95, 96, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(96, 97, 14, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(97, 98, 5, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(98, 99, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(99, 100, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(100, 101, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(101, 102, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(102, 103, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(103, 104, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(104, 106, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(105, 107, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(106, 108, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(107, 109, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(108, 110, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(109, 111, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(110, 112, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(111, 113, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(112, 114, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(113, 115, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(114, 116, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(115, 117, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(116, 118, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(117, 119, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(118, 120, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(119, 121, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(120, 122, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(121, 123, 12, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(122, 124, 15, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(123, 125, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(124, 126, 10, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 13, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 2, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 6, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 7, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 8, 13, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 9, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 10, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 11, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 12, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 13, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 14, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(15, 15, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(16, 16, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(17, 17, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 18, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 19, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 20, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 21, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 23, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 24, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 25, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 26, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 27, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 28, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 29, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 30, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 31, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(31, 32, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(32, 33, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(33, 33, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(34, 34, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(35, 36, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(36, 37, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(37, 38, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(38, 39, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 40, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 41, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 42, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 43, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 44, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 45, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 46, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 47, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 48, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 49, 16, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 50, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 51, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(51, 52, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(52, 53, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(53, 54, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(54, 55, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(55, 56, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(56, 57, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(57, 58, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(58, 59, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(59, 60, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(60, 61, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(61, 62, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(62, 62, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(63, 63, 13, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(64, 64, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(65, 65, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(66, 66, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(67, 67, 12, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(68, 68, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(69, 69, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(70, 70, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(71, 71, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(72, 72, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(73, 73, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(74, 74, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(75, 75, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(76, 76, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(77, 77, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(78, 78, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(79, 79, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(80, 80, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(81, 80, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(82, 81, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(83, 82, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(84, 83, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(85, 84, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(86, 85, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(87, 86, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(88, 87, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(89, 88, 13, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(90, 89, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(91, 90, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(92, 91, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(93, 92, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(94, 93, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(95, 94, 13, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(96, 95, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(97, 96, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(98, 97, 16, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(99, 98, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(100, 99, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(101, 100, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(102, 101, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(103, 102, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(104, 103, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(105, 104, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(106, 106, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(107, 107, 16, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(108, 108, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(109, 109, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(110, 110, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(111, 111, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(112, 112, 16, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(113, 113, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(114, 114, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(115, 115, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(116, 116, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(117, 117, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(118, 118, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(119, 119, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(120, 120, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(121, 121, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(122, 122, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(123, 123, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(124, 124, 18, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(125, 125, 15, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(126, 126, 16, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 6, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 7, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 8, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 9, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 10, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 11, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 12, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 13, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 14, 23, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(15, 15, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(16, 16, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(17, 17, 23, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 18, 21, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 19, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 20, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 21, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 22, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 23, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 24, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 25, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 26, 5, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 27, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 28, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 29, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 30, 26, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(31, 31, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(32, 32, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(33, 33, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(34, 34, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(35, 36, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(36, 37, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(37, 38, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(38, 39, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 40, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 41, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 42, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 43, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 44, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 45, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 46, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 47, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 48, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 49, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 50, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 51, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(51, 52, 14, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(52, 53, 14, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(53, 54, 4, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(54, 55, 25, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(55, 56, 4, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(56, 57, 28, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(57, 58, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(58, 59, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(59, 60, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(60, 61, 4, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(61, 62, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(62, 63, 18, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(63, 64, 12, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(64, 65, 4, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(65, 66, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(66, 67, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(67, 68, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(68, 69, 22, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(69, 70, 22, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(70, 71, 17, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(71, 72, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(72, 73, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(73, 74, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(74, 75, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(75, 76, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(76, 77, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(77, 78, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(78, 79, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(79, 80, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(80, 81, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(81, 82, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(82, 83, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(83, 84, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(84, 85, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(85, 86, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(86, 87, 18, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(87, 88, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(88, 89, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(89, 90, 23, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(90, 91, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(91, 92, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(92, 93, 14, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(93, 94, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(94, 95, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(95, 96, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(96, 97, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(97, 98, 21, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(98, 99, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(99, 100, 20, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(100, 101, 20, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(101, 102, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(102, 103, 23, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(103, 104, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(104, 106, 25, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(105, 107, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(106, 108, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(107, 109, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(108, 110, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(109, 111, 22, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(110, 112, 11, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(111, 113, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(112, 114, 14, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(113, 115, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(114, 116, 16, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(115, 117, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(116, 118, 14, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(117, 119, 20, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(118, 120, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(119, 121, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(120, 122, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(121, 123, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(122, 124, 9, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(123, 125, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47');

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
(1, 41, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(2, 43, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(3, 46, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(4, 126, 1, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 4, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 3, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 4, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 5, 3, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 5, 12, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 6, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 7, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 7, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 8, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 9, 2, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 10, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 11, 3, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(15, 11, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(16, 12, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(17, 13, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(18, 13, 2, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(19, 14, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 15, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 16, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 16, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 16, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 17, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 17, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 18, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 19, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 20, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 20, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 21, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(31, 21, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(32, 23, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(33, 24, 2, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(34, 25, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(35, 26, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(36, 26, 10, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(37, 27, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(38, 28, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(39, 29, 3, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(40, 30, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(41, 31, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 32, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 32, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 33, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 34, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 36, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 36, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 36, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 37, 5, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 38, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(51, 39, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(52, 39, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(53, 40, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(54, 41, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(55, 42, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(56, 42, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(57, 43, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(58, 43, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(59, 44, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(60, 44, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(61, 45, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(62, 46, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(63, 46, 4, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(64, 47, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(65, 47, 10, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(66, 48, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(67, 48, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(68, 49, 2, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(69, 50, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(70, 51, 3, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(71, 51, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(72, 52, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(73, 53, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(74, 54, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(75, 55, 3, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(76, 55, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(77, 56, 3, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(78, 56, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(79, 57, 3, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(80, 57, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(81, 58, 3, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(82, 58, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(83, 59, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(84, 60, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(85, 60, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(86, 61, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(87, 61, 11, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(88, 62, 2, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(89, 63, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(90, 64, 7, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(91, 64, 10, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(92, 66, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(93, 67, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(94, 68, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(95, 69, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(96, 69, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(97, 70, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(98, 71, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(99, 71, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(100, 72, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(101, 72, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(102, 73, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(103, 73, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(104, 73, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(105, 74, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(106, 74, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(107, 75, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(108, 75, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(109, 76, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(110, 76, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(111, 76, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(112, 77, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(113, 77, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(114, 78, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(115, 79, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(116, 80, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(117, 80, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(118, 80, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(119, 81, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(120, 81, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(121, 81, 11, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(122, 82, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(123, 82, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(124, 82, 9, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(125, 83, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(126, 83, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(127, 83, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(128, 84, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(129, 84, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(130, 84, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(131, 85, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(132, 85, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(133, 86, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(134, 86, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(135, 87, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(136, 88, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(137, 89, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(138, 90, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(139, 91, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(140, 91, 10, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(141, 92, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(142, 93, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(143, 93, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(144, 94, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(145, 95, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(146, 96, 6, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(147, 96, 7, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(148, 97, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(149, 98, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(150, 99, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(151, 100, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(152, 101, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(153, 101, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(154, 102, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(155, 102, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(156, 103, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(157, 104, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(158, 104, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(159, 106, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(160, 107, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(161, 108, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(162, 108, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(163, 109, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(164, 109, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(165, 110, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(166, 111, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(167, 111, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(168, 112, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(169, 113, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(170, 113, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(171, 113, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(172, 114, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(173, 114, 6, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(174, 115, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(175, 115, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(176, 116, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(177, 116, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(178, 117, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(179, 117, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(180, 118, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(181, 119, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(182, 119, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(183, 120, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(184, 120, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(185, 121, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(186, 121, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(187, 121, 10, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(188, 122, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(189, 122, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(190, 123, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(191, 123, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(192, 123, 11, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(193, 124, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(194, 124, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(195, 126, 11, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 13, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 14, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(3, 85, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(4, 86, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(5, 87, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(6, 126, 1, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 13, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 6, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 7, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 8, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 9, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 10, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 11, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 12, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 13, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 14, 4, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(15, 18, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(16, 19, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(17, 20, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 21, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 22, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 23, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 24, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 25, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 26, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 27, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 28, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 29, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 30, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 31, 3, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(29, 36, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(30, 38, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(31, 39, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(32, 40, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(33, 41, 12, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(34, 42, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(35, 44, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(36, 45, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(37, 46, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(38, 47, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 48, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 49, 8, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 50, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 51, 13, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(43, 52, 13, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(44, 53, 4, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(45, 62, 9, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(46, 63, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(47, 64, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(48, 65, 8, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(49, 66, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(50, 67, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(51, 68, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(52, 69, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(53, 70, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(54, 72, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(55, 85, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(56, 86, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(57, 87, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(58, 88, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(59, 89, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(60, 91, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(61, 92, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(62, 94, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(63, 95, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(64, 96, 8, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(65, 97, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(66, 98, 7, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(67, 107, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(68, 108, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(69, 109, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(70, 110, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(71, 111, 8, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(72, 126, 11, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 9, '2023-03-22 03:14:41', '2023-03-22 03:14:41'),
(2, 1, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 1, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 1, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 1, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 1, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 1, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 2, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 2, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 2, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 2, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 2, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 2, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 2, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(15, 3, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(16, 3, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(17, 3, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(18, 3, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(19, 3, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(20, 3, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(21, 3, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(22, 4, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(23, 4, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(24, 4, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(25, 4, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(26, 4, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(27, 4, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(28, 4, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(29, 5, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(30, 5, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(31, 5, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(32, 5, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(33, 5, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(34, 5, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(35, 5, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(36, 6, 6, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(37, 6, 13, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(38, 6, 14, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(39, 6, 15, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(40, 7, 8, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(41, 7, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(42, 7, 12, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(43, 8, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(44, 8, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(45, 9, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(46, 9, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(47, 9, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(48, 9, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(49, 9, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(50, 9, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(51, 9, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(52, 10, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(53, 10, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(54, 10, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(55, 10, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(56, 10, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(57, 10, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(58, 10, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(59, 11, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(60, 11, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(61, 11, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(62, 11, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(63, 11, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(64, 11, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(65, 11, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(66, 12, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(67, 12, 16, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(68, 12, 17, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(69, 12, 18, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(70, 12, 7, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(71, 12, 9, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(72, 12, 10, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(73, 13, 11, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(74, 13, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(75, 13, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(76, 13, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(77, 13, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(78, 13, 9, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(79, 14, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(80, 14, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(81, 14, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(82, 14, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(83, 14, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(84, 14, 9, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(85, 15, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(86, 15, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(87, 15, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(88, 15, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(89, 16, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(90, 16, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(91, 16, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(92, 16, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(93, 16, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(94, 16, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(95, 16, 9, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(96, 17, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(97, 17, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(98, 17, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(99, 17, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(100, 17, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(101, 17, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(102, 17, 7, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(103, 17, 9, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(104, 18, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(105, 18, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(106, 18, 14, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(107, 18, 15, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(108, 19, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(109, 19, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(110, 19, 14, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(111, 19, 15, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(112, 19, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(113, 19, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(114, 20, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(115, 20, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(116, 20, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(117, 20, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(118, 20, 14, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(119, 20, 15, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(120, 20, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(121, 21, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(122, 21, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(123, 21, 14, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(124, 21, 15, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(125, 22, 6, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(126, 22, 13, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(127, 22, 14, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(128, 23, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(129, 23, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(130, 23, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(131, 23, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(132, 24, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(133, 24, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(134, 24, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(135, 24, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(136, 25, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(137, 25, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(138, 25, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(139, 25, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(140, 25, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(141, 26, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(142, 26, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(143, 26, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(144, 26, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(145, 26, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(146, 27, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(147, 27, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(148, 28, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(149, 28, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(150, 29, 16, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(151, 29, 17, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(152, 29, 18, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(153, 30, 8, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(154, 30, 11, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(155, 30, 12, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(156, 30, 16, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(157, 30, 17, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(158, 30, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(159, 31, 11, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(160, 31, 16, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(161, 31, 17, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(162, 31, 18, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(163, 31, 7, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(164, 31, 9, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(165, 32, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(166, 32, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(167, 32, 14, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(168, 32, 15, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(169, 33, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(170, 33, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(171, 34, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(172, 34, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(173, 35, 13, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(174, 35, 6, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(175, 36, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(176, 36, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(177, 36, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(178, 36, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(179, 36, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(180, 37, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(181, 37, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(182, 37, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(183, 37, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(184, 37, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(185, 38, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(186, 38, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(187, 38, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(188, 38, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(189, 38, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(190, 39, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(191, 39, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(192, 39, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(193, 39, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(194, 39, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(195, 40, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(196, 40, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(197, 40, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(198, 40, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(199, 40, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(200, 41, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(201, 41, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(202, 41, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(203, 41, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(204, 41, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(205, 42, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(206, 42, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(207, 42, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(208, 42, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(209, 42, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(210, 43, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(211, 43, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(212, 43, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(213, 43, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(214, 43, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(215, 44, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(216, 44, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(217, 44, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(218, 44, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(219, 44, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(220, 45, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(221, 45, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(222, 45, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(223, 45, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(224, 45, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(225, 46, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(226, 46, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(227, 46, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(228, 46, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(229, 46, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(230, 47, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(231, 47, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(232, 47, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(233, 47, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(234, 47, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(235, 48, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(236, 48, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(237, 48, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(238, 48, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(239, 48, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(240, 49, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(241, 49, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(242, 49, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(243, 49, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(244, 49, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(245, 50, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(246, 50, 20, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(247, 50, 21, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(248, 50, 22, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(249, 50, 23, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(250, 51, 19, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(251, 51, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(252, 51, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(253, 51, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(254, 51, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(255, 52, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(256, 52, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(257, 52, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(258, 52, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(259, 52, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(260, 53, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(261, 53, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(262, 53, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(263, 53, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(264, 53, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(265, 54, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(266, 54, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(267, 54, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(268, 54, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(269, 54, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(270, 55, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(271, 55, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(272, 55, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(273, 55, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(274, 55, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(275, 56, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(276, 56, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(277, 56, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(278, 56, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(279, 56, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(280, 57, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(281, 57, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(282, 57, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(283, 57, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(284, 57, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(285, 58, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(286, 58, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(287, 58, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(288, 58, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(289, 58, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(290, 59, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(291, 59, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(292, 59, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(293, 59, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(294, 59, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(295, 60, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(296, 60, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(297, 60, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(298, 60, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(299, 60, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(300, 61, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(301, 61, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(302, 61, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(303, 61, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(304, 61, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(305, 62, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(306, 62, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(307, 62, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(308, 62, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(309, 62, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(310, 63, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(311, 63, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(312, 63, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(313, 63, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(314, 63, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(315, 64, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(316, 64, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(317, 64, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(318, 64, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(319, 64, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(320, 65, 19, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(321, 65, 20, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(322, 65, 21, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(323, 65, 22, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(324, 65, 23, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(325, 66, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(326, 66, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(327, 66, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(328, 66, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(329, 67, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(330, 67, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(331, 67, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(332, 67, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(333, 68, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(334, 68, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(335, 68, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(336, 68, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(337, 69, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(338, 69, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(339, 69, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(340, 69, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(341, 70, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(342, 70, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(343, 70, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(344, 70, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(345, 85, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(346, 85, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(347, 85, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(348, 85, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(349, 85, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(350, 86, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(351, 86, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(352, 86, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(353, 86, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(354, 86, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(355, 87, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(356, 87, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(357, 87, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(358, 87, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(359, 87, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(360, 88, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(361, 88, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(362, 88, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(363, 88, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(364, 88, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(365, 89, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(366, 89, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(367, 89, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(368, 89, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(369, 89, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(370, 90, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(371, 90, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(372, 90, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(373, 90, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(374, 90, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(375, 91, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(376, 91, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(377, 91, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(378, 91, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(379, 91, 5, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(380, 94, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(381, 94, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(382, 95, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(383, 95, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(384, 95, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(385, 96, 2, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(386, 96, 3, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(387, 96, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(388, 96, 4, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(389, 97, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(390, 97, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(391, 97, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(392, 97, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(393, 98, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(394, 98, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(395, 98, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(396, 98, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(397, 99, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(398, 99, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(399, 100, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(400, 100, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(401, 101, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(402, 101, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(403, 102, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(404, 102, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(405, 103, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(406, 103, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(407, 104, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(408, 104, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(409, 104, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(410, 104, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(411, 104, 5, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(412, 106, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(413, 106, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(414, 106, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(415, 107, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(416, 107, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(417, 107, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(418, 107, 5, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(419, 108, 5, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(420, 108, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(421, 108, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(422, 108, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(423, 108, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(424, 109, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(425, 109, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(426, 109, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(427, 109, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(428, 110, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(429, 110, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(430, 110, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(431, 110, 4, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(432, 111, 3, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(433, 111, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(434, 111, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47');

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
(1, 13, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 14, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(3, 85, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(4, 86, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(5, 87, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(6, 126, 1, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 1, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(2, 2, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(3, 3, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(4, 4, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(5, 5, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(6, 6, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(7, 7, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(8, 8, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(9, 9, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(10, 10, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(11, 11, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(12, 12, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(13, 13, 1, '2023-03-22 03:14:42', '2023-03-22 03:14:42'),
(14, 14, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(15, 15, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(16, 16, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(17, 17, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(18, 18, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(19, 19, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(20, 20, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(21, 21, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(22, 22, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(23, 23, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(24, 24, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(25, 25, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(26, 26, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(27, 27, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(28, 28, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(29, 29, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(30, 30, 1, '2023-03-22 03:14:43', '2023-03-22 03:14:43'),
(31, 31, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(32, 32, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(33, 33, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(34, 34, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(35, 35, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(36, 36, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(37, 37, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(38, 38, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(39, 39, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(40, 40, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(41, 41, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(42, 42, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(43, 43, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(44, 44, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(45, 45, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(46, 46, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(47, 47, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(48, 48, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(49, 49, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(50, 50, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(51, 51, 1, '2023-03-22 03:14:44', '2023-03-22 03:14:44'),
(52, 52, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(53, 53, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(54, 54, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(55, 55, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(56, 56, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(57, 57, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(58, 58, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(59, 59, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(60, 60, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(61, 61, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(62, 62, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(63, 63, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(64, 64, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(65, 65, 1, '2023-03-22 03:14:45', '2023-03-22 03:14:45'),
(66, 66, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(67, 67, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(68, 68, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(69, 69, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(70, 70, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(71, 71, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(72, 72, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(73, 73, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(74, 74, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(75, 75, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(76, 76, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(77, 77, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(78, 78, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(79, 79, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(80, 80, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(81, 81, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(82, 82, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(83, 83, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(84, 84, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(85, 85, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(86, 86, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(87, 87, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(88, 88, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(89, 89, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(90, 90, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(91, 91, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(92, 92, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(93, 93, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(94, 94, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(95, 95, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(96, 96, 1, '2023-03-22 03:14:46', '2023-03-22 03:14:46'),
(97, 97, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(98, 98, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(99, 99, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(100, 100, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(101, 101, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(102, 102, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(103, 103, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(104, 104, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(105, 105, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(106, 106, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(107, 107, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(108, 108, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(109, 109, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(110, 110, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(111, 111, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(112, 112, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(113, 113, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(114, 114, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(115, 115, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(116, 116, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(117, 117, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(118, 118, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(119, 119, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(120, 120, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(121, 121, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(122, 122, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(123, 123, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(124, 124, 1, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(125, 125, 2, '2023-03-22 03:14:47', '2023-03-22 03:14:47'),
(126, 126, 2, '2023-05-10 03:09:37', '2023-05-10 03:09:37');

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
(1, 'Editor', 1, '2023-05-16 05:26:58', '2023-05-16 05:26:58'),
(2, 'Viewer', 1, '2023-05-16 05:31:06', '2023-05-16 05:31:06');

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
(1, 1, 2, '2023-05-16 05:26:58', '2023-05-16 05:26:58'),
(2, 1, 4, '2023-05-16 05:26:58', '2023-05-16 05:26:58'),
(3, 1, 5, '2023-05-16 05:26:58', '2023-05-16 05:26:58'),
(4, 1, 8, '2023-05-16 05:26:58', '2023-05-16 05:26:58'),
(5, 1, 10, '2023-05-16 05:26:58', '2023-05-16 05:26:58'),
(6, 2, 1, '2023-05-16 05:31:06', '2023-05-16 05:31:06'),
(7, 2, 4, '2023-05-16 05:31:06', '2023-05-16 05:31:06'),
(8, 2, 3, '2023-05-16 05:31:06', '2023-05-16 05:31:06'),
(9, 2, 7, '2023-05-16 05:31:06', '2023-05-16 05:31:06'),
(10, 2, 5, '2023-05-16 05:31:06', '2023-05-16 05:31:06'),
(11, 2, 8, '2023-05-16 05:31:06', '2023-05-16 05:31:06'),
(12, 2, 10, '2023-05-16 05:31:06', '2023-05-16 05:31:06');

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
(13, 'S120', 's120', NULL, 1, NULL, '2023-03-11 09:44:10', '2023-03-11 09:44:10');

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
(23, '46', '46', NULL, 1, NULL, '2023-03-11 08:58:59', '2023-03-11 08:58:59');

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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '0 for dissable the user',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Khandoker Shamimul Haque', 'admin@suparadmin.com', NULL, '$2y$10$M/2aU3V58Y3j0GqLNeJ78.KQvHJefgqXrLYoyP8AxmT.rsdK8JJMO', NULL, NULL, 1, NULL, NULL, '2023-04-05 07:42:46', '2023-04-05 07:42:46'),
(2, NULL, NULL, 'arif', 'admin@admin.com', NULL, '$2y$10$F75sF5zsyuZdZg/b7bCgluclWlRaB0Rmb23zn2O4jVBNAwLcLvQYK', NULL, NULL, 1, NULL, NULL, '2023-04-09 18:16:50', '2023-04-09 18:16:50'),
(3, NULL, NULL, 'Sumaiya', 'sumaiyamakshiba@gmail.com', NULL, '$2y$10$CR1M1AU6AjMS9B7oTVQDIutNk2Uf298i8bRclCggZuQz3XgZ1Jdmm', NULL, NULL, 1, NULL, NULL, '2023-04-10 07:20:21', '2023-04-10 07:20:21'),
(4, NULL, NULL, 'alamin', 'alamin@aranya.com.bd', NULL, '$2y$10$Bw5pZqSwNLBbjchXe2lJa.rBTzhyOFiU.CRvjFqoV.Xqf9rdqZ6Da', NULL, NULL, 1, NULL, NULL, '2023-05-03 09:30:40', '2023-05-03 09:30:40');

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

--
-- Dumping data for table `user_billing_infos`
--

INSERT INTO `user_billing_infos` (`id`, `user_id`, `order_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `street_address`, `created_at`, `updated_at`) VALUES
(1, 0, 267, 'Emma', 'Glass', 'Bangladesh', 'Voluptatem Deserunt', 'joridicefi@mailinator.com', '112972243053', 'Ut minus reiciendis', 'Culpa maiores offic', '2023-04-05 07:18:17', '2023-04-05 07:18:17'),
(2, 0, 268, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-05 07:39:38', '2023-04-05 07:39:38'),
(3, 1, 269, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-05 07:43:04', '2023-04-05 07:43:04'),
(4, 1, 270, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-05 07:51:19', '2023-04-05 07:51:19'),
(5, 1, 271, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-06 03:47:19', '2023-04-06 03:47:19'),
(6, 0, 272, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-06 05:36:20', '2023-04-06 05:36:20'),
(7, 1, 273, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-06 07:55:32', '2023-04-06 07:55:32'),
(8, 0, 274, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-06 07:57:03', '2023-04-06 07:57:03'),
(9, 1, 275, 'Pandora', 'Mcbride', 'Bangladesh', 'Dicta sunt et ut rep', 'vufoz@mailinator.com', '12354567', 'Culpa quidem est s', 'Dolore minima sunt q', '2023-04-06 08:14:24', '2023-04-06 08:14:24'),
(10, 1, 276, 'Britanney', 'Middleton', 'Bangladesh', 'Eum aut harum cupidi', 'xymikeka@mailinator.com', '+1 (541) 534-6817', 'Quibusdam ducimus d', 'Consequatur Est vol', '2023-04-06 08:18:33', '2023-04-06 08:18:33'),
(11, 1, 277, 'Jael', 'Cooley', 'Bangladesh', 'Nihil id mollit qui', 'bylezyva@mailinator.com', '+1 (632) 141-1671', 'Eligendi est qui qui', 'Quia dolor proident', '2023-04-06 08:20:15', '2023-04-06 08:20:15'),
(12, 0, 278, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-06 08:21:23', '2023-04-06 08:21:23'),
(13, 1, 279, 'Dacey', 'Foreman', 'Bangladesh', 'Suscipit omnis aliqu', 'wirokiqi@mailinator.com', '+1 (766) 998-2402', 'Praesentium qui nece', 'Aut temporibus solut', '2023-04-06 08:52:09', '2023-04-06 08:52:09'),
(14, 1, 280, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-06 09:54:53', '2023-04-06 09:54:53'),
(15, 2, 294, 'Nila', 'ahmed', 'Bangladesh', 'Dhaka', 'arifuzzaman.rb@gmail.com', '012548975698', '1207', '4A, 5g, Dhaka', '2023-04-09 18:48:00', '2023-04-09 18:48:00'),
(16, 1, 295, 'Brenden', 'Sandoval', 'Bangladesh', 'Ipsam ad vel cupidat', 'wilaca@mailinator.com', '+1 (643) 883-5555', 'Officiis tempor offi', 'Mollit et eos dolor', '2023-04-10 05:18:05', '2023-04-10 05:18:05'),
(17, 1, 296, 'Brenden', 'Sandoval', 'Bangladesh', 'Ipsam ad vel cupidat', 'wilaca@mailinator.com', '+1 (643) 883-5555', 'Officiis tempor offi', 'Mollit et eos dolor', '2023-04-10 05:18:07', '2023-04-10 05:18:07'),
(18, 1, 297, 'Brenden', 'Sandoval', 'Bangladesh', 'Ipsam ad vel cupidat', 'wilaca@mailinator.com', '+1 (643) 883-5555', 'Officiis tempor offi', 'Mollit et eos dolor', '2023-04-10 05:18:08', '2023-04-10 05:18:08'),
(19, 1, 298, 'Brenden', 'Sandoval', 'Bangladesh', 'Ipsam ad vel cupidat', 'wilaca@mailinator.com', '+1 (643) 883-5555', 'Officiis tempor offi', 'Mollit et eos dolor', '2023-04-10 05:18:09', '2023-04-10 05:18:09'),
(20, 1, 299, 'Brenden', 'Sandoval', 'Bangladesh', 'Ipsam ad vel cupidat', 'wilaca@mailinator.com', '+1 (643) 883-5555', 'Officiis tempor offi', 'Mollit et eos dolor', '2023-04-10 05:18:10', '2023-04-10 05:18:10'),
(21, 1, 300, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-10 05:24:19', '2023-04-10 05:24:19'),
(22, 0, 301, 'Len', 'Mejia', 'Bangladesh', 'Expedita et elit co', 'qixek@mailinator.com', '+1 (438) 145-6381', 'Voluptatem modi sun', 'Qui impedit velit q', '2023-04-10 05:25:29', '2023-04-10 05:25:29'),
(23, 0, 302, 'Len', 'Mejia', 'Bangladesh', 'Expedita et elit co', 'qixek@mailinator.com', '+1 (438) 145-6381', 'Voluptatem modi sun', 'Qui impedit velit q', '2023-04-10 05:25:32', '2023-04-10 05:25:32'),
(24, 0, 303, 'Shoshana', 'Hernandez', 'Bangladesh', 'Commodo et optio qu', 'lysohezyno@mailinator.com', '+1 (984) 899-8528', 'Deserunt perspiciati', 'Illum sed eaque eu', '2023-04-10 05:26:32', '2023-04-10 05:26:32'),
(25, 0, 304, 'Clementine', 'Howell', 'Bangladesh', 'Dolores consequatur', 'besepypivu@mailinator.com', '+1 (114) 403-1321', 'Quo Nam consequuntur', 'Qui enim duis sit do', '2023-04-10 05:27:34', '2023-04-10 05:27:34'),
(26, 0, 305, 'Clementine', 'Howell', 'Bangladesh', 'Dolores consequatur', 'besepypivu@mailinator.com', '+1 (114) 403-1321', 'Quo Nam consequuntur', 'Qui enim duis sit do', '2023-04-10 05:27:37', '2023-04-10 05:27:37'),
(27, 0, 306, 'Clementine', 'Howell', 'Bangladesh', 'Dolores consequatur', 'besepypivu@mailinator.com', '+1 (114) 403-1321', 'Quo Nam consequuntur', 'Qui enim duis sit do', '2023-04-10 05:27:38', '2023-04-10 05:27:38'),
(28, 1, 307, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-17 11:53:38', '2023-04-17 11:53:38'),
(29, 0, 337, 'Emma', 'Glass', 'Bangladesh', 'Voluptatem Deserunt', 'joridicefi@mailinator.com', '2972243053', 'Ut minus reiciendis', 'Culpa maiores offic', '2023-05-01 07:17:13', '2023-05-01 07:17:13'),
(30, 0, 338, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-01 08:57:53', '2023-05-01 08:57:53'),
(31, 0, 339, 'Amal', 'Wise', 'Bangladesh', 'Quia in ex expedita', 'fogecenixu@mailinator.com', '+1 (991) 162-1778', 'Sed omnis numquam et', 'Rem pariatur Qui ni', '2023-05-02 05:21:23', '2023-05-02 05:21:23'),
(32, 0, 340, 'Amal', 'Wise', 'Bangladesh', 'Quia in ex expedita', 'fogecenixu@mailinator.com', '+1 (991) 162-1778', 'Sed omnis numquam et', 'Rem pariatur Qui ni', '2023-05-02 05:21:27', '2023-05-02 05:21:27'),
(33, 0, 341, 'Amal', 'Wise', 'Bangladesh', 'Quia in ex expedita', 'fogecenixu@mailinator.com', '+1 (991) 162-1778', 'Sed omnis numquam et', 'Rem pariatur Qui ni', '2023-05-02 05:21:28', '2023-05-02 05:21:28'),
(34, 0, 342, 'Amal', 'Wise', 'Bangladesh', 'Quia in ex expedita', 'fogecenixu@mailinator.com', '+1 (991) 162-1778', 'Sed omnis numquam et', 'Rem pariatur Qui ni', '2023-05-02 05:21:28', '2023-05-02 05:21:28'),
(35, 0, 343, 'Amal', 'Wise', 'Bangladesh', 'Quia in ex expedita', 'fogecenixu@mailinator.com', '+1 (991) 162-1778', 'Sed omnis numquam et', 'Rem pariatur Qui ni', '2023-05-02 05:21:29', '2023-05-02 05:21:29'),
(36, 0, 344, 'Amal', 'Wise', 'Bangladesh', 'Quia in ex expedita', 'fogecenixu@mailinator.com', '+1 (991) 162-1778', 'Sed omnis numquam et', 'Rem pariatur Qui ni', '2023-05-02 05:21:29', '2023-05-02 05:21:29'),
(37, 0, 345, 'Aiko', 'Fields', 'Bangladesh', 'Ea laboriosam corpo', 'mowide@mailinator.com', '+1 (208) 913-8836', 'Excepteur dolore tem', 'Fugiat non occaecat', '2023-05-02 06:12:18', '2023-05-02 06:12:18'),
(38, 0, 346, 'Aiko', 'Fields', 'Bangladesh', 'Ea laboriosam corpo', 'mowide@mailinator.com', '+1 (208) 913-8836', 'Excepteur dolore tem', 'Fugiat non occaecat', '2023-05-02 06:12:20', '2023-05-02 06:12:20'),
(39, 0, 347, 'Aiko', 'Fields', 'Bangladesh', 'Ea laboriosam corpo', 'mowide@mailinator.com', '+1 (208) 913-8836', 'Excepteur dolore tem', 'Fugiat non occaecat', '2023-05-02 06:12:22', '2023-05-02 06:12:22'),
(40, 0, 348, 'Aiko', 'Fields', 'Bangladesh', 'Ea laboriosam corpo', 'mowide@mailinator.com', '+1 (208) 913-8836', 'Excepteur dolore tem', 'Fugiat non occaecat', '2023-05-02 06:12:23', '2023-05-02 06:12:23'),
(41, 0, 349, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:13:44', '2023-05-02 06:13:44'),
(42, 0, 350, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:19:27', '2023-05-02 06:19:27'),
(43, 0, 351, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:20:12', '2023-05-02 06:20:12'),
(44, 0, 352, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:38:45', '2023-05-02 06:38:45'),
(45, 0, 353, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:42:29', '2023-05-02 06:42:29'),
(46, 0, 354, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:44:01', '2023-05-02 06:44:01'),
(47, 0, 355, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:46:16', '2023-05-02 06:46:16'),
(48, 0, 356, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:47:03', '2023-05-02 06:47:03'),
(49, 0, 357, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:48:43', '2023-05-02 06:48:43'),
(50, 0, 358, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:49:52', '2023-05-02 06:49:52'),
(51, 0, 359, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:55:30', '2023-05-02 06:55:30'),
(52, 0, 360, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 06:58:20', '2023-05-02 06:58:20'),
(53, 0, 361, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 07:01:35', '2023-05-02 07:01:35'),
(54, 0, 362, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 07:02:54', '2023-05-02 07:02:54'),
(55, 0, 363, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-02 07:04:03', '2023-05-02 07:04:03'),
(56, 0, 364, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '01779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 09:27:01', '2023-05-03 09:27:01'),
(57, 0, 365, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:42:23', '2023-05-03 10:42:23'),
(58, 0, 366, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:43:14', '2023-05-03 10:43:14'),
(59, 0, 367, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:43:17', '2023-05-03 10:43:17'),
(60, 0, 368, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:43:28', '2023-05-03 10:43:28'),
(61, 0, 369, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:43:51', '2023-05-03 10:43:51'),
(62, 0, 370, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:44:59', '2023-05-03 10:44:59'),
(63, 0, 371, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:46:30', '2023-05-03 10:46:30'),
(64, 0, 372, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:48:18', '2023-05-03 10:48:18'),
(65, 0, 373, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-05-03 10:51:30', '2023-05-03 10:51:30');

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
-- Dumping data for table `user_shipping_infos`
--

INSERT INTO `user_shipping_infos` (`id`, `user_id`, `order_id`, `first_name`, `last_name`, `country`, `city`, `email`, `phone`, `post_code`, `street_address`, `created_at`, `updated_at`) VALUES
(1, 1, 269, 'Khandoker Shamimul', 'Haque', 'Bangladesh', 'Dhaka', 'khandokershamimulhaque@gmail.com', '+8801779312970', '1205', 'Dhaka, Bangladesh.', '2023-04-05 07:43:04', '2023-04-05 07:43:04');

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
(1, '3 Pcs', '3-pcs', NULL, 1, NULL, '2023-03-07 04:58:05', '2023-03-11 09:44:50');

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
(2, 'Local Tax', 5, 1, NULL, '2023-04-18 07:02:03', '2023-04-18 07:02:03');

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
(2, 'B. Crafts', 'b-crafts', NULL, 1, NULL, '2023-03-07 04:55:42', '2023-03-11 09:17:35');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `category_fabric`
--
ALTER TABLE `category_fabric`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `consignments`
--
ALTER TABLE `consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `designers`
--
ALTER TABLE `designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `embellishments`
--
ALTER TABLE `embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fits`
--
ALTER TABLE `fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;

--
-- AUTO_INCREMENT for table `makings`
--
ALTER TABLE `makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `product_artists`
--
ALTER TABLE `product_artists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_brands`
--
ALTER TABLE `product_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `product_cares`
--
ALTER TABLE `product_cares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_colours`
--
ALTER TABLE `product_colours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `product_consignments`
--
ALTER TABLE `product_consignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_designers`
--
ALTER TABLE `product_designers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `product_embellishments`
--
ALTER TABLE `product_embellishments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `product_fabrics`
--
ALTER TABLE `product_fabrics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product_fits`
--
ALTER TABLE `product_fits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `product_makings`
--
ALTER TABLE `product_makings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_seasons`
--
ALTER TABLE `product_seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_varieties`
--
ALTER TABLE `product_varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_vendors`
--
ALTER TABLE `product_vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `refund_configure`
--
ALTER TABLE `refund_configure`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_billing_infos`
--
ALTER TABLE `user_billing_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user_shipping_infos`
--
ALTER TABLE `user_shipping_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `varieties`
--
ALTER TABLE `varieties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vat_taxes`
--
ALTER TABLE `vat_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;