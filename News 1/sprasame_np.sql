-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2024 at 02:28 PM
-- Server version: 5.7.44-cll-lve
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sprasame_np`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'QRIqOjB6DXpY3jU8zbeHz5cabcp77bPS', 1, '2024-05-03 15:00:22', '2024-05-03 15:00:22', '2024-05-03 15:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `expired_at`, `location`, `key`, `image`, `url`, `clicked`, `order`, `status`, `created_at`, `updated_at`, `open_in_new_tab`, `tablet_image`, `mobile_image`, `ads_type`, `google_adsense_slot_id`) VALUES
(1, 'Header ads', '2025-05-03 00:00:00', 'header-ads', 'KNBNG3R2DD', 'banners/image-3.jpg', 'https://thesky9.com/', 0, 1, 'published', '2024-05-03 15:00:24', '2024-05-03 15:00:24', 1, NULL, NULL, NULL, NULL),
(2, 'Panel ads', '2025-05-03 00:00:00', 'panel-ads', 'EPBDA2EKNR', 'banners/image-3.jpg', 'https://thesky9.com/', 0, 1, 'published', '2024-05-03 15:00:24', '2024-05-03 15:00:24', 1, NULL, NULL, NULL, NULL),
(3, 'Top sidebar ads', '2025-05-03 00:00:00', 'top-sidebar-ads', 'SEBYWWHZR4', 'banners/image-1.jpg', 'https://thesky9.com/', 0, 2, 'published', '2024-05-03 15:00:24', '2024-05-03 15:00:24', 1, NULL, NULL, NULL, NULL),
(4, 'Bottom sidebar ads', '2025-05-03 00:00:00', 'bottom-sidebar-ads', 'KOSIJC8W5S', 'banners/image-2.jpg', 'https://thesky9.com/', 0, 3, 'published', '2024-05-03 15:00:24', '2024-05-03 15:00:24', 1, NULL, NULL, NULL, NULL),
(5, 'Custom ads 1', '2025-05-03 00:00:00', 'custom-1', 'JAAJCCNB5G', 'banners/image-4.jpg', 'https://thesky9.com/', 0, 4, 'published', '2024-05-03 15:00:24', '2024-05-03 15:00:24', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads_translations`
--

CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--
//Dumpingdata 
-- --------------------------------------------------------

--
-- Table structure for table `bb_comments`
--

CREATE TABLE `bb_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int(11) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_likes`
--

CREATE TABLE `bb_comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_recommends`
--

CREATE TABLE `bb_comment_recommends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_users`
--

CREATE TABLE `bb_comment_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bb_comment_users`
--

