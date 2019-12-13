-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 01:42 PM
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
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(256) NOT NULL,
  `contact_email` varchar(256) NOT NULL,
  `contact_message` text NOT NULL,
  `ip_address` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `contact_name`, `contact_email`, `contact_message`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'Salim', 'salim@redsparkinfo.com', 'this is test message', '::1', '2019-12-10 19:36:29', '2019-12-10 19:36:29'),
(2, 'Salim', 'salim@redsparkinfo.com', 'this is test message', '::1', '2019-12-10 19:37:51', '2019-12-10 19:37:51'),
(3, 'Salim', 'salim@redsparkinfo.com', 'this is test message', '::1', '2019-12-10 19:39:03', '2019-12-10 19:39:03'),
(4, 'Sandip', 'sandip@gmailc.om', 'this is test from sandip', '::1', '2019-12-10 19:42:06', '2019-12-10 19:42:06');

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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 6),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 7),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 8),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 2),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 14),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 11),
(42, 7, 'id', 'number', 'Id', 1, 1, 1, 0, 0, 0, '{}', 1),
(43, 7, 'customer_firstname', 'text', 'Firstname', 1, 1, 1, 1, 1, 1, '{}', 3),
(44, 7, 'customer_lastname', 'text', 'Lastname', 1, 1, 1, 1, 1, 1, '{}', 4),
(45, 7, 'customer_email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(46, 7, 'customer_mobile', 'number', 'Mobile', 0, 1, 1, 1, 1, 1, '{}', 6),
(47, 7, 'customer_industry', 'text', 'Industry', 0, 0, 1, 1, 1, 1, '{}', 9),
(48, 7, 'allow_consultants_call', 'text', 'Allow Consultants Call', 0, 0, 1, 1, 1, 1, '{}', 10),
(49, 7, 'loan_amout', 'text', 'Loan Amout', 0, 1, 1, 1, 1, 1, '{}', 12),
(50, 7, 'loan_purpose', 'text', 'Loan Purpose', 0, 0, 1, 1, 1, 1, '{}', 14),
(51, 7, 'abn_number', 'number', 'ABN Number', 0, 0, 1, 1, 1, 1, '{}', 16),
(52, 7, 'dl_number', 'text', 'DL Number', 0, 0, 1, 1, 1, 1, '{}', 18),
(53, 7, 'state_issue', 'text', 'State Issue', 0, 0, 1, 1, 1, 1, '{}', 19),
(54, 7, 'business_trading', 'text', 'Business Trading', 0, 0, 1, 1, 1, 1, '{}', 20),
(55, 7, 'business_monthly_turnover', 'text', 'Monthly Turnover', 0, 1, 1, 1, 1, 1, '{}', 21),
(56, 7, 'business_name', 'text', 'Business Name', 0, 1, 1, 1, 1, 1, '{}', 22),
(57, 7, 'business_state', 'text', 'Business State', 0, 0, 1, 1, 1, 1, '{}', 23),
(58, 7, 'accounting_software', 'text', 'Accounting Software', 0, 0, 1, 1, 1, 1, '{}', 24),
(59, 7, 'ip_address', 'text', 'IP Address', 1, 0, 1, 0, 0, 0, '{}', 25),
(60, 7, 'created_at', 'timestamp', 'Created At', 1, 0, 1, 0, 0, 0, '{}', 26),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 1, 0, 1, 0, 0, 0, '{}', 28),
(62, 7, 'loan_application_belongstomany_loan_application_business_file_relationship', 'relationship', 'Business Files', 0, 0, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\LoanApplicationBusinessFiles\",\"table\":\"loan_application_business_files\",\"type\":\"hasMany\",\"column\":\"application_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"loan_application\",\"pivot\":\"0\",\"taggable\":\"0\"}', 29),
(63, 7, 'loan_status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 2),
(64, 7, 'facebook_id', 'text', 'Facebook Login', 0, 0, 1, 1, 1, 1, '{}', 27),
(65, 7, 'customer_address1', 'text_area', 'Customer Address1', 0, 0, 1, 1, 1, 1, '{}', 7),
(66, 7, 'customer_address2', 'text_area', 'Customer Address2', 0, 0, 1, 1, 1, 1, '{}', 8),
(67, 7, 'customer_state', 'text', 'Customer State', 0, 0, 1, 1, 1, 1, '{}', 11),
(68, 7, 'customer_city', 'text', 'Customer City', 0, 0, 1, 1, 1, 1, '{}', 13),
(69, 7, 'customer_postalcode', 'text', 'Customer Postalcode', 0, 0, 1, 1, 1, 1, '{}', 15),
(70, 7, 'customer_country', 'text', 'Customer Country', 0, 0, 1, 1, 1, 1, '{}', 17),
(71, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 8, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 8, 'firstname', 'text', 'Firstname', 0, 1, 1, 1, 1, 1, '{}', 3),
(74, 8, 'lastname', 'text', 'Lastname', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 8, 'ip_address', 'text', 'Ip Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 8, 'created_at', 'timestamp', 'Created At', 1, 0, 0, 0, 0, 0, '{}', 6),
(77, 8, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '{}', 7),
(78, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 10, 'contact_name', 'text', 'Contact Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(80, 10, 'contact_email', 'text', 'Contact Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(81, 10, 'contact_message', 'markdown_editor', 'Contact Message', 1, 0, 1, 1, 1, 1, '{}', 4),
(82, 10, 'ip_address', 'text', 'Ip Address', 1, 1, 1, 1, 1, 1, '{}', 5),
(83, 10, 'created_at', 'timestamp', 'Created At', 1, 1, 0, 0, 0, 0, '{}', 6),
(84, 10, 'updated_at', 'timestamp', 'Updated At', 1, 1, 0, 0, 0, 0, '{}', 7),
(85, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 11, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(87, 11, 'content', 'markdown_editor', 'Content', 1, 0, 1, 1, 1, 1, '{}', 4),
(88, 11, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(89, 11, 'updated_at', 'timestamp', 'Updated At', 1, 1, 0, 0, 0, 0, '{}', 5),
(90, 11, 'created_at', 'timestamp', 'Created At', 1, 1, 0, 0, 0, 0, '{}', 6),
(92, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(94, 12, 'department', 'text', 'Department', 1, 1, 1, 1, 1, 1, '{}', 4),
(95, 12, 'profile', 'markdown_editor', 'Profile', 1, 0, 1, 1, 1, 1, '{}', 5),
(96, 12, 'photo', 'image', 'Photo', 1, 1, 1, 1, 1, 1, '{}', 2),
(97, 12, 'facebook_url', 'text', 'Facebook Url', 1, 0, 1, 1, 1, 1, '{}', 6),
(98, 12, 'twitter_url', 'text', 'Twitter Url', 1, 0, 1, 1, 1, 1, '{}', 7),
(99, 12, 'linkedin_url', 'text', 'Linkedin Url', 1, 0, 1, 1, 1, 1, '{}', 8),
(100, 12, 'updated_at', 'timestamp', 'Updated At', 1, 1, 0, 0, 0, 0, '{}', 9),
(101, 12, 'created_at', 'timestamp', 'Created At', 1, 1, 0, 0, 0, 0, '{}', 10),
(102, 1, 'facebook_id', 'text', 'Facebook Id', 0, 0, 1, 1, 1, 1, '{}', 4),
(103, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 1, 1, 1, 1, '{}', 9),
(105, 7, 'loan_application_hasone_loan_application_api_response_relationship', 'relationship', 'Bank Statements API', 0, 0, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\LoanApplicationApiResponse\",\"table\":\"loan_application_api_response\",\"type\":\"hasOne\",\"column\":\"application_id\",\"key\":\"application_id\",\"label\":\"api_name\",\"pivot_table\":\"contactus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 30);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-02 01:29:02', '2019-12-12 03:40:04'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-02 01:29:02', '2019-12-02 01:29:02'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-02 01:29:03', '2019-12-02 01:29:03'),
(7, 'loan_application', 'loan', 'Loan Application', 'Loan Applications', 'voyager-list', 'TCG\\Voyager\\Models\\Loan', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerLoanController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-06 04:15:02', '2019-12-13 05:20:11'),
(8, 'newsletter_subscriber', 'newsletter', 'Newsletter Subscriber', 'Newsletter Subscribers', 'voyager-list', 'TCG\\Voyager\\Models\\Newsletter', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerNewsletterController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-10 08:14:52', '2019-12-12 07:39:48'),
(10, 'contactus', 'contactus', 'Contact Us', 'Contact Us', 'voyager-list', 'TCG\\Voyager\\Models\\Contactus', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerContactusController', NULL, 1, 0, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-12-11 01:33:05', '2019-12-12 07:39:19'),
(11, 'pages', 'pages', 'Pages', 'Pages', 'voyager-list', 'TCG\\Voyager\\Models\\Pages', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerPagesController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-11 03:21:51', '2019-12-12 03:38:14'),
(12, 'staff', 'staff', 'Staff', 'Staff', NULL, 'TCG\\Voyager\\Models\\Staff', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerStaffController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-12 00:45:23', '2019-12-12 03:37:35');

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
(1000000001, 'Salim', 'Kureshi', 'salim@redsparkinfo.com', '9909300392', '4320 Congress Ave, Austin, TX 78701, USA', '4320 Congress Ave', 'TX', 'Austin', '78701', 'US', 'Healthcare', 'Yes', 'Less than $5,000', 'Marketing', '51824753556', '998838838', 'New Shop', 'Less than 12 months', '2500', 'Red', 'Gujarat', 'MYOB', '::1', 'Pending', '', '2019-12-13 09:30:10', '2019-12-13 04:00:10'),
(1000000002, 'Deval', 'Barot', 'deval@redsparkifo.co.in', '9898338844', '', '', '', '', '', NULL, 'Healthcare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '', '', '2019-12-04 00:15:41', '2019-12-04 00:15:41'),
(1000000003, 'Nirav', 'Patel', 'nirav@redsparkinfo.co.in', '8738473874', '', '', '', '', '', NULL, 'Education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '', '', '2019-12-04 00:19:05', '2019-12-04 00:19:05'),
(1000000004, 'Vidhi', 'Patel', 'vidhi@redsparkinfo.co.in', '8393874874', '', '', '', '', '', NULL, 'Healthcare', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', '', '', '2019-12-04 06:01:39', '2019-12-04 00:31:39'),
(1000000005, 'Suhas', 'Patel', 'suhas@redsparkinfo.co.in', '9298474737', '', '', '', '', '', NULL, 'Healthcare', NULL, '$5,000 - $10,000', 'Marketing', '0092882882', '998838838', 'New Shop', 'Less than 12 months', '2500', 'Spark', 'Gujarat', 'MYOB', '::1', '', '', '2019-12-04 07:08:48', '2019-12-04 01:38:48'),
(1000000006, 'Deval', 'Barot', 'dev@aa.com', '4234234234', '998 Fourth Ave, San Diego, CA 92101, USA', '998 Fourth Ave', 'CA', 'San Diego', '92101', 'US', 'Healthcare', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-09 14:47:57', '2019-12-09 09:17:57'),
(1000000021, 'Rajendra', 'Patel', 'raju@redsparkinfo.com', '8827288828', '8, Shanti Nagar Soc., Sharad Nagar, Tarsali, Vadodara, Gujarat 390009, India', NULL, 'GJ', 'Vadodara', '390009', 'IN', 'Healthcare', NULL, '$20,000 - $40,000', 'Business Expansion', '51824753556', '998838838', 'this is state if issues', 'Less than 12 months', '65000', 'New Shop', 'Gujarat', 'MYOB', '::1', 'Pending', NULL, '2019-12-12 11:49:38', '2019-12-12 06:19:38'),
(1000000022, 'Shahrukh', 'Khan', 'shah@gmail.com', '0929938843', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-12 12:02:33', '2019-12-12 06:32:33'),
(1000000025, 'Salman', 'Khan', 'salman@gmail.com', '8883777475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', 'Pending', NULL, '2019-12-12 11:54:43', '2019-12-12 06:24:43'),
(1000000026, 'Sajid', 'Nadiyadwala', 'sajid@gmail.com', '2299228822', 'Sarkhej, Narolgam, Ellisbridge, Ahmedabad, Gujarat 380006, India', NULL, 'GJ', 'Ahmedabad', '380006', 'IN', 'Healthcare', NULL, 'Less than $5,000', 'Marketing', '51824753556', '998838838', 'New Shop', 'Less than 12 months', '2500', 'Red', 'Gujarat', 'MYOB', '::1', 'Pending', NULL, '2019-12-12 12:24:04', '2019-12-12 06:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_api_response`
--

CREATE TABLE `loan_application_api_response` (
  `id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `accounting_software` varchar(256) DEFAULT NULL,
  `api_name` varchar(256) NOT NULL,
  `api_response` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_application_api_response`
--

INSERT INTO `loan_application_api_response` (`id`, `application_id`, `accounting_software`, `api_name`, `api_response`) VALUES
(1, 1000000001, 'OTHER', 'abr.business.gov.au', '{\"usageStatement\":\"The Registrar of the ABR monitors the quality of the information available on this website and updates the information regularly. However, neither the Registrar of the ABR nor the Commonwealth guarantee that the information available through this service (including search results) is accurate, up to date, complete or accept any liability arising from the use of or reliance upon this site.\",\"dateRegisterLastUpdated\":\"2019-12-13\",\"dateTimeRetrieved\":\"2019-12-13T20:30:23.6956081+11:00\",\"businessEntity\":{\"recordLastUpdatedDate\":\"2009-06-17\",\"ABN\":{\"identifierValue\":\"51824753556\",\"isCurrentIndicator\":\"Y\",\"replacedFrom\":\"0001-01-01\"},\"entityStatus\":{\"entityStatusCode\":\"Active\",\"effectiveFrom\":\"1999-11-01\",\"effectiveTo\":\"0001-01-01\"},\"ASICNumber\":\"\",\"entityType\":{\"entityTypeCode\":\"CGE\",\"entityDescription\":\"Commonwealth Government Entity\"},\"goodsAndServicesTax\":{\"effectiveFrom\":\"2000-07-01\",\"effectiveTo\":\"0001-01-01\"},\"mainName\":{\"organisationName\":\"AUSTRALIAN TAXATION OFFICE\",\"effectiveFrom\":\"1999-11-01\"},\"mainTradingName\":{\"organisationName\":\"AUSTRALIAN TAXATION OFFICE\",\"effectiveFrom\":\"2000-03-09\"},\"otherTradingName\":{\"organisationName\":\"AUSTRALIAN TAXATION OFFICE-SUPERANNUATION GROUP\",\"effectiveFrom\":\"2000-05-19\"},\"mainBusinessPhysicalAddress\":{\"stateCode\":\"NSW\",\"postcode\":\"2640\",\"effectiveFrom\":\"2009-06-16\",\"effectiveTo\":\"0001-01-01\"}}}');
INSERT INTO `loan_application_api_response` (`id`, `application_id`, `accounting_software`, `api_name`, `api_response`) VALUES
(2, 1000000001, 'OTHER', 'secure.uat.mogoplus.com', 'a:1:{i:0;O:8:\"stdClass\":20:{s:7:\"acctNum\";s:9:\"678432465\";s:13:\"reportDetails\";O:8:\"stdClass\":6:{s:8:\"accessId\";s:9:\"680008546\";s:11:\"captureDate\";s:10:\"10/12/2019\";s:10:\"reportDate\";s:10:\"13/12/2019\";s:10:\"reportTime\";s:5:\"17:17\";s:11:\"captureTime\";s:8:\"20:08:19\";s:17:\"providerReference\";s:12:\"Test10122019\";}s:16:\"applicantDetails\";O:8:\"stdClass\":2:{s:4:\"name\";s:11:\"Jones Smith\";s:8:\"address1\";s:0:\"\";}s:14:\"captureDetails\";O:8:\"stdClass\":5:{s:11:\"dateCreated\";s:16:\"10/12/2019 20:07\";s:12:\"dateAccepted\";s:16:\"10/12/2019 20:07\";s:16:\"accountsCaptured\";i:1;s:20:\"transactionsCaptured\";i:105;s:11:\"institution\";s:9:\"Demo Bank\";}s:18:\"accountPerformance\";O:8:\"stdClass\":14:{s:20:\"firstTransactionDate\";s:10:\"11/09/2019\";s:19:\"lastTransactionDate\";s:10:\"10/12/2019\";s:13:\"capturePeriod\";i:365;s:7:\"balance\";s:8:\"33269.66\";s:9:\"available\";s:8:\"33269.66\";s:11:\"totalDebits\";d:-30954.13;s:12:\"totalCredits\";d:23013.473;s:14:\"minimumBalance\";s:9:\"28,727.84\";s:14:\"maximumBalance\";s:9:\"44,081.57\";s:14:\"averageBalance\";s:1:\"?\";s:12:\"daysOverdawn\";s:1:\"0\";s:9:\"amountDue\";s:0:\"\";s:12:\"interestRate\";s:0:\"\";s:11:\"creditLimit\";s:0:\"\";}s:15:\"accountCaptured\";O:8:\"stdClass\":27:{s:8:\"sortCode\";s:6:\"650789\";s:7:\"account\";s:9:\"678432465\";s:4:\"name\";s:11:\"Jones Smith\";s:12:\"customerName\";s:11:\"Jones Smith\";s:13:\"statementName\";s:11:\"Jones Smith\";s:17:\"statementAddrName\";s:0:\"\";s:4:\"type\";s:19:\"Transaction Account\";s:7:\"product\";s:11:\"Jones Smith\";s:6:\"opened\";s:10:\"27/06/2011\";s:9:\"statement\";s:1:\"1\";s:11:\"institution\";s:9:\"Demo Bank\";s:7:\"address\";s:0:\"\";s:15:\"customerAddress\";s:0:\"\";s:7:\"balance\";s:8:\"33269.66\";s:8:\"accessId\";s:9:\"680008546\";s:10:\"holderName\";s:11:\"Jones Smith\";s:11:\"captureDate\";s:10:\"10/12/2019\";s:13:\"capturePeriod\";i:365;s:20:\"transactionsCaptured\";i:105;s:9:\"available\";s:8:\"33269.66\";s:12:\"totalCredits\";d:23013.473;s:11:\"totalDebits\";d:-30954.13;s:11:\"creditLimit\";s:0:\"\";s:10:\"maxBalance\";s:9:\"44,081.57\";s:10:\"minBalance\";s:9:\"28,727.84\";s:13:\"daysOverDrawn\";s:1:\"0\";s:12:\"interestRate\";s:0:\"\";}s:23:\"otherAccountsIdentified\";a:1:{i:0;O:8:\"stdClass\":6:{s:8:\"sortCode\";s:6:\"650789\";s:7:\"account\";s:8:\"xxxx1100\";s:4:\"name\";s:7:\"J SMITH\";s:4:\"type\";s:19:\"Transaction Account\";s:7:\"balance\";s:7:\"1051.20\";s:9:\"available\";s:7:\"1051.20\";}}s:14:\"sectionSummary\";O:8:\"stdClass\":4:{s:7:\"credits\";a:4:{i:0;O:8:\"stdClass\":5:{s:11:\"description\";s:11:\"Main Income\";s:11:\"sectionCode\";s:4:\"MAIN\";s:17:\"transactionNumber\";i:10;s:10:\"monthlyAvg\";d:1166.93;s:5:\"total\";d:13965.18;}i:1;O:8:\"stdClass\":5:{s:11:\"description\";s:16:\"Secondary Income\";s:11:\"sectionCode\";s:4:\"SEIN\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:11.59;s:5:\"total\";d:137.67;}i:2;O:8:\"stdClass\":5:{s:11:\"description\";s:13:\"Govt Payments\";s:11:\"sectionCode\";s:4:\"GOPA\";s:17:\"transactionNumber\";i:18;s:10:\"monthlyAvg\";d:192.15;s:5:\"total\";d:2298.18;}i:3;O:8:\"stdClass\":5:{s:11:\"description\";s:13:\"Other Credits\";s:11:\"sectionCode\";s:4:\"OTCR\";s:17:\"transactionNumber\";i:10;s:10:\"monthlyAvg\";d:552.66;s:5:\"total\";d:6612.44;}}s:6:\"debits\";a:4:{i:0;O:8:\"stdClass\":5:{s:11:\"description\";s:22:\"Discretionary Expenses\";s:11:\"sectionCode\";s:4:\"DIEX\";s:17:\"transactionNumber\";i:8;s:10:\"monthlyAvg\";d:-1110.51;s:5:\"total\";d:-13289.98;}i:1;O:8:\"stdClass\":5:{s:11:\"description\";s:26:\"Fixed Expenses - Financial\";s:11:\"sectionCode\";s:4:\"FIFI\";s:17:\"transactionNumber\";i:24;s:10:\"monthlyAvg\";d:-981.19;s:5:\"total\";d:-11740.87;}i:2;O:8:\"stdClass\":5:{s:11:\"description\";s:23:\"Fixed Expenses - Living\";s:11:\"sectionCode\";s:4:\"FILI\";s:17:\"transactionNumber\";i:12;s:10:\"monthlyAvg\";d:-313.24;s:5:\"total\";d:-3750.33;}i:3;O:8:\"stdClass\":5:{s:11:\"description\";s:12:\"Other Debits\";s:11:\"sectionCode\";s:4:\"OTDE\";s:17:\"transactionNumber\";i:20;s:10:\"monthlyAvg\";d:-181.48;s:5:\"total\";d:-2172.95;}}s:17:\"creditsTotalTrans\";i:41;s:15:\"debitTotalTrans\";i:64;}s:15:\"categorySummary\";O:8:\"stdClass\":4:{s:7:\"credits\";a:11:{i:0;O:8:\"stdClass\":6:{s:11:\"description\";s:20:\"Child Support Credit\";s:12:\"categoryCode\";s:4:\"CHDC\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:11.59;s:5:\"total\";d:137.67;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e75d6885-a81d-48d8-9694-3f118069f706\";s:4:\"date\";s:10:\"24/11/2019\";s:8:\"category\";s:4:\"CHDC\";s:11:\"description\";s:47:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"45.89\";s:7:\"balance\";s:8:\"42605.59\";s:11:\"cleanString\";s:13:\"CHILD SUPPORT\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0992d340-a2ce-4fd0-8971-13f92d59b5f6\";s:4:\"date\";s:10:\"17/10/2019\";s:8:\"category\";s:4:\"CHDC\";s:11:\"description\";s:47:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"45.89\";s:7:\"balance\";s:8:\"34874.92\";s:11:\"cleanString\";s:13:\"CHILD SUPPORT\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9301589a-9b23-4897-86d4-e21828a5bed0\";s:4:\"date\";s:10:\"20/09/2019\";s:8:\"category\";s:4:\"CHDC\";s:11:\"description\";s:47:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"45.89\";s:7:\"balance\";s:8:\"35622.54\";s:11:\"cleanString\";s:13:\"CHILD SUPPORT\";s:8:\"netOffId\";s:0:\"\";}}}i:1;O:8:\"stdClass\":6:{s:11:\"description\";s:8:\"Deposits\";s:12:\"categoryCode\";s:4:\"DPST\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:25.01;s:5:\"total\";d:300;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"cf611be8-e483-4b58-9f3e-6ad22606bd3f\";s:4:\"date\";s:10:\"01/11/2019\";s:8:\"category\";s:4:\"DPST\";s:11:\"description\";s:32:\"DEPOSIT INTERNET DEPOSIT 05MAR14\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"300.00\";s:7:\"balance\";s:8:\"32031.64\";s:11:\"cleanString\";s:16:\"INTERNET DEPOSIT\";s:8:\"netOffId\";s:0:\"\";}}}i:2;O:8:\"stdClass\":6:{s:11:\"description\";s:32:\"Deposits - Adjustments / Refunds\";s:12:\"categoryCode\";s:4:\"DEPA\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:3.05;s:5:\"total\";d:36.3;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6f1422ef-aa2f-4ce2-8830-8f76980f407a\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"DEPA\";s:11:\"description\";s:36:\"DEPOSIT MCARE BENEFITS 24137482 AYWQ\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"36.30\";s:7:\"balance\";s:8:\"34411.95\";s:11:\"cleanString\";s:14:\"MCARE BENEFITS\";s:8:\"netOffId\";s:0:\"\";}}}i:3;O:8:\"stdClass\":6:{s:11:\"description\";s:28:\"Government Payments - Family\";s:12:\"categoryCode\";s:4:\"GOVF\";s:17:\"transactionNumber\";i:6;s:10:\"monthlyAvg\";d:73.81;s:5:\"total\";d:881.88;s:12:\"transactions\";a:6:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e94c52df-3f67-4358-b33f-6c2bd70fe708\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"39798.02\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"42304262-8fe7-4c7f-9f98-c7939168b8b6\";s:4:\"date\";s:10:\"14/11/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"29837.59\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"269fbcb1-84d4-46af-bd1e-c39a1d20bffe\";s:4:\"date\";s:10:\"31/10/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"32157.47\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"4fc38307-5549-42e9-be62-5184bed162f4\";s:4:\"date\";s:10:\"14/10/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"34011.13\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:4;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"28233bc5-72e3-4105-80ad-b5e795b5dc08\";s:4:\"date\";s:10:\"26/09/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"33194.63\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:5;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d0ae1ea9-c322-4f37-add9-fb59bd4b221f\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"35474.37\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}}}i:4;O:8:\"stdClass\":6:{s:11:\"description\";s:29:\"Government Payments - Pension\";s:12:\"categoryCode\";s:4:\"GOVP\";s:17:\"transactionNumber\";i:12;s:10:\"monthlyAvg\";d:118.34;s:5:\"total\";d:1416.3;s:12:\"transactions\";a:12:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"246c119e-6a3b-4c7a-802e-d1201f6d77a8\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"39933.82\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9e098712-e716-4ee5-a887-21a98b50f65c\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"40034.07\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6dfe9cc5-6e74-4101-87c6-6a627119fd95\";s:4:\"date\";s:10:\"11/11/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"28863.64\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"f870fd21-4138-4533-99bf-0005a50fb635\";s:4:\"date\";s:10:\"10/11/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"28963.89\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:4;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"38abe77d-d3bf-4393-bfcc-a778c9bb334c\";s:4:\"date\";s:10:\"26/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"31843.27\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:5;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"529f72fd-005f-489d-9734-7363d7d60fb6\";s:4:\"date\";s:10:\"26/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"31943.52\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:6;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"8c323ef9-7e41-4ef8-a5ea-01e1e7429e80\";s:4:\"date\";s:10:\"13/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"34146.93\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:7;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e940cf70-d11a-4056-96dc-035997681ae0\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"34247.18\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:8;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"bd51277d-1314-4715-b028-e62c1ffa1e1e\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"32545.85\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:9;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"50ff8af0-741b-4b53-bfac-a0dde7fbb9f2\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"32646.10\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:10;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"529e6fe9-483e-4071-85ca-6a6f8a75038f\";s:4:\"date\";s:10:\"13/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"34491.17\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:11;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"003a4283-07a5-4bc5-8790-f5adace73c19\";s:4:\"date\";s:10:\"12/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"34591.42\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}}}i:5;O:8:\"stdClass\":6:{s:11:\"description\";s:11:\"Loan Credit\";s:12:\"categoryCode\";s:4:\"LONC\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:29.28;s:5:\"total\";d:350;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a869dbc2-3998-4013-a1dc-fa03046bc4c9\";s:4:\"date\";s:10:\"06/11/2019\";s:8:\"category\";s:4:\"LONC\";s:11:\"description\";s:71:\"DEPOSIT - INTERNET ONLINE BANKING 2261012 FNDS TFR MORTGAGE FUND 04-FEB\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"350.00\";s:7:\"balance\";s:8:\"31457.92\";s:11:\"cleanString\";s:44:\"- INTERNET ONLINE BANKING FNDS MORTGAGE FUND\";s:8:\"netOffId\";s:0:\"\";}}}i:6;O:8:\"stdClass\":6:{s:11:\"description\";s:26:\"Loan Credit - Payday Loans\";s:12:\"categoryCode\";s:4:\"LONP\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:50.02;s:5:\"total\";d:600;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"8edac440-08d5-4101-9864-3ca75550b1de\";s:4:\"date\";s:10:\"18/11/2019\";s:8:\"category\";s:4:\"LONP\";s:11:\"description\";s:27:\"FIRST STOP MONEY FSM XX5099\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"600.00\";s:7:\"balance\";s:8:\"42440.61\";s:11:\"cleanString\";s:20:\"FIRST STOP MONEY FSM\";s:8:\"netOffId\";s:0:\"\";}}}i:7;O:8:\"stdClass\":6:{s:11:\"description\";s:22:\"Other Transfer Credits\";s:12:\"categoryCode\";s:4:\"OTFC\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:300.73;s:5:\"total\";d:3600;s:12:\"transactions\";a:2:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"408f084b-c9a3-4166-a11d-72ddd7f29cc1\";s:4:\"date\";s:10:\"09/11/2019\";s:8:\"category\";s:4:\"OTFC\";s:11:\"description\";s:57:\"DEPOSIT - INTERNET ONLINE BANKING 2004186 FNDS TFR 25-JAN\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"3,000.00\";s:7:\"balance\";s:8:\"31963.89\";s:11:\"cleanString\";s:34:\"- INTERNET ONLINE BANKING FNDS TFR\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"21b32283-2d79-45af-9579-9c291bdf7de0\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"OTFC\";s:11:\"description\";s:61:\"DEPOSIT - INTERNET ONLINE BANKING 2565332 FNDS TFR ADC 23-FEB\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"600.00\";s:7:\"balance\";s:8:\"34847.18\";s:11:\"cleanString\";s:34:\"- INTERNET ONLINE BANKING FNDS ADC\";s:8:\"netOffId\";s:0:\"\";}}}i:8;O:8:\"stdClass\":6:{s:11:\"description\";s:29:\"Other Income - Reimbursements\";s:12:\"categoryCode\";s:5:\"OTHIR\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:25.01;s:5:\"total\";d:300;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"19b64518-02e1-455f-b2de-c7af8fd337f4\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:5:\"OTHIR\";s:11:\"description\";s:65:\"DEPOSIT - INTERNET ONLINE BANKING 2594426 FNDS TFR EXPENSE 21-MAR\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"300.00\";s:7:\"balance\";s:8:\"35774.37\";s:11:\"cleanString\";s:38:\"- INTERNET ONLINE BANKING FNDS EXPENSE\";s:8:\"netOffId\";s:0:\"\";}}}i:9;O:8:\"stdClass\":6:{s:11:\"description\";s:8:\"Reversal\";s:12:\"categoryCode\";s:4:\"RVRS\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:119.26;s:5:\"total\";d:1426.14;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"2747053b-ade5-4db8-890a-2faeab8d1f18\";s:4:\"date\";s:10:\"02/11/2019\";s:8:\"category\";s:4:\"RVRS\";s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"323.72\";s:7:\"balance\";s:8:\"31731.64\";s:11:\"cleanString\";s:19:\"REVERSAL OF PAYMENT\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"66b2824f-3329-4cb8-b401-ab722f47f405\";s:4:\"date\";s:10:\"02/10/2019\";s:8:\"category\";s:4:\"RVRS\";s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"323.72\";s:7:\"balance\";s:8:\"33296.80\";s:11:\"cleanString\";s:19:\"REVERSAL OF PAYMENT\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e033976f-82b1-4908-af1d-8557376d5724\";s:4:\"date\";s:10:\"18/09/2019\";s:8:\"category\";s:4:\"RVRS\";s:11:\"description\";s:22:\"DIRECT DEBIT DISHONOUR\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"778.70\";s:7:\"balance\";s:8:\"35572.54\";s:11:\"cleanString\";s:9:\"DISHONOUR\";s:8:\"netOffId\";s:0:\"\";}}}i:10;O:8:\"stdClass\":6:{s:11:\"description\";s:6:\"Salary\";s:12:\"categoryCode\";s:4:\"SLRY\";s:17:\"transactionNumber\";i:10;s:10:\"monthlyAvg\";d:1166.93;s:5:\"total\";d:13965.18;s:12:\"transactions\";a:10:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a79332ff-81a4-48de-bf7b-3099bda54b60\";s:4:\"date\";s:10:\"08/12/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"286.12\";s:7:\"balance\";s:8:\"41147.04\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"09bb2a3c-9d33-4bba-8793-ad1bf334b36b\";s:4:\"date\";s:10:\"29/11/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:30:\"TRANSFER FROM ABC NOMINEES PAY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"4,047.50\";s:7:\"balance\";s:8:\"44081.57\";s:11:\"cleanString\";s:16:\"ABC NOMINEES PAY\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"58d30a10-fa08-4146-8f9b-15e8aff43ea3\";s:4:\"date\";s:10:\"23/11/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"42067.97\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"f48f62b9-66e7-4950-9cf8-ce36db6086ea\";s:4:\"date\";s:10:\"07/11/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"286.12\";s:7:\"balance\";s:8:\"31435.64\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:4;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"5ef423bd-e3dd-4ba7-ba20-b85fb43e41a5\";s:4:\"date\";s:10:\"25/10/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:30:\"TRANSFER FROM ABC NOMINEES PAY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"4,047.50\";s:7:\"balance\";s:8:\"35991.02\";s:11:\"cleanString\";s:16:\"ABC NOMINEES PAY\";s:8:\"netOffId\";s:0:\"\";}i:5;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"fa9c0096-e2a7-424f-b709-05dbb85fc7bf\";s:4:\"date\";s:10:\"23/10/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"36092.45\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:6;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"03f27720-ed19-49be-b534-769c33378a1f\";s:4:\"date\";s:10:\"09/10/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"33434.75\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:7;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"694f388d-ff73-4b5a-93da-2dd220e1727d\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:30:\"TRANSFER FROM ABC NOMINEES PAY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"4,047.50\";s:7:\"balance\";s:8:\"36693.60\";s:11:\"cleanString\";s:16:\"ABC NOMINEES PAY\";s:8:\"netOffId\";s:0:\"\";}i:8;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"73f4b114-7cdd-46cd-93d4-445338a1c59a\";s:4:\"date\";s:10:\"24/09/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"286.12\";s:7:\"balance\";s:8:\"36929.72\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:9;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"55de522f-68aa-4332-a6d2-f708119f16d7\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"34653.03\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}}}}s:6:\"debits\";a:18:{i:0;O:8:\"stdClass\":6:{s:11:\"description\";s:20:\"Cash and Withdrawals\";s:12:\"categoryCode\";s:4:\"CASH\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-46.06;s:5:\"total\";d:-550;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"2f8a9bc5-8ea8-4dbf-8847-a187b62d4650\";s:4:\"date\";s:10:\"05/12/2019\";s:8:\"category\";s:4:\"CASH\";s:11:\"description\";s:37:\"WITHDRAWAL - BBL ATM PYRMONT SUPA IGA\";s:5:\"debit\";s:7:\"-150.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"40997.04\";s:11:\"cleanString\";s:26:\"WITHDRAWAL BBL ATM PYRMONT\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d2e74efd-7ca0-4080-b169-0deab84133ab\";s:4:\"date\";s:10:\"14/11/2019\";s:8:\"category\";s:4:\"CASH\";s:11:\"description\";s:40:\"WITHDRAWAL - NAB ATM 16.15 MOSMAN BRANCH\";s:5:\"debit\";s:7:\"-250.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"29690.61\";s:11:\"cleanString\";s:38:\"WITHDRAWAL NAB ATM nn.nn MOSMAN BRANCH\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9449bc08-6ffa-46da-bdde-53059f719095\";s:4:\"date\";s:10:\"26/10/2019\";s:8:\"category\";s:4:\"CASH\";s:11:\"description\";s:54:\"WITHDRAWAL - WESTPAC ATM 10.50 GEORGE ST SYDNEY BRANCH\";s:5:\"debit\";s:7:\"-150.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31707.47\";s:11:\"cleanString\";s:52:\"WITHDRAWAL WESTPAC ATM nn.nn GEORGE ST SYDNEY BRANCH\";s:8:\"netOffId\";s:0:\"\";}}}i:1;O:8:\"stdClass\":6:{s:11:\"description\";s:20:\"Credit Card Payments\";s:12:\"categoryCode\";s:4:\"CCRD\";s:17:\"transactionNumber\";i:4;s:10:\"monthlyAvg\";d:-73.51;s:5:\"total\";d:-881;s:12:\"transactions\";a:4:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e8423828-3bef-42e6-8b09-f5317e51da0b\";s:4:\"date\";s:10:\"31/10/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:29:\"PAYTO 5481XXXXXXXX1100 FSHARP\";s:5:\"debit\";s:7:\"-300.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31857.47\";s:11:\"cleanString\";s:29:\"PAYTO 5481XXXXXXXX1100 FSHARP\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a155fa61-18c8-4a92-b7b5-02973858923f\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:32:\"PAYTO 5481 29** **** 1100 FSHARP\";s:5:\"debit\";s:7:\"-198.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32996.63\";s:11:\"cleanString\";s:15:\"PAYTO 29 FSHARP\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d40b964d-f24b-430e-a3fb-6cfa9b4f7c98\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:32:\"PAYTO 5481-29**-****-1100 FSHARP\";s:5:\"debit\";s:7:\"-165.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35348.54\";s:11:\"cleanString\";s:26:\"PAYTO 5481-29--1100 FSHARP\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"82fe1ac1-2995-4159-9354-e2c3476be0a5\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:29:\"PAYTO 548129******1100 FSHARP\";s:5:\"debit\";s:7:\"-218.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33269.66\";s:11:\"cleanString\";s:23:\"PAYTO 5481291100 FSHARP\";s:8:\"netOffId\";s:0:\"\";}}}i:2;O:8:\"stdClass\":6:{s:11:\"description\";s:19:\"Vehicle Maintenance\";s:12:\"categoryCode\";s:4:\"CRTP\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-1044.63;s:5:\"total\";d:-12500;s:12:\"transactions\";a:2:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"1a275e02-c754-47a6-a7c4-d46ede965bbb\";s:4:\"date\";s:10:\"18/11/2019\";s:8:\"category\";s:4:\"CRTP\";s:11:\"description\";s:65:\"WITHDRAWAL - INTERNET ONLINE BANKING 1264063 PAYMENT MAZDA 21-JAN\";s:5:\"debit\";s:9:\"-7,500.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34940.61\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d84b9210-fce9-4f13-96c7-5c4e96765fe9\";s:4:\"date\";s:10:\"14/11/2019\";s:8:\"category\";s:4:\"CRTP\";s:11:\"description\";s:65:\"WITHDRAWAL - INTERNET ONLINE BANKING 1596417 PAYMENT MAZDA 22-JAN\";s:5:\"debit\";s:9:\"-5,000.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"29940.61\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}i:3;O:8:\"stdClass\":6:{s:11:\"description\";s:14:\"Dishonour Fees\";s:12:\"categoryCode\";s:4:\"DISH\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:-0.61;s:5:\"total\";d:-9;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e179f618-87be-46b9-baad-7277a4e22928\";s:4:\"date\";s:10:\"16/09/2019\";s:8:\"category\";s:4:\"DISH\";s:11:\"description\";s:23:\"DIRECT DEBIT DISHON FEE\";s:5:\"debit\";s:5:\"-9.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35563.54\";s:11:\"cleanString\";s:10:\"DISHON FEE\";s:8:\"netOffId\";s:0:\"\";}}}i:4;O:8:\"stdClass\":6:{s:11:\"description\";s:12:\"Taxes / Fees\";s:12:\"categoryCode\";s:4:\"FEES\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-0.92;s:5:\"total\";d:-12;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"ffb27755-f829-4d73-a569-24afc558605e\";s:4:\"date\";s:10:\"10/12/2019\";s:8:\"category\";s:4:\"FEES\";s:11:\"description\";s:19:\"ACCOUNT SERVICE FEE\";s:5:\"debit\";s:5:\"-4.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41206.32\";s:11:\"cleanString\";s:19:\"ACCOUNT SERVICE FEE\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"5391afaf-ff9a-4f19-b3f9-db406588ca53\";s:4:\"date\";s:10:\"07/11/2019\";s:8:\"category\";s:4:\"FEES\";s:11:\"description\";s:11:\"SERVICE FEE\";s:5:\"debit\";s:5:\"-4.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31107.92\";s:11:\"cleanString\";s:11:\"SERVICE FEE\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"97f6a28c-6860-4264-a612-4a3ada62c8ba\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"FEES\";s:11:\"description\";s:11:\"SERVICE FEE\";s:5:\"debit\";s:5:\"-4.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33430.75\";s:11:\"cleanString\";s:11:\"SERVICE FEE\";s:8:\"netOffId\";s:0:\"\";}}}i:5;O:8:\"stdClass\":6:{s:11:\"description\";s:19:\"Gifts and Jewellery\";s:12:\"categoryCode\";s:4:\"GIFT\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-58.87;s:5:\"total\";d:-705.38;s:12:\"transactions\";a:2:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a80c758e-c0f3-401a-9196-a368cb062bb4\";s:4:\"date\";s:10:\"28/11/2019\";s:8:\"category\";s:4:\"GIFT\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING 1554683 PAYMENT ABLOOM 13-JAN\";s:5:\"debit\";s:7:\"-118.80\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"43962.77\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0c0f0970-02a2-4d8c-988c-336a71b78706\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"GIFT\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING 1595426 PAYMENT ABLOOM 07-MAR\";s:5:\"debit\";s:7:\"-586.58\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32410.05\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}i:6;O:8:\"stdClass\":6:{s:11:\"description\";s:18:\"Health Clubs / Gym\";s:12:\"categoryCode\";s:4:\"GYMM\";s:17:\"transactionNumber\";i:4;s:10:\"monthlyAvg\";d:-7.02;s:5:\"total\";d:-84.6;s:12:\"transactions\";a:4:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a750307b-d818-44fc-8387-90943de61929\";s:4:\"date\";s:10:\"31/10/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32010.49\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"be04590d-4db6-4979-a18c-5546fa71ab04\";s:4:\"date\";s:10:\"15/10/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34025.07\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6f03d33a-5b8a-4756-9815-0a721fe2e58a\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33047.65\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"8c508efc-fe23-4f5c-8070-95e91eee8dd4\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35327.39\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}}}i:7;O:8:\"stdClass\":6:{s:11:\"description\";s:16:\"Home Maintenance\";s:12:\"categoryCode\";s:4:\"HOME\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:-118.65;s:5:\"total\";d:-1419;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0f3bbe2b-eab9-442e-993e-1cf06dfd1e13\";s:4:\"date\";s:10:\"13/09/2019\";s:8:\"category\";s:4:\"HOME\";s:11:\"description\";s:72:\"WITHDRAWAL - INTERNET ONLINE BANKING 1579607 PAYMENT HIRE A HUBBY 21-MAR\";s:5:\"debit\";s:9:\"-1,419.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34355.37\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}i:8;O:8:\"stdClass\":6:{s:11:\"description\";s:18:\"Insurance Payments\";s:12:\"categoryCode\";s:4:\"INSD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-305.92;s:5:\"total\";d:-3661.12;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0811fdc6-8523-453e-b7c1-de30934e4ba0\";s:4:\"date\";s:10:\"11/11/2019\";s:8:\"category\";s:4:\"INSD\";s:11:\"description\";s:67:\"WITHDRAWAL - INTERNET ONLINE BANKING 8400345 BPAY TO AAMI INSURANCE\";s:5:\"debit\";s:9:\"-1,109.75\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"28727.84\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"bdde68c4-bc22-435a-9e48-9b5990e91726\";s:4:\"date\";s:10:\"09/10/2019\";s:8:\"category\";s:4:\"INSD\";s:11:\"description\";s:67:\"WITHDRAWAL - INTERNET ONLINE BANKING 8400345 BPAY TO AAMI INSURANCE\";s:5:\"debit\";s:9:\"-1,386.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33193.67\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"076d302e-6e1f-4275-bbd9-cd3ec15c970c\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"INSD\";s:11:\"description\";s:67:\"WITHDRAWAL - INTERNET ONLINE BANKING 4861643 BPAY TO AAMI INSURANCE\";s:5:\"debit\";s:9:\"-1,165.37\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33487.66\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}i:9;O:8:\"stdClass\":6:{s:11:\"description\";s:17:\"Interest Payments\";s:12:\"categoryCode\";s:4:\"INTD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-316.59;s:5:\"total\";d:-3790.26;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"cc526884-c2a4-4f95-a4fc-54bd9151b049\";s:4:\"date\";s:10:\"24/11/2019\";s:8:\"category\";s:4:\"INTD\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:5:\"debit\";s:9:\"-1,263.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"42559.70\";s:11:\"cleanString\";s:16:\"INTEREST CHARGED\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e0874cd9-f6ce-489f-acb9-daab399c77ba\";s:4:\"date\";s:10:\"19/10/2019\";s:8:\"category\";s:4:\"INTD\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:5:\"debit\";s:9:\"-1,263.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34829.03\";s:11:\"cleanString\";s:16:\"INTEREST CHARGED\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"59a2a1a2-5abd-4d7f-b797-3786e14d8323\";s:4:\"date\";s:10:\"20/09/2019\";s:8:\"category\";s:4:\"INTD\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:5:\"debit\";s:9:\"-1,263.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35576.65\";s:11:\"cleanString\";s:16:\"INTEREST CHARGED\";s:8:\"netOffId\";s:0:\"\";}}}i:10;O:8:\"stdClass\":6:{s:11:\"description\";s:25:\"Personal Finance Payments\";s:12:\"categoryCode\";s:4:\"LOND\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-195.2;s:5:\"total\";d:-2336.1;s:12:\"transactions\";a:3:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a392c809-317d-4024-a1c3-fe1958b511df\";s:4:\"date\";s:10:\"23/11/2019\";s:8:\"category\";s:4:\"LOND\";s:11:\"description\";s:48:\"WITHDRAWAL - DIRECT DEBIT 8605212 ACME CAR LOANS\";s:5:\"debit\";s:7:\"-778.70\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41826.89\";s:11:\"cleanString\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"15786786-78ed-421a-8766-27fc250fe205\";s:4:\"date\";s:10:\"17/10/2019\";s:8:\"category\";s:4:\"LOND\";s:11:\"description\";s:48:\"WITHDRAWAL - DIRECT DEBIT 8605212 ACME CAR LOANS\";s:5:\"debit\";s:7:\"-778.70\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34096.22\";s:11:\"cleanString\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0c1a2e3b-f4d7-4271-84b5-0d034a3d7392\";s:4:\"date\";s:10:\"19/09/2019\";s:8:\"category\";s:4:\"LOND\";s:11:\"description\";s:48:\"WITHDRAWAL - DIRECT DEBIT 8605212 ACME CAR LOANS\";s:5:\"debit\";s:7:\"-778.70\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34843.84\";s:11:\"cleanString\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:8:\"netOffId\";s:0:\"\";}}}i:11;O:8:\"stdClass\":6:{s:11:\"description\";s:12:\"Other Debits\";s:12:\"categoryCode\";s:4:\"OTHD\";s:17:\"transactionNumber\";i:20;s:10:\"monthlyAvg\";d:-181.48;s:5:\"total\";d:-2172.95;s:12:\"transactions\";a:20:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"99401d4a-2e67-473e-8b02-7153d51405e5\";s:4:\"date\";s:10:\"10/12/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41156.32\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"79f81f8f-4a15-4525-a450-8e3805adfc82\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:71:\"WITHDRAWAL - INTERNET ONLINE BANKING 1547581 PAYMENT MATT - POOL 07-JAN\";s:5:\"debit\";s:9:\"-1,296.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"39701.04\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"c98e41cf-9fe6-458f-9bf6-054575dc06e2\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"39651.04\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"50a07823-63d0-475e-9899-11970cd085a9\";s:4:\"date\";s:10:\"25/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"43823.12\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:4;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6a211ad5-4686-45d3-9a21-517096a4f1e8\";s:4:\"date\";s:10:\"21/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41840.61\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:5;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"2a8a1486-73d9-4c5e-9659-5d7da918159d\";s:4:\"date\";s:10:\"08/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31913.89\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:6;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"27c835ca-d1d2-474e-b285-6c707feebcae\";s:4:\"date\";s:10:\"02/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31407.92\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:7;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d3579f07-d305-4e32-9c43-3aa607bc2a2e\";s:4:\"date\";s:10:\"25/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35941.02\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:8;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0dacb4bd-7aec-416a-b098-40402f85d01a\";s:4:\"date\";s:10:\"17/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34046.22\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:9;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"4acdbb34-18a9-4cc6-bbf5-e0c2172ccc25\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34767.76\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:10;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"84124d4f-01f0-44f5-a760-c61e72103e71\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:56:\"DIRECT DEBIT 123456 TBD PAYSMART PTY 35244492/GRACIE SYD\";s:5:\"debit\";s:6:\"-28.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33402.75\";s:11:\"cleanString\";s:23:\"TBD PAYSMART GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:11;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"b9efd934-c04b-49b6-a94d-58d0c3f694d5\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:56:\"DIRECT DEBIT 323459 TBD PAYSMART PTY 12344492/GRACIE SYD\";s:5:\"debit\";s:6:\"-12.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33390.75\";s:11:\"cleanString\";s:23:\"TBD PAYSMART GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:12;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e32a2bbe-0ab9-4484-b149-52f4d34efc5d\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:55:\"DIRECT DEBIT 777756 TBD PAY-MAY PTY 35248882/GRACIE SYD\";s:5:\"debit\";s:6:\"-72.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33318.75\";s:11:\"cleanString\";s:15:\"TBD PAY-MAY SYD\";s:8:\"netOffId\";s:0:\"\";}i:13;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6f420350-c3ab-49a3-a81e-80cef2f6edc4\";s:4:\"date\";s:10:\"04/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:70:\"WITHDRAWAL - INTERNET ONLINE BANKING 1579424 PAYMENT BARB VINYL 03-MAR\";s:5:\"debit\";s:6:\"-21.95\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33296.80\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:14;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"b231c3d2-48e6-4f38-81c2-e09d8efa41a9\";s:4:\"date\";s:10:\"02/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:55:\"DIRECT DEBIT 919159 TBD PAY-MAY PTY 12349992/GRACIE SYD\";s:5:\"debit\";s:6:\"-43.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33253.80\";s:11:\"cleanString\";s:15:\"TBD PAY-MAY SYD\";s:8:\"netOffId\";s:0:\"\";}i:15;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"7f797158-0a49-4537-94ff-5e8324d6b0ec\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33068.80\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:16;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"61c38b8f-ccb6-4c0b-8de2-a551258c1ef5\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"36643.60\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:17;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"64faea92-c6c7-42a4-bc54-40fe15d48cc0\";s:4:\"date\";s:10:\"19/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:71:\"WITHDRAWAL - INTERNET ONLINE BANKING 1534350 PAYMENT BARB SAVING 17-MAR\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34793.84\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:18;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"ccb3be80-90c0-4cf9-9fd8-f94125f3c646\";s:4:\"date\";s:10:\"16/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35513.54\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:19;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"3367c928-8d80-492b-8cd4-78adbfa49168\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34375.65\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}}}i:12;O:8:\"stdClass\":6:{s:11:\"description\";s:20:\"Payday Loan Payments\";s:12:\"categoryCode\";s:4:\"PAYD\";s:17:\"transactionNumber\";i:5;s:10:\"monthlyAvg\";d:-76.56;s:5:\"total\";d:-916.39;s:12:\"transactions\";a:5:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"4ab93f6c-d204-46ed-a570-5690be8e3cc9\";s:4:\"date\";s:10:\"25/11/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:5:\"debit\";s:6:\"-89.65\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"43873.12\";s:11:\"cleanString\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e54c24a4-520a-4db9-9115-8773634b026d\";s:4:\"date\";s:10:\"07/11/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:38:\"PAYMENT TO FIRST CASH XX9959 **1207154\";s:5:\"debit\";s:7:\"-323.72\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31111.92\";s:11:\"cleanString\";s:10:\"FIRST CASH\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e4243067-b6f0-4c18-9a4f-c42830cefa61\";s:4:\"date\";s:10:\"24/10/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:5:\"debit\";s:6:\"-89.65\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35851.37\";s:11:\"cleanString\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"77db9085-18e3-42f5-94c9-ec21c650df53\";s:4:\"date\";s:10:\"02/10/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:38:\"PAYMENT TO FIRST CASH XX9959 **1207154\";s:5:\"debit\";s:7:\"-323.72\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32973.08\";s:11:\"cleanString\";s:10:\"FIRST CASH\";s:8:\"netOffId\";s:0:\"\";}i:4;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"981adc74-98eb-4b0a-9332-47aa9b7173f7\";s:4:\"date\";s:10:\"22/09/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:5:\"debit\";s:6:\"-89.65\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"36840.07\";s:11:\"cleanString\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:8:\"netOffId\";s:0:\"\";}}}i:13;O:8:\"stdClass\":6:{s:11:\"description\";s:24:\"Phone / Cable / Internet\";s:12:\"categoryCode\";s:4:\"PHNE\";s:17:\"transactionNumber\";i:4;s:10:\"monthlyAvg\";d:-55.21;s:5:\"total\";d:-660.05;s:12:\"transactions\";a:4:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"5ed57052-0f0e-46a1-86fc-cc45f1a3b4b2\";s:4:\"date\";s:10:\"22/11/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 6799985 BPAY TO TELSTRA CORP LTD\";s:5:\"debit\";s:7:\"-177.36\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41890.61\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"ec3bd37d-4c50-4963-9d74-9613368c183c\";s:4:\"date\";s:10:\"15/10/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 3929303 BPAY TO TELSTRA CORP LTD\";s:5:\"debit\";s:7:\"-160.92\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33864.15\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"69fc8ecf-c611-4190-9db9-f2d773f50df1\";s:4:\"date\";s:10:\"09/10/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING 5146651 BPAY TO OPTUS BILLING\";s:5:\"debit\";s:7:\"-156.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34579.67\";s:11:\"cleanString\";s:13:\"OPTUS BILLING\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"97d37584-96b6-44e7-ad5b-7051fbc997e6\";s:4:\"date\";s:10:\"12/09/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 8887156 BPAY TO TELSTRA CORP LTD\";s:5:\"debit\";s:7:\"-165.77\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34425.65\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}i:14;O:8:\"stdClass\":6:{s:11:\"description\";s:21:\"Professional Services\";s:12:\"categoryCode\";s:4:\"PRFS\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-11.29;s:5:\"total\";d:-135;s:12:\"transactions\";a:2:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"891cef1e-e094-419c-9f49-e6201452a47d\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"PRFS\";s:11:\"description\";s:59:\"DIRECT DEBIT 997756 TBD PTY APR PAYMENT 35255882/GRACIE SYD\";s:5:\"debit\";s:6:\"-54.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33199.80\";s:11:\"cleanString\";s:30:\"TBD PAYMENT 35255882GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"578f5d00-95a6-4a25-9511-585381a2ab98\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"PRFS\";s:11:\"description\";s:59:\"DIRECT DEBIT 918859 TBD PTY MAY PAYMENT 12349442/GRACIE SYD\";s:5:\"debit\";s:6:\"-81.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33118.80\";s:11:\"cleanString\";s:30:\"TBD PAYMENT 12349442GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}}}i:15;O:8:\"stdClass\":6:{s:11:\"description\";s:17:\"Transport / Tolls\";s:12:\"categoryCode\";s:4:\"TRPT\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-5.19;s:5:\"total\";d:-61.51;s:12:\"transactions\";a:2:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"229a3b61-14b9-47ea-b9c7-903f07d6387d\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"TRPT\";s:11:\"description\";s:48:\"EFTPOS PURCHASE 24FEB07:30 TAXI EPAY WEST SYDNEY\";s:5:\"debit\";s:6:\"-29.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34817.76\";s:11:\"cleanString\";s:30:\"PURCHASE TAXI EPAY WEST SYDNEY\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"055225b9-e48f-44df-af77-a586125e88a7\";s:4:\"date\";s:10:\"10/10/2019\";s:8:\"category\";s:4:\"TRPT\";s:11:\"description\";s:36:\"VISA PURCHASE GM CABS PTY LTD MASCOT\";s:5:\"debit\";s:6:\"-32.09\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34735.67\";s:11:\"cleanString\";s:14:\"GM CABS MASCOT\";s:8:\"netOffId\";s:0:\"\";}}}i:16;O:8:\"stdClass\":6:{s:11:\"description\";s:9:\"Utilities\";s:12:\"categoryCode\";s:4:\"UTIL\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:-63.75;s:5:\"total\";d:-764.37;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6a20bebe-9f57-4675-955a-1974ce424b74\";s:4:\"date\";s:10:\"08/11/2019\";s:8:\"category\";s:4:\"UTIL\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 4597611 BPAY TO ENERGY AUSTRALIA\";s:5:\"debit\";s:7:\"-764.37\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31149.52\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}i:17;O:8:\"stdClass\":6:{s:11:\"description\";s:17:\"Utilities - Water\";s:12:\"categoryCode\";s:4:\"UTLW\";s:17:\"transactionNumber\";i:1;s:10:\"monthlyAvg\";d:-24.71;s:5:\"total\";d:-295.4;s:12:\"transactions\";a:1:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9c20c4c6-5b4c-45e7-b3d6-df98c1ad5e16\";s:4:\"date\";s:10:\"08/12/2019\";s:8:\"category\";s:4:\"UTLW\";s:11:\"description\";s:65:\"WITHDRAWAL - INTERNET ONLINE BANKING 5783111 BPAY TO SYDNEY WATER\";s:5:\"debit\";s:7:\"-295.40\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"40860.92\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}}}}s:17:\"creditsTotalTrans\";i:41;s:15:\"debitTotalTrans\";i:64;}s:16:\"recurringSummary\";O:8:\"stdClass\":4:{s:7:\"credits\";a:5:{i:0;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"c7727af3-580a-42bc-a3f3-380d7e0c6efb\";s:11:\"description\";s:25:\"ST MICHAEL\'S SALARY (CRD)\";s:12:\"categoryCode\";s:4:\"SLRY\";s:17:\"transactionNumber\";i:7;s:10:\"monthlyAvg\";d:152.2;s:11:\"frequentAvg\";s:6:\"151.88\";s:8:\"transAvg\";d:260.38;s:5:\"total\";d:1822.68;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:7:{i:0;s:36:\"a79332ff-81a4-48de-bf7b-3099bda54b60\";i:1;s:36:\"58d30a10-fa08-4146-8f9b-15e8aff43ea3\";i:2;s:36:\"f48f62b9-66e7-4950-9cf8-ce36db6086ea\";i:3;s:36:\"fa9c0096-e2a7-424f-b709-05dbb85fc7bf\";i:4;s:36:\"03f27720-ed19-49be-b534-769c33378a1f\";i:5;s:36:\"73f4b114-7cdd-46cd-93d4-445338a1c59a\";i:6;s:36:\"55de522f-68aa-4332-a6d2-f708119f16d7\";}}i:1;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"b9dd4854-fdc4-46f6-995c-4a02d8a34dee\";s:11:\"description\";s:36:\"TRANSFER FROM ABC NOMINEES PAY (CRD)\";s:12:\"categoryCode\";s:4:\"SLRY\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:1014.74;s:11:\"frequentAvg\";s:8:\"1,011.88\";s:8:\"transAvg\";d:4047.5;s:5:\"total\";d:12142.5;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"09bb2a3c-9d33-4bba-8793-ad1bf334b36b\";i:1;s:36:\"5ef423bd-e3dd-4ba7-ba20-b85fb43e41a5\";i:2;s:36:\"694f388d-ff73-4b5a-93da-2dd220e1727d\";}}i:2;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"7006ff6d-709b-42a9-9feb-99da1a86a12a\";s:11:\"description\";s:72:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES **** FB1****92887T (CRD)\";s:12:\"categoryCode\";s:4:\"GOVF\";s:17:\"transactionNumber\";i:6;s:10:\"monthlyAvg\";d:73.81;s:11:\"frequentAvg\";s:5:\"73.49\";s:8:\"transAvg\";d:146.98;s:5:\"total\";d:881.88;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:6:{i:0;s:36:\"e94c52df-3f67-4358-b33f-6c2bd70fe708\";i:1;s:36:\"42304262-8fe7-4c7f-9f98-c7939168b8b6\";i:2;s:36:\"269fbcb1-84d4-46af-bd1e-c39a1d20bffe\";i:3;s:36:\"4fc38307-5549-42e9-be62-5184bed162f4\";i:4;s:36:\"28233bc5-72e3-4105-80ad-b5e795b5dc08\";i:5;s:36:\"d0ae1ea9-c322-4f37-add9-fb59bd4b221f\";}}i:3;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"f507f92e-f7a4-4c6f-b4c8-804544910c05\";s:11:\"description\";s:50:\"DEPOSIT-CREDIT CTRLINK PENSION 059****03762R (CRD)\";s:12:\"categoryCode\";s:4:\"GOVP\";s:17:\"transactionNumber\";i:12;s:10:\"monthlyAvg\";d:118.34;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:118.03;s:5:\"total\";d:1416.3;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:12:{i:0;s:36:\"246c119e-6a3b-4c7a-802e-d1201f6d77a8\";i:1;s:36:\"9e098712-e716-4ee5-a887-21a98b50f65c\";i:2;s:36:\"6dfe9cc5-6e74-4101-87c6-6a627119fd95\";i:3;s:36:\"f870fd21-4138-4533-99bf-0005a50fb635\";i:4;s:36:\"38abe77d-d3bf-4393-bfcc-a778c9bb334c\";i:5;s:36:\"529f72fd-005f-489d-9734-7363d7d60fb6\";i:6;s:36:\"8c323ef9-7e41-4ef8-a5ea-01e1e7429e80\";i:7;s:36:\"e940cf70-d11a-4056-96dc-035997681ae0\";i:8;s:36:\"bd51277d-1314-4715-b028-e62c1ffa1e1e\";i:9;s:36:\"50ff8af0-741b-4b53-bfac-a0dde7fbb9f2\";i:10;s:36:\"529e6fe9-483e-4071-85ca-6a6f8a75038f\";i:11;s:36:\"003a4283-07a5-4bc5-8790-f5adace73c19\";}}i:4;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"f1e80f58-3f94-4a8d-9586-9b60aa491b6c\";s:11:\"description\";s:53:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509 (CRD)\";s:12:\"categoryCode\";s:4:\"CHDC\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:11.59;s:11:\"frequentAvg\";s:5:\"11.47\";s:8:\"transAvg\";d:45.89;s:5:\"total\";d:137.67;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"e75d6885-a81d-48d8-9694-3f118069f706\";i:1;s:36:\"0992d340-a2ce-4fd0-8971-13f92d59b5f6\";i:2;s:36:\"9301589a-9b23-4897-86d4-e21828a5bed0\";}}}s:6:\"debits\";a:7:{i:0;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"6f1b799d-a94d-450c-b19c-409bcb7f435d\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:12:\"categoryCode\";s:4:\"OTHD\";s:17:\"transactionNumber\";i:13;s:10:\"monthlyAvg\";d:-54.29;s:11:\"frequentAvg\";s:7:\"-216.67\";s:8:\"transAvg\";d:-50;s:5:\"total\";d:-650;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:13:{i:0;s:36:\"99401d4a-2e67-473e-8b02-7153d51405e5\";i:1;s:36:\"c98e41cf-9fe6-458f-9bf6-054575dc06e2\";i:2;s:36:\"50a07823-63d0-475e-9899-11970cd085a9\";i:3;s:36:\"6a211ad5-4686-45d3-9a21-517096a4f1e8\";i:4;s:36:\"2a8a1486-73d9-4c5e-9659-5d7da918159d\";i:5;s:36:\"27c835ca-d1d2-474e-b285-6c707feebcae\";i:6;s:36:\"d3579f07-d305-4e32-9c43-3aa607bc2a2e\";i:7;s:36:\"0dacb4bd-7aec-416a-b098-40402f85d01a\";i:8;s:36:\"4acdbb34-18a9-4cc6-bbf5-e0c2172ccc25\";i:9;s:36:\"7f797158-0a49-4537-94ff-5e8324d6b0ec\";i:10;s:36:\"61c38b8f-ccb6-4c0b-8de2-a551258c1ef5\";i:11;s:36:\"ccb3be80-90c0-4cf9-9fd8-f94125f3c646\";i:12;s:36:\"3367c928-8d80-492b-8cd4-78adbfa49168\";}}i:1;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"563a8eca-5439-4ef1-a1bd-5eb954d5afed\";s:11:\"description\";s:46:\"WITHDRAWAL - DIRECT DEBIT **** CASH CONVERTERS\";s:12:\"categoryCode\";s:4:\"PAYD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-22.57;s:11:\"frequentAvg\";s:6:\"-89.65\";s:8:\"transAvg\";d:-89.65;s:5:\"total\";d:-268.95;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"4ab93f6c-d204-46ed-a570-5690be8e3cc9\";i:1;s:36:\"e4243067-b6f0-4c18-9a4f-c42830cefa61\";i:2;s:36:\"981adc74-98eb-4b0a-9332-47aa9b7173f7\";}}i:2;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"2199311c-ae13-4f17-be39-cb463e6cbae7\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:12:\"categoryCode\";s:4:\"INTD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-316.59;s:11:\"frequentAvg\";s:9:\"-1,263.42\";s:8:\"transAvg\";d:-1263.42;s:5:\"total\";d:-3790.26;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"cc526884-c2a4-4f95-a4fc-54bd9151b049\";i:1;s:36:\"e0874cd9-f6ce-489f-acb9-daab399c77ba\";i:2;s:36:\"59a2a1a2-5abd-4d7f-b797-3786e14d8323\";}}i:3;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"59562656-4fa6-483c-bfb6-4a39bf5d3d2a\";s:11:\"description\";s:45:\"WITHDRAWAL - DIRECT DEBIT **** ACME CAR LOANS\";s:12:\"categoryCode\";s:4:\"LOND\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-195.2;s:11:\"frequentAvg\";s:7:\"-778.70\";s:8:\"transAvg\";d:-778.7;s:5:\"total\";d:-2336.1;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"a392c809-317d-4024-a1c3-fe1958b511df\";i:1;s:36:\"15786786-78ed-421a-8766-27fc250fe205\";i:2;s:36:\"0c1a2e3b-f4d7-4271-84b5-0d034a3d7392\";}}i:4;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"8ab78cb0-fcd5-4200-acd2-035f6e8066d1\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING **** BPAY TO TELSTRA CORP LTD\";s:12:\"categoryCode\";s:4:\"PHNE\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-42.09;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-168.02;s:5:\"total\";d:-504.05;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"5ed57052-0f0e-46a1-86fc-cc45f1a3b4b2\";i:1;s:36:\"ec3bd37d-4c50-4963-9d74-9613368c183c\";i:2;s:36:\"97d37584-96b6-44e7-ad5b-7051fbc997e6\";}}i:5;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"7e31f0cc-ddc7-48de-ad1a-44f018476bc9\";s:11:\"description\";s:64:\"WITHDRAWAL - INTERNET ONLINE BANKING **** BPAY TO AAMI INSURANCE\";s:12:\"categoryCode\";s:4:\"INSD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-305.92;s:11:\"frequentAvg\";s:9:\"-1,220.37\";s:8:\"transAvg\";d:-1220.37;s:5:\"total\";d:-3661.12;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"0811fdc6-8523-453e-b7c1-de30934e4ba0\";i:1;s:36:\"bdde68c4-bc22-435a-9e48-9b5990e91726\";i:2;s:36:\"076d302e-6e1f-4275-bbd9-cd3ec15c970c\";}}i:6;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"b2afe919-5933-441c-b00c-182eed904839\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:12:\"categoryCode\";s:4:\"GYMM\";s:17:\"transactionNumber\";i:4;s:10:\"monthlyAvg\";d:-7.02;s:11:\"frequentAvg\";s:6:\"-45.82\";s:8:\"transAvg\";d:-21.15;s:5:\"total\";d:-84.6;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:4:{i:0;s:36:\"a750307b-d818-44fc-8387-90943de61929\";i:1;s:36:\"be04590d-4db6-4979-a18c-5546fa71ab04\";i:2;s:36:\"6f03d33a-5b8a-4756-9815-0a721fe2e58a\";i:3;s:36:\"8c508efc-fe23-4f5c-8070-95e91eee8dd4\";}}}s:17:\"creditsTotalTrans\";i:31;s:15:\"debitTotalTrans\";i:32;}s:14:\"regularSummary\";O:8:\"stdClass\":4:{s:7:\"credits\";a:6:{i:0;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"b0319008-3901-4ec2-a689-e98fa6d4eee9\";s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:12:\"categoryCode\";s:4:\"RVRS\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:53.99;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:323.72;s:5:\"total\";d:647.44;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"2747053b-ade5-4db8-890a-2faeab8d1f18\";i:1;s:36:\"66b2824f-3329-4cb8-b401-ab722f47f405\";}}i:1;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"684aecc1-ee26-4098-9099-8c4a771fc457\";s:11:\"description\";s:16:\"ABC NOMINEES PAY\";s:12:\"categoryCode\";s:4:\"SLRY\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:1014.74;s:11:\"frequentAvg\";s:8:\"1,011.88\";s:8:\"transAvg\";d:4047.5;s:5:\"total\";d:12142.5;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"09bb2a3c-9d33-4bba-8793-ad1bf334b36b\";i:1;s:36:\"5ef423bd-e3dd-4ba7-ba20-b85fb43e41a5\";i:2;s:36:\"694f388d-ff73-4b5a-93da-2dd220e1727d\";}}i:2;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"b1509a78-972d-48d3-acbc-1c6bbddef999\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:12:\"categoryCode\";s:4:\"SLRY\";s:17:\"transactionNumber\";i:7;s:10:\"monthlyAvg\";d:152.2;s:11:\"frequentAvg\";s:6:\"151.88\";s:8:\"transAvg\";d:260.38;s:5:\"total\";d:1822.68;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:7:{i:0;s:36:\"a79332ff-81a4-48de-bf7b-3099bda54b60\";i:1;s:36:\"58d30a10-fa08-4146-8f9b-15e8aff43ea3\";i:2;s:36:\"f48f62b9-66e7-4950-9cf8-ce36db6086ea\";i:3;s:36:\"fa9c0096-e2a7-424f-b709-05dbb85fc7bf\";i:4;s:36:\"03f27720-ed19-49be-b534-769c33378a1f\";i:5;s:36:\"73f4b114-7cdd-46cd-93d4-445338a1c59a\";i:6;s:36:\"55de522f-68aa-4332-a6d2-f708119f16d7\";}}i:3;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"fb710889-c188-4c49-bcd5-07c99a281272\";s:11:\"description\";s:12:\"GOV FAMILIES\";s:12:\"categoryCode\";s:4:\"GOVF\";s:17:\"transactionNumber\";i:6;s:10:\"monthlyAvg\";d:73.81;s:11:\"frequentAvg\";s:5:\"73.49\";s:8:\"transAvg\";d:146.98;s:5:\"total\";d:881.88;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:6:{i:0;s:36:\"e94c52df-3f67-4358-b33f-6c2bd70fe708\";i:1;s:36:\"42304262-8fe7-4c7f-9f98-c7939168b8b6\";i:2;s:36:\"269fbcb1-84d4-46af-bd1e-c39a1d20bffe\";i:3;s:36:\"4fc38307-5549-42e9-be62-5184bed162f4\";i:4;s:36:\"28233bc5-72e3-4105-80ad-b5e795b5dc08\";i:5;s:36:\"d0ae1ea9-c322-4f37-add9-fb59bd4b221f\";}}i:4;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"5656f76c-81eb-47c4-ba9f-d24142186691\";s:11:\"description\";s:15:\"CTRLINK PENSION\";s:12:\"categoryCode\";s:4:\"GOVP\";s:17:\"transactionNumber\";i:12;s:10:\"monthlyAvg\";d:118.34;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:118.03;s:5:\"total\";d:1416.3;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:12:{i:0;s:36:\"246c119e-6a3b-4c7a-802e-d1201f6d77a8\";i:1;s:36:\"9e098712-e716-4ee5-a887-21a98b50f65c\";i:2;s:36:\"6dfe9cc5-6e74-4101-87c6-6a627119fd95\";i:3;s:36:\"f870fd21-4138-4533-99bf-0005a50fb635\";i:4;s:36:\"38abe77d-d3bf-4393-bfcc-a778c9bb334c\";i:5;s:36:\"529f72fd-005f-489d-9734-7363d7d60fb6\";i:6;s:36:\"8c323ef9-7e41-4ef8-a5ea-01e1e7429e80\";i:7;s:36:\"e940cf70-d11a-4056-96dc-035997681ae0\";i:8;s:36:\"bd51277d-1314-4715-b028-e62c1ffa1e1e\";i:9;s:36:\"50ff8af0-741b-4b53-bfac-a0dde7fbb9f2\";i:10;s:36:\"529e6fe9-483e-4071-85ca-6a6f8a75038f\";i:11;s:36:\"003a4283-07a5-4bc5-8790-f5adace73c19\";}}i:5;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"0696276f-4321-4f98-928d-8151d46c9cf2\";s:11:\"description\";s:13:\"CHILD SUPPORT\";s:12:\"categoryCode\";s:4:\"CHDC\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:11.59;s:11:\"frequentAvg\";s:5:\"11.47\";s:8:\"transAvg\";d:45.89;s:5:\"total\";d:137.67;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"e75d6885-a81d-48d8-9694-3f118069f706\";i:1;s:36:\"0992d340-a2ce-4fd0-8971-13f92d59b5f6\";i:2;s:36:\"9301589a-9b23-4897-86d4-e21828a5bed0\";}}}s:6:\"debits\";a:14:{i:0;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"7d63f535-d7f5-4557-8765-afc4877f9174\";s:11:\"description\";s:11:\"SERVICE FEE\";s:12:\"categoryCode\";s:4:\"FEES\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-0.61;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-4;s:5:\"total\";d:-8;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"5391afaf-ff9a-4f19-b3f9-db406588ca53\";i:1;s:36:\"97f6a28c-6860-4264-a612-4a3ada62c8ba\";}}i:1;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"210cd216-2912-4fe1-bef5-6ef869c1ebee\";s:11:\"description\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:12:\"categoryCode\";s:4:\"INSD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-305.92;s:11:\"frequentAvg\";s:9:\"-1,220.37\";s:8:\"transAvg\";d:-1220.37;s:5:\"total\";d:-3661.12;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"0811fdc6-8523-453e-b7c1-de30934e4ba0\";i:1;s:36:\"bdde68c4-bc22-435a-9e48-9b5990e91726\";i:2;s:36:\"076d302e-6e1f-4275-bbd9-cd3ec15c970c\";}}i:2;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"1a12f371-b379-4fad-a93e-237bd608c5e3\";s:11:\"description\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:12:\"categoryCode\";s:4:\"LOND\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-195.2;s:11:\"frequentAvg\";s:7:\"-778.70\";s:8:\"transAvg\";d:-778.7;s:5:\"total\";d:-2336.1;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"a392c809-317d-4024-a1c3-fe1958b511df\";i:1;s:36:\"15786786-78ed-421a-8766-27fc250fe205\";i:2;s:36:\"0c1a2e3b-f4d7-4271-84b5-0d034a3d7392\";}}i:3;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"d31b15d5-e08d-4d67-bd98-a20860c10833\";s:11:\"description\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:12:\"categoryCode\";s:4:\"PAYD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-22.57;s:11:\"frequentAvg\";s:6:\"-89.65\";s:8:\"transAvg\";d:-89.65;s:5:\"total\";d:-268.95;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"4ab93f6c-d204-46ed-a570-5690be8e3cc9\";i:1;s:36:\"e4243067-b6f0-4c18-9a4f-c42830cefa61\";i:2;s:36:\"981adc74-98eb-4b0a-9332-47aa9b7173f7\";}}i:4;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"c6b9da70-f109-4d79-9afd-d415249e1ea8\";s:11:\"description\";s:10:\"FIRST CASH\";s:12:\"categoryCode\";s:4:\"PAYD\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-53.99;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-323.72;s:5:\"total\";d:-647.44;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"e54c24a4-520a-4db9-9115-8773634b026d\";i:1;s:36:\"77db9085-18e3-42f5-94c9-ec21c650df53\";}}i:5;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"180ae708-e1d6-4735-b589-dea19abd1213\";s:11:\"description\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:12:\"categoryCode\";s:4:\"CRTP\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-1044.63;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-6250;s:5:\"total\";d:-12500;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"1a275e02-c754-47a6-a7c4-d46ede965bbb\";i:1;s:36:\"d84b9210-fce9-4f13-96c7-5c4e96765fe9\";}}i:6;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"f5c3719b-b312-4800-863d-3c1519af0907\";s:11:\"description\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:12:\"categoryCode\";s:4:\"GIFT\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-58.87;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-352.69;s:5:\"total\";d:-705.38;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"a80c758e-c0f3-401a-9196-a368cb062bb4\";i:1;s:36:\"0c0f0970-02a2-4d8c-988c-336a71b78706\";}}i:7;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"ac565d38-da45-4e61-9cdf-5f60d8f97e64\";s:11:\"description\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:12:\"categoryCode\";s:4:\"PHNE\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-42.09;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-168.02;s:5:\"total\";d:-504.05;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"5ed57052-0f0e-46a1-86fc-cc45f1a3b4b2\";i:1;s:36:\"ec3bd37d-4c50-4963-9d74-9613368c183c\";i:2;s:36:\"97d37584-96b6-44e7-ad5b-7051fbc997e6\";}}i:8;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"188a1757-5dd4-4090-94ad-06e08a48cffb\";s:11:\"description\";s:12:\"SNAP FITNESS\";s:12:\"categoryCode\";s:4:\"GYMM\";s:17:\"transactionNumber\";i:4;s:10:\"monthlyAvg\";d:-7.02;s:11:\"frequentAvg\";s:6:\"-45.82\";s:8:\"transAvg\";d:-21.15;s:5:\"total\";d:-84.6;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:4:{i:0;s:36:\"a750307b-d818-44fc-8387-90943de61929\";i:1;s:36:\"be04590d-4db6-4979-a18c-5546fa71ab04\";i:2;s:36:\"6f03d33a-5b8a-4756-9815-0a721fe2e58a\";i:3;s:36:\"8c508efc-fe23-4f5c-8070-95e91eee8dd4\";}}i:9;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"545a8fd8-23b2-450d-aea5-cb023b0f5e98\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:12:\"categoryCode\";s:4:\"INTD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-316.59;s:11:\"frequentAvg\";s:9:\"-1,263.42\";s:8:\"transAvg\";d:-1263.42;s:5:\"total\";d:-3790.26;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"cc526884-c2a4-4f95-a4fc-54bd9151b049\";i:1;s:36:\"e0874cd9-f6ce-489f-acb9-daab399c77ba\";i:2;s:36:\"59a2a1a2-5abd-4d7f-b797-3786e14d8323\";}}i:10;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"409261c2-b8e4-421f-8f18-209b513e7672\";s:11:\"description\";s:23:\"TBD PAYSMART GRACIE SYD\";s:12:\"categoryCode\";s:4:\"OTHD\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-3.36;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-20;s:5:\"total\";d:-40;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"84124d4f-01f0-44f5-a760-c61e72103e71\";i:1;s:36:\"b9efd934-c04b-49b6-a94d-58d0c3f694d5\";}}i:11;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"46e7f678-8bb0-426d-b0a2-172b82485d77\";s:11:\"description\";s:15:\"TBD PAY-MAY SYD\";s:12:\"categoryCode\";s:4:\"OTHD\";s:17:\"transactionNumber\";i:2;s:10:\"monthlyAvg\";d:-9.76;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-57.5;s:5:\"total\";d:-115;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:2:{i:0;s:36:\"e32a2bbe-0ab9-4484-b149-52f4d34efc5d\";i:1;s:36:\"b231c3d2-48e6-4f38-81c2-e09d8efa41a9\";}}i:12;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"0c06fff0-fda7-41a1-ac48-6d07827ac21c\";s:11:\"description\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:12:\"categoryCode\";s:4:\"OTHD\";s:17:\"transactionNumber\";i:13;s:10:\"monthlyAvg\";d:-54.29;s:11:\"frequentAvg\";s:7:\"-216.67\";s:8:\"transAvg\";d:-50;s:5:\"total\";d:-650;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:13:{i:0;s:36:\"99401d4a-2e67-473e-8b02-7153d51405e5\";i:1;s:36:\"c98e41cf-9fe6-458f-9bf6-054575dc06e2\";i:2;s:36:\"50a07823-63d0-475e-9899-11970cd085a9\";i:3;s:36:\"6a211ad5-4686-45d3-9a21-517096a4f1e8\";i:4;s:36:\"2a8a1486-73d9-4c5e-9659-5d7da918159d\";i:5;s:36:\"27c835ca-d1d2-474e-b285-6c707feebcae\";i:6;s:36:\"d3579f07-d305-4e32-9c43-3aa607bc2a2e\";i:7;s:36:\"0dacb4bd-7aec-416a-b098-40402f85d01a\";i:8;s:36:\"4acdbb34-18a9-4cc6-bbf5-e0c2172ccc25\";i:9;s:36:\"7f797158-0a49-4537-94ff-5e8324d6b0ec\";i:10;s:36:\"61c38b8f-ccb6-4c0b-8de2-a551258c1ef5\";i:11;s:36:\"ccb3be80-90c0-4cf9-9fd8-f94125f3c646\";i:12;s:36:\"3367c928-8d80-492b-8cd4-78adbfa49168\";}}i:13;O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"be306a5f-0cc4-4ea2-83eb-247906d2e986\";s:11:\"description\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:12:\"categoryCode\";s:4:\"OTHD\";s:17:\"transactionNumber\";i:3;s:10:\"monthlyAvg\";d:-114.38;s:11:\"frequentAvg\";s:2:\"NC\";s:8:\"transAvg\";d:-455.98;s:5:\"total\";d:-1367.95;s:7:\"account\";s:4:\"2465\";s:8:\"transIds\";a:3:{i:0;s:36:\"64faea92-c6c7-42a4-bc54-40fe15d48cc0\";i:1;s:36:\"79f81f8f-4a15-4525-a450-8e3805adfc82\";i:2;s:36:\"6f420350-c3ab-49a3-a81e-80cef2f6edc4\";}}}s:17:\"creditsTotalTrans\";i:33;s:15:\"debitTotalTrans\";i:47;}s:9:\"forReview\";a:10:{i:0;O:8:\"stdClass\":6:{s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:8:\"category\";s:4:\"PAYD\";s:4:\"sodd\";b:1;s:6:\"amount\";d:-89.65;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"25/11/2019\";}i:1;O:8:\"stdClass\":6:{s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:8:\"category\";s:4:\"PAYD\";s:4:\"sodd\";b:1;s:6:\"amount\";d:-89.65;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"24/10/2019\";}i:2;O:8:\"stdClass\":6:{s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:8:\"category\";s:4:\"PAYD\";s:4:\"sodd\";b:1;s:6:\"amount\";d:-89.65;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"22/09/2019\";}i:3;O:8:\"stdClass\":6:{s:11:\"description\";s:23:\"DIRECT DEBIT DISHON FEE\";s:8:\"category\";s:4:\"DISH\";s:4:\"sodd\";b:1;s:6:\"amount\";d:-9;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"16/09/2019\";}i:4;O:8:\"stdClass\":6:{s:11:\"description\";s:27:\"FIRST STOP MONEY FSM XX5099\";s:8:\"category\";s:4:\"LONP\";s:4:\"sodd\";b:0;s:6:\"amount\";d:600;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"18/11/2019\";}i:5;O:8:\"stdClass\":6:{s:11:\"description\";s:38:\"PAYMENT TO FIRST CASH XX9959 **1207154\";s:8:\"category\";s:4:\"PAYD\";s:4:\"sodd\";b:0;s:6:\"amount\";d:-323.72;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"07/11/2019\";}i:6;O:8:\"stdClass\":6:{s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:8:\"category\";s:4:\"RVRS\";s:4:\"sodd\";b:0;s:6:\"amount\";d:323.72;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"02/11/2019\";}i:7;O:8:\"stdClass\":6:{s:11:\"description\";s:38:\"PAYMENT TO FIRST CASH XX9959 **1207154\";s:8:\"category\";s:4:\"PAYD\";s:4:\"sodd\";b:0;s:6:\"amount\";d:-323.72;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"02/10/2019\";}i:8;O:8:\"stdClass\":6:{s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:8:\"category\";s:4:\"RVRS\";s:4:\"sodd\";b:0;s:6:\"amount\";d:323.72;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"02/10/2019\";}i:9;O:8:\"stdClass\":6:{s:11:\"description\";s:22:\"DIRECT DEBIT DISHONOUR\";s:8:\"category\";s:4:\"RVRS\";s:4:\"sodd\";b:0;s:6:\"amount\";d:778.7;s:7:\"account\";s:4:\"2465\";s:4:\"date\";s:10:\"18/09/2019\";}}s:16:\"billersAndPayees\";O:8:\"stdClass\":2:{s:7:\"billers\";a:0:{}s:6:\"payees\";a:0:{}}s:12:\"transactions\";a:105:{i:0;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"ffb27755-f829-4d73-a569-24afc558605e\";s:4:\"date\";s:10:\"10/12/2019\";s:8:\"category\";s:4:\"FEES\";s:11:\"description\";s:19:\"ACCOUNT SERVICE FEE\";s:5:\"debit\";s:5:\"-4.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41206.32\";s:11:\"cleanString\";s:19:\"ACCOUNT SERVICE FEE\";s:8:\"netOffId\";s:0:\"\";}i:1;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"99401d4a-2e67-473e-8b02-7153d51405e5\";s:4:\"date\";s:10:\"10/12/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41156.32\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:2;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9c20c4c6-5b4c-45e7-b3d6-df98c1ad5e16\";s:4:\"date\";s:10:\"08/12/2019\";s:8:\"category\";s:4:\"UTLW\";s:11:\"description\";s:65:\"WITHDRAWAL - INTERNET ONLINE BANKING 5783111 BPAY TO SYDNEY WATER\";s:5:\"debit\";s:7:\"-295.40\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"40860.92\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:3;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a79332ff-81a4-48de-bf7b-3099bda54b60\";s:4:\"date\";s:10:\"08/12/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"286.12\";s:7:\"balance\";s:8:\"41147.04\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:4;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"2f8a9bc5-8ea8-4dbf-8847-a187b62d4650\";s:4:\"date\";s:10:\"05/12/2019\";s:8:\"category\";s:4:\"CASH\";s:11:\"description\";s:37:\"WITHDRAWAL - BBL ATM PYRMONT SUPA IGA\";s:5:\"debit\";s:7:\"-150.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"40997.04\";s:11:\"cleanString\";s:26:\"WITHDRAWAL BBL ATM PYRMONT\";s:8:\"netOffId\";s:0:\"\";}i:5;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"79f81f8f-4a15-4525-a450-8e3805adfc82\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:71:\"WITHDRAWAL - INTERNET ONLINE BANKING 1547581 PAYMENT MATT - POOL 07-JAN\";s:5:\"debit\";s:9:\"-1,296.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"39701.04\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:6;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"c98e41cf-9fe6-458f-9bf6-054575dc06e2\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"39651.04\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:7;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e94c52df-3f67-4358-b33f-6c2bd70fe708\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"39798.02\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:8;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"246c119e-6a3b-4c7a-802e-d1201f6d77a8\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"39933.82\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:9;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9e098712-e716-4ee5-a887-21a98b50f65c\";s:4:\"date\";s:10:\"02/12/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"40034.07\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:10;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"09bb2a3c-9d33-4bba-8793-ad1bf334b36b\";s:4:\"date\";s:10:\"29/11/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:30:\"TRANSFER FROM ABC NOMINEES PAY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"4,047.50\";s:7:\"balance\";s:8:\"44081.57\";s:11:\"cleanString\";s:16:\"ABC NOMINEES PAY\";s:8:\"netOffId\";s:0:\"\";}i:11;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a80c758e-c0f3-401a-9196-a368cb062bb4\";s:4:\"date\";s:10:\"28/11/2019\";s:8:\"category\";s:4:\"GIFT\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING 1554683 PAYMENT ABLOOM 13-JAN\";s:5:\"debit\";s:7:\"-118.80\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"43962.77\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:12;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"4ab93f6c-d204-46ed-a570-5690be8e3cc9\";s:4:\"date\";s:10:\"25/11/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:5:\"debit\";s:6:\"-89.65\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"43873.12\";s:11:\"cleanString\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:8:\"netOffId\";s:0:\"\";}i:13;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"50a07823-63d0-475e-9899-11970cd085a9\";s:4:\"date\";s:10:\"25/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"43823.12\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:14;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"cc526884-c2a4-4f95-a4fc-54bd9151b049\";s:4:\"date\";s:10:\"24/11/2019\";s:8:\"category\";s:4:\"INTD\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:5:\"debit\";s:9:\"-1,263.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"42559.70\";s:11:\"cleanString\";s:16:\"INTEREST CHARGED\";s:8:\"netOffId\";s:0:\"\";}i:15;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e75d6885-a81d-48d8-9694-3f118069f706\";s:4:\"date\";s:10:\"24/11/2019\";s:8:\"category\";s:4:\"CHDC\";s:11:\"description\";s:47:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"45.89\";s:7:\"balance\";s:8:\"42605.59\";s:11:\"cleanString\";s:13:\"CHILD SUPPORT\";s:8:\"netOffId\";s:0:\"\";}i:16;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a392c809-317d-4024-a1c3-fe1958b511df\";s:4:\"date\";s:10:\"23/11/2019\";s:8:\"category\";s:4:\"LOND\";s:11:\"description\";s:48:\"WITHDRAWAL - DIRECT DEBIT 8605212 ACME CAR LOANS\";s:5:\"debit\";s:7:\"-778.70\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41826.89\";s:11:\"cleanString\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:8:\"netOffId\";s:0:\"\";}i:17;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"58d30a10-fa08-4146-8f9b-15e8aff43ea3\";s:4:\"date\";s:10:\"23/11/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"42067.97\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:18;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"5ed57052-0f0e-46a1-86fc-cc45f1a3b4b2\";s:4:\"date\";s:10:\"22/11/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 6799985 BPAY TO TELSTRA CORP LTD\";s:5:\"debit\";s:7:\"-177.36\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41890.61\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:19;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6a211ad5-4686-45d3-9a21-517096a4f1e8\";s:4:\"date\";s:10:\"21/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"41840.61\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:20;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"8edac440-08d5-4101-9864-3ca75550b1de\";s:4:\"date\";s:10:\"18/11/2019\";s:8:\"category\";s:4:\"LONP\";s:11:\"description\";s:27:\"FIRST STOP MONEY FSM XX5099\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"600.00\";s:7:\"balance\";s:8:\"42440.61\";s:11:\"cleanString\";s:20:\"FIRST STOP MONEY FSM\";s:8:\"netOffId\";s:0:\"\";}i:21;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"1a275e02-c754-47a6-a7c4-d46ede965bbb\";s:4:\"date\";s:10:\"18/11/2019\";s:8:\"category\";s:4:\"CRTP\";s:11:\"description\";s:65:\"WITHDRAWAL - INTERNET ONLINE BANKING 1264063 PAYMENT MAZDA 21-JAN\";s:5:\"debit\";s:9:\"-7,500.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34940.61\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:22;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d84b9210-fce9-4f13-96c7-5c4e96765fe9\";s:4:\"date\";s:10:\"14/11/2019\";s:8:\"category\";s:4:\"CRTP\";s:11:\"description\";s:65:\"WITHDRAWAL - INTERNET ONLINE BANKING 1596417 PAYMENT MAZDA 22-JAN\";s:5:\"debit\";s:9:\"-5,000.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"29940.61\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:23;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d2e74efd-7ca0-4080-b169-0deab84133ab\";s:4:\"date\";s:10:\"14/11/2019\";s:8:\"category\";s:4:\"CASH\";s:11:\"description\";s:40:\"WITHDRAWAL - NAB ATM 16.15 MOSMAN BRANCH\";s:5:\"debit\";s:7:\"-250.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"29690.61\";s:11:\"cleanString\";s:38:\"WITHDRAWAL NAB ATM nn.nn MOSMAN BRANCH\";s:8:\"netOffId\";s:0:\"\";}i:24;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"42304262-8fe7-4c7f-9f98-c7939168b8b6\";s:4:\"date\";s:10:\"14/11/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"29837.59\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:25;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0811fdc6-8523-453e-b7c1-de30934e4ba0\";s:4:\"date\";s:10:\"11/11/2019\";s:8:\"category\";s:4:\"INSD\";s:11:\"description\";s:67:\"WITHDRAWAL - INTERNET ONLINE BANKING 8400345 BPAY TO AAMI INSURANCE\";s:5:\"debit\";s:9:\"-1,109.75\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"28727.84\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:26;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6dfe9cc5-6e74-4101-87c6-6a627119fd95\";s:4:\"date\";s:10:\"11/11/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"28863.64\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:27;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"f870fd21-4138-4533-99bf-0005a50fb635\";s:4:\"date\";s:10:\"10/11/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"28963.89\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:28;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"408f084b-c9a3-4166-a11d-72ddd7f29cc1\";s:4:\"date\";s:10:\"09/11/2019\";s:8:\"category\";s:4:\"OTFC\";s:11:\"description\";s:57:\"DEPOSIT - INTERNET ONLINE BANKING 2004186 FNDS TFR 25-JAN\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"3,000.00\";s:7:\"balance\";s:8:\"31963.89\";s:11:\"cleanString\";s:34:\"- INTERNET ONLINE BANKING FNDS TFR\";s:8:\"netOffId\";s:0:\"\";}i:29;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"2a8a1486-73d9-4c5e-9659-5d7da918159d\";s:4:\"date\";s:10:\"08/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31913.89\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:30;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6a20bebe-9f57-4675-955a-1974ce424b74\";s:4:\"date\";s:10:\"08/11/2019\";s:8:\"category\";s:4:\"UTIL\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 4597611 BPAY TO ENERGY AUSTRALIA\";s:5:\"debit\";s:7:\"-764.37\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31149.52\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:31;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"f48f62b9-66e7-4950-9cf8-ce36db6086ea\";s:4:\"date\";s:10:\"07/11/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"286.12\";s:7:\"balance\";s:8:\"31435.64\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:32;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e54c24a4-520a-4db9-9115-8773634b026d\";s:4:\"date\";s:10:\"07/11/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:38:\"PAYMENT TO FIRST CASH XX9959 **1207154\";s:5:\"debit\";s:7:\"-323.72\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31111.92\";s:11:\"cleanString\";s:10:\"FIRST CASH\";s:8:\"netOffId\";s:0:\"\";}i:33;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"5391afaf-ff9a-4f19-b3f9-db406588ca53\";s:4:\"date\";s:10:\"07/11/2019\";s:8:\"category\";s:4:\"FEES\";s:11:\"description\";s:11:\"SERVICE FEE\";s:5:\"debit\";s:5:\"-4.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31107.92\";s:11:\"cleanString\";s:11:\"SERVICE FEE\";s:8:\"netOffId\";s:0:\"\";}i:34;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a869dbc2-3998-4013-a1dc-fa03046bc4c9\";s:4:\"date\";s:10:\"06/11/2019\";s:8:\"category\";s:4:\"LONC\";s:11:\"description\";s:71:\"DEPOSIT - INTERNET ONLINE BANKING 2261012 FNDS TFR MORTGAGE FUND 04-FEB\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"350.00\";s:7:\"balance\";s:8:\"31457.92\";s:11:\"cleanString\";s:44:\"- INTERNET ONLINE BANKING FNDS MORTGAGE FUND\";s:8:\"netOffId\";s:0:\"\";}i:35;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"27c835ca-d1d2-474e-b285-6c707feebcae\";s:4:\"date\";s:10:\"02/11/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31407.92\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:36;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"2747053b-ade5-4db8-890a-2faeab8d1f18\";s:4:\"date\";s:10:\"02/11/2019\";s:8:\"category\";s:4:\"RVRS\";s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"323.72\";s:7:\"balance\";s:8:\"31731.64\";s:11:\"cleanString\";s:19:\"REVERSAL OF PAYMENT\";s:8:\"netOffId\";s:0:\"\";}i:37;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"cf611be8-e483-4b58-9f3e-6ad22606bd3f\";s:4:\"date\";s:10:\"01/11/2019\";s:8:\"category\";s:4:\"DPST\";s:11:\"description\";s:32:\"DEPOSIT INTERNET DEPOSIT 05MAR14\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"300.00\";s:7:\"balance\";s:8:\"32031.64\";s:11:\"cleanString\";s:16:\"INTERNET DEPOSIT\";s:8:\"netOffId\";s:0:\"\";}i:38;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a750307b-d818-44fc-8387-90943de61929\";s:4:\"date\";s:10:\"31/10/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32010.49\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:39;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"269fbcb1-84d4-46af-bd1e-c39a1d20bffe\";s:4:\"date\";s:10:\"31/10/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"32157.47\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:40;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e8423828-3bef-42e6-8b09-f5317e51da0b\";s:4:\"date\";s:10:\"31/10/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:29:\"PAYTO 5481XXXXXXXX1100 FSHARP\";s:5:\"debit\";s:7:\"-300.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31857.47\";s:11:\"cleanString\";s:29:\"PAYTO 5481XXXXXXXX1100 FSHARP\";s:8:\"netOffId\";s:0:\"\";}i:41;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9449bc08-6ffa-46da-bdde-53059f719095\";s:4:\"date\";s:10:\"26/10/2019\";s:8:\"category\";s:4:\"CASH\";s:11:\"description\";s:54:\"WITHDRAWAL - WESTPAC ATM 10.50 GEORGE ST SYDNEY BRANCH\";s:5:\"debit\";s:7:\"-150.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"31707.47\";s:11:\"cleanString\";s:52:\"WITHDRAWAL WESTPAC ATM nn.nn GEORGE ST SYDNEY BRANCH\";s:8:\"netOffId\";s:0:\"\";}i:42;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"38abe77d-d3bf-4393-bfcc-a778c9bb334c\";s:4:\"date\";s:10:\"26/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"31843.27\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:43;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"529f72fd-005f-489d-9734-7363d7d60fb6\";s:4:\"date\";s:10:\"26/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"31943.52\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:44;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"5ef423bd-e3dd-4ba7-ba20-b85fb43e41a5\";s:4:\"date\";s:10:\"25/10/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:30:\"TRANSFER FROM ABC NOMINEES PAY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"4,047.50\";s:7:\"balance\";s:8:\"35991.02\";s:11:\"cleanString\";s:16:\"ABC NOMINEES PAY\";s:8:\"netOffId\";s:0:\"\";}i:45;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d3579f07-d305-4e32-9c43-3aa607bc2a2e\";s:4:\"date\";s:10:\"25/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35941.02\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:46;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e4243067-b6f0-4c18-9a4f-c42830cefa61\";s:4:\"date\";s:10:\"24/10/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:5:\"debit\";s:6:\"-89.65\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35851.37\";s:11:\"cleanString\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:8:\"netOffId\";s:0:\"\";}i:47;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"fa9c0096-e2a7-424f-b709-05dbb85fc7bf\";s:4:\"date\";s:10:\"23/10/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"36092.45\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:48;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e0874cd9-f6ce-489f-acb9-daab399c77ba\";s:4:\"date\";s:10:\"19/10/2019\";s:8:\"category\";s:4:\"INTD\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:5:\"debit\";s:9:\"-1,263.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34829.03\";s:11:\"cleanString\";s:16:\"INTEREST CHARGED\";s:8:\"netOffId\";s:0:\"\";}i:49;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0992d340-a2ce-4fd0-8971-13f92d59b5f6\";s:4:\"date\";s:10:\"17/10/2019\";s:8:\"category\";s:4:\"CHDC\";s:11:\"description\";s:47:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"45.89\";s:7:\"balance\";s:8:\"34874.92\";s:11:\"cleanString\";s:13:\"CHILD SUPPORT\";s:8:\"netOffId\";s:0:\"\";}i:50;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"15786786-78ed-421a-8766-27fc250fe205\";s:4:\"date\";s:10:\"17/10/2019\";s:8:\"category\";s:4:\"LOND\";s:11:\"description\";s:48:\"WITHDRAWAL - DIRECT DEBIT 8605212 ACME CAR LOANS\";s:5:\"debit\";s:7:\"-778.70\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34096.22\";s:11:\"cleanString\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:8:\"netOffId\";s:0:\"\";}i:51;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0dacb4bd-7aec-416a-b098-40402f85d01a\";s:4:\"date\";s:10:\"17/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34046.22\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:52;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"be04590d-4db6-4979-a18c-5546fa71ab04\";s:4:\"date\";s:10:\"15/10/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34025.07\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:53;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"ec3bd37d-4c50-4963-9d74-9613368c183c\";s:4:\"date\";s:10:\"15/10/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 3929303 BPAY TO TELSTRA CORP LTD\";s:5:\"debit\";s:7:\"-160.92\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33864.15\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:54;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"4fc38307-5549-42e9-be62-5184bed162f4\";s:4:\"date\";s:10:\"14/10/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"34011.13\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:55;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"8c323ef9-7e41-4ef8-a5ea-01e1e7429e80\";s:4:\"date\";s:10:\"13/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"34146.93\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:56;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e940cf70-d11a-4056-96dc-035997681ae0\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"34247.18\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:57;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"21b32283-2d79-45af-9579-9c291bdf7de0\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"OTFC\";s:11:\"description\";s:61:\"DEPOSIT - INTERNET ONLINE BANKING 2565332 FNDS TFR ADC 23-FEB\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"600.00\";s:7:\"balance\";s:8:\"34847.18\";s:11:\"cleanString\";s:34:\"- INTERNET ONLINE BANKING FNDS ADC\";s:8:\"netOffId\";s:0:\"\";}i:58;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"229a3b61-14b9-47ea-b9c7-903f07d6387d\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"TRPT\";s:11:\"description\";s:48:\"EFTPOS PURCHASE 24FEB07:30 TAXI EPAY WEST SYDNEY\";s:5:\"debit\";s:6:\"-29.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34817.76\";s:11:\"cleanString\";s:30:\"PURCHASE TAXI EPAY WEST SYDNEY\";s:8:\"netOffId\";s:0:\"\";}i:59;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"4acdbb34-18a9-4cc6-bbf5-e0c2172ccc25\";s:4:\"date\";s:10:\"12/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34767.76\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:60;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"055225b9-e48f-44df-af77-a586125e88a7\";s:4:\"date\";s:10:\"10/10/2019\";s:8:\"category\";s:4:\"TRPT\";s:11:\"description\";s:36:\"VISA PURCHASE GM CABS PTY LTD MASCOT\";s:5:\"debit\";s:6:\"-32.09\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34735.67\";s:11:\"cleanString\";s:14:\"GM CABS MASCOT\";s:8:\"netOffId\";s:0:\"\";}i:61;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"69fc8ecf-c611-4190-9db9-f2d773f50df1\";s:4:\"date\";s:10:\"09/10/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING 5146651 BPAY TO OPTUS BILLING\";s:5:\"debit\";s:7:\"-156.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34579.67\";s:11:\"cleanString\";s:13:\"OPTUS BILLING\";s:8:\"netOffId\";s:0:\"\";}i:62;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"bdde68c4-bc22-435a-9e48-9b5990e91726\";s:4:\"date\";s:10:\"09/10/2019\";s:8:\"category\";s:4:\"INSD\";s:11:\"description\";s:67:\"WITHDRAWAL - INTERNET ONLINE BANKING 8400345 BPAY TO AAMI INSURANCE\";s:5:\"debit\";s:9:\"-1,386.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33193.67\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:63;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"03f27720-ed19-49be-b534-769c33378a1f\";s:4:\"date\";s:10:\"09/10/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"33434.75\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:64;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"97f6a28c-6860-4264-a612-4a3ada62c8ba\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"FEES\";s:11:\"description\";s:11:\"SERVICE FEE\";s:5:\"debit\";s:5:\"-4.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33430.75\";s:11:\"cleanString\";s:11:\"SERVICE FEE\";s:8:\"netOffId\";s:0:\"\";}i:65;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"84124d4f-01f0-44f5-a760-c61e72103e71\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:56:\"DIRECT DEBIT 123456 TBD PAYSMART PTY 35244492/GRACIE SYD\";s:5:\"debit\";s:6:\"-28.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33402.75\";s:11:\"cleanString\";s:23:\"TBD PAYSMART GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:66;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"b9efd934-c04b-49b6-a94d-58d0c3f694d5\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:56:\"DIRECT DEBIT 323459 TBD PAYSMART PTY 12344492/GRACIE SYD\";s:5:\"debit\";s:6:\"-12.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33390.75\";s:11:\"cleanString\";s:23:\"TBD PAYSMART GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:67;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e32a2bbe-0ab9-4484-b149-52f4d34efc5d\";s:4:\"date\";s:10:\"05/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:55:\"DIRECT DEBIT 777756 TBD PAY-MAY PTY 35248882/GRACIE SYD\";s:5:\"debit\";s:6:\"-72.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33318.75\";s:11:\"cleanString\";s:15:\"TBD PAY-MAY SYD\";s:8:\"netOffId\";s:0:\"\";}i:68;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6f420350-c3ab-49a3-a81e-80cef2f6edc4\";s:4:\"date\";s:10:\"04/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:70:\"WITHDRAWAL - INTERNET ONLINE BANKING 1579424 PAYMENT BARB VINYL 03-MAR\";s:5:\"debit\";s:6:\"-21.95\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33296.80\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:69;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"77db9085-18e3-42f5-94c9-ec21c650df53\";s:4:\"date\";s:10:\"02/10/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:38:\"PAYMENT TO FIRST CASH XX9959 **1207154\";s:5:\"debit\";s:7:\"-323.72\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32973.08\";s:11:\"cleanString\";s:10:\"FIRST CASH\";s:8:\"netOffId\";s:0:\"\";}i:70;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"66b2824f-3329-4cb8-b401-ab722f47f405\";s:4:\"date\";s:10:\"02/10/2019\";s:8:\"category\";s:4:\"RVRS\";s:11:\"description\";s:19:\"REVERSAL OF PAYMENT\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"323.72\";s:7:\"balance\";s:8:\"33296.80\";s:11:\"cleanString\";s:19:\"REVERSAL OF PAYMENT\";s:8:\"netOffId\";s:0:\"\";}i:71;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"b231c3d2-48e6-4f38-81c2-e09d8efa41a9\";s:4:\"date\";s:10:\"02/10/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:55:\"DIRECT DEBIT 919159 TBD PAY-MAY PTY 12349992/GRACIE SYD\";s:5:\"debit\";s:6:\"-43.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33253.80\";s:11:\"cleanString\";s:15:\"TBD PAY-MAY SYD\";s:8:\"netOffId\";s:0:\"\";}i:72;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"891cef1e-e094-419c-9f49-e6201452a47d\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"PRFS\";s:11:\"description\";s:59:\"DIRECT DEBIT 997756 TBD PTY APR PAYMENT 35255882/GRACIE SYD\";s:5:\"debit\";s:6:\"-54.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33199.80\";s:11:\"cleanString\";s:30:\"TBD PAYMENT 35255882GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:73;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"578f5d00-95a6-4a25-9511-585381a2ab98\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"PRFS\";s:11:\"description\";s:59:\"DIRECT DEBIT 918859 TBD PTY MAY PAYMENT 12349442/GRACIE SYD\";s:5:\"debit\";s:6:\"-81.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33118.80\";s:11:\"cleanString\";s:30:\"TBD PAYMENT 12349442GRACIE SYD\";s:8:\"netOffId\";s:0:\"\";}i:74;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"7f797158-0a49-4537-94ff-5e8324d6b0ec\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33068.80\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:75;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6f03d33a-5b8a-4756-9815-0a721fe2e58a\";s:4:\"date\";s:10:\"27/09/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33047.65\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:76;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"28233bc5-72e3-4105-80ad-b5e795b5dc08\";s:4:\"date\";s:10:\"26/09/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"33194.63\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:77;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"a155fa61-18c8-4a92-b7b5-02973858923f\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:32:\"PAYTO 5481 29** **** 1100 FSHARP\";s:5:\"debit\";s:7:\"-198.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32996.63\";s:11:\"cleanString\";s:15:\"PAYTO 29 FSHARP\";s:8:\"netOffId\";s:0:\"\";}i:78;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0c0f0970-02a2-4d8c-988c-336a71b78706\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"GIFT\";s:11:\"description\";s:66:\"WITHDRAWAL - INTERNET ONLINE BANKING 1595426 PAYMENT ABLOOM 07-MAR\";s:5:\"debit\";s:7:\"-586.58\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"32410.05\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:79;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"bd51277d-1314-4715-b028-e62c1ffa1e1e\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"32545.85\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:80;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"50ff8af0-741b-4b53-bfac-a0dde7fbb9f2\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"32646.10\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:81;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"694f388d-ff73-4b5a-93da-2dd220e1727d\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:30:\"TRANSFER FROM ABC NOMINEES PAY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:8:\"4,047.50\";s:7:\"balance\";s:8:\"36693.60\";s:11:\"cleanString\";s:16:\"ABC NOMINEES PAY\";s:8:\"netOffId\";s:0:\"\";}i:82;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"61c38b8f-ccb6-4c0b-8de2-a551258c1ef5\";s:4:\"date\";s:10:\"25/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"36643.60\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:83;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"73f4b114-7cdd-46cd-93d4-445338a1c59a\";s:4:\"date\";s:10:\"24/09/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"286.12\";s:7:\"balance\";s:8:\"36929.72\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:84;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"981adc74-98eb-4b0a-9332-47aa9b7173f7\";s:4:\"date\";s:10:\"22/09/2019\";s:8:\"category\";s:4:\"PAYD\";s:11:\"description\";s:49:\"WITHDRAWAL - DIRECT DEBIT 1120965 CASH CONVERTERS\";s:5:\"debit\";s:6:\"-89.65\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"36840.07\";s:11:\"cleanString\";s:26:\"WITHDRAWAL CASH CONVERTERS\";s:8:\"netOffId\";s:0:\"\";}i:85;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"59a2a1a2-5abd-4d7f-b797-3786e14d8323\";s:4:\"date\";s:10:\"20/09/2019\";s:8:\"category\";s:4:\"INTD\";s:11:\"description\";s:16:\"INTEREST CHARGED\";s:5:\"debit\";s:9:\"-1,263.42\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35576.65\";s:11:\"cleanString\";s:16:\"INTEREST CHARGED\";s:8:\"netOffId\";s:0:\"\";}i:86;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"9301589a-9b23-4897-86d4-e21828a5bed0\";s:4:\"date\";s:10:\"20/09/2019\";s:8:\"category\";s:4:\"CHDC\";s:11:\"description\";s:47:\"DIRECT CREDIT XX9523 CHILD SUPPORT CS **2134509\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"45.89\";s:7:\"balance\";s:8:\"35622.54\";s:11:\"cleanString\";s:13:\"CHILD SUPPORT\";s:8:\"netOffId\";s:0:\"\";}i:87;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0c1a2e3b-f4d7-4271-84b5-0d034a3d7392\";s:4:\"date\";s:10:\"19/09/2019\";s:8:\"category\";s:4:\"LOND\";s:11:\"description\";s:48:\"WITHDRAWAL - DIRECT DEBIT 8605212 ACME CAR LOANS\";s:5:\"debit\";s:7:\"-778.70\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34843.84\";s:11:\"cleanString\";s:25:\"WITHDRAWAL ACME CAR LOANS\";s:8:\"netOffId\";s:0:\"\";}i:88;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"64faea92-c6c7-42a4-bc54-40fe15d48cc0\";s:4:\"date\";s:10:\"19/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:71:\"WITHDRAWAL - INTERNET ONLINE BANKING 1534350 PAYMENT BARB SAVING 17-MAR\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34793.84\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:89;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e033976f-82b1-4908-af1d-8557376d5724\";s:4:\"date\";s:10:\"18/09/2019\";s:8:\"category\";s:4:\"RVRS\";s:11:\"description\";s:22:\"DIRECT DEBIT DISHONOUR\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"778.70\";s:7:\"balance\";s:8:\"35572.54\";s:11:\"cleanString\";s:9:\"DISHONOUR\";s:8:\"netOffId\";s:0:\"\";}i:90;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"e179f618-87be-46b9-baad-7277a4e22928\";s:4:\"date\";s:10:\"16/09/2019\";s:8:\"category\";s:4:\"DISH\";s:11:\"description\";s:23:\"DIRECT DEBIT DISHON FEE\";s:5:\"debit\";s:5:\"-9.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35563.54\";s:11:\"cleanString\";s:10:\"DISHON FEE\";s:8:\"netOffId\";s:0:\"\";}i:91;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"ccb3be80-90c0-4cf9-9fd8-f94125f3c646\";s:4:\"date\";s:10:\"16/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35513.54\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:92;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d40b964d-f24b-430e-a3fb-6cfa9b4f7c98\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:32:\"PAYTO 5481-29**-****-1100 FSHARP\";s:5:\"debit\";s:7:\"-165.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35348.54\";s:11:\"cleanString\";s:26:\"PAYTO 5481-29--1100 FSHARP\";s:8:\"netOffId\";s:0:\"\";}i:93;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"8c508efc-fe23-4f5c-8070-95e91eee8dd4\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:4:\"GYMM\";s:11:\"description\";s:25:\"DIRECT DEBIT SNAP FITNESS\";s:5:\"debit\";s:6:\"-21.15\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"35327.39\";s:11:\"cleanString\";s:12:\"SNAP FITNESS\";s:8:\"netOffId\";s:0:\"\";}i:94;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"d0ae1ea9-c322-4f37-add9-fb59bd4b221f\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:4:\"GOVF\";s:11:\"description\";s:74:\"DIRECT CREDIT FAMILY ALLOWANCE AUS GOV FAMILIES 3215288 FB1G9978207492887T\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"146.98\";s:7:\"balance\";s:8:\"35474.37\";s:11:\"cleanString\";s:12:\"GOV FAMILIES\";s:8:\"netOffId\";s:0:\"\";}i:95;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"19b64518-02e1-455f-b2de-c7af8fd337f4\";s:4:\"date\";s:10:\"15/09/2019\";s:8:\"category\";s:5:\"OTHIR\";s:11:\"description\";s:65:\"DEPOSIT - INTERNET ONLINE BANKING 2594426 FNDS TFR EXPENSE 21-MAR\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"300.00\";s:7:\"balance\";s:8:\"35774.37\";s:11:\"cleanString\";s:38:\"- INTERNET ONLINE BANKING FNDS EXPENSE\";s:8:\"netOffId\";s:0:\"\";}i:96;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"0f3bbe2b-eab9-442e-993e-1cf06dfd1e13\";s:4:\"date\";s:10:\"13/09/2019\";s:8:\"category\";s:4:\"HOME\";s:11:\"description\";s:72:\"WITHDRAWAL - INTERNET ONLINE BANKING 1579607 PAYMENT HIRE A HUBBY 21-MAR\";s:5:\"debit\";s:9:\"-1,419.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34355.37\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:97;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"529e6fe9-483e-4071-85ca-6a6f8a75038f\";s:4:\"date\";s:10:\"13/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"135.80\";s:7:\"balance\";s:8:\"34491.17\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:98;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"003a4283-07a5-4bc5-8790-f5adace73c19\";s:4:\"date\";s:10:\"12/09/2019\";s:8:\"category\";s:4:\"GOVP\";s:11:\"description\";s:49:\"DEPOSIT-CREDIT CTRLINK PENSION 059P1766602903762R\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"100.25\";s:7:\"balance\";s:8:\"34591.42\";s:11:\"cleanString\";s:15:\"CTRLINK PENSION\";s:8:\"netOffId\";s:0:\"\";}i:99;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"97d37584-96b6-44e7-ad5b-7051fbc997e6\";s:4:\"date\";s:10:\"12/09/2019\";s:8:\"category\";s:4:\"PHNE\";s:11:\"description\";s:69:\"WITHDRAWAL - INTERNET ONLINE BANKING 8887156 BPAY TO TELSTRA CORP LTD\";s:5:\"debit\";s:7:\"-165.77\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34425.65\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:100;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"3367c928-8d80-492b-8cd4-78adbfa49168\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"OTHD\";s:11:\"description\";s:45:\"PERIODICAL PAYMENT TO JESSICA SMITH ALLOWANCE\";s:5:\"debit\";s:6:\"-50.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"34375.65\";s:11:\"cleanString\";s:34:\"PERIODICAL JESSICA SMITH ALLOWANCE\";s:8:\"netOffId\";s:0:\"\";}i:101;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"6f1422ef-aa2f-4ce2-8830-8f76980f407a\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"DEPA\";s:11:\"description\";s:36:\"DEPOSIT MCARE BENEFITS 24137482 AYWQ\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:5:\"36.30\";s:7:\"balance\";s:8:\"34411.95\";s:11:\"cleanString\";s:14:\"MCARE BENEFITS\";s:8:\"netOffId\";s:0:\"\";}i:102;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"55de522f-68aa-4332-a6d2-f708119f16d7\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"SLRY\";s:11:\"description\";s:19:\"ST MICHAEL\'S SALARY\";s:5:\"debit\";s:0:\"\";s:6:\"credit\";s:6:\"241.08\";s:7:\"balance\";s:8:\"34653.03\";s:11:\"cleanString\";s:19:\"ST MICHAEL\'S SALARY\";s:8:\"netOffId\";s:0:\"\";}i:103;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"076d302e-6e1f-4275-bbd9-cd3ec15c970c\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"INSD\";s:11:\"description\";s:67:\"WITHDRAWAL - INTERNET ONLINE BANKING 4861643 BPAY TO AAMI INSURANCE\";s:5:\"debit\";s:9:\"-1,165.37\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33487.66\";s:11:\"cleanString\";s:34:\"WITHDRAWAL INTERNET ONLINE BANKING\";s:8:\"netOffId\";s:0:\"\";}i:104;O:8:\"stdClass\":9:{s:13:\"transactionId\";s:36:\"82fe1ac1-2995-4159-9354-e2c3476be0a5\";s:4:\"date\";s:10:\"11/09/2019\";s:8:\"category\";s:4:\"CCRD\";s:11:\"description\";s:29:\"PAYTO 548129******1100 FSHARP\";s:5:\"debit\";s:7:\"-218.00\";s:6:\"credit\";s:0:\"\";s:7:\"balance\";s:8:\"33269.66\";s:11:\"cleanString\";s:23:\"PAYTO 5481291100 FSHARP\";s:8:\"netOffId\";s:0:\"\";}}s:13:\"accountResult\";O:8:\"stdClass\":1:{s:8:\"finetics\";a:0:{}}s:15:\"employerIncomes\";a:0:{}s:14:\"dynmaicIncomes\";a:0:{}s:12:\"otherIncomes\";a:0:{}s:15:\"summaryComments\";a:0:{}s:10:\"fineticMsg\";O:8:\"stdClass\":2:{s:15:\"fineticMessages\";a:21:{i:0;O:8:\"stdClass\":4:{s:11:\"description\";s:20:\"Income De-Duplicated\";s:4:\"rule\";s:14:\"FINETIC_DEDUPE\";s:4:\"pass\";s:2:\"NC\";s:5:\"order\";i:-1000;}i:1;O:8:\"stdClass\":4:{s:11:\"description\";s:18:\"!Main Income Found\";s:4:\"rule\";s:19:\"BASE_INCOME_SUMMARY\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:0;}i:2;O:8:\"stdClass\":4:{s:11:\"description\";s:36:\"Income Payment Transactions Detected\";s:4:\"rule\";s:16:\"BASE_TRANS_FOUND\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:10;}i:3;O:8:\"stdClass\":4:{s:11:\"description\";s:36:\"Main Income - Regular Payments Found\";s:4:\"rule\";s:19:\"BASE_REGULAR_INCOME\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:20;}i:4;O:8:\"stdClass\":4:{s:11:\"description\";s:44:\"Main Income - Frequent Income Payments Found\";s:4:\"rule\";s:20:\"BASE_INCOME_MIN_FREQ\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:30;}i:5;O:8:\"stdClass\":4:{s:11:\"description\";s:41:\"Joint Account Detected - Employer Matched\";s:4:\"rule\";s:16:\"INCOME_JOIN_ACCT\";s:4:\"pass\";s:2:\"NC\";s:5:\"order\";i:40;}i:6;O:8:\"stdClass\":4:{s:11:\"description\";s:23:\"!Secondary Income Found\";s:4:\"rule\";s:19:\"SEIN_INCOME_SUMMARY\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:50;}i:7;O:8:\"stdClass\":4:{s:11:\"description\";s:36:\"Income Payment Transactions Detected\";s:4:\"rule\";s:16:\"SEIN_TRANS_FOUND\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:60;}i:8;O:8:\"stdClass\":4:{s:11:\"description\";s:42:\"Secondary Income - Regular Payments Founds\";s:4:\"rule\";s:19:\"SEIN_REGULAR_INCOME\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:70;}i:9;O:8:\"stdClass\":4:{s:11:\"description\";s:51:\"Secondary Income - Consistent Income Payments Found\";s:4:\"rule\";s:19:\"SEIN_CONSIST_INCOME\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:80;}i:10;O:8:\"stdClass\":4:{s:11:\"description\";s:15:\"!Expenses Found\";s:4:\"rule\";s:22:\"SECTION_INCOME_SUMMARY\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:90;}i:11;O:8:\"stdClass\":4:{s:11:\"description\";s:31:\"Discretionary Expenses - \'DIEX\'\";s:4:\"rule\";s:16:\"DIEX_TRANS_FOUND\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:100;}i:12;O:8:\"stdClass\":4:{s:11:\"description\";s:33:\"Fixed Expenses - Financial \'FIFI\'\";s:4:\"rule\";s:16:\"FIFI_TRANS_FOUND\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:110;}i:13;O:8:\"stdClass\":4:{s:11:\"description\";s:30:\"Fixed Expenses - Living \'FILI\'\";s:4:\"rule\";s:16:\"FILI_TRANS_FOUND\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:120;}i:14;O:8:\"stdClass\":4:{s:11:\"description\";s:20:\"!Account Information\";s:4:\"rule\";s:17:\"ACCT_INFO_SUMMARY\";s:4:\"pass\";s:2:\"NC\";s:5:\"order\";i:130;}i:15;O:8:\"stdClass\":4:{s:11:\"description\";s:22:\"Applicant Name Matched\";s:4:\"rule\";s:10:\"NAME_MATCH\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:140;}i:16;O:8:\"stdClass\":4:{s:11:\"description\";s:19:\"Joint Account Found\";s:4:\"rule\";s:16:\"JOIN_ACCT_DETECT\";s:4:\"pass\";s:2:\"NC\";s:5:\"order\";i:150;}i:17;O:8:\"stdClass\":4:{s:11:\"description\";s:30:\"No workers compensation income\";s:4:\"rule\";s:7:\"WORCOMP\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:160;}i:18;O:8:\"stdClass\":4:{s:11:\"description\";s:26:\"No Dynamic Debits Detected\";s:4:\"rule\";s:4:\"DYDR\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:170;}i:19;O:8:\"stdClass\":4:{s:11:\"description\";s:30:\"Utilities Expenditure Detected\";s:4:\"rule\";s:5:\"UTILS\";s:4:\"pass\";s:4:\"true\";s:5:\"order\";i:180;}i:20;O:8:\"stdClass\":4:{s:11:\"description\";s:28:\"Grocery Expenditure Detected\";s:4:\"rule\";s:4:\"GROC\";s:4:\"pass\";s:5:\"false\";s:5:\"order\";i:190;}}s:13:\"accountNumber\";s:9:\"678432465\";}}}');

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
(8, 1000000001, '2019_11_07_13_46_21_C.jpg', '/storage/loan_application/1000000001/bank_statement/', '2019-12-11 06:14:01', '2019-12-11 06:14:01'),
(9, 1000000001, 'demo 3.jpg', '/storage/loan_application/1000000001/bank_statement/demo 3.jpg', '2019-12-11 06:38:01', '2019-12-11 06:38:01'),
(10, 1000000021, 'blog-maltese.jpg', '/storage/loan_application/1000000021/bank_statement/blog-maltese.jpg', '2019-12-12 06:19:44', '2019-12-12 06:19:44'),
(11, 1000000021, 'Chrysanthemum.jpg', '/storage/loan_application/1000000021/bank_statement/Chrysanthemum.jpg', '2019-12-12 06:19:47', '2019-12-12 06:19:47'),
(12, 1000000021, 'Desert.jpg', '/storage/loan_application/1000000021/bank_statement/Desert.jpg', '2019-12-12 06:19:49', '2019-12-12 06:19:49'),
(13, 1000000021, 'Hydrangeas.jpg', '/storage/loan_application/1000000021/bank_statement/Hydrangeas.jpg', '2019-12-12 06:19:51', '2019-12-12 06:19:51'),
(16, 1000000026, 'Desert.jpg', '/storage/loan_application/1000000026/bank_statement/Desert.jpg', '2019-12-12 06:54:11', '2019-12-12 06:54:11');

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
(52, 1000000001, 'demo 1.png', '/storage/loan_application/1000000001/business_plan/demo 1.png', '2019-12-11 06:38:04', '2019-12-11 06:38:04'),
(53, 1000000001, 'demo 4.jpg', '/storage/loan_application/1000000001/business_plan/demo 4.jpg', '2019-12-11 06:38:31', '2019-12-11 06:38:31'),
(54, 1000000021, 'Koala.jpg', '/storage/loan_application/1000000021/business_plan/Koala.jpg', '2019-12-12 06:19:54', '2019-12-12 06:19:54'),
(55, 1000000021, 'Lighthouse.jpg', '/storage/loan_application/1000000021/business_plan/Lighthouse.jpg', '2019-12-12 06:19:56', '2019-12-12 06:19:56'),
(56, 1000000021, 'Penguins.jpg', '/storage/loan_application/1000000021/business_plan/Penguins.jpg', '2019-12-12 06:19:58', '2019-12-12 06:19:58'),
(57, 1000000021, 'Tulips.jpg', '/storage/loan_application/1000000021/business_plan/Tulips.jpg', '2019-12-12 06:20:00', '2019-12-12 06:20:00'),
(60, 1000000026, 'Tulips.jpg', '/storage/loan_application/1000000026/business_plan/Tulips.jpg', '2019-12-12 06:54:19', '2019-12-12 06:54:19');

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
(1, 'admin', '2019-12-02 01:29:11', '2019-12-02 23:46:03'),
(2, 'footer-menu', '2019-12-11 03:26:45', '2019-12-11 03:29:30');

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
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 9, '2019-12-01 19:59:12', '2019-12-12 00:45:42', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2019-12-01 19:59:12', '2019-12-12 00:45:42', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 8, '2019-12-01 19:59:12', '2019-12-12 00:45:42', 'voyager.roles.index', NULL),
(5, 1, 'Developer Tools', '', '_self', 'voyager-tools', '#000000', NULL, 11, '2019-12-01 19:59:12', '2019-12-12 00:45:42', NULL, ''),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-01 19:59:12', '2019-12-03 00:31:15', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 10, '2019-12-01 19:59:12', '2019-12-12 00:45:42', 'voyager.settings.index', NULL),
(14, 1, 'Loan Application', '', '_self', 'voyager-documentation', '#000000', NULL, 2, '2019-12-06 04:21:34', '2019-12-11 07:16:48', 'voyager.loan.index', 'null'),
(16, 1, 'Newsletter', '', '_self', 'voyager-news', '#000000', NULL, 5, '2019-12-10 08:16:08', '2019-12-12 00:45:49', 'voyager.newsletter.index', 'null'),
(17, 1, 'Contact List', '', '_self', 'voyager-telephone', '#000000', NULL, 4, '2019-12-11 01:33:05', '2019-12-12 01:05:27', 'voyager.contactus.index', 'null'),
(19, 1, 'Pages', '', '_self', 'voyager-file-text', '#000000', NULL, 6, '2019-12-11 03:21:52', '2019-12-12 00:45:49', 'voyager.pages.index', 'null'),
(20, 2, 'About', 'about-us', '_self', NULL, '#000000', NULL, 1, '2019-12-11 03:27:11', '2019-12-11 04:09:44', NULL, ''),
(21, 2, 'Services', 'services', '_self', NULL, '#000000', NULL, 2, '2019-12-11 03:27:26', '2019-12-11 04:04:11', NULL, ''),
(22, 2, 'Approval', 'approval', '_self', NULL, '#000000', NULL, 3, '2019-12-11 04:05:07', '2019-12-11 04:12:22', NULL, ''),
(23, 2, 'Contact Us', 'contact-us', '_self', NULL, '#000000', NULL, 4, '2019-12-11 04:05:20', '2019-12-11 04:12:29', NULL, ''),
(24, 1, 'Staff', '', '_self', 'voyager-people', '#000000', NULL, 3, '2019-12-12 00:45:23', '2019-12-12 00:46:20', 'voyager.staff.index', 'null');

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
(1, 'salim@redsparkinfo.co.in', NULL, NULL, '::1', '2019-12-09 19:49:19', '2019-12-09 19:49:19'),
(2, 'sadfsafds', NULL, NULL, '::1', '2019-12-11 02:28:19', '2019-12-11 02:28:19'),
(3, 'fsdf', NULL, NULL, '::1', '2019-12-12 04:25:11', '2019-12-12 04:25:11'),
(4, 'aa1@aa.com', NULL, NULL, '::1', '2019-12-12 05:21:43', '2019-12-12 05:21:43'),
(5, 'aa11@aa.com', NULL, NULL, '::1', '2019-12-12 05:24:24', '2019-12-12 05:24:24'),
(6, 'aa121@aa.com', NULL, NULL, '::1', '2019-12-12 05:25:31', '2019-12-12 05:25:31'),
(7, 'aa1221@aa.com', NULL, NULL, '::1', '2019-12-12 05:26:39', '2019-12-12 05:26:39'),
(8, 'aa12211@aa.com', NULL, NULL, '::1', '2019-12-12 05:27:22', '2019-12-12 05:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(256) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `updated_at`, `created_at`) VALUES
(1, 'About Us', 'This is Content', 'about-us', '2019-12-11 08:55:31', '2019-12-11 08:55:31'),
(2, 'Services', 'Services Content Here', 'services', '2019-12-11 08:56:25', '2019-12-11 08:56:25'),
(3, 'Contact Us', '<section class=\"contact_wrap py-5\">\r\n    <div class=\"container\">\r\n        <div class=\"row  text-center\">\r\n            <div class=\"col-sm-12\">\r\n                <h6>Address : Suite 1203, 530 Lt Collins St Melbourne VIC 3000 <br>\r\n                    Phone: +81 000 2002, Email: office@razzoo.com, Web: www.razzoo.com</h6>\r\n            </div>\r\n        </div>\r\n        <div class=\"row mt-5\">            \r\n            <center><div class=\"col-sm-10\">[contact-form]</div></center>\r\n        </div>\r\n        <div class=\"row mt-5\">\r\n            <div class=\"col-sm-12\">\r\n                <div style=\"width: 100%\">\r\n                    <iframe width=\"100%\" height=\"461\" src=\"https://maps.google.com/maps?width=100%&height=461&hl=en&q=Suite%201203%2C%20530%20Lt%20Collins%20St%20Melbourne%20VIC%203000%20+(razzoo)&ie=UTF8&t=&z=15&iwloc=B&output=embed\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\">\r\n                        <a href=\"https://www.mapsdirections.info/en/journey-planner.htm\">find directions</a>\r\n                    </iframe>\r\n                </div>\r\n            </div>            \r\n        </div>\r\n    </div>\r\n</section>', 'contact-us', '2019-12-12 05:35:36', '2019-12-11 09:43:18'),
(4, 'Approval', 'Approval Page Content Here', 'approval', '2019-12-11 09:43:49', '2019-12-11 09:43:49'),
(5, 'Privacy Policy', '**Content Here**', 'privacy-policy', '2019-12-11 07:48:27', '2019-12-11 07:48:27'),
(6, 'Terms Conditions', '**Terms Conditions Content Here**', 'terms', '2019-12-11 07:48:56', '2019-12-11 07:48:56');

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
(37, 'delete_newsletter_subscriber', 'newsletter_subscriber', '2019-12-10 08:14:53', '2019-12-10 08:14:53'),
(38, 'browse_contactus', 'contactus', '2019-12-11 01:33:05', '2019-12-11 01:33:05'),
(39, 'read_contactus', 'contactus', '2019-12-11 01:33:05', '2019-12-11 01:33:05'),
(40, 'edit_contactus', 'contactus', '2019-12-11 01:33:05', '2019-12-11 01:33:05'),
(41, 'add_contactus', 'contactus', '2019-12-11 01:33:05', '2019-12-11 01:33:05'),
(42, 'delete_contactus', 'contactus', '2019-12-11 01:33:05', '2019-12-11 01:33:05'),
(43, 'browse_pages', 'pages', '2019-12-11 03:21:51', '2019-12-11 03:21:51'),
(44, 'read_pages', 'pages', '2019-12-11 03:21:51', '2019-12-11 03:21:51'),
(45, 'edit_pages', 'pages', '2019-12-11 03:21:51', '2019-12-11 03:21:51'),
(46, 'add_pages', 'pages', '2019-12-11 03:21:51', '2019-12-11 03:21:51'),
(47, 'delete_pages', 'pages', '2019-12-11 03:21:51', '2019-12-11 03:21:51'),
(48, 'browse_staff', 'staff', '2019-12-12 00:45:23', '2019-12-12 00:45:23'),
(49, 'read_staff', 'staff', '2019-12-12 00:45:23', '2019-12-12 00:45:23'),
(50, 'edit_staff', 'staff', '2019-12-12 00:45:23', '2019-12-12 00:45:23'),
(51, 'add_staff', 'staff', '2019-12-12 00:45:23', '2019-12-12 00:45:23'),
(52, 'delete_staff', 'staff', '2019-12-12 00:45:23', '2019-12-12 00:45:23');

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
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2);

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
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '121332432432323232432', '', 'text', 1, 'Admin'),
(12, 'site.GOOGLE_API_KEY', 'Google API Key', 'AIzaSyDjJTAWtjK-xAQSCZc7xfE_NykXYuHgQdQ', NULL, 'text', 6, 'Site'),
(16, 'site.FACEBOOK_URL', 'Facebook URL', 'http://www.facebook.com', NULL, 'text', 7, 'Site'),
(17, 'site.TWITTER_URL', 'Twitter URL', 'https://twitter.com', NULL, 'text', 8, 'Site'),
(18, 'site.LINKEDIN_URL', 'Linkedin URL', 'http://www.linkedin.com', NULL, 'text', 9, 'Site'),
(20, 'site.store_address', 'Store Address', 'Address : Suite 1203, 530 Lt Collins St Melbourne VIC 3000 <br>\r\nPhone: +81 000 2002, Email: office@razzoo.com, Web: www.razzoo.com', NULL, 'text_area', 11, 'Site'),
(21, 'site.store_phone', 'Store Contact Number', '1300 000 000', NULL, 'text', 12, 'Site'),
(22, 'site.ABN_GUID', 'ABN GUID', '8f522b7d-f8fa-4503-a385-34a7399dbcca', NULL, 'text', 10, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `department` varchar(256) NOT NULL,
  `profile` text NOT NULL,
  `photo` varchar(256) NOT NULL,
  `facebook_url` varchar(256) NOT NULL,
  `twitter_url` varchar(256) NOT NULL,
  `linkedin_url` varchar(256) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `department`, `profile`, `photo`, `facebook_url`, `twitter_url`, `linkedin_url`, `updated_at`, `created_at`) VALUES
(1, 'Elisa Austen', 'Head of Innovation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'staff\\December2019\\6bNNeoI2G031E5qQX6kP.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', '2019-12-12 06:20:59', '2019-12-12 06:20:59'),
(2, 'Elisa Austen 2', 'Head of Innovation 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.', 'staff\\December2019\\w7TZd31qXYx6mleQIkmT.png', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', '2019-12-12 06:21:29', '2019-12-12 06:21:29');

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
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `loan_application_api_response`
--
ALTER TABLE `loan_application_api_response`
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
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_application`
--
ALTER TABLE `loan_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000027;

--
-- AUTO_INCREMENT for table `loan_application_api_response`
--
ALTER TABLE `loan_application_api_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_application_bankstatements`
--
ALTER TABLE `loan_application_bankstatements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `loan_application_business_files`
--
ALTER TABLE `loan_application_business_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
