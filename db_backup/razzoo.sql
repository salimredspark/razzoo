-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 02:57 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `razzoo`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(42, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 7, 'customer_firstname', 'text', 'Firstname', 1, 1, 1, 1, 1, 1, '{}', 2),
(44, 7, 'customer_lastname', 'text', 'Lastname', 1, 1, 1, 1, 1, 1, '{}', 3),
(45, 7, 'customer_email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(46, 7, 'customer_mobile', 'text', 'Mobile', 0, 1, 1, 1, 1, 1, '{}', 5),
(47, 7, 'customer_industry', 'text', 'Industry', 0, 1, 1, 1, 1, 1, '{}', 6),
(48, 7, 'allow_consultants_call', 'text', 'Allow Consultants Call', 0, 1, 1, 1, 1, 1, '{}', 7),
(49, 7, 'loan_amout', 'text', 'Loan Amout', 0, 1, 1, 1, 1, 1, '{}', 8),
(50, 7, 'loan_purpose', 'text', 'Loan Purpose', 0, 1, 1, 1, 1, 1, '{}', 9),
(51, 7, 'abn_number', 'text', 'ABN Number', 0, 1, 1, 1, 1, 1, '{}', 10),
(52, 7, 'dl_number', 'text', 'DL Number', 0, 1, 1, 1, 1, 1, '{}', 11),
(53, 7, 'state_issue', 'text', 'State Issue', 0, 1, 1, 1, 1, 1, '{}', 12),
(54, 7, 'business_trading', 'text', 'Business Trading', 0, 1, 1, 1, 1, 1, '{}', 13),
(55, 7, 'business_monthly_turnover', 'text', 'Monthly Turnover', 0, 1, 1, 1, 1, 1, '{}', 14),
(56, 7, 'business_name', 'text', 'Business Name', 0, 1, 1, 1, 1, 1, '{}', 15),
(57, 7, 'business_state', 'text', 'Business State', 0, 1, 1, 1, 1, 1, '{}', 16),
(58, 7, 'accounting_software', 'text', 'Accounting Software', 0, 1, 1, 1, 1, 1, '{}', 17),
(59, 7, 'ip_address', 'text', 'IP Address', 1, 1, 1, 0, 0, 0, '{}', 18),
(60, 7, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '{}', 19),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 1, 1, 1, 0, 0, 0, '{}', 20),
(62, 7, 'loan_application_belongstomany_loan_application_business_file_relationship', 'relationship', 'Business Files', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Loan\",\"table\":\"loan_application_business_files\",\"type\":\"hasMany\",\"column\":\"id\",\"key\":\"file_name\",\"label\":\"application_id\",\"pivot_table\":\"loan_application_business_files\",\"pivot\":\"0\",\"taggable\":\"0\"}', 21),
(63, 7, 'loan_status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 19),
(64, 7, 'facebook_id', 'text', 'Facebook Login', 0, 1, 1, 1, 1, 1, '{}', 20),
(65, 7, 'customer_address1', 'text', 'Customer Address1', 0, 1, 1, 1, 1, 1, '{}', 6),
(66, 7, 'customer_address2', 'text', 'Customer Address2', 0, 1, 1, 1, 1, 1, '{}', 7),
(67, 7, 'customer_state', 'text', 'Customer State', 0, 1, 1, 1, 1, 1, '{}', 8),
(68, 7, 'customer_city', 'text', 'Customer City', 0, 1, 1, 1, 1, 1, '{}', 9),
(69, 7, 'customer_postalcode', 'text', 'Customer Postalcode', 0, 1, 1, 1, 1, 1, '{}', 10),
(70, 7, 'customer_country', 'text', 'Customer Country', 0, 1, 1, 1, 1, 1, '{}', 11),
(71, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 8, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 8, 'firstname', 'text', 'Firstname', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 8, 'lastname', 'text', 'Lastname', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 8, 'ip_address', 'text', 'Ip Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 8, 'created_at', 'timestamp', 'Created At', 1, 0, 0, 0, 0, 0, '{}', 6),
(77, 8, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-02 01:29:02', '2019-12-02 01:29:02'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-02 01:29:02', '2019-12-02 01:29:02'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-02 01:29:03', '2019-12-02 01:29:03'),
(7, 'loan_application', 'loan', 'Loan Application', 'Loan Applications', 'voyager-list', 'TCG\\Voyager\\Models\\Loan', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerLoanController', NULL, 1, 0, '{\"order_column\":\"created_at\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-06 04:15:02', '2019-12-10 08:22:03'),
(8, 'newsletter_subscriber', 'newsletter', 'Newsletter Subscriber', 'Newsletter Subscribers', 'voyager-list', 'TCG\\Voyager\\Models\\Newsletter', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerNewsletterController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-10 08:14:52', '2019-12-10 08:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_application`
--

CREATE TABLE `loan_application` (
  `id` int(11) NOT NULL,
  `customer_firstname` varchar(256) NOT NULL,
  `customer_lastname` varchar(256) NOT NULL,
  `customer_email` varchar(256) NOT NULL,
  `customer_mobile` varchar(20) DEFAULT NULL,
  `customer_address1` varchar(256) DEFAULT NULL,
  `customer_address2` varchar(256) DEFAULT NULL,
  `customer_state` varchar(150) DEFAULT NULL,
  `customer_city` varchar(150) DEFAULT NULL,
  `customer_postalcode` varchar(100) DEFAULT NULL,
  `customer_country` varchar(150) DEFAULT NULL,
  `customer_industry` varchar(255) DEFAULT NULL,
  `allow_consultants_call` varchar(10) DEFAULT NULL,
  `loan_amout` varchar(20) DEFAULT NULL,
  `loan_purpose` text,
  `abn_number` varchar(100) DEFAULT NULL,
  `dl_number` varchar(100) DEFAULT NULL,
  `state_issue` text,
  `business_trading` varchar(100) DEFAULT NULL,
  `business_monthly_turnover` varchar(100) DEFAULT NULL,
  `business_name` varchar(256) DEFAULT NULL,
  `business_state` varchar(256) DEFAULT NULL,
  `accounting_software` varchar(150) DEFAULT NULL,
  `ip_address` varchar(150) NOT NULL,
  `loan_status` varchar(20) NOT NULL,
  `facebook_id` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_application`
--

INSERT INTO `loan_application` (`id`, `customer_firstname`, `customer_lastname`, `customer_email`, `customer_mobile`, `customer_address1`, `customer_address2`, `customer_state`, `customer_city`, `customer_postalcode`, `customer_country`, `customer_industry`, `allow_consultants_call`, `loan_amout`, `loan_purpose`, `abn_number`, `dl_number`, `state_issue`, `business_trading`, `business_monthly_turnover`, `business_name`, `business_state`, `accounting_software`, `ip_address`, `loan_status`, `facebook_id`, `created_at`, `updated_at`) VALUES
(1000000001, 'Salim', 'Kureshi', 'salim@redsparkinfo.com', '9909300392', 'Atlanta airport, Atlanta, GA 30334, USA', NULL, 'GA', 'Atlanta', '30334', 'US', 'Healthcare', 'Yes', 'Less than $5,000', 'Marketing', '0092882882', '998838838', 'New Shop', 'Less than 12 months', '2500', 'Red', 'Gujarat', 'MYOB', '::1', 'Pending', '', '2019-12-10 11:38:42', '2019-12-10 06:08:42'),
(1000000002, 'Deval', 'Barot', 'deval@redsparkifo.co.in', '9898338844', '', '', '', '', '', NULL, 'Healthcare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '', '', '2019-12-04 00:15:41', '2019-12-04 00:15:41'),
(1000000003, 'Nirav', 'Patel', 'nirav@redsparkinfo.co.in', '8738473874', '', '', '', '', '', NULL, 'Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '', '', '2019-12-04 00:19:05', '2019-12-04 00:19:05'),
(1000000004, 'Vidhi', 'Patel', 'vidhi@redsparkinfo.co.in', '8393874874', '', '', '', '', '', NULL, 'Healthcare', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '', '', '2019-12-04 06:01:39', '2019-12-04 00:31:39'),
(1000000005, 'Suhas', 'Patel', 'suhas@redsparkinfo.co.in', '9298474737', '', '', '', '', '', NULL, 'Healthcare', NULL, '$5,000 - $10,000', 'Marketing', '0092882882', '998838838', 'New Shop', 'Less than 12 months', '2500', 'Spark', 'Gujarat', 'MYOB', '::1', '', '', '2019-12-04 07:08:48', '2019-12-04 01:38:48'),
(1000000006, 'Deval', 'Barot', 'dev@aa.com', '4234234234', '998 Fourth Ave, San Diego, CA 92101, USA', '998 Fourth Ave', 'CA', 'San Diego', '92101', 'US', 'Healthcare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-09 14:47:57', '2019-12-09 09:17:57'),
(1000000007, 'dsad', 'sadasd', 'aaa@aaa.com', '423423432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 01:30:39', '2019-12-10 01:30:39'),
(1000000008, 'dsad', 'sadasd', 'aaa@aaa.com', '4234234323', 'Atlanta airport, Atlanta, GA 30334, USA', NULL, 'GA', 'Atlanta', '30334', 'US', 'Hospitality', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 07:01:01', '2019-12-10 01:31:01'),
(1000000009, 'dsad', 'asdasd', 'asdasda', '111111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 01:32:16', '2019-12-10 01:32:16'),
(1000000010, 'dsad', 'asdasd', 'asdasda@aaa.com', '111111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 07:02:21', '2019-12-10 01:32:21'),
(1000000011, 'dsad', 'asdasd', 'asdasda@aaa.com', '1111111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 01:32:20', '2019-12-10 01:32:20'),
(1000000012, 'dsad', 'asdasd', 'asdasda@aaa.com', '11111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 01:32:20', '2019-12-10 01:32:20'),
(1000000013, 'dsad', 'asdasd', 'asdasda@aaa.com', '1111111111', 'Reguliersbreestraat 23, 1017 CL Amsterdam, Netherlands', '23 Reguliersbreestraat', 'NH', 'Amsterdam', '1017 CL', 'NL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-10 07:02:59', '2019-12-10 01:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_bankstatements`
--

CREATE TABLE `loan_application_bankstatements` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `file_name` varchar(256) NOT NULL,
  `file_url` varchar(256) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_application_bankstatements`
--

INSERT INTO `loan_application_bankstatements` (`id`, `application_id`, `file_name`, `file_url`, `updated_at`, `created_at`) VALUES
(1, 1000000001, 'demo 3.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-10 02:07:04', '2019-12-10 02:07:04'),
(2, 1000000001, 'demo 6.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-10 02:10:17', '2019-12-10 02:10:17'),
(3, 1000000001, 'demo 4.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-10 03:10:28', '2019-12-10 03:10:28'),
(5, 1000000001, 'demo 2.png.png', '/storage/loan_application/1000000001/', '2019-12-10 06:09:33', '2019-12-10 06:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_business_files`
--

CREATE TABLE `loan_application_business_files` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `file_name` varchar(256) NOT NULL,
  `file_url` varchar(256) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_application_business_files`
--

INSERT INTO `loan_application_business_files` (`id`, `application_id`, `file_name`, `file_url`, `updated_at`, `created_at`) VALUES
(2, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-04 05:24:53', '2019-12-04 05:24:53'),
(3, 1000000001, 'icon-tick.png.png', '/uploads/loan_application/1000000001/', '2019-12-04 07:41:04', '2019-12-04 07:41:04'),
(4, 1000000001, 'logo.png.png', '/uploads/loan_application/1000000001/', '2019-12-04 08:19:29', '2019-12-04 08:19:29'),
(5, 1000000001, 'icon-hospitality.png.png', '/uploads/loan_application/1000000001/', '2019-12-04 08:21:54', '2019-12-04 08:21:54'),
(6, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-04 08:40:22', '2019-12-04 08:40:22'),
(7, 1000000001, 'icon-education.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 00:27:26', '2019-12-09 00:27:26'),
(8, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 00:51:41', '2019-12-09 00:51:41'),
(9, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:04:22', '2019-12-09 01:04:22'),
(10, 1000000001, 'icon-hospitality.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:06:23', '2019-12-09 01:06:23'),
(11, 1000000001, 'icon-education.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:09:15', '2019-12-09 01:09:15'),
(12, 1000000001, 'icon-hospitality.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:10:22', '2019-12-09 01:10:22'),
(13, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:11:00', '2019-12-09 01:11:00'),
(14, 1000000001, 'icon-tick.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:11:03', '2019-12-09 01:11:03'),
(15, 1000000001, 'logo.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:15:01', '2019-12-09 01:15:01'),
(16, 1000000001, 'phone-icon.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:15:04', '2019-12-09 01:15:04'),
(17, 1000000001, 'icon-hospitality.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:16:56', '2019-12-09 01:16:56'),
(18, 1000000001, 'icon-tick.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:16:59', '2019-12-09 01:16:59'),
(19, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:22:40', '2019-12-09 01:22:40'),
(20, 1000000001, 'icon-tick.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:22:43', '2019-12-09 01:22:43'),
(21, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:25:06', '2019-12-09 01:25:06'),
(22, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:25:33', '2019-12-09 01:25:33'),
(23, 1000000001, 'icon-hospitality.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:27:47', '2019-12-09 01:27:47'),
(24, 1000000001, 'icon-healthcare.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:33:58', '2019-12-09 01:33:58'),
(27, 1000000001, 'phone-icon.png.png', '/uploads/loan_application/1000000001/', '2019-12-09 01:39:17', '2019-12-09 01:39:17'),
(28, 1000000001, '2019_11_07_13_46_21_C.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 01:39:29', '2019-12-09 01:39:29'),
(30, 1000000001, 'image_2.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 01:39:39', '2019-12-09 01:39:39'),
(32, 1000000001, 'image_2.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 01:40:51', '2019-12-09 01:40:51'),
(33, 1000000001, 'image_2.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 01:51:50', '2019-12-09 01:51:50'),
(34, 1000000001, 'image_1.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 06:33:34', '2019-12-09 06:33:34'),
(35, 1000000001, 'image_2.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 06:33:37', '2019-12-09 06:33:37'),
(37, 1000000001, 'index2.jpg.jpg', '/uploads/loan_application/1000000001/', '2019-12-09 06:33:50', '2019-12-09 06:33:50'),
(38, 1000000001, 'index2.webp.webp', '/uploads/loan_application/1000000001/', '2019-12-09 06:33:53', '2019-12-09 06:33:53'),
(39, 1000000001, 'index1.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 07:25:24', '2019-12-09 07:25:24'),
(40, 1000000001, 'index1.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 07:32:22', '2019-12-09 07:32:22'),
(41, 1000000001, 'image_1.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 07:32:30', '2019-12-09 07:32:30'),
(42, 1000000001, 'image_2.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 07:32:30', '2019-12-09 07:32:30'),
(43, 1000000001, 'image_1.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 09:00:47', '2019-12-09 09:00:47'),
(44, 1000000001, 'image_2.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 09:00:47', '2019-12-09 09:00:47'),
(45, 1000000001, 'image_2.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 09:01:08', '2019-12-09 09:01:08'),
(46, 1000000001, 'demo 5.png.png', '/storage/loan_application/1000000001/', '2019-12-09 09:19:15', '2019-12-09 09:19:15'),
(47, 1000000001, 'demo 1.png.png', '/storage/loan_application/1000000001/', '2019-12-09 09:19:18', '2019-12-09 09:19:18'),
(48, 1000000001, 'demo 4.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-09 09:19:20', '2019-12-09 09:19:20'),
(49, 1000000001, 'demo 3.jpg.jpg', '/storage/loan_application/1000000001/', '2019-12-10 03:11:15', '2019-12-10 03:11:15'),
(50, 1000000001, 'demo 2.png.png', '/storage/loan_application/1000000001/', '2019-12-10 03:11:17', '2019-12-10 03:11:17'),
(51, 1000000001, 'demo 5.png.png', '/storage/loan_application/1000000001/', '2019-12-10 06:09:46', '2019-12-10 06:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-02 01:29:11', '2019-12-02 23:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-01 19:59:11', '2019-12-01 19:59:11', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2019-12-01 19:59:12', '2019-12-10 08:16:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2019-12-01 19:59:12', '2019-12-10 08:16:15', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2019-12-01 19:59:12', '2019-12-10 08:16:15', 'voyager.roles.index', NULL),
(5, 1, 'Developer Tools', '', '_self', 'voyager-tools', '#000000', NULL, 7, '2019-12-01 19:59:12', '2019-12-10 08:16:15', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2019-12-01 19:59:12', '2019-12-10 08:16:16', 'voyager.settings.index', NULL),
(14, 1, 'Loan Application', '', '_self', 'voyager-list', '#000000', NULL, 2, '2019-12-06 04:21:34', '2019-12-06 07:01:00', 'voyager.loan.index', 'null'),
(16, 1, 'Newsletter', '', '_self', 'voyager-list', '#000000', NULL, 3, '2019-12-10 08:16:08', '2019-12-10 08:16:35', 'voyager.newsletter.index', 'null');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `firstname` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `ip_address` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter_subscriber`
--

INSERT INTO `newsletter_subscriber` (`id`, `email`, `firstname`, `lastname`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'salim@redsparkinfo.co.in', NULL, NULL, '::1', '2019-12-09 19:49:19', '2019-12-09 19:49:19');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-02 01:29:13', '2019-12-02 01:29:13'),
(2, 'browse_bread', NULL, '2019-12-02 01:29:14', '2019-12-02 01:29:14'),
(3, 'browse_database', NULL, '2019-12-02 01:29:14', '2019-12-02 01:29:14'),
(4, 'browse_media', NULL, '2019-12-02 01:29:15', '2019-12-02 01:29:15'),
(5, 'browse_compass', NULL, '2019-12-02 01:29:15', '2019-12-02 01:29:15'),
(6, 'browse_menus', 'menus', '2019-12-02 01:29:15', '2019-12-02 01:29:15'),
(7, 'read_menus', 'menus', '2019-12-02 01:29:17', '2019-12-02 01:29:17'),
(8, 'edit_menus', 'menus', '2019-12-02 01:29:18', '2019-12-02 01:29:18'),
(9, 'add_menus', 'menus', '2019-12-02 01:29:18', '2019-12-02 01:29:18'),
(10, 'delete_menus', 'menus', '2019-12-02 01:29:18', '2019-12-02 01:29:18'),
(11, 'browse_roles', 'roles', '2019-12-02 01:29:18', '2019-12-02 01:29:18'),
(12, 'read_roles', 'roles', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(13, 'edit_roles', 'roles', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(14, 'add_roles', 'roles', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(15, 'delete_roles', 'roles', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(16, 'browse_users', 'users', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(17, 'read_users', 'users', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(18, 'edit_users', 'users', '2019-12-02 01:29:19', '2019-12-02 01:29:19'),
(19, 'add_users', 'users', '2019-12-02 01:29:20', '2019-12-02 01:29:20'),
(20, 'delete_users', 'users', '2019-12-02 01:29:21', '2019-12-02 01:29:21'),
(21, 'browse_settings', 'settings', '2019-12-02 01:29:21', '2019-12-02 01:29:21'),
(22, 'read_settings', 'settings', '2019-12-02 01:29:21', '2019-12-02 01:29:21'),
(23, 'edit_settings', 'settings', '2019-12-02 01:29:21', '2019-12-02 01:29:21'),
(24, 'add_settings', 'settings', '2019-12-02 01:29:21', '2019-12-02 01:29:21'),
(25, 'delete_settings', 'settings', '2019-12-02 01:29:22', '2019-12-02 01:29:22'),
(26, 'browse_hooks', NULL, '2019-12-02 01:29:29', '2019-12-02 01:29:29'),
(27, 'read_loan', 'loan_application', NULL, NULL),
(28, 'browse_loan_application', 'loan_application', '2019-12-04 08:46:17', '2019-12-04 08:46:17'),
(29, 'read_loan_application', 'loan_application', '2019-12-04 08:46:17', '2019-12-04 08:46:17'),
(30, 'edit_loan_application', 'loan_application', '2019-12-04 08:46:17', '2019-12-04 08:46:17'),
(31, 'add_loan_application', 'loan_application', '2019-12-04 08:46:17', '2019-12-04 08:46:17'),
(32, 'delete_loan_application', 'loan_application', '2019-12-04 08:46:17', '2019-12-04 08:46:17'),
(33, 'browse_newsletter_subscriber', 'newsletter_subscriber', '2019-12-10 08:14:53', '2019-12-10 08:14:53'),
(34, 'read_newsletter_subscriber', 'newsletter_subscriber', '2019-12-10 08:14:53', '2019-12-10 08:14:53'),
(35, 'edit_newsletter_subscriber', 'newsletter_subscriber', '2019-12-10 08:14:53', '2019-12-10 08:14:53'),
(36, 'add_newsletter_subscriber', 'newsletter_subscriber', '2019-12-10 08:14:53', '2019-12-10 08:14:53'),
(37, 'delete_newsletter_subscriber', 'newsletter_subscriber', '2019-12-10 08:14:53', '2019-12-10 08:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', '2019-12-02 01:29:13', '2019-12-03 00:29:35'),
(2, 'Admin', 'Administrator', '2019-12-02 01:29:13', '2019-12-03 00:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Razzoo', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Your go to place for Business Loans', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\December2019\\pu06Nzrk9DyFRMjBcacz.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', NULL, '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Razzoo', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Razzoo.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', NULL, '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\December2019\\6R5C9Pnq2MuyVVzYVoXK.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '121332432432323232432', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `facebook_id` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `facebook_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Super Admin', 'salim@redsparkinfo.co.in', 'users\\December2019\\PpH7YsztWYzMPhWa836v.jpg', NULL, '$2y$10$SKrIacr302vUad8kEMQwbuva/nXyhnXtc9eNXR.hqHs2gKWzfDwYW', NULL, '{\"locale\":\"en\"}', NULL, '2019-12-09 07:21:29'),
(2, 2, NULL, 'Admin', 'admin@razzoo.com', 'users/default.png', NULL, '$2y$10$xFgnOoLgUsgnDFuNqUWqe.W0WUUa3wKrSD0knMwDk9084eEKM85fO', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_application`
--
ALTER TABLE `loan_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_application_bankstatements`
--
ALTER TABLE `loan_application_bankstatements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id` (`application_id`);

--
-- Indexes for table `loan_application_business_files`
--
ALTER TABLE `loan_application_business_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_id` (`application_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_application`
--
ALTER TABLE `loan_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000014;

--
-- AUTO_INCREMENT for table `loan_application_bankstatements`
--
ALTER TABLE `loan_application_bankstatements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loan_application_business_files`
--
ALTER TABLE `loan_application_business_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan_application_bankstatements`
--
ALTER TABLE `loan_application_bankstatements`
  ADD CONSTRAINT `loan_application_bankstatements_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `loan_application` (`id`);

--
-- Constraints for table `loan_application_business_files`
--
ALTER TABLE `loan_application_business_files`
  ADD CONSTRAINT `loan_application_business_files_ibfk_1` FOREIGN KEY (`application_id`) REFERENCES `loan_application` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