INSERT INTO `bb_comment_users` (`id`, `first_name`, `email`, `password`, `avatar_id`, `remember_token`, `created_at`, `updated_at`, `last_name`) VALUES
(1, 'Lorine', 'xlangworth@wehner.com', '$2y$12$8dyvR46mTXI3lZll0cSHFez1Zjg9nDv.7cxTp9j2fsgmJiOEZG2ke', 52, NULL, '2024-05-03 15:00:42', '2024-05-03 15:00:42', 'Aufderhar'),
(2, 'Makayla', 'gschumm@yahoo.com', '$2y$12$q9zB/mGeAzn5wroHhjOxcOEO.9IVBFhXynF2In14tDaKl6t1U12AK', 52, NULL, '2024-05-03 15:00:42', '2024-05-03 15:00:42', 'Hane'),
(3, 'Moises', 'dooley.clementina@davis.biz', '$2y$12$ECFiY92.owDhwrgTk5nL9.altULlhoQ7U4iIh2rN.UEFDzIdcnriu', 55, NULL, '2024-05-03 15:00:42', '2024-05-03 15:00:42', 'Sauer'),
(4, 'Lucas', 'candido.carroll@gmail.com', '$2y$12$J3PIAqAPl3WXg2iarsETbeTxunTffaoAcqNBG1Vt/WEfSIrh8dcdO', 51, NULL, '2024-05-03 15:00:42', '2024-05-03 15:00:42', 'Kutch'),
(5, 'Delilah', 'bruen.nikko@murazik.info', '$2y$12$..u13fvEiu90YhFguIFnP.qXVB1GzU0yjMSpjsfkUJLYz1FkX6D1G', 52, NULL, '2024-05-03 15:00:43', '2024-05-03 15:00:43', 'Marvin'),
(6, 'Braeden', 'jacinto.renner@klein.com', '$2y$12$s9pqLMyFltlYV6O7HxicwedhdtE5n5SsToBEKSzn4z982WoKZqUmS', 55, NULL, '2024-05-03 15:00:43', '2024-05-03 15:00:43', 'Nitzsche'),
(7, 'Haley', 'orin.bradtke@will.biz', '$2y$12$3IzbOyVQJgSeA7S/zw0ZR.pkGhZShS.n9dH0MKxEGGxdAv5bN1L86', 51, NULL, '2024-05-03 15:00:43', '2024-05-03 15:00:43', 'Stracke'),
(8, 'Queenie', 'sammy.jacobs@dubuque.com', '$2y$12$VQYzyZQzxdp7Uiz0l3Ve3e1X3qw2B667HA3mecQ0PCN49yH/7kst.', 53, NULL, '2024-05-03 15:00:43', '2024-05-03 15:00:43', 'Macejkovic'),
(9, 'Eino', 'alvah32@gmail.com', '$2y$12$QR7rnSEue89X5E3afFftne9hiAEYwckx/VA2eLLoRA/N2nHrYnXRC', 52, NULL, '2024-05-03 15:00:43', '2024-05-03 15:00:43', 'Gulgowski'),
(10, 'Chaya', 'gertrude.schaefer@hotmail.com', '$2y$12$75iCD.Ftem1NHaeV4BUcse8x3H6/g1s1jzJ3HcyjvKHRKFvZDlWoG', 53, NULL, '2024-05-03 15:00:44', '2024-05-03 15:00:44', 'Kuhic');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'राजनीति', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(2, 'खेलकुद', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 6, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(3, 'शिक्षा', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(4, 'स्वास्थ्य', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 4, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(5, 'आर्थिक', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 3, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(6, 'राष्ट्रिय', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 2, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(7, 'प्रदेश', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2024-05-03 15:00:35', '2024-08-09 23:21:11'),
(8, 'कला र साहित्य', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 7, 0, 0, '2024-08-09 23:19:30', '2024-08-09 23:21:11'),
(9, 'समाचार', 0, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2024-08-09 23:20:50', '2024-08-09 23:21:11'),
(10, 'अन्तरास्ट्रिय', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2024-08-09 23:22:13', '2024-08-09 23:22:13'),
(11, 'बिज्ञान /प्रबिधि', 9, '', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 0, 0, '2024-08-09 23:22:45', '2024-08-09 23:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('vi', 1, 'Phong cách sống', NULL),
('vi', 2, 'Sức khỏe', NULL),
('vi', 3, 'Món ngon', NULL),
('vi', 4, 'Sách', NULL),
('vi', 5, 'Mẹo du lịch', NULL),
('vi', 6, 'Khách sạn', NULL),
('vi', 7, 'Thiên nhiên', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields`
--

CREATE TABLE `contact_custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_fields_translations`
--

CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options`
--

CREATE TABLE `contact_custom_field_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_field_id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_custom_field_options_translations`
--

CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint(20) UNSIGNED NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2024-08-09 22:23:55', '2024-08-09 22:23:55'),
(2, 'widget_total_users', '2024-08-09 22:23:55', '2024-08-09 22:23:55'),
(3, 'widget_total_plugins', '2024-08-09 22:23:55', '2024-08-09 22:23:55'),
(4, 'widget_total_pages', '2024-08-09 22:23:55', '2024-08-09 22:23:55'),
(5, 'widget_posts_recent', '2024-08-09 22:23:55', '2024-08-09 22:23:55'),
(6, 'widget_audit_logs', '2024-08-09 22:23:55', '2024-08-09 22:23:55'),
(7, 'widget_request_errors', '2024-08-09 22:23:55', '2024-08-09 22:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` bigint(20) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44'),
(2, NULL, 1, 2, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44'),
(3, NULL, 1, 3, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44'),
(4, NULL, 1, 4, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44'),
(5, NULL, 1, 5, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44'),
(6, NULL, 1, 6, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44'),
(7, NULL, 1, 7, 0, 1, '2024-08-11 00:36:44', '2024-08-11 00:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_posts`
--

CREATE TABLE `favorite_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('favorite','bookmark') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Placeat est et vero autem est. Iusto libero explicabo ea dolorem totam est libero. Ea corrupti ex voluptatem quas voluptas libero nemo voluptate.', 1, 0, 'galleries/1.jpg', 1, 'published', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(2, 'New Day', 'Voluptas minima corrupti ipsum sunt eligendi facilis quas. Enim qui voluptatem nobis ipsum sit cumque cum. Atque et ea quasi dignissimos fuga.', 1, 0, 'galleries/2.jpg', 1, 'published', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(3, 'Happy Day', 'Sunt consequuntur aut facere. Ipsam et dolores aut odit vitae laborum. Et veniam voluptas nisi.', 1, 0, 'galleries/3.jpg', 1, 'published', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(4, 'Nature', 'Id officiis ab optio eligendi quibusdam. Atque officiis dolorum quia qui sapiente vitae. Consectetur sequi facere enim perferendis rem harum.', 1, 0, 'galleries/4.jpg', 1, 'published', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(5, 'Morning', 'In molestiae maxime aspernatur nihil repudiandae ut. Sit incidunt minima earum nihil nobis quod voluptates. Sequi eos aliquid blanditiis.', 1, 0, 'galleries/5.jpg', 1, 'published', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(6, 'Photography', 'Our aspirations lead us to strive for perfection. Those who are corrupt find freedom in their vices. We exercise our will and reason to overcome challenges.', 1, 0, 'galleries/6.jpg', 1, 'published', '2024-05-03 15:00:27', '2024-08-10 00:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries_translations`
--

INSERT INTO `galleries_translations` (`lang_code`, `galleries_id`, `name`, `description`) VALUES
('vi', 1, 'Hoàn hảo', NULL),
('vi', 2, 'Ngày mới', NULL),
('vi', 3, 'Ngày hạnh phúc', NULL),
('vi', 4, 'Thiên nhiên', NULL),
('vi', 5, 'Buổi sáng', NULL),
('vi', 6, 'Nghệ thuật', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Similique rerum est rem laboriosam. Aliquid totam ex aliquid sint laudantium.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aperiam illum itaque ipsam consequatur iusto. Ipsam voluptas qui quia nostrum sit sint. Est provident in error sed dolor enim sed.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Consequatur ad ex eius placeat voluptas doloremque. Ut aut hic enim. Atque amet quia accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Delectus tempora enim repudiandae reprehenderit exercitationem. Voluptas vel qui aut minus. Possimus enim officia hic tenetur.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et sed ullam consequatur cum quidem laudantium id. Aliquam ex vitae nemo explicabo et repellendus qui cumque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Omnis vel asperiores assumenda repellat autem dolor odio dolores. Ipsum accusamus vero ad est occaecati et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quis at qui quae dolorum quidem ut. Dolorem voluptatum est aut in.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Iusto est occaecati esse ut eveniet enim. Laudantium tempora voluptatum et illum. Quis quis aliquam voluptatem iste quis.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Vero cupiditate eveniet qui ad. Ullam velit voluptates sed. Consequatur ad quidem minima id fuga. Ipsam quas ut modi iure et.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Molestiae sint neque sint quas voluptatem et. Distinctio dolore dolor illum consequatur voluptatem repellendus eos. Ut iure deserunt quam quam aut.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2024-05-03 15:00:27', '2024-05-03 15:00:27'),
(16, NULL, 7, 'Botble\\Page\\Models\\Page', '2024-08-10 00:12:06', '2024-08-10 00:12:06'),
(17, NULL, 3, 'Botble\\Page\\Models\\Page', '2024-08-10 00:12:46', '2024-08-10 00:12:46'),
(18, NULL, 2, 'Botble\\Page\\Models\\Page', '2024-08-10 00:13:01', '2024-08-10 00:13:01'),
(20, NULL, 11, 'Botble\\Page\\Models\\Page', '2024-08-10 00:23:30', '2024-08-10 00:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta_translations`
--

CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` int(11) NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` bigint(20) UNSIGNED NOT NULL,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '4413d82f9d2bb0258a8844ee8c8c5469', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', 'c3a24d89c8160df387ac9f0a4207efb3', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', 'e71057ef5a6425c865f9250f19b16ade', 2, 'Botble\\Menu\\Models\\Menu'),
(4, 'vi', '923e9810bc487fcad6954f4a94ce417c', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(5, 'vi', 'c3a24d89c8160df387ac9f0a4207efb3', 3, 'Botble\\Menu\\Models\\Menu'),
(7, 'en_US', '94b13d0fbde5f90d7e8622bdc2bf3dde', 1, 'Botble\\PostCollection\\Models\\PostCollection'),
(8, 'en_US', 'c762854ebd9ea4004b584ca47eef6fdf', 2, 'Botble\\PostCollection\\Models\\PostCollection'),
(9, 'en_US', '20ae9d4b12e6cb89d461e67fe63da89d', 3, 'Botble\\PostCollection\\Models\\PostCollection'),
(10, 'en_US', 'd6db9512128ba81aafb24585d15069ef', 4, 'Botble\\PostCollection\\Models\\PostCollection'),
(11, 'en_US', '1ecdd6a1e480bb720a5976b6287cc804', 1, 'Botble\\Menu\\Models\\MenuNode'),
(12, 'en_US', '95dc3a5bb24d3b93929590cc0e4c6c73', 5, 'Botble\\Menu\\Models\\MenuNode'),
(13, 'en_US', '3f283b0778163f13ed3ffd8681dcf4fa', 12, 'Botble\\Menu\\Models\\MenuNode'),
(14, 'en_US', '44225d14a37f6bcc9fbf5c4d38d4a389', 14, 'Botble\\Menu\\Models\\MenuNode'),
(15, 'en_US', '975faad712502d72694403687018d6ca', 15, 'Botble\\Menu\\Models\\MenuNode'),
(16, 'en_US', 'c9cad4274435fc61e0fb203f7e74e511', 16, 'Botble\\Menu\\Models\\MenuNode'),
(17, 'en_US', '9fcb69bb816fc246a7017b075720a03d', 17, 'Botble\\Menu\\Models\\MenuNode'),
(18, 'en_US', '3cc217ab64ad7232c1dac157599bf79a', 18, 'Botble\\Menu\\Models\\MenuNode'),
(19, 'en_US', 'd18524d6681266d9616f992d9e7a8dc6', 19, 'Botble\\Menu\\Models\\MenuNode'),
(20, 'en_US', 'be317b93dac1ffcc6a40717c995b331b', 20, 'Botble\\Menu\\Models\\MenuNode'),
(21, 'en_US', '9468adab6b517db71c7b10db31ca8464', 50, 'Botble\\Menu\\Models\\MenuNode'),
(22, 'en_US', 'ea273d558c2f2602c4d3c57fb39e6fdc', 44, 'Botble\\Menu\\Models\\MenuNode'),
(23, 'en_US', '7dcece0afbd267f9902cd1b7369b53c7', 45, 'Botble\\Menu\\Models\\MenuNode'),
(24, 'en_US', 'd370fcfa7efbd3bdbfb530f060c2a1eb', 46, 'Botble\\Menu\\Models\\MenuNode'),
(25, 'en_US', '2321b5576fa6b3d0c508f535c088c495', 49, 'Botble\\Menu\\Models\\MenuNode'),
(26, 'en_US', 'f2564e6c83d8f55a017385dd883ae74a', 47, 'Botble\\Menu\\Models\\MenuNode'),
(27, 'en_US', '16f77a8f2edb8d73ff34919be1a7de2c', 48, 'Botble\\Menu\\Models\\MenuNode'),
(28, 'en_US', '5b67602b2eb92b4dbc93d6354cc306b5', 51, 'Botble\\Menu\\Models\\MenuNode'),
(29, 'en_US', 'd5cf2a59344b1e45f671964e06f16a28', 52, 'Botble\\Menu\\Models\\MenuNode'),
(30, 'en_US', '6df484c89cb50c18bfd396ba72efa15d', 53, 'Botble\\Menu\\Models\\MenuNode'),
(31, 'en_US', 'd17262110ff25ee27d535c61e5cb6ea4', 54, 'Botble\\Menu\\Models\\MenuNode');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `alt`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'image-1', 'image-1', 1, 'image/jpeg', 6233, 'banners/image-1.jpg', '[]', '2024-05-03 15:00:23', '2024-05-03 15:00:23', NULL),
(2, 0, 'image-2', 'image-2', 1, 'image/jpeg', 6233, 'banners/image-2.jpg', '[]', '2024-05-03 15:00:23', '2024-05-03 15:00:23', NULL),
(3, 0, 'image-3', 'image-3', 1, 'image/jpeg', 6233, 'banners/image-3.jpg', '[]', '2024-05-03 15:00:24', '2024-05-03 15:00:24', NULL),
(4, 0, 'image-4', 'image-4', 1, 'image/jpeg', 6233, 'banners/image-4.jpg', '[]', '2024-05-03 15:00:24', '2024-05-03 15:00:24', NULL),
(5, 0, '1', '1', 2, 'image/jpeg', 6233, 'galleries/1.jpg', '[]', '2024-05-03 15:00:24', '2024-05-03 15:00:24', NULL),
(6, 0, '10', '10', 2, 'image/jpeg', 6233, 'galleries/10.jpg', '[]', '2024-05-03 15:00:24', '2024-05-03 15:00:24', NULL),
(7, 0, '2', '2', 2, 'image/jpeg', 6233, 'galleries/2.jpg', '[]', '2024-05-03 15:00:25', '2024-05-03 15:00:25', NULL),
(8, 0, '3', '3', 2, 'image/jpeg', 6233, 'galleries/3.jpg', '[]', '2024-05-03 15:00:25', '2024-05-03 15:00:25', NULL),
(9, 0, '4', '4', 2, 'image/jpeg', 6233, 'galleries/4.jpg', '[]', '2024-05-03 15:00:25', '2024-05-03 15:00:25', NULL),
(10, 0, '5', '5', 2, 'image/jpeg', 6233, 'galleries/5.jpg', '[]', '2024-05-03 15:00:25', '2024-05-03 15:00:25', NULL),
(11, 0, '6', '6', 2, 'image/jpeg', 6233, 'galleries/6.jpg', '[]', '2024-05-03 15:00:26', '2024-05-03 15:00:26', NULL),
(12, 0, '7', '7', 2, 'image/jpeg', 6233, 'galleries/7.jpg', '[]', '2024-05-03 15:00:26', '2024-05-03 15:00:26', NULL),
(13, 0, '8', '8', 2, 'image/jpeg', 6233, 'galleries/8.jpg', '[]', '2024-05-03 15:00:26', '2024-05-03 15:00:26', NULL),
(14, 0, '9', '9', 2, 'image/jpeg', 6233, 'galleries/9.jpg', '[]', '2024-05-03 15:00:27', '2024-05-03 15:00:27', NULL),
(15, 0, 'news-1', 'news-1', 3, 'image/jpeg', 6233, 'news/news-1.jpg', '[]', '2024-05-03 15:00:28', '2024-05-03 15:00:28', NULL),
(16, 0, 'news-10', 'news-10', 3, 'image/jpeg', 6233, 'news/news-10.jpg', '[]', '2024-05-03 15:00:28', '2024-05-03 15:00:28', NULL),
(17, 0, 'news-11', 'news-11', 3, 'image/jpeg', 6233, 'news/news-11.jpg', '[]', '2024-05-03 15:00:28', '2024-05-03 15:00:28', NULL),
(18, 0, 'news-12', 'news-12', 3, 'image/jpeg', 6233, 'news/news-12.jpg', '[]', '2024-05-03 15:00:28', '2024-05-03 15:00:28', NULL),
(19, 0, 'news-13', 'news-13', 3, 'image/jpeg', 6233, 'news/news-13.jpg', '[]', '2024-05-03 15:00:29', '2024-05-03 15:00:29', NULL),
(20, 0, 'news-14', 'news-14', 3, 'image/jpeg', 6233, 'news/news-14.jpg', '[]', '2024-05-03 15:00:29', '2024-05-03 15:00:29', NULL),
(21, 0, 'news-15', 'news-15', 3, 'image/jpeg', 6233, 'news/news-15.jpg', '[]', '2024-05-03 15:00:29', '2024-05-03 15:00:29', NULL),
(22, 0, 'news-16', 'news-16', 3, 'image/jpeg', 6233, 'news/news-16.jpg', '[]', '2024-05-03 15:00:30', '2024-05-03 15:00:30', NULL),
(23, 0, 'news-17', 'news-17', 3, 'image/jpeg', 6233, 'news/news-17.jpg', '[]', '2024-05-03 15:00:30', '2024-05-03 15:00:30', NULL),
(24, 0, 'news-18', 'news-18', 3, 'image/jpeg', 6233, 'news/news-18.jpg', '[]', '2024-05-03 15:00:30', '2024-05-03 15:00:30', NULL),
(25, 0, 'news-19', 'news-19', 3, 'image/jpeg', 6233, 'news/news-19.jpg', '[]', '2024-05-03 15:00:30', '2024-05-03 15:00:30', NULL),
(26, 0, 'news-2', 'news-2', 3, 'image/jpeg', 6233, 'news/news-2.jpg', '[]', '2024-05-03 15:00:31', '2024-05-03 15:00:31', NULL),
(27, 0, 'news-20', 'news-20', 3, 'image/jpeg', 6233, 'news/news-20.jpg', '[]', '2024-05-03 15:00:31', '2024-05-03 15:00:31', NULL),
(28, 0, 'news-21', 'news-21', 3, 'image/jpeg', 6233, 'news/news-21.jpg', '[]', '2024-05-03 15:00:31', '2024-05-03 15:00:31', NULL),
(29, 0, 'news-22', 'news-22', 3, 'image/jpeg', 6233, 'news/news-22.jpg', '[]', '2024-05-03 15:00:31', '2024-05-03 15:00:31', NULL),
(30, 0, 'news-23', 'news-23', 3, 'image/jpeg', 6233, 'news/news-23.jpg', '[]', '2024-05-03 15:00:31', '2024-05-03 15:00:31', NULL),
(31, 0, 'news-24', 'news-24', 3, 'image/jpeg', 6233, 'news/news-24.jpg', '[]', '2024-05-03 15:00:32', '2024-05-03 15:00:32', NULL),
(32, 0, 'news-3', 'news-3', 3, 'image/jpeg', 6233, 'news/news-3.jpg', '[]', '2024-05-03 15:00:32', '2024-05-03 15:00:32', NULL),
(33, 0, 'news-4', 'news-4', 3, 'image/jpeg', 6233, 'news/news-4.jpg', '[]', '2024-05-03 15:00:32', '2024-05-03 15:00:32', NULL),
(34, 0, 'news-5', 'news-5', 3, 'image/jpeg', 6233, 'news/news-5.jpg', '[]', '2024-05-03 15:00:32', '2024-05-03 15:00:32', NULL),
(35, 0, 'news-6', 'news-6', 3, 'image/jpeg', 6233, 'news/news-6.jpg', '[]', '2024-05-03 15:00:33', '2024-05-03 15:00:33', NULL),
(36, 0, 'news-7', 'news-7', 3, 'image/jpeg', 6233, 'news/news-7.jpg', '[]', '2024-05-03 15:00:33', '2024-05-03 15:00:33', NULL),
(37, 0, 'news-8', 'news-8', 3, 'image/jpeg', 6233, 'news/news-8.jpg', '[]', '2024-05-03 15:00:33', '2024-05-03 15:00:33', NULL),
(38, 0, 'news-9', 'news-9', 3, 'image/jpeg', 6233, 'news/news-9.jpg', '[]', '2024-05-03 15:00:33', '2024-05-03 15:00:33', NULL),
(39, 0, 'thumbnail-1', 'thumbnail-1', 3, 'image/jpeg', 6233, 'news/thumbnail-1.jpg', '[]', '2024-05-03 15:00:34', '2024-05-03 15:00:34', NULL),
(40, 0, 'thumbnail-2', 'thumbnail-2', 3, 'image/jpeg', 6233, 'news/thumbnail-2.jpg', '[]', '2024-05-03 15:00:34', '2024-05-03 15:00:34', NULL),
(41, 0, 'thumbnail-3', 'thumbnail-3', 3, 'image/jpeg', 6233, 'news/thumbnail-3.jpg', '[]', '2024-05-03 15:00:34', '2024-05-03 15:00:34', NULL),
(42, 0, 'thumbnail-4', 'thumbnail-4', 3, 'image/jpeg', 6233, 'news/thumbnail-4.jpg', '[]', '2024-05-03 15:00:34', '2024-05-03 15:00:34', NULL),
(43, 0, 'thumbnail-5', 'thumbnail-5', 3, 'image/jpeg', 6233, 'news/thumbnail-5.jpg', '[]', '2024-05-03 15:00:35', '2024-05-03 15:00:35', NULL),
(44, 0, 'thumbnail-6', 'thumbnail-6', 3, 'image/jpeg', 6233, 'news/thumbnail-6.jpg', '[]', '2024-05-03 15:00:35', '2024-05-03 15:00:35', NULL),
(45, 0, 'video1', 'video1', 4, 'video/mp4', 6378345, 'videos/video1.mp4', '[]', '2024-05-03 15:00:35', '2024-05-03 15:00:35', NULL),
(46, 0, '1', '1', 5, 'image/jpeg', 8581, 'members/1.jpg', '[]', '2024-05-03 15:00:36', '2024-05-03 15:00:36', NULL),
(47, 0, '2', '2', 5, 'image/jpeg', 14257, 'members/2.jpg', '[]', '2024-05-03 15:00:36', '2024-05-03 15:00:36', NULL),
(48, 0, '3', '3', 5, 'image/jpeg', 14702, 'members/3.jpg', '[]', '2024-05-03 15:00:37', '2024-05-03 15:00:37', NULL),
(49, 0, '4', '4', 5, 'image/jpeg', 19699, 'members/4.jpg', '[]', '2024-05-03 15:00:37', '2024-05-03 15:00:37', NULL),
(50, 0, '5', '5', 5, 'image/jpeg', 10260, 'members/5.jpg', '[]', '2024-05-03 15:00:37', '2024-05-03 15:00:37', NULL),
(51, 0, '10', '10', 6, 'image/jpeg', 6233, 'authors/10.jpg', '[]', '2024-05-03 15:00:40', '2024-05-03 15:00:40', NULL),
(52, 0, '6', '6', 6, 'image/jpeg', 6233, 'authors/6.jpg', '[]', '2024-05-03 15:00:41', '2024-05-03 15:00:41', NULL),
(53, 0, '7', '7', 6, 'image/jpeg', 6233, 'authors/7.jpg', '[]', '2024-05-03 15:00:41', '2024-05-03 15:00:41', NULL),
(54, 0, '8', '8', 6, 'image/jpeg', 6233, 'authors/8.jpg', '[]', '2024-05-03 15:00:41', '2024-05-03 15:00:41', NULL),
(55, 0, '9', '9', 6, 'image/jpeg', 6233, 'authors/9.jpg', '[]', '2024-05-03 15:00:41', '2024-05-03 15:00:41', NULL),
(56, 0, 'favicon', 'favicon', 7, 'image/png', 6233, 'general/favicon.png', '[]', '2024-05-03 15:00:45', '2024-05-03 15:00:45', NULL),
(57, 0, 'img-loading', 'img-loading', 7, 'image/jpeg', 6233, 'general/img-loading.jpg', '[]', '2024-05-03 15:00:45', '2024-05-03 15:00:45', NULL),
(58, 0, 'logo-mobile', 'logo-mobile', 7, 'image/png', 6233, 'general/logo-mobile.png', '[]', '2024-05-03 15:00:45', '2024-05-03 15:00:45', NULL),
(59, 0, 'logo-tablet', 'logo-tablet', 7, 'image/png', 6233, 'general/logo-tablet.png', '[]', '2024-05-03 15:00:45', '2024-05-03 15:00:45', NULL),
(60, 0, 'logo-white', 'logo-white', 7, 'image/png', 6233, 'general/logo-white.png', '[]', '2024-05-03 15:00:46', '2024-05-03 15:00:46', NULL),
(61, 0, 'logo', 'logo', 7, 'image/png', 6233, 'general/logo.png', '[]', '2024-05-03 15:00:46', '2024-05-03 15:00:46', NULL),
(62, 0, 'screenshot', 'screenshot', 7, 'image/png', 6233, 'general/screenshot.png', '[]', '2024-05-03 15:00:46', '2024-05-03 15:00:46', NULL),
(63, 1, 'Sprasa Media Blue plane_', 'Sprasa Media Blue plane_', 6, 'image/png', 150458, 'authors/sprasa-media-blue-plane.png', '[]', '2024-08-09 22:29:05', '2024-08-09 22:29:05', NULL),
(64, 1, 'favicon sprasa media', 'favicon sprasa media', 6, 'image/png', 150625, 'authors/favicon-sprasa-media.png', '[]', '2024-08-09 22:31:19', '2024-08-09 22:31:19', NULL),
(65, 1, ' sprasa media white plane', ' sprasa media white plane', 6, 'image/png', 188463, 'authors/sprasa-media-white-plane.png', '[]', '2024-08-09 22:31:44', '2024-08-09 22:31:44', NULL),
(66, 1, 'project_20230204_1121423-05', 'project_20230204_1121423-05', 6, 'image/png', 123517, 'authors/project-20230204-1121423-05.png', '[]', '2024-08-09 22:31:58', '2024-08-09 22:31:58', NULL),
(67, 1, 'Photo', 'Photo', 6, 'image/jpeg', 24529, 'authors/photo.jpg', '[]', '2024-08-09 22:34:57', '2024-08-09 22:34:57', NULL),
(68, 1, 'f732e9e7-eb49-4774-9299-e837867a6788', 'f732e9e7-eb49-4774-9299-e837867a6788', 8, 'image/png', 27464, 'users/f732e9e7-eb49-4774-9299-e837867a6788.png', '[]', '2024-08-09 22:37:54', '2024-08-09 22:37:54', NULL),
(69, 1, 'project_20230224_0806568-01', 'project_20230224_0806568-01', 6, 'image/png', 67381, 'authors/project-20230224-0806568-01.png', '[]', '2024-08-09 22:54:25', '2024-08-09 22:54:25', NULL),
(70, 1, 'Rastriya-Tathyanka-Karyalaya', 'Rastriya-Tathyanka-Karyalaya', 3, 'image/jpeg', 13974, 'news/rastriya-tathyanka-karyalaya.jpg', '[]', '2024-08-09 22:58:14', '2024-08-09 22:58:14', NULL),
(71, 1, 'raining', 'raining', 3, 'image/jpeg', 44299, 'news/raining.jpeg', '[]', '2024-08-09 23:11:18', '2024-08-09 23:11:18', NULL),
(72, 1, 'kulman-696x406', 'kulman-696x406', 0, 'image/jpeg', 32819, 'kulman-696x406.jpg', '[]', '2024-08-10 00:36:12', '2024-08-10 00:36:12', NULL),
(73, 1, 'OIG3', 'OIG3', 0, 'image/jpeg', 115923, 'oig3.jpg', '[]', '2024-08-10 00:51:47', '2024-08-10 00:51:47', NULL),
(74, 1, 'OIG2.dRU0H.mPecoOl6A.N', 'OIG2.dRU0H.mPecoOl6A.N', 3, 'image/jpeg', 104191, 'news/oig2dru0hmpecool6an.jpg', '[]', '2024-08-10 00:59:11', '2024-08-10 00:59:11', NULL),
(75, 1, 'download', 'download', 3, 'image/jpeg', 150606, 'news/download.jpg', '[]', '2024-08-10 07:33:25', '2024-08-10 07:33:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `color`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'banners', NULL, 'banners', 0, '2024-05-03 15:00:23', '2024-05-03 15:00:23', NULL),
(2, 0, 'galleries', NULL, 'galleries', 0, '2024-05-03 15:00:24', '2024-05-03 15:00:24', NULL),
(3, 0, 'news', NULL, 'news', 0, '2024-05-03 15:00:28', '2024-05-03 15:00:28', NULL),
(4, 0, 'videos', NULL, 'videos', 0, '2024-05-03 15:00:35', '2024-05-03 15:00:35', NULL),
(5, 0, 'members', NULL, 'members', 0, '2024-05-03 15:00:36', '2024-05-03 15:00:36', NULL),
(6, 0, 'authors', NULL, 'authors', 0, '2024-05-03 15:00:40', '2024-05-03 15:00:40', NULL),
(7, 0, 'general', NULL, 'general', 0, '2024-05-03 15:00:45', '2024-05-03 15:00:45', NULL),
(8, 1, 'users', NULL, 'users', 0, '2024-08-09 22:37:54', '2024-08-09 22:37:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite_posts` text COLLATE utf8mb4_unicode_ci,
  `bookmark_posts` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `favorite_posts`, `bookmark_posts`, `status`) VALUES
(12, 'Sudip', 'Subedi', '', NULL, 'sudipsub123@gmail.com', '$2y$12$N8dGSfLbYBTJrzw2rpIP1u56SZiMmCirtWO85EOw.gCQRdxybCr8m', NULL, '2000-04-29', '9869211782', '2024-08-10 04:51:12', NULL, NULL, '2024-08-09 23:06:12', '2024-08-09 23:06:12', NULL, NULL, 'published');

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_password_resets`
--

INSERT INTO `member_password_resets` (`email`, `token`, `created_at`) VALUES
('gialaix9@gmail.com', '$2y$10$KTnZLXNycUrMUbwrQ/T4VeST1tJADcTbli4vp8R22itHej4bCgOaS', '2022-10-15 15:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2024-05-03 15:00:44', '2024-08-10 01:44:52'),
(2, 'Quick links', 'quick-links', 'published', '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(3, 'Menu chính', 'menu-chinh', 'published', '2024-05-03 15:00:44', '2024-05-03 15:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(2, 3, 'main-menu', '2024-05-03 15:00:44', '2024-05-03 15:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/', 'ti ti-home-2', 0, 'Home', '', '_self', 0, '2024-05-03 15:00:44', '2024-08-10 01:44:52'),
(21, 2, 0, NULL, NULL, '/', NULL, 0, 'Homepage', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(22, 2, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(23, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(24, 2, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(25, 3, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 1, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(26, 3, 25, NULL, NULL, '/', NULL, 0, 'Trang chủ mặc định', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(27, 3, 25, NULL, NULL, '/home-2?header=style-2', NULL, 0, 'Trang chủ 2', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(28, 3, 25, NULL, NULL, '/home-3?header=style-3', NULL, 0, 'Trang chủ 3', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(29, 3, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(30, 3, 0, 6, 'Botble\\Page\\Models\\Page', '/category-grid', NULL, 0, 'Danh mục', NULL, '_self', 1, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(31, 3, 30, 5, 'Botble\\Page\\Models\\Page', '/category-list', NULL, 0, 'Style cột', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(32, 3, 30, 6, 'Botble\\Page\\Models\\Page', '/category-grid', NULL, 0, 'Style danh sách', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(33, 3, 30, 7, 'Botble\\Page\\Models\\Page', '/category-metro', NULL, 0, 'Style danh sách 2', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(34, 3, 0, 1, 'Botble\\Blog\\Models\\Post', '/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas', NULL, 0, 'Bài viết', NULL, '_self', 1, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(35, 3, 34, 1, 'Botble\\Blog\\Models\\Post', '/this-year-enjoy-the-color-of-festival-with-amazing-holi-gifts-ideas', NULL, 0, 'Default', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(36, 3, 34, 2, 'Botble\\Blog\\Models\\Post', '/the-world-caters-to-average-people-and-mediocre-lifestyles', NULL, 0, 'Full top', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(37, 3, 34, 3, 'Botble\\Blog\\Models\\Post', '/not-a-bit-of-hesitation-you-better-think-twice', NULL, 0, 'Inline', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(38, 3, 0, 9, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(39, 3, 0, 8, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Về chúng tôi', NULL, '_self', 0, '2024-05-03 15:00:44', '2024-05-03 15:00:44'),
(44, 1, 0, 4, 'Botble\\Blog\\Models\\Category', '/health', '', 2, 'स्वास्थ्य', '', '_self', 0, '2024-08-10 01:39:19', '2024-08-10 01:44:52'),
(45, 1, 0, 11, 'Botble\\Blog\\Models\\Category', '/science-technology', '', 3, 'बिज्ञान /प्रबिधि', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(46, 1, 0, 6, 'Botble\\Blog\\Models\\Category', '/nationa', '', 4, 'राष्ट्रिय', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(47, 1, 0, 10, 'Botble\\Blog\\Models\\Category', '/world', '', 6, 'अन्तरास्ट्रिय', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(48, 1, 0, 8, 'Botble\\Blog\\Models\\Category', '/tallent', '', 7, 'कला र साहित्य', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(49, 1, 0, 1, 'Botble\\Blog\\Models\\Category', '/politics', '', 5, 'राजनीति', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(50, 1, 0, 9, 'Botble\\Blog\\Models\\Category', '/news', '', 1, 'समाचार', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(51, 1, 0, 3, 'Botble\\Blog\\Models\\Category', '/education', '', 8, 'शिक्षा', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(52, 1, 0, 7, 'Botble\\Blog\\Models\\Category', '/provience', '', 9, 'प्रदेश', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(53, 1, 0, 2, 'Botble\\Blog\\Models\\Category', '/sports', '', 10, 'खेलकुद', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52'),
(54, 1, 0, 5, 'Botble\\Blog\\Models\\Category', '/finance', '', 11, 'आर्थिक', '', '_self', 0, '2024-08-10 01:39:20', '2024-08-10 01:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(29, 'time_to_read', '[\"3\"]', 12, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-10 01:04:33'),
(30, 'comment_status', '[null]', 12, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-11 02:07:35'),
(31, 'time_to_read', '[\"3\"]', 13, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-10 01:00:52'),
(32, 'comment_status', '[null]', 13, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-11 02:07:35'),
(44, 'time_to_read', '[\"5\"]', 19, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-10 00:36:41'),
(45, 'comment_status', '[null]', 19, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-11 02:07:35'),
(46, 'time_to_read', '[\"13\"]', 20, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-09 23:06:28'),
(47, 'comment_status', '[null]', 20, 'Botble\\Blog\\Models\\Post', '2024-05-03 15:00:36', '2024-08-11 02:07:35'),
(48, 'layout', '[null]', 20, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(49, 'video_link', '[null]', 20, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(50, 'video_embed_code', '[null]', 20, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(51, 'video_upload_id', '[null]', 20, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(52, 'show_toc_in_content', '[\"yes\"]', 20, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(53, 'seo_meta', '[{\"index\":\"index\"}]', 20, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(54, 'seo_meta', '[{\"index\":\"index\"}]', 8, 'Botble\\Blog\\Models\\Tag', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(55, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Blog\\Models\\Tag', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(56, 'comment_status', '[null]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-11 02:07:35'),
(57, 'layout', '[null]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(58, 'time_to_read', '[\"5\"]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(59, 'video_link', '[null]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(60, 'video_embed_code', '[null]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(61, 'video_upload_id', '[null]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(62, 'show_toc_in_content', '[\"yes\"]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(63, 'seo_meta', '[{\"index\":\"index\"}]', 21, 'Botble\\Blog\\Models\\Post', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(64, 'image', '[null]', 1, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:12:53', '2024-08-09 23:12:53'),
(65, 'seo_meta', '[{\"index\":\"index\"}]', 1, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:12:53', '2024-08-09 23:12:53'),
(66, 'image', '[null]', 7, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:15:42', '2024-08-09 23:15:42'),
(67, 'seo_meta', '[{\"index\":\"index\"}]', 7, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:15:42', '2024-08-09 23:15:42'),
(68, 'image', '[null]', 6, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:16:18', '2024-08-09 23:16:18'),
(69, 'seo_meta', '[{\"index\":\"index\"}]', 6, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:16:18', '2024-08-09 23:16:18'),
(70, 'image', '[null]', 5, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:16:49', '2024-08-09 23:16:49'),
(71, 'seo_meta', '[{\"index\":\"index\"}]', 5, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:16:49', '2024-08-09 23:16:49'),
(72, 'image', '[null]', 4, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:17:44', '2024-08-09 23:17:44'),
(73, 'seo_meta', '[{\"index\":\"index\"}]', 4, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:17:44', '2024-08-09 23:17:44'),
(74, 'image', '[null]', 3, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:18:19', '2024-08-09 23:18:19'),
(75, 'seo_meta', '[{\"index\":\"index\"}]', 3, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:18:19', '2024-08-09 23:18:19'),
(76, 'image', '[null]', 2, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:18:48', '2024-08-09 23:18:48'),
(77, 'seo_meta', '[{\"index\":\"index\"}]', 2, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:18:48', '2024-08-09 23:18:48'),
(78, 'image', '[null]', 8, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:19:30', '2024-08-09 23:19:30'),
(79, 'seo_meta', '[{\"index\":\"index\"}]', 8, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:19:30', '2024-08-09 23:19:30'),
(80, 'image', '[\"authors\\/project-20230224-0806568-01.png\"]', 9, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:20:50', '2024-08-09 23:20:50'),
(81, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:20:50', '2024-08-09 23:20:50'),
(82, 'image', '[null]', 10, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:22:13', '2024-08-09 23:22:13'),
(83, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:22:13', '2024-08-09 23:22:13'),
(84, 'image', '[null]', 11, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:22:45', '2024-08-09 23:22:45'),
(85, 'seo_meta', '[{\"index\":\"index\"}]', 11, 'Botble\\Blog\\Models\\Category', '2024-08-09 23:22:45', '2024-08-09 23:22:45'),
(86, 'seo_meta', '[{\"index\":\"index\"}]', 9, 'Botble\\Page\\Models\\Page', '2024-08-09 23:58:48', '2024-08-09 23:58:48'),
(87, 'seo_meta', '[{\"index\":\"index\"}]', 8, 'Botble\\Page\\Models\\Page', '2024-08-10 00:10:27', '2024-08-10 00:10:27'),
(88, 'seo_meta', '[{\"index\":\"index\"}]', 7, 'Botble\\Page\\Models\\Page', '2024-08-10 00:12:06', '2024-08-10 00:12:06'),
(89, 'seo_meta', '[{\"index\":\"index\"}]', 3, 'Botble\\Page\\Models\\Page', '2024-08-10 00:12:46', '2024-08-10 00:12:46'),
(90, 'seo_meta', '[{\"index\":\"index\"}]', 2, 'Botble\\Page\\Models\\Page', '2024-08-10 00:13:01', '2024-08-10 00:13:01'),
(91, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Page\\Models\\Page', '2024-08-10 00:20:23', '2024-08-10 00:20:23'),
(92, 'seo_meta', '[{\"index\":\"index\"}]', 11, 'Botble\\Page\\Models\\Page', '2024-08-10 00:23:30', '2024-08-10 00:23:30'),
(93, 'seo_meta', '[{\"index\":\"index\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2024-08-10 00:33:00', '2024-08-10 00:33:00'),
(94, 'layout', '[null]', 19, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(95, 'video_link', '[null]', 19, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(96, 'video_embed_code', '[null]', 19, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(97, 'video_upload_id', '[null]', 19, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(98, 'show_toc_in_content', '[\"yes\"]', 19, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(99, 'seo_meta', '[{\"index\":\"index\"}]', 19, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(100, 'seo_meta', '[{\"index\":\"index\"}]', 10, 'Botble\\Blog\\Models\\Tag', '2024-08-10 00:44:32', '2024-08-10 00:44:32'),
(101, 'seo_meta', '[{\"index\":\"index\"}]', 11, 'Botble\\Blog\\Models\\Tag', '2024-08-10 00:44:32', '2024-08-10 00:44:32'),
(102, 'layout', '[null]', 12, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(103, 'video_link', '[null]', 12, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(104, 'video_embed_code', '[null]', 12, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(105, 'video_upload_id', '[null]', 12, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(106, 'show_toc_in_content', '[\"yes\"]', 12, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(107, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Blog\\Models\\Post', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(108, 'layout', '[null]', 13, 'Botble\\Blog\\Models\\Post', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(109, 'video_link', '[null]', 13, 'Botble\\Blog\\Models\\Post', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(110, 'video_embed_code', '[null]', 13, 'Botble\\Blog\\Models\\Post', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(111, 'video_upload_id', '[null]', 13, 'Botble\\Blog\\Models\\Post', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(112, 'show_toc_in_content', '[\"yes\"]', 13, 'Botble\\Blog\\Models\\Post', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(113, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Blog\\Models\\Post', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(114, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Page\\Models\\Page', '2024-08-10 02:24:29', '2024-08-10 02:24:29'),
(115, 'comment_status', '[null]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-11 02:07:35'),
(116, 'layout', '[null]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(117, 'time_to_read', '[null]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(118, 'video_link', '[null]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(119, 'video_embed_code', '[null]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(120, 'video_upload_id', '[null]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(121, 'show_toc_in_content', '[\"yes\"]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(122, 'seo_meta', '[{\"index\":\"index\"}]', 22, 'Botble\\Blog\\Models\\Post', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(123, 'seo_meta', '[{\"index\":\"index\"}]', 12, 'Botble\\Blog\\Models\\Tag', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(124, 'seo_meta', '[{\"index\":\"index\"}]', 13, 'Botble\\Blog\\Models\\Tag', '2024-08-10 07:38:02', '2024-08-10 07:38:02');

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
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(27, '2015_06_29_025744_create_audit_history', 3),
(28, '2015_06_18_033822_create_blog_table', 4),
(29, '2021_02_16_092633_remove_default_value_for_author_type', 4),
(30, '2021_12_03_030600_create_blog_translations', 4),
(31, '2022_04_19_113923_add_index_to_table_posts', 4),
(32, '2021_07_08_140130_comment_create_comment_table', 5),
(33, '2016_06_17_091537_create_contacts_table', 6),
(34, '2016_10_13_150201_create_galleries_table', 7),
(35, '2021_12_03_082953_create_gallery_translations', 7),
(36, '2022_04_30_034048_create_gallery_meta_translations_table', 7),
(40, '2017_10_04_140938_create_member_table', 10),
(41, '2017_10_24_154832_create_newsletter_table', 11),
(42, '2021_08_25_122708_post_collection_create_post_collection_table', 12),
(43, '2021_07_14_043820_add_publised_at_table_posts', 13),
(44, '2021_10_16_043705_pro_posts_create_favorite_posts_table', 14),
(45, '2021_10_16_105007_add_bookmark_posts_column_to_members_table', 14),
(46, '2021_11_13_010429_change_column_table_members', 14),
(47, '2016_05_28_112028_create_system_request_logs_table', 15),
(48, '2016_10_07_193005_create_translations_table', 16),
(61, '2023_08_29_074620_make_column_author_id_nullable', 20),
(62, '2023_08_29_075308_make_column_user_id_nullable', 20),
(65, '2023_02_28_092156_update_table_comments', 21),
(66, '2023_10_16_075332_add_status_column', 21),
(68, '2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core', 21),
(69, '2023_11_14_033417_change_request_column_in_table_audit_histories', 21),
(72, '2023_12_12_105220_drop_translations_table', 21),
(74, '2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table', 22),
(75, '2024_03_25_000001_update_captcha_settings_for_contact', 22),
(76, '2024_03_25_000001_update_captcha_settings_for_newsletter', 22),
(79, '2024_04_19_063914_create_custom_fields_table', 23),
(80, '2024_04_27_100730_improve_analytics_setting', 23),
(81, '2013_04_09_032329_create_base_tables', 24),
(82, '2013_04_09_062329_create_revisions_table', 24),
(83, '2014_10_12_000000_create_users_table', 24),
(84, '2014_10_12_100000_create_password_reset_tokens_table', 24),
(85, '2016_06_10_230148_create_acl_tables', 24),
(86, '2016_06_14_230857_create_menus_table', 24),
(87, '2016_06_28_221418_create_pages_table', 24),
(88, '2016_10_03_032336_create_languages_table', 24),
(89, '2016_10_05_074239_create_setting_table', 24),
(90, '2016_11_28_032840_create_dashboard_widget_tables', 24),
(91, '2016_12_16_084601_create_widgets_table', 24),
(92, '2017_05_09_070343_create_media_tables', 24),
(93, '2017_11_03_070450_create_slug_table', 24),
(94, '2019_01_05_053554_create_jobs_table', 24),
(95, '2019_08_19_000000_create_failed_jobs_table', 24),
(96, '2019_12_14_000001_create_personal_access_tokens_table', 24),
(97, '2020_11_18_150916_ads_create_ads_table', 24),
(98, '2021_10_25_021023_fix-priority-load-for-language-advanced', 24),
(99, '2021_12_02_035301_add_ads_translations_table', 24),
(100, '2021_12_03_075608_create_page_translations', 24),
(101, '2022_04_20_100851_add_index_to_media_table', 24),
(102, '2022_04_20_101046_add_index_to_menu_table', 24),
(103, '2022_07_10_034813_move_lang_folder_to_root', 24),
(104, '2022_08_04_051940_add_missing_column_expires_at', 24),
(105, '2022_09_01_000001_create_admin_notifications_tables', 24),
(106, '2022_10_14_024629_drop_column_is_featured', 24),
(107, '2022_11_18_063357_add_missing_timestamp_in_table_settings', 24),
(108, '2022_12_02_093615_update_slug_index_columns', 24),
(109, '2023_01_30_024431_add_alt_to_media_table', 24),
(110, '2023_02_16_042611_drop_table_password_resets', 24),
(111, '2023_04_17_062645_add_open_in_new_tab', 24),
(112, '2023_04_23_005903_add_column_permissions_to_admin_notifications', 24),
(113, '2023_05_10_075124_drop_column_id_in_role_users_table', 24),
(114, '2023_07_06_011444_create_slug_translations_table', 24),
(115, '2023_08_21_090810_make_page_content_nullable', 24),
(116, '2023_09_14_021936_update_index_for_slugs_table', 24),
(117, '2023_09_14_022423_add_index_for_language_table', 24),
(118, '2023_11_07_023805_add_tablet_mobile_image', 24),
(119, '2023_12_06_100448_change_random_hash_for_media', 24),
(120, '2023_12_07_095130_add_color_column_to_media_folders_table', 24),
(121, '2023_12_17_162208_make_sure_column_color_in_media_folders_nullable', 24),
(122, '2024_04_01_043317_add_google_adsense_slot_id_to_ads_table', 24),
(123, '2024_04_04_110758_update_value_column_in_user_meta_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sudipsub123@gmail.com', NULL, 'subscribed', '2024-08-10 01:32:29', '2024-08-10 01:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<shortcode>[posts-slider filter_by=\"featured\" limit=\"3\" posts_collection_id=\"1\" style=\"1\"][/posts-slider]</shortcode><shortcode>[recent-posts title=\"ताजा समाचार\" subtitle=\"ताजा\" limit=\"3\" background_style=\"background-white\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</shortcode><shortcode>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</shortcode><shortcode>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"7\" categories_ids=\"1\" show_follow_us_section=\"1\" ads_location=\"panel-ads\"][/categories-tab-posts]</shortcode><shortcode>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</shortcode><shortcode>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1\" show_follow_us_section=\"1\" ads_location=\"not_set\"][/categories-tab-posts]</shortcode><shortcode>[posts-collection title=\"Recommended\" subtitle=\"R\" limit=\"4\" posts_collection_id=\"2\" background_style=\"background-white\"][/posts-collection]</shortcode><shortcode>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"7\" subtitle=\"O\"][/theme-galleries]</shortcode>', 1, NULL, 'homepage', '', 'published', '2024-05-03 15:00:23', '2024-08-11 02:08:20'),
(2, 'Home 2', '<shortcode>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</shortcode><shortcode>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</shortcode><shortcode>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</shortcode><shortcode>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</shortcode><shortcode>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</shortcode>', 1, NULL, 'homepage2', '', 'draft', '2024-05-03 15:00:23', '2024-08-10 00:13:01'),
(3, 'Home 3', '<shortcode>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</shortcode><shortcode>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</shortcode><shortcode>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</shortcode><shortcode>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</shortcode><shortcode>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</shortcode><shortcode>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</shortcode>', 1, NULL, 'homepage2', '', 'draft', '2024-05-03 15:00:23', '2024-08-10 00:12:46'),
(4, 'Blog', '<div>[posts-listing layout=\"list\"][/posts-listing]</div>', 1, NULL, 'default', NULL, 'published', '2024-05-03 15:00:23', '2024-05-03 15:00:23'),
(5, 'Category List', '<div>[posts-listing layout=\"list\"][/posts-listing]</div>', 1, NULL, 'no-breadcrumbs', NULL, 'published', '2024-05-03 15:00:23', '2024-05-03 15:00:23'),
(6, 'Category grid', '<div>[posts-listing layout=\"grid\"][/posts-listing]</div>', 1, NULL, 'full', NULL, 'published', '2024-05-03 15:00:23', '2024-05-03 15:00:23'),
(7, 'Category metro', '<shortcode>[posts-listing layout=\"metro\"][/posts-listing]</shortcode>', 1, NULL, 'full', '', 'published', '2024-05-03 15:00:23', '2024-08-10 00:12:06'),
(8, 'Contact Us', '<shortcode>[contact-form title=\"Get in Touch\"][/contact-form]</shortcode><h3>Directions</h3><shortcode>[google-map height=\"500\"]Ratnanagar-10, Chitwan Nepal[/google-map]</shortcode>', 1, NULL, 'default', '', 'published', '2024-05-03 15:00:23', '2024-08-10 00:31:51'),
(9, 'About Us', '<div class=\"raw-html-embed\"><div class=\"row\">\r\n    <div class=\"col-md-12 col-sm-12\">\r\n        <div class=\"single-excerpt\">\r\n            <p class=\"font-large\">Sprasa Media has rapidly grown into a key player in the media industry, dedicated to delivering news that is both timely and impactful, ensuring that readers stay informed about the most significant events locally and globally.</p>\r\n        </div>\r\n        <div class=\"entry-main-content\">\r\n            <h2>Sprasa Media: A Beacon of News</h2>\r\n            <hr class=\"wp-block-separator is-style-wide\">\r\n            <div class=\"wp-block-image\">\r\n                <figure class=\"alignleft is-resized\">\r\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\" alt=\"Sprasa Media Thumbnail\">\r\n                </figure>\r\n            </div>\r\n            <p>As a pioneer in the news industry, Sprasa Media is committed to providing accurate and comprehensive coverage of the latest developments. Whether it’s breaking news or detailed analyses, we ensure our content resonates with our audience by maintaining high standards of journalism.</p>\r\n            <h5>What’s Next for Sprasa Media?</h5>\r\n            <p>Sprasa Media continues to innovate and evolve, always striving to improve our services and better serve our audience. We are expanding our coverage areas, adopting new technologies, and enhancing our platform to provide a seamless and engaging user experience.</p>\r\n            <hr class=\"wp-block-separator is-style-dots\">\r\n            <p>In the face of challenges, Sprasa Media remains steadfast in its mission to deliver quality news. We are dedicated to upholding journalistic integrity and providing our readers with news that is not only informative but also meaningful.</p>\r\n            <h2>Conclusion</h2>\r\n            <hr class=\"wp-block-separator is-style-wide\">\r\n            <p>Sprasa Media is more than just a news platform; it’s a trusted source of information. With a strong commitment to accuracy, reliability, and innovation, we continue to set the standard in the media industry, ensuring our readers are always well-informed.</p>\r\n            <h2>The Future of Design in Media</h2>\r\n            <hr class=\"wp-block-separator is-style-wide\">\r\n            <p>Sprasa Media is at the forefront of media design, constantly exploring new ways to enhance the user experience. Our commitment to innovation means that we are always looking for ways to make our platform more accessible, engaging, and user-friendly.</p>\r\n            <p>We understand that the media landscape is constantly changing, and we are dedicated to staying ahead of the curve. By integrating the latest technologies and embracing new trends, Sprasa Media continues to lead the way in modern journalism.</p>\r\n            <figure class=\"wp-block-gallery columns-3\">\r\n                <ul class=\"blocks-gallery-grid\">\r\n                    <li class=\"blocks-gallery-item\">\r\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"Sprasa Media Gallery 1\"></a>\r\n                    </li>\r\n                    <li class=\"blocks-gallery-item\">\r\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"Sprasa Media Gallery 2\"></a>\r\n                    </li>\r\n                    <li class=\"blocks-gallery-item\">\r\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"Sprasa Media Gallery 3\"></a>\r\n                    </li>\r\n                </ul>\r\n            </figure>\r\n            <p>At Sprasa Media, we are constantly looking for new ways to improve the reader experience. Whether through innovative design or cutting-edge technology, we are committed to delivering a platform that meets the needs of our audience and enhances the way they consume news.</p>\r\n            <hr class=\"wp-block-separator is-style-dots\">\r\n            <p>Sprasa Media\'s mission is to deliver news that is not only timely but also transformative. We believe in the power of information and strive to create content that not only informs but also inspires. As we look to the future, we remain committed to being a leader in the media industry, delivering news that matters to our audience.</p>\r\n            <blockquote class=\"wp-block-quote is-style-large\">\r\n                <p>\"\"Growing is not a stoppable thing; we will continuously focus to achieve it.\" - Pradip Subedi</p>\r\n            </blockquote>\r\n            <p class=\"text-center\">\r\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"Sprasa Media Advertisement\"></a>\r\n            </p>\r\n        </div>\r\n    </div>\r\n</div></div><h3>Address</h3><shortcode>[google-map height=\"500\"]Ratnanagar-10, Chitwan Nepal[/google-map]</shortcode><p>&nbsp;</p>', 1, NULL, 'default', '', 'published', '2024-05-03 15:00:23', '2024-08-10 00:08:23'),
(10, 'Cookie Policy', '<p><strong>EU Cookie Consent</strong></p><p>To enhance your experience on our website and ensure compliance with the EU GDPR, we use cookies and collect some data. You have the option to choose whether to allow us to use certain cookies and collect specific data.</p><p><strong>Essential Data</strong></p><p>The essential data is required to ensure the technical operation of the website you are visiting. These cookies cannot be deactivated.</p><ul><li><strong>Session Cookie</strong>: A session cookie is used by PHP to identify user sessions. Without this cookie, the website will not function properly.</li><li><strong>XSRF-Token Cookie</strong>: Laravel automatically generates a CSRF token for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making requests to the application.</li></ul>', 1, NULL, 'default', '', 'published', '2024-05-03 15:00:23', '2024-08-10 00:20:28'),
(11, 'Privacy Policy', '<p><strong>Privacy Policy</strong></p><p>At Sprasa Media, we are committed to safeguarding the privacy of our users. This Privacy Policy outlines how we collect, use, and protect your personal information.</p><h3>1. Information We Collect</h3><p>We collect personal information that you voluntarily provide when you interact with our website. This includes your name, email address, phone number, and any other information you provide when signing up for newsletters, commenting, or participating in other site activities.</p><h3>2. Use of Collected Information</h3><p>The information we collect is used to enhance your experience on our site, respond to your inquiries, and provide you with personalized content. We may also use your information for marketing purposes, such as sending you updates and promotional offers, but only if you have opted in to receive such communications.</p><h3>3. Cookies and Tracking Technologies</h3><p>We use cookies and similar tracking technologies to improve your browsing experience and the functionality of our website. Cookies help us understand your preferences and track your usage patterns to provide you with a personalized experience. You can choose to disable cookies through your browser settings, but this may affect the functionality of our site.</p><h3>4. Sharing of Information</h3><p>We do not share your personal information with third parties, except as required by law or with your explicit consent. We may share anonymized data with partners for research or analytical purposes.</p><h3>5. Data Security</h3><p>We take reasonable measures to protect your personal information from unauthorized access, disclosure, or misuse. However, please be aware that no security measures are perfect or impenetrable.</p><h3>6. Your Rights</h3><p>You have the right to access, correct, or delete your personal information held by us. You can also opt-out of receiving marketing communications at any time.</p><h3>7. Changes to This Privacy Policy</h3><p>We may update this Privacy Policy from time to time to reflect changes in our practices or for other operational, legal, or regulatory reasons. We encourage you to review this policy periodically.</p><h3>8. Contact Us</h3><p>If you have any questions or concerns about this Privacy Policy, please contact us at:</p><p><strong>Sprasa Media</strong><br>Website: <a href=\"https://np.sprasamedia.com\" rel=\"noreferrer\" target=\"_new\">np.sprasamedia.com</a><br>Email: <a rel=\"noreferrer\">subedipradip199@gmail.com</a><br>Phone: +977 9843944252</p>', 1, NULL, 'default', '', 'published', '2024-08-10 00:23:30', '2024-08-10 00:23:30'),
(12, 'draft', '<shortcode>[posts-slider title=\"आजको बिशेष समाचार \" filter_by=\"posts-collection\" limit=\"1\" posts_collection_id=\"1\" style=\"1\"][/posts-slider]</shortcode><shortcode>[categories-tab-posts title=\"समाचार\" subtitle=\"Latest News\" limit=\"5\" categories_ids=\"1\" show_follow_us_section=\"1\" ads_location=\"not_set\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"स्वास्थ्य\" subtitle=\"Health Updates\" limit=\"5\" categories_ids=\"2\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"विज्ञान / प्रबिधि\" subtitle=\"Science &amp; Technology\" limit=\"5\" categories_ids=\"3\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"राष्ट्रिय\" subtitle=\"National News\" limit=\"5\" categories_ids=\"4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"राजनीति\" subtitle=\"Political News\" limit=\"5\" categories_ids=\"5\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"अन्तरास्ट्रिय\" subtitle=\"International News\" limit=\"5\" categories_ids=\"6\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"कला र साहित्य\" subtitle=\"Arts &amp; Literature\" limit=\"5\" categories_ids=\"7\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"शिक्षा\" subtitle=\"Education Updates\" limit=\"5\" categories_ids=\"8\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"प्रदेश\" subtitle=\"Provincial News\" limit=\"5\" categories_ids=\"9\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"खेलकुद\" subtitle=\"Sports News\" limit=\"5\" categories_ids=\"10\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[categories-tab-posts title=\"आर्थिक\" subtitle=\"Economic Updates\" limit=\"5\" categories_ids=\"11\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</shortcode><shortcode>[posts-collection title=\"Recommended\" subtitle=\"R\" limit=\"4\" posts_collection_id=\"2\" background_style=\"background-white\"][/posts-collection]</shortcode><shortcode>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"7\" subtitle=\"O\"][/theme-galleries]</shortcode>', 1, NULL, 'default', '', 'draft', '2024-08-10 02:24:29', '2024-08-10 02:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Trang chủ', NULL, '<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Bài viết mới\" subtitle=\"Latest\" limit=\"3\" show_follow_us_section=\"1\"][/recent-posts]</div><div>[categories-tab-posts title=\"Bài viết được quan tâm\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[posts-grid title=\"Bài viết nổi bật\" subtitle=\"News\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" subtitle=\"In motion\" limit=\"7\"][/theme-galleries]</div>'),
('vi', 2, 'Trang chủ 2', NULL, '<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"3\"][/posts-slider]</div><div>[categories-tab-posts title=\"Popular\" subtitle=\"P\" limit=\"5\" categories_ids=\"1,2,3,4\" show_follow_us_section=\"1\" ads_location=\"top-sidebar-ads\"][/categories-tab-posts]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),
('vi', 3, 'Trang chủ 3', NULL, '<div>[posts-slider filter_by=\"featured\" limit=\"6\" style=\"4\"][/posts-slider]</div><div>[posts-grid title=\"Featured Posts\" subtitle=\"News\" limit=\"6\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[most-comments title=\"Most comments\" limit=\"8\" subtitle=\"M\"][/most-comments]</div><div>[videos-posts title=\"Latest Videos\" subtitle=\"In motion\"][/videos-posts]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"posts-collection\" posts_collection_id=\"1\" limit=6 style=\"2\" description=\"The featured articles are selected by experienced editors. It is also based on the reader\'s rating. These posts have a lot of interest.\"][/posts-slider]</div><div>[recent-posts title=\"Recent posts\" subtitle=\"Latest\" limit=\"3\" background_style=\"background-white\" show_follow_us_section=\"1\" tab_post_limit=\"4\" ads_location=\"bottom-sidebar-ads\"][/recent-posts]</div>'),
('vi', 4, 'Tin tức', NULL, '<div>[categories-big limit=\"12\"][/categories-big]</div>'),
('vi', 5, 'Tin tức danh sách', NULL, '<div>[posts-listing layout=\"list\"][/posts-listing]</div>'),
('vi', 6, 'Tin tức dạng cột', NULL, '<div>[posts-listing layout=\"grid\"][/posts-listing]</div>'),
('vi', 7, 'Tin tức metro', NULL, '<div>[posts-listing layout=\"metro\"][/posts-listing]</div>'),
('vi', 8, 'Liên hệ', NULL, '<div>[contact-form title=\"Liên hệ\"][/contact-form]</div><h3>Địa chỉ</h3><div>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</div>'),
('vi', 9, 'Về chúng tôi', NULL, '<div class=\"raw-html-embed\"><div class=\"row\">\n    <div class=\"col-md-12 col-sm-12\">\n        <div class=\"single-excerpt\">\n            <p class=\"font-large\">Người ta né tránh nhắc đến Chúa Kito khi nói đến mốc lịch sử bằng cách nói Trước công nguyên và sau công nguyên. Nhưng nguyên tiếng anh: Before Chirst, After Chirst – trước Chúa Kito, sau Chúa Kito – người ta sợ lịch sử của Kito giáo. Đó là lời chia sẻ của cha đặc trách Gioan trong Thánh lễ thường kì Cộng đoàn sinh viên Công giáo y dược vào lúc 19h15’, ngày 11.05.2017 tại đền thánh Gierado, Giáo xứ Thái Hà.</p>\n        </div>\n        <div class=\"entry-main-content\">\n            <h2>Cuộc sống là những phép màu</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <div class=\"wp-block-image\">\n                <figure class=\"alignleft is-resized\">\n                    <img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-14.jpg\">\n                </figure>\n            </div>\n            <p>Khởi đầu bài giảng của mình cha nói đến một trong những khó khăn lớn nhất Giáo Hội nói chung và người tín hữu nói riêng đó chính là niềm tin vào Thiên Chúa. Chính khủng hoảng niềm tin gây nên chiến tranh, gây nên thù hận và chết chóc. Lòng tin không chỉ ảnh hưởng lên cá nhân mà thôi nhưng lên toàn thế giới. Hôm nay, Chúa cho chúng ta thấy lòng tin là khởi đầu, là mấu chốt để con người đứng vững giữa trăm chiều thử thách.</p>\n            <h5>Ý nghĩa là gì?</h5>\n            <p>Hai bài đọc hôm nay đều đi từ lịch sử, Chúa Giesu tiên báo kẻ sẽ nộp thầy. Ngài chọn Giuda không phải chọn nhầm, nhưng Ngài nói rõ trong bài Tin Mừng rằng lời kinh thánh phải được ứng nghiệm: “Kẻ giơ tay chấm chung một đĩa với con lại giơ gót đạp con”. Trong bài đọc một, Phaolo nói về Đavit để ứng nghiệm lời Kinh thánh đã nói, để anh chị em Do thái nhận ra được lời tiên báo qua lịch sử là chúa Giesu.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n            <p>Để có được lòng tin nơi con người, Chúa Giesu đã khai mào trong một chương trình lịch sử dài tập. Lịch sử Cựu ước loan báo đúng với những gì đã xảy ra với Chúa Giesu Kito. Một triết gia người Pháp nói rằng: “Kito giáo có một nền tảng đức tin vững chắc đó là lịch sử, nhưng Kito giáo quên đi điểm quan trọng này và ngày nay đi nặng về phía thần học”.</p>\n            <h2>Kết luận</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nhắc lại: Kito Giáo cắm rễ sâu, trải dài và được ứng nghiệm trong lịch sử thánh kinh ngang qua những con người, nơi chốn, địa điểm cụ thể. Nhìn lại lịch sử, các ngày lễ xã hội, ngày nghỉ… đều liên quan đến Kito giáo và xuất phát từ Kito giáo.</p>\n\n\n            <h2>Tương lai</h2>\n            <hr class=\"wp-block-separator is-style-wide\">\n            <p>Cha nói đến biến cố Đức Mẹ hiện ra tại Fatima 100 năm là một biến cố lịch sử có thời gian, không gian, nhân vật và sứ điệp cụ thể không phải con người tự dụng nên hay hoang tưởng.</p>\n            <p>Niềm tin của mỗi chúng ta phải dựa vào lịch sử chứ không phải mơ hồ. Khi nhìn lại quá khứ ta biết rằng lòng tin đó đã được Thiên Chúa khai mào từ rất sớm. Các thánh Tông đồ đã đứng trên bình diện lịch sự để minh chứng niềm tin của con người vào Giave Thiên Chúa.</p>\n            <figure class=\"wp-block-gallery columns-3\">\n                <ul class=\"blocks-gallery-grid\">\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-1.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-2.jpg\" alt=\"\"></a>\n                    </li>\n                    <li class=\"blocks-gallery-item\">\n                        <a href=\"#\"><img class=\"border-radius-5\" src=\"/themes/ultra/images/thumbnail-10.jpg\" alt=\"\"></a>\n                    </li>\n                </ul>\n            </figure>\n            <p>Nhiều người thời nay biết lịch sử nhưng không biết Chúa Kito là ai vì họ né tránh Chúa Giesu. Chúa Giesu đi vào lịch sử để tỏ cho con người cùng đích của sự sống là gì và Thiên Chúa là ai cùng những lời tiên báo để củng cố lòng tin cho con người.</p>\n            <hr class=\"wp-block-separator is-style-dots\">\n           <blockquote class=\"wp-block-quote is-style-large\">\n                <p>Sự tiến bộ của công nghệ dựa trên việc làm cho nó phù hợp để bạn thậm chí không thực sự nhận thấy nó, vì vậy nó là một phần của cuộc sống hàng ngày.</p><cite>B. Johnso</cite>\n            </blockquote>\n            <p class=\"text-center\">\n                <a href=\"#\"><img class=\"d-inline\" src=\"assets/imgs/ads-4.jpg\" alt=\"\"></a>\n            </p>\n        </div>\n    </div>\n</div>\n</div>'),
('vi', 10, 'Cookie Policy', NULL, '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `published_at`) VALUES
(12, 'एलेसको अद्भुत सपना', 'एलेसले एक अनौठो सपना देखिन् जहाँ समय स्थिर थियो र अजीब घटनाहरू चलिरहेका थिए। यो स्वप्निल संसारमा, उनले अनगिन्ती अद्भुत पात्र र परिस्थितिहरूसँग जुद्नुपर्यो, जसले उनलाई गहिरो सोचमा डुबाइदियो।', '<p><strong>तपाईंलाई दबाउनुहोस्! चिमोट्नुहोस्! निकाल्नुहोस्।</strong></p><p>अब सधैं छ घण्टा भएको छ।\' उसका आँखामा एउटा उज्यालो विचार आयो; र पुनः स-साना हातहरू मुखमा समेटिए। \'डोर्माउस, उठ!\' र तिनीहरूले दुवैतर्फ चिमोटे, र चाँडै नै मोक टर्टललाई देखे, जुन उन्मत्त तरिकामा नाचिरहेको थियो। \'फेरि हरिण बदल्नुहोस्!\' ग्रिफनले तुरुन्तै चिच्यायो। \'पुनः हरिण गर्दै जाऔं, आफ्नो आत्मा शर्म गर्नुपर्छ,\' एलेसले भनिन्, \'म कसरी गर्नु?\' (र, तपाईं हुनुहुन्छ; दोस्रो, किनकि उनीहरू पूर्ण रूपमा खुशी थिइन् कि कारण हो--\' यहाँ मोक टर्टल कैदीको हस्तलिखितमा छ?\' अर्को ग्रिफनले सोध्यो, पृथ्वीको आवाजको squeaking। अन्ततः ग्रिफनले भन्यो। \'तपाईंलाई ठूलो राहतको स्वर मन पर्छ। \'अब हाम्रा लागि उनीहरूलाई धेरै घुमाउने मुछ्नु हुँदैन,\' उनले भने।</p><p>एलेस चुप लागिन्। राजा।</p><p>एलेस यति सोच्छिन् कि धेरै थोरै कुरा वास्तवमै असम्भव थिए। दुई व्यक्ति देखिन थाले! यो त साँच्चै एकदम कम छ; तथापि, उनले केही मिनेट प्रतीक्षा गरिन्, र सानो जादुई बोतलले अब यसको पूरा प्रभाव पारिसकेको थियो, र उनले सोध्यो, \'म के गर्नुपर्छ?\' उनले ठाडो आवाजमा दोहोराइन्। \'म फ्याट गर्नुपर्छ,\' उनले भनिन्, \'मैले अक्सर उनीहरूलाई रात्रिभोजमा देखेको छु--\' उनले हतारमा आफूलाई रोकिन्। \'मैले सोचे कि तपाइँले गरे,\' डचेसले भनिन्: \'फ्लेमिंगो र मोसार्ड दुवैले काट्छन्। र ग्रिफनले धेरै गम्भीर रूपमा जवाफ दियो। एलेस सुरुमा के गर्नु र के गर्न सकिन्छ भनेर सोच्न थालिन्, र शायद सबैको बादमा यसले उनलाई केहि सुनाउन सक्छ भन्ने सोच्न थालिन्। केहि मिनेटको लागि सबै कार्डको प्याक, सब भन्दा।</p><p>सपना! उनले भनिन्। \'तपाईंलाई कस्तो लाग्छ?\' उनले भनिन्, \'तर यो महसुस भयो कि यो कुनै फाइदा हुन सक्छ,\' एलेसले भनिन्, \'मैले सोचेको छु कि तपाइँले भन्नुहुन्छ।\'</p>', 'published', NULL, 'Botble\\Member\\Models\\Member', 1, 'oig3.jpg', 270, NULL, '2024-05-03 15:00:36', '2024-08-11 02:07:35', NULL),
(13, 'आफ्नो लाभदायक वेबसाइट सुरु गर्ने १० कारण!', 'आफ्नो वेबसाइट सुरु गर्दा तपाईलाई अनलाइन दुनियाँमा सफलता हासिल गर्ने अवसर प्राप्त हुन्छ। यस ब्लग पोस्टमा, हामी तपाईंलाई १० प्रमुख कारणहरू प्रस्तुत गर्नेछौं जसले तपाईंलाई आफ्नो वेबसाइट सुरु गर्न प्रोत्साहित गर्नेछन् र यसबाट लाभ प्राप्त गर्ने तरिकाहरूको बारेमा जानकारी दिनेछ।', '<p><strong>१. अतिरिक्त आम्दानीको स्रोत:</strong> आफ्नो वेबसाइट सुरु गर्दा, तपाईं नयाँ आम्दानीका स्रोतहरू खोल्न सक्नुहुन्छ। विज्ञापन, अफिलिएट मार्केटिङ, र डिजिटल उत्पादनहरूको बिक्रीले तपाईंलाई स्थिर आम्दानी प्रदान गर्न सक्छ।</p><p><strong>२. आफ्नो ब्रान्ड बनाउनुहोस्:</strong> वेबसाइटले तपाईंको व्यक्तिगत वा व्यवसायिक ब्रान्ड निर्माणमा मद्दत पुर्याउँछ। यो तपाईंको विशिष्टता र पेशागत छवि प्रस्तुत गर्ने एउटा प्रभावकारी माध्यम हो।</p><p><strong>३. विश्वव्यापी पहुँच:</strong> इंटरनेटको माध्यमले तपाईंलाई संसारभरका ग्राहकहरूसँग जडान गर्न मद्दत पुर्याउँछ। तपाईंको वेबसाइटका माध्यमबाट, तपाईंको उत्पादन वा सेवाहरूलाई विश्वव्यापी स्तरमा प्रस्तुत गर्न सक्नुहुन्छ।</p><p><strong>४. समयको लचीलापन:</strong> वेबसाइटको माध्यमबाट तपाईंलाई अनलाइन व्यवसाय सञ्चालन गर्दा समयको लचीलापन प्राप्त हुन्छ। तपाईं आफ्नै समयमा काम गर्न र व्यवस्थापन गर्न सक्नुहुन्छ।</p><p><strong>५. मार्केट रिसर्च सजिलो:</strong> वेबसाइट चलाउनले तपाईलाई ग्राहकको व्यवहार र प्राथमिकताहरूको बारेमा जानकारी प्राप्त गर्न सजिलो बनाउँछ। यो बजारको ट्रेण्ड र मागको विश्लेषण गर्न मद्दत गर्दछ।</p><p><strong>६. लागत कम गर्नुहोस्:</strong> फिजिकल स्टोर वा कार्यालयको तुलनामा, वेबसाइट सञ्चालन गर्नको लागि कम लागत लाग्दछ। यसले तपाईंलाई अनावश्यक खर्चहरू बचत गर्न मद्दत पुर्याउँछ।</p><p><strong>७. २४/७ उपलब्धता:</strong> वेबसाइटले तपाईंलाई सधैं उपलब्ध रहने सुविधा दिन्छ। ग्राहकहरूलाई तपाईंको सेवाहरू र उत्पादनहरू कुनै पनि समय पहुँच गर्न सक्छन्।</p><p><strong>८. डिजिटल मार्केटिङको अवसर:</strong> वेबसाइटले तपाईंलाई विभिन्न डिजिटल मार्केटिङ रणनीतिहरू लागू गर्न मद्दत गर्दछ। SEO, सोशल मिडिया मार्केटिङ, र ईमेल मार्केटिङका माध्यमबाट तपाईंको व्यवसायको पहुँच बृद्धि गर्न सकिन्छ।</p><p><strong>९. कस्टमाइजेशनको सुविधा:</strong> तपाईंको वेबसाइटलाई तपाईंको चाहनाअनुसार कस्टमाइज गर्न सकिन्छ। डिजाइन र सामग्री परिमार्जन गरेर तपाईंले आफ्नो लक्षित दर्शकलाई आकर्षित गर्न सक्नुहुन्छ।</p><p><strong>१०. भविष्यको लागि तयारी:</strong> अनलाइन उपस्थिति भविष्यको लागि महत्वपूर्ण छ। वेबसाइटले तपाईंलाई आधुनिक व्यापार प्रवृत्तिहरूसँग अद्यावधिक राख्न मद्दत गर्दछ र दीर्घकालीन सफलता सुनिश्चित गर्नका लागि तयारी गर्न सहयोग पुर्याउँछ।</p>', 'published', NULL, 'Botble\\Member\\Models\\Member', 1, 'news/oig2dru0hmpecool6an.jpg', 2226, 'video', '2024-05-03 15:00:36', '2024-08-11 02:07:35', NULL),
(19, 'नेपाल विद्युत् प्राधिकरणको खुद नाफा १३ अर्ब ३१ करोड रुपैयाँ', 'गत आर्थिक वर्ष २०८०\\८१ मा मात्र खुद नाफा १३ अर्ब ३१ करोड रुपैयाँ रहेको उनले जानकारी दिए । आव २०७३\\७४ मा १ अर्ब ५० करोड रुपैयाँ खुद नाफा कमाएको प्राधिकरण त्यसयता निरन्तर नाफामा गएको हो ।', '<p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><strong>काठमाडौं ।</strong> नेपाल विद्युत् प्राधिकरणका कार्यकारी निर्देशक कुलमान घिसिङले प्राधिकरणले हासिल गरेका &nbsp;उपलब्धि सार्वजनिक गरेका छन् ।</p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\">आफ्नो दोस्रो कार्यकालको तेस्रो वर्ष पूरा भएको अवसरमा &nbsp;शुक्रबार प्राधिकरणमा पत्रकार सम्मेलन गर्दै उनले &nbsp;उपलब्धिहरू सार्वजनिक गरेका हुन् । ८ वर्ष अगाडि ३४ अर्ब ६१ करोड रुपैयाँ सञ्चित घाटामा रहेको प्राधिकरण अहिले ४७ अर्ब ४१ करोड रुपैयाँ सञ्चित नाफामा पुगेको उनले जानकारी दिए ।</p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\">गत आर्थिक वर्ष २०८०\\८१ मा मात्र खुद नाफा १३ अर्ब ३१ करोड रुपैयाँ रहेको उनले जानकारी दिए । आव २०७३\\७४ मा १ अर्ब ५० करोड रुपैयाँ खुद नाफा कमाएको प्राधिकरण त्यसयता निरन्तर नाफामा गएको हो । यसबीचमा तीन पटक गरी २५ प्रतिशत विद्युत् महसुल घटाइएको भन्दै उनले प्राधिकरणले महसुल बढाएर नाफा नबढाएको समेत जानकारी दिए ।</p><div class=\"ads uk-container\" style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin-left:auto;margin-right:auto;text-align:left;word-spacing:0px;\">&nbsp;</div><div class=\"ads uk-container\" style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin-left:auto;margin-right:auto;text-align:left;word-spacing:0px;\">&nbsp;</div><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\">अहिले प्राधिकरणका ५९ लाख ग्राहक पुगेका र यसमध्ये २२ लाख ग्राहकलाई न्यूनतम शुल्क ३० रुपैयाँ मात्र कायम गरी निःशुल्क विद्युत् उपलब्ध गराइएको उनले जानकारी दिए ।सिँचाइका लागि प्रतियुनिट २ रुपैयाँमा विद्युत् उपलब्ध गराइएको छ ।</p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\">विद्युतीय सवारीसाधनलाई प्रोत्साहन गर्न चार्जिङ स्टेसनमा सहुलियतपूर्ण महसुल दर कायम गरिएको उनले बताए ।८ वर्ष अगाडि २०७२\\७३ मा विद्युतीकरणको अवस्था ५८ प्रतिशत मात्र रहेकोमा अहिले ९९ प्रतिशत पुगेको उनले जानकारी दिए ।८ वर्ष अगाडि २९ लाख ७० हजार ग्राहक रहेकोमा अहिले ५९ लाख ३५ हजार पुगेको हो । सो बेला ३ अर्ब ७२ करोड युनिट विद्युत् खपत हुने गरेकोमा अहिले १० अर्ब २३ करोड युनिट पुगेको समेत उनले बताए ।</p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\">नेपाल सरकारले २५ साउन २०७८ का दिन कुलमानलाई प्राधिकरणको कार्यकारी निर्देशकमा ४ वर्षका लागि दोस्रो पटक नियुक्त गरेको थियो । आज उनको दोस्रो कार्यकालको तेस्रो वर्ष पूरा भएको हो । यसबीचमा आफ्नो कार्य सम्पादन मूल्यांकनका आधारमा आव २०७८.७९ मा ९४.२३ प्रतिशत र त्यसपछिको आवमा ९८.९४ प्रतिशत अंक प्राप्त भएको समेत उनले जानकारी दिए ।</p>', 'published', NULL, 'Botble\\Member\\Models\\Member', 1, 'kulman-696x406.jpg', 740, NULL, '2024-05-03 15:00:36', '2024-08-11 02:07:35', NULL),
(20, 'नेपालमा १८ वर्ष मुनिको जनसंख्या ९८ लाख ६९ हजार ५८३', 'जनगणना अनुसार नेपालको कुल जनसंख्या २ करोड ९१ लाख ६४ हजार ५७९  छ । बालबालिकामध्ये बालकको संख्या धेरै देखिएको छ । कुल जनसंख्यामा भने पुरुषको तुलनामा महिला धेरै छन् ।', '<p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\"><strong>साउन २६, काठमाडौँ ।</strong> नेपालमा १८ वर्ष मुनिको जनसंख्या झन्डै एक करोड देखिएको छ । राष्ट्रिय तथ्यांक कार्यालयले राष्ट्रिय जनगणना अन्तर्गत शुक्रबार बालबालिकासँग सम्बन्धित तथ्यांक सार्वजनिक गरेको हो ।</span></p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">जस अनुसार देशभर ९८ लाख ६९ हजार ५८३ जना बालबालिका (० देखि १७ वर्षसम्म) रहेको देखिएको छ । यो कुल जनसंख्याको ३३.८ प्रतिशत हिस्सा हो ।</span></p><div class=\"ads uk-container\" style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin-left:auto;margin-right:auto;text-align:left;word-spacing:0px;\">&nbsp;</div><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">जनगणना अनुसार नेपालको कुल जनसंख्या २ करोड ९१ लाख ६४ हजार ५७९ &nbsp;छ । बालबालिकामध्ये बालकको संख्या धेरै देखिएको छ । कुल जनसंख्यामा भने पुरुषको तुलनामा महिला धेरै छन् ।</span></p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">कार्यालयका अनुसार देशभर रहेको बालबालिको संख्यामध्ये बालक ५१.८ प्रतिशत र बालिका ४८.२ प्रतिशत रहेका देखिन्छ ।</span> &nbsp;<br><span style=\"font-size:16px;\">२०६८ देखि २०७८ को अवधिमा १७ वर्षभन्दा कम उमेर भएका बालबालिकाको जनसंख्यामा १२ लाख १४ हजार ७२८ जनाले कमी आएको राष्ट्रिय तथ्यांक कार्यालयले तथ्यांकले देखाएको छ।</span></p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">जनगणना २०६८ मा एक करोड १० लाख ८४ हजार ३११ जना बालबालिका&nbsp; थिए। जनगणना २०७८ मा भने यस्तो संख्या ९८ लाख ६९ हजार ५८३ जान मात्रै&nbsp; छ।</span></p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">जनगणना २०७८ मा नेपालको औसत जनसंख्या वृद्धिदर ०.९२ प्रतिशत देखिएको छ।तर, बालबालिकाको जनसंख्या भने १.१ प्रतिशतले घटेको छ। यो भनेको नयाँ जन्मने बालबालिकाको संख्या कम भएको हो।</span></p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">कुल जनसंख्यामा भने पुरुषको तुलनामा महिलाको जनसंख्या ६.५ लाखले धेरै देखिएको छ । बालबालिकाको मात्र हिसाव गर्दा बालकभन्दा बालिका ३.६ लाख कम छन् ।</span></p><p style=\"color:rgb(34,34,34);font-family:Mukta;font-size:20px;font-style:normal;font-weight:400;margin:0px auto 26px;text-align:justify;word-spacing:0px;\"><span style=\"font-size:16px;\">बालबालिकामध्ये १० देखि १४ वर्षसम्मका बालबालिकाको संख्या अधिक देखिएको छ । यस वर्गमा कुल बालबालिकाको २९.५ प्रतिशत हिस्सा देखिन्छ । त्यसपछि क्रमशः ५ देखि ९, ४ वर्ष भन्दा कम र १५ देखि १७ वर्षसम्मका बालबालिका देखिएका छन् ।</span></p>', 'published', NULL, 'Botble\\Member\\Models\\Member', 1, 'news/rastriya-tathyanka-karyalaya.jpg', 783, 'default', '2024-05-03 15:00:36', '2024-08-11 02:07:35', NULL),
(21, 'आज दिउँसो देशभर आंशिकदेखि साधारणतया बदली रहने', 'मनसुनी वायुको प्रभावका कारण हाल देशभर आंशिकदेखि साधारणतया बदली रही कोशी प्रदेश, गण्डकी प्रदेश, लुम्बिनी प्रदेश, कर्णाली प्रदेश र सुदूरपश्चिम प्रदेशका केही स्थानमा हल्का वर्षा भइरहेको जल तथा मौसम पूर्वानुमान महाशाखाले जनाएको छ ।', '<p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(34, 34, 34);font-family:Mukta;font-size:20px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 26px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\"><strong style=\"box-sizing:border-box;\">साउन २६, काठमाडौँ ।</strong>&nbsp;देशभर मनसुनी वायुको प्रभाव रहेको छ । मनसुनको न्यूनचापीय रेखा आज पनि सरदर स्थान आसपास रहेको छ ।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(34, 34, 34);font-family:Mukta;font-size:20px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 26px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">मनसुनी वायुको प्रभावका कारण हाल देशभर आंशिकदेखि साधारणतया बदली रही कोशी प्रदेश, गण्डकी प्रदेश, लुम्बिनी प्रदेश, कर्णाली प्रदेश र सुदूरपश्चिम प्रदेशका केही स्थानमा हल्का वर्षा भइरहेको जल तथा मौसम पूर्वानुमान महाशाखाले जनाएको छ ।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(34, 34, 34);font-family:Mukta;font-size:20px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 26px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">आज दिउँसो देशभर आंशिकदेखि साधारणतया बदली रहने छ । कोशी प्रदेश, बागमती प्रदेश, लुम्बिनी प्रदेश, कर्णाली प्रदेश र सुदूरपश्चिम प्रदेशका केही स्थान तथा मधेश प्रदेश र गण्डकी प्रदेशका थोरै स्थानमा मेघ गर्जन चट्याङ्गसहित हल्कादेखि मध्यम वर्षाको सम्भावना रहेको महाशाखाले जनाएको छ ।</p><p style=\"-webkit-text-stroke-width:0px;box-sizing:border-box;color:rgb(34, 34, 34);font-family:Mukta;font-size:20px;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;font-weight:400;letter-spacing:normal;margin:0px auto 26px;orphans:2;overflow-wrap:break-word;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\">लुम्बिनी प्रदेश, कर्णाली प्रदेश र सुदूरपश्चिम प्रदेशका थोरै स्थानमा तथा कोशी प्रदेश, बागमती प्रदेश र गण्डकी प्रदेशका एक–दुई स्थानमा&nbsp; भारी वर्षाको सम्भावना छ । राति देशभर आंशिकदेखि साधारणतया बदली रहने छ । कोशी प्रदेश, बागमती प्रदेश, गण्डकी प्रदेश, लुम्बिनी प्रदेश, कर्णाली प्रदेश र सुदूरपश्चिम प्रदेशका धेरै स्थान तथा मधेश प्रदेशको थोरै स्थानमा मेघ गर्जन चट्याङ्ग सहित हल्कादेखि मध्यम वर्षाको सम्भावना रहेको छ ।</p>', 'published', NULL, 'Botble\\Member\\Models\\Member', 0, 'news/raining.jpeg', 0, NULL, '2024-08-09 23:11:34', '2024-08-11 02:07:35', '2024-08-09 23:09:00'),
(22, 'चितवन कै उत्कृस्ट युनाइटेड टेक्निकल कलेज आइटी मा थप अग्रशर', 'चितवनमा नै पहिलोपटक Bachelor of Engineering in Information Technology (BE IT) तथा भ्याली बाहिर Master of Science in Transportation Engineering &amp; Management कार्यक्रम सञ्चालन गर्न लागेको सहर्ष जानकारी गराउँदछौँ ।', '<p><strong>युनाइटेड टेक्निकल कलेज, भरतपुर-११, चितवन - प्रेस विज्ञप्ति</strong></p><p>मितिः २०८१/०४/२५</p><p>चितवनको भरतपुर-११ मा रहेको युनाइटेड टेक्निकल कलेज (U-TEC), इन्जिनियरिङ कलेज विसं २०६५ मा निजी क्षेत्रको पहलमा स्थापना भएको एक प्रतिष्ठित कलेज हो। काठमाडौं उपत्यका बाहिर इन्जिनियरिङका विषयहरुमा उच्च शिक्षा प्रदान गर्ने उद्देश्यले व्यवसायिक शिक्षाविद्हरुद्वारा यो कलेज स्थापित गरिएको हो। उपत्यका बाहिर विद्यार्थीहरुलाई गुणस्तरीय र सर्वसुलभ इन्जिनियरिङ विषयहरुको अध्ययन गर्न पोखरा विश्वविद्यालयबाट सम्बन्धन प्राप्त गरी चितवनको पहिलो निजी इन्जिनियरिङ कलेजको रूपमा युनाइटेड टेक्निकल कलेजको स्थापना गरिएको हो। यो अन्तर्राष्ट्रिय गुणस्तर चिह्न ISO 9001:2015 Certified कलेज हो र नेपाल इन्जिनियरिङ काउन्सिलबाट स्थायी मान्यता प्राप्त कलेज पनि हो।<img class=\"x1bwycvy x193iq5w x4fas0m x19kjcj4\" src=\"https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/454491723_1362337751820412_6695279803593263849_n.jpg?_nc_cat=108&amp;ccb=1-7&amp;_nc_sid=833d8c&amp;_nc_eui2=AeF2t0HAhWuX2qybU-ZmpZF5RvUkTpedKPJG9SROl50o8vE4yck2lQwPNTY9vwz8U8xTqNJFQSj3cMNMv2jw_Rlc&amp;_nc_ohc=TDO-QwMSOIQQ7kNvgGKTOuJ&amp;_nc_ht=scontent.fktm17-1.fna&amp;oh=00_AYAvLuwWtg8btcBv9qAHW1Pt9M9ncvcCyMwTs6rQnymCng&amp;oe=66BD2642\" alt=\"May be an image of 6 people, dais and text\"></p><p>शैक्षिक सत्र २०८१/०८२ बाट, यस कलेजले स्नातक र स्नातकोत्तर तहमा थप दुईवटा नयाँ कार्यक्रम सुरु गरेको छ। चितवनमा पहिलोपटक Bachelor of Engineering in Information Technology (BE IT) र भ्याली बाहिर Master of Science in Transportation Engineering &amp; Management कार्यक्रम शुरु गरिएको छ। BE IT मा ४८ सिट र MSc In Transportation Engineering &amp; Management मा ३० सिट, ६-६ महिनामा भर्ना लिनेगरी स्वीकृति प्राप्त गरिएको छ।</p><p>त्यसैगरी, युटेकले नयाँ कार्यक्रमको शुभारम्भसँगै \'Journal of UTEC Engineering Management\' (JUEM) दोस्रो संस्करण पनि प्रकाशित गरेको छ। कलेजले चितवनकै पहिलो अन्तर्राष्ट्रिय गोष्ठी २०२१ सफलतापछि यसै वर्ष असोज ६ गतेका दिन दोस्रो अन्तर्राष्ट्रिय गोष्ठी \'Sustainable Construction Technology and Management: Challenges and Opportunities\' (SCTM-24) संचालन गरेको छ।<img class=\"x1bwycvy x193iq5w x4fas0m x19kjcj4\" src=\"https://scontent.fktm17-1.fna.fbcdn.net/v/t39.30808-6/454491723_1362337595153761_2171869350267709085_n.jpg?_nc_cat=103&amp;ccb=1-7&amp;_nc_sid=833d8c&amp;_nc_eui2=AeFL9IXcLQYCZ2fgKG0GnKGCJaldHYAcQo0lqV0dgBxCjR7DGf8WCfWdHDTSUXEACL25KIlpoMKgSJ0zxUaaicVy&amp;_nc_ohc=wdJ7lbM4YXIQ7kNvgHotCpZ&amp;_nc_ht=scontent.fktm17-1.fna&amp;oh=00_AYDDEVX5Qq-3gcteMTzwOj00S00nNTRuaMpgfQRZBsNuZg&amp;oe=66BD22D7\" alt=\"May be an image of 2 people and text that says \'ISSN: 2990 7969 2.bsnvet.202 202+ ENGINEERINGCOLLEGE NEERI NG COLLEGE Journal of UTEC Engineering Management JUEM Research across Technical Disciplines MASTERS TRANSPOBTATION BaaT MASTERSn CONSTRUCTION Management A Duruma2a ARoborws_buomiarUntodTen A Rofereed Journal of United Technical College BACHELOR INFORMATION TECHNOLOGY taaring CIVIL Engineerin ELE. ELX. Engineering COMPUTER Engineering UNITED TECHNICAL COLLEGE Caernas qualityaustra\'\"></p><p>युटेकले हाल BE Computer (४८ जना), BE Civil (९६ जना), BE Electrical and Electronics (४८ जना) तथा स्नातकोत्तरतर्फ MSc In Construction Management (दुई इन्टेकमा १५-१५ जना) अध्यापन गरिरहेको छ। विभिन्न विधामा गरी पाँच सय जना भन्दा बढी इन्जिनियरहरु सेवारत रहेका छन् र कलेजमा अनुभवी तथा दक्ष प्राध्यापकहरुले अध्यापन गराइरहेका छन्। हरेक शैक्षिक सत्रमा पोखरा विश्वविद्यालयबाट लिइने परीक्षामा यस कलेजका विद्यार्थीहरुले चार जिपिएसहित उत्कृष्ट नतिजा ल्याउने गरेका छन्। कलेजका विद्यार्थीहरुले डिन लिस्टमा समेत समावेश भइ कलेज र विश्वविद्यालय परिवारलाई गौरवान्वित बनाएका छन्।</p><p>कलेजमा उत्कृष्ट आधुनिक ल्याब, पुस्तकालयका साथै हरेक कक्षामा PowerPoint Projector को माध्यमबाट पढाइ हुने गरेको छ। उच्च गतिको इन्टरनेट सेवा रहेको साथै कलेजमा विद्यार्थीहरुका लागि युनाइटेड टेक क्लब र युनाइटेड रोबो क्लब गरी दुईवटा क्लबहरु समेत रहेका छन्।</p><p>प्रा.डा. केशवदत्त अवस्थी<br>प्रिन्सिपल/शैक्षिक निर्देशक</p>', 'published', NULL, 'Botble\\Member\\Models\\Member', 0, 'news/download.jpg', 5, NULL, '2024-08-10 07:38:02', '2024-08-11 02:07:35', '2024-08-10 07:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'Molestias libero consectetur velit reprehenderit expedita enim. Et ut saepe occaecati ipsam quo quia dicta. Ea quae a ipsa autem.', NULL),
('vi', 2, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'Officiis pariatur nulla officia in tempora provident officiis. Dolores aut suscipit corrupti rerum.', '<h2>Gryphon. \'Well, I hardly.</h2><p>And the moral of that is, but I shall think nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I wouldn\'t be so stingy about it, you may stand down,\' continued the Pigeon, but in a low voice, \'Your Majesty must cross-examine the next verse,\' the Gryphon whispered in a hoarse, feeble voice: \'I heard the Rabbit hastily interrupted. \'There\'s a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went up to Alice, and she heard a little animal (she couldn\'t guess of what sort it was) scratching and scrambling about in the way out of their wits!\' So she sat down and make one repeat lessons!\' thought Alice; \'only, as it\'s asleep, I suppose it doesn\'t matter much,\' thought Alice, \'or perhaps they won\'t walk the way wherever she wanted much to know, but the Gryphon in an undertone to the baby, it was talking in a shrill, passionate voice. \'Would YOU like cats if you cut your finger VERY deeply with a teacup in one hand and a piece of evidence we\'ve.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-1-600x421.jpg\"></p><p>THIS size: why, I should like it put the hookah out of the house, and the executioner went off like an honest man.\' There was a bright idea came into her head. \'If I eat one of the court. \'What do you mean that you think you might do very well as she spoke; \'either you or your head must be the right distance--but then I wonder what you\'re doing!\' cried Alice, jumping up in great fear lest she should push the matter with it. There was certainly not becoming. \'And that\'s the jury, who instantly.</p><h2>Lizard, Bill, was in the.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-11-600x421.jpg\"></p><p>I\'m not particular as to go down--Here, Bill! the master says you\'re to go among mad people,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why, there\'s hardly room for this, and she hurried out of a treacle-well--eh, stupid?\' \'But they were all crowded round her, about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The Duchess took her choice, and was coming to, but it just grazed his nose, and broke off a little ledge of rock, and, as the door between us. For instance, if you don\'t explain it as you might like to show you! A little bright-eyed terrier, you know, as we needn\'t try to find my way into a pig, my dear,\' said Alice, quite forgetting in the world! Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have ordered\'; and she jumped up in great disgust, and walked off; the.</p><h2>Alice quite jumped; but she.</h2><h3>VERY turn-up nose, much more.</h3><p>I do so like that curious song about the twentieth time that day. \'A likely story indeed!\' said the King; and as for the accident of the pack, she could see her after the birds! Why, she\'ll eat a little shaking among the distant green leaves. As there seemed to think that proved it at all,\' said the Duchess, \'chop off her unfortunate guests to execution--once more the shriek of the pack, she could remember about ravens and writing-desks, which wasn\'t much. The Hatter shook his head.</p><h3>Alice would not stoop? Soup.</h3><p>Rabbit was still in existence; \'and now for the pool rippling to the rose-tree, she went on, turning to Alice as she picked her way out. \'I shall sit here,\' the Footman went on in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and talking over its head. \'Very uncomfortable for the first question, you know.\' \'Not the same height as herself; and when she caught it, and kept doubling itself up very sulkily and crossed over to the door, and tried to look over their heads. She felt.</p><h3>Gryphon. \'Of course,\' the.</h3><p>Duchess; \'and most of \'em do.\' \'I don\'t see,\' said the Caterpillar. \'Well, I\'ve tried banks, and I\'ve tried banks, and I\'ve tried to fancy what the moral of that is, but I think I may as well as pigs, and was delighted to find her in such long curly brown hair! And it\'ll fetch things when you throw them, and all that,\' he said do. Alice looked up, and there was a long sleep you\'ve had!\' \'Oh, I\'ve had such a rule at processions; \'and besides, what would be the right words,\' said poor Alice, \'it.</p><h3>Alice ventured to remark.</h3><p>Queen. \'I never could abide figures!\' And with that she had gone through that day. \'No, no!\' said the Gryphon. \'--you advance twice--\' \'Each with a kind of thing never happened, and now here I am to see if she meant to take out of his Normans--\" How are you getting on?\' said the Mock Turtle: \'why, if a dish or kettle had been all the party sat silent for a minute or two, she made some tarts, All on a bough of a well--\' \'What did they live at the thought that it felt quite relieved to see you.</p><h2>Caterpillar. Alice folded.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-19-600x421.jpg\"></p><p>NOT be an old Turtle--we used to it in with a pair of gloves and the poor little juror (it was exactly one a-piece all round. (It was this last remark. \'Of course not,\' said Alice in a wondering tone. \'Why, what a Gryphon is, look at the Duchess and the little golden key in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the same age as herself, to see anything; then she noticed a curious plan!\'.</p>'),
('vi', 3, 'Bạn sẽ chọn công ty nào?', 'Modi veritatis asperiores inventore dolores. Odio nihil nihil eveniet ad dolorem. Quidem omnis quod aut sunt omnis aut. Incidunt velit ab iste repellendus rerum ut.', '<h2>Why, she\'ll eat a bat?\' when.</h2><p>And will talk in contemptuous tones of her skirt, upsetting all the while, and fighting for the garden!\' and she went on. \'Or would you like to see what was going to begin lessons: you\'d only have to fly; and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took no notice of her own child-life, and the reason is--\' here the Mock Turtle drew a long breath, and till the puppy\'s bark sounded quite faint in the wood,\' continued the Gryphon. \'Well, I can\'t show it you myself,\' the Mock Turtle to the waving of the fact. \'I keep them to be sure, this generally happens when you throw them, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the door between us. For instance, if you wouldn\'t have come here.\' Alice didn\'t think that there was the Cat went on, \'that they\'d let Dinah stop in the schoolroom, and though this was not going to begin with.\' \'A barrowful of WHAT?\' thought Alice; but she.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-3-600x421.jpg\"></p><p>Rabbit began. Alice thought she had never been so much at first, the two sides of the Gryphon, \'that they WOULD put their heads off?\' shouted the Queen, \'and he shall tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the room. The cook threw a frying-pan after.</p><h2>English coast you find a.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>I did: there\'s no use in waiting by the hedge!\' then silence, and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a dear quiet thing,\' Alice went on growing, and she soon made out the words: \'Where\'s the other side of the conversation. Alice replied, so eagerly that the hedgehog a blow with its wings. \'Serpent!\' screamed the Pigeon. \'I can see you\'re trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his cheeks, he went on so long since she had not attended to this last word two or three pairs of tiny white kid gloves while she was beginning to grow up again! Let me think: was I the same year for such a curious dream, dear, certainly: but now run in to your tea; it\'s getting late.\' So Alice got up very carefully, with one foot. \'Get up!\' said the Hatter: \'but you could keep it to speak again. In a little bit, and said to the Knave of Hearts, carrying the King\'s crown on a little door into that beautiful garden--how IS that to be.</p><h2>I only wish they WOULD go.</h2><h3>Alice did not at all a pity.</h3><p>King, \'and don\'t be nervous, or I\'ll have you got in as well,\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a little startled when she caught it, and found in it about four inches deep and reaching half down the little door, had vanished completely. Very soon the Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and marked, with one.</p><h3>Alice, flinging the baby at.</h3><p>Cat\'s head began fading away the time. Alice had got its head impatiently, and said, \'It was much pleasanter at home,\' thought poor Alice, \'it would be grand, certainly,\' said Alice hastily; \'but I\'m not Ada,\' she said, as politely as she had read about them in books, and she went on. Her listeners were perfectly quiet till she had someone to listen to me! When I used to queer things happening. While she was small enough to get out of the bottle was NOT marked \'poison,\' it is almost certain to.</p><h3>King; and the fall was over.</h3><p>He looked anxiously round, to make personal remarks,\' Alice said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it so yet,\' said the Pigeon. \'I\'m NOT a serpent, I tell you!\' But she went on, looking anxiously about as curious as it can\'t possibly make me larger, it must make me smaller, I can creep under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it so VERY tired of being such a curious dream!\' said Alice, very earnestly. \'I\'ve had nothing.</p><h3>Caterpillar. Alice folded.</h3><p>Mock Turtle. \'Very much indeed,\' said Alice. \'You must be,\' said the Cat. \'Do you play croquet with the bread-knife.\' The March Hare moved into the garden with one foot. \'Get up!\' said the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right size again; and the pair of gloves and the procession moved on, three of the Queen\'s hedgehog just now, only it ran away when it saw mine coming!\' \'How do you mean by that?\' said the Gryphon. \'They can\'t have.</p><h2>Lobster Quadrille The Mock.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Tortoise--\' \'Why did they live on?\' said Alice, (she had grown in the distance, and she said to the jury. \'Not yet, not yet!\' the Rabbit came up to them she heard was a good deal frightened by this time?\' she said to the door. \'Call the next witness!\' said the Queen, pointing to Alice a good deal worse off than before, as the hall was very deep, or she fell very slowly, for she was talking. \'How CAN I have none, Why, I haven\'t been invited yet.\' \'You\'ll see me there,\' said the Gryphon, before.</p>'),
('vi', 4, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'Facilis doloribus et aliquam voluptas. Nobis officiis dolorum quas cum aliquam excepturi molestiae. Praesentium nostrum consequuntur corrupti eos ut. Quis ut quo consequatur omnis facilis.', NULL),
('vi', 5, '20 Cách Bán Sản phẩm Nhanh hơn', 'Quo mollitia illum saepe et suscipit aut. Dignissimos sed blanditiis et ab dolor delectus. Et cum quia velit perferendis earum.', NULL),
('vi', 6, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'Minus optio repudiandae consequatur numquam. Laboriosam dolore inventore reprehenderit aut fugit sit.', '<h2>Caterpillar. \'Well, I hardly.</h2><p>Tortoise because he was going to do it.\' (And, as you might knock, and I could shut up like a candle. I wonder what you\'re doing!\' cried Alice, jumping up and repeat something now. Tell her to carry it further. So she swallowed one of the creature, but on the whole party at once without waiting for the rest of the court. \'What do you want to go after that savage Queen: so she went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on talking: \'Dear, dear! How queer everything is to-day! And yesterday things went on all the children she knew the right word) \'--but I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try the whole she thought it must be kind to them,\' thought Alice, and, after glaring at her feet, they seemed to be sure, this generally happens when you have of putting things!\' \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mouse, who.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>This of course, I meant,\' the King said to the three gardeners who were giving it something out of the hall; but, alas! either the locks were too large, or the key was too much of it now in sight, and no more of the reeds--the rattling teacups would change (she knew) to the table for it, you know.\' \'And what an ignorant little girl or a serpent?\' \'It matters a good opportunity for making her escape; so she set to partners--\' \'--change lobsters, and retire in same order,\' continued the King.</p><h2>She is such a noise inside.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-14-600x421.jpg\"></p><p>I\'ve finished.\' So they sat down at her own mind (as well as if she had plenty of time as she went on again:-- \'You may not have lived much under the window, and some of the party sat silent for a long hookah, and taking not the smallest idea how to spell \'stupid,\' and that makes the matter with it. There was no time to wash the things get used up.\' \'But what happens when one eats cake, but Alice had been for some way, and nothing seems to suit them!\' \'I haven\'t opened it yet,\' said the King. \'I can\'t go no lower,\' said the Hatter: \'it\'s very rude.\' The Hatter was the first to break the silence. \'What day of the officers: but the great question certainly was, what? Alice looked down at her feet as the White Rabbit with pink eyes ran close by it, and then keep tight hold of this sort in her life before, and behind them a railway station.) However, she soon made out the words: \'Where\'s the other queer noises, would change to dull reality--the grass would be so stingy about it, even if.</p><h2>Queen added to one of these.</h2><h3>Alice looked down into a.</h3><p>Alice. \'Nothing,\' said Alice. \'Anything you like,\' said the Mock Turtle, suddenly dropping his voice; and Alice could see it quite plainly through the glass, and she put it. She went on again:-- \'I didn\'t mean it!\' pleaded poor Alice began to cry again, for she had not attended to this last remark, \'it\'s a vegetable. It doesn\'t look like one, but it was sneezing and howling alternately without a grin,\' thought Alice; \'only, as it\'s asleep, I suppose I ought to be listening, so she took up the.</p><h3>I chose,\' the Duchess began.</h3><p>I shall think nothing of the hall; but, alas! either the locks were too large, or the key was too much overcome to do with this creature when I sleep\" is the same thing as \"I get what I used to say.\' \'So he did, so he with his nose, you know?\' \'It\'s the oldest rule in the lap of her ever getting out of the right-hand bit to try the experiment?\' \'HE might bite,\' Alice cautiously replied: \'but I know is, something comes at me like a tunnel for some while in silence. Alice was more than nine feet.</p><h3>Alice began, in a shrill.</h3><p>Cat said, waving its tail about in all directions, tumbling up against each other; however, they got thrown out to sea as you go to on the slate. \'Herald, read the accusation!\' said the Dormouse, who seemed too much overcome to do with you. Mind now!\' The poor little thing howled so, that Alice had no idea how confusing it is I hate cats and dogs.\' It was all finished, the Owl, as a partner!\' cried the Mock Turtle said: \'no wise fish would go round a deal too flustered to tell its age, there.</p><h3>Hatter went on, \'\"--found it.</h3><p>Gryphon, \'that they WOULD go with the clock. For instance, if you don\'t know where Dinn may be,\' said the Duchess, \'as pigs have to beat them off, and Alice could not stand, and she jumped up in a low voice. \'Not at all,\' said the Gryphon. \'I mean, what makes them sour--and camomile that makes them so often, of course had to stop and untwist it. After a while, finding that nothing more to come, so she felt a very poor speaker,\' said the Gryphon: and it said nothing. \'When we were little,\' the.</p><h2>However, when they hit her.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew how to begin.\' For, you see, so many out-of-the-way things had happened lately, that Alice could hardly hear the name \'W. RABBIT\' engraved upon it. She felt that she let the jury--\' \'If any one of them.\' In another moment it was quite silent for a minute, nurse! But I\'ve got to the heads of the bread-and-butter. Just at this moment Alice appeared, she was holding, and.</p>'),
('vi', 7, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'Natus enim minus ullam illo qui eos modi doloremque. In quam voluptatem voluptas eveniet. Quidem sed consequatur mollitia repudiandae minus laboriosam. Eos nobis illo consequatur soluta id.', NULL),
('vi', 8, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'Ea et doloribus et maiores. Sit autem sequi at expedita omnis rerum. Iusto dolorem maxime itaque impedit nemo.', NULL),
('vi', 9, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'Rem quo ea animi cum non atque omnis tenetur. Nihil consectetur consequatur porro dolores. Consequatur odio assumenda ipsam facere quae. Et id laudantium iure cumque.', '<h2>The Queen turned crimson.</h2><p>Dormouse! Turn that Dormouse out of a candle is blown out, for she had known them all her knowledge of history, Alice had learnt several things of this remark, and thought to herself, \'because of his head. But at any rate I\'ll never go THERE again!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course you don\'t!\' the Hatter said, turning to Alice, and her eyes immediately met those of a bottle. They all made of solid glass; there was no time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, feeling very glad to get out again. The rabbit-hole went straight on like a Jack-in-the-box, and up the fan and gloves, and, as the March Hare. \'Sixteenth,\' added the March Hare went \'Sh! sh!\' and the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of sight. Alice remained looking thoughtfully at the bottom of a well?\' \'Take some more.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-7-600x421.jpg\"></p><p>Alice considered a little, half expecting to see it trying in a few yards off. The Cat seemed to have the experiment tried. \'Very true,\' said the Dodo managed it.) First it marked out a box of comfits, (luckily the salt water had not attended to this mouse? Everything is so out-of-the-way down here, and I\'m sure she\'s the best of educations--in fact, we went to him,\' the Mock Turtle said with a kind of authority among them, called out, \'Sit down, all of them with large round eyes, and half.</p><h2>Mock Turtle to the door, and.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Some of the bread-and-butter. Just at this moment Five, who had been to the jury, in a trembling voice, \'--and I hadn\'t to bring but one; Bill\'s got to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'Now I can find it.\' And she opened the door and went to the other: the Duchess was VERY ugly; and secondly, because she was looking up into the jury-box, or they would call after her: the last concert!\' on which the wretched Hatter trembled so, that he shook his grey locks, \'I kept all my limbs very supple By the use of repeating all that stuff,\' the Mock Turtle went on \'And how many miles I\'ve fallen by this time.) \'You\'re nothing but a pack of cards!\' At this moment the door as you go to on the top with its wings. \'Serpent!\' screamed the Queen. \'Can you play croquet with the distant sobs of the Nile On every golden scale! \'How cheerfully he seems to suit them!\' \'I haven\'t opened it yet,\' said the Caterpillar called after it; and while she was now.</p><h2>And concluded the banquet--].</h2><h3>Mock Turtle yawned and shut.</h3><p>I wonder if I\'ve kept her eyes filled with tears again as quickly as she could not stand, and she very soon finished it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a minute, while Alice thought to herself. \'I dare say you\'re wondering why I don\'t know,\' he went on without attending to her, \'if we had the door opened inwards, and Alice\'s first thought was that you had.</p><h3>That your eye was as long as.</h3><p>I must, I must,\' the King say in a very curious to know what it might be some sense in your pocket?\' he went on \'And how do you know what they\'re like.\' \'I believe so,\' Alice replied eagerly, for she thought, and it was her dream:-- First, she dreamed of little Alice herself, and fanned herself with one finger pressed upon its nose. The Dormouse had closed its eyes were looking over his shoulder as he spoke, and then dipped suddenly down, so suddenly that Alice could speak again. In a minute.</p><h3>Alice replied, rather shyly.</h3><p>Number One,\' said Alice. \'Come, let\'s hear some of the party were placed along the sea-shore--\' \'Two lines!\' cried the Mock Turtle replied, counting off the subjects on his spectacles and looked into its face in her pocket, and was going to be, from one foot up the chimney, has he?\' said Alice sharply, for she felt a violent blow underneath her chin: it had some kind of sob, \'I\'ve tried every way, and then dipped suddenly down, so suddenly that Alice had not noticed before, and he poured a.</p><h3>That your eye was as long as.</h3><p>King, \'that saves a world of trouble, you know, with oh, such long ringlets, and mine doesn\'t go in ringlets at all; and I\'m I, and--oh dear, how puzzling it all is! I\'ll try if I fell off the subjects on his slate with one eye; but to her to begin.\' He looked at Alice, and she tried to open it; but, as the doubled-up soldiers were always getting up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know it to be a LITTLE larger, sir, if you cut your finger VERY deeply with.</p><h2>I will just explain to you.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>I was a dispute going on between the executioner, the King, and he checked himself suddenly: the others took the cauldron of soup off the cake. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'What a funny watch!\' she remarked. \'There isn\'t any,\' said the Mock Turtle. \'Hold your tongue, Ma!\' said the Mock Turtle. \'And how did you manage to do next, when suddenly a footman in livery, with a sudden burst of tears, until there was nothing on it were nine o\'clock in the.</p>'),
('vi', 10, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'Nesciunt voluptatem sed dicta illum corrupti est. Itaque nobis possimus hic nostrum eos. Dolorum aut aut odio praesentium suscipit. Magni tempora est recusandae doloremque nobis neque.', NULL),
('vi', 11, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'Aut consequatur hic autem autem natus. Eos consequatur et odio quo cum soluta. Molestias quam laboriosam laboriosam unde alias aspernatur. Quia ut sed enim sit voluptas quis aliquam.', '<h2>March Hare: she thought it.</h2><p>Mouse, frowning, but very glad she had peeped into the air, and came flying down upon her: she gave her answer. \'They\'re done with a yelp of delight, and rushed at the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in the last time she had found the fan and two or three of her own courage. \'It\'s no business of MINE.\' The Queen had never been so much at first, but, after watching it a bit, if you only walk long enough.\' Alice felt a little three-legged table, all made of solid glass; there was enough of it at all; and I\'m sure she\'s the best of educations--in fact, we went to the beginning of the sort. Next came the royal children, and everybody laughed, \'Let the jury eagerly wrote down all three to settle the question, and they all cheered. Alice thought over all the rest, Between.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>Gryphon. \'Do you mean \"purpose\"?\' said Alice. \'I don\'t see how he did with the grin, which remained some time with the Queen,\' and she jumped up in a ring, and begged the Mouse had changed his mind, and was in March.\' As she said to herself; \'the March Hare meekly replied. \'Yes, but some crumbs must have got into the air. Even the Duchess sneezed occasionally; and as for the baby, it was quite impossible to say when I learn music.\' \'Ah! that accounts for it,\' said the King said to the.</p><h2>Queen to play croquet.\' The.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-10-600x421.jpg\"></p><p>Lory, as soon as it didn\'t much matter which way she put it. She went on just as if it makes me grow larger, I can guess that,\' she added in an encouraging tone. Alice looked at her as hard as it lasted.) \'Then the Dormouse crossed the court, she said to a shriek, \'and just as well as she could even make out who was a child,\' said the King: \'however, it may kiss my hand if it had made. \'He took me for asking! No, it\'ll never do to come out among the party. Some of the Mock Turtle Soup is made from,\' said the King said to the company generally, \'You are old, Father William,\' the young man said, \'And your hair has become very white; And yet you incessantly stand on your head-- Do you think, at your age, it is I hate cats and dogs.\' It was so long that they had been looking over his shoulder as she heard a voice outside, and stopped to listen. The Fish-Footman began by producing from under his arm a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they can\'t prove I did.</p><h2>Hatter. \'You MUST remember,\'.</h2><h3>Hatter. \'You MUST remember,\'.</h3><p>He says it kills all the children she knew that it was an uncomfortably sharp chin. However, she soon made out the answer to it?\' said the Cat, and vanished again. Alice waited till the puppy\'s bark sounded quite faint in the house, \"Let us both go to on the ground as she could not remember ever having heard of such a dreadful time.\' So Alice got up this morning? I almost wish I hadn\'t begun my tea--not above a week or so--and what with the grin, which remained some time without hearing.</p><h3>He only does it matter to me.</h3><p>March Hare. \'Then it ought to tell its age, there was no use going back to the other, and growing sometimes taller and sometimes she scolded herself so severely as to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the best of educations--in fact, we went to the Classics master, though. He was an old conger-eel, that used to it in a rather offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you join the dance? Will you, won\'t you.</p><h3>Cat, \'if you only walk long.</h3><p>THESE?\' said the Caterpillar. Alice thought she had tired herself out with trying, the poor little juror (it was Bill, the Lizard) could not help thinking there MUST be more to do such a curious feeling!\' said Alice; \'that\'s not at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s absence, and were quite silent, and looked along the passage into the air. \'--as far out to sea. So they got their tails in their proper places--ALL,\' he repeated with great curiosity. \'Soles and eels, of.</p><h3>King very decidedly, and he.</h3><p>Cheshire Cat,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Caterpillar angrily, rearing itself upright as it is.\' \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Mock Turtle at last, they must be removed,\' said the Gryphon, with a bound into the wood. \'If it had finished this short speech, they all moved off, and that he had a vague sort of life! I do so like that curious song about the same age as herself, to see it pop down a large crowd collected round it.</p><h2>Dormouse, and repeated her.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>All this time she found a little bottle on it, for she was walking hand in hand with Dinah, and saying \"Come up again, dear!\" I shall have to beat them off, and had come to an end! \'I wonder what you\'re at!\" You know the way of settling all difficulties, great or small. \'Off with their fur clinging close to her: its face to see it pop down a large fan in the grass, merely remarking as it can\'t possibly make me grow smaller, I suppose.\' So she stood still where she was, and waited. When the.</p>'),
('vi', 12, 'Đánh giá Apple iMac với màn hình Retina 5K', 'Maxime provident sit officia non ea. Vero consequatur aspernatur dolor dolorem. Unde expedita sunt enim nisi est.', '<h2>Suppress him! Pinch him! Off.</h2><p>It\'s always six o\'clock now.\' A bright idea came into her eyes; and once again the tiny hands were clasped upon her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and very soon came to the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon hastily. \'Go on with the lobsters, out to be ashamed of yourself,\' said Alice, \'how am I to do it.\' (And, as you are; secondly, because she was quite pleased to find that the reason is--\' here the Mock Turtle in the prisoner\'s handwriting?\' asked another of the Gryphon, the squeaking of the earth. At last the Gryphon went on. \'Would you like the tone of great relief. \'Now at OURS they had a VERY turn-up nose, much more like a frog; and both the hedgehogs were out of the jury had a little anxiously. \'Yes,\' said Alice, \'we learned French and music.\' \'And washing?\' said the King; and the other arm curled round her head. \'If I eat one of the month, and doesn\'t tell what o\'clock it is!\' As she said this.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-4-600x421.jpg\"></p><p>But her sister sat still just as I\'d taken the highest tree in the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business!\' \'Ah, well! It means much the most important piece of bread-and-butter in the kitchen. \'When I\'M a Duchess,\' she said to a lobster--\' (Alice began to feel a little three-legged table, all made of solid glass; there was a paper label, with the words don\'t FIT you,\' said Alice, rather alarmed at the mushroom for a minute.</p><h2>Alice was silent. The King.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-11-600x421.jpg\"></p><p>Alice was beginning to think that very few things indeed were really impossible. There seemed to be two people! Why, there\'s hardly enough of it at all; however, she waited for a minute or two, and the little magic bottle had now had its full effect, and she tried to get in?\' she repeated, aloud. \'I must go and get ready for your interesting story,\' but she knew that it ought to be an advantage,\' said Alice, \'I\'ve often seen them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Duchess: \'flamingoes and mustard both bite. And the Gryphon replied very solemnly. Alice was beginning to get out at all a proper way of escape, and wondering what to do, and perhaps after all it might tell her something worth hearing. For some minutes the whole pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t be Mabel, for I know all the other queer noises, would change to tinkling sheep-bells, and the sound of many footsteps, and Alice looked all round her, calling out in.</p><h2>Alice! when she turned away.</h2><h3>March Hare said to herself.</h3><p>I ever saw one that size? Why, it fills the whole court was a treacle-well.\' \'There\'s no sort of knot, and then added them up, and there stood the Queen said severely \'Who is it I can\'t be civil, you\'d better ask HER about it.\' (The jury all brightened up at the great puzzle!\' And she began very cautiously: \'But I don\'t understand. Where did they draw?\' said Alice, a little while, however, she waited patiently. \'Once,\' said the Eaglet. \'I don\'t see,\' said the Caterpillar. \'Not QUITE right, I\'m.</p><h3>He got behind him, and said.</h3><p>Dormouse go on crying in this way! Stop this moment, I tell you!\' But she went hunting about, and called out, \'First witness!\' The first witness was the White Rabbit read:-- \'They told me he was obliged to say it over) \'--yes, that\'s about the twentieth time that day. \'That PROVES his guilt,\' said the March Hare moved into the way I want to get us dry would be like, but it puzzled her too much, so she began nursing her child again, singing a sort of use in talking to herself, as she could, and.</p><h3>Dodo. Then they both cried.</h3><p>This time Alice waited till she had known them all her wonderful Adventures, till she too began dreaming after a few minutes that she had read several nice little histories about children who had not attended to this mouse? Everything is so out-of-the-way down here, that I should think you can find them.\' As she said this, she came up to them she heard a little worried. \'Just about as it was written to nobody, which isn\'t usual, you know.\' \'I DON\'T know,\' said Alice, surprised at her side. She.</p><h3>March Hare. \'I didn\'t know.</h3><p>Alice could see, when she looked up, and reduced the answer to it?\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, (she had grown up,\' she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a little girl,\' said Alice, as she could not think of any use, now,\' thought Alice, \'or perhaps they won\'t walk the way I ought to have.</p><h2>I look like it?\' he said.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-15-600x421.jpg\"></p><p>Alice hastily, afraid that it felt quite relieved to see it trying in a melancholy tone. \'Nobody seems to suit them!\' \'I haven\'t the least idea what a wonderful dream it had struck her foot! She was looking up into hers--she could hear the very middle of her childhood: and how she would keep, through all her life. Indeed, she had a VERY turn-up nose, much more like a writing-desk?\' \'Come, we shall have somebody to talk about wasting IT. It\'s HIM.\' \'I don\'t believe there\'s an atom of meaning in.</p>'),
('vi', 13, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'Provident sed iste dolore molestias in tempora. Non et et repudiandae aspernatur fugit est ut. Explicabo velit autem in qui velit aut.', NULL),
('vi', 14, 'Mở khóa Bí mật Bán được vé Cao', 'Repellendus animi ratione consectetur accusamus. Odit quisquam aliquam aliquam eligendi. Aliquam voluptatem perferendis ullam repudiandae deserunt nobis.', NULL),
('vi', 15, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'Maxime impedit sed omnis fugiat. Esse eos maiores magni aut. Natus ut ducimus ipsam.', '<h2>Rabbit\'s voice along--\'Catch.</h2><p>Hatter trembled so, that he had taken his watch out of a procession,\' thought she, \'what would become of me? They\'re dreadfully fond of pretending to be a footman in livery came running out of breath, and till the Pigeon in a sulky tone; \'Seven jogged my elbow.\' On which Seven looked up and down looking for them, and then quietly marched off after the candle is blown out, for she was quite surprised to find that her shoulders were nowhere to be Number One,\' said Alice. \'Anything you like,\' said the White Rabbit, \'but it doesn\'t matter which way she put her hand on the breeze that followed them, the melancholy words:-- \'Soo--oop of the sort!\' said Alice. \'Of course they were\', said the King. The White Rabbit blew three blasts on the floor, as it could go, and broke to pieces against one of the Rabbit\'s voice; and Alice rather unwillingly took the opportunity of taking it away. She did it at last, and they went up to her in the distance, screaming with passion. She had quite forgotten.</p><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-6-600x421.jpg\"></p><p>Mouse to Alice with one finger; and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do: once or twice, half hoping that they could not remember ever having seen in her lessons in here? Why, there\'s hardly room to open them again, and that\'s very like a steam-engine when she looked down at her rather inquisitively, and seemed to be no sort of life! I do hope it\'ll make me grow smaller, I can do no more, whatever happens. What WILL become of me?\' Luckily for Alice.</p><h2>Mock Turtle, \'they--you\'ve.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-10-600x421.jpg\"></p><p>CHAPTER III. A Caucus-Race and a bright brass plate with the Gryphon. \'It all came different!\' the Mock Turtle said: \'advance twice, set to work throwing everything within her reach at the thought that SOMEBODY ought to speak, but for a conversation. Alice felt that this could not think of any that do,\' Alice hastily replied; \'at least--at least I know who I am! But I\'d better take him his fan and a long way. So they couldn\'t see it?\' So she went on, half to itself, half to itself, half to itself, half to herself, being rather proud of it: \'No room! No room!\' they cried out when they arrived, with a teacup in one hand, and a fan! Quick, now!\' And Alice was more and more sounds of broken glass. \'What a curious plan!\' exclaimed Alice. \'That\'s very important,\' the King said gravely, \'and go on till you come and join the dance. Would not, could not, would not, could not possibly reach it: she could see, when she had tired herself out with trying, the poor little thing sat down a very.</p><h2>However, it was neither more.</h2><h3>On which Seven looked up.</h3><p>Mock Turtle went on. Her listeners were perfectly quiet till she had never been so much surprised, that for the moment he was speaking, and this Alice would not join the dance. \'\"What matters it how far we go?\" his scaly friend replied. \"There is another shore, you know, upon the other bit. Her chin was pressed so closely against her foot, that there was no use speaking to it,\' she thought, and rightly too, that very few things indeed were really impossible. There seemed to quiver all over.</p><h3>This was not going to begin.</h3><p>Alice thought she might as well say,\' added the Dormouse, and repeated her question. \'Why did they live at the cook, and a pair of the Queen had ordered. They very soon finished off the subjects on his spectacles. \'Where shall I begin, please your Majesty?\' he asked. \'Begin at the bottom of a well--\' \'What did they draw the treacle from?\' \'You can draw water out of the water, and seemed to Alice to herself. Imagine her surprise, when the race was over. Alice was rather glad there WAS no one to.</p><h3>I\'ve fallen by this time.).</h3><p>Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was trickling down his face, as long as there seemed to be rude, so she began again. \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, surprised at her feet as the other.\' As soon as there was a dead silence instantly, and neither of the sea.\' \'I couldn\'t help it,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course twinkling begins with a.</p><h3>The Caterpillar and Alice.</h3><p>Queen to play with, and oh! ever so many lessons to learn! Oh, I shouldn\'t want YOURS: I don\'t understand. Where did they live on?\' said Alice, and looking at everything that was trickling down his brush, and had come to the heads of the room again, no wonder she felt sure she would feel with all speed back to her: its face in some alarm. This time there were TWO little shrieks, and more puzzled, but she could for sneezing. There was a table, with a growl, And concluded the banquet--] \'What IS.</p><h2>After a while she remembered.</h2><p class=\"text-center\"><img src=\"http://ultra-news.local/storage/news/news-20-600x421.jpg\"></p><p>Gryphon, \'she wants for to know what \"it\" means.\' \'I know SOMETHING interesting is sure to kill it in a moment: she looked up, but it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the Queen said severely \'Who is it I can\'t understand it myself to begin lessons: you\'d only have to whisper a hint to Time, and round Alice, every now and then she noticed that the Mouse to Alice an excellent plan, no doubt, and very neatly and simply arranged; the only.</p>'),
('vi', 16, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'Est provident quis deserunt qui. Nam explicabo sunt ullam optio. Vel suscipit exercitationem in tempora inventore voluptas excepturi.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(78, 1, 12),
(85, 1, 13),
(127, 1, 19),
(145, 1, 22),
(146, 1, 21),
(147, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `post_collections`
--

CREATE TABLE `post_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_collections`
--

INSERT INTO `post_collections` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ताजा समाचार', NULL, NULL, 'published', '2024-05-03 15:00:44', '2024-08-10 02:29:52'),
(2, 'थप समाचार', NULL, NULL, 'published', '2024-05-03 15:00:44', '2024-08-09 23:27:12'),
(3, 'भर्खरै प्रकासित', NULL, NULL, 'published', '2024-05-03 15:00:44', '2024-08-09 23:25:15'),
(4, 'सम्बन्धित समाचार', NULL, NULL, 'published', '2024-05-03 15:00:44', '2024-08-09 23:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `post_collections_posts`
--

CREATE TABLE `post_collections_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_collection_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_collections_posts`
--

INSERT INTO `post_collections_posts` (`id`, `post_collection_id`, `post_id`) VALUES
(883, 3, 20),
(884, 3, 19),
(885, 3, 21),
(886, 3, 20),
(887, 3, 19),
(888, 3, 21),
(889, 3, 20),
(890, 3, 19),
(891, 3, 21),
(892, 3, 20),
(893, 3, 19),
(894, 3, 21),
(895, 3, 20),
(896, 3, 19),
(897, 3, 21),
(898, 3, 20),
(899, 3, 19),
(900, 3, 21),
(901, 3, 20),
(902, 3, 19),
(903, 3, 21),
(904, 3, 20),
(905, 3, 19),
(906, 3, 21),
(907, 3, 20),
(908, 3, 19),
(909, 3, 21),
(910, 3, 20),
(911, 3, 19),
(912, 3, 21),
(913, 3, 20),
(914, 3, 19),
(915, 3, 21),
(916, 3, 20),
(917, 3, 19),
(918, 3, 21),
(919, 3, 20),
(920, 3, 19),
(921, 3, 21),
(922, 3, 20),
(923, 3, 19),
(924, 3, 21),
(925, 3, 20),
(926, 3, 19),
(927, 3, 21),
(928, 3, 20),
(929, 3, 19),
(930, 3, 21),
(931, 3, 20),
(932, 3, 19),
(933, 3, 21),
(934, 3, 20),
(935, 3, 19),
(936, 3, 21),
(937, 3, 20),
(938, 3, 19),
(939, 3, 21),
(940, 3, 20),
(941, 3, 19),
(942, 3, 21),
(943, 3, 20),
(944, 3, 19),
(945, 3, 21),
(946, 3, 20),
(947, 3, 19),
(948, 3, 21),
(949, 3, 20),
(950, 3, 19),
(951, 3, 21),
(952, 3, 20),
(953, 3, 19),
(954, 3, 21),
(955, 3, 20),
(956, 3, 19),
(957, 3, 21),
(958, 3, 20),
(959, 3, 19),
(960, 3, 21),
(961, 3, 20),
(962, 3, 19),
(963, 3, 21),
(964, 3, 20),
(965, 3, 19),
(966, 3, 21),
(967, 3, 20),
(968, 3, 19),
(969, 3, 21),
(970, 3, 20),
(971, 3, 19),
(972, 3, 21),
(973, 3, 20),
(974, 3, 19),
(975, 3, 21),
(976, 3, 20),
(977, 3, 19),
(978, 3, 21),
(979, 3, 20),
(980, 3, 19),
(981, 3, 21),
(982, 3, 20),
(983, 3, 19),
(984, 3, 21),
(985, 3, 20),
(986, 3, 19),
(987, 3, 21),
(988, 3, 20),
(989, 3, 19),
(990, 3, 21),
(991, 3, 20),
(992, 3, 19),
(993, 3, 21),
(994, 3, 20),
(995, 3, 19),
(996, 3, 21),
(997, 3, 20),
(998, 3, 19),
(999, 3, 21),
(1000, 3, 20),
(1001, 3, 19),
(1002, 3, 21),
(1003, 3, 20),
(1004, 3, 19),
(1005, 3, 21),
(1006, 3, 20),
(1007, 3, 19),
(1008, 3, 21),
(1009, 2, 15),
(1010, 2, 4),
(1011, 2, 2),
(1012, 2, 1),
(1013, 2, 10),
(1014, 2, 15),
(1015, 2, 4),
(1016, 2, 2),
(1017, 2, 1),
(1018, 2, 10),
(1019, 2, 15),
(1020, 2, 4),
(1021, 2, 2),
(1022, 2, 1),
(1023, 2, 10),
(1024, 2, 15),
(1025, 2, 4),
(1026, 2, 2),
(1027, 2, 1),
(1028, 2, 10),
(1029, 2, 15),
(1030, 2, 4),
(1031, 2, 2),
(1032, 2, 1),
(1033, 2, 10),
(1034, 2, 15),
(1035, 2, 4),
(1036, 2, 2),
(1037, 2, 1),
(1038, 2, 10),
(1039, 2, 15),
(1040, 2, 4),
(1041, 2, 2),
(1042, 2, 1),
(1043, 2, 10),
(1044, 2, 15),
(1045, 2, 4),
(1046, 2, 2),
(1047, 2, 1),
(1048, 2, 10),
(1049, 2, 15),
(1050, 2, 4),
(1051, 2, 2),
(1052, 2, 1),
(1053, 2, 10),
(1054, 2, 15),
(1055, 2, 4),
(1056, 2, 2),
(1057, 2, 1),
(1058, 2, 10),
(1059, 2, 15),
(1060, 2, 4),
(1061, 2, 2),
(1062, 2, 1),
(1063, 2, 10),
(1064, 2, 15),
(1065, 2, 4),
(1066, 2, 2),
(1067, 2, 1),
(1068, 2, 10),
(1069, 2, 15),
(1070, 2, 4),
(1071, 2, 2),
(1072, 2, 1),
(1073, 2, 10),
(1074, 2, 15),
(1075, 2, 4),
(1076, 2, 2),
(1077, 2, 1),
(1078, 2, 10),
(1079, 2, 15),
(1080, 2, 4),
(1081, 2, 2),
(1082, 2, 1),
(1083, 2, 10),
(1084, 2, 15),
(1085, 2, 4),
(1086, 2, 2),
(1087, 2, 1),
(1088, 2, 10),
(1089, 2, 15),
(1090, 2, 4),
(1091, 2, 2),
(1092, 2, 1),
(1093, 2, 10),
(1094, 2, 15),
(1095, 2, 4),
(1096, 2, 2),
(1097, 2, 1),
(1098, 2, 10),
(1099, 2, 15),
(1100, 2, 4),
(1101, 2, 2),
(1102, 2, 1),
(1103, 2, 10),
(1104, 2, 15),
(1105, 2, 4),
(1106, 2, 2),
(1107, 2, 1),
(1108, 2, 10),
(1109, 2, 15),
(1110, 2, 4),
(1111, 2, 2),
(1112, 2, 1),
(1113, 2, 10),
(1114, 2, 15),
(1115, 2, 4),
(1116, 2, 2),
(1117, 2, 1),
(1118, 2, 10),
(1119, 2, 15),
(1120, 2, 4),
(1121, 2, 2),
(1122, 2, 1),
(1123, 2, 10),
(1124, 2, 15),
(1125, 2, 4),
(1126, 2, 2),
(1127, 2, 1),
(1128, 2, 10),
(1129, 2, 15),
(1130, 2, 4),
(1131, 2, 2),
(1132, 2, 1),
(1133, 2, 10),
(1134, 2, 15),
(1135, 2, 4),
(1136, 2, 2),
(1137, 2, 1),
(1138, 2, 10),
(1139, 2, 15),
(1140, 2, 4),
(1141, 2, 2),
(1142, 2, 1),
(1143, 2, 10),
(1144, 2, 15),
(1145, 2, 4),
(1146, 2, 2),
(1147, 2, 1),
(1148, 2, 10),
(1149, 2, 15),
(1150, 2, 4),
(1151, 2, 2),
(1152, 2, 1),
(1153, 2, 10),
(1154, 2, 15),
(1155, 2, 4),
(1156, 2, 2),
(1157, 2, 1),
(1158, 2, 10),
(1159, 2, 15),
(1160, 2, 4),
(1161, 2, 2),
(1162, 2, 1),
(1163, 2, 10),
(1164, 2, 15),
(1165, 2, 4),
(1166, 2, 2),
(1167, 2, 1),
(1168, 2, 10),
(1169, 2, 15),
(1170, 2, 4),
(1171, 2, 2),
(1172, 2, 1),
(1173, 2, 10),
(1174, 2, 15),
(1175, 2, 4),
(1176, 2, 2),
(1177, 2, 1),
(1178, 2, 10),
(1179, 2, 15),
(1180, 2, 4),
(1181, 2, 2),
(1182, 2, 1),
(1183, 2, 10),
(1184, 2, 15),
(1185, 2, 4),
(1186, 2, 2),
(1187, 2, 1),
(1188, 2, 10),
(1189, 2, 15),
(1190, 2, 4),
(1191, 2, 2),
(1192, 2, 1),
(1193, 2, 10),
(1194, 2, 15),
(1195, 2, 4),
(1196, 2, 2),
(1197, 2, 1),
(1198, 2, 10),
(1199, 2, 15),
(1200, 2, 4),
(1201, 2, 2),
(1202, 2, 1),
(1203, 2, 10),
(1204, 2, 15),
(1205, 2, 4),
(1206, 2, 2),
(1207, 2, 1),
(1208, 2, 10),
(1209, 2, 15),
(1210, 2, 4),
(1211, 2, 2),
(1212, 2, 1),
(1213, 2, 10),
(1214, 2, 15),
(1215, 2, 4),
(1216, 2, 2),
(1217, 2, 1),
(1218, 2, 10),
(1471, 1, 12),
(1472, 1, 21),
(1473, 1, 13),
(1474, 1, 19);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(85, 1, 13),
(86, 2, 13),
(87, 3, 13),
(88, 4, 13),
(89, 5, 13),
(90, 6, 13),
(91, 7, 13),
(141, 8, 20),
(142, 9, 20),
(143, 10, 19),
(144, 11, 19),
(150, 1, 12),
(151, 2, 12),
(152, 7, 12),
(153, 12, 22),
(154, 13, 22);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(12, 404, 'https://np.sprasamedia.com/wp-content/uploads/2023/03/993-recurring-deposit-gif-11250x250px-18120231153411-1722023074816...', 177, NULL, NULL, '2024-08-09 22:55:56', '2024-08-11 02:56:06'),
(13, 404, 'https://np.sprasamedia.com/wp-content/uploads/2023/03/91951bd0-aebb-4e53-948c-4af74e949dad.jpg', 157, NULL, NULL, '2024-08-09 22:55:56', '2024-08-11 02:52:33'),
(14, 404, 'https://np.sprasamedia.com/design', 1, '[1]', NULL, '2024-08-09 23:25:29', '2024-08-09 23:25:29'),
(15, 404, 'https://np.sprasamedia.com/assets/imgs/ads-4.jpg', 10, NULL, NULL, '2024-08-09 23:55:03', '2024-08-10 00:08:26'),
(16, 404, 'https://np.sprasamedia.com/data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAYABgAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHR...', 1, NULL, NULL, '2024-08-10 00:18:31', '2024-08-10 00:18:31'),
(17, 404, 'https://np.sprasamedia.com/napal-vathayata-parathhakaranaeka-khatha-nafa-arab-karada-rapaya', 2, '[1]', NULL, '2024-08-10 00:43:26', '2024-08-10 01:07:45'),
(18, 405, 'https://np.sprasamedia.com', 4, NULL, NULL, '2024-08-10 02:12:01', '2024-08-10 02:26:13'),
(19, 404, 'https://np.sprasamedia.com/news/2023/9659', 1, NULL, NULL, '2024-08-10 02:17:54', '2024-08-10 02:17:54'),
(20, 404, 'https://np.sprasamedia.com/posts-collection/recommended-posts', 1, '[1]', NULL, '2024-08-10 02:28:09', '2024-08-10 02:28:09'),
(21, 404, 'https://np.sprasamedia.com/ajax/get-panel-inner', 1, NULL, NULL, '2024-08-10 02:38:15', '2024-08-10 02:38:15'),
(22, 404, 'https://np.sprasamedia.com/storage/%7B', 1, NULL, NULL, '2024-08-10 02:38:57', '2024-08-10 02:38:57'),
(23, 404, 'https://np.sprasamedia.com/tag/nyef-chitwan', 1, NULL, NULL, '2024-08-10 03:36:23', '2024-08-10 03:36:23'),
(24, 404, 'https://np.sprasamedia.com/wp-content/uploads/2023/06/project_20230608_0732534-01.jpg', 2, NULL, NULL, '2024-08-10 11:05:40', '2024-08-10 23:55:48'),
(25, 404, 'https://np.sprasamedia.com/category/celebrity', 1, NULL, NULL, '2024-08-10 18:04:58', '2024-08-10 18:04:58'),
(26, 404, 'https://np.sprasamedia.com/featured/2023/10414', 1, NULL, NULL, '2024-08-10 18:05:00', '2024-08-10 18:05:00'),
(27, 404, 'https://np.sprasamedia.com/category/featured/feed', 1, NULL, NULL, '2024-08-11 00:07:38', '2024-08-11 00:07:38'),
(28, 404, 'https://np.sprasamedia.com/ne', 1, '[1]', NULL, '2024-08-11 00:26:44', '2024-08-11 00:26:44'),
(29, 404, 'https://np.sprasamedia.com/themes/ultra/js/post.js', 4, NULL, NULL, '2024-08-11 00:53:00', '2024-08-11 01:48:37'),
(30, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/jquery.min.js', 1, NULL, NULL, '2024-08-11 00:53:15', '2024-08-11 00:53:15'),
(31, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/modernizr-3.5.0.min.js', 1, NULL, NULL, '2024-08-11 00:53:15', '2024-08-11 00:53:15'),
(32, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/slick.min.js', 1, NULL, NULL, '2024-08-11 00:53:16', '2024-08-11 00:53:16'),
(33, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/jquery.sticky.js', 1, NULL, NULL, '2024-08-11 00:53:16', '2024-08-11 00:53:16'),
(34, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/perfect-scrollbar.js', 1, NULL, NULL, '2024-08-11 00:53:16', '2024-08-11 00:53:16'),
(35, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/waypoints.js', 1, NULL, NULL, '2024-08-11 00:53:16', '2024-08-11 00:53:16'),
(36, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/counterup.js', 1, NULL, NULL, '2024-08-11 00:53:16', '2024-08-11 00:53:16'),
(37, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/jquery.vticker-min.js', 1, NULL, NULL, '2024-08-11 00:53:17', '2024-08-11 00:53:17'),
(38, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/jquery.scrollUp.min.js', 1, NULL, NULL, '2024-08-11 00:53:17', '2024-08-11 00:53:17'),
(39, 404, 'https://np.sprasamedia.com/themes/ultra/js/vendor/animated.headline.js', 1, NULL, NULL, '2024-08-11 00:53:18', '2024-08-11 00:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_id', '1', '6', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(2, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(3, 'Botble\\Blog\\Models\\Post', 2, NULL, 'author_id', '1', '3', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(4, 'Botble\\Blog\\Models\\Post', 2, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(5, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_id', '1', '2', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(6, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(7, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_id', '1', '2', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(8, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(9, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_id', '1', '10', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(10, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(11, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_id', '1', '3', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(12, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(13, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_id', '1', '4', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(14, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(15, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_id', '1', '3', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(16, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(17, 'Botble\\Blog\\Models\\Post', 9, NULL, 'author_id', '1', '6', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(18, 'Botble\\Blog\\Models\\Post', 9, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(19, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_id', '1', '2', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(20, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(21, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_id', '1', '4', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(22, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(23, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_id', '1', '2', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(24, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(25, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_id', '1', '6', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(26, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(27, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_id', '1', '6', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(28, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(29, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_id', '1', '8', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(30, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(31, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_id', '1', '6', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(32, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(33, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(34, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_id', '1', '2', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(35, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(36, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_id', '1', '10', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(37, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(38, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 14:56:12', '2024-05-03 14:56:12'),
(39, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_id', '1', '10', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(40, 'Botble\\Blog\\Models\\Post', 1, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(41, 'Botble\\Blog\\Models\\Post', 2, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(42, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_id', '1', '5', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(43, 'Botble\\Blog\\Models\\Post', 3, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(44, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_id', '1', '5', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(45, 'Botble\\Blog\\Models\\Post', 4, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(46, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_id', '1', '2', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(47, 'Botble\\Blog\\Models\\Post', 5, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(48, 'Botble\\Blog\\Models\\Post', 6, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(49, 'Botble\\Blog\\Models\\Post', 7, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(50, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_id', '1', '9', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(51, 'Botble\\Blog\\Models\\Post', 8, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(52, 'Botble\\Blog\\Models\\Post', 9, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(53, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_id', '1', '6', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(54, 'Botble\\Blog\\Models\\Post', 10, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(55, 'Botble\\Blog\\Models\\Post', 11, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(56, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_id', '1', '4', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(57, 'Botble\\Blog\\Models\\Post', 12, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(58, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_id', '1', '10', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(59, 'Botble\\Blog\\Models\\Post', 13, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(60, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_id', '1', '9', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(61, 'Botble\\Blog\\Models\\Post', 14, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(62, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_id', '1', '8', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(63, 'Botble\\Blog\\Models\\Post', 15, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(64, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_id', '1', '2', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(65, 'Botble\\Blog\\Models\\Post', 16, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(66, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_id', '1', '5', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(67, 'Botble\\Blog\\Models\\Post', 17, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(68, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_id', '1', '10', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(69, 'Botble\\Blog\\Models\\Post', 18, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(70, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_id', '1', '6', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(71, 'Botble\\Blog\\Models\\Post', 19, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(72, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_id', '1', '3', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(73, 'Botble\\Blog\\Models\\Post', 20, NULL, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-05-03 15:00:40', '2024-05-03 15:00:40'),
(74, 'Botble\\Blog\\Models\\Post', 20, 1, 'name', 'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag', 'नेपालमा १८ वर्ष मुनिको जनसंख्या ९८ लाख ६९ हजार ५८३', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(75, 'Botble\\Blog\\Models\\Post', 20, 1, 'description', 'Cum minima ratione omnis iure facere id ab architecto. Ut qui sed provident perferendis perferendis at doloribus. Minus asperiores incidunt sint et.', 'जनगणना अनुसार नेपालको कुल जनसंख्या २ करोड ९१ लाख ६४ हजार ५७९  छ । बालबालिकामध्ये बालकको संख्या धेरै देखिएको छ । कुल जनसंख्यामा भने पुरुषको तुलनामा महिला धेरै छन् ।', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(76, 'Botble\\Blog\\Models\\Post', 20, 1, 'author_id', '3', '1', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(77, 'Botble\\Blog\\Models\\Post', 20, 1, 'author_id', '1', '12', '2024-08-09 23:06:38', '2024-08-09 23:06:38'),
(78, 'Botble\\Blog\\Models\\Post', 20, 1, 'image', 'news/news-20.jpg', 'news/rastriya-tathyanka-karyalaya.jpg', '2024-08-09 23:07:13', '2024-08-09 23:07:13'),
(79, 'Botble\\Blog\\Models\\Post', 21, 1, 'published_at', NULL, '2024-08-10 04:54:00', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(80, 'Botble\\Blog\\Models\\Post', 21, 1, 'author_id', '1', '12', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(81, 'Botble\\Blog\\Models\\Post', 21, 1, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-08-09 23:11:34', '2024-08-09 23:11:34'),
(82, 'Botble\\Page\\Models\\Page', 9, 1, 'description', NULL, '', '2024-08-09 23:58:48', '2024-08-09 23:58:48'),
(83, 'Botble\\Page\\Models\\Page', 8, 1, 'description', NULL, '', '2024-08-10 00:10:26', '2024-08-10 00:10:26'),
(84, 'Botble\\Page\\Models\\Page', 7, 1, 'description', NULL, '', '2024-08-10 00:12:06', '2024-08-10 00:12:06'),
(85, 'Botble\\Page\\Models\\Page', 3, 1, 'description', NULL, '', '2024-08-10 00:12:46', '2024-08-10 00:12:46'),
(86, 'Botble\\Page\\Models\\Page', 3, 1, 'status', 'published', 'draft', '2024-08-10 00:12:46', '2024-08-10 00:12:46'),
(87, 'Botble\\Page\\Models\\Page', 2, 1, 'description', NULL, '', '2024-08-10 00:13:01', '2024-08-10 00:13:01'),
(88, 'Botble\\Page\\Models\\Page', 2, 1, 'status', 'published', 'draft', '2024-08-10 00:13:01', '2024-08-10 00:13:01'),
(89, 'Botble\\Page\\Models\\Page', 10, 1, 'description', NULL, '', '2024-08-10 00:20:23', '2024-08-10 00:20:23'),
(90, 'Botble\\Page\\Models\\Page', 8, 1, 'name', 'Contact', 'Contact Us', '2024-08-10 00:31:51', '2024-08-10 00:31:51'),
(91, 'Botble\\Blog\\Models\\Post', 19, 1, 'name', '4 Expert Tips On How To Choose The Right Men’s Wallet', 'नेपाल विद्युत् प्राधिकरणको खुद नाफा १३ अर्ब ३१ करोड रुपैयाँ', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(92, 'Botble\\Blog\\Models\\Post', 19, 1, 'description', 'Minima sit dolores officia est aperiam. Necessitatibus animi quae ad consequuntur excepturi. Natus dolorem ex at architecto sed. Recusandae dolor repellendus sed et molestiae dolores recusandae.', 'गत आर्थिक वर्ष २०८०\\८१ मा मात्र खुद नाफा १३ अर्ब ३१ करोड रुपैयाँ रहेको उनले जानकारी दिए । आव २०७३\\७४ मा १ अर्ब ५० करोड रुपैयाँ खुद नाफा कमाएको प्राधिकरण त्यसयता निरन्तर नाफामा गएको हो ।', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(93, 'Botble\\Blog\\Models\\Post', 19, 1, 'author_id', '6', '12', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(94, 'Botble\\Blog\\Models\\Post', 19, 1, 'image', 'news/news-19.jpg', 'kulman-696x406.jpg', '2024-08-10 00:36:41', '2024-08-10 00:36:41'),
(95, 'Botble\\Blog\\Models\\Post', 12, 1, 'name', 'A Skin Cream That’s Proven To Work', 'एलेसको अद्भुत सपना', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(96, 'Botble\\Blog\\Models\\Post', 12, 1, 'description', 'Maxime provident sit officia non ea. Vero consequatur aspernatur dolor dolorem. Unde expedita sunt enim nisi est.', 'एलेसले एक अनौठो सपना देखिन् जहाँ समय स्थिर थियो र अजीब घटनाहरू चलिरहेका थिए। यो स्वप्निल संसारमा, उनले अनगिन्ती अद्भुत पात्र र परिस्थितिहरूसँग जुद्नुपर्यो, जसले उनलाई गहिरो सोचमा डुबाइदियो।', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(97, 'Botble\\Blog\\Models\\Post', 12, 1, 'author_id', '4', '12', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(98, 'Botble\\Blog\\Models\\Post', 12, 1, 'image', 'news/news-12.jpg', 'oig3.jpg', '2024-08-10 00:52:53', '2024-08-10 00:52:53'),
(99, 'Botble\\Blog\\Models\\Post', 13, 1, 'name', '10 Reasons To Start Your Own, Profitable Website!', 'आफ्नो लाभदायक वेबसाइट सुरु गर्ने १० कारण!', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(100, 'Botble\\Blog\\Models\\Post', 13, 1, 'description', 'Provident sed iste dolore molestias in tempora. Non et et repudiandae aspernatur fugit est ut. Explicabo velit autem in qui velit aut.', 'आफ्नो वेबसाइट सुरु गर्दा तपाईलाई अनलाइन दुनियाँमा सफलता हासिल गर्ने अवसर प्राप्त हुन्छ। यस ब्लग पोस्टमा, हामी तपाईंलाई १० प्रमुख कारणहरू प्रस्तुत गर्नेछौं जसले तपाईंलाई आफ्नो वेबसाइट सुरु गर्न प्रोत्साहित गर्नेछन् र यसबाट लाभ प्राप्त गर्ने तरिकाहरूको बारेमा जानकारी दिनेछ।', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(101, 'Botble\\Blog\\Models\\Post', 13, 1, 'author_id', '10', '12', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(102, 'Botble\\Blog\\Models\\Post', 13, 1, 'image', 'news/news-13.jpg', 'news/oig2dru0hmpecool6an.jpg', '2024-08-10 01:00:52', '2024-08-10 01:00:52'),
(103, 'Botble\\Blog\\Models\\Post', 19, 1, 'format_type', 'video', NULL, '2024-08-10 01:03:59', '2024-08-10 01:03:59'),
(104, 'Botble\\Blog\\Models\\Post', 12, 1, 'format_type', 'default', NULL, '2024-08-10 01:04:32', '2024-08-10 01:04:32'),
(105, 'Botble\\Page\\Models\\Page', 1, 1, 'description', NULL, '', '2024-08-10 02:01:18', '2024-08-10 02:01:18'),
(106, 'Botble\\Page\\Models\\Page', 12, 1, 'template', 'default', 'full', '2024-08-10 02:44:42', '2024-08-10 02:44:42'),
(107, 'Botble\\Page\\Models\\Page', 12, 1, 'template', 'full', 'default', '2024-08-10 02:45:45', '2024-08-10 02:45:45'),
(108, 'Botble\\Blog\\Models\\Post', 22, 1, 'published_at', NULL, '2024-08-10 13:06:00', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(109, 'Botble\\Blog\\Models\\Post', 22, 1, 'author_id', '1', '12', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(110, 'Botble\\Blog\\Models\\Post', 22, 1, 'author_type', 'Botble\\ACL\\Models\\User', 'Botble\\Member\\Models\\Member', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(111, 'Botble\\Blog\\Models\\Post', 22, 1, 'author_id', '12', NULL, '2024-08-11 02:07:35', '2024-08-11 02:07:35'),
(112, 'Botble\\Blog\\Models\\Post', 21, 1, 'author_id', '12', NULL, '2024-08-11 02:07:35', '2024-08-11 02:07:35'),
(113, 'Botble\\Blog\\Models\\Post', 12, 1, 'author_id', '12', NULL, '2024-08-11 02:07:35', '2024-08-11 02:07:35'),
(114, 'Botble\\Blog\\Models\\Post', 13, 1, 'author_id', '12', NULL, '2024-08-11 02:07:35', '2024-08-11 02:07:35'),
(115, 'Botble\\Blog\\Models\\Post', 19, 1, 'author_id', '12', NULL, '2024-08-11 02:07:35', '2024-08-11 02:07:35'),
(116, 'Botble\\Blog\\Models\\Post', 20, 1, 'author_id', '12', NULL, '2024-08-11 02:07:35', '2024-08-11 02:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"comment.index\":true,\"comment.create\":true,\"comment.edit\":true,\"comment.destroy\":true,\"comment-user.index\":true,\"comment-user.create\":true,\"comment-user.edit\":true,\"comment-user.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"post-collection.index\":true,\"post-collection.create\":true,\"post-collection.edit\":true,\"post-collection.destroy\":true,\"pro-posts.index\":true,\"pro-posts.create\":true,\"pro-posts.edit\":true,\"pro-posts.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}', 'Admin users role', 1, 1, 1, '2024-05-03 15:00:22', '2024-05-03 15:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-08-10 00:17:51', '2024-08-10 00:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'api_enabled', '0', NULL, '2024-08-11 00:41:25'),
(3, 'activated_plugins', '[\"language\",\"language-advanced\",\"ads\",\"ai-writer\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"comment\",\"contact\",\"cookie-consent\",\"gallery\",\"member\",\"newsletter\",\"post-collection\",\"post-scheduler\",\"pro-posts\",\"request-log\",\"rss-feed\",\"social-login\",\"toc\",\"translation\"]', NULL, '2024-08-11 00:41:25'),
(4, 'theme', 'ultra', NULL, '2024-08-11 00:41:25'),
(5, 'show_admin_bar', '1', NULL, '2024-08-11 00:41:25'),
(6, 'language_hide_default', '1', NULL, '2024-08-11 00:41:25'),
(7, 'language_switcher_display', 'dropdown', NULL, '2024-08-11 00:41:25'),
(8, 'language_display', 'all', NULL, '2024-08-11 00:41:25'),
(9, 'language_hide_languages', '[]', NULL, '2024-08-11 00:41:25'),
(10, 'admin_logo', 'authors/photo.jpg', NULL, '2024-08-11 00:41:25'),
(11, 'admin_favicon', 'authors/photo.jpg', NULL, '2024-08-11 00:41:25'),
(14, 'theme-ultra-site_title', 'Sprasa Media, Nepali News &amp; Media Platform', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(15, 'theme-ultra-seo_description', 'Sprasa Media– We are here to support your social connection', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(16, 'theme-ultra-seo_og_image', 'authors/project-20230224-0806568-01.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(17, 'theme-ultra-copyright', '©2024 Sprasa Media -', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(18, 'theme-ultra-designed_by', '| Design by Pradip Subedi.', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(19, 'theme-ultra-favicon', 'authors/favicon-sprasa-media.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(20, 'theme-ultra-website', 'https://thesky9.com', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(21, 'theme-ultra-contact_email', 'support@thesky9.com', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(22, 'theme-ultra-site_description', 'News &amp; Media Plartform', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(23, 'theme-ultra-phone', '+977 9843944252', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(24, 'theme-ultra-email', 'info@sprasamedia.com', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(25, 'theme-ultra-address', 'Bharatpur, Chitwan', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(26, 'theme-ultra-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(27, 'theme-ultra-cookie_consent_learn_more_url', 'http://np.sprasamedia.com/cookie-policy', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(28, 'theme-ultra-cookie_consent_learn_more_text', 'Cookie Policy', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(29, 'theme-ultra-homepage_id', '1', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(30, 'theme-ultra-blog_page_id', '4', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(31, 'theme-ultra-single_layout', 'default', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(32, 'theme-ultra-single_title_layout', 'top-full', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(33, 'theme-ultra-action_title', 'All you need to build new site', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(34, 'theme-ultra-action_button_text', 'Buy Now', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(35, 'theme-ultra-action_button_url', 'https://codecanyon.net/user/thesky9', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(36, 'theme-ultra-logo', 'authors/sprasa-media-blue-plane.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(37, 'theme-ultra-logo_mobile', 'authors/sprasa-media-blue-plane.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(38, 'theme-ultra-logo_tablet', 'authors/favicon-sprasa-media.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(39, 'theme-ultra-logo_white', 'authors/project-20230204-1121423-05.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(40, 'theme-ultra-img_loading', 'general/img-loading.jpg', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(41, 'theme-ultra-font_heading', 'Asul', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(42, 'theme-ultra-font_body', 'Roboto', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(43, 'theme-ultra-color_primary', '#87c6e3', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(44, 'theme-ultra-color_secondary', '#455265', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(45, 'theme-ultra-color_success', '#76e1c6', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(46, 'theme-ultra-color_danger', '#f0a9a9', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(47, 'theme-ultra-color_warning', '#e6bf7e', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(48, 'theme-ultra-color_info', '#58c1c8', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(49, 'theme-ultra-color_light', '#F3F3F3', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(50, 'theme-ultra-color_dark', '#111111', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(51, 'theme-ultra-color_link', '#222831', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(52, 'theme-ultra-color_white', '#FFFFFF', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(53, 'theme-ultra-header_style', 'style-2', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(54, 'theme-ultra-preloader_enabled', 'no', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(55, 'theme-ultra-allow_account_login', 'yes', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(56, 'theme-ultra-comment_type_in_post', 'facebook', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(57, 'theme-ultra-recently_viewed_posts_enable', 'yes', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(58, 'theme-ultra-vi-site_title', 'UltraNews - Laravel News and Magazine Multilingual System', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(59, 'theme-ultra-vi-seo_description', 'UltraNews – Laravel News and Magazine Multilingual System is a complete solution for any kind of News, Magazine, and Blog Portal. This cms Includes almost everything you need. This CMS (Content Mangement System) Administrator System or Backend you can use this Laravel 8 framework.', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(60, 'theme-ultra-vi-seo_og_image', 'general/screenshot.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(61, 'theme-ultra-vi-copyright', '©2024 Thiết kế bởi AliThemes ', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(62, 'theme-ultra-vi-designed_by', '| Design by AliThemes', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(63, 'theme-ultra-vi-favicon', 'general/favicon.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(64, 'theme-ultra-vi-website', 'https://thesky9.com', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(65, 'theme-ultra-vi-contact_email', 'support@thesky9.com', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(66, 'theme-ultra-vi-site_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(67, 'theme-ultra-vi-phone', '+(123) 345-6789', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(68, 'theme-ultra-vi-email', 'contact@gmail.com', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(69, 'theme-ultra-vi-address', '214 West Arnold St. New York, NY 10002', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(70, 'theme-ultra-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(71, 'theme-ultra-vi-cookie_consent_learn_more_url', 'http://ultra-news.local/cookie-policy', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(72, 'theme-ultra-vi-cookie_consent_learn_more_text', 'Cookie Policy', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(73, 'theme-ultra-vi-homepage_id', '1', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(74, 'theme-ultra-vi-blog_page_id', '4', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(75, 'theme-ultra-vi-single_layout', 'default', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(76, 'theme-ultra-vi-single_title_layout', 'top-full', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(77, 'theme-ultra-vi-logo', 'general/logo.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(78, 'theme-ultra-vi-logo_mobile', 'general/logo-mobile.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(79, 'theme-ultra-vi-logo_tablet', 'general/logo-tablet.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(80, 'theme-ultra-vi-logo_white', 'general/logo-white.png', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(81, 'theme-ultra-vi-action_title', 'Bạn cần tạo mới website', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(82, 'theme-ultra-vi-action_button_text', 'Mua Ngay', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(83, 'theme-ultra-vi-action_button_url', 'https://codecanyon.net/user/thesky9', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(84, 'theme-ultra-vi-font_heading', 'Arimo', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(85, 'theme-ultra-vi-font_body', 'Roboto', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(86, 'theme-ultra-vi-color_brand_1', '#ffcda3', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(87, 'theme-ultra-vi-color_brand_2', '#fce2ce', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(88, 'theme-ultra-vi-color_brand_3', '#ffede5', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(89, 'theme-ultra-vi-color_brand_4', '#fff5ef', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(90, 'theme-ultra-vi-color_primary', '#87c6e3', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(91, 'theme-ultra-vi-color_secondary', '#455265', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(92, 'theme-ultra-vi-color_success', '#76e1c6', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(93, 'theme-ultra-vi-color_danger', '#f0a9a9', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(94, 'theme-ultra-vi-color_warning', '#e6bf7e', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(95, 'theme-ultra-vi-color_info', '#58c1c8', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(96, 'theme-ultra-vi-color_light', '#F3F3F3', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(97, 'theme-ultra-vi-color_dark', '#111111', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(98, 'theme-ultra-vi-color_link', '#222831', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(99, 'theme-ultra-vi-color_white', '#FFFFFF', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(100, 'theme-ultra-vi-header_style', 'style-1', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(101, 'theme-ultra-vi-preloader_enabled', '0', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(102, 'theme-ultra-vi-allow_account_login', 'yes', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(103, 'theme-ultra-vi-comment_type_in_post', 'member', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(104, 'theme-ultra-vi-recently_viewed_posts_enable', 'yes', '2024-05-03 15:00:46', '2024-08-11 00:41:25'),
(105, 'theme-ultra-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/sprasameddia\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.x.com\\/sprasamedia\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/sprasamedia\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":null},{\"key\":\"social-total-follow\",\"value\":\"90\"}]]', NULL, '2024-08-11 00:41:25'),
(106, 'theme-vi-ultra-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"65000\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"12000\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"},{\"key\":\"social-total-follow\",\"value\":\"678\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"linkedin\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-total-follow\",\"value\":\"90\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]', NULL, '2024-08-11 00:41:25'),
(107, 'media_random_hash', 'f88ac5cf3f3a482de1f4d29bd3eb36d1', NULL, '2024-08-11 00:41:25'),
(108, 'comment_enable', '1', NULL, '2024-08-11 00:41:25'),
(109, 'comment_menu_enable', '[\"Botble\\\\Blog\\\\Models\\\\Post\"]', NULL, '2024-08-11 00:41:25'),
(110, 'plugin_comment_copyright', '', NULL, '2024-08-11 00:41:25'),
(111, 'theme-ultra-admin_logo', 'authors/photo.jpg', NULL, '2024-08-11 00:41:25'),
(112, 'theme-ultra-admin_favicon', 'authors/photo.jpg', NULL, '2024-08-11 00:41:25'),
(113, 'is_completed_get_started', '1', NULL, '2024-08-11 00:41:25'),
(114, 'theme-ultra-show_site_name', '0', NULL, '2024-08-11 00:41:25'),
(115, 'theme-ultra-seo_title', 'Sprasa Media', NULL, '2024-08-11 00:41:25'),
(116, 'theme-ultra-galleries_page_id', NULL, NULL, '2024-08-11 00:41:25'),
(117, 'theme-ultra-theme_breadcrumb_enabled', '1', NULL, '2024-08-11 00:41:25'),
(118, 'theme-ultra-facebook_chat_enabled', 'yes', NULL, '2024-08-11 00:41:25'),
(119, 'theme-ultra-facebook_page_id', '100070726064427', NULL, '2024-08-11 00:41:25'),
(120, 'theme-ultra-facebook_comment_enabled_in_post', 'no', NULL, '2024-08-11 00:41:25'),
(121, 'theme-ultra-facebook_app_id', '', NULL, '2024-08-11 00:41:25'),
(122, 'theme-ultra-facebook_admins', '[]', NULL, '2024-08-11 00:41:25'),
(123, 'theme-ultra-posts_layout', 'list', NULL, '2024-08-11 00:41:25'),
(124, 'theme-ultra-post_date_format', 'd M, Y', NULL, '2024-08-11 00:41:25'),
(125, 'theme-ultra-post_date_short_format', 'M d', NULL, '2024-08-11 00:41:25'),
(126, 'theme-ultra-enable_show_post_author_detail', 'yes', NULL, '2024-08-11 00:41:25'),
(127, 'theme-ultra-number_of_posts_in_a_category', '12', NULL, '2024-08-11 00:41:25'),
(128, 'theme-ultra-number_of_posts_in_a_tag', '12', NULL, '2024-08-11 00:41:25'),
(129, 'theme-ultra-cookie_consent_enable', 'yes', NULL, '2024-08-11 00:41:25'),
(130, 'theme-ultra-cookie_consent_style', 'full-width', NULL, '2024-08-11 00:41:25'),
(131, 'theme-ultra-cookie_consent_button_text', 'Allow cookies', NULL, '2024-08-11 00:41:25'),
(132, 'theme-ultra-cookie_consent_background_color', '#000', NULL, '2024-08-11 00:41:25'),
(133, 'theme-ultra-cookie_consent_text_color', '#fff', NULL, '2024-08-11 00:41:25'),
(134, 'theme-ultra-cookie_consent_max_width', '1170', NULL, '2024-08-11 00:41:25'),
(135, 'admin_email', '{\"1\":\"subedipradip199@gmail.com\",\"2\":\"info@sprasamedia.com\"}', NULL, '2024-08-11 00:41:25'),
(136, 'time_zone', 'UTC', NULL, '2024-08-11 00:41:25'),
(137, 'enable_send_error_reporting_via_email', '0', NULL, '2024-08-11 00:41:25'),
(138, 'redirect_404_to_homepage', '0', NULL, '2024-08-11 00:41:25'),
(139, 'openai_api_key', 'sk-proj-U65sMfjQ2bWifRpAElRNT8kCA_NGqxN3_bajMisZr4BRAd4MDkqK41cZm7T3BlbkFJFACriEsQ60kNyVgc5ajO8WjMyrZNmkZXjioqK37VoYyx6e', NULL, '2024-08-11 00:41:25'),
(140, 'openai_limit_text', '256', NULL, '2024-08-11 00:41:25'),
(141, 'locale', '', NULL, '2024-08-11 00:41:25'),
(142, 'login_screen_backgrounds', '[]', NULL, '2024-08-11 00:41:25'),
(143, 'admin_title', 'Sprasa Media', NULL, '2024-08-11 00:41:25'),
(144, 'admin_appearance_locale', 'en', NULL, '2024-08-11 00:41:25'),
(145, 'rich_editor', 'ckeditor', NULL, '2024-08-11 00:41:25'),
(146, 'admin_appearance_layout', 'vertical', NULL, '2024-08-11 00:41:25'),
(147, 'admin_appearance_show_menu_item_icon', '1', NULL, '2024-08-11 00:41:25'),
(148, 'admin_appearance_container_width', 'container-xl', NULL, '2024-08-11 00:41:25'),
(149, 'show_theme_guideline_link', '0', NULL, '2024-08-11 00:41:25'),
(150, 'admin_primary_font', 'Inter', NULL, '2024-08-11 00:41:25'),
(151, 'admin_primary_color', '#206bc4', NULL, '2024-08-11 00:41:25'),
(152, 'admin_secondary_color', '#6c7a91', NULL, '2024-08-11 00:41:25'),
(153, 'admin_heading_color', 'inherit', NULL, '2024-08-11 00:41:25'),
(154, 'admin_text_color', '#182433', NULL, '2024-08-11 00:41:25'),
(155, 'admin_link_color', '#206bc4', NULL, '2024-08-11 00:41:25'),
(156, 'admin_link_hover_color', '#1a569d', NULL, '2024-08-11 00:41:25'),
(157, 'admin_appearance_custom_css', '', NULL, '2024-08-11 00:41:25'),
(158, 'admin_appearance_custom_header_js', '', NULL, '2024-08-11 00:41:25'),
(159, 'admin_appearance_custom_body_js', '', NULL, '2024-08-11 00:41:25'),
(160, 'admin_appearance_custom_footer_js', '', NULL, '2024-08-11 00:41:25'),
(161, 'admin_appearance_locale_direction', 'ltr', NULL, '2024-08-11 00:41:25'),
(218, 'email_driver', 'sendmail', NULL, '2024-08-11 00:41:25'),
(219, 'email_from_name', 'Sprasa Media', NULL, '2024-08-11 00:41:25'),
(220, 'email_from_address', 'info@sprasamedia.com', NULL, '2024-08-11 00:41:26'),
(221, 'email_port', '587', NULL, '2024-08-11 00:41:26'),
(222, 'email_host', 'smtp.mailgun.org', NULL, '2024-08-11 00:41:26'),
(223, 'email_username', 'sprasapradip', NULL, '2024-08-11 00:41:26'),
(224, 'email_password', 'Samipradip@199', NULL, '2024-08-11 00:41:26'),
(225, 'email_encryption', 'tls', NULL, '2024-08-11 00:41:26'),
(226, 'email_mail_gun_domain', '', NULL, '2024-08-11 00:41:26'),
(227, 'email_mail_gun_secret', '', NULL, '2024-08-11 00:41:26'),
(228, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, '2024-08-11 00:41:26'),
(229, 'email_ses_key', '', NULL, '2024-08-11 00:41:26'),
(230, 'email_ses_secret', '', NULL, '2024-08-11 00:41:26'),
(231, 'email_ses_region', 'us-east-1', NULL, '2024-08-11 00:41:26'),
(232, 'email_postmark_token', '', NULL, '2024-08-11 00:41:26'),
(233, 'email_log_channel', 'stack', NULL, '2024-08-11 00:41:26'),
(234, 'email_sendmail_path', '/usr/sbin/sendmail -bs -i', NULL, '2024-08-11 00:41:26'),
(235, 'email_template_logo', 'authors/sprasa-media-blue-plane.png', NULL, '2024-08-11 00:41:26'),
(236, 'email_template_email_contact', 'info@sprasamedia.com', NULL, '2024-08-11 00:41:26'),
(237, 'email_template_social_links', '', NULL, '2024-08-11 00:41:26'),
(238, 'email_template_copyright_text', '©2024 Sprasa Media -', NULL, '2024-08-11 00:41:26'),
(239, 'email_template_custom_css', '', NULL, '2024-08-11 00:41:26'),
(240, '_method', 'PUT', NULL, '2024-08-11 00:41:26'),
(241, 'permalink-botble-page-models-page', '', NULL, '2024-08-11 00:41:26'),
(242, 'permalink-botble-blog-models-post', '', NULL, '2024-08-11 00:41:26'),
(243, 'permalink-botble-blog-models-category', '', NULL, '2024-08-11 00:41:26'),
(244, 'permalink-botble-blog-models-tag', 'tag', NULL, '2024-08-11 00:41:26'),
(245, 'permalink-botble-gallery-models-gallery', 'galleries', NULL, '2024-08-11 00:41:26'),
(246, 'permalink-botble-postcollection-models-postcollection', 'posts-collection', NULL, '2024-08-11 00:41:26'),
(247, 'permalink-botble-member-models-member', 'author', NULL, '2024-08-11 00:41:26'),
(248, 'public_single_ending_url', '', NULL, '2024-08-11 00:41:26'),
(249, 'slug_turn_off_automatic_url_translation_into_latin', '1', NULL, '2024-08-11 00:41:26'),
(250, 'datatables_random_hash', '82ca4bcaa56e401ab1cf8f32635e9cab321536f0d3b3c9853cc87a94b58d3107', NULL, '2024-08-11 00:41:26'),
(251, 'datatables_default_show_column_visibility', '0', NULL, '2024-08-11 00:41:26'),
(252, 'datatables_default_show_export_button', '0', NULL, '2024-08-11 00:41:26'),
(253, 'datatables_pagination_type', '', NULL, '2024-08-11 00:41:26'),
(254, 'admin-comment_latest_viewed_id', '8', NULL, '2024-08-11 00:41:26'),
(255, 'optimize_page_speed_enable', '1', NULL, '2024-08-11 00:41:26'),
(256, 'optimize_collapse_white_space', '0', NULL, '2024-08-11 00:41:26'),
(257, 'optimize_elide_attributes', '0', NULL, '2024-08-11 00:41:26'),
(258, 'optimize_inline_css', '0', NULL, '2024-08-11 00:41:26'),
(259, 'optimize_insert_dns_prefetch', '0', NULL, '2024-08-11 00:41:26'),
(260, 'optimize_remove_comments', '0', NULL, '2024-08-11 00:41:26'),
(261, 'optimize_remove_quotes', '0', NULL, '2024-08-11 00:41:26'),
(262, 'optimize_defer_javascript', '0', NULL, '2024-08-11 00:41:26'),
(263, 'blog_post_schema_enabled', '1', NULL, '2024-08-11 00:41:26'),
(264, 'blog_post_schema_type', 'BlogPosting', NULL, '2024-08-11 00:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(2, 'home-2', 2, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(3, 'home-3', 3, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(4, 'blog', 4, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(5, 'category-list', 5, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(6, 'category-grid', 6, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(7, 'category-metro', 7, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(8, 'contact', 8, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(9, 'about-us', 9, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(10, 'cookie-policy', 10, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:23', '2024-08-10 01:53:06'),
(11, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-05-03 15:00:27', '2024-08-10 01:53:07'),
(12, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-05-03 15:00:27', '2024-08-10 01:53:07'),
(13, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-05-03 15:00:27', '2024-08-10 01:53:07'),
(14, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-05-03 15:00:27', '2024-08-10 01:53:07'),
(15, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-05-03 15:00:27', '2024-08-10 01:53:07'),
(16, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2024-05-03 15:00:27', '2024-08-10 01:53:07'),
(17, 'politics', 1, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(18, 'sports', 2, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(19, 'education', 3, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(20, 'health', 4, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(21, 'finance', 5, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(22, 'nationa', 6, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(23, 'provience', 7, 'Botble\\Blog\\Models\\Category', '', '2024-05-03 15:00:35', '2024-08-10 01:53:07'),
(24, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(25, 'beauty', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(26, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(27, 'lifestyle', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(28, 'travel', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(29, 'business', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(30, 'health', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-05-03 15:00:36', '2024-08-10 01:53:07'),
(42, 'alish-wonderful-dream-ek-katha', 12, 'Botble\\Blog\\Models\\Post', '', '2024-05-03 15:00:36', '2024-08-10 01:53:06'),
(43, '10-reasons-to-start-your-own-profitable-website', 13, 'Botble\\Blog\\Models\\Post', '', '2024-05-03 15:00:36', '2024-08-10 01:53:06'),
(49, 'nepal-ectricity-authorty-total-profit-13-arba', 19, 'Botble\\Blog\\Models\\Post', '', '2024-05-03 15:00:36', '2024-08-10 01:53:06'),
(50, 'napalma-varashha-manaka-janasakhaya-lkha-hajara', 20, 'Botble\\Blog\\Models\\Post', '', '2024-05-03 15:00:36', '2024-08-10 01:53:06'),
(62, 'editors-picked', 1, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:44', '2024-08-10 01:53:06'),
(63, 'recommended-posts', 2, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:44', '2024-08-10 01:53:06'),
(64, 'bai-viet-hay', 3, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:44', '2024-08-10 01:53:06'),
(65, 'recommended-posts', 4, 'Botble\\Page\\Models\\Page', '', '2024-05-03 15:00:44', '2024-08-10 01:53:06'),
(66, 'editors-picked', 1, 'Botble\\PostCollection\\Models\\PostCollection', 'posts-collection', '2024-05-03 15:00:47', '2024-08-10 01:53:07'),
(67, 'recommended-posts', 2, 'Botble\\PostCollection\\Models\\PostCollection', 'posts-collection', '2024-05-03 15:00:47', '2024-08-10 01:53:07'),
(68, 'recents', 3, 'Botble\\PostCollection\\Models\\PostCollection', 'posts-collection', '2024-05-03 15:00:47', '2024-08-10 01:53:07'),
(69, 'recommended-posts', 4, 'Botble\\PostCollection\\Models\\PostCollection', 'posts-collection', '2024-05-03 15:00:47', '2024-08-10 01:53:07'),
(70, 'subedi', 12, 'Botble\\Member\\Models\\Member', 'author', '2024-08-09 23:06:12', '2024-08-10 01:53:07'),
(71, 'janasakhaya', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-09 23:06:28', '2024-08-10 01:53:07'),
(72, 'tathayaka', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-09 23:06:28', '2024-08-10 01:53:07'),
(73, 'aaja-thausa-thashabhara-aashakathakha-sathharanaetaya-bthal-rahana', 21, 'Botble\\Blog\\Models\\Post', '', '2024-08-09 23:11:34', '2024-08-10 01:53:06'),
(74, 'aaja-thausa-thashabhara-aashakathakha-sathharanaetaya-bthal-rahana-1', 21, 'Botble\\Blog\\Models\\Post', '', '2024-08-09 23:11:34', '2024-08-10 01:53:06'),
(75, 'tallent', 8, 'Botble\\Blog\\Models\\Category', '', '2024-08-09 23:19:30', '2024-08-10 01:53:07'),
(76, 'news', 9, 'Botble\\Blog\\Models\\Category', '', '2024-08-09 23:20:50', '2024-08-10 01:53:07'),
(77, 'world', 10, 'Botble\\Blog\\Models\\Category', '', '2024-08-09 23:22:13', '2024-08-10 01:53:07'),
(78, 'science-technology', 11, 'Botble\\Blog\\Models\\Category', '', '2024-08-09 23:22:45', '2024-08-10 01:53:07'),
(79, 'privacy-policy', 11, 'Botble\\Page\\Models\\Page', '', '2024-08-10 00:23:30', '2024-08-10 01:53:06'),
(80, 'napal-vathayata-parathhakaranae', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-10 00:44:32', '2024-08-10 01:53:07'),
(81, 'nafa', 11, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-10 00:44:32', '2024-08-10 01:53:07'),
(82, 'draft', 12, 'Botble\\Page\\Models\\Page', '', '2024-08-10 02:24:29', '2024-08-10 02:24:29'),
(83, 'united-techncal-college-chitwan-get-more-one-stage-of-it-development-carrier', 22, 'Botble\\Blog\\Models\\Post', '', '2024-08-10 07:38:02', '2024-08-10 07:38:41'),
(84, 'परस-वजञपत', 12, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(85, 'यनइटड-टकनकल-कलज', 13, 'Botble\\Blog\\Models\\Tag', 'tag', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(86, 'यनइटड-टकनकल-कलज', 22, 'Botble\\Blog\\Models\\Post', '', '2024-08-10 07:38:02', '2024-08-10 07:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `slugs_translations`
--

CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(2, 'Beauty', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(4, 'Lifestyle', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(5, 'Travel', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(6, 'Business', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(7, 'Health', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-05-03 15:00:36', '2024-05-03 15:00:36'),
(8, 'जनसंख्या', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(9, 'तथ्यांक', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-08-09 23:06:28', '2024-08-09 23:06:28'),
(10, 'नेपाल विद्युत् प्राधिकरण', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-08-10 00:44:32', '2024-08-10 00:44:32'),
(11, 'नाफा', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-08-10 00:44:32', '2024-08-10 00:44:32'),
(12, 'प्रेस-विज्ञप्ती', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-08-10 07:38:02', '2024-08-10 07:38:02'),
(13, 'युनाइटेड टेक्निकल कलेज', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2024-08-10 07:38:02', '2024-08-10 07:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`lang_code`, `tags_id`, `name`, `description`) VALUES
('vi', 1, 'Chung', NULL),
('vi', 2, 'Làm đẹp', NULL),
('vi', 3, 'Thời trang', NULL),
('vi', 4, 'Du lịch và ẩm thực', NULL),
('vi', 5, 'Kinh doanh', NULL),
('vi', 6, 'Sức khỏe', NULL),
('vi', 7, 'Thời sự', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'subedipradip199@gmail.com', NULL, '$2y$12$Gk/.PADJMtBB7V8vguXQq.0KhOrnI/rCIauoNAOPVzilZlvztCnN.', 'ai6omKMoiyvu2igr0enSSIyTrLmflEbN6IhYogi7z8CtlsQLsdw0o5bW9L6P', '2024-08-09 22:23:30', '2024-08-10 00:17:51', 'Pradip', 'Subedi', 'sprasapradip', 68, 1, 1, '{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.website-tracking\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"comment.index\":true,\"comment.create\":true,\"comment.edit\":true,\"comment.destroy\":true,\"comment-user.index\":true,\"comment-user.create\":true,\"comment-user.edit\":true,\"comment-user.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"member.index\":true,\"member.create\":true,\"member.edit\":true,\"member.destroy\":true,\"member.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"post-collection.index\":true,\"post-collection.create\":true,\"post-collection.edit\":true,\"post-collection.destroy\":true,\"pro-posts.index\":true,\"pro-posts.create\":true,\"pro-posts.edit\":true,\"pro-posts.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"superuser\":1,\"manage_supers\":1}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meta`
--

INSERT INTO `user_meta` (`id`, `key`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'locale', NULL, 1, '2024-08-09 22:38:03', '2024-08-09 22:38:03'),
(2, 'locale_direction', 'ltr', 1, '2024-08-09 22:38:03', '2024-08-09 22:38:03'),
(3, 'theme_mode', 'light', 1, '2024-08-09 22:38:03', '2024-08-09 22:38:03'),
(4, 'minimal_sidebar', 'no', 1, '2024-08-09 22:39:19', '2024-08-11 00:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'SocialsWidget', 'primary_sidebar', 'ultra', 0, '{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(2, 'AdsWidget', 'primary_sidebar', 'ultra', 0, '{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(3, 'CategoriesMenuWidget', 'primary_sidebar', 'ultra', 0, '{\"id\":\"CategoriesMenuWidget\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(4, 'LastestPostsWidget', 'primary_sidebar', 'ultra', 0, '{\"id\":\"LastestPostsWidget\",\"name\":\"Lastest Post\",\"number_display\":6}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(5, 'TagsWidget', 'primary_sidebar', 'ultra', 1, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":10}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(6, 'AdsWidget', 'primary_sidebar', 'ultra', 1, '{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(8, 'PopularPostsWidget', 'footer_sidebar_2', 'ultra', 1, '{\"id\":\"PopularPostsWidget\",\"name\":\"Popular Posts\",\"name_custom_class\":\"color-white\",\"number_display\":3}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(9, 'CustomMenuWidget', 'footer_sidebar_3', 'ultra', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(10, 'TagsWidget', 'footer_sidebar_3', 'ultra', 1, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(12, 'CopyrightFooterMenuWidget', 'footer_copyright_menu', 'ultra', 1, '{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(13, 'SocialsWidget', 'primary_sidebar', 'ultra-vi', 0, '{\"id\":\"SocialsWidget\",\"title\":\"Follow us\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(14, 'AdsWidget', 'primary_sidebar', 'ultra-vi', 0, '{\"id\":\"AdsWidget\",\"ads_location\":\"top-sidebar-ads\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(15, 'CategoriesMenuWidget', 'primary_sidebar', 'ultra-vi', 0, '{\"id\":\"CategoriesMenuWidget\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(16, 'LastestPostsWidget', 'primary_sidebar', 'ultra-vi', 0, '{\"id\":\"LastestPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft m\\u1edbi nh\\u1ea5t\",\"number_display\":6}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(17, 'TagsWidget', 'primary_sidebar', 'ultra-vi', 1, '{\"id\":\"TagsWidget\",\"name\":\"Th\\u1ebb\",\"number_display\":10}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(18, 'AdsWidget', 'primary_sidebar', 'ultra-vi', 1, '{\"id\":\"AdsWidget\",\"ads_location\":\"bottom-sidebar-ads\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(19, 'AboutWidget', 'footer_sidebar_1', 'ultra-vi', 1, '{\"id\":\"AboutWidget\",\"name\":\"V\\u1ec1 ch\\u00fang t\\u00f4i\",\"description\":\"Introduction about the author of this blog. You should write because you love the shape of stories and sentences and the creation of different words on a page. Writing comes from reading, and reading is the finest teacher of how to write.\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(20, 'PopularPostsWidget', 'footer_sidebar_2', 'ultra-vi', 1, '{\"id\":\"PopularPostsWidget\",\"name\":\"N\\u1ed5i b\\u1eadt\",\"name_custom_class\":\"color-white\",\"number_display\":3}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(21, 'CustomMenuWidget', 'footer_sidebar_3', 'ultra-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(22, 'TagsWidget', 'footer_sidebar_3', 'ultra-vi', 1, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"name_custom_class\":\"color-white\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(23, 'NewsletterWidget', 'footer_sidebar_4', 'ultra-vi', 1, '{\"id\":\"NewsletterWidget\",\"name\":\"Newsletter\",\"description\":\"Subscribe to Our Newsletter\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(24, 'CopyrightFooterMenuWidget', 'footer_copyright_menu', 'ultra-vi', 1, '{\"id\":\"CopyrightFooterMenuWidget\",\"name\":\"Copyright footer Menu\",\"menu_id\":\"quick-links\"}', '2024-05-03 15:00:45', '2024-05-03 15:00:45'),
(37, 'AboutWidget', 'footer_sidebar_1', 'ultra', 0, '{\"id\":\"AboutWidget\",\"name\":\"\\u0939\\u093e\\u092e\\u094d\\u0930\\u094b \\u092c\\u093e\\u0930\\u0947\\u092e\\u093e\",\"description\":\"Sprasa Media \\u092e\\u093e \\u0924\\u092a\\u093e\\u0908\\u0902\\u0932\\u093e\\u0908 \\u0938\\u094d\\u0935\\u093e\\u0917\\u0924 \\u091b! \\u0939\\u093e\\u092e\\u0940 \\u090f\\u0915 \\u092a\\u094d\\u0930\\u092e\\u0941\\u0916 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930 \\u092a\\u094d\\u0932\\u0947\\u091f\\u092b\\u0930\\u094d\\u092e \\u0939\\u094c\\u0902 \\u091c\\u0941\\u0928 \\u0938\\u092e\\u0938\\u093e\\u092e\\u092f\\u093f\\u0915 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930, \\u0935\\u093f\\u091a\\u093e\\u0930\\u0923\\u0940\\u092f \\u0935\\u093f\\u0936\\u094d\\u0932\\u0947\\u0937\\u0923, \\u0930 \\u0905\\u0928\\u094d\\u0935\\u0947\\u0937\\u0923\\u093e\\u0924\\u094d\\u092e\\u0915 \\u0930\\u093f\\u092a\\u094b\\u0930\\u094d\\u091f\\u093f\\u0919 \\u092a\\u094d\\u0930\\u0926\\u093e\\u0928 \\u0917\\u0930\\u094d\\u0928 \\u0938\\u092e\\u0930\\u094d\\u092a\\u093f\\u0924 \\u091b\\u094c\\u0902\\u0964\\r\\n\\r\\n\\u0939\\u093e\\u092e\\u094d\\u0930\\u094b \\u092e\\u093f\\u0936\\u0928:\\r\\n\\u0939\\u093e\\u092e\\u094d\\u0930\\u094b \\u0909\\u0926\\u094d\\u0926\\u0947\\u0936\\u094d\\u092f \\u0924\\u0925\\u094d\\u092f\\u092e\\u093e \\u0906\\u0927\\u093e\\u0930\\u093f\\u0924, \\u0938\\u092e\\u0930\\u094d\\u092a\\u093f\\u0924 \\u0930 \\u0928\\u093f\\u0937\\u094d\\u092a\\u0915\\u094d\\u0937 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930 \\u0938\\u0947\\u0935\\u093e \\u092a\\u094d\\u0930\\u0926\\u093e\\u0928 \\u0917\\u0930\\u094d\\u0928\\u0941 \\u0939\\u094b\\u0964 \\u0939\\u093e\\u092e\\u0940 \\u0935\\u093f\\u0936\\u094d\\u0935\\u092d\\u0930\\u0915\\u093e \\u0918\\u091f\\u0928\\u093e\\u0915\\u094d\\u0930\\u092e\\u0932\\u093e\\u0908 \\u0938\\u091f\\u0940\\u0915 \\u0930 \\u0935\\u093f\\u0936\\u094d\\u0935\\u0938\\u0928\\u0940\\u092f \\u0924\\u0930\\u093f\\u0915\\u093e\\u092e\\u093e \\u092a\\u094d\\u0930\\u0938\\u094d\\u0924\\u0941\\u0924 \\u0917\\u0930\\u094d\\u0926\\u0948, \\u092a\\u093e\\u0920\\u0915\\u0932\\u093e\\u0908 \\u0905\\u0926\\u094d\\u092f\\u093e\\u0935\\u0927\\u093f\\u0915 \\u0930\\u093e\\u0916\\u094d\\u0928 \\u092a\\u094d\\u0930\\u0924\\u093f\\u092c\\u0926\\u094d\\u0927 \\u091b\\u094c\\u0902\\u0964\",\"image\":\"\"}', '2024-08-10 01:47:43', '2024-08-10 01:47:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ads_key_unique` (`key`);

--
-- Indexes for table `ads_translations`
--
ALTER TABLE `ads_translations`
  ADD PRIMARY KEY (`lang_code`,`ads_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `bb_comments`
--
ALTER TABLE `bb_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bb_comment_likes`
--
ALTER TABLE `bb_comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  ADD KEY `bb_comment_likes_user_id_index` (`user_id`);

--
-- Indexes for table `bb_comment_recommends`
--
ALTER TABLE `bb_comment_recommends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_recommends_user_id_index` (`user_id`);

--
-- Indexes for table `bb_comment_users`
--
ALTER TABLE `bb_comment_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bb_comment_users_email_unique` (`email`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `status` (`status`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_fields_translations`
--
ALTER TABLE `contact_custom_fields_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_fields_id`);

--
-- Indexes for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_custom_field_options_translations`
--
ALTER TABLE `contact_custom_field_options_translations`
  ADD PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite_posts`
--
ALTER TABLE `favorite_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorite_posts_post_id_user_id_type_unique` (`post_id`,`user_id`,`type`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `gallery_meta_translations`
--
ALTER TABLE `gallery_meta_translations`
  ADD PRIMARY KEY (`lang_code`,`gallery_meta_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `lang_locale_index` (`lang_locale`),
  ADD KEY `lang_code_index` (`lang_code`),
  ADD KEY `lang_is_default_index` (`lang_is_default`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`),
  ADD KEY `meta_code_index` (`lang_meta_code`),
  ADD KEY `meta_origin_index` (`lang_meta_origin`),
  ADD KEY `meta_reference_type_index` (`reference_type`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `reference_id` (`reference_id`),
  ADD KEY `reference_type` (`reference_type`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_user_id_index` (`user_id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `author_type` (`author_type`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_collections`
--
ALTER TABLE `post_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_collections_posts`
--
ALTER TABLE `post_collections_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slugs_reference_id_index` (`reference_id`),
  ADD KEY `slugs_key_index` (`key`),
  ADD KEY `slugs_prefix_index` (`prefix`),
  ADD KEY `slugs_reference_index` (`reference_id`,`reference_type`);

--
-- Indexes for table `slugs_translations`
--
ALTER TABLE `slugs_translations`
  ADD PRIMARY KEY (`lang_code`,`slugs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `bb_comments`
--
ALTER TABLE `bb_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `bb_comment_likes`
--
ALTER TABLE `bb_comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_recommends`
--
ALTER TABLE `bb_comment_recommends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_users`
--
ALTER TABLE `bb_comment_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_custom_fields`
--
ALTER TABLE `contact_custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_custom_field_options`
--
ALTER TABLE `contact_custom_field_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_posts`
--
ALTER TABLE `favorite_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `post_collections`
--
ALTER TABLE `post_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_collections_posts`
--
ALTER TABLE `post_collections_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1475;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
