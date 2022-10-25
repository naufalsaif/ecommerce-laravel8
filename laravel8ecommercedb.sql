-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Okt 2022 pada 06.47
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommercedb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 3, 'red', 30, '2022-10-17 07:29:58', '2022-10-17 07:29:58'),
(7, 3, ' blue', 30, '2022-10-17 07:29:58', '2022-10-17 07:29:58'),
(8, 4, '12', 30, '2022-10-17 07:29:58', '2022-10-17 07:29:58'),
(9, 4, ' 14', 30, '2022-10-17 07:29:58', '2022-10-17 07:29:58'),
(10, 4, ' 16', 30, '2022-10-17 07:29:58', '2022-10-17 07:29:58'),
(15, 3, 'green', 29, '2022-10-17 07:31:02', '2022-10-17 07:31:02'),
(16, 4, '155', 29, '2022-10-17 07:31:02', '2022-10-17 07:31:02'),
(17, 3, 'RED', 31, '2022-10-17 07:37:25', '2022-10-17 07:37:25'),
(18, 4, '12', 31, '2022-10-17 07:37:26', '2022-10-17 07:37:26'),
(27, 3, 'RED', 32, '2022-10-17 22:46:02', '2022-10-17 22:46:02'),
(28, 3, ' GREEN', 32, '2022-10-17 22:46:02', '2022-10-17 22:46:02'),
(29, 3, ' BLUE', 32, '2022-10-17 22:46:02', '2022-10-17 22:46:02'),
(30, 4, '12', 32, '2022-10-17 22:46:02', '2022-10-17 22:46:02'),
(31, 4, ' 13', 32, '2022-10-17 22:46:02', '2022-10-17 22:46:02'),
(32, 4, ' 14', 32, '2022-10-17 22:46:02', '2022-10-17 22:46:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'illo aut', 'illo-aut', '2022-07-22 06:43:24', '2022-07-22 06:43:24'),
(2, 'quasi voluptas', 'quasi-voluptas', '2022-07-22 06:43:24', '2022-07-22 06:43:24'),
(3, 'atque eum', 'atque-eum', '2022-07-22 06:43:24', '2022-07-22 06:43:24'),
(4, 'quia tenetur', 'quia-tenetur', '2022-07-22 06:43:24', '2022-07-22 06:43:24'),
(5, 'ea ad', 'ea-ad', '2022-07-22 06:43:24', '2022-07-22 06:43:24'),
(6, 'est qui', 'est-qui', '2022-07-22 06:43:24', '2022-07-22 06:43:24'),
(10, 'Electronics', 'electronics', '2022-09-12 21:44:02', '2022-09-14 03:19:11'),
(11, 'Appliances', 'appliances', '2022-09-13 00:14:07', '2022-09-14 03:19:41'),
(13, 'Shoes', 'shoes', '2022-09-14 03:20:07', '2022-09-14 03:20:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Naufal', 'naufal@gmail.com', '081281815151', 'Hello', '2022-09-08 21:01:41', '2022-09-08 21:01:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'OFF25', 'percent', '25.00', '1000.00', '2022-08-09 20:23:21', '2022-08-11 01:12:07', '2022-08-12'),
(3, 'OFF10', 'percent', '10.00', '1000.00', '2022-08-09 22:42:15', '2022-08-09 23:36:06', '2022-08-11'),
(4, 'OFF30', 'percent', '30.00', '1300.00', '2022-08-11 00:59:58', '2022-08-11 00:59:58', '2022-08-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,6', 8, '2022-08-03 03:23:25', '2022-08-02 21:58:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'First Slide Title', 'First Slide Subtitle', '120', 'http://127.0.0.1:8000/shop', '1658989501.jpg', 1, '2022-07-27 23:14:59', '2022-07-27 23:25:01'),
(4, 'Second Slide Title', 'Second Slide Subtitle', '260', 'http://127.0.0.1:8000/shop', '1658988926.jpg', 0, '2022-07-27 23:15:26', '2022-07-27 23:29:23'),
(5, 'Third Slide Title', 'Third Slide Subtitle', '100', 'http://127.0.0.1:8000/shop', '1658989557.jpg', 1, '2022-07-27 23:25:57', '2022-07-27 23:25:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_22_031724_create_sessions_table', 1),
(9, '2022_07_22_122540_create_categories_table', 2),
(10, '2022_07_22_122828_create_products_table', 2),
(11, '2022_07_28_011419_create_home_sliders_table', 3),
(12, '2022_08_03_031503_create_home_categories_table', 4),
(13, '2022_08_04_011402_create_sales_table', 5),
(14, '2022_08_10_022649_create_coupons_table', 6),
(15, '2022_08_11_072908_add_expiry_date_to_coupons_table', 7),
(16, '2022_08_13_094114_create_orders_table', 8),
(17, '2022_08_13_094617_create_order_items_table', 8),
(18, '2022_08_13_094644_create_shippings_table', 8),
(19, '2022_08_13_094713_create_transactions_table', 8),
(20, '2022_09_03_040035_add_delivered_canceled_date_to_orders_table', 9),
(21, '2022_09_08_030121_create_reviews_table', 10),
(22, '2022_09_08_031204_add_rstatus_to_order_items_table', 10),
(23, '2022_09_09_032101_create_contacts_table', 11),
(24, '2022_09_09_071329_create_settings_table', 12),
(25, '2022_09_13_035420_create_shoppingcart_table', 13),
(26, '2022_09_13_043123_create_subcategories_table', 14),
(27, '2022_09_14_102421_add_subcategory_id_to_products_table', 15),
(28, '2022_09_17_134318_create_profiles_table', 16),
(29, '2022_10_12_133451_create_product_attributes_table', 17),
(30, '2022_10_13_121553_create_attribute_values_table', 18),
(31, '2022_10_18_055101_add_options_to_order_items_table', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(1, 1, '263.00', '0.00', '55.23', '318.23', 'naufal', 'naufa', '12345678910', 'naufal@gmail.com', 'test 1', 'test2', 'dwadwa', 'hogg', 'jonngo', '43443', 'ordered', 1, '2022-08-16 01:48:16', '2022-08-16 01:48:16', NULL, NULL),
(2, 1, '352.00', '0.00', '73.92', '425.92', 'manoj', 'kumar', '3278392738', 'manoj@gmail.com', 'nit3', NULL, 'Faridabad', 'Haryana', 'India', '121001', 'ordered', 0, '2022-08-22 07:40:24', '2022-08-22 07:40:24', NULL, NULL),
(3, 1, '352.00', '0.00', '73.92', '425.92', 'manoj', 'kumar', '3278392738', 'manoj@gmail.com', 'nit3', NULL, 'Faridabad', 'Haryana', 'India', '121001', 'ordered', 0, '2022-08-22 07:40:35', '2022-08-22 07:40:35', NULL, NULL),
(4, 1, '352.00', '0.00', '73.92', '425.92', 'manoj', 'kumar', '3278392738', 'manoj@gmail.com', 'nit3', NULL, 'Faridabad', 'Haryana', 'India', '121001', 'ordered', 0, '2022-08-22 07:46:45', '2022-08-22 07:46:45', NULL, NULL),
(5, 1, '352.00', '0.00', '73.92', '425.92', 'manoj', 'kumar', '323232323232', 'noval@gmail.com', 'dwad', 'feafdwa', 'Faridabad', 'Haryana', 'India', '343223', 'ordered', 0, '2022-08-22 07:48:03', '2022-08-22 07:48:03', NULL, NULL),
(6, 1, '352.00', '0.00', '73.92', '425.92', 'manoj', 'kumar', '323232323232', 'noval@gmail.com', 'dwad', 'feafdwa', 'Faridabad', 'Haryana', 'India', '343223', 'ordered', 0, '2022-08-22 07:49:34', '2022-08-22 07:49:34', NULL, NULL),
(7, 1, '352.00', '0.00', '73.92', '425.92', 'manoj', 'kumar', '323232323232', 'noval@gmail.com', 'dwad', 'feafdwa', 'Faridabad', 'Haryana', 'India', '343223', 'ordered', 0, '2022-08-22 07:50:10', '2022-08-22 07:50:10', NULL, NULL),
(8, 1, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '32434343', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Haryana', 'India', '434234', 'ordered', 0, '2022-08-22 08:08:17', '2022-08-22 08:08:17', NULL, NULL),
(9, 1, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '32434343', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Haryana', 'India', '434234', 'ordered', 0, '2022-08-22 08:08:30', '2022-08-22 08:08:30', NULL, NULL),
(10, 1, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '32434343', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Haryana', 'India', '434234', 'ordered', 0, '2022-08-22 08:08:40', '2022-08-22 08:08:40', NULL, NULL),
(11, 1, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '32434343', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Haryana', 'India', '434234', 'ordered', 0, '2022-08-22 08:08:51', '2022-08-22 08:08:51', NULL, NULL),
(12, 1, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '32434343', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Haryana', 'India', '434234', 'canceled', 0, '2022-08-22 08:09:10', '2022-09-02 21:22:58', NULL, '2022-09-03'),
(13, 2, '657.00', '0.00', '137.97', '794.97', 'Naufal', 'Saif', '0855672677', 'naufalsaif@gmai.com', 'Bogor', 'Jawabarat', 'bogor', 'Jawa barat', 'Indonesia', '12892', 'delivered', 0, '2022-09-01 07:20:46', '2022-09-02 21:22:48', '2022-09-03', NULL),
(14, 2, '263.00', '0.00', '55.23', '318.23', 'manoj', 'kumar', '3232323232', 'noval@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '32323', 'canceled', 0, '2022-09-03 06:22:42', '2022-09-03 06:23:12', NULL, '2022-09-03'),
(15, 2, '89.00', '0.00', '18.69', '107.69', 'manoj', 'kumar', '43434343', 'noval@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '23232', 'canceled', 0, '2022-09-03 06:23:45', '2022-09-03 06:24:05', NULL, '2022-09-03'),
(16, 2, '263.00', '0.00', '55.23', '318.23', 'manoj', 'kumar', '323232', 'noval@gmail.com', 'dwad', 'dwa', 'Faridabad', '32dw', 'India', '3232', 'canceled', 0, '2022-09-03 06:25:33', '2022-09-03 06:26:24', NULL, '2022-09-03'),
(17, 2, '263.00', '0.00', '55.23', '318.23', 'manoj', 'kumar', '2323232', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Haryana', 'India', '3232', 'delivered', 0, '2022-09-07 21:59:13', '2022-09-07 21:59:58', '2022-09-08', NULL),
(18, 2, '263.00', '0.00', '55.23', '318.23', 'manoj', 'kumar', '3242423', 'noval@gmail.com', 'dwad', NULL, 'Faridabad', 'Jawa barat', 'India', '3232', 'delivered', 0, '2022-09-09 20:36:37', '2022-09-09 20:46:20', '2022-09-10', NULL),
(19, 4, '89.00', '0.00', '18.69', '107.69', 'esha', 'danuh', '325445454', 'eshasukadanuh@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '43343', 'ordered', 0, '2022-09-12 08:13:13', '2022-09-12 08:13:13', NULL, NULL),
(20, 4, '1155.00', '0.00', '242.55', '1397.55', 'manoj', 'kumar', '323232', 'noval@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '232', 'ordered', 0, '2022-09-12 21:13:28', '2022-09-12 21:13:28', NULL, NULL),
(21, 4, '103.00', '0.00', '21.63', '124.63', 'manoj', 'kumar', '4343', 'noval@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '4343', 'ordered', 0, '2022-09-12 21:18:54', '2022-09-12 21:18:54', NULL, NULL),
(22, 4, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '3232', 'dwadwa@dwa', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '3232', 'ordered', 0, '2022-09-12 21:21:35', '2022-09-12 21:21:35', NULL, NULL),
(23, 4, '237.00', '0.00', '49.77', '286.77', 'manoj', 'kumar', '32', 'eshasukadanuh@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '3232', 'ordered', 0, '2022-09-12 21:23:03', '2022-09-12 21:23:03', NULL, NULL),
(24, 1, '263.00', '0.00', '55.23', '318.23', 'manoj', 'kumar', '2332', 'eshasukadanuh@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '3223', 'ordered', 0, '2022-09-12 21:49:25', '2022-09-12 21:49:25', NULL, NULL),
(25, 2, '200.00', '0.00', '42.00', '242.00', 'manoj', 'kumar', '928372372732', 'user@gmail.com', 'dwad', 'dwa', 'Faridabad', 'Haryana', 'India', '324234', 'ordered', 0, '2022-10-17 23:05:53', '2022-10-17 23:05:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(1, 1, 1, '263.00', 1, '2022-08-16 01:48:16', '2022-08-16 01:48:16', 0, NULL),
(2, 1, 2, '263.00', 1, '2022-08-22 07:40:24', '2022-08-22 07:40:24', 0, NULL),
(3, 2, 2, '89.00', 1, '2022-08-22 07:40:24', '2022-08-22 07:40:24', 0, NULL),
(4, 1, 3, '263.00', 1, '2022-08-22 07:40:35', '2022-08-22 07:40:35', 0, NULL),
(5, 2, 3, '89.00', 1, '2022-08-22 07:40:35', '2022-08-22 07:40:35', 0, NULL),
(6, 1, 4, '263.00', 1, '2022-08-22 07:46:45', '2022-08-22 07:46:45', 0, NULL),
(7, 2, 4, '89.00', 1, '2022-08-22 07:46:45', '2022-08-22 07:46:45', 0, NULL),
(8, 1, 5, '263.00', 1, '2022-08-22 07:48:03', '2022-08-22 07:48:03', 0, NULL),
(9, 2, 5, '89.00', 1, '2022-08-22 07:48:03', '2022-08-22 07:48:03', 0, NULL),
(10, 1, 6, '263.00', 1, '2022-08-22 07:49:34', '2022-08-22 07:49:34', 0, NULL),
(11, 2, 6, '89.00', 1, '2022-08-22 07:49:34', '2022-08-22 07:49:34', 0, NULL),
(12, 1, 7, '263.00', 1, '2022-08-22 07:50:10', '2022-08-22 07:50:10', 0, NULL),
(13, 2, 7, '89.00', 1, '2022-08-22 07:50:10', '2022-08-22 07:50:10', 0, NULL),
(14, 5, 8, '237.00', 1, '2022-08-22 08:08:18', '2022-08-22 08:08:18', 0, NULL),
(15, 5, 9, '237.00', 1, '2022-08-22 08:08:30', '2022-08-22 08:08:30', 0, NULL),
(16, 5, 10, '237.00', 1, '2022-08-22 08:08:40', '2022-08-22 08:08:40', 0, NULL),
(17, 5, 11, '237.00', 1, '2022-08-22 08:08:51', '2022-08-22 08:08:51', 0, NULL),
(18, 5, 12, '237.00', 1, '2022-08-22 08:09:10', '2022-08-22 08:09:10', 0, NULL),
(19, 1, 13, '263.00', 1, '2022-09-01 07:20:46', '2022-09-07 21:09:46', 1, NULL),
(20, 4, 13, '394.00', 1, '2022-09-01 07:20:46', '2022-09-07 21:14:19', 1, NULL),
(21, 1, 14, '263.00', 1, '2022-09-03 06:22:42', '2022-09-03 06:22:42', 0, NULL),
(22, 2, 15, '89.00', 1, '2022-09-03 06:23:45', '2022-09-03 06:23:45', 0, NULL),
(23, 1, 16, '263.00', 1, '2022-09-03 06:25:33', '2022-09-03 06:25:33', 0, NULL),
(24, 1, 17, '263.00', 1, '2022-09-07 21:59:13', '2022-09-07 22:01:13', 1, NULL),
(25, 1, 18, '263.00', 1, '2022-09-09 20:36:37', '2022-09-09 20:36:37', 0, NULL),
(26, 2, 19, '89.00', 1, '2022-09-12 08:13:13', '2022-09-12 08:13:13', 0, NULL),
(27, 4, 20, '394.00', 1, '2022-09-12 21:13:28', '2022-09-12 21:13:28', 0, NULL),
(28, 8, 20, '323.00', 1, '2022-09-12 21:13:28', '2022-09-12 21:13:28', 0, NULL),
(29, 15, 20, '438.00', 1, '2022-09-12 21:13:28', '2022-09-12 21:13:28', 0, NULL),
(30, 3, 21, '103.00', 1, '2022-09-12 21:18:54', '2022-09-12 21:18:54', 0, NULL),
(31, 5, 22, '237.00', 1, '2022-09-12 21:21:35', '2022-09-12 21:21:35', 0, NULL),
(32, 5, 23, '237.00', 1, '2022-09-12 21:23:03', '2022-09-12 21:23:03', 0, NULL),
(33, 1, 24, '263.00', 1, '2022-09-12 21:49:25', '2022-09-12 21:49:25', 0, NULL),
(34, 32, 25, '200.00', 1, '2022-10-17 23:05:54', '2022-10-17 23:05:54', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colour\";s:5:\" BLUE\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('eshasukadanuh@gmail.com', '$2y$10$IchEfpanbS0w1hLyVcVekOZaxFio5SbMwzT52upFPwEtkIKe2/IB6', '2022-09-12 21:17:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'sit dolor', 'sit-dolor', 'Cumque nihil omnis qui unde est dolores perferendis. Recusandae est quis praesentium est distinctio. Quasi cumque modi pariatur quas expedita.', 'Numquam magnam voluptates sapiente deleniti illo unde. Quis quod quidem sint. Nihil qui ipsum aspernatur vero nemo ab molestiae et. Aut fugit molestias in ratione architecto. Magni rerum id quidem et modi quia omnis. Et et laborum esse error consequatur fugit. Dolore nobis velit quod facilis enim quia. Voluptatem voluptatibus et saepe aliquid ea quae. Quo modi velit repudiandae. Ipsa et consectetur nesciunt repudiandae qui ea cumque. Quae qui ea adipisci nesciunt recusandae.', '263.00', '200.00', 'DIGI436', 'instock', 0, 176, 'digital_21.jpg', NULL, 10, '2022-07-22 06:43:24', '2022-09-14 06:10:32', 2),
(2, 'eos consequatur', 'eos-consequatur', 'Cupiditate saepe voluptas dolorem eum. Et aut nihil magnam sed ut. Sit cupiditate qui ut ducimus voluptatem reiciendis ea. Sequi hic maxime perspiciatis est hic.', 'Et velit similique est porro natus commodi illo enim. Blanditiis enim totam qui doloribus totam. Aliquam possimus sit ipsam et quia et. Aliquam quia repellat est. Tempora laudantium rerum necessitatibus ipsum nesciunt ratione. Aspernatur quis ut et commodi consequuntur temporibus qui. Mollitia voluptatem ad tempore consectetur cupiditate qui tempora. Qui in quisquam iusto odit. Explicabo deserunt soluta saepe. Inventore et commodi cupiditate accusamus neque vitae sed.', '89.00', '60.00', 'DIGI247', 'instock', 0, 107, 'digital_17.jpg', NULL, 4, '2022-07-22 06:43:24', '2022-08-03 04:50:58', NULL),
(3, 'quia aut', 'quia-aut', 'Necessitatibus natus quo laboriosam illo. Minus voluptate id et enim. Magni cum architecto omnis nam sit hic sint.', 'Veritatis ullam repellat et vero autem omnis dolor. Culpa dolore unde minus architecto illum animi. Aut voluptatem eum omnis dolorum sint. Provident perferendis impedit et quis vel quos. Sed modi commodi ut qui. Pariatur aut necessitatibus est temporibus vero. Autem facilis quisquam quos nisi asperiores odio. Expedita voluptas est fugit perspiciatis enim. Ut magni sequi quas tempore.', '103.00', '80.00', 'DIGI234', 'instock', 0, 199, 'digital_5.jpg', NULL, 2, '2022-07-22 06:43:24', '2022-08-03 04:51:37', NULL),
(4, 'quisquam reprehenderit', 'quisquam-reprehenderit', 'Ea esse nulla temporibus officiis autem totam. Excepturi et aliquid architecto expedita non aliquam. Amet ex consequatur aperiam consequatur vero reprehenderit.', 'Libero autem nihil et reiciendis. Aut voluptatem praesentium et dolorem asperiores ut. Hic numquam veniam reprehenderit temporibus quae modi placeat quia. Deleniti commodi quia fuga omnis eius unde similique. Tempore ut quis veritatis ut voluptatum quis. Laborum quia vel ut quod officia. Omnis quas officia quae perspiciatis quibusdam est. Sequi et mollitia veritatis tempora ut corrupti. Quas ea non deleniti rerum sit reprehenderit.', '394.00', '290.00', 'DIGI308', 'instock', 0, 158, 'digital_8.jpg', NULL, 1, '2022-07-22 06:43:24', '2022-08-03 04:51:51', 8),
(5, 'atque atque', 'atque-atque', 'Et eaque saepe eos voluptatem sed animi. Accusamus est doloremque voluptatem ut autem. Facere corporis corrupti sit quia impedit. Voluptates quaerat quia aut id perferendis ipsum.', 'Dolorem a cupiditate voluptate sit quas est. Qui facilis minus illo non perferendis rerum sed. Culpa veritatis est earum quo. Eos tenetur qui nemo. Qui est dignissimos odit nihil atque voluptatibus sed. Iste dolorem eos magni facere enim dicta veritatis. Quia id praesentium sit qui dolorum iusto.', '237.00', '200.00', 'DIGI444', 'instock', 0, 131, 'digital_11.jpg', NULL, 2, '2022-07-22 06:43:24', '2022-08-03 04:52:17', NULL),
(6, 'aut aut', 'aut-aut', 'Repudiandae necessitatibus eius beatae earum dolorum. Provident quibusdam recusandae quisquam. Doloremque ipsam alias eveniet aliquid.', 'Tempore culpa et facilis perferendis eius. Repellendus corporis accusantium amet quis eius architecto et quod. Et non id numquam labore quibusdam. Rerum libero et ut qui nulla. Sequi quasi repellat quod ut occaecati cumque. Reprehenderit impedit aut repellat voluptate aut veniam ut. Facere quidem ut qui in itaque. Atque harum qui neque non totam. Ut ducimus nobis consectetur eum adipisci. Quod id quasi rerum ipsa excepturi.', '474.00', '400.00', 'DIGI140', 'instock', 0, 145, 'digital_3.jpg', NULL, 1, '2022-07-22 06:43:24', '2022-08-03 04:53:03', NULL),
(7, 'ut sit', 'ut-sit', 'Earum maiores vitae atque accusamus error mollitia dolorum. Similique accusantium et et quod quia labore. Ut est ipsa corporis quos saepe placeat facilis. Officiis ut et illo reprehenderit et est.', 'Placeat aspernatur beatae vitae minima voluptas occaecati. Rerum veniam quia harum non occaecati. Fugiat in eos tempore aperiam aut velit. Aut dicta rerum dolores modi. Blanditiis commodi occaecati consequatur accusamus maxime dolorum. Qui tenetur exercitationem ut qui fugit pariatur. Itaque sint id aut. Aut eum praesentium rem quos id. Reiciendis architecto tenetur dolorem ut. Qui minima labore qui est. Deserunt corporis fugit deleniti modi voluptatem earum id repellendus.', '53.00', NULL, 'DIGI245', 'instock', 0, 107, 'digital_20.jpg', NULL, 3, '2022-07-22 06:43:24', '2022-07-22 06:43:24', NULL),
(8, 'accusamus cum', 'accusamus-cum', 'Facere non molestiae cumque. Quo perspiciatis rerum eum. Velit id reiciendis amet a est ab et.', 'Rerum maiores rem dolores unde qui. Placeat consequatur unde illum autem. Ducimus sit officia eligendi esse. Incidunt vero vitae sint quibusdam perferendis. Et consequatur debitis earum eum aperiam placeat. Ea reiciendis quo cumque et. Est ullam reiciendis eveniet et exercitationem. Et omnis rerum magnam officia. Dignissimos earum veniam et blanditiis repellendus. Voluptas ea illo explicabo. Praesentium autem consectetur velit sed cupiditate. Ducimus voluptas inventore et aut.', '323.00', NULL, 'DIGI393', 'instock', 0, 118, 'digital_1.jpg', NULL, 5, '2022-07-22 06:43:24', '2022-07-22 06:43:24', NULL),
(9, 'tenetur et', 'tenetur-et', 'A fugit architecto est quia et doloribus. Libero corporis qui et.', 'Deserunt est illum iure hic odio quos. Quia quas et alias vero. Exercitationem sint itaque dolor dolorem consectetur et. Eligendi tempora et explicabo aliquam sequi quis. Sint ipsa unde facilis in sint omnis sit maxime. Itaque et quisquam nihil ut sit. Quidem non labore accusantium nisi aspernatur cumque et. Nam nemo maiores quidem iure. Quas quasi velit consectetur sunt qui sunt quos ipsa. Est suscipit delectus facilis aperiam.', '416.00', NULL, 'DIGI166', 'instock', 0, 176, 'digital_22.jpg', NULL, 1, '2022-07-22 06:43:24', '2022-07-22 06:43:24', NULL),
(10, 'sequi ut', 'sequi-ut', 'Aut labore atque eaque libero consequatur. Velit sit mollitia quaerat rerum debitis. Laborum delectus quia delectus quia recusandae accusamus iste. Assumenda odit et nihil.', 'Corrupti quasi atque et non vel. Ratione quo laboriosam maiores. Culpa accusamus iste repudiandae. Sit aut voluptas tenetur tempore molestiae. Officia quo inventore placeat molestias quisquam rem magnam et. Eveniet ad delectus et necessitatibus velit minima. Omnis veritatis sunt at laboriosam. Quod aperiam vitae aut dignissimos voluptas explicabo qui consectetur. Voluptas laboriosam quasi non quos quasi quae et. Doloribus quod quisquam asperiores ut minus. Iste est quis dignissimos assumenda.', '293.00', NULL, 'DIGI492', 'instock', 0, 161, 'digital_12.jpg', NULL, 1, '2022-07-22 06:43:24', '2022-07-22 06:43:24', NULL),
(11, 'commodi minus', 'commodi-minus', 'Laboriosam velit sed minima cupiditate saepe harum dolores. Et possimus laudantium et qui ab qui et. Sequi natus provident et et beatae enim voluptatem.', 'Laudantium temporibus et maxime expedita aliquam in. Nihil qui quas minima occaecati qui. Autem quae aut unde quia. Non incidunt minus recusandae. Veniam ea voluptas voluptate suscipit. Modi facilis est necessitatibus. Sit eligendi est qui qui et minus. Autem vel qui ut quasi tenetur. Qui rerum corporis voluptatem modi aut sit saepe id. Pariatur dicta facere reiciendis necessitatibus officia. Provident et ducimus voluptatibus soluta quos cum.', '112.00', NULL, 'DIGI341', 'instock', 0, 116, 'digital_15.jpg', NULL, 2, '2022-07-22 06:43:24', '2022-07-22 06:43:24', NULL),
(12, 'ipsum culpa', 'ipsum-culpa', 'Iusto qui illum dolores doloremque temporibus fugit est voluptate. Est voluptas quia consectetur qui eius corrupti occaecati. Dolores dolores pariatur minus et eum corrupti.', 'Nam occaecati et excepturi cupiditate id sed. Quidem sunt quidem adipisci impedit. Dolorum quidem et doloremque aut est cum et. Labore animi fugit nam quas aliquam sed deserunt. Distinctio qui ipsa nulla labore quis assumenda. Suscipit omnis sit corrupti eum ex qui quis. Quis unde sequi reprehenderit ratione sunt molestias sit. Harum soluta accusamus dolores et. Est provident sint quo eligendi eveniet. Illum veniam voluptates dolor eius saepe qui.', '409.00', NULL, 'DIGI443', 'instock', 0, 143, 'digital_19.jpg', NULL, 1, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(13, 'exercitationem adipisci', 'exercitationem-adipisci', 'Consequatur et veniam quia ea reiciendis quidem dolorum amet. Ut animi natus dolore occaecati quibusdam eaque vitae. Sunt dolorem voluptatibus veniam provident ullam. Odio eos deleniti soluta qui.', 'Sed ex occaecati ut enim dicta recusandae aliquam. Quia corporis animi magni. In repellat et odio quasi. Deserunt in aperiam nostrum. Consectetur minima voluptatum repellendus. Aperiam ullam esse ullam. Non dicta provident eaque tenetur. Rerum ut esse et. Dicta dolorum quod fugit commodi nostrum et consequatur. Voluptas dolorem quo sed magnam est quibusdam optio. Excepturi ipsa voluptas laboriosam. Autem eaque natus maiores. Saepe nihil iure id aut in dolores quis.', '287.00', NULL, 'DIGI402', 'instock', 0, 184, 'digital_7.jpg', NULL, 1, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(14, 'unde accusamus', 'unde-accusamus', 'Ut quo beatae minus amet magni eum. Et velit delectus expedita ipsum. Rem exercitationem sunt corrupti. Eius quos delectus suscipit delectus id. Magnam sit rerum voluptates nemo facere iusto rerum.', 'Et incidunt nihil error animi. Neque ad delectus aut. Tempora at labore autem totam atque impedit sint. Eaque et quia recusandae et cupiditate fuga id. Error ratione animi ad placeat aperiam laboriosam. Omnis laudantium qui architecto libero sit consectetur. Velit nulla distinctio molestias reiciendis vel. Eligendi fugit hic blanditiis.', '353.00', NULL, 'DIGI374', 'instock', 0, 171, 'digital_10.jpg', NULL, 1, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(15, 'vitae nostrum', 'vitae-nostrum', 'Sit quo numquam numquam cumque. Sapiente soluta dolorum distinctio nulla. Dolorum velit iure maiores adipisci.', 'Placeat cumque odio ipsam eveniet repudiandae. Saepe at temporibus necessitatibus voluptas dolores debitis magnam. Voluptas ut ipsum itaque laboriosam omnis tempore dolor. Facere et qui rerum itaque. Possimus a voluptatum eos exercitationem voluptatem. Eaque non aut quo doloremque quam neque. Recusandae quia cum expedita incidunt. Et mollitia nostrum placeat provident aut. Eius pariatur pariatur repellat fugit veritatis accusamus temporibus deserunt.', '438.00', NULL, 'DIGI232', 'instock', 0, 163, 'digital_14.jpg', NULL, 5, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(16, 'aut fugiat', 'aut-fugiat', 'Quas architecto nihil explicabo atque labore. Dolorem aliquid qui dolores ut suscipit qui voluptatum. Quae dolorem quos quibusdam voluptates sed est.', 'Et ipsa ex minus iure et corporis qui. Omnis accusantium culpa asperiores nisi numquam facere non. Neque sunt sint est quis. Quis voluptatibus a quo ut. Aut numquam ut est officia sed rerum. Sit placeat officiis et sit molestiae. Est suscipit odit dolorum et aut dolore mollitia est. Accusamus at sunt voluptatum quaerat. Consequatur adipisci dolor quo sapiente consectetur. Commodi fugit et in sapiente.', '377.00', NULL, 'DIGI390', 'instock', 0, 141, 'digital_4.jpg', NULL, 5, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(17, 'eum aut', 'eum-aut', 'Sunt sit sunt corrupti aut qui eveniet. Eos explicabo blanditiis ullam natus quasi ratione quod. Temporibus perferendis animi atque quo blanditiis.', 'Placeat dolor sit iste voluptatem qui quam. Quia velit corporis est assumenda. Ea et eos voluptatum beatae ipsa ut. Ex cumque occaecati incidunt dolor dolorem est. Repudiandae eos maiores est minus voluptatibus molestias totam. Dolores error eum sed. Neque officiis ut tenetur aut omnis enim sunt provident. Adipisci nihil impedit ratione aspernatur. Nesciunt voluptatem laboriosam cumque sequi aut et.', '443.00', NULL, 'DIGI124', 'instock', 0, 118, 'digital_13.jpg', NULL, 3, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(18, 'eaque sint', 'eaque-sint', 'Deleniti ut sequi qui et aspernatur. Vero aliquam ut fugiat. Modi unde autem suscipit omnis. Ad quam est est modi iure laudantium.', 'Vel ullam ea repellat est eos quisquam. Quia consectetur vero et provident eos quia. Ut et quos totam nihil architecto architecto ea. Nemo ullam quo libero sed itaque harum ea. Asperiores harum earum est illo. Cupiditate nisi dolorem natus dolor. Incidunt voluptatem dolorem et sint temporibus laboriosam eos. Ipsam blanditiis optio ipsum sit ipsum ad voluptatem.', '260.00', NULL, 'DIGI255', 'instock', 0, 178, 'digital_9.jpg', NULL, 1, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(19, 'et omnis', 'et-omnis', 'Ipsa aut nemo ut recusandae. Reprehenderit neque modi delectus aut ut autem eius. Est deserunt et fugiat ipsam est.', 'Eligendi maxime non quo quia alias nulla. Maxime sint eum quidem tenetur enim at. Tempora iste aut ea est eum veritatis perspiciatis. Quam consequatur harum rerum quidem quia. Aut possimus laborum eveniet placeat. Amet ab molestiae aut ut tempore dolores quibusdam. Ad et deleniti ut. Temporibus molestiae nam est et. Harum distinctio dolores facere. Impedit est possimus aut facilis enim.', '138.00', NULL, 'DIGI467', 'instock', 0, 117, 'digital_6.jpg', NULL, 3, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(20, 'neque sit', 'neque-sit', 'Voluptatem tempora autem rem doloribus. Suscipit asperiores et aut omnis. Hic amet alias est voluptas quia delectus suscipit.', 'Et quia laudantium nihil dignissimos magnam delectus nam. Voluptas soluta aliquid cumque explicabo commodi doloremque optio. Quo et voluptates voluptatibus pariatur maxime. Et id aut aut aut suscipit illo neque. Fugit sit aliquam fugit fugiat. Et minus reprehenderit nam et voluptas dolor. Nihil labore ducimus sint quibusdam cumque. Quam eum sed vitae aut cum deleniti nostrum magni. Eum impedit quia aperiam consequatur quos. Ea similique ex nostrum voluptates hic tenetur.', '458.00', NULL, 'DIGI284', 'instock', 0, 114, 'digital_2.jpg', NULL, 1, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(21, 'dolores aperiam', 'dolores-aperiam', 'Possimus nihil dolorem ut animi temporibus consectetur. Assumenda non eius et vero est. Voluptatem itaque cum quis hic numquam enim.', 'Consequatur laboriosam praesentium voluptatibus eveniet dolore ut. Dolorem ducimus id odio qui repellendus accusamus. Ipsa sed et occaecati rerum qui et. Consequatur rerum doloribus sit provident dolore modi ducimus. Soluta quo architecto eaque odit. Et omnis harum est dolor. Aut ut vel dolor optio nam iusto quae. Odio cumque consectetur quos inventore nihil cupiditate. Et totam ratione at occaecati quia. Voluptatem ullam debitis saepe quidem qui ea quis.', '386.00', NULL, 'DIGI303', 'instock', 0, 120, 'digital_16.jpg', NULL, 2, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(22, 'ut qui', 'ut-qui', 'Sint sunt iusto ad dolorum et cumque non. Quos rerum officiis fugit quaerat qui praesentium qui. Maiores est impedit et suscipit quibusdam est sint veniam.', 'Et eveniet veritatis laudantium ut eum autem aut. Non eaque minus ab quo pariatur non tempore. Quis dolores provident et quos et repellendus. Quo ab voluptas quia exercitationem. Autem ab ad est ut autem. Numquam nobis omnis odit velit nihil. Rerum labore eos expedita corporis omnis qui. Incidunt ipsam ipsam sint totam aliquid. Blanditiis possimus sit corporis iusto. Sunt molestiae aut explicabo praesentium velit autem atque repudiandae. Et et magnam eveniet repellat in facere autem.', '296.00', NULL, 'DIGI184', 'instock', 0, 177, 'digital_18.jpg', NULL, 1, '2022-07-22 06:43:25', '2022-07-22 06:43:25', NULL),
(27, 'TEST', 'test', '<p>test</p>', '<p><strong>Hello: </strong>world</p>', '200.00', '190.00', 'DIGI22', 'instock', 0, 2, '1659849499.jpg', ',16627919010.png,16627919011.jpg,16627919012.jpg,16627919013.jpg,16627919014.jpg', 1, '2022-08-06 21:55:22', '2022-09-09 23:38:21', NULL),
(29, 'Iphone 11', 'iphone-11', 'Iphone 11', 'Iphone 11', '300.00', '290.00', 'DIGI98329', 'instock', 0, 10, '1663160089.jpg', ',16631600890.jpg,16631600891.jpg,16631600892.jpg,16631600893.jpg', 13, '2022-09-14 05:54:49', '2022-09-14 06:06:27', 5),
(30, 'Product new attribute', 'product-new-attribute', 'Product new attribute', 'Product new attribute', '700.00', '650.00', 'DIGI342433', 'instock', 0, 32, '1665666874.jpg', NULL, 1, '2022-10-13 06:14:34', '2022-10-13 06:14:34', NULL),
(31, 'FAWDADWA', 'fawdadwa', '<p>FAWDADWA</p>', '<p>FAWDADWA</p>', '200.00', '160.00', 'DIGI3232342', 'instock', 0, 12, '1666017445.jpg', NULL, 1, '2022-10-17 07:37:25', '2022-10-17 07:37:25', NULL),
(32, 'TEST12', 'test12', '<p>FAWDADWA</p>', '<p>FAWDADWA</p>', '200.00', '150.00', 'DIGI323232', 'instock', 0, 12, '1666017493.jpg', NULL, 1, '2022-10-17 07:38:13', '2022-10-17 07:38:13', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Colour', '2022-10-13 05:12:25', '2022-10-13 05:12:25'),
(4, 'Size', '2022-10-13 05:12:30', '2022-10-13 05:12:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-17 07:30:23', '2022-09-17 07:30:23'),
(2, 2, '1665405926.jpg', '081282992299', 'villa nusa dua', NULL, 'bali', 'bali', 'indonesia', '92882', '2022-10-04 02:57:38', '2022-10-10 05:45:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 5, 'nice product for my home.', 19, '2022-09-07 21:09:46', '2022-09-07 21:09:46'),
(2, 4, 'Good Product', 20, '2022-09-07 21:14:19', '2022-09-07 21:14:19'),
(3, 3, 'Good Ponsel', 24, '2022-09-07 22:01:12', '2022-09-07 22:01:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-08-04 12:19:55', 1, NULL, '2022-08-03 19:55:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('OT7KRjN3pTOI3pmLL1cy4QoXaZQ1hDEEVlUlG72t', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiVk9TbHBxNmZNbUV3UVhSUFJNVzhkazRRdklXWldQMjVOQUVuRURPSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJ0Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJElyaXg5cFo0RldJS3dFcHZmbmY5YU9hMmZjdE1lZUJiSEt2UzBYU1B5VFd5Z1RGaDZueVNTIjtzOjQ6ImNhcnQiO2E6Mjp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJhZDlkNjM2M2YyZDk1YTRkZTE0NjUwY2IyYjU4YmM5MyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImFkOWQ2MzYzZjJkOTVhNGRlMTQ2NTBjYjJiNThiYzkzIjtzOjI6ImlkIjtpOjMyO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjY6IlRFU1QxMiI7czo1OiJwcmljZSI7ZDoyMDA7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czo2OiJDb2xvdXIiO3M6NjoiIEdSRUVOIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRJcml4OXBaNEZXSUt3RXB2Zm5mOWFPYTJmY3RNZWVCYkhLdlMwWFNQeVRXeWdURmg2bnlTUyI7czo4OiJjaGVja291dCI7YTo0OntzOjg6ImRpc2NvdW50IjtpOjA7czo4OiJzdWJ0b3RhbCI7czo2OiIyMDAuMDAiO3M6MzoidGF4IjtzOjU6IjQyLjAwIjtzOjU6InRvdGFsIjtzOjY6IjI0Mi4wMCI7fX0=', 1666075380),
('xsdXj4nGnXaJRPzioIoVP5l02YGhAVz8pDEaCFpt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzFYYVJ5OXlaR1NsVnpWM3dKMlFEU1lzOEpjM0YxWTNBY1g5RzRuRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1666069215);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'naufal@gmail.com', '1234', '12345', 'Indonesia', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16328040.9491453!2d108.8514212402305!3d-2.393286107448966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sid!2sid!4v1662719342491!5m2!1sid!2sid', '#', '#', '#', '#', '#', '2022-09-09 02:09:40', '2022-09-09 03:37:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, 'dwa', 'dwa', '3323232', 'naufal@gmail.com', 'wda', 'dwa', 'dwa', 'dwa', 'dwa', '323232', '2022-08-16 01:48:16', '2022-08-16 01:48:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"ad9d6363f2d95a4de14650cb2b58bc93\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ad9d6363f2d95a4de14650cb2b58bc93\";s:2:\"id\";i:32;s:3:\"qty\";i:1;s:4:\"name\";s:6:\"TEST12\";s:5:\"price\";d:200;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colour\";s:6:\" GREEN\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-17 23:43:00', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-17 23:42:43', NULL),
('eshasukadanuh@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-12 21:29:47', NULL),
('eshasukadanuh@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:6:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:9:\"sit dolor\";s:5:\"price\";d:263;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";s:2:\"id\";i:4;s:3:\"qty\";i:1;s:4:\"name\";s:22:\"quisquam reprehenderit\";s:5:\"price\";d:394;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"468399581342505c47f4615b81bedaa9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"468399581342505c47f4615b81bedaa9\";s:2:\"id\";i:5;s:3:\"qty\";i:1;s:4:\"name\";s:11:\"atque atque\";s:5:\"price\";d:237;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"bf93e0040190e2a2c89570e5152c7ce1\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"bf93e0040190e2a2c89570e5152c7ce1\";s:2:\"id\";i:27;s:3:\"qty\";i:1;s:4:\"name\";s:4:\"TEST\";s:5:\"price\";d:200;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"07cca15168b1a5e48e0f89d878fbf6ea\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"07cca15168b1a5e48e0f89d878fbf6ea\";s:2:\"id\";i:16;s:3:\"qty\";i:1;s:4:\"name\";s:10:\"aut fugiat\";s:5:\"price\";d:377;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"ab474a72475ea6ea54d2085e5cdacc28\";s:2:\"id\";i:15;s:3:\"qty\";i:1;s:4:\"name\";s:13:\"vitae nostrum\";s:5:\"price\";d:438;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-09-12 21:29:47', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"6c9f7e7d70924553dc4e2c518b30354d\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"6c9f7e7d70924553dc4e2c518b30354d\";s:2:\"id\";i:32;s:3:\"qty\";i:1;s:4:\"name\";s:6:\"TEST12\";s:5:\"price\";d:200;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colour\";s:5:\" BLUE\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-17 23:05:24', NULL),
('user@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-10-17 23:05:17', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', 10, '2022-09-12 21:44:31', '2022-09-13 01:02:10'),
(2, 'Mobile', 'mobile', 10, '2022-09-12 21:44:48', '2022-09-12 21:44:48'),
(5, 'Air Jordan', 'air-jordan', 13, '2022-09-14 03:20:38', '2022-09-14 03:20:38'),
(6, 'Air Cooler', 'air-cooler', 11, '2022-09-14 03:21:15', '2022-09-14 03:21:15'),
(7, 'Camera', 'camera', 1, '2022-09-14 04:24:38', '2022-09-14 04:24:38'),
(8, 'Television', 'television', 2, '2022-09-14 04:25:07', '2022-09-14 04:25:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cod', 'pending', '2022-08-16 01:48:16', '2022-08-16 01:48:16'),
(2, 1, 7, 'card', 'approved', '2022-08-22 07:50:14', '2022-08-22 07:50:14'),
(3, 1, 12, 'card', 'approved', '2022-08-22 08:09:14', '2022-08-22 08:09:14'),
(4, 2, 13, 'cod', 'pending', '2022-09-01 07:20:46', '2022-09-01 07:20:46'),
(5, 2, 14, 'cod', 'pending', '2022-09-03 06:22:42', '2022-09-03 06:22:42'),
(6, 2, 15, 'cod', 'pending', '2022-09-03 06:23:45', '2022-09-03 06:23:45'),
(7, 2, 16, 'cod', 'pending', '2022-09-03 06:25:33', '2022-09-03 06:25:33'),
(8, 2, 17, 'cod', 'pending', '2022-09-07 21:59:13', '2022-09-07 21:59:13'),
(9, 2, 18, 'cod', 'pending', '2022-09-09 20:36:37', '2022-09-09 20:36:37'),
(10, 4, 19, 'cod', 'pending', '2022-09-12 08:13:13', '2022-09-12 08:13:13'),
(11, 4, 20, 'cod', 'pending', '2022-09-12 21:13:28', '2022-09-12 21:13:28'),
(12, 4, 21, 'cod', 'pending', '2022-09-12 21:18:54', '2022-09-12 21:18:54'),
(13, 4, 22, 'cod', 'pending', '2022-09-12 21:21:35', '2022-09-12 21:21:35'),
(14, 4, 23, 'cod', 'pending', '2022-09-12 21:23:03', '2022-09-12 21:23:03'),
(15, 1, 24, 'cod', 'pending', '2022-09-12 21:49:25', '2022-09-12 21:49:25'),
(16, 2, 25, 'cod', 'pending', '2022-10-17 23:05:54', '2022-10-17 23:05:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Irix9pZ4FWIKwEpvfnf9aOa2fctMeeBbHKvS0XSPyTWygTFh6nySS', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-07-21 20:45:05', '2022-07-21 20:45:05'),
(2, 'User new', 'user@gmail.com', NULL, '$2y$10$y50GZJSv9KI.r41Z59kDm.7q3Nhx9U/uR6GaQQJ5a4nKg7Mt4CQi.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-07-21 20:47:16', '2022-10-10 05:27:06'),
(3, 'User2', 'user2@gmail.com', NULL, '$2y$10$H.YU.Nu6g4zXGYiUOlzwAerbmGNZ4zVHRYV2FltR/bpc6k/3/Ybc.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-07-22 04:33:13', '2022-07-22 04:33:13'),
(4, 'Naufal', 'eshasukadanuh@gmail.com', NULL, '$2y$10$w32bXRE2MfnBwW6XuxeJseS.fpb7svLXSglEv/xbTAFvkqNNKCdKW', NULL, NULL, NULL, 'x6OGZhZPaLr0XLjWOrBiDdLA2hIU8SU6qQFjML2xFsUAqFD4d90qTNZukH5O', NULL, NULL, 'USR', '2022-09-09 06:04:20', '2022-09-09 06:24:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indeks untuk tabel `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
