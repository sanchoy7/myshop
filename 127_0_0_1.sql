-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2026 at 06:52 PM
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
-- Database: `ecommerce_db`
--
CREATE DATABASE IF NOT EXISTS `ecommerce_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ecommerce_db`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add cart item', 8, 'add_cartitem'),
(30, 'Can change cart item', 8, 'change_cartitem'),
(31, 'Can delete cart item', 8, 'delete_cartitem'),
(32, 'Can view cart item', 8, 'view_cartitem'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add product', 10, 'add_product'),
(38, 'Can change product', 10, 'change_product'),
(39, 'Can delete product', 10, 'delete_product'),
(40, 'Can view product', 10, 'view_product'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add order item', 12, 'add_orderitem'),
(46, 'Can change order item', 12, 'change_orderitem'),
(47, 'Can delete order item', 12, 'delete_orderitem'),
(48, 'Can view order item', 12, 'view_orderitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$Hu6bF31klGauVHcG3G5H4o$fmzGZrP08+vU+wZAJM+5CvZ3XsX8iZKWG3kCeMpSQpY=', '2026-02-01 15:18:59.297889', 1, 'admin', '', '', 'sanchoy7@gmail.com', 1, 1, '2026-02-01 15:17:21.199306');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_cart`
--

CREATE TABLE `cart_cart` (
  `id` bigint(20) NOT NULL,
  `session_key` varchar(40) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart_cart`
--

INSERT INTO `cart_cart` (`id`, `session_key`, `created_at`, `updated_at`, `user_id`) VALUES
(4, NULL, '2026-02-01 16:21:52.412743', '2026-02-01 16:21:52.412743', NULL),
(5, NULL, '2026-02-01 16:22:02.822497', '2026-02-01 16:22:02.822497', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_cartitem`
--

CREATE TABLE `cart_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `added_at` datetime(6) NOT NULL,
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart_cartitem`
--

INSERT INTO `cart_cartitem` (`id`, `quantity`, `added_at`, `cart_id`, `product_id`) VALUES
(6, 1, '2026-02-01 16:22:24.713598', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2026-02-01 15:19:22.735006', '1', 'Laptop', 1, '[{\"added\": {}}]', 9, 1),
(2, '2026-02-01 15:19:29.952046', '2', 'Desktop', 1, '[{\"added\": {}}]', 9, 1),
(3, '2026-02-01 15:20:09.792587', '3', 'Monitor', 1, '[{\"added\": {}}]', 9, 1),
(4, '2026-02-01 15:20:28.510048', '4', 'Printer', 1, '[{\"added\": {}}]', 9, 1),
(5, '2026-02-01 15:20:34.546860', '5', 'Camera', 1, '[{\"added\": {}}]', 9, 1),
(6, '2026-02-01 15:21:03.806775', '6', 'Security', 1, '[{\"added\": {}}]', 9, 1),
(7, '2026-02-01 15:21:15.049611', '7', 'Network', 1, '[{\"added\": {}}]', 9, 1),
(8, '2026-02-01 15:21:22.986015', '8', 'Sound System', 1, '[{\"added\": {}}]', 9, 1),
(9, '2026-02-01 15:22:30.409461', '9', 'Smart Phone', 1, '[{\"added\": {}}]', 9, 1),
(10, '2026-02-01 15:23:15.600476', '10', 'Accessories', 1, '[{\"added\": {}}]', 9, 1),
(11, '2026-02-01 15:26:15.751684', '1', 'Acer Aspire Lite AL15-52 12th Gen Intel Core i3 1215U 16GB RAM, 512GB SSD Steel Gray Laptop', 1, '[{\"added\": {}}]', 10, 1),
(12, '2026-02-01 15:28:25.299972', '2', 'HP 15-fd0333TU Series 1 Intel Core 5 120U 8GB RAM, 512GB SSD 15.6 Inch FHD Display Silver Laptop', 1, '[{\"added\": {}}]', 10, 1),
(13, '2026-02-01 15:52:15.402070', '3', 'Dell Inspiron 14 5440 Series 1 Intel Core 7 150U 16GB RAM, 512GB SSD 14 Inch FHD WVA Display Ice Blue Laptop', 1, '[{\"added\": {}}]', 10, 1),
(14, '2026-02-01 15:53:54.438719', '4', 'Lenovo Yoga Slim 7 14IMH9 Intel Core Ultra 5 125H 16GB RAM 512GB SSD 14 Inch FHD+ WUXGA Display AI Optimized Luna Grey Laptop', 1, '[{\"added\": {}}]', 10, 1),
(15, '2026-02-01 15:55:55.652262', '5', 'MSI BZ09 (Barebone PC) Intel Core i5 14400 Mini Tower Black Brand PC', 1, '[{\"added\": {}}]', 10, 1),
(16, '2026-02-01 15:57:24.048570', '6', 'Dell Inspiron 3030 Intel Core i3 14100 8GB RAM 512GB SSD Black Tower Brand PC', 1, '[{\"added\": {}}]', 10, 1),
(17, '2026-02-01 15:58:55.109289', '7', 'Gigabyte GS27QCA 27 Inch 2K QHD Display Dual HDMI, DP, Curved Gaming Monitor', 1, '[{\"added\": {}}]', 10, 1),
(18, '2026-02-01 16:00:46.105482', '8', 'ASUS VP227HF 22 Inch (21.45 Inch Viewable) FHD HDMI, VGA Eye Care Gaming Monitor', 1, '[{\"added\": {}}]', 10, 1),
(19, '2026-02-01 16:02:32.867940', '9', 'Canon imageCLASS LBP6030B Black Single Function Mono Laser Printer', 1, '[{\"added\": {}}]', 10, 1),
(20, '2026-02-01 16:04:14.815694', '10', 'Canon EOS 2000D Digital SLR Camera Body (No Warranty)', 1, '[{\"added\": {}}]', 10, 1),
(21, '2026-02-01 16:05:47.612325', '11', 'TP-Link VIGI C320I (4mm) (2.0MP) Outdoor Bullet IP Camera', 1, '[{\"added\": {}}]', 10, 1),
(22, '2026-02-01 16:07:38.277563', '12', 'ASUSTOR DRIVESTOR 2 AS1102T 2 Bay Tower Network Storage', 1, '[{\"added\": {}}]', 10, 1),
(23, '2026-02-01 16:10:41.284603', '13', 'Xtreme JALSA Bluetooth Black Speaker with Microphone', 1, '[{\"added\": {}}]', 10, 1),
(24, '2026-02-01 16:13:33.690193', '14', 'Pc Power 10400mAh Mini DC UPS #PCMU1018LCD', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'cart', 'cart'),
(8, 'cart', 'cartitem'),
(5, 'contenttypes', 'contenttype'),
(11, 'orders', 'order'),
(12, 'orders', 'orderitem'),
(9, 'products', 'category'),
(10, 'products', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-02-01 15:15:41.171813'),
(2, 'auth', '0001_initial', '2026-02-01 15:15:41.653417'),
(3, 'admin', '0001_initial', '2026-02-01 15:15:41.763850'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-02-01 15:15:41.771852'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-02-01 15:15:41.782627'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-02-01 15:15:41.870414'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-02-01 15:15:41.923623'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-02-01 15:15:41.971848'),
(9, 'auth', '0004_alter_user_username_opts', '2026-02-01 15:15:41.979223'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-02-01 15:15:42.020820'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-02-01 15:15:42.022830'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-02-01 15:15:42.032857'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-02-01 15:15:42.044435'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-02-01 15:15:42.057667'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-02-01 15:15:42.112815'),
(16, 'auth', '0011_update_proxy_permissions', '2026-02-01 15:15:42.122848'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-02-01 15:15:42.139593'),
(18, 'products', '0001_initial', '2026-02-01 15:15:42.223290'),
(19, 'cart', '0001_initial', '2026-02-01 15:15:42.396790'),
(20, 'orders', '0001_initial', '2026-02-01 15:15:42.609335'),
(21, 'sessions', '0001_initial', '2026-02-01 15:15:42.646543');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('aara7rfvvsdf5ul95r5kwiau313ug352', 'eyJjYXJ0X2lkIjo0fQ:1vmaNG:7YVN_g85uNjzGIpG-joRmmrh0rS3F-w3tgeSas3I630', '2026-02-15 16:32:34.527635'),
('s28zpydqs8y60ukh7hxzqn12317h7iq6', 'eyJjYXJ0X2lkIjo1fQ:1vmb7a:23-dletSRMS3r1Om5atq3EJZDR1GXmV0CaQYxA2eNiw', '2026-02-15 17:20:26.999273');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `country` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `status` varchar(2) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders_order`
--

INSERT INTO `orders_order` (`id`, `first_name`, `last_name`, `email`, `address`, `city`, `postal_code`, `country`, `phone`, `created`, `updated`, `status`, `paid`, `user_id`) VALUES
(1, 'dfdffdg', 'gfdgf', 'sanchoy7@gmail.com', 'dfgdgfgf', 'fgddf', '2202', 'Bangladesh', '01920948842', '2026-02-01 16:15:15.728540', '2026-02-01 16:15:15.728540', 'P', 0, 1),
(2, 'Kazi Sanchoy', 'Ahmed', 'sanchoy7@gmail.com', '৭ /১  পাওয়ার হাউস রোড , কেওয়াটখালী (ওপদা মোড় ), ময়মনসিংহ সদর', 'Out Of Dhaka City (150 Tk)', '2100', 'Bangladesh', '01920948842', '2026-02-01 16:17:25.523217', '2026-02-01 16:17:25.523217', 'P', 0, NULL),
(3, 'Kazi Sanchoy', 'Ahmed', 'sanchoy7@gmail.com', '৭ /১  পাওয়ার হাউস রোড , কেওয়াটখালী (ওপদা মোড় ), ময়মনসিংহ সদর', 'Out Of Dhaka City (150 Tk)', '2100', 'Bangladesh', '01920948842', '2026-02-01 17:20:22.559035', '2026-02-01 17:20:22.559035', 'P', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderitem`
--

CREATE TABLE `orders_orderitem` (
  `id` bigint(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders_orderitem`
--

INSERT INTO `orders_orderitem` (`id`, `price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 51500.00, 1, 1, 1),
(2, 72500.00, 1, 1, 2),
(3, 72500.00, 1, 2, 2),
(4, 51500.00, 1, 2, 1),
(5, 51500.00, 1, 3, 1),
(6, 2300.00, 1, 3, 11),
(7, 31000.00, 1, 3, 12);

-- --------------------------------------------------------

--
-- Table structure for table `products_category`
--

CREATE TABLE `products_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products_category`
--

INSERT INTO `products_category` (`id`, `name`, `slug`) VALUES
(1, 'Laptop', 'laptop'),
(2, 'Desktop', 'desktop'),
(3, 'Monitor', 'monitor'),
(4, 'Printer', 'printer'),
(5, 'Camera', 'camera'),
(6, 'Security', 'security'),
(7, 'Network', 'network'),
(8, 'Sound System', 'sound-system'),
(9, 'Smart Phone', 'smart-phone'),
(10, 'Accessories', 'accessories');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `available` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `name`, `slug`, `description`, `price`, `image`, `stock`, `available`, `created`, `updated`, `category_id`) VALUES
(1, 'Acer Aspire Lite AL15-52 12th Gen Intel Core i3 1215U 16GB RAM, 512GB SSD Steel Gray Laptop', 'acer-aspire-lite-al15-52-12th-gen-intel-core-i3-1215u-16gb-ram-512gb-ssd-steel-gray-laptop', 'Brand\r\nAcer\r\nModel\r\nAcer Aspire Lite AL15-52\r\nLaptop Series\r\nAspire\r\nProcessor Brand\r\nIntel\r\nGeneration\r\n12th (Intel)\r\nProcessor Model\r\nCore i3 1215U\r\nCPU Cache\r\n10MB\r\nNPU\r\nNo\r\nDisplay Size (Inch)\r\n15.6\r\nDisplay Type\r\nFHD LED Display\r\nDisplay Resolution\r\n1920x1080\r\nTouch Screen\r\nNo\r\nRAM\r\n16GB\r\nRAM Type\r\nDDR4\r\nHard Disk Drive (HDD)\r\nNo\r\nSolid-State Drive (SSD)\r\n512GB\r\nOptical Drive\r\nNo\r\nGraphics Chipset\r\nIntel UHD Graphics\r\nGraphics Memory\r\nShared\r\nWiFi\r\nRealtek 8822 CE WLAN\r\nBluetooth\r\nBluetooth 5.0\r\nKeyboard Back-lit\r\nNo\r\nFinger Print Sensor\r\nNo\r\nOperating System\r\nFree-Dos\r\nColor\r\nSteel Gray\r\nWeight (Kg)\r\n1.59 kg\r\nWarranty Details\r\n2 Year (1 Year Traveles) (1 year for Battery and Adapter)\r\nWarranty Claim Duration (Approximate)\r\nEstimated Warranty Claim Duration 20 Days. It may take additional time up to 40 days', 51500.00, 'products/acer-aspire-lite-al15-52-12th-gen-intel-core-i3-11731151846_hTfkRem.webp', 20, 1, '2026-02-01 15:26:15.739115', '2026-02-01 15:26:15.739115', 1),
(2, 'HP 15-fd0333TU Series 1 Intel Core 5 120U 8GB RAM, 512GB SSD 15.6 Inch FHD Display Silver Laptop', 'hp-15-fd0333tu-series-1-intel-core-5-120u-8gb-ram-512gb-ssd-156-inch-fhd-display-silver-laptop', 'Brand\r\nHp\r\nModel\r\nHP 15-fd0333TU\r\nLaptop Series\r\n15\r\nProcessor Brand\r\nIntel\r\nGeneration\r\nCore Series 1\r\nProcessor Model\r\nCore 5 120U\r\nCPU Cache\r\n12MB\r\nNPU\r\nNo\r\nDisplay Size (Inch)\r\n15.6\r\nDisplay Type\r\nFHD LED Display\r\nDisplay Resolution\r\n1920x1080\r\nTouch Screen\r\nNo\r\nRAM\r\n8GB\r\nRAM Type\r\nDDR4\r\nHard Disk Drive (HDD)\r\nNo\r\nSolid-State Drive (SSD)\r\n512GB\r\nOptical Drive\r\nNo\r\nGraphics Chipset\r\nIntel Graphics\r\nGraphics Memory\r\nShared\r\nWiFi\r\nWi-Fi 6E\r\nBluetooth\r\nBluetooth 5.3\r\nKeyboard Back-lit\r\nNo\r\nFinger Print Sensor\r\nNo\r\nOperating System\r\nWin-11 Home\r\nColor\r\nSilver\r\nWeight (Kg)\r\n1.59 kg\r\nWarranty Details\r\n2 Year (1 year for Battery and Adapter)\r\nWarranty Claim Duration (Approximate)\r\nEstimated Warranty Claim Duration 20 Days. It may take additional time up to 40 days', 72500.00, 'products/hp-15-fd0333tu-series-1-intel-core-5-120u-8gb-11756715279.webp', 15, 1, '2026-02-01 15:28:25.299972', '2026-02-01 15:28:25.299972', 1),
(3, 'Dell Inspiron 14 5440 Series 1 Intel Core 7 150U 16GB RAM, 512GB SSD 14 Inch FHD WVA Display Ice Blue Laptop', 'dell-inspiron-14-5440-series-1-intel-core-7-150u-16gb-ram-512gb-ssd-14-inch-fhd-wva-display-ice-blue-laptop', 'Brand\r\nDell\r\nModel\r\nDell Inspiron 14 5440\r\nLaptop Series\r\nInspiron\r\nProcessor Brand\r\nIntel\r\nGeneration\r\nCore Series 1\r\nProcessor Model\r\nCore 7 150U\r\nCPU Cache\r\n12MB\r\nNPU\r\nNo\r\nDisplay Size (Inch)\r\n14\r\nDisplay Type\r\nFHD+ LED Display\r\nDisplay Resolution\r\n1920x1200\r\nTouch Screen\r\nNo\r\nRAM\r\n16GB\r\nRAM Type\r\nDDR5\r\nHard Disk Drive (HDD)\r\nNo\r\nSolid-State Drive (SSD)\r\nNo\r\nOptical Drive\r\nNo\r\nGraphics Chipset\r\nIntel Graphics\r\nGraphics Memory\r\nShared\r\nWiFi\r\nRealtek Wi-Fi 6 RTL8852BE, 2x2, 802.11ax, MU-MIMO\r\nBluetooth\r\nYes\r\nKeyboard Back-lit\r\nYes\r\nFinger Print Sensor\r\nYes\r\nOperating System\r\nFree-Dos\r\nColor\r\nIce Blue\r\nWeight (Kg)\r\n1.56 kg\r\nWarranty Details\r\n3 Year (1 year for Battery and Adapter)\r\nWarranty Claim Duration (Approximate)\r\nEstimated Warranty Claim Duration 20 Days. It may take additional time up to 40 days', 114000.00, 'products/dell-inspiron-14-5440-series-1-intel-core-7-150u-11751010062.webp', 15, 1, '2026-02-01 15:52:15.400031', '2026-02-01 15:52:15.400031', 1),
(4, 'Lenovo Yoga Slim 7 14IMH9 Intel Core Ultra 5 125H 16GB RAM 512GB SSD 14 Inch FHD+ WUXGA Display AI Optimized Luna Grey Laptop', 'lenovo-yoga-slim-7-14imh9-intel-core-ultra-5-125h-16gb-ram-512gb-ssd-14-inch-fhd-wuxga-display-ai-optimized-luna-grey-laptop', 'Brand\r\nLenovo\r\nModel\r\nLenovo Yoga Slim 7 14IMH9\r\nLaptop Series\r\nYoga\r\nProcessor Brand\r\nIntel\r\nGeneration\r\nUltra\r\nProcessor Model\r\nCore Ultra 5 125H\r\nNPU\r\nYes\r\nDisplay Size (Inch)\r\n14\r\nDisplay Type\r\nFHD+ WUXGA OLED Display\r\nDisplay Resolution\r\n1920x1200\r\nTouch Screen\r\nNo\r\nRAM\r\n16GB\r\nRAM Type\r\nLPDDR5\r\nHard Disk Drive (HDD)\r\nNo\r\nSolid-State Drive (SSD)\r\n512GB\r\nOptical Drive\r\nNo\r\nGraphics Chipset\r\nIntel Arc Graphics\r\nGraphics Memory\r\nShared\r\nWiFi\r\nWi-Fi 6E, 802.11ax 2x2\r\nBluetooth\r\nBluetooth 5.3\r\nKeyboard Back-lit\r\nYes\r\nFinger Print Sensor\r\nNo\r\nOperating System\r\nWin-11 Home\r\nColor\r\nLuna Gray\r\nWeight (Kg)\r\n1.39 kg\r\nWarranty Details\r\n2 Year (1 year for Battery and Adapter)\r\nWarranty Claim Duration (Approximate)\r\nEstimated Warranty Claim Duration 20 Days. It may take additional time up to 40 days', 138000.00, 'products/lenovo-yoga-slim-7-14imh9-intel-core-ultra-5-125h-11762848903.webp', 10, 1, '2026-02-01 15:53:54.437719', '2026-02-01 15:53:54.437719', 1),
(5, 'MSI BZ09 (Barebone PC) Intel Core i5 14400 Mini Tower Black Brand PC', 'msi-bz09-barebone-pc-intel-core-i5-14400-mini-tower-black-brand-pc', 'Brand\r\nMSI\r\nForm Factor\r\nMini Tower\r\nModel\r\nMSI BZ09\r\nProcessor Brand\r\nIntel\r\nGeneration\r\n14th\r\nProcessor Model\r\nCore i5 14400\r\nCPU Cache\r\n20MB\r\nChipset\r\nIntel H610\r\nRAM\r\nNo\r\nRAM Type\r\nDDR4\r\nHard Disk Drive (HDD)\r\nNo\r\nSolid-State Drive (SSD)\r\nNo\r\nOptical Drive\r\nNo\r\nGraphics Chipset\r\nIntel UHD Graphics 730\r\nGraphics Memory\r\nShared\r\nWiFi\r\nNo\r\nBluetooth\r\nNo\r\nSpeaker (Built-in)\r\nNo\r\nMonitor\r\nNo Monitor\r\nKeyboard\r\nNo\r\nMouse\r\nNo\r\nPower Supply\r\n500W\r\nOperating System\r\nFree-Dos\r\nBody Color\r\nBlack\r\nWarranty Details\r\n3 Year (Box Mandatory While Claiming)', 45000.00, 'products/msi-bz09-barebone-pc-intel-core-i5-14400-mini-11762679303.webp', 10, 1, '2026-02-01 15:55:55.651263', '2026-02-01 15:55:55.651263', 2),
(6, 'Dell Inspiron 3030 Intel Core i3 14100 8GB RAM 512GB SSD Black Tower Brand PC', 'dell-inspiron-3030-intel-core-i3-14100-8gb-ram-512gb-ssd-black-tower-brand-pc', 'Brand\r\nDell\r\nForm Factor\r\nTower\r\nModel\r\nDell Inspiron 3030\r\nProcessor Brand\r\nIntel\r\nGeneration\r\n14th\r\nProcessor Model\r\nCore i3 14100\r\nCPU Cache\r\n12MB\r\nChipset\r\nIntel B660\r\nRAM\r\n8GB\r\nRAM Type\r\nDDR5\r\nHard Disk Drive (HDD)\r\nNo\r\nSolid-State Drive (SSD)\r\n512GB\r\nOptical Drive\r\nNo\r\nGraphics Chipset\r\nIntel UHD Graphics 730\r\nGraphics Memory\r\nShared\r\nWiFi\r\nRealtek Wi-Fi 6 RTL8852BE, 2x2, 802.11ax, MU-MIMO\r\nBluetooth\r\nYes\r\nSpeaker (Built-in)\r\nNo\r\nMonitor\r\nNo Monitor\r\nKeyboard\r\nUSB Keyboard\r\nMouse\r\nUSB Mouse\r\nPower Supply\r\n180W\r\nOperating System\r\nFree-Dos\r\nWeight\r\n5.14 kg\r\nBody Color\r\nBlack\r\nWarranty Details\r\n3 Year (Box Mandatory While Claiming)', 60000.00, 'products/dell-inspiron-3030-intel-core-i3-14100-8gb-ram-11754553967.webp', 13, 1, '2026-02-01 15:57:24.047574', '2026-02-01 15:57:24.047574', 2),
(7, 'Gigabyte GS27QCA 27 Inch 2K QHD Display Dual HDMI, DP, Curved Gaming Monitor', 'gigabyte-gs27qca-27-inch-2k-qhd-display-dual-hdmi-dp-curved-gaming-monitor', 'Brand\r\nGigabyte\r\nModel\r\nGigabyte GS27QCA\r\nSeries\r\nGaming\r\nShape\r\nWidescreen\r\nDesign\r\nBorderless Design\r\nDisplay Size (Inch)\r\n27\r\nDisplay Type\r\n2.2K QHD LED Display\r\nBorderless\r\nYes\r\nTouch Screen\r\nNo\r\nDisplay Resolution\r\n2560x1440\r\nRefresh Rate (Hz)\r\n180Hz\r\nResponse Time (ms)\r\n1ms (MPRT)\r\nHorizontal Viewing Angle\r\n178 Degree\r\nVertical Viewing Angle\r\n178 Degree\r\nSpeaker (Built-in)\r\nNo\r\nRotatable\r\nNo\r\nColor\r\nBlack\r\nWeight (Kg)\r\n4.53 kg\r\nWarranty Details\r\n3 Year (Box Mandatory While Claiming)', 36000.00, 'products/gigabyte-gs27qca-27-inch-2k-qhd-display-dual-11753591973.webp', 15, 1, '2026-02-01 15:58:55.109289', '2026-02-01 15:58:55.109289', 3),
(8, 'ASUS VP227HF 22 Inch (21.45 Inch Viewable) FHD HDMI, VGA Eye Care Gaming Monitor', 'asus-vp227hf-22-inch-2145-inch-viewable-fhd-hdmi-vga-eye-care-gaming-monitor', 'Brand\r\nAsus\r\nModel\r\nAsus VP227HF\r\nSeries\r\nGaming\r\nShape\r\nWidescreen\r\nDesign\r\n3-Side Borderless Design\r\nDisplay Size (Inch)\r\n21.45\r\nDisplay Type\r\nFHD LED Display\r\nBorderless\r\nYes\r\nTouch Screen\r\nNo\r\nDisplay Resolution\r\n1920x1080\r\nRefresh Rate (Hz)\r\n100Hz\r\nResponse Time (ms)\r\n1ms (MPRT)\r\nHorizontal Viewing Angle\r\n178 degree\r\nVertical Viewing Angle\r\n178 degree\r\nSpeaker (Built-in)\r\nNo\r\nRotatable\r\nNo\r\nColor\r\nBlack\r\nWeight (Kg)\r\n2.6 kg\r\nWarranty Details\r\n3 Year (Box Mandatory While Claiming)', 12000.00, 'products/asus-vp227hf-22-inch-2145-inch-viewable-fhd-11763374852.webp', 10, 1, '2026-02-01 16:00:46.104161', '2026-02-01 16:00:46.104161', 3),
(9, 'Canon imageCLASS LBP6030B Black Single Function Mono Laser Printer', 'canon-imageclass-lbp6030b-black-single-function-mono-laser-printer', 'Brand\r\nCanon\r\nModel\r\nCanon imageCLASS LBP6030B\r\nSeries\r\nimageCLASS\r\nType\r\nLaser\r\nFunctions\r\nPrint Only\r\nOutput Color\r\nBlack & White\r\nPrint Speed (Black)\r\n18ppm(A4), 19ppm(LTR)\r\nPrint Speed (Color)\r\nNo\r\nPrinter Resolution (Black)\r\n600 x 600dpi\r\nPrinter Resolution (Color)\r\nNo\r\nDuplex Print\r\nManual\r\nScan Speed\r\nNo\r\nScan Resolution (Pixel)\r\nNo\r\nScan Paper Size\r\nNo\r\nDuplex Scan\r\nNo\r\nCopy Speed\r\nNo\r\nCopier Resolution (Black)\r\nNo\r\nFax (Transmission) Speed (kbps)\r\nNo\r\nFax Resolution (Pixel)\r\nNo\r\nPrint Paper Size\r\nA4, B5, A5, Legal (8.5 x 14.0 Inch), Letter, EXE, 16K\r\nPrint Paper Size Max. (Inch)\r\n8.5 x 14\r\nPrinter Memory\r\n32MB\r\nInterface (Built-in)\r\nUSB\r\nMobile Printing\r\nNo\r\nRecommended Monthly Print Volume\r\n5000 Pages\r\nConsumable\r\nCanon 325 (1,600 Pages)\r\nInk Tank\r\nNo\r\nBody Color\r\nBlack\r\nPower Source/ Power Consumption\r\n220-240V (+/-10%), 50/60Hz(+/-2Hz), Max. 840W or less\r\nDimensions\r\n364 x 249 x 199mm\r\nWeight (Kg)\r\n5Kg\r\nWarranty Details\r\n1 year', 15000.00, 'products/canon-imageclass-lbp6030b-black-single-function-11746532528.webp', 11, 1, '2026-02-01 16:02:32.866896', '2026-02-01 16:02:32.866896', 4),
(10, 'Canon EOS 2000D Digital SLR Camera Body (No Warranty)', 'canon-eos-2000d-digital-slr-camera-body-no-warranty', 'Brand\r\nCanon\r\nModel\r\nCanon EOS 2000D\r\nType\r\nOnly Camera Body\r\nItem Category\r\nDSLR\r\nMega Pixels (MP)\r\n24.1\r\nLens\r\nNo Lens\r\nLens Mount\r\nCanon EF/EF-S\r\nSensor Type\r\nCMOS\r\nSensor Size\r\nAPS-C (22.3 x 14.9 mm)\r\nScreen Type\r\nTFT LCD Display\r\nScreen Size\r\n3.0 Inch\r\nTouch Screen.\r\nNo\r\nImage Res.\r\n6000 x 4000\r\nMax. Video Resolution (Pixel)\r\n1920 x 1080\r\nISO\r\nAuto, 100-6400\r\nBuilt-in flash\r\nYes (Pop-up)\r\nWireless/WiFi\r\nBuilt-In\r\nRemote Control\r\nYes (Wired and wireless)\r\nBattery.\r\nLP-E10 Rechargeable Li-ion Battery\r\nBody Color\r\nBlack\r\nBody Dimensions\r\n129 x 101.3 x 77.6mm\r\nWeight (gm)\r\n475gm\r\nCompatible Lenses\r\nAll EF and EF-S lenses\r\nWarranty Details\r\nNo warranty', 39000.00, 'products/canon-eos-2000d-digital-slr-camera-11620276637.webp', 15, 1, '2026-02-01 16:04:14.809705', '2026-02-01 16:04:14.809705', 5),
(11, 'TP-Link VIGI C320I (4mm) (2.0MP) Outdoor Bullet IP Camera', 'tp-link-vigi-c320i-4mm-20mp-outdoor-bullet-ip-camera', 'Brand\r\nTp-link\r\nModel\r\nTP-Link VIGI C320I\r\nUsage\r\nOutdoor\r\nType\r\nBullet IP Camera\r\nNumber of Camera\r\n1\r\nMega Pixels (MP)\r\n2.0\r\nMax. Camera Resolution\r\n1920 x 1080\r\nSecondary Camera Mega Pixel (MP)\r\nNot Applicable\r\nSecondary Camera Max Resolution\r\nNot Applicable\r\nNumber of Lens\r\nSingle Lens (Primary)\r\nLens\r\n4mm\r\nNight Vision\r\nYes\r\nNight Vision Mode\r\nBlack and White\r\nMic & Speaker\r\nNo\r\nSmart Alarm\r\nHuman & Vehicle Classification, Area Intrusion Detection, Line-Crossing Detection, People Detection, Vehicle Detection, Region Entering Detection, Region Exiting Detection, Object Abandoned Detection, Object Removal Detection\r\nSim Supported\r\nNo\r\nWi-Fi\r\nNo\r\nCard Slot\r\nNo\r\nHuman Detection\r\nYes\r\nViewing Angle.\r\n85.1 Degree (D)\r\nWorking Distance\r\n60 Meter\r\nPower\r\nDC / PoE\r\nApprox. Power Consumption\r\nClass 0 (PoE)\r\nBody Material\r\nPlastic\r\nColor\r\nWhite\r\nDimensions\r\n174 x 74 x 71mm\r\nWeight (gm)\r\n0.2 Kg\r\nWarranty Details\r\n2 Year (Without Adapter)', 2300.00, 'products/tp-link-vigi-c320i-4mm-20mp-outdoor-bullet-11699767971.webp', 10, 1, '2026-02-01 16:05:47.609305', '2026-02-01 16:05:47.609305', 6),
(12, 'ASUSTOR DRIVESTOR 2 AS1102T 2 Bay Tower Network Storage', 'asustor-drivestor-2-as1102t-2-bay-tower-network-storage', 'Brand\r\nAsustor\r\nModel\r\nAsustor DRIVESTOR 2 AS1102T\r\nForm-Factor\r\nDesktop\r\nNumber of Processor\r\n1\r\nProcessor Model\r\nRealtek RTD1296 ARM64 64-bit Quad-Core 1.40GHz\r\nRAM\r\n1GB\r\nMax. RAM Support\r\n1GB\r\nBays\r\n2 BAY\r\nDrive Type\r\n3.5 Inch SATA HDD\r\neSATA Port\r\nNo\r\nMax. Capacity\r\nUnmentioned\r\nDisplay\r\nNo\r\nCooling Fan Quantity\r\n1\r\nSupported RAID levels\r\nSingle JBOD RAID 0 RAID 1\r\nLan Port\r\n1 x Gigabit Lan\r\nUSB Port\r\n2 x USB 3.2 Gen 1\r\nInstalled Operating System\r\nADM 4.0 Onwards, Supports automatic firmware updates, App Central for various apps.\r\nPower Source\r\nAdapter: 65W x 1\r\nDimensions\r\n165 x 102 x 218mm\r\nWeight (Kg)\r\n1.14 kg\r\nColor\r\nBlack\r\nWarranty Details\r\n1 year', 31000.00, 'products/asustor-drivestor-2-as1102t-2-bay-tower-network-11737808070.webp', 10, 1, '2026-02-01 16:07:38.276562', '2026-02-01 16:07:38.276562', 7),
(13, 'Xtreme JALSA Bluetooth Black Speaker with Microphone', 'xtreme-jalsa-bluetooth-black-speaker-with-microphone', 'Brand\r\nXtreme\r\nModel\r\nXtreme JALSA\r\nType\r\nTrolley Speaker\r\nSpeaker Type\r\nWired & Wireless\r\nChannel\r\n3:0\r\nConnectivity Mode\r\nBluetooth & Wired\r\nRMS/Channel (Watt)\r\n40Watt x 1\r\nRMS/Subwoofer (Watt)\r\nNo\r\nOutput Power\r\n40Watt\r\nMemory Card Slot\r\nYes\r\nUSB Port\r\nYes\r\nMicrophone\r\nYes\r\nRemote Control\r\nYes\r\nFM Radio\r\nNo\r\nLighting Effect\r\nLED\r\nBattery.\r\n12v, 4.5A Acid Battery\r\nCharging Plug Type\r\nUnmentioned\r\nDimensions\r\n300 x 549 x 315mm\r\nColor\r\nBlack\r\nWarranty Details\r\n1 Year (Without Adapter)', 13000.00, 'products/xtreme-jalsa-bluetooth-black-speaker-with-11648645681_1.webp', 10, 1, '2026-02-01 16:10:41.283599', '2026-02-01 16:10:41.283599', 8),
(14, 'Pc Power 10400mAh Mini DC UPS #PCMU1018LCD', 'pc-power-10400mah-mini-dc-ups-pcmu1018lcd', 'Brand\r\nPc Power\r\nModel\r\nPc Power 10400mAh\r\nType\r\nMini UPS\r\nLoad Capacity\r\n18W\r\nTransfer Rate\r\nUnmentioned\r\nLED Display\r\nYes\r\nBattery.\r\n10400mAh\r\nColor\r\nBlack\r\nWarranty Details\r\n1 Year (Without Adapter)', 2700.00, 'products/pc-power-10400mah-mini-dc-ups-11738816099_1.webp', 5, 1, '2026-02-01 16:13:33.688144', '2026-02-01 16:13:33.688144', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_cart_user_id_9b4220b9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cart_cartitem`
--
ALTER TABLE `cart_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` (`cart_id`),
  ADD KEY `cart_cartitem_product_id_b24e265a_fk_products_product_id` (`product_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderitem_product_id_afe4254a_fk_products_product_id` (`product_id`);

--
-- Indexes for table `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `products_product_category_id_9b594869_fk_products_category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_cart`
--
ALTER TABLE `cart_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_cartitem`
--
ALTER TABLE `cart_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_cartitem`
--
ALTER TABLE `cart_cartitem`
  ADD CONSTRAINT `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`id`),
  ADD CONSTRAINT `cart_cartitem_product_id_b24e265a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orders_orderitem`
--
ALTER TABLE `orders_orderitem`
  ADD CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- Constraints for table `products_product`
--
ALTER TABLE `products_product`
  ADD CONSTRAINT `products_product_category_id_9b594869_fk_products_category_id` FOREIGN KEY (`category_id`) REFERENCES `products_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
