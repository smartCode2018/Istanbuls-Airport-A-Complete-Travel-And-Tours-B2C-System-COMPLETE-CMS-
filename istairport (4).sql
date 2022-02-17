-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 03:26 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `istairport`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'XV0gyB4uTo6tRRobzch5tXAkupdmfdtI', 1, '2021-04-06 23:41:03', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(2, 2, '48sdySdpZinvlgdXmsg6faJlHCg3jiFp', 1, '2022-02-10 23:14:44', '2022-02-10 23:14:44', '2022-02-10 23:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `airport_services`
--

CREATE TABLE `airport_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-29 16:41:42', '2022-01-29 16:41:42'),
(2, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-01-29 17:51:37', '2022-01-29 17:51:37'),
(3, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-29 19:41:29', '2022-01-29 19:41:29'),
(4, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-01-29 19:44:11', '2022-01-29 19:44:11'),
(5, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-01-31 14:45:34', '2022-01-31 14:45:34'),
(6, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<p><span style=\\\"background-color:rgb(255,255,255);color:rgb(67,68,74);font-size:16px;\\\"><span>So In-order to enter the Turkish Republic\\u2019s Country, you don\\u2019t have to wait in Queue in visa lines and visit the Turkish consulate. You can complete your Turkish online visa procedures in your home or office with your smartphone or computer. Eligible travelers must obtain the Turkish Electronic visa by completing the application form with their information and passport information.<\\/span><\\/span><\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/how-to-get-a-turkish-e-visa.png\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 9, 'Evisa', 'info', '2022-01-31 14:51:08', '2022-01-31 14:51:08'),
(7, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"77\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1 class=\\\"text-center h2 border text-dark bg-light\\\" style=\\\"-webkit-text-stroke-width:0px;background-color:rgb(248, 249, 250) !important;border:1px solid !important;box-sizing:border-box;color:rgb(52, 58, 64) !important;font-family:CenturyGothicW01, Arial, sans-serif;font-size:2.5rem;font-style:normal;font-variant-caps:normal;font-variant-ligatures:normal;letter-spacing:normal;line-height:initial;margin:0px;orphans:2;outline:none !important;padding:0px 0px 15px;text-align:justify;text-decoration-color:initial;text-decoration-style:initial;text-decoration-thickness:initial;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;\\\">How to Get Turkey e-Visa (Turkey Electronic Visa)<\\/h1><p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/news\\/how-to-get-a-turkish-e-visa.png\\\" alt=\\\"how-to-get-a-turkish-e-visa\\\"><br><span style=\\\"background-color:rgb(255,255,255);color:rgb(67,68,74);font-size:16px;\\\"><span>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes,&nbsp;from anywhere in the World.<\\/span><\\/span><\\/p><p><span style=\\\"background-color:rgb(255,255,255);color:rgb(67,68,74);font-size:16px;\\\"><span>So In-order to enter the Turkish Republic\\u2019s Country, you don\\u2019t have to wait in Queue in visa lines and visit the Turkish consulate. You can complete your Turkish online visa procedures in your home or office with your smartphone or computer. Eligible travelers must obtain the Turkish Electronic visa by completing the application form with their information and passport information.&nbsp;<\\/span><\\/span><\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/how-to-get-a-turkish-e-visa.png\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/8.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/9.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/3.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/how-to-get-a-turkish-e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 9, 'Evisa', 'primary', '2022-01-31 14:54:44', '2022-01-31 14:54:44'),
(8, 1, 'page', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 9, 'Evisa', 'danger', '2022-01-31 14:58:43', '2022-01-31 14:58:43'),
(9, 1, 'user', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"first_name\":\"System\",\"last_name\":\"Admin\",\"username\":\"justice\",\"email\":\"admin@botble.com\",\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'primary', '2022-01-31 15:05:18', '2022-01-31 15:05:18'),
(10, 1, 'user', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"first_name\":\"System\",\"last_name\":\"Admin\",\"username\":\"justice\",\"email\":\"smartcode.kc@gmail.com\",\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'primary', '2022-01-31 15:05:37', '2022-01-31 15:05:37'),
(11, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Veda Halvorson', 'danger', '2022-01-31 15:06:33', '2022-01-31 15:06:33'),
(12, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 9, 'Eloise Frami', 'danger', '2022-01-31 15:06:33', '2022-01-31 15:06:33'),
(13, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 7, 'Gerard King', 'danger', '2022-01-31 15:06:33', '2022-01-31 15:06:33'),
(14, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'Mr. Ashton Stehr PhD', 'danger', '2022-01-31 15:06:33', '2022-01-31 15:06:33'),
(15, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 5, 'Brycen Lebsack', 'danger', '2022-01-31 15:06:34', '2022-01-31 15:06:34'),
(16, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 4, 'Prof. Litzy Langworth IV', 'danger', '2022-01-31 15:06:34', '2022-01-31 15:06:34'),
(17, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'Dr. Freda Reynolds II', 'danger', '2022-01-31 15:06:34', '2022-01-31 15:06:34'),
(18, 1, 'contact', '{\"ids\":[\"10\",\"9\",\"7\",\"6\",\"5\",\"4\",\"3\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Mrs. Elizabeth Grimes', 'danger', '2022-01-31 15:06:34', '2022-01-31 15:06:34'),
(19, 1, 'contact', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 8, 'Dr. Destini Ernser MD', 'danger', '2022-01-31 15:06:42', '2022-01-31 15:06:42'),
(20, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Celia Cartwright', 'danger', '2022-01-31 15:07:17', '2022-01-31 15:07:17'),
(21, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 9, 'Sadie Davis', 'danger', '2022-01-31 15:07:17', '2022-01-31 15:07:17'),
(22, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 8, 'Britney Buckridge', 'danger', '2022-01-31 15:07:17', '2022-01-31 15:07:17'),
(23, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 7, 'Nathan Purdy', 'danger', '2022-01-31 15:07:17', '2022-01-31 15:07:17'),
(24, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'Moshe Emmerich', 'danger', '2022-01-31 15:07:17', '2022-01-31 15:07:17'),
(25, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 5, 'Ari Waelchi', 'danger', '2022-01-31 15:07:18', '2022-01-31 15:07:18'),
(26, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 4, 'Madyson Rohan', 'danger', '2022-01-31 15:07:18', '2022-01-31 15:07:18'),
(27, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'Alene Kohler', 'danger', '2022-01-31 15:07:18', '2022-01-31 15:07:18'),
(28, 1, 'member', '{\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\"],\"class\":\"Botble\\\\Member\\\\Tables\\\\MemberTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 2, 'Cathryn Bailey', 'danger', '2022-01-31 15:07:18', '2022-01-31 15:07:18'),
(29, 1, 'member', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'John Smith', 'danger', '2022-01-31 15:07:28', '2022-01-31 15:07:28'),
(30, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 16, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'danger', '2022-01-31 15:08:34', '2022-01-31 15:08:34'),
(31, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'The Top 2020 Handbag Trends to Know', 'danger', '2022-01-31 15:08:34', '2022-01-31 15:08:34'),
(32, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 2, 'Top Search Engine Optimization Strategies!', 'danger', '2022-01-31 15:08:35', '2022-01-31 15:08:35'),
(33, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'Which Company Would You Choose?', 'danger', '2022-01-31 15:08:35', '2022-01-31 15:08:35'),
(34, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 4, 'Used Car Dealer Sales Tricks Exposed', 'danger', '2022-01-31 15:08:35', '2022-01-31 15:08:35'),
(35, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 5, '20 Ways To Sell Your Product Faster', 'danger', '2022-01-31 15:08:36', '2022-01-31 15:08:36'),
(36, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'The Secrets Of Rich And Famous Writers', 'danger', '2022-01-31 15:08:36', '2022-01-31 15:08:36'),
(37, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 7, 'Imagine Losing 20 Pounds In 14 Days!', 'danger', '2022-01-31 15:08:36', '2022-01-31 15:08:36'),
(38, 1, 'post', '{\"ids\":[\"16\",\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 8, 'Are You Still Using That Slow, Old Typewriter?', 'danger', '2022-01-31 15:08:37', '2022-01-31 15:08:37'),
(39, 1, 'post', '{\"ids\":[\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 9, 'A Skin Cream That’s Proven To Work', 'danger', '2022-01-31 15:09:22', '2022-01-31 15:09:22'),
(40, 1, 'post', '{\"ids\":[\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, '10 Reasons To Start Your Own, Profitable Website!', 'danger', '2022-01-31 15:09:22', '2022-01-31 15:09:22'),
(41, 1, 'post', '{\"ids\":[\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'danger', '2022-01-31 15:09:23', '2022-01-31 15:09:23'),
(42, 1, 'post', '{\"ids\":[\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 12, 'Apple iMac with Retina 5K display review', 'danger', '2022-01-31 15:09:23', '2022-01-31 15:09:23'),
(43, 1, 'post', '{\"ids\":[\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 13, '10,000 Web Site Visitors In One Month:Guaranteed', 'danger', '2022-01-31 15:09:24', '2022-01-31 15:09:24'),
(44, 1, 'post', '{\"ids\":[\"9\",\"10\",\"11\",\"12\",\"13\",\"14\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 14, 'Unlock The Secrets Of Selling High Ticket Items', 'danger', '2022-01-31 15:09:24', '2022-01-31 15:09:24'),
(45, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"My links\",\"deleted_nodes\":\"15 16\",\"menu_nodes\":\"[{\\\"id\\\":\\\"12\\\",\\\"title\\\":\\\"Homepage\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"13\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"title\\\":\\\"News &amp; Updates\\\",\\\"id\\\":\\\"14\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"http:\\/\\/127.0.0.1:8000\\/news-updates\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"News & Updates\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'My links', 'primary', '2022-01-31 15:25:31', '2022-01-31 15:25:31'),
(46, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":\"2 4\",\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"News &amp; Updates\\\",\\\"id\\\":\\\"3\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2022-01-31 15:27:07', '2022-01-31 15:27:07'),
(47, 1, 'menu_location', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":\"2 4\",\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"News &amp; Updates\\\",\\\"id\\\":\\\"3\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2022-01-31 15:27:07', '2022-01-31 15:27:07'),
(48, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"My links\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"12\\\",\\\"title\\\":\\\"Homepage\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"13\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"title\\\":\\\"News | Updates\\\",\\\"id\\\":\\\"14\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/news-updates\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"News | Updates\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'My links', 'primary', '2022-01-31 15:27:53', '2022-01-31 15:27:53'),
(49, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"News | Updates\\\",\\\"id\\\":\\\"3\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2022-01-31 15:28:16', '2022-01-31 15:28:16'),
(50, 1, 'menu_location', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"title\\\":\\\"News | Updates\\\",\\\"id\\\":\\\"3\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2022-01-31 15:28:16', '2022-01-31 15:28:16'),
(51, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/how-to-get-a-turkish-e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/how-to-get-a-turkish-e-visa.png\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Evisa', 'info', '2022-01-31 15:41:55', '2022-01-31 15:41:55'),
(52, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/evisa.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/evisa.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-01-31 16:01:17', '2022-01-31 16:01:17'),
(53, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-01-31 16:03:40', '2022-01-31 16:03:40'),
(54, 1, 'tag', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"News\",\"slug\":\"modern\",\"slug_id\":\"39\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 5, 'News', 'primary', '2022-01-31 16:05:10', '2022-01-31 16:05:10'),
(55, 1, 'tag', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Updates\",\"slug\":\"branding\",\"slug_id\":\"38\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 4, 'Updates', 'primary', '2022-01-31 16:05:34', '2022-01-31 16:05:34'),
(56, 1, 'tag', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Technology\",\"slug\":\"fashion\",\"slug_id\":\"37\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Tag\",\"description\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'Technology', 'primary', '2022-01-31 16:06:23', '2022-01-31 16:06:23'),
(57, 1, 'tag', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 2, 'Design', 'danger', '2022-01-31 16:06:36', '2022-01-31 16:06:36'),
(58, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Contact\",\"slug\":\"contact\",\"slug_id\":\"3\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Address: Istanbul Airport<\\/p><p>Hotline: 000-000-000-00<\\/p><p>Email: contact@istnbulairport.com<\\/p><shortcode class=\\\"bb-shortcode\\\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[\\/google-map]<\\/shortcode><p>For the fastest reply, please use the contact form below.<\\/p><shortcode class=\\\"bb-shortcode\\\">[contact-form][\\/contact-form]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'Contact', 'primary', '2022-01-31 16:11:11', '2022-01-31 16:11:11'),
(59, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Li\\u00ean h\\u1ec7\",\"slug\":\"lien-he\",\"slug_id\":\"7\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>\\u0110\\u1ecba ch\\u1ec9: Istanbul Airport<\\/p><p>\\u0110\\u01b0\\u1eddng d\\u00e2y n\\u00f3ng: 0000-000-00<\\/p><p>Email: contact@istanbulairport.com<\\/p><shortcode class=\\\"bb-shortcode\\\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[\\/google-map]<\\/shortcode><p>\\u0110\\u1ec3 \\u0111\\u01b0\\u1ee3c tr\\u1ea3 l\\u1eddi nhanh nh\\u1ea5t, vui l\\u00f2ng s\\u1eed d\\u1ee5ng bi\\u1ec3u m\\u1eabu li\\u00ean h\\u1ec7 b\\u00ean d\\u01b0\\u1edbi.<\\/p><shortcode class=\\\"bb-shortcode\\\">[contact-form][\\/contact-form]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"vi\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 7, 'Liên hệ', 'primary', '2022-01-31 16:14:59', '2022-01-31 16:14:59'),
(60, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Contact\",\"slug\":\"contact\",\"slug_id\":\"3\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Address: Istanbul Airport<\\/p><p>Hotline: 000-000-000-00<\\/p><p>Email: contact@istnbulairport.com<\\/p><shortcode class=\\\"bb-shortcode\\\">[google-map]Istanbul Airport[\\/google-map]<\\/shortcode><p>For the fastest reply, please use the contact form below.<\\/p><shortcode class=\\\"bb-shortcode\\\">[contact-form][\\/contact-form]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 3, 'Contact', 'primary', '2022-01-31 16:16:49', '2022-01-31 16:16:49'),
(61, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Airport Access\",\"slug\":\"airport-access\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Reach the City Center from Istanbul Airport\",\"is_featured\":\"0\",\"content\":\"<h1 style=\\\"text-align:center;\\\">Reach the City Center from Istanbul Airport<br>&nbsp;<\\/h1><p>Istanbul Airport is located northwest of the city in the Arnavutk\\u00f6y district. The distance from Istanbul Airport to the center of Istanbul is 54 kilometers. By car, it takes 60 minutes to get to the center of Istanbul. Istanbul\\u2019s third and newest airport is located northwest of the city. The national road D020 is a short distance from the airport, making<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/download.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/download.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 11, 'Airport Access', 'info', '2022-01-31 16:22:45', '2022-01-31 16:22:45'),
(62, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Airport Access\",\"slug\":\"airport-access\",\"slug_id\":\"79\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Reach the City Center from Istanbul Airport\",\"is_featured\":\"0\",\"content\":\"<h1 style=\\\"text-align:center;\\\">Reach the City Center from Istanbul Airport<br>&nbsp;<\\/h1><p>Istanbul Airport is located northwest of the city in the Arnavutk\\u00f6y district. The distance from Istanbul Airport to the center of Istanbul is 54 kilometers. By car, it takes 60 minutes to get to the center of Istanbul. Istanbul\\u2019s third and newest airport is located northwest of the city. The national road D020 is a short distance from the airport, making<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 11, 'Airport Access', 'primary', '2022-01-31 16:24:40', '2022-01-31 16:24:40'),
(63, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Premium Services\",\"slug\":\"premium-service\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET & ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.\",\"is_featured\":\"0\",\"content\":\"<h1>Premium Services<\\/h1><p>Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET &amp; ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/luxury-transfers-hw.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/luxury-transfers-hw.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 12, 'Premium Services', 'info', '2022-01-31 16:53:57', '2022-01-31 16:53:57'),
(64, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Premium Services\",\"slug\":\"premium-service\",\"slug_id\":\"80\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET & ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.\",\"is_featured\":\"0\",\"content\":\"<h1>Premium Services<\\/h1><h4>Meet, Greet And Assist Services<\\/h4><p>&nbsp;<\\/p><p>Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET &amp; ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/luxury-transfers-hw.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/luxury-transfers-hw.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 12, 'Premium Services', 'primary', '2022-01-31 17:00:12', '2022-01-31 17:00:12'),
(65, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Premium Services\",\"slug\":\"premium-service\",\"slug_id\":\"80\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET & ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.\",\"is_featured\":\"0\",\"content\":\"<h1>Premium <span style=\\\"color:hsl(0, 75%, 60%);\\\">Services<\\/span><\\/h1><h4>Meet, Greet And Assist Services<\\/h4><p>&nbsp;<\\/p><p>Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET &amp; ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/luxury-transfers-hw.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/luxury-transfers-hw.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 12, 'Premium Services', 'primary', '2022-01-31 17:01:41', '2022-01-31 17:01:41'),
(66, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span style=\\\"color:hsl(0, 75%, 60%);\\\">APPLICATION PROCESS<\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-01-31 17:21:33', '2022-01-31 17:21:33'),
(67, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-01-31 17:22:20', '2022-01-31 17:22:20');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(68, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Airport Access\",\"slug\":\"airport-access\",\"slug_id\":\"79\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Reach the City Center from Istanbul Airport\",\"is_featured\":\"0\",\"content\":\"<h1 style=\\\"text-align:justify;\\\">Reach the City Center from Istanbul Airport<br>&nbsp;<\\/h1><p>Istanbul Airport is located northwest of the city in the Arnavutk\\u00f6y district. The distance from Istanbul Airport to the center of Istanbul is 54 kilometers. By car, it takes 60 minutes to get to the center of Istanbul. Istanbul\\u2019s third and newest airport is located northwest of the city. The national road D020 is a short distance from the airport, making<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 11, 'Airport Access', 'primary', '2022-01-31 17:26:37', '2022-01-31 17:26:37'),
(69, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Visit Istanbul\",\"slug\":\"visit-istanbul\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Travel Tips Turkey\",\"is_featured\":\"0\",\"content\":\"<h1>Travel Tips <span style=\\\"color:hsl(0, 75%, 60%);\\\">Turkey<\\/span><\\/h1><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\">When visiting Turkey, you\'ll realize that your trip is much more than a trip, it will be an ultimate experience. Turkey has a rich culture with cities steeped in history. From Turkeys illustrious beaches to the beautiful quaint countryside, Turkey will guarantee you a majestical vacation. Turkey is home to some of the most gorgeous landscapes with high mountains, breathtaking power-sand beaches, and gorgeous cyan blue seascapes. Your Turkey trip will bring you a delightful merge of European and Middle Eastern Cultures.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/is2.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/is2.png\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 13, 'Visit Istanbul', 'info', '2022-01-31 17:32:23', '2022-01-31 17:32:23'),
(70, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Visit Istanbul\",\"slug\":\"visit-istanbul\",\"slug_id\":\"81\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Travel Tips Turkey\",\"is_featured\":\"0\",\"content\":\"<h1>Travel Tips <span style=\\\"color:hsl(0,75%,60%);\\\"><span>Turkey<\\/span><\\/span><\\/h1><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\">When visiting Turkey, you\'ll realize that your trip is much more than a trip, it will be an ultimate experience. Turkey has a rich culture with cities steeped in history. From Turkeys illustrious beaches to the beautiful quaint countryside, Turkey will guarantee you a majestical vacation. Turkey is home to some of the most gorgeous landscapes with high mountains, breathtaking power-sand beaches, and gorgeous cyan blue seascapes. Your Turkey trip will bring you a delightful merge of European and Middle Eastern Cultures.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/places-visit-istanbul-galata-bridge.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/places-visit-istanbul-galata-bridge.jpg\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 13, 'Visit Istanbul', 'primary', '2022-01-31 17:33:33', '2022-01-31 17:33:33'),
(71, 1, 'page', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Covid-19\",\"slug\":\"covid-19\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Turkey Travel Restrictions\",\"is_featured\":\"0\",\"content\":\"<h1 style=\\\"margin-left:0px;\\\">Turkey Travel <span style=\\\"color:hsl(0, 75%, 60%);\\\">Restrictions<\\/span><\\/h1><h4 style=\\\"margin-left:0px;\\\"><font style=\\\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\\\"><strong>New Procedures to Enter Istanbul<\\/strong><\\/font><\\/h4><p style=\\\"margin-left:0px;\\\">&nbsp;<\\/p><p style=\\\"margin-left:0px;\\\"><font style=\\\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\\\">For the first time since it had opened the doors to tourists last summer, and After adopting an open-door policy with incoming tourism, Turkish government has imposed new measures for travelers from all over the world.<\\/font><\\/p><p style=\\\"margin-left:0px;\\\"><font style=\\\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\\\">The signs of recovery and decreased number of Coronavirus infections led the Turkish authorities to take the new restrictions to face any new waves of the epidemic.<\\/font><\\/p><p style=\\\"margin-left:0px;\\\"><font style=\\\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\\\">According to the new restrictions: Visitors wishing to enter Turkish territory are bound to present a negative COVID-19 PCR test result before boarding starting from December 30, 2020<\\/font><\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/a-girl-walking-in-airport.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/a-girl-walking-in-airport.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 14, 'Covid-19', 'info', '2022-01-31 17:41:35', '2022-01-31 17:41:35'),
(72, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":\\\"12\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":\\\"14\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":\\\"10\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"News | Updates\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2022-01-31 17:45:38', '2022-01-31 17:45:38'),
(73, 1, 'menu_location', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":\\\"12\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":\\\"14\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":\\\"10\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"id\\\":\\\"3\\\",\\\"title\\\":\\\"News | Updates\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]},{\\\"id\\\":\\\"5\\\",\\\"title\\\":\\\"Contact\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/contact\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":7,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Contact\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2022-01-31 17:45:38', '2022-01-31 17:45:38'),
(74, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":\"5\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/airport-access\\\",\\\"id\\\":51,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":11,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/premium-service\\\",\\\"id\\\":52,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":12,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/visit-istanbul\\\",\\\"id\\\":53,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":13,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/covid-19\\\",\\\"id\\\":54,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":14,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/evisa\\\",\\\"id\\\":55,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":10,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"News | Updates\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":6,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"News | Updates\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2022-01-31 19:56:37', '2022-01-31 19:56:37'),
(75, 1, 'menu_location', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":\"5\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/airport-access\\\",\\\"id\\\":51,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":11,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/premium-service\\\",\\\"id\\\":52,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":12,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/visit-istanbul\\\",\\\"id\\\":53,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":13,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/covid-19\\\",\\\"id\\\":54,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":14,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/evisa\\\",\\\"id\\\":55,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":10,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"id\\\":3,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"News | Updates\\\",\\\"referenceId\\\":2,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":6,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"News | Updates\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2022-01-31 19:56:37', '2022-01-31 19:56:37'),
(76, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"51\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/airport-access\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":\\\"12\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/premium-service\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/visit-istanbul\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":\\\"14\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/covid-19\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":\\\"10\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/evisa\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"title\\\":\\\"News\\\",\\\"id\\\":\\\"3\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"News\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2022-01-31 19:57:38', '2022-01-31 19:57:38'),
(77, 1, 'menu_location', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"1\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"51\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":\\\"11\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/airport-access\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":\\\"12\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/premium-service\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":\\\"13\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/visit-istanbul\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":\\\"14\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/covid-19\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":\\\"10\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/evisa\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":5,\\\"children\\\":[]},{\\\"title\\\":\\\"News\\\",\\\"id\\\":\\\"3\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"\\/blog\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"position\\\":6,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"News\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2022-01-31 19:57:38', '2022-01-31 19:57:38'),
(78, 1, 'menu', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":\"3\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/airport-access\\\",\\\"id\\\":51,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":11,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/premium-service\\\",\\\"id\\\":52,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":12,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/visit-istanbul\\\",\\\"id\\\":53,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":13,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/covid-19\\\",\\\"id\\\":54,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":14,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/evisa\\\",\\\"id\\\":55,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":10,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Evisa\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Main menu', 'primary', '2022-01-31 20:02:06', '2022-01-31 20:02:06'),
(79, 1, 'menu_location', '{\"_token\":\"IfJ3ITVYaIosFOS0a8pPjT7Iv1cOKYqRXKgJTZEd\",\"name\":\"Main menu\",\"deleted_nodes\":\"3\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":1,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Home\\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/airport-access\\\",\\\"id\\\":51,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Airport Access\\\",\\\"referenceId\\\":11,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/premium-service\\\",\\\"id\\\":52,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Premium Services\\\",\\\"referenceId\\\":12,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/visit-istanbul\\\",\\\"id\\\":53,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Visit Istanbul\\\",\\\"referenceId\\\":13,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":3,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/covid-19\\\",\\\"id\\\":54,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Covid-19\\\",\\\"referenceId\\\":14,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":4,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/evisa\\\",\\\"id\\\":55,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Evisa\\\",\\\"referenceId\\\":10,\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"position\\\":5,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Evisa\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2022-01-31 20:02:06', '2022-01-31 20:02:06'),
(80, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-01 15:16:17', '2022-02-01 15:16:17'),
(81, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-01 15:16:19', '2022-02-01 15:16:19'),
(82, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-02-01 15:19:38', '2022-02-01 15:19:38'),
(83, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-01 15:43:16', '2022-02-01 15:43:16'),
(84, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-02-01 17:34:48', '2022-02-01 17:34:48'),
(85, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-01 17:47:35', '2022-02-01 17:47:35'),
(86, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-02-01 17:54:10', '2022-02-01 17:54:10'),
(87, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-01 20:01:22', '2022-02-01 20:01:22'),
(88, 1, 'category', '{\"_token\":\"rKzL4xqqjLc9uc4jbuxmExjv4ABLanQE3wBUjTuM\",\"name\":\"News\",\"slug\":\"news\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'News', 'primary', '2022-02-01 20:13:53', '2022-02-01 20:13:53'),
(89, 1, 'category', '{\"_token\":\"rKzL4xqqjLc9uc4jbuxmExjv4ABLanQE3wBUjTuM\",\"name\":\"News Updates\",\"slug\":\"news-update\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'News Updates', 'primary', '2022-02-01 20:16:58', '2022-02-01 20:16:58'),
(90, 1, 'page', '{\"_token\":\"rKzL4xqqjLc9uc4jbuxmExjv4ABLanQE3wBUjTuM\",\"name\":\"Test Page\",\"slug\":\"test-page\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"Test Page\",\"is_featured\":\"0\",\"content\":\"<p>Text Page<img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/news\\/a-girl-walking-in-airport.jpg\\\" alt=\\\"a-girl-walking-in-airport\\\"><br>&nbsp;<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/a-girl-walking-in-airport.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/a-girl-walking-in-airport.jpg\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 15, 'Test Page', 'info', '2022-02-01 20:42:19', '2022-02-01 20:42:19'),
(91, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-02-01 21:23:25', '2022-02-01 21:23:25'),
(92, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-01 22:30:36', '2022-02-01 22:30:36'),
(93, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-02 14:54:53', '2022-02-02 14:54:53'),
(94, 1, 'custom-field', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"title\":\"Category Image\",\"rules\":\"[[{\\\"name\\\":\\\"botble_blog_models_category\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"2\\\"}],[{\\\"name\\\":\\\"botble_blog_models_post_post_format\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"\\\"}]]\",\"group_items\":\"[{\\\"id\\\":0,\\\"title\\\":\\\"Category Image\\\",\\\"slug\\\":\\\"category_image\\\",\\\"instructions\\\":\\\"Upload Category Image\\\",\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":\"[null]\",\"submit\":\"apply\",\"status\":\"published\",\"order\":\"0\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Category Image', 'info', '2022-02-02 15:05:19', '2022-02-02 15:05:19'),
(95, 1, 'custom-field', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"title\":\"Category Image\",\"rules\":\"[[{\\\"name\\\":\\\"botble_blog_models_category\\\",\\\"type\\\":\\\"==\\\",\\\"value\\\":\\\"2\\\"}]]\",\"group_items\":\"[{\\\"id\\\":1,\\\"title\\\":\\\"Category Image\\\",\\\"slug\\\":\\\"category_image\\\",\\\"instructions\\\":\\\"Upload Category Image\\\",\\\"type\\\":\\\"image\\\",\\\"options\\\":{\\\"defaultValue\\\":null,\\\"defaultValueTextarea\\\":null,\\\"placeholderText\\\":null,\\\"selectChoices\\\":null,\\\"buttonLabel\\\":null,\\\"rows\\\":null},\\\"items\\\":[]}]\",\"deleted_items\":null,\"submit\":\"save\",\"status\":\"published\",\"order\":\"0\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Category Image', 'primary', '2022-02-02 15:13:38', '2022-02-02 15:13:38'),
(96, 1, 'custom-field', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 1, 'Category Image', 'danger', '2022-02-02 15:14:43', '2022-02-02 15:14:43'),
(97, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Culture\",\"slug\":\"business\",\"slug_id\":\"24\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Voluptatum laudantium maiores magnam qui eius aut ducimus. Reprehenderit tempore aspernatur nihil sed quaerat inventore eligendi. Delectus nesciunt totam quos modi ipsam.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/culture2.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 4, 'Culture', 'primary', '2022-02-02 15:57:27', '2022-02-02 15:57:27'),
(98, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Events\",\"slug\":\"events\",\"slug_id\":\"22\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Omnis quia aspernatur culpa ducimus. Quas fugit maxime nam quas porro. Et nemo voluptate placeat illum quos quia. Eum ut dignissimos sint et aut quo. Consequuntur rerum dolorem quia.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/event3.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 2, 'Events', 'primary', '2022-02-02 15:58:00', '2022-02-02 15:58:00'),
(99, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Food\",\"slug\":\"news-update\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/food1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'Food', 'primary', '2022-02-02 15:59:03', '2022-02-02 15:59:03'),
(100, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Lifestyle\",\"slug\":\"lifestyle\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Short Des\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/lifestyle3.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 15, 'Lifestyle', 'info', '2022-02-02 16:00:05', '2022-02-02 16:00:05'),
(101, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Lifestyle\",\"slug\":\"lifestyle\",\"slug_id\":\"84\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Short Des\",\"is_default\":\"0\",\"icon\":null,\"order\":\"4\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/lifestyle3.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 15, 'Lifestyle', 'primary', '2022-02-02 16:00:35', '2022-02-02 16:00:35'),
(102, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Culture\",\"slug\":\"business\",\"slug_id\":\"24\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Voluptatum laudantium maiores magnam qui eius aut ducimus. Reprehenderit tempore aspernatur nihil sed quaerat inventore eligendi. Delectus nesciunt totam quos modi ipsam.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"1\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/culture2.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 4, 'Culture', 'primary', '2022-02-02 16:00:59', '2022-02-02 16:00:59'),
(103, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Events\",\"slug\":\"events\",\"slug_id\":\"22\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Omnis quia aspernatur culpa ducimus. Quas fugit maxime nam quas porro. Et nemo voluptate placeat illum quos quia. Eum ut dignissimos sint et aut quo. Consequuntur rerum dolorem quia.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"2\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/event3.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 2, 'Events', 'primary', '2022-02-02 16:01:21', '2022-02-02 16:01:21'),
(104, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Food\",\"slug\":\"news-update\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"3\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/food1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 6, 'Food', 'primary', '2022-02-02 16:01:56', '2022-02-02 16:01:56'),
(105, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Lifestyle\",\"slug\":\"lifestyle\",\"slug_id\":\"84\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Short Des\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/lifestyle3.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 15, 'Lifestyle', 'primary', '2022-02-02 16:02:28', '2022-02-02 16:02:28'),
(106, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Lifestyle\",\"slug\":\"lifestyle\",\"slug_id\":\"84\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Short Des\",\"is_default\":\"0\",\"icon\":null,\"order\":\"4\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/lifestyle3.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 15, 'Lifestyle', 'primary', '2022-02-02 16:03:00', '2022-02-02 16:03:00'),
(107, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Tours\",\"slug\":\"tours\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Short Des\",\"is_default\":\"0\",\"icon\":null,\"order\":\"5\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/tours1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 16, 'Tours', 'info', '2022-02-02 16:04:01', '2022-02-02 16:04:01'),
(108, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Parks\",\"slug\":\"parks\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Parks\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/park1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 17, 'Parks', 'info', '2022-02-02 16:05:31', '2022-02-02 16:05:31'),
(109, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Locals\",\"slug\":\"locals\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Locals\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/locals2.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 18, 'Locals', 'info', '2022-02-02 16:05:58', '2022-02-02 16:05:58'),
(110, 1, 'category', '{\"_token\":\"b5u43zZy64wslzgHtb6dZdY8w4vSHjMRalaEJIM4\",\"name\":\"Covid Checks\",\"slug\":\"covid-checks\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Covid Checks\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"category_img\":\"categories\\/12.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 OPR/82.0.4227.58', '127.0.0.1', 1, 19, 'Covid Checks', 'info', '2022-02-02 16:06:54', '2022-02-02 16:06:54'),
(111, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-02 20:39:03', '2022-02-02 20:39:03'),
(112, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 17, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'danger', '2022-02-02 22:02:05', '2022-02-02 22:02:05'),
(113, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 18, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'danger', '2022-02-02 22:02:06', '2022-02-02 22:02:06'),
(114, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 19, 'Bạn sẽ chọn công ty nào?', 'danger', '2022-02-02 22:02:06', '2022-02-02 22:02:06'),
(115, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 20, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'danger', '2022-02-02 22:02:06', '2022-02-02 22:02:06'),
(116, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 21, '20 Cách Bán Sản phẩm Nhanh hơn', 'danger', '2022-02-02 22:02:07', '2022-02-02 22:02:07'),
(117, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 22, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'danger', '2022-02-02 22:02:08', '2022-02-02 22:02:08');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(118, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 23, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'danger', '2022-02-02 22:02:08', '2022-02-02 22:02:08'),
(119, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 24, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'danger', '2022-02-02 22:02:08', '2022-02-02 22:02:08'),
(120, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 25, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'danger', '2022-02-02 22:02:09', '2022-02-02 22:02:09'),
(121, 1, 'post', '{\"ids\":[\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 26, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'danger', '2022-02-02 22:02:09', '2022-02-02 22:02:09'),
(122, 1, 'post', '{\"ids\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 27, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'danger', '2022-02-02 22:02:17', '2022-02-02 22:02:17'),
(123, 1, 'post', '{\"ids\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 28, 'Đánh giá Apple iMac với màn hình Retina 5K', 'danger', '2022-02-02 22:02:17', '2022-02-02 22:02:17'),
(124, 1, 'post', '{\"ids\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 29, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'danger', '2022-02-02 22:02:18', '2022-02-02 22:02:18'),
(125, 1, 'post', '{\"ids\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 30, 'Mở khóa Bí mật Bán được vé Cao', 'danger', '2022-02-02 22:02:18', '2022-02-02 22:02:18'),
(126, 1, 'post', '{\"ids\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 31, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'danger', '2022-02-02 22:02:18', '2022-02-02 22:02:18'),
(127, 1, 'post', '{\"ids\":[\"27\",\"28\",\"29\",\"30\",\"31\",\"32\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 32, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'danger', '2022-02-02 22:02:19', '2022-02-02 22:02:19'),
(128, 1, 'post', '{\"_token\":\"79ROEh0LKFRtMsiQbNv63I9KCqM8JGH8ZzH8gtu1\",\"name\":\"Istanbuls Mall\",\"slug\":\"4-expert-tips-on-how-to-choose-the-right-mens-wallet\",\"slug_id\":\"59\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"description\":\"Natus quam cum officiis voluptatem consequatur et quo. Omnis voluptate minus et mollitia architecto dolore quidem. Harum delectus voluptate dolorum reiciendis qui.\",\"is_featured\":\"0\",\"content\":\"<p>Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice as he came, \'Oh! the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for any of them. \'I\'m sure those are not the smallest idea how confusing it is to find herself talking familiarly with them, as if his heart would break. She pitied him deeply. \'What is it?\' he said, turning to Alice, they all cheered. Alice thought over all the way down one side and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a Mock Turtle persisted. \'How COULD he turn them out again. The Mock Turtle yet?\' \'No,\' said Alice. \'Of course they were\', said the Dodo, pointing to the conclusion that it led into the court, she said to the Mock Turtle is.\' \'It\'s the thing Mock Turtle a little door about fifteen inches high: she tried to speak, and no room to grow larger again, and we won\'t talk about her any more questions about it, and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought.<br>&nbsp;<\\/p><p>Majesty!\' the soldiers shouted in reply. \'Please come back and see after some executions I have none, Why, I do hope it\'ll make me larger, it must be kind to them,\' thought Alice, \'as all the players, except the King, with an anxious look at a king,\' said Alice. \'I don\'t think they play at all know whether it was sneezing on the English coast you find a thing,\' said the Dodo. Then they all looked so grave that she had wept when she turned away. \'Come back!\' the Caterpillar took the hookah out.<\\/p><p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/categories\\/park1.jpg\\\" alt=\\\"park1\\\"><br>&nbsp;<\\/p><p>I shall be late!\' (when she thought it over a little bird as soon as it can talk: at any rate he might answer questions.--How am I then? Tell me that first, and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a cart-horse, and expecting every moment to be a queer thing, to be a comfort, one way--never to be no use in the chimney close above her: then, saying to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all made a memorandum of the evening, beautiful Soup! Soup of the Lizard\'s slate-pencil, and the moment he was gone, and, by the end of his Normans--\\\" How are you getting on now, my dear?\' it continued, turning to the Knave. The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'Well, I shan\'t go, at any rate: go and take it away!\' There was a different person then.\' \'Explain all that,\' he said to Alice.<\\/p><p>Alice\'s shoulder, and it said nothing. \'When we were little,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon answered, very nearly in the other. \'I beg pardon, your Majesty,\' the Hatter was out of his head. But at any rate, the Dormouse indignantly. However, he consented to go down the chimney!\' \'Oh! So Bill\'s got to come before that!\' \'Call the next witness!\' said the Gryphon. \'Do you take me for a minute, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had been found and handed back to my jaw, Has lasted the rest of the right-hand bit to try the whole thing, and she heard something like this:-- \'Fury said to herself, as she could for sneezing. There was a sound of many footsteps, and Alice could speak again. In a little scream, half of fright and half believed herself in a soothing tone: \'don\'t be angry about it. And yet I wish you would seem to have no sort of present!\' thought Alice. \'I\'ve so often read in.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"categories\\/food1.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"categories\":[\"16\"],\"image\":\"categories\\/food1.jpg\",\"tag\":\"[{\\\"value\\\":\\\"General\\\"},{\\\"value\\\":\\\"Technology\\\"},{\\\"value\\\":\\\"Updates\\\"},{\\\"value\\\":\\\"News\\\"}]\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 15, 'Istanbuls Mall', 'primary', '2022-02-02 22:11:56', '2022-02-02 22:11:56'),
(129, 1, 'category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 5, 'Portfolio', 'danger', '2022-02-02 22:22:30', '2022-02-02 22:22:30'),
(130, 1, 'category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 3, 'Projects', 'danger', '2022-02-02 22:22:47', '2022-02-02 22:22:47'),
(131, 1, 'category', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 7, 'Resources', 'danger', '2022-02-02 22:22:58', '2022-02-02 22:22:58'),
(132, 1, 'category', '{\"_token\":\"79ROEh0LKFRtMsiQbNv63I9KCqM8JGH8ZzH8gtu1\",\"name\":\"Culture\",\"slug\":\"culture\",\"slug_id\":\"24\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Voluptatum laudantium maiores magnam qui eius aut ducimus. Reprehenderit tempore aspernatur nihil sed quaerat inventore eligendi. Delectus nesciunt totam quos modi ipsam.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"1\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/culture2.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 4, 'Culture', 'primary', '2022-02-02 22:29:13', '2022-02-02 22:29:13'),
(133, 1, 'category', '{\"_token\":\"79ROEh0LKFRtMsiQbNv63I9KCqM8JGH8ZzH8gtu1\",\"name\":\"Food\",\"slug\":\"food\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"3\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/food1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 6, 'Food', 'primary', '2022-02-02 22:30:11', '2022-02-02 22:30:11'),
(134, 1, 'category', '{\"_token\":\"79ROEh0LKFRtMsiQbNv63I9KCqM8JGH8ZzH8gtu1\",\"name\":\"Food\",\"slug\":\"food\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/food1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 6, 'Food', 'primary', '2022-02-02 22:48:00', '2022-02-02 22:48:00'),
(135, 1, 'category', '{\"_token\":\"79ROEh0LKFRtMsiQbNv63I9KCqM8JGH8ZzH8gtu1\",\"name\":\"Food\",\"slug\":\"food\",\"slug_id\":\"26\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":\"Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.\",\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"1\",\"status\":\"published\",\"category_img\":\"categories\\/food1.jpg\",\"language\":\"en_US\",\"ref_from\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 6, 'Food', 'primary', '2022-02-02 22:49:48', '2022-02-02 22:49:48'),
(136, 1, 'post', '[]', 'deleted', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 15, 'Istanbuls Mall', 'danger', '2022-02-02 22:55:26', '2022-02-02 22:55:26'),
(137, 1, 'post', '{\"_token\":\"79ROEh0LKFRtMsiQbNv63I9KCqM8JGH8ZzH8gtu1\",\"name\":\"Istanbuls Mall\",\"slug\":\"istanbuls-mall\",\"slug_id\":\"0\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"description\":\"Then they all looked so grave that she had wept when she turned away. \'Come back!\' the Caterpillar took the hookah out.\",\"is_featured\":\"0\",\"content\":\"<p>Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice as he came, \'Oh! the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for any of them. \'I\'m sure those are not the smallest idea how confusing it is to find herself talking familiarly with them, as if his heart would break. She pitied him deeply. \'What is it?\' he said, turning to Alice, they all cheered. Alice thought over all the way down one side and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a Mock Turtle persisted. \'How COULD he turn them out again. The Mock Turtle yet?\' \'No,\' said Alice. \'Of course they were\', said the Dodo, pointing to the conclusion that it led into the court, she said to the Mock Turtle is.\' \'It\'s the thing Mock Turtle a little door about fifteen inches high: she tried to speak, and no room to grow larger again, and we won\'t talk about her any more questions about it, and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought.<br>&nbsp;<\\/p><p>Majesty!\' the soldiers shouted in reply. \'Please come back and see after some executions I have none, Why, I do hope it\'ll make me larger, it must be kind to them,\' thought Alice, \'as all the players, except the King, with an anxious look at a king,\' said Alice. \'I don\'t think they play at all know whether it was sneezing on the English coast you find a thing,\' said the Dodo. Then they all looked so grave that she had wept when she turned away. \'Come back!\' the Caterpillar took the hookah out.<\\/p><p><img src=\\\"http:\\/\\/127.0.0.1:8000\\/storage\\/categories\\/park1.jpg\\\" alt=\\\"park1\\\"><br>&nbsp;<\\/p><p>I shall be late!\' (when she thought it over a little bird as soon as it can talk: at any rate he might answer questions.--How am I then? Tell me that first, and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a cart-horse, and expecting every moment to be a queer thing, to be a comfort, one way--never to be no use in the chimney close above her: then, saying to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all made a memorandum of the evening, beautiful Soup! Soup of the Lizard\'s slate-pencil, and the moment he was gone, and, by the end of his Normans--\\\" How are you getting on now, my dear?\' it continued, turning to the Knave. The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'Well, I shan\'t go, at any rate: go and take it away!\' There was a different person then.\' \'Explain all that,\' he said to Alice.<\\/p><p>Alice\'s shoulder, and it said nothing. \'When we were little,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon answered, very nearly in the other. \'I beg pardon, your Majesty,\' the Hatter was out of his head. But at any rate, the Dormouse indignantly. However, he consented to go down the chimney!\' \'Oh! So Bill\'s got to come before that!\' \'Call the next witness!\' said the Gryphon. \'Do you take me for a minute, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had been found and handed back to my jaw, Has lasted the rest of the right-hand bit to try the whole thing, and she heard something like this:-- \'Fury said to herself, as she could for sneezing. There was a sound of many footsteps, and Alice could speak again. In a little scream, half of fright and half believed herself in a soothing tone: \'don\'t be angry about it. And yet I wish you would seem to have no sort of present!\' thought Alice. \'I\'ve so often read in.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"categories\\/food1.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"categories\":[\"16\"],\"image\":\"categories\\/food1.jpg\",\"tag\":null}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 33, 'Istanbuls Mall', 'info', '2022-02-02 22:56:55', '2022-02-02 22:56:55'),
(138, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-03 15:04:53', '2022-02-03 15:04:53'),
(139, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-04 15:42:03', '2022-02-04 15:42:03'),
(140, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-07 14:46:16', '2022-02-07 14:46:16'),
(141, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-08 14:42:22', '2022-02-08 14:42:22'),
(142, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-02-08 17:14:34', '2022-02-08 17:14:34'),
(143, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-10 17:51:20', '2022-02-10 17:51:20'),
(144, 1, 'user', '{\"_token\":\"Hpe9BHv85fXAcyBTkeKuJSVrvNvdw8kToDVphNij\",\"first_name\":\"Justice\",\"last_name\":\"Kelechi\",\"username\":\"smart\",\"email\":\"kcjust.info2@gmail.com\",\"password\":\"12345678\",\"password_confirmation\":\"12345678\",\"submit\":\"save\",\"role_id\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 2, 'Justice Kelechi', 'info', '2022-02-10 23:14:45', '2022-02-10 23:14:45'),
(145, 1, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 1, 'System Admin', 'info', '2022-02-10 23:15:11', '2022-02-10 23:15:11'),
(146, 2, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 2, 'Justice Kelechi', 'info', '2022-02-10 23:15:24', '2022-02-10 23:15:24'),
(147, 2, 'of the system', '[]', 'logged out', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 2, 2, 'Justice Kelechi', 'info', '2022-02-10 23:16:30', '2022-02-10 23:16:30'),
(148, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-10 23:16:44', '2022-02-10 23:16:44'),
(149, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-11 15:11:29', '2022-02-11 15:11:29'),
(150, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-11 15:11:31', '2022-02-11 15:11:31'),
(151, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-14 14:41:13', '2022-02-14 14:41:13'),
(152, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-15 15:53:01', '2022-02-15 15:53:01'),
(153, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:33', '2022-02-16 14:37:33'),
(154, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:35', '2022-02-16 14:37:35'),
(155, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:39', '2022-02-16 14:37:39'),
(156, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:41', '2022-02-16 14:37:41'),
(157, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:43', '2022-02-16 14:37:43'),
(158, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:44', '2022-02-16 14:37:44'),
(159, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:46', '2022-02-16 14:37:46'),
(160, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:46', '2022-02-16 14:37:46'),
(161, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-02-16 14:37:47', '2022-02-16 14:37:47'),
(162, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><form action=\\\"{{route(\'tourist-pass-booking-store\')}}\\\" method=\\\"POST\\\" class=\\\"cruise-booking-form\\\">\\r\\n                        @csrf\\r\\n                        @method(\'PUT\');\\r\\n                        <div>\\r\\n                            {{-- <h2 style=\\\"margin-bottom: 30px; font-weight:bold; color:#e01514\\\">APPLY FOR E-VISA<\\/h2> --}}\\r\\n                            <div style=\\\"border-style: solid; border-width:1px; padding:20px 0px 20px 0px;\\\" class=\\\"row\\\">\\r\\n                                <div class=\\\"col-md-6\\\">\\r\\n                                    <img style=\\\"float: left; margin-right:10px;\\\" src=\\\"{{asset(\'images\\/logo\\/logo.png\')}}\\\" alt=\\\"\\\" width=\\\"auto\\\" height=\\\"63\\\">\\r\\n                                <\\/div>\\r\\n                                <div class=\\\"col-md-6\\\"><\\/div>\\r\\n                            <\\/div>\\r\\n                            <hr>   \\r\\n                        <\\/div>\\r\\n                        <div>\\r\\n                            <div class=\\\"stepwizard\\\">\\r\\n                                <div class=\\\"stepwizard-row setup-panel\\\">\\r\\n                                    <div class=\\\"stepwizard-step col-xs-6\\\"> \\r\\n                                        <a href=\\\"#step-1\\\" type=\\\"button\\\" class=\\\"btn btn-success btn-circle\\\">1<\\/a>\\r\\n                                        <p>Personal Information<\\/p>\\r\\n                                    <\\/div>\\r\\n                                    <div class=\\\"stepwizard-step col-xs-6\\\"> \\r\\n                                        <a href=\\\"#step-2\\\" type=\\\"button\\\" class=\\\"btn btn-default btn-circle\\\" disabled=\\\"disabled\\\">2<\\/a>\\r\\n                                        <p><small>Payment<\\/small><\\/p>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                            <\\/div>\\r\\n                        <\\/div>\\r\\n\\r\\n                        <div class=\\\"panel setup-content\\\" id=\\\"step-1\\\">\\r\\n                            \\r\\n                            <div style=\\\"background: #ff000005; margin-bottom:30px;\\\" class=\\\"panel-heading\\\">\\r\\n                                <h1 style=\\\"font-size: 20px;\\\" class=\\\"panel-title\\\">Personal Information<\\/h1>\\r\\n                            <\\/div>\\r\\n                            <div>\\r\\n                               \\r\\n                                   <div>\\r\\n                                       <div class=\\\"row\\\">\\r\\n                                           <div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n                                               <label class=\\\"control-label text-custom-size\\\">Given\\/First Name<\\/label>\\r\\n                                               <input required=\\\"\\\" type=\\\"text\\\" name=\\\"firstname\\\" class=\\\"input-text full-width f-input-custom-style\\\" value=\\\"\\\" placeholder=\\\"\\\">\\r\\n                                           <\\/div>\\r\\n                                           <div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n                                               <label class=\\\"control-label text-custom-size\\\">Given\\/last name<\\/label>\\r\\n                                               <input required=\\\"\\\" type=\\\"text\\\" name=\\\"lastname\\\" class=\\\"input-text full-width f-input-custom-style\\\" value=\\\"\\\" placeholder=\\\"\\\">\\r\\n                                           <\\/div>\\r\\n                                       <\\/div>\\r\\n                                       <div class=\\\"row\\\">\\r\\n                                           <div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n                                            <label class=\\\"text-custom-size\\\">Contry | Region<\\/label>\\r\\n                                            <div class=\\\"selector\\\">\\r\\n                                                <select name=\\\"country\\\" class=\\\"full-width f-input-custom-style\\\">\\r\\n                                                    <option value=\\\"usa\\\">USA<\\/option>\\r\\n                                                    {{-- @foreach ($countries as $country)\\r\\n                                                        <option value=\\\"{{$country->id}}\\\">{{$country-&gt;name}}<\\/option>\\r\\n                                                    @endforeach --}}\\r\\n                                                <\\/select>\\r\\n                                            <\\/div>\\r\\n                                           <\\/div>\\r\\n                                           <div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n                                            <label class=\\\"text-custom-size \\\">Tourist Pass type<\\/label>\\r\\n                                            <div class=\\\"selector\\\">\\r\\n                                                <select required=\\\"\\\" name=\\\"pass_type\\\" class=\\\"full-width f-input-custom-style\\\">\\r\\n                                                    <option value=\\\"daily\\\">Daily<\\/option>\\r\\n                                                    {{-- @foreach ($countries as $country)\\r\\n                                                        <option value=\\\"{{$country->id}}\\\">{{$country-&gt;name}}<\\/option>\\r\\n                                                    @endforeach --}}\\r\\n                                                <\\/select>\\r\\n                                            <\\/div>\\r\\n                                           <\\/div>\\r\\n                                           \\r\\n                                       <\\/div>\\r\\n                    \\r\\n                                       <div class=\\\"row\\\">\\r\\n                                           <div class=\\\"form-group col-sm-1 col-md-1\\\">\\r\\n                                               <label class=\\\"text-custom-size\\\">code<\\/label>\\r\\n                                               <div class=\\\"selector\\\">\\r\\n                                                   <select name=\\\"code\\\" class=\\\"full-width f-input-custom-style\\\">\\r\\n                                                       <option value=\\\"+44\\\">+44<\\/option>\\r\\n                                                       <option value=\\\"+1\\\">+1<\\/option>\\r\\n                                                   <\\/select>\\r\\n                                               <\\/div>\\r\\n                                           <\\/div>\\r\\n                                           <div class=\\\"form-group col-sm-5 col-md-2\\\">\\r\\n                                               <label class=\\\"text-custom-size control-label\\\">Phone<\\/label>\\r\\n                                               <input required=\\\"\\\" name=\\\"phone\\\" type=\\\"text\\\" class=\\\"input-text full-width f-input-custom-style\\\" value=\\\"\\\" placeholder=\\\"\\\">\\r\\n                                           <\\/div>\\r\\n                                           <div class=\\\"form-group col-sm-5 col-md-3\\\">\\r\\n                                                <label class=\\\"text-custom-size control-label\\\">Request Date<\\/label>\\r\\n                                                <div class=\\\"datepicker-wrap\\\">\\r\\n                                                    <input required=\\\"\\\" name=\\\"request_date\\\" type=\\\"text\\\" class=\\\"input-text full-width f-input-custom-style\\\" placeholder=\\\"mm\\/dd\\/yy\\\">\\r\\n                                                <\\/div>\\r\\n                                           <\\/div>\\r\\n                                           <div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n                                               <label class=\\\"text-custom-size control-label\\\">Email Address<\\/label>\\r\\n                                               <input required=\\\"\\\" name=\\\"email\\\" type=\\\"text\\\" class=\\\"input-text full-width f-input-custom-style\\\" value=\\\"\\\" placeholder=\\\"\\\">\\r\\n                                           <\\/div>\\r\\n                                       <\\/div>\\r\\n                                       \\r\\n                                       <div class=\\\"form-group\\\">\\r\\n                                           <div class=\\\"checkbox\\\">\\r\\n                                               <label class=\\\"text-custom-size\\\">\\r\\n                                                   <input name=\\\"policy\\\" type=\\\"checkbox\\\" checked=\\\"\\\"> By submitting this form, you agree to our terms and conditions.\\r\\n                                               <\\/label>\\r\\n                                           <\\/div>\\r\\n                                       <\\/div>\\r\\n                                       <button class=\\\"banner-action-bt nextBtn pull-right\\\" type=\\\"button\\\">Next<\\/button>\\r\\n                                   <\\/div>\\r\\n                               \\r\\n                            <\\/div>\\r\\n                            \\r\\n                        <\\/div>\\r\\n                        \\r\\n                        <div class=\\\"panel setup-content\\\" id=\\\"step-2\\\">\\r\\n                            <div style=\\\"background: #ff000005; margin-bottom:30px;\\\" class=\\\"panel-heading\\\">\\r\\n                                <h3 class=\\\"panel-title\\\"><strong>Fee Details<\\/strong><\\/h3>\\r\\n                           <\\/div>\\r\\n                            <div class=\\\"card-information\\\">\\r\\n                                <h2 style=\\\"margin-bottom:20px;\\\">Fee Details<\\/h2>\\r\\n                                <div class=\\\"row\\\">\\r\\n                                    <div style=\\\"font-size: 14px;\\\" class=\\\"col-md-6\\\">\\r\\n                                        Fee\\r\\n                                    <\\/div>\\r\\n                                    <div style=\\\"text-align: end\\\" class=\\\"col-md-6\\\">\\r\\n                                        <h4>$ 80<\\/h4>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                                <div class=\\\"row\\\">\\r\\n                                    <div style=\\\"font-size: 14px;\\\" class=\\\"col-md-6\\\">\\r\\n                                        Tax\\r\\n                                    <\\/div>\\r\\n                                    <div style=\\\"text-align: end\\\" class=\\\"col-md-6\\\">\\r\\n                                        <h4>$ 6.00<\\/h4>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                                <hr style=\\\"margin:3px 0px 0px 0px; padding:0px;\\\">\\r\\n                                <div class=\\\"row\\\">\\r\\n                                    <div style=\\\"font-size: 14px;\\\" class=\\\"col-md-6\\\">\\r\\n                                        Total Price\\r\\n                                    <\\/div>\\r\\n                                    <div style=\\\"text-align: end; \\\" class=\\\"col-md-6\\\">\\r\\n                                        <h2 style=\\\"color:#e01514\\\"><strong>$ 86.00<\\/strong><\\/h2>\\r\\n                                    <\\/div>\\r\\n                                <\\/div>\\r\\n                                <button name=\\\"submit\\\" class=\\\"banner-action-bt nextBtn pull-right\\\" type=\\\"submit\\\">Submit<\\/button>\\r\\n                            <\\/div>\\r\\n                            \\r\\n                        <\\/div>\\r\\n                    <\\/form><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:35:59', '2022-02-16 15:35:59'),
(163, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp;&nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><button class=\\\"btn btn-lg btn-danger\\\">Click Me<\\/button><button><\\/button><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:37:58', '2022-02-16 15:37:58'),
(164, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><button class=\\\"btn btn-lg btn-danger\\\">Click Me<\\/button><button><\\/button><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:41:15', '2022-02-16 15:41:15'),
(165, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp;&nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><form>\\r\\n<div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n                                               <label class=\\\"control-label text-custom-size\\\">Given\\/First Name<\\/label>\\r\\n                                               <input required=\\\"\\\" type=\\\"text\\\" name=\\\"firstname\\\" class=\\\"input-text full-width f-input-custom-style\\\" value=\\\"\\\" placeholder=\\\"\\\">\\r\\n                                           <\\/div>\\r\\n<\\/form><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:42:05', '2022-02-16 15:42:05'),
(166, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp; &nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><form>\\r\\n<div class=\\\"form-group col-sm-6 col-md-6\\\">\\r\\n<label class=\\\"control-label text-custom-size\\\">Given\\/First Name<\\/label>\\r\\n<input required=\\\"\\\" type=\\\"text\\\" name=\\\"firstname\\\" class=\\\"input-text full-width f-input-custom-style\\\" value=\\\"\\\" placeholder=\\\"\\\">\\r\\n<\\/div>\\r\\n<\\/form><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:42:57', '2022-02-16 15:42:57'),
(167, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp; &nbsp;&nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:44:37', '2022-02-16 15:44:37'),
(168, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp; &nbsp; &nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><div class=\\\"raw-html-embed\\\"><\\/div>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:46:19', '2022-02-16 15:46:19');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(169, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><form><div class=\\\"form-group\\\"><label for=\\\"exampleInputEmail1\\\">Email address<\\/label> <input class=\\\"form-control\\\" placeholder=\\\"Enter email\\\" aria-describedby=\\\"emailHelp\\\" id=\\\"exampleInputEmail1\\\" type=\\\"email\\\"> <small class=\\\"form-text text-muted\\\" id=\\\"emailHelp\\\">We\'ll never share your email with anyone else.<\\/small><\\/div><div class=\\\"form-group\\\"><label for=\\\"exampleInputPassword1\\\">Password<\\/label> <input class=\\\"form-control\\\" placeholder=\\\"Password\\\" id=\\\"exampleInputPassword1\\\" type=\\\"password\\\"><\\/div><div class=\\\"form-check\\\"><input class=\\\"form-check-input\\\" id=\\\"exampleCheck1\\\" type=\\\"checkbox\\\"> <label class=\\\"form-check-label\\\" for=\\\"exampleCheck1\\\">Check me out<\\/label><\\/div><p><button class=\\\"btn btn-primary\\\" type=\\\"submit\\\">Submit<\\/button><\\/p><\\/form>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:47:33', '2022-02-16 15:47:33'),
(170, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p><form><div class=\\\"form-group\\\"><label for=\\\"exampleInputEmail1\\\">Email address<\\/label> <input class=\\\"form-control\\\" type=\\\"email\\\" id=\\\"exampleInputEmail1\\\" aria-describedby=\\\"emailHelp\\\" placeholder=\\\"Enter email\\\"> <small class=\\\"form-text text-muted\\\" id=\\\"emailHelp\\\">We\'ll never share your email with anyone else.<\\/small><\\/div><div class=\\\"form-group\\\"><label for=\\\"exampleInputPassword1\\\">Password<\\/label> <input class=\\\"form-control\\\" type=\\\"password\\\" id=\\\"exampleInputPassword1\\\" placeholder=\\\"Password\\\"><\\/div><div class=\\\"form-check\\\"><input class=\\\"form-check-input\\\" type=\\\"checkbox\\\" id=\\\"exampleCheck1\\\"> <label class=\\\"form-check-label\\\" for=\\\"exampleCheck1\\\">Check me out<\\/label><\\/div><p><button class=\\\"btn btn-primary\\\" type=\\\"submit\\\">Submit<\\/button><\\/p><\\/form>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:48:20', '2022-02-16 15:48:20'),
(171, 1, 'page', '{\"_token\":\"3NlMkGtk9cMYgXbW2pB52grCozfs7PrJSOaUjPj0\",\"name\":\"Evisa\",\"slug\":\"evisa\",\"slug_id\":\"78\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":\"The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.\",\"is_featured\":\"0\",\"content\":\"<h1>E-VISA <span>APPLICATION <\\/span><span style=\\\"color:hsl(0,75%,60%);\\\"><span>PROCESS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<\\/span><\\/span><\\/h1><h4>All you need to know about turkey e-visa<\\/h4><p>&nbsp;<\\/p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\\\\\/e-visa.png\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"en_US\",\"ref_from\":null,\"status\":\"published\",\"template\":\"default\",\"image\":\"news\\/e-visa.png\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 OPR/83.0.4254.27', '127.0.0.1', 1, 10, 'Evisa', 'primary', '2022-02-16 15:49:32', '2022-02-16 15:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Destin Jacobs', 'destin-jacobs', 'Neque numquam qui odio soluta sapiente aut.', 'Harum et sed architecto repudiandae voluptates. Sit laboriosam modi omnis voluptate. Natus odio doloremque similique fuga amet alias laboriosam. Autem quaerat non odio necessitatibus aut id ut saepe. Unde accusantium est ut tenetur. Aut hic doloribus consequatur eveniet repudiandae. Sint hic consectetur vitae animi delectus eius. Dolor neque reprehenderit sit commodi. Consequatur sapiente esse cumque dolor vitae est delectus sed. Totam officia sequi totam voluptas occaecati.', 'published', NULL, '2021-04-06 23:41:08', '2021-04-06 23:41:08'),
(2, 'Mr. Hubert Dietrich III', 'mr-hubert-dietrich-iii', 'Itaque vel dolorem corporis dolore maxime alias.', 'Dolor eligendi natus nemo nobis quasi et quia reprehenderit. Et fugit repudiandae occaecati qui maiores dicta voluptate ut. Totam inventore adipisci quisquam odio reprehenderit voluptas. Quam placeat fugiat sed nostrum. Sapiente necessitatibus velit delectus ad quas et assumenda. Minima aut ut consectetur. Est eos soluta nam. Impedit aut qui ratione esse repellat eum consequuntur.', 'published', NULL, '2021-04-06 23:41:08', '2021-04-06 23:41:08'),
(3, 'Myrtle Beatty', 'myrtle-beatty', 'Dolore quia doloribus amet odit commodi aut.', 'Suscipit accusantium recusandae sint illum nemo voluptatem. Est maiores reprehenderit ratione non id pariatur. Officia enim omnis nam veniam dolorem quas quis. Beatae debitis laboriosam id fugit. Aperiam accusantium veritatis repellendus qui et velit earum. Eos aut quia aut esse blanditiis laboriosam illo pariatur. Ut animi rerum et dolorem.', 'published', NULL, '2021-04-06 23:41:08', '2021-04-06 23:41:08'),
(4, 'Dr. Ervin Hudson', 'dr-ervin-hudson', 'Est enim ea voluptatem nisi et non nulla.', 'Omnis nesciunt aut totam soluta et placeat beatae. Aut aspernatur eum ab veritatis et. Eveniet minus aliquid ut. Qui provident aut magni nihil vitae veniam. Dolor accusantium tenetur et nihil culpa praesentium modi. Est laudantium aut quis autem perspiciatis maiores nulla officia. Ut sunt in sequi ut. Ex veritatis quis commodi sed enim voluptatem recusandae. Officiis impedit dolor sed ut. Perspiciatis ut voluptates ea minima sunt. Laboriosam sed labore et consequatur cum temporibus ipsa nobis.', 'published', NULL, '2021-04-06 23:41:08', '2021-04-06 23:41:08'),
(5, 'Asia Cremin', 'asia-cremin', 'Quasi unde tempora nesciunt.', 'Sit et ut dolorem qui laborum odio dolor. Omnis cupiditate dolor a. Et blanditiis ea earum libero. Distinctio dolore voluptas sit qui eveniet error. Dicta a laborum consequatur qui. Aut deleniti ea id sit dolore minus. Ipsum excepturi harum nisi repellat dolores et cumque. Ipsum ducimus eos molestiae quas quo nulla. Molestias reprehenderit consequatur quos qui odio molestias. Omnis fugiat vitae est officia. Numquam voluptate ut perspiciatis officia esse harum.', 'published', NULL, '2021-04-06 23:41:08', '2021-04-06 23:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 0, 'Velit totam dolores sit dolor perferendis non eum consectetur. Nobis illum occaecati aut nam. Ad deleniti voluptas eos tenetur non qui. Nemo dignissimos nostrum numquam aut nisi ea.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(2, 'Events', 0, 'Omnis quia aspernatur culpa ducimus. Quas fugit maxime nam quas porro. Et nemo voluptate placeat illum quos quia. Eum ut dignissimos sint et aut quo. Consequuntur rerum dolorem quia.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 2, 1, 0, '2021-04-06 23:41:12', '2022-02-02 16:01:21'),
(4, 'Culture', 0, 'Voluptatum laudantium maiores magnam qui eius aut ducimus. Reprehenderit tempore aspernatur nihil sed quaerat inventore eligendi. Delectus nesciunt totam quos modi ipsam.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 1, 1, 0, '2021-04-06 23:41:12', '2022-02-02 16:00:59'),
(6, 'Food', 0, 'Neque et ut quam ex omnis illo eaque possimus. Qui sit animi similique veritatis iure dolores impedit. Rerum sequi voluptatem rerum ipsam. Illum ut quos necessitatibus aut aut dolorum delectus.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-04-06 23:41:12', '2022-02-02 22:47:59'),
(8, 'Không phân loại', 0, 'Ipsum amet modi earum veniam ea. Esse odit aut ea eum ex ducimus suscipit. Nihil laborum aut sunt deleniti numquam. Et quis numquam rerum saepe qui deserunt.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(9, 'Sự kiện', 0, 'Aut laborum sed error adipisci voluptatem. Fugiat voluptate aut eaque. Rem laborum porro ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(10, 'Dự án', 9, 'Laudantium culpa illo modi quae dolorem vel. Sunt fugiat nisi id nihil. Dolore architecto eos nesciunt qui quo dolorum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(11, 'Doanh nghiệp', 0, 'Enim dolores nobis veritatis dolorem dolor accusamus sequi. Molestiae velit dolores temporibus velit nesciunt quasi. Pariatur at fugit exercitationem culpa sint. Natus qui eius similique.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(12, 'Đầu tư', 11, 'Atque eveniet fugit ut earum sint sunt. Laboriosam est maxime consectetur incidunt voluptatem est enim. Expedita mollitia molestiae quos recusandae est.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(13, 'Tin tức & cập nhật', 0, 'Voluptatibus dolor autem quaerat est sunt et aspernatur. Magni minima voluptate perspiciatis nesciunt soluta molestiae deserunt. Consequatur asperiores ullam aut aut ipsum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(14, 'Tài nguyên', 13, 'Est quod velit occaecati. Fugit sit possimus velit adipisci praesentium fuga eos et. Qui blanditiis ut vel odit. Aspernatur quo voluptate laborum cupiditate.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(15, 'Lifestyle', 0, 'Short Des', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 4, 0, 0, '2022-02-02 16:00:05', '2022-02-02 16:03:00'),
(16, 'Tours', 0, 'Short Des', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 5, 0, 0, '2022-02-02 16:04:00', '2022-02-02 16:04:00'),
(17, 'Parks', 0, 'Parks', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-02-02 16:05:31', '2022-02-02 16:05:31'),
(18, 'Locals', 0, 'Locals', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-02-02 16:05:58', '2022-02-02 16:05:58'),
(19, 'Covid Checks', 0, 'Covid Checks', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-02-02 16:06:53', '2022-02-02 16:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Izabella Schoen', 'hleuschke@example.net', '804.667.4693', '71915 Davis Hills\nNorth Jovanitown, ND 99127', 'Minima aliquam et sint.', 'Velit veniam magnam sed. Sit harum ratione ab sint omnis iure consequatur illo. Dicta aspernatur labore aperiam et sunt. Sequi modi minus odio dolorum consequuntur temporibus dignissimos. Id sapiente consequatur rerum aut et. Sed odio nesciunt qui nulla voluptatum consectetur nihil. Doloremque eos et dolor. Ipsam provident vitae voluptas labore voluptatibus.', 'unread', '2021-04-06 23:41:08', '2021-04-06 23:41:08');

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
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nicename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nimcode` int(11) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `covid_p_c_r_tests`
--

CREATE TABLE `covid_p_c_r_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persons` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cruises`
--

CREATE TABLE `cruises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(1, 'widget_total_themes', '2022-01-29 16:41:43', '2022-01-29 16:41:43'),
(2, 'widget_total_users', '2022-01-29 16:41:43', '2022-01-29 16:41:43'),
(3, 'widget_total_pages', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(4, 'widget_total_plugins', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(5, 'widget_analytics_general', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(6, 'widget_analytics_page', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(7, 'widget_analytics_browser', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(8, 'widget_posts_recent', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(9, 'widget_analytics_referrer', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(10, 'widget_audit_logs', '2022-01-29 16:41:44', '2022-01-29 16:41:44'),
(11, 'widget_request_errors', '2022-01-29 16:41:44', '2022-01-29 16:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widget_settings`
--

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 9, 100, 0, '2022-02-16 14:39:38', '2022-02-16 14:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `evisas`
--

CREATE TABLE `evisas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_issue_date` date NOT NULL,
  `passport_exp_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Est qui commodi ipsum laudantium quia. Reprehenderit quibusdam ea est facere itaque.', 1, 0, 'galleries/1.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(2, 'New Day', 'Eveniet voluptas maiores omnis soluta iste. Quisquam non qui consequuntur ut quae. Aut amet error quos quo fugiat omnis. Eum rerum ea voluptatem ad.', 1, 0, 'galleries/2.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(3, 'Happy Day', 'Laborum consequatur sint voluptas totam dolorem sunt. Facere explicabo quisquam impedit repellat magni consequuntur. Cumque rerum quod sed.', 1, 0, 'galleries/3.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(4, 'Nature', 'Id qui nihil ut sunt sit libero. Aut ex voluptatem eum corrupti recusandae alias. Aut dolorem qui libero consequatur non.', 1, 0, 'galleries/4.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(5, 'Morning', 'Nulla reiciendis labore ullam accusantium sit. Voluptas est rerum in dignissimos.', 1, 0, 'galleries/5.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(6, 'Photography', 'Ut odit sunt tenetur fugit ipsam consectetur. Porro soluta maxime porro necessitatibus. Molestiae unde facere sint. Ipsa reprehenderit ab sequi sed.', 1, 0, 'galleries/6.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(7, 'Hoàn hảo', 'Accusantium repellendus nemo adipisci. Necessitatibus dignissimos quasi asperiores ut aut. Qui optio qui sequi consequuntur praesentium.', 1, 0, 'galleries/1.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(8, 'Ngày mới', 'Doloribus molestias repellendus aut nesciunt dolor. Rerum cumque reiciendis voluptatem sit voluptas. Aperiam nostrum suscipit iure sit quia.', 1, 0, 'galleries/2.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(9, 'Ngày hạnh phúc', 'Et aut similique quaerat impedit et provident atque velit. Ea quidem ad rem fugit. Est qui ullam facilis aliquam. Autem hic quasi repudiandae quia.', 1, 0, 'galleries/3.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(10, 'Thiên nhiên', 'Natus quos dignissimos inventore aut commodi illo eligendi. Nihil quae et nisi sit ad. Voluptate aliquam et dignissimos consequatur ut fugiat.', 1, 0, 'galleries/4.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(11, 'Buổi sáng', 'Quas ut laboriosam ad ipsam ipsam quam. Unde iusto et numquam. Distinctio doloremque hic nobis. Debitis accusamus harum suscipit doloribus qui est.', 1, 0, 'galleries/5.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(12, 'Nghệ thuật', 'Minus fugiat ducimus et consequatur. Iste autem eum mollitia alias qui suscipit. Aliquid eos dignissimos nesciunt itaque harum.', 1, 0, 'galleries/6.jpg', 1, 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(7, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 7, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(8, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 8, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(9, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 9, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(10, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 10, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(11, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 11, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(12, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ullam rem rerum non velit dolorem consequatur sed. Mollitia consequuntur unde pariatur ut. Aut non cum ut. Qui occaecati non rerum.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Deserunt est facilis enim aut repellendus. Rerum qui ea tenetur tenetur sed sunt impedit. Ut autem aliquam et ea libero dolores architecto.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Iure expedita est aut dolores dolores ut blanditiis. Debitis quia cum officiis nemo.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Consequatur id soluta nihil numquam doloribus aliquam officiis. Accusamus voluptatibus voluptatem cum autem odit aut.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Itaque pariatur optio nesciunt incidunt nostrum. Iste exercitationem est placeat qui quis omnis. Iusto magnam et accusantium maxime maxime sapiente.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Dicta et cumque id mollitia. Quidem ut voluptatem similique est similique.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Consequatur dolorem non ut possimus error. At et eius in quia culpa dolorum magni. Alias ea consequatur et.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptatum numquam quos et et reiciendis blanditiis. Quia velit porro sunt aspernatur veritatis. Voluptate aut qui qui qui qui quam nemo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Omnis laboriosam maiores omnis ea libero. Enim quo delectus fugiat at. Aut cupiditate placeat aliquam porro earum sequi.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus labore ea voluptatibus voluptatem fuga voluptatem. Nihil eum nihil et ut ab. Aut sint quis fugit et dolor.\"}]', 12, 'Botble\\Gallery\\Models\\Gallery', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(14, '[{\"img\":\"news\\/e-visa.png\",\"description\":\"\"}]', 10, 'Botble\\Page\\Models\\Page', '2022-01-31 15:41:55', '2022-01-31 17:21:33'),
(16, NULL, 7, 'Botble\\Page\\Models\\Page', '2022-01-31 16:14:59', '2022-01-31 16:14:59'),
(17, NULL, 3, 'Botble\\Page\\Models\\Page', '2022-01-31 16:16:50', '2022-01-31 16:16:50'),
(18, '[{\"img\":\"news\\/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg\",\"description\":\"\"}]', 11, 'Botble\\Page\\Models\\Page', '2022-01-31 16:22:45', '2022-01-31 17:26:37'),
(19, '[{\"img\":\"news\\/luxury-transfers-hw.jpg\",\"description\":\"\"}]', 12, 'Botble\\Page\\Models\\Page', '2022-01-31 16:53:57', '2022-01-31 17:00:12'),
(20, '[{\"img\":\"news/places-visit-istanbul-galata-bridge.jpg\",\"description\":\"\"}]', 13, 'Botble\\Page\\Models\\Page', '2022-01-31 17:32:23', '2022-01-31 17:33:33'),
(21, '[{\"img\":\"news/a-girl-walking-in-airport.jpg\",\"description\":\"\"}]', 14, 'Botble\\Page\\Models\\Page', '2022-01-31 17:41:35', '2022-01-31 17:41:35'),
(22, '[{\"img\":\"news/a-girl-walking-in-airport.jpg\",\"description\":\"\"}]', 15, 'Botble\\Page\\Models\\Page', '2022-02-01 20:42:19', '2022-02-01 20:42:19'),
(24, '[{\"img\":\"categories/food1.jpg\",\"description\":\"\"}]', 33, 'Botble\\Blog\\Models\\Post', '2022-02-02 22:56:55', '2022-02-02 22:56:55');

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
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0),
(3, 'Türkçe', 'tr', 'tr_TR', 'tr', 0, 0, 0),
(4, '中文 (中国)', 'zh', 'zh_CN', 'cn', 0, 0, 0),
(5, 'Español', 'es', 'es_AR', 'ar', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', 'b74c86e2df4c52b6cb082197e367513d', 1, 'Botble\\Page\\Models\\Page'),
(2, 'en_US', 'dcc31fdfa5e294bf348da34d9a83a34d', 2, 'Botble\\Page\\Models\\Page'),
(3, 'en_US', '74056f8b564a4a0c10b68a62fb80b99e', 3, 'Botble\\Page\\Models\\Page'),
(4, 'en_US', 'dac3c7fe1505eb9e2e80d66dc0fe311d', 4, 'Botble\\Page\\Models\\Page'),
(5, 'vi', 'b74c86e2df4c52b6cb082197e367513d', 5, 'Botble\\Page\\Models\\Page'),
(6, 'vi', 'dcc31fdfa5e294bf348da34d9a83a34d', 6, 'Botble\\Page\\Models\\Page'),
(7, 'vi', '74056f8b564a4a0c10b68a62fb80b99e', 7, 'Botble\\Page\\Models\\Page'),
(8, 'vi', 'dac3c7fe1505eb9e2e80d66dc0fe311d', 8, 'Botble\\Page\\Models\\Page'),
(9, 'en_US', 'fbb7d6064c844fe5e6c4b4c76ef50dbe', 1, 'Botble\\Gallery\\Models\\Gallery'),
(10, 'en_US', '63f2124fda409fc0d175070a5f9af9f0', 2, 'Botble\\Gallery\\Models\\Gallery'),
(11, 'en_US', 'ea3de8e7b698f118b9181c6b3286d890', 3, 'Botble\\Gallery\\Models\\Gallery'),
(12, 'en_US', '0ca4d4a850b4ca1e02cdf418260fe149', 4, 'Botble\\Gallery\\Models\\Gallery'),
(13, 'en_US', '4069633da0d15ec729404fb2672fb116', 5, 'Botble\\Gallery\\Models\\Gallery'),
(14, 'en_US', 'ef0a84bc1e6190ebed4f1a31862ed4ad', 6, 'Botble\\Gallery\\Models\\Gallery'),
(15, 'vi', 'fbb7d6064c844fe5e6c4b4c76ef50dbe', 7, 'Botble\\Gallery\\Models\\Gallery'),
(16, 'vi', '63f2124fda409fc0d175070a5f9af9f0', 8, 'Botble\\Gallery\\Models\\Gallery'),
(17, 'vi', 'ea3de8e7b698f118b9181c6b3286d890', 9, 'Botble\\Gallery\\Models\\Gallery'),
(18, 'vi', '0ca4d4a850b4ca1e02cdf418260fe149', 10, 'Botble\\Gallery\\Models\\Gallery'),
(19, 'vi', '4069633da0d15ec729404fb2672fb116', 11, 'Botble\\Gallery\\Models\\Gallery'),
(20, 'vi', 'ef0a84bc1e6190ebed4f1a31862ed4ad', 12, 'Botble\\Gallery\\Models\\Gallery'),
(21, 'en_US', 'fdf4920d71a978b20f038532a386df0f', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(22, 'en_US', 'f8c0acc4cbd42723d307d1bbff8c2f6f', 1, 'Botble\\Menu\\Models\\Menu'),
(23, 'en_US', '77a094497acaeee02fb51a665ae39cdd', 2, 'Botble\\Menu\\Models\\Menu'),
(24, 'en_US', '555ccfa473e26c975ab9dcac41e2a8c1', 3, 'Botble\\Menu\\Models\\Menu'),
(25, 'en_US', '05111edf5cffbc93416b3b13c5aca36b', 4, 'Botble\\Menu\\Models\\Menu'),
(26, 'en_US', '8e94a44574c70c9a7afe58bd9e9f47b8', 5, 'Botble\\Menu\\Models\\Menu'),
(27, 'vi', 'c6bd4197ad83fa8a848557d4560e86d4', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(28, 'vi', 'f8c0acc4cbd42723d307d1bbff8c2f6f', 6, 'Botble\\Menu\\Models\\Menu'),
(29, 'vi', '77a094497acaeee02fb51a665ae39cdd', 7, 'Botble\\Menu\\Models\\Menu'),
(30, 'vi', '555ccfa473e26c975ab9dcac41e2a8c1', 8, 'Botble\\Menu\\Models\\Menu'),
(31, 'vi', '05111edf5cffbc93416b3b13c5aca36b', 9, 'Botble\\Menu\\Models\\Menu'),
(32, 'vi', '8e94a44574c70c9a7afe58bd9e9f47b8', 10, 'Botble\\Menu\\Models\\Menu'),
(33, NULL, '90791c245ed71e8b54e9933c686ea415', 1, 'Botble\\Block\\Models\\Block'),
(34, NULL, 'b2e0bee11cd942fc23eae67ce7d6acb8', 2, 'Botble\\Block\\Models\\Block'),
(35, NULL, 'baf2b8c3d52e5df0407ed151a488e611', 3, 'Botble\\Block\\Models\\Block'),
(36, NULL, '64984324f4527e1448e8398b908b0e49', 4, 'Botble\\Block\\Models\\Block'),
(37, NULL, '4c9d2c62fb98fccecc341b716410a675', 5, 'Botble\\Block\\Models\\Block'),
(38, 'en_US', '2bcbb21a451210be040910fd4833048d', 1, 'Botble\\Blog\\Models\\Category'),
(39, 'en_US', '0460d33c20b12c896aa0a1d94d6745df', 2, 'Botble\\Blog\\Models\\Category'),
(41, 'en_US', 'baf98df1db2270cd6a082b524fbdfa45', 4, 'Botble\\Blog\\Models\\Category'),
(43, 'en_US', '4b93774532b2684aa2ba4cfca4743fcd', 6, 'Botble\\Blog\\Models\\Category'),
(45, 'vi', '2bcbb21a451210be040910fd4833048d', 8, 'Botble\\Blog\\Models\\Category'),
(46, 'vi', '0460d33c20b12c896aa0a1d94d6745df', 9, 'Botble\\Blog\\Models\\Category'),
(47, 'vi', 'b2d92df37b91c207380c975d02ea500a', 10, 'Botble\\Blog\\Models\\Category'),
(48, 'vi', 'baf98df1db2270cd6a082b524fbdfa45', 11, 'Botble\\Blog\\Models\\Category'),
(49, 'vi', '54346a4e6bc87135f0290ae11fbee88e', 12, 'Botble\\Blog\\Models\\Category'),
(50, 'vi', '4b93774532b2684aa2ba4cfca4743fcd', 13, 'Botble\\Blog\\Models\\Category'),
(51, 'vi', 'e0ca0152b146eb146e8b2a5b7a2ae213', 14, 'Botble\\Blog\\Models\\Category'),
(52, 'en_US', '8e5ed37e9e7b92a8646a12e18a87969e', 1, 'Botble\\Blog\\Models\\Tag'),
(54, 'en_US', 'f200bb999f711777126b1e8ba0405240', 3, 'Botble\\Blog\\Models\\Tag'),
(55, 'en_US', 'cff95e3b2a10eebe44c46fcff0615487', 4, 'Botble\\Blog\\Models\\Tag'),
(56, 'en_US', 'd6bc3445214f0a33f6f21cf2caf69f46', 5, 'Botble\\Blog\\Models\\Tag'),
(57, 'vi', '8e5ed37e9e7b92a8646a12e18a87969e', 6, 'Botble\\Blog\\Models\\Tag'),
(58, 'vi', '16b64dae810147c9b40ec63f11d23043', 7, 'Botble\\Blog\\Models\\Tag'),
(59, 'vi', 'f200bb999f711777126b1e8ba0405240', 8, 'Botble\\Blog\\Models\\Tag'),
(60, 'vi', 'cff95e3b2a10eebe44c46fcff0615487', 9, 'Botble\\Blog\\Models\\Tag'),
(61, 'vi', 'd6bc3445214f0a33f6f21cf2caf69f46', 10, 'Botble\\Blog\\Models\\Tag'),
(95, 'en_US', '04105f42a29342b2c70a51966884db15', 10, 'Botble\\Page\\Models\\Page'),
(96, 'en_US', 'dcb621071792e691e78f1f4065b27e62', 11, 'Botble\\Page\\Models\\Page'),
(97, 'en_US', '6e447a4b94192571ed37dd80fe47ba6e', 12, 'Botble\\Page\\Models\\Page'),
(98, 'en_US', '48ddd35fb56bdb8da0392a25937e0915', 13, 'Botble\\Page\\Models\\Page'),
(99, 'en_US', '4f26df0e5cca12dae55f3d43431647be', 14, 'Botble\\Page\\Models\\Page'),
(100, 'en_US', '4d17ac1383a7cd1c620133157f9075c1', 15, 'Botble\\Page\\Models\\Page'),
(101, 'en_US', '774e5063dedc05dc276499123abcc87d', 15, 'Botble\\Blog\\Models\\Category'),
(102, 'en_US', '38bedd562a074f09727576a6124703c5', 16, 'Botble\\Blog\\Models\\Category'),
(103, 'en_US', '48b358bddbfd5f469041a83e468472b2', 17, 'Botble\\Blog\\Models\\Category'),
(104, 'en_US', 'f2177c15b2c6ab7a15e8afdb5628646d', 18, 'Botble\\Blog\\Models\\Category'),
(105, 'en_US', '8573da88da787158b78e6d3453944efb', 19, 'Botble\\Blog\\Models\\Category'),
(106, 'en_US', 'b3b9ab52b106172b1ee080cbd1290eb9', 33, 'Botble\\Blog\\Models\\Post');

-- --------------------------------------------------------

--
-- Table structure for table `lounges`
--

CREATE TABLE `lounges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/jpeg', 42814, 'galleries/1.jpg', '[]', '2021-04-06 23:41:03', '2021-04-06 23:41:03', NULL),
(2, 0, '10', 1, 'image/jpeg', 95796, 'galleries/10.jpg', '[]', '2021-04-06 23:41:03', '2021-04-06 23:41:03', NULL),
(3, 0, '2', 1, 'image/jpeg', 43108, 'galleries/2.jpg', '[]', '2021-04-06 23:41:03', '2021-04-06 23:41:03', NULL),
(4, 0, '3', 1, 'image/jpeg', 67060, 'galleries/3.jpg', '[]', '2021-04-06 23:41:03', '2021-04-06 23:41:03', NULL),
(5, 0, '4', 1, 'image/jpeg', 60609, 'galleries/4.jpg', '[]', '2021-04-06 23:41:04', '2021-04-06 23:41:04', NULL),
(6, 0, '5', 1, 'image/jpeg', 70264, 'galleries/5.jpg', '[]', '2021-04-06 23:41:04', '2021-04-06 23:41:04', NULL),
(7, 0, '6', 1, 'image/jpeg', 40607, 'galleries/6.jpg', '[]', '2021-04-06 23:41:04', '2021-04-06 23:41:04', NULL),
(8, 0, '7', 1, 'image/jpeg', 41491, 'galleries/7.jpg', '[]', '2021-04-06 23:41:04', '2021-04-06 23:41:04', NULL),
(9, 0, '8', 1, 'image/jpeg', 58063, 'galleries/8.jpg', '[]', '2021-04-06 23:41:04', '2021-04-06 23:41:04', NULL),
(10, 0, '9', 1, 'image/jpeg', 69288, 'galleries/9.jpg', '[]', '2021-04-06 23:41:04', '2021-04-06 23:41:04', NULL),
(11, 0, 'favicon', 2, 'image/png', 3807, 'general/favicon.png', '[]', '2021-04-06 23:41:08', '2021-04-06 23:41:08', NULL),
(12, 0, 'logo', 2, 'image/png', 138446, 'general/logo.png', '[]', '2021-04-06 23:41:08', '2021-04-06 23:41:08', NULL),
(13, 0, '1', 3, 'image/jpeg', 37471, 'news/1.jpg', '[]', '2021-04-06 23:41:09', '2021-04-06 23:41:09', NULL),
(14, 0, '10', 3, 'image/jpeg', 40607, 'news/10.jpg', '[]', '2021-04-06 23:41:09', '2021-04-06 23:41:09', NULL),
(15, 0, '11', 3, 'image/jpeg', 82629, 'news/11.jpg', '[]', '2021-04-06 23:41:09', '2021-04-06 23:41:09', NULL),
(16, 0, '12', 3, 'image/jpeg', 119904, 'news/12.jpg', '[]', '2021-04-06 23:41:09', '2021-04-06 23:41:09', NULL),
(17, 0, '13', 3, 'image/jpeg', 89543, 'news/13.jpg', '[]', '2021-04-06 23:41:10', '2021-04-06 23:41:10', NULL),
(18, 0, '14', 3, 'image/jpeg', 51573, 'news/14.jpg', '[]', '2021-04-06 23:41:10', '2021-04-06 23:41:10', NULL),
(19, 0, '15', 3, 'image/jpeg', 41164, 'news/15.jpg', '[]', '2021-04-06 23:41:10', '2021-04-06 23:41:10', NULL),
(20, 0, '16', 3, 'image/jpeg', 80696, 'news/16.jpg', '[]', '2021-04-06 23:41:10', '2021-04-06 23:41:10', NULL),
(21, 0, '2', 3, 'image/jpeg', 95796, 'news/2.jpg', '[]', '2021-04-06 23:41:10', '2021-04-06 23:41:10', NULL),
(22, 0, '3', 3, 'image/jpeg', 81399, 'news/3.jpg', '[]', '2021-04-06 23:41:11', '2021-04-06 23:41:11', NULL),
(23, 0, '4', 3, 'image/jpeg', 68906, 'news/4.jpg', '[]', '2021-04-06 23:41:11', '2021-04-06 23:41:11', NULL),
(24, 0, '5', 3, 'image/jpeg', 63094, 'news/5.jpg', '[]', '2021-04-06 23:41:11', '2021-04-06 23:41:11', NULL),
(25, 0, '6', 3, 'image/jpeg', 89733, 'news/6.jpg', '[]', '2021-04-06 23:41:11', '2021-04-06 23:41:11', NULL),
(26, 0, '7', 3, 'image/jpeg', 43998, 'news/7.jpg', '[]', '2021-04-06 23:41:11', '2021-04-06 23:41:11', NULL),
(27, 0, '8', 3, 'image/jpeg', 68906, 'news/8.jpg', '[]', '2021-04-06 23:41:12', '2021-04-06 23:41:12', NULL),
(28, 0, '9', 3, 'image/jpeg', 58063, 'news/9.jpg', '[]', '2021-04-06 23:41:12', '2021-04-06 23:41:12', NULL),
(29, 1, 'how-to-get-a-turkish-e-visa', 0, 'image/png', 4832893, 'how-to-get-a-turkish-e-visa.png', '[]', '2022-01-31 14:50:33', '2022-01-31 15:01:42', '2022-01-31 15:01:42'),
(30, 1, 'how-to-get-a-turkish-e-visa', 3, 'image/png', 4832893, 'news/how-to-get-a-turkish-e-visa.png', '[]', '2022-01-31 14:50:50', '2022-01-31 14:50:50', NULL),
(31, 1, 'logo', 4, 'image/png', 29231, 'logo/logo.png', '[]', '2022-01-31 15:02:52', '2022-01-31 15:02:52', NULL),
(32, 1, 'evisa', 3, 'image/jpeg', 132147, 'news/evisa.jpg', '[]', '2022-01-31 16:00:51', '2022-01-31 16:00:51', NULL),
(33, 1, 'e-visa', 3, 'image/png', 68246, 'news/e-visa.png', '[]', '2022-01-31 16:03:14', '2022-01-31 16:03:14', NULL),
(34, 1, 'download', 3, 'image/jpeg', 8673, 'news/download.jpg', '[]', '2022-01-31 16:22:35', '2022-01-31 17:54:54', '2022-01-31 17:54:54'),
(35, 1, 'istanbul-havalimanina-taksi-fiyatlari-aciklandi-4', 3, 'image/jpeg', 54857, 'news/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg', '[]', '2022-01-31 16:24:22', '2022-01-31 16:24:22', NULL),
(36, 1, 'luxury-transfers-HW', 3, 'image/jpeg', 26852, 'news/luxury-transfers-hw.jpg', '[]', '2022-01-31 16:53:33', '2022-01-31 16:53:33', NULL),
(37, 1, 'is2', 3, 'image/png', 163068, 'news/is2.png', '[]', '2022-01-31 17:32:10', '2022-01-31 17:32:10', NULL),
(38, 1, 'Places-Visit-Istanbul-Galata-Bridge', 3, 'image/jpeg', 562963, 'news/places-visit-istanbul-galata-bridge.jpg', '[]', '2022-01-31 17:32:59', '2022-01-31 17:32:59', NULL),
(39, 1, 'a-girl-walking-in-airport', 3, 'image/jpeg', 152449, 'news/a-girl-walking-in-airport.jpg', '[]', '2022-01-31 17:39:39', '2022-01-31 17:39:39', NULL),
(40, 1, 'culture2', 6, 'image/jpeg', 84180, 'categories/culture2.jpg', '[]', '2022-02-02 15:55:02', '2022-02-02 15:55:02', NULL),
(41, 1, '12', 6, 'image/jpeg', 84923, 'categories/12.jpg', '[]', '2022-02-02 15:56:53', '2022-02-02 15:56:53', NULL),
(42, 1, 'event3', 6, 'image/jpeg', 253432, 'categories/event3.jpg', '[]', '2022-02-02 15:56:54', '2022-02-02 15:56:54', NULL),
(43, 1, 'food1', 6, 'image/jpeg', 251666, 'categories/food1.jpg', '[]', '2022-02-02 15:56:55', '2022-02-02 15:56:55', NULL),
(44, 1, 'lifestyle3', 6, 'image/jpeg', 130240, 'categories/lifestyle3.jpg', '[]', '2022-02-02 15:56:56', '2022-02-02 15:56:56', NULL),
(45, 1, 'locals2', 6, 'image/jpeg', 251031, 'categories/locals2.jpg', '[]', '2022-02-02 15:56:57', '2022-02-02 15:56:57', NULL),
(46, 1, 'park1', 6, 'image/jpeg', 72163, 'categories/park1.jpg', '[]', '2022-02-02 15:56:58', '2022-02-02 15:56:58', NULL),
(47, 1, 'tours1', 6, 'image/jpeg', 64392, 'categories/tours1.jpg', '[]', '2022-02-02 15:56:59', '2022-02-02 15:56:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'galleries', 'galleries', 0, '2021-04-06 23:41:03', '2021-04-06 23:41:03', NULL),
(2, 0, 'general', 'general', 0, '2021-04-06 23:41:08', '2021-04-06 23:41:08', NULL),
(3, 0, 'news', 'news', 0, '2021-04-06 23:41:09', '2021-04-06 23:41:09', NULL),
(4, 1, 'logo', 'logo', 0, '2022-01-31 15:01:56', '2022-01-31 15:01:56', NULL),
(5, 1, 'Pdf', 'pdf', 0, '2022-02-01 20:52:12', '2022-02-01 20:52:12', NULL),
(6, 1, 'Categories', 'categories', 0, '2022-02-02 15:53:09', '2022-02-02 15:53:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meet_and_greets`
--

CREATE TABLE `meet_and_greets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mga_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_flight_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Taurean', 'McClure', 'This of course, to begin.', NULL, 'savanah.kihn@yahoo.com', '$2y$10$GLFF2eJutarZnLlz0Jz5YOzJ38UuN.TZAoa19dPpFBTKpF16q4hyG', NULL, '1979-04-14', '+1-716-810-3965', '2021-04-07 06:41:08', NULL, NULL, '2021-04-06 23:41:08', '2021-04-06 23:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(1, 'Main menu', 'main-menu', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(2, 'Favorite websites', 'favorite-websites', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(3, 'My links', 'my-links', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(4, 'Featured Categories', 'featured-categories', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(5, 'Social', 'social', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(6, 'Menu chính', 'menu-chinh', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(7, 'Trang web yêu thích', 'trang-web-yeu-thich', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(8, 'Liên kết', 'lien-ket', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(9, 'Danh mục nổi bật', 'danh-muc-noi-bat', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(10, 'Mạng xã hội', 'mang-xa-hoi', 'published', '2021-04-06 23:41:05', '2021-04-06 23:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(2, 6, 'main-menu', '2021-04-06 23:41:05', '2021-04-06 23:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/', '', 0, 'Home', '', '_self', 0, '2021-04-06 23:41:05', '2022-01-31 15:27:08'),
(6, 2, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(7, 2, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(8, 2, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(9, 2, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(10, 2, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(11, 2, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(12, 3, 0, 0, NULL, '/', '', 0, 'Homepage', '', '_self', 0, '2021-04-06 23:41:05', '2022-01-31 15:25:31'),
(13, 3, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', '', 1, 'Contact', '', '_self', 0, '2021-04-06 23:41:05', '2022-01-31 15:25:31'),
(17, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/events', NULL, 0, 'Events', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-02 15:58:00'),
(19, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/culture', NULL, 0, 'Business', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-02 22:29:13'),
(20, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/food', NULL, 0, 'News & Updates', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-02 22:30:11'),
(22, 5, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(23, 5, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(24, 5, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(25, 5, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(26, 6, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(27, 6, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Mua ngay', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(28, 6, 0, 5, 'Botble\\Page\\Models\\Page', '/trang-chu', NULL, 0, 'Tin tức', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(29, 6, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(30, 6, 0, 7, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(31, 7, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(32, 7, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(33, 7, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(34, 7, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(35, 7, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(36, 7, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(37, 8, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(38, 8, 0, 7, 'Botble\\Page\\Models\\Page', '/lien-he', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(39, 8, 0, 13, 'Botble\\Blog\\Models\\Category', '/tin-tuc-cap-nhat', NULL, 0, 'Tin tức & Cập nhật', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(40, 8, 0, 10, 'Botble\\Blog\\Models\\Category', '/du-an', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(41, 8, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(42, 9, 0, 9, 'Botble\\Blog\\Models\\Category', '/su-kien', NULL, 0, 'Sự kiện', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(43, 9, 0, 10, 'Botble\\Blog\\Models\\Category', '/du-an', NULL, 0, 'Dự án', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(44, 9, 0, 11, 'Botble\\Blog\\Models\\Category', '/doanh-nghiep', NULL, 0, 'Business', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(45, 9, 0, 13, 'Botble\\Blog\\Models\\Category', '/tin-tuc-cap-nhat', NULL, 0, 'Tin tức & Cập nhật', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(46, 9, 0, 14, 'Botble\\Blog\\Models\\Category', '/tai-nguyen', NULL, 0, 'Tài nguyên', NULL, '_self', 0, '2021-04-06 23:41:05', '2022-02-15 17:25:41'),
(47, 10, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(48, 10, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(49, 10, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(50, 10, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(51, 1, 0, 11, 'Botble\\Page\\Models\\Page', '/airport-access', '', 1, 'Airport Access', '', '_self', 0, '2022-01-31 17:45:38', '2022-01-31 19:56:37'),
(52, 1, 0, 12, 'Botble\\Page\\Models\\Page', '/premium-service', '', 2, 'Premium Services', '', '_self', 0, '2022-01-31 17:45:38', '2022-01-31 19:56:37'),
(53, 1, 0, 13, 'Botble\\Page\\Models\\Page', '/visit-istanbul', '', 3, 'Visit Istanbul', '', '_self', 0, '2022-01-31 17:45:38', '2022-01-31 19:56:37'),
(54, 1, 0, 14, 'Botble\\Page\\Models\\Page', '/covid-19', '', 4, 'Covid-19', '', '_self', 0, '2022-01-31 17:45:38', '2022-01-31 19:56:37'),
(55, 1, 0, 10, 'Botble\\Page\\Models\\Page', '/evisa', '', 5, 'Evisa', '', '_self', 0, '2022-01-31 17:45:38', '2022-01-31 19:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'category_img', '[\"categories\\/culture2.jpg\"]', 4, 'Botble\\Blog\\Models\\Category', '2022-02-02 15:57:27', '2022-02-02 15:57:27'),
(2, 'category_img', '[\"categories\\/event3.jpg\"]', 2, 'Botble\\Blog\\Models\\Category', '2022-02-02 15:58:00', '2022-02-02 15:58:00'),
(3, 'category_img', '[\"categories\\/food1.jpg\"]', 6, 'Botble\\Blog\\Models\\Category', '2022-02-02 15:59:03', '2022-02-02 15:59:03'),
(4, 'category_img', '[\"categories\\/lifestyle3.jpg\"]', 15, 'Botble\\Blog\\Models\\Category', '2022-02-02 16:00:05', '2022-02-02 16:00:05'),
(5, 'category_img', '[\"categories\\/tours1.jpg\"]', 16, 'Botble\\Blog\\Models\\Category', '2022-02-02 16:04:01', '2022-02-02 16:04:01'),
(6, 'category_img', '[\"categories\\/park1.jpg\"]', 17, 'Botble\\Blog\\Models\\Category', '2022-02-02 16:05:31', '2022-02-02 16:05:31'),
(7, 'category_img', '[\"categories\\/locals2.jpg\"]', 18, 'Botble\\Blog\\Models\\Category', '2022-02-02 16:05:58', '2022-02-02 16:05:58'),
(8, 'category_img', '[\"categories\\/12.jpg\"]', 19, 'Botble\\Blog\\Models\\Category', '2022-02-02 16:06:54', '2022-02-02 16:06:54');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_05_28_112028_create_system_request_logs_table', 1),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(11, '2016_06_01_000004_create_oauth_clients_table', 1),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(13, '2016_06_10_230148_create_acl_tables', 1),
(14, '2016_06_14_230857_create_menus_table', 1),
(15, '2016_06_17_091537_create_contacts_table', 1),
(16, '2016_06_28_221418_create_pages_table', 1),
(17, '2016_10_03_032336_create_languages_table', 1),
(18, '2016_10_05_074239_create_setting_table', 1),
(19, '2016_10_07_193005_create_translations_table', 1),
(20, '2016_10_13_150201_create_galleries_table', 1),
(21, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(22, '2016_12_16_084601_create_widgets_table', 1),
(23, '2017_02_13_034601_create_blocks_table', 1),
(24, '2017_03_27_150646_re_create_custom_field_tables', 1),
(25, '2017_05_09_070343_create_media_tables', 1),
(26, '2017_10_04_140938_create_member_table', 1),
(27, '2017_11_03_070450_create_slug_table', 1),
(28, '2019_01_05_053554_create_jobs_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2020_10_18_134839_fix_member_activity_logs_table', 1),
(31, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(32, '2021_07_18_101839_fix_old_theme_options', 2),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(34, '2022_01_18_080410_create_cruises_table', 4),
(35, '2022_01_19_143004_create_evisas_table', 4),
(36, '2022_01_24_065847_create_countries_table', 4),
(37, '2022_01_24_073752_create_traveldocuments_table', 4),
(38, '2022_01_26_120743_create_airport_services_table', 4),
(39, '2022_02_04_085850_create_meet_and_greets_table', 5),
(40, '2022_02_07_075853_create_tourist_passes_table', 5),
(41, '2022_02_07_080353_create_museum_passes_table', 5),
(42, '2022_02_07_080550_create_covid_p_c_r_tests_table', 5),
(43, '2022_02_07_080658_create_rent_cars_table', 5),
(44, '2022_02_16_080301_create_tours_table', 5),
(45, '2022_02_16_080623_create_orders_table', 6),
(46, '2022_02_16_093950_create_vip_passes_table', 6),
(47, '2022_02_16_094123_create_lounges_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `museum_passes`
--

CREATE TABLE `museum_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\"][/all-galleries]</div>', 1, NULL, 'no-sidebar', 0, NULL, 'published', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(2, 'Blog', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(3, 'Contact', '<p>Address: Istanbul Airport</p><p>Hotline: 000-000-000-00</p><p>Email: contact@istnbulairport.com</p><shortcode class=\"bb-shortcode\">[google-map]Istanbul Airport[/google-map]</shortcode><p>For the fastest reply, please use the contact form below.</p><shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2021-04-06 23:41:03', '2022-01-31 16:16:49'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(5, 'Trang chủ', '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"Có gì mới?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Tốt nhất cho bạn\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\"][/all-galleries]</div>', 1, NULL, 'no-sidebar', 0, NULL, 'published', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(6, 'Tin tức', '---', 1, NULL, 'default', 0, NULL, 'published', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(7, 'Liên hệ', '<p>Địa chỉ: Istanbul Airport</p><p>Đường dây nóng: 0000-000-00</p><p>Email: contact@istanbulairport.com</p><shortcode class=\"bb-shortcode\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</shortcode><p>Để được trả lời nhanh nhất, vui lòng sử dụng biểu mẫu liên hệ bên dưới.</p><shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2021-04-06 23:41:03', '2022-01-31 16:14:59'),
(8, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(10, 'Evisa', '<h1>E-VISA <span>APPLICATION </span><span style=\"color:hsl(0,75%,60%);\"><span>PROCESS&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></h1><h4>All you need to know about turkey e-visa</h4><p>&nbsp;</p><p>The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.</p>', 1, 'news/e-visa.png', 'default', 0, 'The Turkish Government has launched an E-Visa , which is electronic permission valid for 180 days that grants its holder entry to the Republic of Turkey and a stay of up to 3 months in the Turkish Country. You can apply for Turkey Electronic Visa in a minutes, from anywhere in the World.', 'published', '2022-01-31 15:41:55', '2022-02-16 15:49:32'),
(11, 'Airport Access', '<h1 style=\"text-align:justify;\">Reach the City Center from Istanbul Airport<br>&nbsp;</h1><p>Istanbul Airport is located northwest of the city in the Arnavutköy district. The distance from Istanbul Airport to the center of Istanbul is 54 kilometers. By car, it takes 60 minutes to get to the center of Istanbul. Istanbul’s third and newest airport is located northwest of the city. The national road D020 is a short distance from the airport, making</p>', 1, 'news/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg', 'default', 0, 'Reach the City Center from Istanbul Airport', 'published', '2022-01-31 16:22:45', '2022-01-31 17:26:37'),
(12, 'Premium Services', '<h1>Premium <span style=\"color:hsl(0, 75%, 60%);\">Services</span></h1><h4>Meet, Greet And Assist Services</h4><p>&nbsp;</p><p>Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET &amp; ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.</p>', 1, 'news/luxury-transfers-hw.jpg', 'default', 0, 'Traveling can be very stressful when you try to move through strange terminals in a busy airport on your own. Now and due to our MEET, GREET & ASSIST (MGA) service, you actually can have an escort in your new journey to guide you within your first contact with Turkey. Help you get through all the airport processes and pass the language barriers easily and quickly.', 'published', '2022-01-31 16:53:57', '2022-01-31 17:01:41'),
(13, 'Visit Istanbul', '<h1>Travel Tips <span style=\"color:hsl(0,75%,60%);\"><span>Turkey</span></span></h1><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\">When visiting Turkey, you\'ll realize that your trip is much more than a trip, it will be an ultimate experience. Turkey has a rich culture with cities steeped in history. From Turkeys illustrious beaches to the beautiful quaint countryside, Turkey will guarantee you a majestical vacation. Turkey is home to some of the most gorgeous landscapes with high mountains, breathtaking power-sand beaches, and gorgeous cyan blue seascapes. Your Turkey trip will bring you a delightful merge of European and Middle Eastern Cultures.</p>', 1, 'news/places-visit-istanbul-galata-bridge.jpg', 'default', 0, 'Travel Tips Turkey', 'published', '2022-01-31 17:32:22', '2022-01-31 17:33:32'),
(14, 'Covid-19', '<h1 style=\"margin-left:0px;\">Turkey Travel <span style=\"color:hsl(0, 75%, 60%);\">Restrictions</span></h1><h4 style=\"margin-left:0px;\"><font style=\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\"><strong>New Procedures to Enter Istanbul</strong></font></h4><p style=\"margin-left:0px;\">&nbsp;</p><p style=\"margin-left:0px;\"><font style=\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\">For the first time since it had opened the doors to tourists last summer, and After adopting an open-door policy with incoming tourism, Turkish government has imposed new measures for travelers from all over the world.</font></p><p style=\"margin-left:0px;\"><font style=\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\">The signs of recovery and decreased number of Coronavirus infections led the Turkish authorities to take the new restrictions to face any new waves of the epidemic.</font></p><p style=\"margin-left:0px;\"><font style=\"box-sizing:border-box;outline:none !important;vertical-align:inherit;\">According to the new restrictions: Visitors wishing to enter Turkish territory are bound to present a negative COVID-19 PCR test result before boarding starting from December 30, 2020</font></p>', 1, 'news/a-girl-walking-in-airport.jpg', 'default', 0, 'Turkey Travel Restrictions', 'published', '2022-01-31 17:41:35', '2022-01-31 17:41:35'),
(15, 'Test Page', '<p>Text Page<img src=\"http://127.0.0.1:8000/storage/news/a-girl-walking-in-airport.jpg\" alt=\"a-girl-walking-in-airport\"><br>&nbsp;</p>', 1, 'news/a-girl-walking-in-airport.jpg', 'default', 0, 'Test Page', 'published', '2022-02-01 20:42:19', '2022-02-01 20:42:19');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(33, 'Istanbuls Mall', 'Then they all looked so grave that she had wept when she turned away. \'Come back!\' the Caterpillar took the hookah out.', '<p>Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice as he came, \'Oh! the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for any of them. \'I\'m sure those are not the smallest idea how confusing it is to find herself talking familiarly with them, as if his heart would break. She pitied him deeply. \'What is it?\' he said, turning to Alice, they all cheered. Alice thought over all the way down one side and then they both cried. \'Wake up, Alice dear!\' said her sister; \'Why, what a Mock Turtle persisted. \'How COULD he turn them out again. The Mock Turtle yet?\' \'No,\' said Alice. \'Of course they were\', said the Dodo, pointing to the conclusion that it led into the court, she said to the Mock Turtle is.\' \'It\'s the thing Mock Turtle a little door about fifteen inches high: she tried to speak, and no room to grow larger again, and we won\'t talk about her any more questions about it, and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought.<br>&nbsp;</p><p>Majesty!\' the soldiers shouted in reply. \'Please come back and see after some executions I have none, Why, I do hope it\'ll make me larger, it must be kind to them,\' thought Alice, \'as all the players, except the King, with an anxious look at a king,\' said Alice. \'I don\'t think they play at all know whether it was sneezing on the English coast you find a thing,\' said the Dodo. Then they all looked so grave that she had wept when she turned away. \'Come back!\' the Caterpillar took the hookah out.</p><p><img src=\"http://127.0.0.1:8000/storage/categories/park1.jpg\" alt=\"park1\"><br>&nbsp;</p><p>I shall be late!\' (when she thought it over a little bird as soon as it can talk: at any rate he might answer questions.--How am I then? Tell me that first, and then quietly marched off after the birds! Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came suddenly upon an open place, with a cart-horse, and expecting every moment to be a queer thing, to be a comfort, one way--never to be no use in the chimney close above her: then, saying to herself \'This is Bill,\' she gave her one, they gave him two, You gave us three or more; They all made a memorandum of the evening, beautiful Soup! Soup of the Lizard\'s slate-pencil, and the moment he was gone, and, by the end of his Normans--\" How are you getting on now, my dear?\' it continued, turning to the Knave. The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'Well, I shan\'t go, at any rate: go and take it away!\' There was a different person then.\' \'Explain all that,\' he said to Alice.</p><p>Alice\'s shoulder, and it said nothing. \'When we were little,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon answered, very nearly in the other. \'I beg pardon, your Majesty,\' the Hatter was out of his head. But at any rate, the Dormouse indignantly. However, he consented to go down the chimney!\' \'Oh! So Bill\'s got to come before that!\' \'Call the next witness!\' said the Gryphon. \'Do you take me for a minute, trying to touch her. \'Poor little thing!\' It did so indeed, and much sooner than she had been found and handed back to my jaw, Has lasted the rest of the right-hand bit to try the whole thing, and she heard something like this:-- \'Fury said to herself, as she could for sneezing. There was a sound of many footsteps, and Alice could speak again. In a little scream, half of fright and half believed herself in a soothing tone: \'don\'t be angry about it. And yet I wish you would seem to have no sort of present!\' thought Alice. \'I\'ve so often read in.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'categories/food1.jpg', 2, NULL, '2022-02-02 22:56:55', '2022-02-03 17:36:05');

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
(65, 16, 33);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_cars`
--

CREATE TABLE `rent_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pick_up_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_off_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_off_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_up_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_up_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drop_off_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://127.0.0.1:8000/news', 5, NULL, NULL, '2022-01-29 17:52:57', '2022-01-29 20:26:47'),
(2, 404, 'http://127.0.0.1:8000/greeting', 1, NULL, NULL, '2022-01-29 18:32:54', '2022-01-29 18:32:54'),
(3, 404, 'http://127.0.0.1:8000/css/font-awesome.min.css', 2, NULL, NULL, '2022-01-29 20:13:58', '2022-01-29 20:15:07'),
(4, 404, 'http://127.0.0.1:8000/css/animate.min.css', 2, NULL, NULL, '2022-01-29 20:13:59', '2022-01-29 20:15:08'),
(5, 404, 'http://127.0.0.1:8000/components/revolution_slider/css/style.css', 2, NULL, NULL, '2022-01-29 20:14:01', '2022-01-29 20:15:13'),
(6, 404, 'http://127.0.0.1:8000/css/bootstrap.min.css', 2, NULL, NULL, '2022-01-29 20:14:01', '2022-01-29 20:15:06'),
(7, 404, 'http://127.0.0.1:8000/components/revolution_slider/css/settings.css', 3, NULL, NULL, '2022-01-29 20:14:02', '2022-01-29 20:15:09'),
(8, 404, 'http://127.0.0.1:8000/components/jquery.bxslider/jquery.bxslider.css', 3, NULL, NULL, '2022-01-29 20:14:03', '2022-01-29 20:15:10'),
(9, 404, 'http://127.0.0.1:8000/components/flexslider/flexslider.css', 3, NULL, NULL, '2022-01-29 20:14:04', '2022-01-29 20:15:11'),
(10, 404, 'http://127.0.0.1:8000/css/tss.css', 3, NULL, NULL, '2022-01-29 20:14:06', '2022-01-29 20:15:12'),
(11, 404, 'http://127.0.0.1:8000/css/style.css', 3, NULL, NULL, '2022-01-29 20:14:07', '2022-01-29 20:15:14'),
(12, 404, 'http://127.0.0.1:8000/css/custom.css', 2, NULL, NULL, '2022-01-29 20:14:13', '2022-01-29 20:15:15'),
(13, 404, 'http://127.0.0.1:8000/css/updates.css', 2, NULL, NULL, '2022-01-29 20:14:15', '2022-01-29 20:15:15'),
(14, 404, 'http://127.0.0.1:8000/css/owl.carousel.css', 2, NULL, NULL, '2022-01-29 20:14:16', '2022-01-29 20:15:16'),
(15, 404, 'http://127.0.0.1:8000/css/responsive.css', 2, NULL, NULL, '2022-01-29 20:14:17', '2022-01-29 20:15:17'),
(16, 404, 'http://127.0.0.1:8000/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js', 2, NULL, NULL, '2022-01-29 20:14:18', '2022-01-29 20:15:19'),
(17, 404, 'http://127.0.0.1:8000/js/jquery-1.11.1.min.js', 3, NULL, NULL, '2022-01-29 20:14:19', '2022-01-29 20:15:22'),
(18, 404, 'http://127.0.0.1:8000/js/jquery.noconflict.js', 3, NULL, NULL, '2022-01-29 20:14:20', '2022-01-29 20:15:29'),
(19, 404, 'http://127.0.0.1:8000/js/modernizr.2.7.1.min.js', 3, NULL, NULL, '2022-01-29 20:14:21', '2022-01-29 20:15:36'),
(20, 404, 'http://127.0.0.1:8000/js/jquery-migrate-1.2.1.min.js', 3, NULL, NULL, '2022-01-29 20:14:22', '2022-01-29 20:15:43'),
(21, 404, 'http://127.0.0.1:8000/js/jquery.placeholder.js', 3, NULL, NULL, '2022-01-29 20:14:23', '2022-01-29 20:15:51'),
(22, 404, 'http://127.0.0.1:8000/js/jquery-ui.1.10.4.min.js', 3, NULL, NULL, '2022-01-29 20:14:24', '2022-01-29 20:16:06'),
(23, 404, 'http://127.0.0.1:8000/js/jquery-scrolltofixed.js', 3, NULL, NULL, '2022-01-29 20:14:25', '2022-01-29 20:16:07'),
(24, 404, 'http://127.0.0.1:8000/js/owl.carousel.min.js', 3, NULL, NULL, '2022-01-29 20:14:27', '2022-01-29 20:16:08'),
(25, 404, 'http://127.0.0.1:8000/js/scrollbar.min.js', 3, NULL, NULL, '2022-01-29 20:14:28', '2022-01-29 20:16:09'),
(26, 404, 'http://127.0.0.1:8000/js/main.js', 3, NULL, NULL, '2022-01-29 20:14:29', '2022-01-29 20:16:10'),
(27, 404, 'http://127.0.0.1:8000/js/bootstrap.js', 3, NULL, NULL, '2022-01-29 20:14:30', '2022-01-29 20:16:11'),
(28, 404, 'http://127.0.0.1:8000/components/revolution_slider/js/jquery.themepunch.plugins.min.js', 3, NULL, NULL, '2022-01-29 20:14:31', '2022-01-29 20:16:12'),
(29, 404, 'http://127.0.0.1:8000/components/revolution_slider/js/jquery.themepunch.revolution.min.js', 3, NULL, NULL, '2022-01-29 20:14:32', '2022-01-29 20:16:13'),
(30, 404, 'http://127.0.0.1:8000/components/jquery.bxslider/jquery.bxslider.min.js', 3, NULL, NULL, '2022-01-29 20:14:33', '2022-01-29 20:16:14'),
(31, 404, 'http://127.0.0.1:8000/components/flexslider/jquery.flexslider-min.js', 3, NULL, NULL, '2022-01-29 20:14:34', '2022-01-29 20:16:15'),
(32, 404, 'http://127.0.0.1:8000/js/jquery.stellar.min.js', 3, NULL, NULL, '2022-01-29 20:14:35', '2022-01-29 20:16:16'),
(33, 404, 'http://127.0.0.1:8000/js/waypoints.min.js', 3, NULL, NULL, '2022-01-29 20:14:36', '2022-01-29 20:16:17'),
(34, 404, 'http://127.0.0.1:8000/js/theme-scripts.js', 5, NULL, NULL, '2022-01-29 20:14:37', '2022-01-29 20:16:19'),
(35, 404, 'http://127.0.0.1:8000/images/logo/logo.png', 2, NULL, NULL, '2022-01-29 20:14:38', '2022-01-29 20:15:39'),
(36, 404, 'http://127.0.0.1:8000/images/spina.gif', 2, NULL, NULL, '2022-01-29 20:14:40', '2022-01-29 20:15:40'),
(37, 404, 'http://127.0.0.1:8000/images/airline_logo/SQ.png', 2, NULL, NULL, '2022-01-29 20:14:41', '2022-01-29 20:15:45'),
(38, 404, 'http://127.0.0.1:8000/images/evisa.jpg', 2, NULL, NULL, '2022-01-29 20:14:42', '2022-01-29 20:15:48'),
(39, 404, 'http://127.0.0.1:8000/images/tours/food1.jpg', 2, NULL, NULL, '2022-01-29 20:14:43', '2022-01-29 20:15:54'),
(40, 404, 'http://127.0.0.1:8000/images/assets/blog/4.jpg', 2, NULL, NULL, '2022-01-29 20:14:43', '2022-01-29 20:15:46'),
(41, 404, 'http://127.0.0.1:8000/images/airline_logo/SK.png', 2, NULL, NULL, '2022-01-29 20:14:45', '2022-01-29 20:15:47'),
(42, 404, 'http://127.0.0.1:8000/images/tours/culture2.jpg', 2, NULL, NULL, '2022-01-29 20:14:46', '2022-01-29 20:15:50'),
(43, 404, 'http://127.0.0.1:8000/images/tours/tours1.jpg', 2, NULL, NULL, '2022-01-29 20:14:47', '2022-01-29 20:15:56'),
(44, 404, 'http://127.0.0.1:8000/images/tours/lifestyle3.jpg', 2, NULL, NULL, '2022-01-29 20:14:48', '2022-01-29 20:15:55'),
(45, 404, 'http://127.0.0.1:8000/images/tours/3.jpg', 2, NULL, NULL, '2022-01-29 20:14:49', '2022-01-29 20:16:01'),
(46, 404, 'http://127.0.0.1:8000/images/assets/blog/2.jpg', 2, NULL, NULL, '2022-01-29 20:14:50', '2022-01-29 20:16:03'),
(47, 404, 'http://127.0.0.1:8000/images/tours/12.jpg', 2, NULL, NULL, '2022-01-29 20:14:51', '2022-01-29 20:15:49'),
(48, 404, 'http://127.0.0.1:8000/images/assets/blog/3.jpg', 2, NULL, NULL, '2022-01-29 20:14:52', '2022-01-29 20:16:04'),
(49, 404, 'http://127.0.0.1:8000/images/airline_logo/JU.png', 2, NULL, NULL, '2022-01-29 20:14:53', '2022-01-29 20:15:44'),
(50, 404, 'http://127.0.0.1:8000/images/tours/locals2.jpg', 2, NULL, NULL, '2022-01-29 20:14:54', '2022-01-29 20:15:58'),
(51, 404, 'http://127.0.0.1:8000/images/tours/1.jpeg', 2, NULL, NULL, '2022-01-29 20:14:54', '2022-01-29 20:15:59'),
(52, 404, 'http://127.0.0.1:8000/images/assets/slider/6.jpg', 2, NULL, NULL, '2022-01-29 20:14:55', '2022-01-29 20:16:05'),
(53, 404, 'http://127.0.0.1:8000/images/tours/event3.jpg', 2, NULL, NULL, '2022-01-29 20:14:56', '2022-01-29 20:15:53'),
(54, 404, 'http://127.0.0.1:8000/images/tours/2.jpg', 2, NULL, NULL, '2022-01-29 20:14:57', '2022-01-29 20:16:00'),
(55, 404, 'http://127.0.0.1:8000/images/airline_logo/TK.png', 2, NULL, NULL, '2022-01-29 20:14:58', '2022-01-29 20:15:42'),
(56, 404, 'http://127.0.0.1:8000/images/tours/park1.jpg', 2, NULL, NULL, '2022-01-29 20:14:59', '2022-01-29 20:15:57'),
(57, 404, 'http://127.0.0.1:8000/images/assets/blog/1.jpg', 2, NULL, NULL, '2022-01-29 20:15:00', '2022-01-29 20:16:02'),
(58, 404, 'http://127.0.0.1:8000/images/logo.png', 1073, NULL, NULL, '2022-01-29 20:19:21', '2022-02-16 17:45:07'),
(59, 404, 'http://127.0.0.1:8000/evisa/images/icon/blank.png', 9, NULL, NULL, '2022-01-29 20:20:35', '2022-02-16 15:00:50'),
(60, 404, 'http://127.0.0.1:8000/evisa/images/logo.png', 9, NULL, NULL, '2022-01-29 20:20:37', '2022-02-16 15:00:51'),
(61, 404, 'http://127.0.0.1:8000/public.index', 1, NULL, NULL, '2022-01-29 20:26:17', '2022-01-29 20:26:17'),
(62, 404, 'http://127.0.0.1:8000/hotel-detailed.html', 1, NULL, NULL, '2022-01-30 14:27:10', '2022-01-30 14:27:10'),
(63, 404, 'http://127.0.0.1:8000/evisa', 2, '[1]', NULL, '2022-01-31 14:59:29', '2022-01-31 15:40:00'),
(64, 404, 'http://127.0.0.1:8000/images/assets/evisa/turkish-flag1.jpg', 2, NULL, NULL, '2022-01-31 17:07:01', '2022-01-31 17:09:42'),
(65, 404, 'http://127.0.0.1:8000/images/assets/evisa/turkish-flag1.jpeg', 1, NULL, NULL, '2022-01-31 17:10:23', '2022-01-31 17:10:23'),
(66, 404, 'http://127.0.0.1:8000/images/turkishflag1.jpg', 4, NULL, NULL, '2022-01-31 17:11:47', '2022-01-31 17:12:41'),
(67, 404, 'http://127.0.0.1:8000/images/assets/slider/turkishflag1.jpg', 2, NULL, NULL, '2022-01-31 17:14:41', '2022-01-31 17:14:50'),
(68, 404, 'http://127.0.0.1:8000/images/assets/slider/ss.jpg', 1, NULL, NULL, '2022-01-31 17:15:50', '2022-01-31 17:15:50'),
(69, 404, 'http://127.0.0.1:8000/images/assets/evisa/ssf.jpg', 1, NULL, NULL, '2022-01-31 17:16:48', '2022-01-31 17:16:48'),
(70, 404, 'http://127.0.0.1:8000/images/assets/evisa/1.jpg', 2, NULL, NULL, '2022-01-31 17:18:36', '2022-01-31 19:07:23'),
(71, 404, 'http://127.0.0.1:8000/Favicon_Image_Location', 1, '[1]', NULL, '2022-01-31 20:53:35', '2022-01-31 20:53:35'),
(72, 404, 'http://127.0.0.1:8000/airport_services/airport_taxi/images/icon/blank.png', 10, NULL, NULL, '2022-02-01 15:17:41', '2022-02-08 15:53:37'),
(73, 404, 'http://127.0.0.1:8000/airport_services/airport_taxi/images/logo.png', 11, NULL, NULL, '2022-02-01 15:17:41', '2022-02-08 15:53:38'),
(74, 404, 'http://127.0.0.1:8000/admin/dashboard', 1, NULL, NULL, '2022-02-01 15:41:42', '2022-02-01 15:41:42'),
(75, 404, 'http://127.0.0.1:8000/admin/blog/posts/__image__', 1, NULL, NULL, '2022-02-02 15:09:10', '2022-02-02 15:09:10'),
(76, 404, 'http://127.0.0.1:8000/storage/categories/$image', 3, NULL, NULL, '2022-02-02 18:05:36', '2022-02-02 18:06:38'),
(77, 404, 'http://127.0.0.1:8000/storage/categories/culture2.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:42', '2022-02-02 18:07:42'),
(78, 404, 'http://127.0.0.1:8000/storage/categories/event3.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:43', '2022-02-02 18:07:43'),
(79, 404, 'http://127.0.0.1:8000/storage/categories/food1.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:44', '2022-02-02 18:07:44'),
(80, 404, 'http://127.0.0.1:8000/storage/categories/lifestyle3.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:45', '2022-02-02 18:07:45'),
(81, 404, 'http://127.0.0.1:8000/storage/categories/park1.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:45', '2022-02-02 18:07:45'),
(82, 404, 'http://127.0.0.1:8000/storage/categories/tours1.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:46', '2022-02-02 18:07:46'),
(83, 404, 'http://127.0.0.1:8000/storage/categories/locals2.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:47', '2022-02-02 18:07:47'),
(84, 404, 'http://127.0.0.1:8000/storage/categories/12.jpg%22]', 1, NULL, NULL, '2022-02-02 18:07:48', '2022-02-02 18:07:48'),
(85, 404, 'http://127.0.0.1:8000/culture', 2, '[1]', NULL, '2022-02-02 18:17:13', '2022-02-02 22:28:19'),
(86, 404, 'http://127.0.0.1:8000/news/15.jpg', 1, NULL, NULL, '2022-02-02 21:04:48', '2022-02-02 21:04:48'),
(87, 404, 'http://127.0.0.1:8000/storagenews/1.jpg', 1, NULL, NULL, '2022-02-02 21:38:25', '2022-02-02 21:38:25'),
(88, 404, 'http://127.0.0.1:8000/storagenews/2.jpg', 1, NULL, NULL, '2022-02-02 21:38:25', '2022-02-02 21:38:25'),
(89, 404, 'http://127.0.0.1:8000/storagenews/3.jpg', 1, NULL, NULL, '2022-02-02 21:38:26', '2022-02-02 21:38:26'),
(90, 404, 'http://127.0.0.1:8000/storagenews/4.jpg', 1, NULL, NULL, '2022-02-02 21:38:27', '2022-02-02 21:38:27'),
(91, 404, 'http://127.0.0.1:8000/storagenews/5.jpg', 1, NULL, NULL, '2022-02-02 21:38:27', '2022-02-02 21:38:27'),
(92, 404, 'http://127.0.0.1:8000/storagenews/6.jpg', 1, NULL, NULL, '2022-02-02 21:38:28', '2022-02-02 21:38:28'),
(93, 404, 'http://127.0.0.1:8000/food', 1, '[1]', NULL, '2022-02-02 22:29:50', '2022-02-02 22:29:50'),
(94, 404, 'http://127.0.0.1:8000/covid%20checks', 1, '[1]', NULL, '2022-02-02 22:31:56', '2022-02-02 22:31:56'),
(95, 404, 'http://127.0.0.1:8000/istanbuls-mall', 3, '[1]', NULL, '2022-02-02 22:54:00', '2022-02-02 22:54:26'),
(96, 404, 'http://127.0.0.1:8000/images/asstes/otheres/1.jpg', 3, NULL, NULL, '2022-02-03 21:14:14', '2022-02-03 21:14:47'),
(97, 404, 'http://127.0.0.1:8000/images/assts/otheres/1.jpg', 1, NULL, NULL, '2022-02-03 21:15:07', '2022-02-03 21:15:07'),
(98, 404, 'http://127.0.0.1:8000/images/assets/otheres/1.jpg', 1, NULL, NULL, '2022-02-03 21:15:39', '2022-02-03 21:15:39'),
(99, 404, 'http://127.0.0.1:8000/premium_services/meet_and_greet_booking_form/images/icon/blank.png', 31, NULL, NULL, '2022-02-04 17:52:39', '2022-02-16 17:30:18'),
(100, 404, 'http://127.0.0.1:8000/premium_services/meet_and_greet_booking_form/images/logo.png', 167, NULL, NULL, '2022-02-04 17:52:40', '2022-02-16 17:30:18'),
(101, 404, 'http://127.0.0.1:8000/images/assets/others/mu.png', 1, NULL, NULL, '2022-02-07 15:29:39', '2022-02-07 15:29:39'),
(102, 404, 'http://127.0.0.1:8000/images/assets/others/www2.jpg', 1, NULL, NULL, '2022-02-07 16:44:26', '2022-02-07 16:44:26'),
(103, 404, 'http://127.0.0.1:8000/images/assets/others/m1.jpg', 4, NULL, NULL, '2022-02-07 17:29:44', '2022-02-07 17:30:47'),
(104, 404, 'http://127.0.0.1:8000/images/assets/others/m2.png', 1, NULL, NULL, '2022-02-07 17:35:57', '2022-02-07 17:35:57'),
(105, 404, 'http://127.0.0.1:8000/images/assets/others/tpass.jpg', 1, NULL, NULL, '2022-02-08 14:51:45', '2022-02-08 14:51:45'),
(106, 404, 'http://127.0.0.1:8000/airport-taxi-booking-store', 1, '[1]', NULL, '2022-02-08 15:19:24', '2022-02-08 15:19:24'),
(107, 404, 'http://127.0.0.1:8000/airport_services/airport_taxi', 1, NULL, NULL, '2022-02-08 15:24:16', '2022-02-08 15:24:16'),
(108, 404, 'http://127.0.0.1:8000/airport_services/images/icon/blank.png', 30, NULL, NULL, '2022-02-08 15:53:21', '2022-02-16 16:34:05'),
(109, 404, 'http://127.0.0.1:8000/airport_services/images/logo.png', 31, NULL, NULL, '2022-02-08 15:53:22', '2022-02-16 16:34:06'),
(110, 404, 'http://127.0.0.1:8000/https://fonts.googleapis.com/css?display=fallback&family=Source%20Sans%20Pro%3A300%2C400%2C400i%2C...', 289, NULL, NULL, '2022-02-08 16:17:13', '2022-02-16 22:17:00'),
(111, 404, 'http://127.0.0.1:8000/cdn-cgi/zaraz/s.js?z=JTdCJTIyZXhlY3V0ZWQlMjIlM0ElNUIlNUQlMkMlMjJ0cmFja3MlMjIlM0ElNUIlNUQlMkMlMjJjJ...', 160, NULL, NULL, '2022-02-08 19:05:43', '2022-02-16 14:37:29'),
(112, 404, 'http://127.0.0.1:8000/super-admin/https://fonts.googleapis.com/css?display=fallback&family=Source%20Sans%20Pro%3A300%2C4...', 12, NULL, NULL, '2022-02-08 22:07:31', '2022-02-08 22:14:17'),
(113, 404, 'http://127.0.0.1:8000/super-admin/plugins/fontawesome-free/css/all.min.css', 12, NULL, NULL, '2022-02-08 22:07:31', '2022-02-08 22:14:19'),
(114, 404, 'http://127.0.0.1:8000/super-admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css', 12, NULL, NULL, '2022-02-08 22:07:32', '2022-02-08 22:14:18'),
(115, 404, 'http://127.0.0.1:8000/super-admin/dist/css/adminlte.min.css', 12, NULL, NULL, '2022-02-08 22:07:33', '2022-02-08 22:14:17'),
(116, 404, 'http://127.0.0.1:8000/airport-taxi-booking', 3, '[1]', NULL, '2022-02-09 14:51:20', '2022-02-14 22:15:12'),
(117, 404, 'http://127.0.0.1:8000/museum-pass', 3, NULL, NULL, '2022-02-09 16:13:33', '2022-02-09 16:13:56'),
(118, 404, 'http://127.0.0.1:8000/istanbul-tour-booking', 3, NULL, NULL, '2022-02-09 16:56:20', '2022-02-09 16:57:49'),
(119, 404, 'http://127.0.0.1:8000/evisa/booking', 1, NULL, NULL, '2022-02-10 16:11:55', '2022-02-10 16:11:55'),
(120, 404, 'http://127.0.0.1:8000/super-admin/dashboard', 2, NULL, NULL, '2022-02-10 22:27:50', '2022-02-10 22:28:42'),
(121, 404, 'http://127.0.0.1:8000/index.html', 7, '[1]', NULL, '2022-02-11 21:27:09', '2022-02-11 22:40:19'),
(122, 404, 'http://127.0.0.1:8000/%3Cimg%20src=%22https://www.istanbulsairport.com/ADPInternetTheme/images/airline/TK.png%22%20class...', 5, NULL, NULL, '2022-02-14 15:29:35', '2022-02-14 15:38:16'),
(123, 404, 'http://127.0.0.1:8000/%3Cimg%20src=%22https://www.istanbulsairport.com/ADPInternetTheme/images/airline/JU.png%22%20class...', 4, NULL, NULL, '2022-02-14 15:29:36', '2022-02-14 15:38:17'),
(124, 404, 'http://127.0.0.1:8000/%3Cimg%20src=%22https://www.istanbulsairport.com/ADPInternetTheme/images/airline/PS.png%22%20class...', 4, NULL, NULL, '2022-02-14 15:29:36', '2022-02-14 15:38:18'),
(125, 404, 'http://127.0.0.1:8000/%3Cimg%20src=%22https://www.istanbulsairport.com/ADPInternetTheme/images/airline/SK.png%22%20class...', 4, NULL, NULL, '2022-02-14 15:29:37', '2022-02-14 15:38:18'),
(126, 404, 'http://127.0.0.1:8000/%22https:////www.istanbulsairport.com//ADPInternetTheme//images//airline//TK.png/%22', 1, NULL, NULL, '2022-02-14 15:45:13', '2022-02-14 15:45:13'),
(127, 404, 'http://127.0.0.1:8000/%22https:////www.istanbulsairport.com//ADPInternetTheme//images//airline//JU.png/%22', 1, NULL, NULL, '2022-02-14 15:45:14', '2022-02-14 15:45:14'),
(128, 404, 'http://127.0.0.1:8000/%22https:////www.istanbulsairport.com//ADPInternetTheme//images//airline//PS.png/%22', 1, NULL, NULL, '2022-02-14 15:45:14', '2022-02-14 15:45:14'),
(129, 404, 'http://127.0.0.1:8000/%22https:////www.istanbulsairport.com//ADPInternetTheme//images//airline//SK.png/%22', 1, NULL, NULL, '2022-02-14 15:45:15', '2022-02-14 15:45:15'),
(130, 404, 'http://127.0.0.1:8000/[1]=%3E%20%20string(71)', 4, '[1]', NULL, '2022-02-14 15:46:41', '2022-02-14 15:52:56'),
(131, 404, 'http://127.0.0.1:8000/images/logo2.png', 92, NULL, NULL, '2022-02-14 21:52:10', '2022-02-16 17:45:06'),
(132, 404, 'http://127.0.0.1:8000/airport_services/js/pace.min.js', 9, NULL, NULL, '2022-02-14 21:56:34', '2022-02-16 16:34:03'),
(133, 404, 'http://127.0.0.1:8000/airport_services/js/page-loading.js', 9, NULL, NULL, '2022-02-14 21:56:34', '2022-02-16 16:34:04'),
(134, 404, 'http://127.0.0.1:8000/flight/js/pace.min.js', 2, NULL, NULL, '2022-02-14 22:20:13', '2022-02-14 22:20:14'),
(135, 404, 'http://127.0.0.1:8000/flight/js/page-loading.js', 2, NULL, NULL, '2022-02-14 22:20:13', '2022-02-14 22:20:15'),
(136, 404, 'http://127.0.0.1:8000/premium_services/meet_and_greet_booking_form/js/pace.min.js', 6, NULL, NULL, '2022-02-15 21:56:02', '2022-02-16 17:30:16'),
(137, 404, 'http://127.0.0.1:8000/premium_services/meet_and_greet_booking_form/js/page-loading.js', 7, NULL, NULL, '2022-02-15 21:56:03', '2022-02-16 17:30:16'),
(138, 404, 'http://127.0.0.1:8000/premium_services/vip-pass-form', 3, NULL, NULL, '2022-02-15 22:32:16', '2022-02-15 22:34:19'),
(139, 404, 'http://127.0.0.1:8000/premium_services/vip_pass_form', 4, NULL, NULL, '2022-02-15 22:35:06', '2022-02-15 22:37:43'),
(140, 404, 'http://127.0.0.1:8000/premium_services/js/pace.min.js', 66, NULL, NULL, '2022-02-15 22:49:07', '2022-02-16 17:52:54'),
(141, 404, 'http://127.0.0.1:8000/premium_services/js/page-loading.js', 66, NULL, NULL, '2022-02-15 22:49:08', '2022-02-16 17:52:54'),
(142, 404, 'http://127.0.0.1:8000/premium_services/images/icon/blank.png', 33, NULL, NULL, '2022-02-15 22:49:10', '2022-02-16 17:52:55'),
(143, 404, 'http://127.0.0.1:8000/premium_services/images/logo.png', 33, NULL, NULL, '2022-02-15 22:49:11', '2022-02-16 17:52:56'),
(144, 404, 'http://127.0.0.1:8000/evisa/js/pace.min.js', 2, NULL, NULL, '2022-02-16 15:00:47', '2022-02-16 15:00:48'),
(145, 404, 'http://127.0.0.1:8000/evisa/js/page-loading.js', 2, NULL, NULL, '2022-02-16 15:00:48', '2022-02-16 15:00:49'),
(146, 404, 'http://127.0.0.1:8000/%7B%7Basset(\'images/logo/logo.png\')%7D%7D', 1, NULL, NULL, '2022-02-16 15:36:19', '2022-02-16 15:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 10, 1, 'image', 'news/how-to-get-a-turkish-e-visa.png', 'news/evisa.jpg', '2022-01-31 16:01:17', '2022-01-31 16:01:17'),
(2, 'Botble\\Page\\Models\\Page', 10, 1, 'image', 'news/evisa.jpg', 'news/e-visa.png', '2022-01-31 16:03:39', '2022-01-31 16:03:39'),
(3, 'Botble\\Page\\Models\\Page', 11, 1, 'image', 'news/download.jpg', 'news/istanbul-havalimanina-taksi-fiyatlari-aciklandi-4.jpg', '2022-01-31 16:24:40', '2022-01-31 16:24:40'),
(4, 'Botble\\Page\\Models\\Page', 13, 1, 'image', 'news/is2.png', 'news/places-visit-istanbul-galata-bridge.jpg', '2022-01-31 17:33:33', '2022-01-31 17:33:33'),
(5, 'Botble\\Blog\\Models\\Post', 15, 1, 'name', '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Istanbuls Mall', '2022-02-02 22:11:56', '2022-02-02 22:11:56'),
(6, 'Botble\\Blog\\Models\\Post', 15, 1, 'image', 'news/15.jpg', 'categories/food1.jpg', '2022-02-02 22:11:56', '2022-02-02 22:11:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `description`, `is_default`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'author', 'Author', '{\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"widgets.index\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"languages.theme-translations\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"social-login.settings\":true,\"translations.index\":true,\"translations.edit\":true}', 'Website Author', 0, 1, 1, '2022-02-10 23:13:31', '2022-02-10 23:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-02-10 23:14:45', '2022-02-10 23:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'activated_plugins', '[\"language\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\",\"analytics\"]', NULL, NULL),
(3, 'language_hide_default', '1', NULL, NULL),
(4, 'language_switcher_display', 'dropdown', NULL, NULL),
(5, 'language_display', 'all', NULL, NULL),
(6, 'language_hide_languages', '[]', NULL, NULL),
(7, 'show_admin_bar', '1', NULL, NULL),
(8, 'theme', 'ripple', NULL, NULL),
(9, 'theme-ripple-site_title', 'Istanbul Airport', NULL, NULL),
(10, 'theme-ripple-copyright', '©2022 Istanbul Airport. All right reserved.', NULL, NULL),
(11, 'theme-ripple-favicon', 'logo/logo.png', NULL, NULL),
(12, 'theme-ripple-website', 'https://www.istanbulsairport.com', NULL, NULL),
(13, 'theme-ripple-contact_email', 'hello@istanbulairport.com', NULL, NULL),
(14, 'theme-ripple-site_description', 'Istanbul Airport website A lot of services in one place e-visa Turkey, hotel reservations, flight reservations, daily transfers from the airport, all airport services.', NULL, NULL),
(15, 'theme-ripple-phone', '+(123) 345-6789', NULL, NULL),
(16, 'theme-ripple-address', 'Istanbul Airport', NULL, NULL),
(17, 'theme-ripple-facebook', 'https://facebook.com', NULL, NULL),
(18, 'theme-ripple-twitter', 'https://twitter.com', NULL, NULL),
(19, 'theme-ripple-youtube', 'https://youtube.com', NULL, NULL),
(20, 'theme-ripple-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(21, 'theme-ripple-cookie_consent_learn_more_url', 'http://botble.local/cookie-policy', NULL, NULL),
(22, 'theme-ripple-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(23, 'theme-ripple-homepage_id', '1', NULL, NULL),
(24, 'theme-ripple-blog_page_id', '2', NULL, NULL),
(25, 'theme-ripple-logo', 'logo/logo.png', NULL, NULL),
(26, 'theme-ripple-vi-site_title', 'Một trang web sử dụng Botble CMS', NULL, NULL),
(27, 'theme-ripple-vi-copyright', '©2021 Botble Technologies. Tất cả quyền đã được bảo hộ.', NULL, NULL),
(28, 'theme-ripple-vi-favicon', 'general/favicon.png', NULL, NULL),
(29, 'theme-ripple-vi-website', 'https://botble.com', NULL, NULL),
(30, 'theme-ripple-vi-contact_email', 'support@botble.com', NULL, NULL),
(31, 'theme-ripple-vi-site_description', 'Với kinh nghiệm dồi dào, chúng tôi đảm bảo hoàn thành mọi dự án rất nhanh và đúng thời gian với chất lượng cao sử dụng Botble CMS của chúng tôi https://1.envato.market/LWRBY', NULL, NULL),
(32, 'theme-ripple-vi-phone', '+(123) 345-6789', NULL, NULL),
(33, 'theme-ripple-vi-address', '214 West Arnold St. New York, NY 10002', NULL, NULL),
(34, 'theme-ripple-vi-facebook', 'https://facebook.com', NULL, NULL),
(35, 'theme-ripple-vi-twitter', 'https://twitter.com', NULL, NULL),
(36, 'theme-ripple-vi-youtube', 'https://youtube.com', NULL, NULL),
(37, 'theme-ripple-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(38, 'theme-ripple-vi-cookie_consent_learn_more_url', 'http://botble.local/cookie-policy', NULL, NULL),
(39, 'theme-ripple-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(40, 'theme-ripple-vi-homepage_id', '5', NULL, NULL),
(41, 'theme-ripple-vi-blog_page_id', '6', NULL, NULL),
(42, 'theme-ripple-vi-logo', 'general/logo.png', NULL, NULL),
(43, 'admin_email.0', NULL, NULL, NULL),
(44, 'time_zone', 'UTC', NULL, NULL),
(45, 'locale_direction', 'ltr', NULL, NULL),
(46, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(47, 'admin_logo', 'logo/logo.png', NULL, NULL),
(48, 'admin_favicon', 'logo/logo.png', NULL, NULL),
(49, 'login_screen_backgrounds.0', NULL, NULL, NULL),
(50, 'admin_title', 'Istanbul\'s Airport', NULL, NULL),
(51, 'rich_editor', 'ckeditor', NULL, NULL),
(52, 'enable_change_admin_theme', '0', NULL, NULL),
(53, 'enable_cache', '0', NULL, NULL),
(54, 'cache_time', '10', NULL, NULL),
(55, 'cache_admin_menu_enable', '0', NULL, NULL),
(56, 'optimize_page_speed_enable', '0', NULL, NULL),
(57, 'google_site_verification', NULL, NULL, NULL),
(58, 'cache_time_site_map', '3600', NULL, NULL),
(59, 'verify_account_email', '0', NULL, NULL),
(60, 'enable_captcha', '0', NULL, NULL),
(61, 'captcha_type', 'v2', NULL, NULL),
(62, 'captcha_hide_badge', '0', NULL, NULL),
(63, 'captcha_site_key', NULL, NULL, NULL),
(64, 'captcha_secret', NULL, NULL, NULL),
(65, 'locale', 'en', NULL, NULL),
(66, 'default_admin_theme', 'default', NULL, NULL),
(67, 'admin_locale_direction', 'ltr', NULL, NULL),
(68, 'theme-ripple-show_site_name', '0', NULL, NULL),
(69, 'theme-ripple-seo_title', 'Istanbul Airport', NULL, NULL),
(70, 'theme-ripple-seo_description', '', NULL, NULL),
(71, 'theme-ripple-seo_og_image', '', NULL, NULL),
(72, 'theme-ripple-primary_font', 'Roboto', NULL, NULL),
(73, 'theme-ripple-primary_color', '#E01514', NULL, NULL),
(74, 'theme-ripple-facebook_comment_enabled_in_gallery', 'no', NULL, NULL),
(75, 'theme-ripple-facebook_chat_enabled', 'no', NULL, NULL),
(76, 'theme-ripple-facebook_page_id', '', NULL, NULL),
(77, 'theme-ripple-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(78, 'theme-ripple-facebook_app_id', '', NULL, NULL),
(79, 'theme-ripple-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(80, 'theme-ripple-number_of_posts_in_a_category', '12', NULL, NULL),
(81, 'theme-ripple-number_of_posts_in_a_tag', '12', NULL, NULL),
(82, 'theme-ripple-cookie_consent_enable', 'yes', NULL, NULL),
(83, 'theme-ripple-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(84, 'theme-ripple-cookie_consent_background_color', '#000000', NULL, NULL),
(85, 'theme-ripple-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(86, 'theme-ripple-cookie_consent_max_width', '1170', NULL, NULL),
(87, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(88, 'google_analytics', 'UA-220401973-1', NULL, NULL),
(89, 'analytics_view_id', '260907810', NULL, NULL),
(90, 'analytics_service_account_credentials', '{\r\n  \"type\": \"service_account\",\r\n  \"project_id\": \"istanbulairport\",\r\n  \"private_key_id\": \"4abff5cb8355446f8242c3f0b70bba91fed2656e\",\r\n  \"private_key\": \"-----BEGIN PRIVATE KEY-----\\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCJxEgViOUVanp2\\nwOoKWPcqkBgF5ppT2BbdydoP27zUs78tVzpXmOqT4r52C/aO9yVuEQLD6+qdvAj1\\n6WWLrbGIUGfrlgZ1GGkkTO3LgATSNpZLrjSySsS7QvMtXDZa4HF3OkO7F8knqA74\\nBxUK42J2VQbq48OzdgGYvYKrTUaSsaNpSNyC1jAzF1CWgKeYhhKHvynUkxOrCLpK\\n4Wc5EDJx18nvuVQkp5ufJWH7aAiX92pdhp6zdK+yPXFoJ1pZMHZbGxqD34g8kyew\\nbptreJphfQxBFin39QIeIDs/jc1eol2GqpXQlzTBW25Wy5VfrtTQ0ccNp4k21I3F\\n95Jdo4snAgMBAAECggEAC531OiOmCvfvRbj0w1SchbFK5Ux8clouwMW2+/lajfvD\\nljjcdECHygVSbDU2taLaPCghDzut4rPVdERvH1J76EkSH50yBDO/wfjetcygxh0m\\nRVF2ThvcmlyF5wBMm73WCOjCh1yfxhaiKdYRty5UwjJfTUqm2P44Gj94wlCCL/e9\\nFBFtI6GuVLFjAcqqqcohnrwECdGSmYTUpyvbcJwkG5Y1cWzwNUJrgRuefLiWs9jv\\nuyukRM4Ff2hAfvoSJi7YdQR0DRmbMYEL8QHOT2MBanLeWE3jkga8IIbS9vaDVyx3\\nyNVfr3cq4GUdZTbJpq6tJNJvbDCZuTPLzH7IhB7yoQKBgQC+Qw76tafVhqgr1ph5\\nVRwc8Y1BVnBYeP1hjYrQaJH8x4CIO9GVlXWCP4Qa+AIdzJJDDTvgSPAHZz4pXh/x\\nN5QNvxvljebzQO8PJxZIktsr2yL4U0H8gXuQxdi7smjsYDcX/yZtcc/zYK8JQj9N\\nppxBlMRe5JAjqi1xc1JvPcTSlwKBgQC5XfIOKVPBK6bqa31Ob+jaC7gyD/cTMNXd\\noGyQhg4K0CwwkIMB460pQOlkJonv9mpoXNAew5nAZGzPep2SGbx3QQV5C+HueaVL\\niU92Cw/wAmDGAS5oDPs0I6CCct8xrFuZxzQ1u/0FdIAWl75Yy2rAp66GUbNjTdwy\\nj2UOPKlt8QKBgQC0/UeXmQyCI+mAYlCDQ0JOCj5sRBT1JIssrJ+7Z25Qf1u2vOi/\\nmgDBmThLC1fADyWnoUQvNFMZR84rPf220j8F4KFh+l4TUtbWnEEnYoQZsQkQHutr\\nj6UC8CIfUzVafqCKNE7S1+yQwY1gimN7s517CVDQUC8Jrk4yWRi295RvGwKBgB0o\\nhvvtSkx3lmEHmYVuGx25fDb7xezR4MJlCs7NF4Zh6qGVCdaRPtrfaBcl7Mq/Y0uZ\\nVe+Q6y2VXnxgmEq0G65Snw7EbLy7i+HO7p3t7YrehOSAqREbAaTY+dWrRiqlJx+Q\\nc0kEki96fO+Q3RNQpDE77zsXvPUg+UNGxSmxJyGxAoGBAI3BnTPtWIuUDOnjuv9n\\nD0rQ5mGnJCRvrXfoainj3TR8Yde4gkS5Smup51Bb3vghoIPfNeNLjvp8PScOaLFI\\nWreRp6eP040pV6vT3/jPlr0mW1j1mUGLOcAcodztwFIKDPm1TDpBrI09lBWFz5y9\\nEr8u2Wot3FBq7xNcVdQj4g2L\\n-----END PRIVATE KEY-----\\n\",\r\n  \"client_email\": \"smartcode@istanbulairport.iam.gserviceaccount.com\",\r\n  \"client_id\": \"108525345586883456770\",\r\n  \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\r\n  \"token_uri\": \"https://oauth2.googleapis.com/token\",\r\n  \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\r\n  \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/smartcode%40istanbulairport.iam.gserviceaccount.com\"\r\n}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(2, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(3, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(4, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(5, 'trang-chu', 5, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(6, 'tin-tuc', 6, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(7, 'lien-he', 7, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(8, 'cookie-policy', 8, 'Botble\\Page\\Models\\Page', '', '2021-04-06 23:41:03', '2021-04-06 23:41:03'),
(9, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(10, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(11, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(12, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(13, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(14, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(15, 'hoan-hao', 7, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(16, 'ngay-moi', 8, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(17, 'ngay-hanh-phuc', 9, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(18, 'thien-nhien', 10, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(19, 'buoi-sang', 11, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(20, 'nghe-thuat', 12, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(21, 'uncategorized', 1, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(22, 'events', 2, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(24, 'culture', 4, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2022-02-02 22:29:13'),
(26, 'food', 6, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2022-02-02 22:30:11'),
(28, 'khong-phan-loai', 8, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(29, 'su-kien', 9, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(30, 'du-an', 10, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(31, 'doanh-nghiep', 11, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(32, 'dau-tu', 12, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(33, 'tin-tuc-cap-nhat', 13, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(34, 'tai-nguyen', 14, 'Botble\\Blog\\Models\\Category', '', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(35, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(37, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(38, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(39, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(40, 'chung', 6, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(41, 'thiet-ke', 7, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(42, 'thoi-trang', 8, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(43, 'thuong-hieu', 9, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(44, 'hien-dai', 10, 'Botble\\Blog\\Models\\Tag', 'tag', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(78, 'evisa', 10, 'Botble\\Page\\Models\\Page', '', '2022-01-31 15:41:55', '2022-01-31 15:41:55'),
(79, 'airport-access', 11, 'Botble\\Page\\Models\\Page', '', '2022-01-31 16:22:45', '2022-01-31 16:22:45'),
(80, 'premium-service', 12, 'Botble\\Page\\Models\\Page', '', '2022-01-31 16:53:57', '2022-01-31 16:53:57'),
(81, 'visit-istanbul', 13, 'Botble\\Page\\Models\\Page', '', '2022-01-31 17:32:22', '2022-01-31 17:32:22'),
(82, 'covid-19', 14, 'Botble\\Page\\Models\\Page', '', '2022-01-31 17:41:35', '2022-01-31 17:41:35'),
(83, 'test-page', 15, 'Botble\\Page\\Models\\Page', '', '2022-02-01 20:42:19', '2022-02-01 20:42:19'),
(84, 'lifestyle', 15, 'Botble\\Blog\\Models\\Category', '', '2022-02-02 16:00:05', '2022-02-02 16:00:05'),
(85, 'tours', 16, 'Botble\\Blog\\Models\\Category', '', '2022-02-02 16:04:01', '2022-02-02 16:04:01'),
(86, 'parks', 17, 'Botble\\Blog\\Models\\Category', '', '2022-02-02 16:05:31', '2022-02-02 16:05:31'),
(87, 'locals', 18, 'Botble\\Blog\\Models\\Category', '', '2022-02-02 16:05:58', '2022-02-02 16:05:58'),
(88, 'covid-checks', 19, 'Botble\\Blog\\Models\\Category', '', '2022-02-02 16:06:54', '2022-02-02 16:06:54'),
(89, 'istanbuls-mall', 33, 'Botble\\Blog\\Models\\Post', '', '2022-02-02 22:56:55', '2022-02-02 22:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
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
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(3, 'Technology', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2021-04-06 23:41:12', '2022-01-31 16:06:22'),
(4, 'Updates', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2021-04-06 23:41:12', '2022-01-31 16:05:34'),
(5, 'News', 1, 'Botble\\ACL\\Models\\User', NULL, 'published', '2021-04-06 23:41:12', '2022-01-31 16:05:09'),
(6, 'Chung', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(7, 'Thiết kế', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(8, 'Thời trang', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(9, 'Thương hiệu', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-04-06 23:41:12', '2021-04-06 23:41:12'),
(10, 'Hiện đại', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2021-04-06 23:41:12', '2021-04-06 23:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_passes`
--

CREATE TABLE `tourist_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(22, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(24, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(25, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(32, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(33, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(34, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(35, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(36, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(37, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(38, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(39, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(40, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(41, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(42, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(43, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(44, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(45, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(46, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(47, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(48, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(49, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(50, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(51, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(52, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(53, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(54, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(55, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(56, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(57, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(58, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(59, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(60, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(61, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(62, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(63, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(64, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(65, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(66, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(67, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(68, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(69, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(70, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(71, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(72, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(73, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(74, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(75, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(76, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(77, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(78, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(79, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(80, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(81, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(82, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(83, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(84, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(85, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(86, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(87, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(88, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(89, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(90, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(91, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(92, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(93, 0, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(94, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(95, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(96, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(97, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(98, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(99, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(100, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(101, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(102, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(103, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(104, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(105, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(106, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(107, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(108, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(109, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(110, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(111, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(112, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(113, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(114, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(115, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(116, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(117, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(118, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(119, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(120, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(121, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(122, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(123, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(124, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(125, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(126, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(127, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(128, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(129, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(130, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(131, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(132, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(133, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(134, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(135, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(136, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(137, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(138, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(139, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(140, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(141, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(142, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(143, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(144, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(145, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(146, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(147, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(148, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(149, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(150, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(151, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(152, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(153, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(154, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(155, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(156, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(157, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(158, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(159, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(160, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(161, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(162, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(163, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(164, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(165, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(166, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(167, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(168, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(169, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(170, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(171, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(172, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(173, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(174, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(175, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(176, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(177, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(178, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(179, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(180, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(181, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(182, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(183, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(184, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(185, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(186, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(187, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(188, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(189, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(190, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(191, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(192, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(193, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(194, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(195, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(196, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(197, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(198, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(199, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(200, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(201, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(202, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(203, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(204, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(205, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(206, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(207, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(208, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(209, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(210, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(211, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(212, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(213, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(214, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(215, 0, 'en', 'core/acl/users', 'email', 'Email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(216, 0, 'en', 'core/acl/users', 'role', 'Role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(217, 0, 'en', 'core/acl/users', 'username', 'Username', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(218, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(219, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(220, 0, 'en', 'core/acl/users', 'message', 'Message', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(221, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(222, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(223, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(224, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(225, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(226, 0, 'en', 'core/acl/users', 'password', 'Password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(227, 0, 'en', 'core/acl/users', 'save', 'Save', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(228, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(229, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(230, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(231, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(232, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(233, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(234, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(235, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(236, 0, 'en', 'core/acl/users', 'close', 'Close', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(237, 0, 'en', 'core/acl/users', 'update', 'Update', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(238, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(239, 0, 'en', 'core/acl/users', 'users', 'Users', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(240, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(241, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(242, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(243, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(244, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(245, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(246, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(247, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(248, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(249, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(250, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(251, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(252, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(253, 0, 'en', 'core/acl/users', 'info.about', 'About', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(254, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(255, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(256, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(257, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(258, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(259, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(260, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(261, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(262, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(263, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(264, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(265, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(266, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(267, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(268, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(269, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(270, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(271, 0, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(272, 0, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(273, 0, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(274, 0, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(275, 0, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(276, 0, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(277, 0, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(278, 0, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(279, 0, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(280, 0, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(281, 0, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2021-09-13 21:22:40', '2021-09-13 21:23:02'),
(282, 0, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(283, 0, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(284, 0, 'vi', 'core/acl/auth', 'login.email', 'Email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(285, 0, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(286, 0, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(287, 0, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(288, 0, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(289, 0, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(290, 0, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(291, 0, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(292, 0, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(293, 0, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(294, 0, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(295, 0, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(296, 0, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(297, 0, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(298, 0, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(299, 0, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(300, 0, 'vi', 'core/acl/auth', 'reset.password_confirmation', 'Xác nhận mật khẩu mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(301, 0, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(302, 0, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(303, 0, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(304, 0, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(305, 0, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(306, 0, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(307, 0, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(308, 0, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(309, 0, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(310, 0, 'vi', 'core/acl/auth', 'languages', 'Ngôn ngữ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(311, 0, 'vi', 'core/acl/auth', 'password_confirmation', 'Xác nhận mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(312, 0, 'vi', 'core/acl/auth', 'reset_password', 'Khôi phục mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(313, 0, 'vi', 'core/acl/auth', 'sign_in_below', 'Đăng nhập', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(314, 0, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(315, 0, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(316, 0, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(317, 0, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(318, 0, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(319, 0, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(320, 0, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(321, 0, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(322, 0, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(323, 0, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(324, 0, 'vi', 'core/acl/permissions', 'name', 'Tên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(325, 0, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(326, 0, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(327, 0, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(328, 0, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(329, 0, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(330, 0, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(331, 0, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(332, 0, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(333, 0, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(334, 0, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(335, 0, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(336, 0, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(337, 0, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(338, 0, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(339, 0, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(340, 0, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(341, 0, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(342, 0, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(343, 0, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(344, 0, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(345, 0, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(346, 0, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(347, 0, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(348, 0, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(349, 0, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(350, 0, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(351, 0, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(352, 0, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(353, 0, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(354, 0, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(355, 0, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(356, 0, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(357, 0, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(358, 0, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(359, 0, 'vi', 'core/acl/permissions', 'action_unauthorized', 'Hành động này không được phép', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(360, 0, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(361, 0, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(362, 0, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(363, 0, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(364, 0, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(365, 0, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(366, 0, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(367, 0, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(368, 0, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(369, 0, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(370, 0, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(371, 0, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(372, 0, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(373, 0, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(374, 0, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(375, 0, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(376, 0, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(377, 0, 'vi', 'core/acl/users', 'email', 'Email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(378, 0, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(379, 0, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2021-09-13 21:22:41', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(380, 0, 'vi', 'core/acl/users', 'first_name', 'Họ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(381, 0, 'vi', 'core/acl/users', 'last_name', 'Tên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(382, 0, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(383, 0, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(384, 0, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(385, 0, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(386, 0, 'vi', 'core/acl/users', 'save', 'Lưu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(387, 0, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(388, 0, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(389, 0, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(390, 0, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(391, 0, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(392, 0, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(393, 0, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(394, 0, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(395, 0, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(396, 0, 'vi', 'core/acl/users', 'close', 'Đóng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(397, 0, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(398, 0, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(399, 0, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(400, 0, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(401, 0, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(402, 0, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(403, 0, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(404, 0, 'vi', 'core/acl/users', 'info.email', 'Email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(405, 0, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(406, 0, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(407, 0, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(408, 0, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(409, 0, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(410, 0, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(411, 0, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(412, 0, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(413, 0, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(414, 0, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(415, 0, 'vi', 'core/acl/users', 'gender.male', 'nam', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(416, 0, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(417, 0, 'vi', 'core/acl/users', 'statuses.activated', 'Đang hoạt động', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(418, 0, 'vi', 'core/acl/users', 'statuses.deactivated', 'Đã khoá', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(419, 0, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(420, 0, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(421, 0, 'vi', 'core/acl/users', 'make_super', 'Thiết lập quyền cao nhất', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(422, 0, 'vi', 'core/acl/users', 'remove_super', 'Loại bỏ quyền cao nhất', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(423, 0, 'vi', 'core/acl/users', 'is_super', 'Quyền cao nhất?', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(424, 0, 'vi', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(425, 0, 'vi', 'core/acl/users', 'password_confirmation', 'Nhập lại mật khẩu', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(426, 0, 'vi', 'core/acl/users', 'select_role', 'Chọn nhóm', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(427, 0, 'vi', 'core/acl/users', 'create_new_user', 'Tạo tài khoản quản trị viên mới', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(428, 0, 'vi', 'core/acl/users', 'cannot_delete_super_user', 'Vượt quyền hạn, không thể xoá quản trị viên cấp cao nhất!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(429, 0, 'vi', 'core/acl/users', 'assigned_role', 'Cấp quyền', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(430, 0, 'vi', 'core/acl/users', 'total_users', 'Tổng số người dùng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(431, 0, 'vi', 'core/acl/users', 'view_user_profile', 'Xem thông tin người dùng', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(432, 0, 'vi', 'core/acl/users', 'no_role_assigned', 'Chưa có quyền nào', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(433, 0, 'en', 'core/base/base', 'yes', 'Yes', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(434, 0, 'en', 'core/base/base', 'no', 'No', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(435, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(436, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(437, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(438, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(439, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(440, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(441, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(442, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(443, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(444, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(445, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(446, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(447, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(448, 0, 'en', 'core/base/base', 'image', 'Image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(449, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(450, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(451, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(452, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(453, 0, 'en', 'core/base/base', 'tools', 'Tools', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(454, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(455, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(456, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(457, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(458, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(459, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(460, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(461, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(464, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(465, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(466, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(467, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(468, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(469, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(470, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(471, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(472, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(473, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(474, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(475, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(476, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(477, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(478, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(479, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(480, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(481, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://botble.local/admin\">clicking here</a>.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(482, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(483, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(484, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(485, 0, 'en', 'core/base/forms', 'save', 'Save', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(486, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(487, 0, 'en', 'core/base/forms', 'image', 'Image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(488, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(489, 0, 'en', 'core/base/forms', 'create', 'Create', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(490, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(491, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(492, 0, 'en', 'core/base/forms', 'ok', 'OK', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(493, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(494, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(495, 0, 'en', 'core/base/forms', 'template', 'Template', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(496, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(497, 0, 'en', 'core/base/forms', 'file', 'File', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(498, 0, 'en', 'core/base/forms', 'content', 'Content', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(499, 0, 'en', 'core/base/forms', 'description', 'Description', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(500, 0, 'en', 'core/base/forms', 'name', 'Name', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(501, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(502, 0, 'en', 'core/base/forms', 'title', 'Title', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(503, 0, 'en', 'core/base/forms', 'value', 'Value', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(504, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(505, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(506, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(507, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(508, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(509, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(510, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(511, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(512, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(513, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(514, 0, 'en', 'core/base/forms', 'update', 'Update', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(515, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(516, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(517, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(518, 0, 'en', 'core/base/forms', 'order', 'Order', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(519, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(520, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(521, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(522, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(523, 0, 'en', 'core/base/forms', 'add', 'Add', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(524, 0, 'en', 'core/base/forms', 'link', 'Link', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(525, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(526, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(527, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(528, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(529, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(530, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(531, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(532, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(533, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(534, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(535, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(536, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(537, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(538, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(539, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(540, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(541, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(542, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(543, 0, 'en', 'core/base/layouts', 'home', 'Home', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(544, 0, 'en', 'core/base/layouts', 'search', 'Search', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(545, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(546, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(547, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(548, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(549, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(550, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(551, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(552, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(553, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(554, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(555, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(556, 0, 'en', 'core/base/notices', 'error', 'Error!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(557, 0, 'en', 'core/base/notices', 'success', 'Success!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(558, 0, 'en', 'core/base/notices', 'info', 'Info!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(559, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(560, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(561, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(562, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(563, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(564, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(565, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(566, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(567, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(568, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(569, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(570, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(571, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(572, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(573, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(574, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(575, 0, 'en', 'core/base/system', 'user.email', 'Email', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(576, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(577, 0, 'en', 'core/base/system', 'user.username', 'Username', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(578, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(579, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(580, 0, 'en', 'core/base/system', 'user.create', 'Create', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(581, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(582, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(583, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(584, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(585, 0, 'en', 'core/base/system', 'options.info', 'System information', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(586, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(587, 0, 'en', 'core/base/system', 'info.title', 'System information', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(588, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(589, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(590, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(591, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(592, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(593, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(594, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(595, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(596, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(597, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(598, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(599, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(600, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(601, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(602, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(603, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(604, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(605, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(606, 0, 'en', 'core/base/system', 'database', 'Database', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(607, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(608, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(609, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(610, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(611, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(612, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(613, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(614, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(615, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(616, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(617, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(618, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(619, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(620, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(621, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(622, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(623, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(624, 0, 'en', 'core/base/system', 'version', 'Version', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(625, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(626, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(627, 0, 'en', 'core/base/tables', 'id', 'ID', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(628, 0, 'en', 'core/base/tables', 'name', 'Name', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(629, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(630, 0, 'en', 'core/base/tables', 'title', 'Title', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(631, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(632, 0, 'en', 'core/base/tables', 'order', 'Order', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(633, 0, 'en', 'core/base/tables', 'status', 'Status', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(634, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(635, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(636, 0, 'en', 'core/base/tables', 'description', 'Description', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(637, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(638, 0, 'en', 'core/base/tables', 'url', 'URL', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(639, 0, 'en', 'core/base/tables', 'author', 'Author', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(640, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(641, 0, 'en', 'core/base/tables', 'column', 'Column', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(642, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(643, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(644, 0, 'en', 'core/base/tables', 'views', 'Views', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(645, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(646, 0, 'en', 'core/base/tables', 'session', 'Session', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(647, 0, 'en', 'core/base/tables', 'activated', 'activated', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(648, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(649, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(650, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(651, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(652, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(653, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(654, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(655, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(656, 0, 'en', 'core/base/tables', 'export', 'Export', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(657, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(658, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(659, 0, 'en', 'core/base/tables', 'print', 'Print', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(660, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(661, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(662, 0, 'en', 'core/base/tables', 'display', 'Display', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(663, 0, 'en', 'core/base/tables', 'all', 'All', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(664, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(665, 0, 'en', 'core/base/tables', 'action', 'Actions', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(666, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(667, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(668, 0, 'en', 'core/base/tables', 'save', 'Save', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(669, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(670, 0, 'en', 'core/base/tables', 'to', 'to', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(671, 0, 'en', 'core/base/tables', 'in', 'in', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(672, 0, 'en', 'core/base/tables', 'records', 'records', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(673, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(674, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2021-09-13 21:22:41', '2021-09-13 21:23:02'),
(675, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(676, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(677, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(678, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(679, 0, 'en', 'core/base/tables', 'template', 'Template', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(680, 0, 'en', 'core/base/tables', 'email', 'Email', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(681, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(682, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(683, 0, 'en', 'core/base/tables', 'image', 'Image', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(684, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(685, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(686, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(687, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(688, 0, 'en', 'core/base/tabs', 'file', 'Files', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(689, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(690, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(691, 0, 'vi', 'core/base/base', 'yes', 'Có', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(692, 0, 'vi', 'core/base/base', 'no', 'Không', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(693, 0, 'vi', 'core/base/base', 'is_default', 'Mặc định?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(694, 0, 'vi', 'core/base/base', 'proc_close_disabled_error', 'Hàm proc_close() đã bị tắt. Vui lòng liên hệ nhà cung cấp hosting để mở hàm này. Hoặc có thể thêm vào .env: CAN_EXECUTE_COMMAND=false để tắt tính năng này.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(695, 0, 'vi', 'core/base/base', 'add_image', 'Thêm ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(696, 0, 'vi', 'core/base/base', 'change_image', 'Đổi ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(697, 0, 'vi', 'core/base/base', 'delete_image', 'Xóa ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(698, 0, 'vi', 'core/base/base', 'email_template.date_time', 'Ngày giờ hiện tại', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(699, 0, 'vi', 'core/base/base', 'email_template.date_year', 'Năm hiện tại', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(700, 0, 'vi', 'core/base/base', 'email_template.footer', 'Mẫu chân trang email', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(701, 0, 'vi', 'core/base/base', 'email_template.header', 'Mẫu đầu trang email', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(702, 0, 'vi', 'core/base/base', 'email_template.site_admin_email', 'Email quản trị viên', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(703, 0, 'vi', 'core/base/base', 'email_template.site_logo', 'Logo của trang', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(704, 0, 'vi', 'core/base/base', 'email_template.site_title', 'Tiêu đề trang', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(705, 0, 'vi', 'core/base/base', 'email_template.site_url', 'URL trang', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(706, 0, 'vi', 'core/base/base', 'image', 'Hình ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(707, 0, 'vi', 'core/base/base', 'preview_image', 'Ảnh xem trước', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(708, 0, 'vi', 'core/base/base', 'select_image', 'Chọn ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(709, 0, 'vi', 'core/base/base', 'to_add_more_image', 'để thêm hình ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(710, 0, 'vi', 'core/base/base', 'using_button', 'Sử dụng nút', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(711, 0, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(712, 0, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(713, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(714, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(715, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(716, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(717, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(718, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(719, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(720, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(721, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(722, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(723, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(724, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(725, 0, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(726, 0, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(727, 0, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(728, 0, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(729, 0, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(730, 0, 'vi', 'core/base/enums', 'statuses.published', 'Đã xuất bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(731, 0, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(732, 0, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(733, 0, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(734, 0, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(735, 0, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(736, 0, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(737, 0, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(738, 0, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(739, 0, 'vi', 'core/base/errors', 'not_found', 'Không tìm thấy', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(740, 0, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(741, 0, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(742, 0, 'vi', 'core/base/forms', 'save', 'Lưu', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(743, 0, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(744, 0, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(745, 0, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(746, 0, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(747, 0, 'vi', 'core/base/forms', 'edit', 'Sửa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(748, 0, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(749, 0, 'vi', 'core/base/forms', 'ok', 'OK', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(750, 0, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(751, 0, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(752, 0, 'vi', 'core/base/forms', 'template', 'Template', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(753, 0, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(754, 0, 'vi', 'core/base/forms', 'file', 'Tập tin', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(755, 0, 'vi', 'core/base/forms', 'content', 'Nội dung', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(756, 0, 'vi', 'core/base/forms', 'description', 'Mô tả', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(757, 0, 'vi', 'core/base/forms', 'name', 'Tên', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(758, 0, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(759, 0, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(760, 0, 'vi', 'core/base/forms', 'parent', 'Cha', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(761, 0, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(762, 0, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(763, 0, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(764, 0, 'vi', 'core/base/forms', 'slug', 'Slug', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(765, 0, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(766, 0, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(767, 0, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(768, 0, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(769, 0, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(770, 0, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(771, 0, 'vi', 'core/base/forms', 'add', 'Thêm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(772, 0, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(773, 0, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(774, 0, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(775, 0, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(776, 0, 'vi', 'core/base/forms', 'link', 'Liên kết', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(777, 0, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(778, 0, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(779, 0, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(780, 0, 'vi', 'core/base/forms', 'value', 'Giá trị', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(781, 0, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(782, 0, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(783, 0, 'vi', 'core/base/forms', 'remove_file', 'Xóa tập tin', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(784, 0, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(785, 0, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(786, 0, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2021-09-13 21:22:42', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(787, 0, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(788, 0, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(789, 0, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(790, 0, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(791, 0, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(792, 0, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(793, 0, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(794, 0, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(795, 0, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(796, 0, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(797, 0, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(798, 0, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(799, 0, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(800, 0, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(801, 0, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(802, 0, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(803, 0, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(804, 0, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(805, 0, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(806, 0, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(807, 0, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(808, 0, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(809, 0, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(810, 0, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(811, 0, 'vi', 'core/base/notices', 'success', 'Thành công!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(812, 0, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(813, 0, 'vi', 'core/base/notices', 'enum.validate_message', 'Giá trị của :attribute không hợp lệ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(814, 0, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(815, 0, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(816, 0, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(817, 0, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(818, 0, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(819, 0, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(820, 0, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(821, 0, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(822, 0, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(823, 0, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(824, 0, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(825, 0, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(826, 0, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(827, 0, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(828, 0, 'vi', 'core/base/system', 'user.email', 'Email', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(829, 0, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(830, 0, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(831, 0, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(832, 0, 'vi', 'core/base/system', 'user.create', 'Thêm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(833, 0, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(834, 0, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(835, 0, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(836, 0, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(837, 0, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(838, 0, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(839, 0, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(840, 0, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(841, 0, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(842, 0, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(843, 0, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(844, 0, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(845, 0, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(846, 0, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(847, 0, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(848, 0, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(849, 0, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(850, 0, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(851, 0, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(852, 0, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(853, 0, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(854, 0, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(855, 0, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(856, 0, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(857, 0, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(858, 0, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(859, 0, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(860, 0, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(861, 0, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(862, 0, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(863, 0, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(864, 0, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(865, 0, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(866, 0, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(867, 0, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(868, 0, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(869, 0, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(870, 0, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(871, 0, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(872, 0, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(873, 0, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(874, 0, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(875, 0, 'vi', 'core/base/system', 'version', 'Phiên bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(876, 0, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(877, 0, 'vi', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(878, 0, 'vi', 'core/base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(879, 0, 'vi', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(880, 0, 'vi', 'core/base/system', 'php_version_error', 'Phiên bản PHP phải >= :version', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(881, 0, 'vi', 'core/base/tables', 'id', 'ID', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(882, 0, 'vi', 'core/base/tables', 'name', 'Tên', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(883, 0, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(884, 0, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(885, 0, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(886, 0, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(887, 0, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(888, 0, 'vi', 'core/base/tables', 'url', 'URL', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(889, 0, 'vi', 'core/base/tables', 'author', 'Người tạo', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(890, 0, 'vi', 'core/base/tables', 'column', 'Cột', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(891, 0, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(892, 0, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(893, 0, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(894, 0, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(895, 0, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(896, 0, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(897, 0, 'vi', 'core/base/tables', 'description', 'Mô tả', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(898, 0, 'vi', 'core/base/tables', 'session', 'Phiên', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(899, 0, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(900, 0, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(901, 0, 'vi', 'core/base/tables', 'edit', 'Sửa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(902, 0, 'vi', 'core/base/tables', 'delete', 'Xóa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(903, 0, 'vi', 'core/base/tables', 'action', 'Hành động', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(904, 0, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(905, 0, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(906, 0, 'vi', 'core/base/tables', 'all', 'Tất cả', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(907, 0, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(908, 0, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(909, 0, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(910, 0, 'vi', 'core/base/tables', 'csv', 'CSV', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(911, 0, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(912, 0, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(913, 0, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(914, 0, 'vi', 'core/base/tables', 'excel', 'Excel', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(915, 0, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(916, 0, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(917, 0, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(918, 0, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(919, 0, 'vi', 'core/base/tables', 'pdf', 'PDF', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(920, 0, 'vi', 'core/base/tables', 'print', 'In', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(921, 0, 'vi', 'core/base/tables', 'records', 'bản ghi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(922, 0, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(923, 0, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(924, 0, 'vi', 'core/base/tables', 'save', 'Lưu', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(925, 0, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(926, 0, 'vi', 'core/base/tables', 'template', 'Giao diện', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(927, 0, 'vi', 'core/base/tables', 'to', 'đến', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(928, 0, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(929, 0, 'vi', 'core/base/tables', 'email', 'Email', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(930, 0, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(931, 0, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(932, 0, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(933, 0, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(934, 0, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(935, 0, 'vi', 'core/base/tables', 'slug', 'Slug', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(936, 0, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(937, 0, 'vi', 'core/base/tables', 'bulk_changes', 'Thay đổi hàng loạt', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(938, 0, 'vi', 'core/base/tables', 'confirm_delete_many_msg', 'Bạn có chắc chắn muốn xóa những bản ghi này?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(939, 0, 'vi', 'core/base/tables', 'submit', 'Hoàn tất', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(940, 0, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(941, 0, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(942, 0, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(943, 0, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(944, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(945, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(946, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(947, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(948, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(949, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(950, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(951, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(952, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(953, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(954, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(955, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(956, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(957, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(958, 0, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(959, 0, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(960, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(961, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(962, 0, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(963, 0, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(964, 0, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(965, 0, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(966, 0, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(967, 0, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(968, 0, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(969, 0, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(970, 0, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(971, 0, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(972, 0, 'en', 'core/media/media', 'filter', 'Filter', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(973, 0, 'en', 'core/media/media', 'everything', 'Everything', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(974, 0, 'en', 'core/media/media', 'image', 'Image', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(975, 0, 'en', 'core/media/media', 'video', 'Video', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(976, 0, 'en', 'core/media/media', 'document', 'Document', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(977, 0, 'en', 'core/media/media', 'view_in', 'View in', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(978, 0, 'en', 'core/media/media', 'all_media', 'All media', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(979, 0, 'en', 'core/media/media', 'trash', 'Trash', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(980, 0, 'en', 'core/media/media', 'recent', 'Recent', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(981, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(982, 0, 'en', 'core/media/media', 'upload', 'Upload', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(983, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(984, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(985, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(986, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(987, 0, 'en', 'core/media/media', 'sort', 'Sort', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(988, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(989, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(990, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(991, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(992, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(993, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(994, 0, 'en', 'core/media/media', 'actions', 'Actions', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(995, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(996, 0, 'en', 'core/media/media', 'insert', 'Insert', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(997, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(998, 0, 'en', 'core/media/media', 'create', 'Create', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(999, 0, 'en', 'core/media/media', 'rename', 'Rename', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1000, 0, 'en', 'core/media/media', 'close', 'Close', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1001, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1002, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1003, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1004, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1005, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1006, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1007, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1008, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1009, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1010, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1011, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1012, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1013, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1014, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1015, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1016, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1017, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1018, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1019, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-09-13 21:22:42', '2021-09-13 21:23:02'),
(1020, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1021, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1022, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1023, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1024, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1025, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1026, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1027, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1028, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1029, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1030, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1031, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1032, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1033, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1034, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1035, 0, 'en', 'core/media/media', 'add', 'Add media', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1036, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1037, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1038, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1039, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1040, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1041, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1042, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1043, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1044, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1045, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1046, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1047, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1048, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1049, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1050, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1051, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1052, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1053, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1054, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1055, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1056, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1057, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1058, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1059, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1060, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1061, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1062, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1063, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1064, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1065, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1066, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1067, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1068, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1069, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1070, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1071, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1072, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1073, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1074, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1075, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1076, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1077, 0, 'en', 'core/media/media', 'download_link', 'Download', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1078, 0, 'en', 'core/media/media', 'url', 'URL', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1079, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1080, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1081, 0, 'vi', 'core/media/media', 'filter', 'Lọc', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1082, 0, 'vi', 'core/media/media', 'everything', 'Tất cả', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1083, 0, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1084, 0, 'vi', 'core/media/media', 'video', 'Phim', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1085, 0, 'vi', 'core/media/media', 'document', 'Tài liệu', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1086, 0, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1087, 0, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1088, 0, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1089, 0, 'vi', 'core/media/media', 'recent', 'Gần đây', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1090, 0, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1091, 0, 'vi', 'core/media/media', 'upload', 'Tải lên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1092, 0, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1093, 0, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1094, 0, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1095, 0, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1096, 0, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1097, 0, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1098, 0, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1099, 0, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1100, 0, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1101, 0, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1102, 0, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1103, 0, 'vi', 'core/media/media', 'actions', 'Hành động', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1104, 0, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1105, 0, 'vi', 'core/media/media', 'insert', 'Chèn', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1106, 0, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1107, 0, 'vi', 'core/media/media', 'create', 'Tạo', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1108, 0, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1109, 0, 'vi', 'core/media/media', 'close', 'Đóng', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1110, 0, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1111, 0, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1112, 0, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1113, 0, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1114, 0, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1115, 0, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1116, 0, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1117, 0, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1118, 0, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1119, 0, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1120, 0, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1121, 0, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1122, 0, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1123, 0, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1124, 0, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1125, 0, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1126, 0, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1127, 0, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1128, 0, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1129, 0, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1130, 0, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1131, 0, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1132, 0, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1133, 0, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1134, 0, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1135, 0, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1136, 0, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1137, 0, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1138, 0, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1139, 0, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1140, 0, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1141, 0, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1142, 0, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1143, 0, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1144, 0, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1145, 0, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1146, 0, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1147, 0, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1148, 0, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1149, 0, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1150, 0, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1151, 0, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1152, 0, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1153, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1154, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1155, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1156, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1157, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1158, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1159, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1160, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1161, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1162, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1163, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1164, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1165, 0, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1166, 0, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1167, 0, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1168, 0, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1169, 0, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1170, 0, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1171, 0, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1172, 0, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1173, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1174, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1175, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1176, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1177, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1178, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1179, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1180, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1181, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1182, 0, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1183, 0, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1184, 0, 'vi', 'core/media/media', 'path_invalid', 'Vui lòng cung cấp 1 đường dẫn hợp lệ', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1185, 0, 'vi', 'core/media/media', 'url_invalid', 'Vui lòng cung cấp 1 đường dẫn hợp lệ', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1186, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2021-09-13 21:22:43', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1187, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1188, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1189, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1190, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1191, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1192, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1193, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1194, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1195, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1196, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1197, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1198, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1199, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1200, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1201, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1202, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1203, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1204, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1205, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1206, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1207, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1208, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1209, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1210, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1211, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1212, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1213, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1214, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1215, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1216, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1217, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1218, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1219, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1220, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1221, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1222, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1223, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1224, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1225, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1226, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1227, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1228, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1229, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1230, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1231, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1232, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1233, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1234, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1235, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1236, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1237, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1238, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1239, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1240, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1241, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1242, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1243, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1244, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1245, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1246, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1247, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1248, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1249, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1250, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1251, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1252, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1253, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1254, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1255, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1256, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1257, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1258, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1259, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1260, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1261, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1262, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1263, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1264, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1265, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1266, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1267, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1268, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1269, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1270, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1271, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1272, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1273, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1274, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1275, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1276, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1277, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1278, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1279, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1280, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1281, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1282, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1283, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1284, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1285, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1286, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1287, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1288, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1289, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1290, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1291, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1292, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1293, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1294, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1295, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1296, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1297, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1298, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1299, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1300, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1301, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1302, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1303, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1304, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1305, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1306, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1307, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1308, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1309, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1310, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1311, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1312, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1313, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1314, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1315, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1316, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1317, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1318, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1319, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1320, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1321, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1322, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1323, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1324, 0, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1325, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1326, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1327, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1328, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1329, 0, 'en', 'core/setting/setting', 'template', 'Template', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1330, 0, 'en', 'core/setting/setting', 'description', 'Description', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1331, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-09-13 21:22:43', '2021-09-13 21:23:02'),
(1332, 0, 'en', 'core/setting/setting', 'send', 'Send', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1333, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1334, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1335, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1336, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1337, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1338, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1339, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1340, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1341, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1342, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1343, 0, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1344, 0, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1345, 0, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1346, 0, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1347, 0, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1348, 0, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1349, 0, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1350, 0, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1351, 0, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1352, 0, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1353, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1354, 0, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1355, 0, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1356, 0, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1357, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1358, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1359, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1360, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1361, 0, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1362, 0, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1363, 0, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1364, 0, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1365, 0, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1366, 0, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1367, 0, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1368, 0, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1369, 0, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1370, 0, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1371, 0, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1372, 0, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1373, 0, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1374, 0, 'vi', 'core/setting/setting', 'general.locale', 'Ngôn ngữ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1375, 0, 'vi', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1376, 0, 'vi', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1377, 0, 'vi', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1378, 0, 'vi', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1379, 0, 'vi', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1380, 0, 'vi', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1381, 0, 'vi', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1382, 0, 'vi', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1383, 0, 'vi', 'core/setting/setting', 'general.locale_direction', 'Hướng chữ viết', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1384, 0, 'vi', 'core/setting/setting', 'general.select', '-- Lựa chọn --', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1385, 0, 'vi', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1386, 0, 'vi', 'core/setting/setting', 'general.show_on_front', 'Thiết lập trang chủ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1387, 0, 'vi', 'core/setting/setting', 'general.show_site_name', 'Hiển thị tên trang web sau tiêu đề trang, tách biệt bằng \"-\"?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1388, 0, 'vi', 'core/setting/setting', 'general.time_zone', 'Múi giờ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1389, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_description', 'Công cụ quản trị trang web của Google (GWT) là phần mềm miễn phí giúp bạn quản lý khía cạnh kỹ thuật của trang web của mình', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1390, 0, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1391, 0, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1392, 0, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1393, 0, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1394, 0, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1395, 0, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1396, 0, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1397, 0, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1398, 0, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1399, 0, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1400, 0, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1401, 0, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1402, 0, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1403, 0, 'vi', 'core/setting/setting', 'email.mailer', 'Loại', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1404, 0, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1405, 0, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1406, 0, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1407, 0, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1408, 0, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1409, 0, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1410, 0, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1411, 0, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1412, 0, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1413, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1414, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1415, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1416, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1417, 0, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1418, 0, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1419, 0, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1420, 0, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1421, 0, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1422, 0, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1423, 0, 'vi', 'core/setting/setting', 'email.default', 'Mặc định', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1424, 0, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1425, 0, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1426, 0, 'vi', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1427, 0, 'vi', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1428, 0, 'vi', 'core/setting/setting', 'email.encryption_placeholder', 'Kiểu mã hóa: ssl hoặc tls', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1429, 0, 'vi', 'core/setting/setting', 'email.log_channel', 'Phương thức log', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1430, 0, 'vi', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1431, 0, 'vi', 'core/setting/setting', 'email.ses_key', 'Key', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1432, 0, 'vi', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1433, 0, 'vi', 'core/setting/setting', 'email.ses_region', 'Region', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1434, 0, 'vi', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1435, 0, 'vi', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1436, 0, 'vi', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1437, 0, 'vi', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Sử dụng job queue để gửi email (Trước tiên phải thiết lập Queue https://laravel.com/docs/queues#supervisor-configuration)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1438, 0, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1439, 0, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1440, 0, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1441, 0, 'vi', 'core/setting/setting', 'enable', 'Bật', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1442, 0, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1443, 0, 'vi', 'core/setting/setting', 'email_setting_title', 'Cấu hình email', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1444, 0, 'vi', 'core/setting/setting', 'field_type_not_exists', 'Loại field này không được hỗ trợ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1445, 0, 'vi', 'core/setting/setting', 'test_email_description', 'Để gửi email thử nghiệm, hãy đảm bảo rằng bạn đã cập nhật cấu hình để gửi thư!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1446, 0, 'vi', 'core/setting/setting', 'test_email_input_placeholder', 'Nhập email mà bạn muốn gửi email thử nghiệm.', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1447, 0, 'vi', 'core/setting/setting', 'test_email_modal_title', 'Gửi một email thử nghiệm', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1448, 0, 'vi', 'core/setting/setting', 'test_email_send_success', 'Gửi email thành công!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1449, 0, 'vi', 'core/setting/setting', 'send', 'Gửi', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1450, 0, 'vi', 'core/setting/setting', 'license.buyer', 'Tên đăng nhập', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1451, 0, 'vi', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1452, 0, 'vi', 'core/setting/setting', 'locale_direction_ltr', 'Trái sang phải', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1453, 0, 'vi', 'core/setting/setting', 'locale_direction_rtl', 'Phải sang trái', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1454, 0, 'vi', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1455, 0, 'vi', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1456, 0, 'vi', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1457, 0, 'vi', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1458, 0, 'vi', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1459, 0, 'vi', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1460, 0, 'vi', 'core/setting/setting', 'media.chunk_size_placeholder', 'Mặc định: 1048576 ~ 1MB', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1461, 0, 'vi', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1462, 0, 'vi', 'core/setting/setting', 'media.description', 'Cài đặt cho media', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1463, 0, 'vi', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1464, 0, 'vi', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Bật DO Spaces CDN?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1465, 0, 'vi', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1466, 0, 'vi', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1467, 0, 'vi', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1468, 0, 'vi', 'core/setting/setting', 'media.driver', 'Driver', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1469, 0, 'vi', 'core/setting/setting', 'media.enable_chunk', 'Bật chunk size upload?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1470, 0, 'vi', 'core/setting/setting', 'media.enable_watermark', 'Bật watermark?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1471, 0, 'vi', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1472, 0, 'vi', 'core/setting/setting', 'media.max_file_size_placeholder', 'Mặc định: 1048576 ~ 1GB', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1473, 0, 'vi', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1474, 0, 'vi', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://ten-mien-cua-ban.com', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1475, 0, 'vi', 'core/setting/setting', 'media.title', 'Media', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1476, 0, 'vi', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1477, 0, 'vi', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Mặc định: 70 (%)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1478, 0, 'vi', 'core/setting/setting', 'media.watermark_position', 'Vị trí watermark', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1479, 0, 'vi', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bên trái dưới cùng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1480, 0, 'vi', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bên phải dưới cùng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1481, 0, 'vi', 'core/setting/setting', 'media.watermark_position_center', 'Chính giữa', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1482, 0, 'vi', 'core/setting/setting', 'media.watermark_position_top_left', 'Bên trái trên cùng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1483, 0, 'vi', 'core/setting/setting', 'media.watermark_position_top_right', 'Bên phải trên cùng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1484, 0, 'vi', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1485, 0, 'vi', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1486, 0, 'vi', 'core/setting/setting', 'media.watermark_size', 'Kích thước của watermark (%)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1487, 0, 'vi', 'core/setting/setting', 'media.watermark_size_placeholder', 'Mặc định: 10 (%)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1488, 0, 'vi', 'core/setting/setting', 'media.watermark_source', 'Hình ảnh watermark', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1489, 0, 'en', 'core/table/table', 'operations', 'Operations', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1490, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1491, 0, 'en', 'core/table/table', 'display', 'Display', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1492, 0, 'en', 'core/table/table', 'all', 'All', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1493, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1494, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1495, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1496, 0, 'en', 'core/table/table', 'to', 'to', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1497, 0, 'en', 'core/table/table', 'in', 'in', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1498, 0, 'en', 'core/table/table', 'records', 'records', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1499, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1500, 0, 'en', 'core/table/table', 'no_record', 'No record', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1501, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1502, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1503, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1504, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1505, 0, 'en', 'core/table/table', 'delete', 'Delete', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1506, 0, 'en', 'core/table/table', 'close', 'Close', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1507, 0, 'en', 'core/table/table', 'contains', 'Contains', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1508, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1509, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1510, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1511, 0, 'en', 'core/table/table', 'value', 'Value', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1512, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1513, 0, 'en', 'core/table/table', 'reset', 'Reset', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1514, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1515, 0, 'en', 'core/table/table', 'apply', 'Apply', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1516, 0, 'en', 'core/table/table', 'filters', 'Filters', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1517, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1518, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1519, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1520, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1521, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1522, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1523, 0, 'en', 'core/table/table', 'search', 'Search...', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1524, 0, 'vi', 'core/table/table', 'operations', 'Hành động', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1525, 0, 'vi', 'core/table/table', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1526, 0, 'vi', 'core/table/table', 'display', 'Hiển thị', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1527, 0, 'vi', 'core/table/table', 'all', 'Tất cả', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1528, 0, 'vi', 'core/table/table', 'edit_entry', 'Sửa', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1529, 0, 'vi', 'core/table/table', 'delete_entry', 'Xoá', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1530, 0, 'vi', 'core/table/table', 'show_from', 'Hiển thị từ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1531, 0, 'vi', 'core/table/table', 'to', 'đến', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1532, 0, 'vi', 'core/table/table', 'in', 'trong tổng số', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1533, 0, 'vi', 'core/table/table', 'records', 'bản ghi', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1534, 0, 'vi', 'core/table/table', 'no_data', 'Không có dữ liệu để hiển thị', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1535, 0, 'vi', 'core/table/table', 'no_record', 'không có bản ghi nào', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1536, 0, 'vi', 'core/table/table', 'loading', 'Đang tải dữ liệu từ hệ thống', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1537, 0, 'vi', 'core/table/table', 'confirm_delete', 'Xác nhận xoá', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1538, 0, 'vi', 'core/table/table', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1539, 0, 'vi', 'core/table/table', 'cancel', 'Huỷ bỏ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1540, 0, 'vi', 'core/table/table', 'delete', 'Xoá', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1541, 0, 'vi', 'core/table/table', 'close', 'Đóng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1542, 0, 'vi', 'core/table/table', 'is_equal_to', 'Bằng với', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1543, 0, 'vi', 'core/table/table', 'greater_than', 'Lớn hơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1544, 0, 'vi', 'core/table/table', 'less_than', 'Nhỏ hơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1545, 0, 'vi', 'core/table/table', 'value', 'Giá trị', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1546, 0, 'vi', 'core/table/table', 'select_field', 'Chọn trường', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1547, 0, 'vi', 'core/table/table', 'reset', 'Làm mới', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1548, 0, 'vi', 'core/table/table', 'add_additional_filter', 'Thêm bộ lọc', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1549, 0, 'vi', 'core/table/table', 'apply', 'Áp dụng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1550, 0, 'vi', 'core/table/table', 'select_option', 'Lựa chọn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1551, 0, 'vi', 'core/table/table', 'filters', 'Lọc dữ liệu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1552, 0, 'vi', 'core/table/table', 'bulk_change', 'Thay đổi hàng loạt', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1553, 0, 'vi', 'core/table/table', 'bulk_actions', 'Hành động', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1554, 0, 'vi', 'core/table/table', 'contains', 'Bao gồm', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1555, 0, 'vi', 'core/table/table', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1556, 0, 'vi', 'core/table/table', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1557, 0, 'vi', 'core/table/table', 'save_bulk_change_success', 'Cập nhật dữ liệu cho các bản ghi thành công!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1558, 0, 'vi', 'core/table/table', 'search', 'Tìm kiếm...', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1559, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1560, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1561, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1562, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1563, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1564, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1565, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1566, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1567, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1568, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1569, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-09-13 21:22:44', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1570, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1571, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1572, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1573, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1574, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1575, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1576, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1577, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1578, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1579, 0, 'vi', 'packages/menu/menu', 'name', 'Trình đơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1580, 0, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1581, 0, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1582, 0, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1583, 0, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1584, 0, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1585, 0, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1586, 0, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1587, 0, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1588, 0, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1589, 0, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1590, 0, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1591, 0, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1592, 0, 'vi', 'packages/menu/menu', 'target', 'Target', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1593, 0, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1594, 0, 'vi', 'packages/menu/menu', 'url', 'URL', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1595, 0, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1596, 0, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1597, 0, 'vi', 'packages/menu/menu', 'display_location', 'Vị trí hiển thị', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1598, 0, 'vi', 'packages/menu/menu', 'menu_settings', 'Cấu hình menu', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1599, 0, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1600, 0, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1601, 0, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1602, 0, 'vi', 'packages/optimize/optimize', 'settings.title', 'Tối ưu tốc độ', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1603, 0, 'vi', 'packages/optimize/optimize', 'settings.description', 'Nén HTML output, inline CSS, xóa chú thích...', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1604, 0, 'vi', 'packages/optimize/optimize', 'settings.enable', 'Bật tối ưu tốc độ?', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1605, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1606, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1607, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1608, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1609, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1610, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1611, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1612, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1613, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1614, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1615, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1616, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-09-13 21:22:44', '2021-09-13 21:23:02'),
(1617, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1618, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1619, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1620, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1621, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1622, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1623, 0, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1624, 0, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1625, 0, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1626, 0, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1627, 0, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1628, 0, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1629, 0, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1630, 0, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1631, 0, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1632, 0, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1633, 0, 'vi', 'packages/page/pages', 'menu', 'Trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1634, 0, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1635, 0, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1636, 0, 'vi', 'packages/page/pages', 'pages', 'Trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1637, 0, 'vi', 'packages/page/pages', 'front_page', 'Trang chủ', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1638, 0, 'vi', 'packages/page/pages', 'settings.select', '-- Lựa chọn --', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1639, 0, 'vi', 'packages/page/pages', 'settings.show_on_front', 'Lựa chọn trang chủ', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1640, 0, 'vi', 'packages/page/pages', 'total_pages', 'Tổng số trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1641, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1642, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1643, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1644, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1645, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1646, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1647, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1648, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1649, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1650, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1651, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1652, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1653, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1654, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1655, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1656, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1657, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1658, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1659, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1660, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1661, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1662, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1663, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1664, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1665, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1666, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1667, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1668, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1669, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1670, 0, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1671, 0, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1672, 0, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1673, 0, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1674, 0, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1675, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1676, 0, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1677, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1678, 0, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1679, 0, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các gói mở rộng :plugins trước khi kích hoạt gói này', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1680, 0, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Gói mở rộng', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1681, 0, 'vi', 'packages/plugin-management/plugin', 'remove', 'Xoá', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1682, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Xoá thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1683, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin', 'Xoá gói mở rộng', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1684, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Bạn có chắc chắn muốn xoá plugin này?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1685, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Có, xoá!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1686, 0, 'vi', 'packages/plugin-management/plugin', 'total_plugins', 'Tất cả plugins', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1687, 0, 'vi', 'packages/plugin-management/plugin', 'activate_success', 'Kích hoạt thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1688, 0, 'vi', 'packages/plugin-management/plugin', 'activated_already', 'Gói mở rộng này đã được kích hoạt rồi!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1689, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated_already', 'Gói mở rộng này đã được hủy kích hoạt rồi!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1690, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated_success', 'Hủy kích hoạt thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1691, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_json', 'Sai cấu hình plugin.json!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1692, 0, 'vi', 'packages/plugin-management/plugin', 'missing_json_file', 'Thiếu tập tin cấu hình plugin.json!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1693, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_invalid', 'Gói mở rộng không hợp lệ!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1694, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_not_exist', 'Gói mở rộng không tồn tại', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1695, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_removed', 'Gói mở rộng đã bị xóa!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1696, 0, 'vi', 'packages/plugin-management/plugin', 'published_assets_success', 'Xuất bản assets cho gói mở rộng thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1697, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1698, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1699, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1700, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1701, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1702, 0, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1703, 0, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1704, 0, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1705, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1706, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1707, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1708, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1709, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1710, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1711, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1712, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1713, 0, 'vi', 'packages/slug/slug', 'permalink_settings', 'Liên kết cố định', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1714, 0, 'vi', 'packages/slug/slug', 'preview', 'Xem trước', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1715, 0, 'vi', 'packages/slug/slug', 'settings.description', 'Quản lý liên kết cố định cho các module.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1716, 0, 'vi', 'packages/slug/slug', 'settings.preview', 'Xem trước', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1717, 0, 'vi', 'packages/slug/slug', 'settings.title', 'Cài đặt liên kết cố định', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1718, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1719, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1720, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1721, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1722, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1723, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1724, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1725, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1726, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1727, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1728, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1729, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1730, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1731, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1732, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1733, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1734, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1735, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1736, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1737, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1738, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1739, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1740, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1741, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1742, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1743, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1744, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1745, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1746, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1747, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1748, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1749, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1750, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1751, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1752, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1753, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1754, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1755, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1756, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1757, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1758, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1759, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1760, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1761, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1762, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1763, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1764, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1765, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1766, 0, 'vi', 'packages/theme/theme', 'name', 'Giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1767, 0, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1768, 0, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1769, 0, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1770, 0, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1771, 0, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1772, 0, 'vi', 'packages/theme/theme', 'appearance', 'Hiển thị', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1773, 0, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1774, 0, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1775, 0, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1776, 0, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1777, 0, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1778, 0, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1779, 0, 'vi', 'packages/theme/theme', 'remove', 'Xóa', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1780, 0, 'vi', 'packages/theme/theme', 'remove_theme', 'Xóa giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1781, 0, 'vi', 'packages/theme/theme', 'remove_theme_confirm_message', 'Bạn có chắc chắn muốn xóa giao diện này?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1782, 0, 'vi', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Vâng, xác nhận xóa!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1783, 0, 'vi', 'packages/theme/theme', 'remove_theme_success', 'Xóa giao diện thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1784, 0, 'vi', 'packages/theme/theme', 'settings.description', 'Cài đặt giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1785, 0, 'vi', 'packages/theme/theme', 'settings.title', 'Giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1786, 0, 'vi', 'packages/theme/theme', 'show_admin_bar', 'Hiển thị admin bar (khi admin đã đăng nhập, vẫn hiển thị admin bar trên website)?', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1787, 0, 'vi', 'packages/theme/theme', 'total_themes', 'Tổng số giao diện', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1788, 0, 'vi', 'packages/theme/theme', 'add_new', 'Thêm mới', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1789, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1790, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1791, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1792, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1793, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1794, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1795, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1796, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1797, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1798, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1799, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1800, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1801, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1802, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1803, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1804, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1805, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1806, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1807, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1808, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1809, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1810, 0, 'vi', 'packages/widget/widget', 'name', 'Widgets', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1811, 0, 'vi', 'packages/widget/widget', 'create', 'New widget', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1812, 0, 'vi', 'packages/widget/widget', 'edit', 'Edit widget', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1813, 0, 'vi', 'packages/widget/widget', 'available', 'Tiện ích có sẵn', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1814, 0, 'vi', 'packages/widget/widget', 'delete', 'Xóa', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1815, 0, 'vi', 'packages/widget/widget', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1816, 0, 'vi', 'packages/widget/widget', 'number_post_display', 'Số bài viết sẽ hiển thị', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1817, 0, 'vi', 'packages/widget/widget', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1818, 0, 'vi', 'packages/widget/widget', 'select_menu', 'Lựa chọn trình đơn', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1819, 0, 'vi', 'packages/widget/widget', 'widget_custom_menu', 'Menu tùy chỉnh', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1820, 0, 'vi', 'packages/widget/widget', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1821, 0, 'vi', 'packages/widget/widget', 'widget_recent_post', 'Bài viết gần đây', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1822, 0, 'vi', 'packages/widget/widget', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1823, 0, 'vi', 'packages/widget/widget', 'widget_tag', 'Thẻ', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1824, 0, 'vi', 'packages/widget/widget', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1825, 0, 'vi', 'packages/widget/widget', 'widget_text', 'Văn bản', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1826, 0, 'vi', 'packages/widget/widget', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1827, 0, 'vi', 'packages/widget/widget', 'delete_success', 'Xoá tiện ích thành công', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1828, 0, 'vi', 'packages/widget/widget', 'save_success', 'Lưu tiện ích thành công!', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1829, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1830, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1831, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1832, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1833, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1834, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1835, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1836, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1837, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1838, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1839, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1840, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1841, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1842, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1843, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1844, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1845, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1846, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1847, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1848, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1849, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1850, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1851, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1852, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1853, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1854, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1855, 0, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1856, 0, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1857, 0, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1858, 0, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1859, 0, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1860, 0, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1861, 0, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1862, 0, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1863, 0, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1864, 0, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1865, 0, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1866, 0, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1867, 0, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1868, 0, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1869, 0, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1870, 0, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1871, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1872, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1873, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1874, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1875, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1876, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1877, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2021-09-13 21:22:45', '2021-09-13 21:23:02'),
(1878, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1879, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1880, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1881, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1882, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1883, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1884, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1885, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1886, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1887, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1888, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1889, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1890, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1891, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1892, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1893, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1894, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1895, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1896, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1897, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1898, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1899, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1900, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1901, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1902, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1903, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1904, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1905, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1906, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1907, 0, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1908, 0, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1909, 0, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1910, 0, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1911, 0, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1912, 0, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1913, 0, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1914, 0, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1915, 0, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1916, 0, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1917, 0, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1918, 0, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1919, 0, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1920, 0, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1921, 0, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1922, 0, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1923, 0, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1924, 0, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1925, 0, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1926, 0, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1927, 0, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1928, 0, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1929, 0, 'vi', 'plugins/audit-log/history', 'system', 'Hệ thống', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1930, 0, 'vi', 'plugins/audit-log/history', 'action', 'Hành động', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1931, 0, 'vi', 'plugins/audit-log/history', 'delete_all', 'Xóa tất cả bản ghi', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1932, 0, 'vi', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1933, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1934, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1935, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1936, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1937, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1938, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1939, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1940, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1941, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1942, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-09-13 21:22:46', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1943, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1944, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1945, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1946, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1947, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1948, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1949, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1950, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1951, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1952, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1953, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1954, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1955, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1956, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1957, 0, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1958, 0, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1959, 0, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1960, 0, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1961, 0, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1962, 0, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1963, 0, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1964, 0, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1965, 0, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1966, 0, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1967, 0, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1968, 0, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1969, 0, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1970, 0, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1971, 0, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1972, 0, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1973, 0, 'en', 'plugins/block/block', 'name', 'Block', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1974, 0, 'en', 'plugins/block/block', 'create', 'New block', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1975, 0, 'en', 'plugins/block/block', 'edit', 'Edit block', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1976, 0, 'en', 'plugins/block/block', 'menu', 'Static Blocks', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1977, 0, 'en', 'plugins/block/block', 'static_block_short_code_name', 'Static Block', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1978, 0, 'en', 'plugins/block/block', 'static_block_short_code_description', 'Add a custom static block', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1979, 0, 'en', 'plugins/block/block', 'alias', 'Alias', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1980, 0, 'vi', 'plugins/block/block', 'name', 'Nội dung tĩnh', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1981, 0, 'vi', 'plugins/block/block', 'create', 'Thêm nội dung tĩnh', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1982, 0, 'vi', 'plugins/block/block', 'edit', 'Sửa nội dung tĩnh', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1983, 0, 'vi', 'plugins/block/block', 'menu', 'Nội dung tĩnh', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1984, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1985, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1986, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1987, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1988, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1989, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1990, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1991, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1992, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1993, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1994, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1995, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1996, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1997, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1998, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(1999, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2000, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2001, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2002, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2003, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2004, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2005, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2006, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2007, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2008, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2009, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2010, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2011, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2012, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2013, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2014, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2015, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2016, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2017, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2018, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2019, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2020, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2021, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2022, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2023, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2024, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2025, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2026, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2027, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2028, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2029, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2030, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2031, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2032, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2033, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2034, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2035, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2036, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2037, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2038, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2039, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2040, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2041, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2042, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2043, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2044, 0, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2045, 0, 'vi', 'plugins/blog/base', 'blog_page', 'Trang Blog', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2046, 0, 'vi', 'plugins/blog/base', 'select', '-- Lựa chọn --', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2047, 0, 'vi', 'plugins/blog/base', 'blog_page_id', 'Trang Blog', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2048, 0, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2049, 0, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2050, 0, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2051, 0, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2052, 0, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2053, 0, 'vi', 'plugins/blog/categories', 'none', 'Không', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2054, 0, 'vi', 'plugins/blog/member', 'dob', 'Born :date', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2055, 0, 'vi', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2056, 0, 'vi', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2057, 0, 'vi', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2058, 0, 'vi', 'plugins/blog/member', 'posts', 'Posts', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2059, 0, 'vi', 'plugins/blog/member', 'write_post', 'Write a post', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2060, 0, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2061, 0, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2062, 0, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2063, 0, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2064, 0, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2065, 0, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2066, 0, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2067, 0, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2068, 0, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2069, 0, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2070, 0, 'vi', 'plugins/blog/posts', 'form.is_featured', 'Bài viết nổi bật?', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2071, 0, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2072, 0, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2073, 0, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2074, 0, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2075, 0, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2076, 0, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2077, 0, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2078, 0, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2079, 0, 'vi', 'plugins/blog/posts', 'post', 'Bài viết', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2080, 0, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2081, 0, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2082, 0, 'vi', 'plugins/blog/posts', 'categories', 'Danh mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2083, 0, 'vi', 'plugins/blog/posts', 'category', 'Danh mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2084, 0, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2085, 0, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2086, 0, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2087, 0, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2088, 0, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2089, 0, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2090, 0, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2091, 0, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2092, 0, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2093, 0, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2094, 0, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2095, 0, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2096, 0, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2097, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2098, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2099, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2100, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2101, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2102, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2103, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2104, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2105, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2106, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2107, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2108, 0, 'vi', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2109, 0, 'vi', 'plugins/captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2110, 0, 'vi', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2111, 0, 'vi', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2112, 0, 'vi', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Bật Captcha?', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2113, 0, 'vi', 'plugins/captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret.', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2114, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-09-13 21:22:46', '2021-09-13 21:23:02'),
(2115, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2116, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2117, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2118, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2119, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2120, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2121, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2122, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2123, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2124, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2125, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2126, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2127, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2128, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2129, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2130, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2131, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2132, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2133, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2134, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2135, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2136, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2137, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2138, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2139, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2140, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2141, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2142, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2143, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2144, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2145, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2146, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2147, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2148, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2149, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2150, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2151, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2152, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2153, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2154, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2155, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2156, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2157, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2158, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2159, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2160, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2161, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2162, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2163, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2164, 0, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2165, 0, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2166, 0, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2167, 0, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2168, 0, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2169, 0, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2170, 0, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2171, 0, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2172, 0, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2173, 0, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2174, 0, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2175, 0, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2176, 0, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2177, 0, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2178, 0, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2179, 0, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2180, 0, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2181, 0, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2182, 0, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2183, 0, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2184, 0, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2185, 0, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2186, 0, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2187, 0, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2188, 0, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2189, 0, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2190, 0, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2191, 0, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2192, 0, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2193, 0, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2194, 0, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2195, 0, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2196, 0, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2197, 0, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2198, 0, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2199, 0, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2200, 0, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2201, 0, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2202, 0, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2203, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2204, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2205, 0, 'vi', 'plugins/contact/contact', 'replies', 'Trả lời', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2206, 0, 'vi', 'plugins/contact/contact', 'form_subject', 'Tiêu đề', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2207, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2208, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2209, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2210, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2211, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2212, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2213, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2214, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2215, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2216, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2217, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2218, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2219, 0, 'en', 'plugins/custom-field/base', 'admin_menu.title', 'Custom Fields', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2220, 0, 'en', 'plugins/custom-field/base', 'page_title', 'Custom Fields', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2221, 0, 'en', 'plugins/custom-field/base', 'all_field_groups', 'All field groups', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2222, 0, 'en', 'plugins/custom-field/base', 'form.create_field_group', 'Create field group', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2223, 0, 'en', 'plugins/custom-field/base', 'form.edit_field_group', 'Edit field group', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2224, 0, 'en', 'plugins/custom-field/base', 'form.field_items_information', 'Field items information', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2225, 0, 'en', 'plugins/custom-field/base', 'form.repeater_fields', 'Repeater', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2226, 0, 'en', 'plugins/custom-field/base', 'form.add_field', 'Add field', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2227, 0, 'en', 'plugins/custom-field/base', 'form.remove_field', 'Remove field', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2228, 0, 'en', 'plugins/custom-field/base', 'form.close_field', 'Close field', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2229, 0, 'en', 'plugins/custom-field/base', 'form.field_label', 'Label', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2230, 0, 'en', 'plugins/custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2231, 0, 'en', 'plugins/custom-field/base', 'form.field_name', 'Field name', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2232, 0, 'en', 'plugins/custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2233, 0, 'en', 'plugins/custom-field/base', 'form.field_type', 'Field type', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2234, 0, 'en', 'plugins/custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2235, 0, 'en', 'plugins/custom-field/base', 'form.field_instructions', 'Field instructions', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2236, 0, 'en', 'plugins/custom-field/base', 'form.field_instructions_helper', 'The instructions guide for user easier know what they need to input.', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2237, 0, 'en', 'plugins/custom-field/base', 'form.default_value', 'Default value', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2238, 0, 'en', 'plugins/custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2239, 0, 'en', 'plugins/custom-field/base', 'form.placeholder', 'Placeholder', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2240, 0, 'en', 'plugins/custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2241, 0, 'en', 'plugins/custom-field/base', 'form.rows', 'Rows', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2242, 0, 'en', 'plugins/custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2243, 0, 'en', 'plugins/custom-field/base', 'form.choices', 'Choices', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2244, 0, 'en', 'plugins/custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2245, 0, 'en', 'plugins/custom-field/base', 'form.button_label', 'Button for repeater', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2246, 0, 'en', 'plugins/custom-field/base', 'form.groups.basic', 'Basic', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2247, 0, 'en', 'plugins/custom-field/base', 'form.groups.content', 'Content', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2248, 0, 'en', 'plugins/custom-field/base', 'form.groups.choice', 'Choices', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2249, 0, 'en', 'plugins/custom-field/base', 'form.groups.other', 'Other', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2250, 0, 'en', 'plugins/custom-field/base', 'form.types.text', 'Text field', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2251, 0, 'en', 'plugins/custom-field/base', 'form.types.textarea', 'Textarea', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2252, 0, 'en', 'plugins/custom-field/base', 'form.types.number', 'Number', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2253, 0, 'en', 'plugins/custom-field/base', 'form.types.email', 'Email', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2254, 0, 'en', 'plugins/custom-field/base', 'form.types.password', 'Password', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2255, 0, 'en', 'plugins/custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2256, 0, 'en', 'plugins/custom-field/base', 'form.types.image', 'Image', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2257, 0, 'en', 'plugins/custom-field/base', 'form.types.file', 'File', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2258, 0, 'en', 'plugins/custom-field/base', 'form.types.select', 'Select', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2259, 0, 'en', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2260, 0, 'en', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2261, 0, 'en', 'plugins/custom-field/base', 'form.types.repeater', 'Repeater', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2262, 0, 'en', 'plugins/custom-field/base', 'form.rules.rules', 'Display rules', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2263, 0, 'en', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2264, 0, 'en', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2265, 0, 'en', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2266, 0, 'en', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2267, 0, 'en', 'plugins/custom-field/base', 'form.rules.and', 'And', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2268, 0, 'en', 'plugins/custom-field/base', 'form.rules.or', 'Or', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2269, 0, 'en', 'plugins/custom-field/base', 'import', 'Import', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2270, 0, 'en', 'plugins/custom-field/base', 'export', 'Export', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2271, 0, 'en', 'plugins/custom-field/base', 'publish', 'Publish', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2272, 0, 'en', 'plugins/custom-field/base', 'remove_this_line', 'Remove this line', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2273, 0, 'en', 'plugins/custom-field/base', 'collapse_this_line', 'Collapse this line', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2274, 0, 'en', 'plugins/custom-field/base', 'error_occurred', 'Error occurred', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2275, 0, 'en', 'plugins/custom-field/base', 'request_completed', 'Request completed', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2276, 0, 'en', 'plugins/custom-field/base', 'item_not_existed', 'Item is not exists', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2277, 0, 'en', 'plugins/custom-field/rules', 'groups.basic', 'Basic', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2278, 0, 'en', 'plugins/custom-field/rules', 'groups.other', 'Other', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2279, 0, 'en', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2280, 0, 'en', 'plugins/custom-field/rules', 'logged_in_user', 'Logged in user', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2281, 0, 'en', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2282, 0, 'en', 'plugins/custom-field/rules', 'page_template', 'Page template', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2283, 0, 'en', 'plugins/custom-field/rules', 'page', 'Page', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2284, 0, 'en', 'plugins/custom-field/rules', 'model_name', 'Model name', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2285, 0, 'en', 'plugins/custom-field/rules', 'model_name_page', 'Page', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2286, 0, 'en', 'plugins/custom-field/rules', 'category', 'Category', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2287, 0, 'en', 'plugins/custom-field/rules', 'post_with_related_category', 'Post with related category', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2288, 0, 'en', 'plugins/custom-field/rules', 'model_name_post', 'Post (blog)', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2289, 0, 'en', 'plugins/custom-field/rules', 'model_name_category', 'Category (blog)', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2290, 0, 'en', 'plugins/custom-field/rules', 'post_format', 'Post format', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2291, 0, 'vi', 'plugins/custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2292, 0, 'vi', 'plugins/custom-field/base', 'page_title', 'Trường tùy chỉnh', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2293, 0, 'vi', 'plugins/custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2294, 0, 'vi', 'plugins/custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2295, 0, 'vi', 'plugins/custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2296, 0, 'vi', 'plugins/custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2297, 0, 'vi', 'plugins/custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2298, 0, 'vi', 'plugins/custom-field/base', 'form.add_field', 'Thêm trường', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2299, 0, 'vi', 'plugins/custom-field/base', 'form.remove_field', 'Xóa trường này', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2300, 0, 'vi', 'plugins/custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2301, 0, 'vi', 'plugins/custom-field/base', 'form.field_label', 'Nhãn', '2021-09-13 21:22:47', '2021-09-13 21:23:02'),
(2302, 0, 'vi', 'plugins/custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2303, 0, 'vi', 'plugins/custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2304, 0, 'vi', 'plugins/custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2305, 0, 'vi', 'plugins/custom-field/base', 'form.field_type', 'Kiểu trường', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2306, 0, 'vi', 'plugins/custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2307, 0, 'vi', 'plugins/custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2308, 0, 'vi', 'plugins/custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2309, 0, 'vi', 'plugins/custom-field/base', 'form.default_value', 'Giá trị mặc định', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2310, 0, 'vi', 'plugins/custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2311, 0, 'vi', 'plugins/custom-field/base', 'form.placeholder', 'Mô tả trường', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2312, 0, 'vi', 'plugins/custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2313, 0, 'vi', 'plugins/custom-field/base', 'form.rows', 'Số dòng', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2314, 0, 'vi', 'plugins/custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2319, 0, 'vi', 'plugins/custom-field/base', 'form.choices', 'Các mục lựa chọn', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2320, 0, 'vi', 'plugins/custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2321, 0, 'vi', 'plugins/custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2322, 0, 'vi', 'plugins/custom-field/base', 'form.groups.basic', 'Cơ bản', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2323, 0, 'vi', 'plugins/custom-field/base', 'form.groups.content', 'Nội dung', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2324, 0, 'vi', 'plugins/custom-field/base', 'form.groups.choice', 'Lựa chọn', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2325, 0, 'vi', 'plugins/custom-field/base', 'form.groups.other', 'Khác', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2326, 0, 'vi', 'plugins/custom-field/base', 'form.types.text', 'Văn bản', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2327, 0, 'vi', 'plugins/custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2328, 0, 'vi', 'plugins/custom-field/base', 'form.types.number', 'Số', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2329, 0, 'vi', 'plugins/custom-field/base', 'form.types.email', 'Thư điện tử', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2330, 0, 'vi', 'plugins/custom-field/base', 'form.types.password', 'Mật khẩu', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2331, 0, 'vi', 'plugins/custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2021-09-13 21:22:48', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2332, 0, 'vi', 'plugins/custom-field/base', 'form.types.image', 'Hình ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2333, 0, 'vi', 'plugins/custom-field/base', 'form.types.file', 'Tập tin', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2334, 0, 'vi', 'plugins/custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2335, 0, 'vi', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2336, 0, 'vi', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2337, 0, 'vi', 'plugins/custom-field/base', 'form.types.repeater', 'Bộ lặp', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2338, 0, 'vi', 'plugins/custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2339, 0, 'vi', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2340, 0, 'vi', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2341, 0, 'vi', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2342, 0, 'vi', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2343, 0, 'vi', 'plugins/custom-field/base', 'form.rules.and', 'Và', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2344, 0, 'vi', 'plugins/custom-field/base', 'form.rules.or', 'Hoặc', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2345, 0, 'vi', 'plugins/custom-field/base', 'import', 'Nhập dữ liệu', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2346, 0, 'vi', 'plugins/custom-field/base', 'export', 'Xuất dữ liệu', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2347, 0, 'vi', 'plugins/custom-field/rules', 'groups.basic', 'Cơ bản', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2348, 0, 'vi', 'plugins/custom-field/rules', 'groups.other', 'Khác', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2349, 0, 'vi', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2350, 0, 'vi', 'plugins/custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2351, 0, 'vi', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2352, 0, 'vi', 'plugins/custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2353, 0, 'vi', 'plugins/custom-field/rules', 'page', 'Trang tĩnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2354, 0, 'vi', 'plugins/custom-field/rules', 'model_name', 'Tên model', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2355, 0, 'vi', 'plugins/custom-field/rules', 'model_name_page', 'Trang tĩnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2356, 0, 'vi', 'plugins/custom-field/rules', 'category', 'Danh mục bài viết', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2357, 0, 'vi', 'plugins/custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2358, 0, 'vi', 'plugins/custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2359, 0, 'vi', 'plugins/custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2360, 0, 'vi', 'plugins/custom-field/rules', 'post_format', 'Định dạng bài viết', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2361, 0, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2362, 0, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2363, 0, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2364, 0, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2365, 0, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2366, 0, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2367, 0, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2368, 0, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2369, 0, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2370, 0, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2371, 0, 'en', 'plugins/gallery/gallery', 'by', 'By', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2372, 0, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2373, 0, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2374, 0, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2375, 0, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2376, 0, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2377, 0, 'vi', 'plugins/gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2378, 0, 'vi', 'plugins/gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2379, 0, 'vi', 'plugins/gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2380, 0, 'vi', 'plugins/gallery/gallery', 'galleries', 'Thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2381, 0, 'vi', 'plugins/gallery/gallery', 'item', 'Ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2382, 0, 'vi', 'plugins/gallery/gallery', 'reset', 'Làm mới thư viện', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2383, 0, 'vi', 'plugins/gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2384, 0, 'vi', 'plugins/gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2385, 0, 'vi', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2386, 0, 'vi', 'plugins/gallery/gallery', 'by', 'Bởi', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2387, 0, 'vi', 'plugins/gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2388, 0, 'vi', 'plugins/gallery/gallery', 'menu_name', 'Thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2389, 0, 'vi', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Thêm thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2390, 0, 'vi', 'plugins/gallery/gallery', 'gallery_images', 'Thư viện ảnh', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2391, 0, 'en', 'plugins/language/language', 'name', 'Languages', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2392, 0, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2393, 0, 'en', 'plugins/language/language', 'select_language', 'Select language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2394, 0, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2395, 0, 'en', 'plugins/language/language', 'language_name', 'Language name', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2396, 0, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2397, 0, 'en', 'plugins/language/language', 'locale', 'Locale', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2398, 0, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2399, 0, 'en', 'plugins/language/language', 'language_code', 'Language code', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2400, 0, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2401, 0, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2402, 0, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2403, 0, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2404, 0, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2405, 0, 'en', 'plugins/language/language', 'flag', 'Flag', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2406, 0, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2407, 0, 'en', 'plugins/language/language', 'order', 'Order', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2408, 0, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2409, 0, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2410, 0, 'en', 'plugins/language/language', 'code', 'Code', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2411, 0, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2412, 0, 'en', 'plugins/language/language', 'actions', 'Actions', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2413, 0, 'en', 'plugins/language/language', 'translations', 'Translations', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2414, 0, 'en', 'plugins/language/language', 'edit', 'Edit', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2415, 0, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2416, 0, 'en', 'plugins/language/language', 'delete', 'Delete', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2417, 0, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2418, 0, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2419, 0, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2420, 0, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2421, 0, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2422, 0, 'en', 'plugins/language/language', 'settings', 'Settings', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2423, 0, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2424, 0, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2425, 0, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2426, 0, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2427, 0, 'en', 'plugins/language/language', 'language_display', 'Language display', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2428, 0, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2429, 0, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2430, 0, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2431, 0, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2432, 0, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2433, 0, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2434, 0, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2435, 0, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2436, 0, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2437, 0, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2438, 0, 'en', 'plugins/language/language', 'show_all', 'Show all', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2439, 0, 'en', 'plugins/language/language', 'change_language', 'Language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2440, 0, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2441, 0, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2442, 0, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2443, 0, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2444, 0, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2445, 0, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2446, 0, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2447, 0, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2448, 0, 'vi', 'plugins/language/language', 'language_name', 'Tên đầy đủ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2449, 0, 'vi', 'plugins/language/language', 'language_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2450, 0, 'vi', 'plugins/language/language', 'locale', 'Locale', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2451, 0, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>).', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2452, 0, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2453, 0, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2454, 0, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2455, 0, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2456, 0, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2457, 0, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2458, 0, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2459, 0, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2460, 0, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2461, 0, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2462, 0, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2463, 0, 'vi', 'plugins/language/language', 'code', 'Mã', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2464, 0, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2465, 0, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2466, 0, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2467, 0, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2468, 0, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2469, 0, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2470, 0, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2471, 0, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2472, 0, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2473, 0, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2474, 0, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2475, 0, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2476, 0, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2477, 0, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2478, 0, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2479, 0, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2480, 0, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2481, 0, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2482, 0, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2483, 0, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2484, 0, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2485, 0, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2486, 0, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2487, 0, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2488, 0, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2489, 0, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2490, 0, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2491, 0, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2492, 0, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2493, 0, 'vi', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Hiển thị bản ghi ở ngôn ngữ mặc định nếu phiên bản cho ngôn ngữ hiện tại chưa có', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2494, 0, 'en', 'plugins/member/dashboard', 'joined_on', 'Joined :date', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2495, 0, 'en', 'plugins/member/dashboard', 'dob', 'Born :date', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2496, 0, 'en', 'plugins/member/dashboard', 'email', 'Email', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2497, 0, 'en', 'plugins/member/dashboard', 'password', 'Password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2498, 0, 'en', 'plugins/member/dashboard', 'password-confirmation', 'Confirm Password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2499, 0, 'en', 'plugins/member/dashboard', 'remember-me', 'Remember Me', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2500, 0, 'en', 'plugins/member/dashboard', 'login-title', 'Login', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2501, 0, 'en', 'plugins/member/dashboard', 'login-cta', 'Login', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2502, 0, 'en', 'plugins/member/dashboard', 'register-title', 'Register', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2503, 0, 'en', 'plugins/member/dashboard', 'register-cta', 'Register', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2504, 0, 'en', 'plugins/member/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2505, 0, 'en', 'plugins/member/dashboard', 'name', 'Name', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2506, 0, 'en', 'plugins/member/dashboard', 'reset-password-title', 'Reset Password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2507, 0, 'en', 'plugins/member/dashboard', 'reset-password-cta', 'Reset Password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2508, 0, 'en', 'plugins/member/dashboard', 'cancel-link', 'Cancel', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2509, 0, 'en', 'plugins/member/dashboard', 'logout-cta', 'Logout', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2510, 0, 'en', 'plugins/member/dashboard', 'header_profile_link', 'Profile', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2511, 0, 'en', 'plugins/member/dashboard', 'header_settings_link', 'Settings', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2512, 0, 'en', 'plugins/member/dashboard', 'header_logout_link', 'Logout', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2513, 0, 'en', 'plugins/member/dashboard', 'unknown_state', 'Unknown', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2514, 0, 'en', 'plugins/member/dashboard', 'close', 'Close', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2515, 0, 'en', 'plugins/member/dashboard', 'save', 'Save', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2516, 0, 'en', 'plugins/member/dashboard', 'loading', 'Loading...', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2517, 0, 'en', 'plugins/member/dashboard', 'new_image', 'New image', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2518, 0, 'en', 'plugins/member/dashboard', 'change_profile_image', 'Change avatar', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2519, 0, 'en', 'plugins/member/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2520, 0, 'en', 'plugins/member/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2521, 0, 'en', 'plugins/member/dashboard', 'failed_to_load_data', 'Failed to load data', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2522, 0, 'en', 'plugins/member/dashboard', 'read_image_failed', 'Read image failed', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2523, 0, 'en', 'plugins/member/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2524, 0, 'en', 'plugins/member/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2525, 0, 'en', 'plugins/member/dashboard', 'notices.error', 'Error!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2526, 0, 'en', 'plugins/member/dashboard', 'notices.success', 'Success!', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2527, 0, 'en', 'plugins/member/dashboard', 'sidebar_title', 'Personal settings', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2528, 0, 'en', 'plugins/member/dashboard', 'sidebar_information', 'Account Information', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2529, 0, 'en', 'plugins/member/dashboard', 'sidebar_security', 'Security', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2530, 0, 'en', 'plugins/member/dashboard', 'account_field_title', 'Account Information', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2531, 0, 'en', 'plugins/member/dashboard', 'profile-picture', 'Profile picture', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2532, 0, 'en', 'plugins/member/dashboard', 'uploading', 'Uploading...', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2533, 0, 'en', 'plugins/member/dashboard', 'phone', 'Phone', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2534, 0, 'en', 'plugins/member/dashboard', 'first_name', 'First name', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2535, 0, 'en', 'plugins/member/dashboard', 'last_name', 'Last name', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2536, 0, 'en', 'plugins/member/dashboard', 'description', 'Short description', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2537, 0, 'en', 'plugins/member/dashboard', 'description_placeholder', 'Tell something about yourself...', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2538, 0, 'en', 'plugins/member/dashboard', 'verified', 'Verified', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2539, 0, 'en', 'plugins/member/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2540, 0, 'en', 'plugins/member/dashboard', 'birthday', 'Birthday', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2541, 0, 'en', 'plugins/member/dashboard', 'year_lc', 'year', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2542, 0, 'en', 'plugins/member/dashboard', 'month_lc', 'month', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2543, 0, 'en', 'plugins/member/dashboard', 'day_lc', 'day', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2544, 0, 'en', 'plugins/member/dashboard', 'gender', 'Gender', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2545, 0, 'en', 'plugins/member/dashboard', 'gender_male', 'Male', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2546, 0, 'en', 'plugins/member/dashboard', 'gender_female', 'Female', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2547, 0, 'en', 'plugins/member/dashboard', 'gender_other', 'Other', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2548, 0, 'en', 'plugins/member/dashboard', 'security_title', 'Security', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2549, 0, 'en', 'plugins/member/dashboard', 'current_password', 'Current password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2550, 0, 'en', 'plugins/member/dashboard', 'password_new', 'New password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2551, 0, 'en', 'plugins/member/dashboard', 'password_new_confirmation', 'Confirmation password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2552, 0, 'en', 'plugins/member/dashboard', 'password_update_btn', 'Update password', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2553, 0, 'en', 'plugins/member/dashboard', 'activity_logs', 'Activity Logs', '2021-09-13 21:22:48', '2021-09-13 21:23:02'),
(2554, 0, 'en', 'plugins/member/dashboard', 'oops', 'Oops!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2555, 0, 'en', 'plugins/member/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2556, 0, 'en', 'plugins/member/dashboard', 'actions.create_post', 'You have created post \":name\"', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2557, 0, 'en', 'plugins/member/dashboard', 'actions.update_post', 'You have updated post \":name\"', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2558, 0, 'en', 'plugins/member/dashboard', 'actions.delete_post', 'You have deleted post \":name\"', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2559, 0, 'en', 'plugins/member/dashboard', 'actions.update_setting', 'You have updated your settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2560, 0, 'en', 'plugins/member/dashboard', 'actions.update_security', 'You have updated your security settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2561, 0, 'en', 'plugins/member/dashboard', 'actions.your_post_updated_by_admin', 'Your post \":name\" is updated by administrator', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2562, 0, 'en', 'plugins/member/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2563, 0, 'en', 'plugins/member/dashboard', 'load_more', 'Load more', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2564, 0, 'en', 'plugins/member/dashboard', 'loading_more', 'Loading...', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2565, 0, 'en', 'plugins/member/dashboard', 'back-to-login', 'Back to login page', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2566, 0, 'en', 'plugins/member/member', 'create', 'New member', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2567, 0, 'en', 'plugins/member/member', 'edit', 'Edit member', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2568, 0, 'en', 'plugins/member/member', 'menu_name', 'Members', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2569, 0, 'en', 'plugins/member/member', 'confirmation_subject', 'Email verification', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2570, 0, 'en', 'plugins/member/member', 'confirmation_subject_title', 'Verify your email', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2571, 0, 'en', 'plugins/member/member', 'not_confirmed', 'The given email address has not been confirmed. <a href=\":resend_link\">Resend confirmation link.</a>', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2572, 0, 'en', 'plugins/member/member', 'confirmation_successful', 'You successfully confirmed your email address.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2573, 0, 'en', 'plugins/member/member', 'confirmation_info', 'Please confirm your email address.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2574, 0, 'en', 'plugins/member/member', 'confirmation_resent', 'We sent you another confirmation email. You should receive it shortly.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2575, 0, 'en', 'plugins/member/member', 'form.email', 'Email', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2576, 0, 'en', 'plugins/member/member', 'form.password', 'Password', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2577, 0, 'en', 'plugins/member/member', 'form.password_confirmation', 'Password confirmation', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2578, 0, 'en', 'plugins/member/member', 'form.change_password', 'Change password?', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2579, 0, 'en', 'plugins/member/member', 'forgot_password', 'Forgot password', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2580, 0, 'en', 'plugins/member/member', 'login', 'Login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2581, 0, 'en', 'plugins/member/member', 'settings.email.title', 'Member', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2582, 0, 'en', 'plugins/member/member', 'settings.email.description', 'Member email configuration', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2583, 0, 'en', 'plugins/member/member', 'first_name', 'First Name', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2584, 0, 'en', 'plugins/member/member', 'last_name', 'Last Name', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2585, 0, 'en', 'plugins/member/member', 'email_placeholder', 'Ex: example@gmail.com', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2586, 0, 'en', 'plugins/member/member', 'write_a_post', 'Write a post', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2587, 0, 'en', 'plugins/member/member', 'phone', 'Phone', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2588, 0, 'en', 'plugins/member/member', 'phone_placeholder', 'Phone', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2589, 0, 'en', 'plugins/member/member', 'confirmed_at', 'Confirmed at', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2590, 0, 'en', 'plugins/member/member', 'avatar', 'Avatar', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2591, 0, 'en', 'plugins/member/member', 'dob', 'Date of birth', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2592, 0, 'en', 'plugins/member/settings', 'title', 'Member', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2593, 0, 'en', 'plugins/member/settings', 'description', 'Settings for members', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2594, 0, 'en', 'plugins/member/settings', 'verify_account_email', 'Verify account\'s email?', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2595, 0, 'en', 'plugins/member/settings', 'verify_account_email_description', 'Need to config email in Admin -> Settings -> Email to send email verification.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2596, 0, 'en', 'plugins/request-log/request-log', 'name', 'Request Logs', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2597, 0, 'en', 'plugins/request-log/request-log', 'status_code', 'Status Code', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2598, 0, 'en', 'plugins/request-log/request-log', 'no_request_error', 'No request error now!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2599, 0, 'en', 'plugins/request-log/request-log', 'widget_request_errors', 'Request Errors', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2600, 0, 'en', 'plugins/request-log/request-log', 'count', 'Count', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2601, 0, 'en', 'plugins/request-log/request-log', 'delete_all', 'Delete all records', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2602, 0, 'vi', 'plugins/request-log/request-log', 'name', 'Lịch sử lỗi', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2603, 0, 'vi', 'plugins/request-log/request-log', 'status_code', 'Mã lỗi', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2604, 0, 'vi', 'plugins/request-log/request-log', 'no_request_error', 'Hiện tại không có lỗi nào cả!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2605, 0, 'vi', 'plugins/request-log/request-log', 'widget_request_errors', 'Liên kết bị hỏng', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2606, 0, 'vi', 'plugins/request-log/request-log', 'count', 'Số lần', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2607, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2608, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2609, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2610, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2611, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2612, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2613, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. A Valid OAuth Redirect URIs is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2614, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2615, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2616, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2617, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2618, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2619, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2620, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2621, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2622, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2623, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2624, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2625, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2626, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2627, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2628, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2629, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2630, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2631, 0, 'vi', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2632, 0, 'vi', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2633, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2634, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2635, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2636, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2637, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2638, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2639, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2640, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2641, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2642, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2643, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2644, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2645, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2646, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2647, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2648, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2649, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2650, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2651, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2652, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2653, 0, 'vi', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2654, 0, 'vi', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2655, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2656, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2657, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2658, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2659, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2660, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2661, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2662, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2663, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2664, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2665, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2666, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2667, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2668, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2669, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2670, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2671, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2672, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2673, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2674, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2675, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2676, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2677, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2678, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2679, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2680, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2681, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2682, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2683, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2684, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2685, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-09-13 21:22:49', '2021-09-13 21:23:02');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2686, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2687, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2688, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2689, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2690, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2691, 0, 'vi', 'plugins/translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2692, 0, 'vi', 'plugins/translation/translation', 'back', 'Quay lại', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2693, 0, 'vi', 'plugins/translation/translation', 'choose_a_group', 'Chọn một nhóm', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2694, 0, 'vi', 'plugins/translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2695, 0, 'vi', 'plugins/translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2696, 0, 'vi', 'plugins/translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2697, 0, 'vi', 'plugins/translation/translation', 'edit_title', 'Nhập nội dung dịch', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2698, 0, 'vi', 'plugins/translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan cms:translations:export\' hoặc sử dụng nút xuất bản', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2699, 0, 'vi', 'plugins/translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý :counter bản ghi!  ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2700, 0, 'vi', 'plugins/translation/translation', 'import_group', 'Nhập nhóm', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2701, 0, 'vi', 'plugins/translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2702, 0, 'vi', 'plugins/translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2703, 0, 'vi', 'plugins/translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2704, 0, 'vi', 'plugins/translation/translation', 'translations', 'Dịch thuật', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2705, 0, 'vi', 'plugins/translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2706, 0, 'vi', 'plugins/translation/translation', 'actions', 'Hành động', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2707, 0, 'vi', 'plugins/translation/translation', 'add_new_language', 'Thêm ngôn ngữ mới', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2708, 0, 'vi', 'plugins/translation/translation', 'admin-translations', 'Dịch các mục khác', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2709, 0, 'vi', 'plugins/translation/translation', 'choose_language', 'Chọn ngôn ngữ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2710, 0, 'vi', 'plugins/translation/translation', 'default_locale', 'Ngôn ngữ mặc định', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2711, 0, 'vi', 'plugins/translation/translation', 'delete', 'Xóa', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2712, 0, 'vi', 'plugins/translation/translation', 'edit', 'Sửa', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2713, 0, 'vi', 'plugins/translation/translation', 'flag', 'Cờ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2714, 0, 'vi', 'plugins/translation/translation', 'locale', 'Ngôn ngữ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2715, 0, 'vi', 'plugins/translation/translation', 'locales', 'Ngôn ngữ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2716, 0, 'vi', 'plugins/translation/translation', 'name', 'Tên', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2717, 0, 'vi', 'plugins/translation/translation', 'no_other_languages', 'Không còn ngôn ngữ nào khác để dịch!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2718, 0, 'vi', 'plugins/translation/translation', 'select_language', 'Lựa chọn ngôn ngữ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2719, 0, 'vi', 'plugins/translation/translation', 'theme-translations', 'Dịch giao diện', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2720, 0, 'vi', 'plugins/translation/translation', 'to', 'sang', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2721, 0, 'vi', 'plugins/translation/translation', 'translate_from', 'Dịch từ', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2722, 0, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2723, 0, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2724, 0, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2725, 0, 'vi', 'pagination', 'previous', '&laquo; Trước', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2726, 0, 'vi', 'pagination', 'next', 'Sau &raquo;', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2727, 0, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2728, 0, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2729, 0, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2730, 0, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2731, 0, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2732, 0, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2733, 0, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2734, 0, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2735, 0, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2736, 0, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2737, 0, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2738, 0, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2739, 0, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2740, 0, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2741, 0, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2742, 0, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2743, 0, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2744, 0, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2745, 0, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2746, 0, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2747, 0, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2748, 0, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2749, 0, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2750, 0, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2751, 0, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2752, 0, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2753, 0, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2754, 0, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2755, 0, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2756, 0, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2757, 0, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2758, 0, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2759, 0, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2760, 0, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2761, 0, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2762, 0, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2763, 0, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2764, 0, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2765, 0, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2766, 0, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2767, 0, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2768, 0, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2769, 0, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2770, 0, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2771, 0, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2772, 0, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2773, 0, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2774, 0, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2775, 0, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2776, 0, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2777, 0, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2778, 0, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2779, 0, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2780, 0, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2781, 0, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2782, 0, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2783, 0, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2784, 0, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2785, 0, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2786, 0, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2787, 0, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2788, 0, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2789, 0, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2790, 0, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2791, 0, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2792, 0, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2793, 0, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2794, 0, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2795, 0, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2021-09-13 21:22:49', '2021-09-13 21:23:02'),
(2796, 0, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2797, 0, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2798, 0, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2799, 0, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2800, 0, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2801, 0, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2802, 0, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2803, 0, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2804, 0, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2805, 0, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2806, 0, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2807, 0, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2808, 0, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2809, 0, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2810, 0, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2811, 0, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2812, 0, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2813, 0, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2814, 0, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2815, 0, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2816, 0, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2817, 0, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2818, 0, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2819, 0, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2820, 0, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2821, 0, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2822, 0, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2021-09-13 21:22:50', '2021-09-13 21:23:02'),
(2823, 0, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-09-13 21:22:50', '2021-09-13 21:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `traveldocuments`
--

CREATE TABLE `traveldocuments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'smartcode.kc@gmail.com', NULL, '$2y$10$/nG6LtuSJqXocQWN857xB.s4pRA7qT/cFZqqtNzADFdRTRSxMck4.', '7zMJqfYmkd5JAsMq1AGcLOAeexX5fxNefujXnyvWzaUxDN8WZXgCmqOjr6E4', '2021-04-06 23:41:03', '2022-02-10 23:16:44', 'System', 'Admin', 'justice', NULL, 1, 1, NULL, '2022-02-10 23:16:44'),
(2, 'kcjust.info2@gmail.com', NULL, '$2y$10$ZLlL1LyG0Xs7rie726TNSuj5W5EvhcasM7oz.OzWooxX1agNOHHza', 'AO2tEFOrb0AKF23Mu69NE76YDguRhIBTAyIDYNYKbIhEUVFqaII9P8FTbDWK', '2022-02-10 23:14:44', '2022-02-10 23:15:24', 'Justice', 'Kelechi', 'smart', NULL, 0, 0, '{\"core.appearance\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"widgets.index\":true,\"block.index\":true,\"block.create\":true,\"block.edit\":true,\"block.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"custom-fields.index\":true,\"custom-fields.create\":true,\"custom-fields.edit\":true,\"custom-fields.destroy\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"languages.theme-translations\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"social-login.settings\":true,\"translations.index\":true,\"translations.edit\":true,\"superuser\":null,\"manage_supers\":null}', '2022-02-10 23:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vip_passes`
--

CREATE TABLE `vip_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(2, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(3, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(4, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(5, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(6, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite Websites\",\"menu_id\":\"favorite-websites\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(7, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Links\",\"menu_id\":\"my-links\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(8, 'RecentPostsWidget', 'footer_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(9, 'RecentPostsWidget', 'top_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(10, 'TagsWidget', 'primary_sidebar', 'ripple-vi', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(11, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"danh-muc-noi-bat\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(12, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i\",\"menu_id\":\"social\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(13, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Trang web y\\u00eau th\\u00edch\",\"menu_id\":\"trang-web-yeu-thich\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05'),
(14, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft\",\"menu_id\":\"lien-ket\"}', '2021-04-06 23:41:05', '2021-04-06 23:41:05');

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
-- Indexes for table `airport_services`
--
ALTER TABLE `airport_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `covid_p_c_r_tests`
--
ALTER TABLE `covid_p_c_r_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cruises`
--
ALTER TABLE `cruises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
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
-- Indexes for table `evisas`
--
ALTER TABLE `evisas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

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
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `lounges`
--
ALTER TABLE `lounges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meet_and_greets`
--
ALTER TABLE `meet_and_greets`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

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
-- Indexes for table `museum_passes`
--
ALTER TABLE `museum_passes`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_cars`
--
ALTER TABLE `rent_cars`
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
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourist_passes`
--
ALTER TABLE `tourist_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `traveldocuments`
--
ALTER TABLE `traveldocuments`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `vip_passes`
--
ALTER TABLE `vip_passes`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `airport_services`
--
ALTER TABLE `airport_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `covid_p_c_r_tests`
--
ALTER TABLE `covid_p_c_r_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cruises`
--
ALTER TABLE `cruises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `evisas`
--
ALTER TABLE `evisas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `lounges`
--
ALTER TABLE `lounges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meet_and_greets`
--
ALTER TABLE `meet_and_greets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `museum_passes`
--
ALTER TABLE `museum_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `rent_cars`
--
ALTER TABLE `rent_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tourist_passes`
--
ALTER TABLE `tourist_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2824;

--
-- AUTO_INCREMENT for table `traveldocuments`
--
ALTER TABLE `traveldocuments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vip_passes`
--
ALTER TABLE `vip_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
