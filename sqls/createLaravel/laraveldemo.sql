-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2022-03-04 10:00:48
-- 伺服器版本： 5.7.33
-- PHP 版本： 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `laraveldemo`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Layouts', 'fa-bars', 'layouts', NULL, '2022-03-04 08:26:44', '2022-03-04 08:26:51');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:22:11', '2022-03-03 23:22:11'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:23:20', '2022-03-03 23:23:20'),
(3, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:23:22', '2022-03-03 23:23:22'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:24:41', '2022-03-03 23:24:41'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:24:57', '2022-03-03 23:24:57'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:25:01', '2022-03-03 23:25:01'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:29:02', '2022-03-03 23:29:02'),
(8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:29:03', '2022-03-03 23:29:03'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:29:14', '2022-03-03 23:29:14'),
(10, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:29:42', '2022-03-03 23:29:42'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:29:43', '2022-03-03 23:29:43'),
(12, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:29:46', '2022-03-03 23:29:46'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:30:27', '2022-03-03 23:30:27'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:30:28', '2022-03-03 23:30:28'),
(15, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-03 23:30:32', '2022-03-03 23:30:32'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-03-04 08:05:26', '2022-03-04 08:05:26'),
(17, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:05:35', '2022-03-04 08:05:35'),
(18, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:07:01', '2022-03-04 08:07:01'),
(19, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:07:03', '2022-03-04 08:07:03'),
(20, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:07:03', '2022-03-04 08:07:03'),
(21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:11:12', '2022-03-04 08:11:12'),
(22, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Layouts\",\"icon\":\"fa-bars\",\"uri\":\"layouts\",\"roles\":[null],\"permission\":null,\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\"}', '2022-03-04 08:26:44', '2022-03-04 08:26:44'),
(23, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-03-04 08:26:45', '2022-03-04 08:26:45'),
(24, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2022-03-04 08:26:51', '2022-03-04 08:26:51'),
(25, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:26:52', '2022-03-04 08:26:52'),
(26, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-03-04 08:26:53', '2022-03-04 08:26:53'),
(27, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:26:55', '2022-03-04 08:26:55'),
(28, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:26:56', '2022-03-04 08:26:56'),
(29, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:26:57', '2022-03-04 08:26:57'),
(30, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:26:59', '2022-03-04 08:26:59'),
(31, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:27:07', '2022-03-04 08:27:07'),
(32, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-03-04 08:28:08', '2022-03-04 08:28:08'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:28:11', '2022-03-04 08:28:11'),
(34, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:29:11', '2022-03-04 08:29:11'),
(35, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-03-04 08:29:12', '2022-03-04 08:29:12'),
(36, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-03-04 08:30:58', '2022-03-04 08:30:58'),
(37, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:31:00', '2022-03-04 08:31:00'),
(38, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-03-04 08:31:01', '2022-03-04 08:31:01'),
(39, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-03-04 08:39:15', '2022-03-04 08:39:15'),
(40, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:39:16', '2022-03-04 08:39:16'),
(41, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2022-03-04 08:39:17', '2022-03-04 08:39:17'),
(42, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:40:37', '2022-03-04 08:40:37'),
(43, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:42:32', '2022-03-04 08:42:32'),
(44, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:42:38', '2022-03-04 08:42:38'),
(45, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:43:02', '2022-03-04 08:43:02'),
(46, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:43:04', '2022-03-04 08:43:04'),
(47, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:44:02', '2022-03-04 08:44:02'),
(48, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:44:18', '2022-03-04 08:44:18'),
(49, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:44:19', '2022-03-04 08:44:19'),
(50, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:44:45', '2022-03-04 08:44:45'),
(51, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:45:10', '2022-03-04 08:45:10'),
(52, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"layout_name\":\"banner\",\"sort\":\"0\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\"}', '2022-03-04 08:45:21', '2022-03-04 08:45:21'),
(53, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:45:21', '2022-03-04 08:45:21'),
(54, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"layout_name\":\"banner\",\"sort\":\"0\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\"}', '2022-03-04 08:45:38', '2022-03-04 08:45:38'),
(55, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 08:45:38', '2022-03-04 08:45:38'),
(56, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:45:39', '2022-03-04 08:45:39'),
(57, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:48:18', '2022-03-04 08:48:18'),
(58, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:48:21', '2022-03-04 08:48:21'),
(59, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:48:22', '2022-03-04 08:48:22'),
(60, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:51:24', '2022-03-04 08:51:24'),
(61, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:51:25', '2022-03-04 08:51:25'),
(62, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:51:47', '2022-03-04 08:51:47'),
(63, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:51:48', '2022-03-04 08:51:48'),
(64, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 08:52:06', '2022-03-04 08:52:06'),
(65, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 08:52:27', '2022-03-04 08:52:27'),
(66, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:28:24', '2022-03-04 09:28:24'),
(67, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:28:27', '2022-03-04 09:28:27'),
(68, 1, 'admin/layouts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:28:37', '2022-03-04 09:28:37'),
(69, 1, 'admin/layouts/1', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"name\":\"TopBanner\",\"sort\":\"0\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveldemo.tet:8080\\/admin\\/layouts\"}', '2022-03-04 09:28:53', '2022-03-04 09:28:53'),
(70, 1, 'admin/layouts/1/edit', 'GET', '127.0.0.1', '[]', '2022-03-04 09:28:53', '2022-03-04 09:28:53'),
(71, 1, 'admin/layouts/1/edit', 'GET', '127.0.0.1', '[]', '2022-03-04 09:29:50', '2022-03-04 09:29:50'),
(72, 1, 'admin/layouts/1/edit', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:05', '2022-03-04 09:30:05'),
(73, 1, 'admin/layouts/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"root\",\"name\":\"TopBanner\",\"sort\":\"0\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveldemo.tet:8080\\/admin\\/layouts\\/create\"}', '2022-03-04 09:30:13', '2022-03-04 09:30:13'),
(74, 1, 'admin/layouts/1/edit', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:13', '2022-03-04 09:30:13'),
(75, 1, 'admin/layouts/1/edit', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:31', '2022-03-04 09:30:31'),
(76, 1, 'admin/layouts/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"name\":\"TopBanner\",\"sort\":\"0\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveldemo.tet:8080\\/admin\\/layouts\\/create\"}', '2022-03-04 09:30:38', '2022-03-04 09:30:38'),
(77, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:39', '2022-03-04 09:30:39'),
(78, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:52', '2022-03-04 09:30:52'),
(79, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:54', '2022-03-04 09:30:54'),
(80, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:30:55', '2022-03-04 09:30:55'),
(81, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:31:45', '2022-03-04 09:31:45'),
(82, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:31:59', '2022-03-04 09:31:59'),
(83, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:33:59', '2022-03-04 09:33:59'),
(84, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:34:26', '2022-03-04 09:34:26'),
(85, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:34:34', '2022-03-04 09:34:34'),
(86, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"name\":\"content\",\"sort\":\"0\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\"}', '2022-03-04 09:35:06', '2022-03-04 09:35:06'),
(87, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:35:07', '2022-03-04 09:35:07'),
(88, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2}]}]\"}', '2022-03-04 09:35:12', '2022-03-04 09:35:12'),
(89, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:35:12', '2022-03-04 09:35:12'),
(90, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:35:14', '2022-03-04 09:35:14'),
(91, 1, 'admin/layouts/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:35:18', '2022-03-04 09:35:18'),
(92, 1, 'admin/layouts/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"1\",\"name\":\"TopContent\",\"sort\":\"2\",\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laraveldemo.tet:8080\\/admin\\/layouts\"}', '2022-03-04 09:35:23', '2022-03-04 09:35:23'),
(93, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:35:23', '2022-03-04 09:35:23'),
(94, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:35:25', '2022-03-04 09:35:25'),
(95, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2}]\"}', '2022-03-04 09:35:30', '2022-03-04 09:35:30'),
(96, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:35:30', '2022-03-04 09:35:30'),
(97, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:35:31', '2022-03-04 09:35:31'),
(98, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:42:16', '2022-03-04 09:42:16'),
(99, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:42:30', '2022-03-04 09:42:30'),
(100, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:43:15', '2022-03-04 09:43:15'),
(101, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:45:39', '2022-03-04 09:45:39'),
(102, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2}]}]\"}', '2022-03-04 09:45:47', '2022-03-04 09:45:47'),
(103, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:45:48', '2022-03-04 09:45:48'),
(104, 1, 'admin/layouts', 'POST', '127.0.0.1', '{\"_token\":\"aeUOIjiRpxio4LzmtzW6a0IKpxgyNThjkqeqmuTa\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2}]\"}', '2022-03-04 09:45:53', '2022-03-04 09:45:53'),
(105, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:45:53', '2022-03-04 09:45:53'),
(106, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:45:54', '2022-03-04 09:45:54'),
(107, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:46:05', '2022-03-04 09:46:05'),
(108, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:47:18', '2022-03-04 09:47:18'),
(109, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:51:13', '2022-03-04 09:51:13'),
(110, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:51:26', '2022-03-04 09:51:26'),
(111, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:51:28', '2022-03-04 09:51:28'),
(112, 1, 'admin/layouts/create', 'GET', '127.0.0.1', '[]', '2022-03-04 09:51:49', '2022-03-04 09:51:49'),
(113, 1, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-04 09:51:51', '2022-03-04 09:51:51'),
(114, 1, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2022-03-04 09:51:52', '2022-03-04 09:51:52');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-03-03 23:13:11', '2022-03-03 23:13:11');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$dXlKaNpPKAI9CvVU8HOtz.N1Y7vxUe2DtYqgsv0kYWNFqjp5evdd2', 'Administrator', NULL, 'N1XbaVuCyS2ehZmS8DtUmGAZrqZOgqi9IxGVS2CrUI98QFs3XIGPyIkYHacs', '2022-03-03 23:13:11', '2022-03-03 23:13:11');

-- --------------------------------------------------------

--
-- 資料表結構 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `ld_layouts`
--

CREATE TABLE `ld_layouts` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `ld_layouts`
--

INSERT INTO `ld_layouts` (`id`, `parent_id`, `name`, `sort`, `created_at`, `updated_at`) VALUES
(1, 0, 'TopBanner', 1, '2022-03-04 16:45:38', '2022-03-04 17:35:12'),
(2, 0, 'TopContent', 2, '2022-03-04 17:35:06', '2022-03-04 17:45:53');

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- 資料表索引 `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- 資料表索引 `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- 資料表索引 `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- 資料表索引 `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- 資料表索引 `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- 資料表索引 `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- 資料表索引 `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `ld_layouts`
--
ALTER TABLE `ld_layouts`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `ld_layouts`
--
ALTER TABLE `ld_layouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
