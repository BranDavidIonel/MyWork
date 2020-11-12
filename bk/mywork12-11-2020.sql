-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 10:16 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywork`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_info`
--

CREATE TABLE `log_info` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `browser` varchar(100) NOT NULL,
  `device` varchar(100) NOT NULL,
  `os` varchar(100) NOT NULL,
  `date_time_log` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_info`
--

INSERT INTO `log_info` (`id`, `ip`, `browser`, `device`, `os`, `date_time_log`) VALUES
(37, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-07-13 08:02:00'),
(38, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-07-16 21:47:20'),
(39, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-07-16 22:26:13'),
(40, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-07-16 22:26:17'),
(41, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-07-21 10:40:01'),
(42, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-07-21 10:40:09'),
(43, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:30:21'),
(44, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:30:26'),
(45, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:30:41'),
(46, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:30:53'),
(47, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:30:56'),
(48, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:30:58'),
(49, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:31:11'),
(50, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:31:16'),
(51, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:31:32'),
(52, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-02 22:31:36'),
(53, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-08-10 09:19:16'),
(54, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-08-10 09:19:23'),
(55, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-08-10 09:19:27'),
(56, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-08-10 09:19:41'),
(57, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-08-10 09:20:01'),
(58, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-08-10 09:20:06'),
(59, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-18 08:29:49'),
(60, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-28 18:09:44'),
(61, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-28 18:10:25'),
(62, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-28 18:10:46'),
(63, '148.252.129.98', 'Safari Browser', 'Tablet', 'Android', '2020-08-28 19:40:51'),
(64, '31.13.115.21', 'Unknown Browser', 'Computer', 'Unknown OS Platform', '2020-08-28 19:43:01'),
(65, '31.13.115.111', 'Unknown Browser', 'Computer', 'Unknown OS Platform', '2020-08-28 19:43:01'),
(66, '148.252.129.98', 'Safari Browser', 'Tablet', 'Android', '2020-08-28 19:49:03'),
(67, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-08-29 21:56:26'),
(68, '::1', 'Chrome', 'Computer', 'Windows 10', '2020-09-02 22:39:08'),
(69, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-06 20:14:15'),
(70, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-06 21:10:54'),
(71, '::1', 'Chrome', 'Computer', 'Windows 10', '2020-09-08 22:26:48'),
(72, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-10 08:21:31'),
(73, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-12 00:10:40'),
(74, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-12 00:20:54'),
(75, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-12 00:35:56'),
(76, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-12 00:39:17'),
(77, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-12 20:06:53'),
(78, '79.112.120.137', 'Chrome', 'Computer', 'Windows 10', '2020-09-12 20:39:37'),
(79, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-14 11:31:24'),
(80, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 09:31:30'),
(81, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 09:33:15'),
(82, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 11:58:01'),
(83, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 12:35:56'),
(84, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 12:36:18'),
(85, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 12:36:52'),
(86, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-22 12:37:20'),
(87, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:51:39'),
(88, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:54:42'),
(89, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:54:45'),
(90, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:55:19'),
(91, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:55:22'),
(92, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:55:50'),
(93, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:55:54'),
(94, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-09-29 10:56:53'),
(95, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 18:54:47'),
(96, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:08:36'),
(97, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:16:29'),
(98, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:16:49'),
(99, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:29:23'),
(100, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:29:55'),
(101, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:30:36'),
(102, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:31:50'),
(103, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:31:53'),
(104, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:32:15'),
(105, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:33:08'),
(106, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:33:19'),
(107, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:33:26'),
(108, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:34:34'),
(109, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:35:51'),
(110, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:36:27'),
(111, '79.112.24.146', 'Chrome', 'Computer', 'Windows 10', '2020-10-18 19:38:39'),
(112, '79.112.24.146', 'Safari Browser', 'Tablet', 'Android', '2020-10-18 19:38:59'),
(113, '79.112.24.146', 'Safari Browser', 'Tablet', 'Android', '2020-10-18 19:39:14'),
(114, '79.112.13.66', 'Chrome', 'Computer', 'Windows 10', '2020-10-27 22:47:08'),
(115, '79.112.122.226', 'Chrome', 'Computer', 'Windows 10', '2020-10-29 22:35:52'),
(116, '79.112.122.226', 'Chrome', 'Computer', 'Windows 10', '2020-10-29 22:37:09'),
(117, '79.112.122.226', 'Chrome', 'Computer', 'Windows 10', '2020-10-29 22:37:16'),
(118, '79.112.122.226', 'Chrome', 'Computer', 'Windows 10', '2020-10-29 22:37:23'),
(119, '79.112.122.226', 'Chrome', 'Computer', 'Windows 10', '2020-10-29 22:37:33'),
(120, '79.112.122.226', 'Safari Browser', 'Mobile', 'Android', '2020-10-29 22:46:39'),
(121, '79.112.122.226', 'Safari Browser', 'Mobile', 'Android', '2020-10-29 22:49:14'),
(122, '2a02:2f0e:5b14:9500:85a1:e521:7ac:72b0', 'Chrome', 'Computer', 'Windows 10', '2020-10-30 12:19:49'),
(123, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-01 22:13:32'),
(124, '79.112.97.53', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 22:13:46'),
(125, '79.112.97.53', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 22:28:15'),
(126, '37.251.222.56', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 22:28:23'),
(127, '37.251.222.56', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 22:29:13'),
(128, '::1', 'Chrome', 'Computer', 'Windows 10', '2020-11-01 22:33:45'),
(129, '37.251.222.56', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 23:19:12'),
(130, '37.251.222.56', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 23:19:25'),
(131, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-01 23:24:18'),
(132, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-01 23:24:25'),
(133, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-01 23:47:17'),
(134, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-01 23:47:20'),
(135, '37.251.222.56', 'Safari Browser', 'Tablet', 'Android', '2020-11-01 23:52:27'),
(136, '79.112.97.53', 'Safari Browser', 'Tablet', 'Android', '2020-11-02 08:27:17'),
(137, '37.251.221.97', 'Safari Browser', 'Tablet', 'Android', '2020-11-02 08:27:28'),
(138, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:29:45'),
(139, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:30:10'),
(140, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:30:12'),
(141, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:30:39'),
(142, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:31:12'),
(143, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:31:46'),
(144, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:31:48'),
(145, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:32:03'),
(146, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:32:05'),
(147, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:33:11'),
(148, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:33:56'),
(149, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 08:34:07'),
(150, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:06:14'),
(151, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:06:38'),
(152, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:07:21'),
(153, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:07:35'),
(154, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:08:31'),
(155, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:09:04'),
(156, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:09:14'),
(157, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:09:18'),
(158, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:09:27'),
(159, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:09:32'),
(160, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:37:44'),
(161, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:37:55'),
(162, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:43:21'),
(163, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:51:16'),
(164, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 10:56:40'),
(165, '5.2.184.139', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 11:01:26'),
(166, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:41:32'),
(167, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:42:49'),
(168, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:43:13'),
(169, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:43:47'),
(170, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:44:12'),
(171, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:46:08'),
(172, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:46:12'),
(173, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:46:15'),
(174, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:46:19'),
(175, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:50:39'),
(176, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:50:44'),
(177, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:51:51'),
(178, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-02 17:52:12'),
(179, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-03 10:17:06'),
(180, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-04 18:14:28'),
(181, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-04 18:15:27'),
(182, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-04 18:15:32'),
(183, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-04 18:15:39'),
(184, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-05 19:05:49'),
(185, '37.251.220.235', 'Safari Browser', 'Tablet', 'Android', '2020-11-05 19:11:21'),
(186, '37.251.220.235', 'Safari Browser', 'Tablet', 'Android', '2020-11-05 19:12:01'),
(187, '37.251.220.235', 'Safari Browser', 'Tablet', 'Android', '2020-11-05 19:12:12'),
(188, '37.251.220.235', 'Safari Browser', 'Tablet', 'Android', '2020-11-06 08:53:19'),
(189, '37.251.220.235', 'Safari Browser', 'Tablet', 'Android', '2020-11-06 08:59:30'),
(190, '37.251.220.235', 'Safari Browser', 'Tablet', 'Android', '2020-11-06 09:18:20'),
(191, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:03:51'),
(192, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:05:00'),
(193, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:20:56'),
(194, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:21:38'),
(195, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:22:32'),
(196, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:22:37'),
(197, '92.86.26.98', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:27:16'),
(198, '79.201.148.202', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:33:46'),
(199, '79.201.148.202', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:34:19'),
(200, '79.201.148.202', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:35:15'),
(201, '79.201.148.202', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:36:43'),
(202, '79.201.148.202', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:36:59'),
(203, '79.201.148.202', 'Chrome', 'Computer', 'Windows 10', '2020-11-06 10:37:05'),
(204, '37.251.220.235', 'Safari Browser', 'Mobile', 'Android', '2020-11-06 13:48:06'),
(205, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 10:23:38'),
(206, '31.13.103.117', 'Unknown Browser', 'Computer', 'Unknown OS Platform', '2020-11-07 14:16:14'),
(207, '31.13.103.15', 'Unknown Browser', 'Computer', 'Unknown OS Platform', '2020-11-07 14:16:14'),
(208, '::1', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:09:56'),
(209, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:13:29'),
(210, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:13:34'),
(211, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:28:35'),
(212, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:30:16'),
(213, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:32:36'),
(214, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:34:21'),
(215, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:34:48'),
(216, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:36:32'),
(217, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:36:43'),
(218, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:37:14'),
(219, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:40:24'),
(220, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:41:25'),
(221, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:42:28'),
(222, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:42:33'),
(223, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:42:47'),
(224, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:46:55'),
(225, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:48:50'),
(226, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:49:06'),
(227, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:49:18'),
(228, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:50:20'),
(229, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:50:25'),
(230, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 22:51:39'),
(231, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:02:20'),
(232, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:07:34'),
(233, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:07:41'),
(234, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:07:42'),
(235, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:09:31'),
(236, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:15:25'),
(237, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:15:36'),
(238, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:16:58'),
(239, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:17:06'),
(240, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:17:14'),
(241, '79.112.97.53', 'Chrome', 'Computer', 'Windows 10', '2020-11-07 23:28:02'),
(242, '31.13.103.13', 'Unknown Browser', 'Computer', 'Unknown OS Platform', '2020-11-08 01:10:19'),
(243, '::1', 'Chrome', 'Computer', 'Windows 10', '2020-11-10 21:06:06'),
(244, '::1', 'Chrome', 'Computer', 'Windows 10', '2020-11-10 21:06:19');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_06_26_185723_create_myprojects_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myprojects`
--

CREATE TABLE `myprojects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `launch_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_code_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myprojects`
--

INSERT INTO `myprojects` (`id`, `name`, `description`, `launch_link`, `images`, `source_code_link`, `created_at`, `updated_at`) VALUES
(1, 'Romania frumoasa', 'It is make in a simple php and little js (don\'t use any framework)\r\n    In admin mode:\r\n    username:david\r\n    password:david12', 'http://79.112.97.53/Romania_Frumoasa2/', 'public/media/011120_21_48_470.bmp,public/media/011120_21_48_471.bmp,public/media/011120_21_48_472.bmp,public/media/011120_21_48_473.bmp', 'https://github.com/BranDavidIonel/Romania_frumoasa', NULL, NULL),
(10, 'Apartments for rent', 'This site is made in Codeigniter framework (PHP) \r\n\r\nI made this site because I whant to import data for other site , I want to import data from other sites that give me in XML information.\r\nIn admin mode the username is \"david\" and the password is \"david12\"', 'http://79.112.97.53/ApartamenteDeInchiriat/', 'public/media/061120_08_33_200.bmp,public/media/061120_08_33_201.bmp,public/media/061120_08_33_202.bmp', 'https://github.com/BranDavidIonel/ApartamenteDeInchiriat', NULL, NULL),
(12, 'MyWork', 'This site for prezentation is made in Laravel framework  and have CRUD operation( in admin mode ).', 'http://79.112.97.53/MyWork/MyWork/public/', 'public/media/110720_16_58_220.bmp,public/media/110720_16_58_221.bmp,public/media/110720_16_58_222.bmp', 'https://github.com/BranDavidIonel/MyWork', NULL, NULL),
(16, 'Dictionary-BD', 'It is made in C# ( Windows Forms) , the date about the words is kept in files TXT , you can add words in english and romanian.', '.......', 'public/media/050720_19_18_270.bmp,public/media/050720_19_18_271.bmp', 'https://github.com/BranDavidIonel/Dictionary-BD', NULL, NULL),
(19, 'HandF', 'Ii is a little game made in C# in Windows Forms ,  In this game It is about  hunts deers and rabbits or other animals..First you search on map ( something to shoot) and after that you hit de button \"see\" and shoot the animal. :)', '..', 'public/media/160720_19_02_250.bmp,public/media/160720_19_02_251.bmp,public/media/160720_19_02_252.bmp,public/media/160720_19_02_253.bmp', 'https://github.com/BranDavidIonel/HuntingAndFishing', NULL, NULL);

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
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'david', 'david@yahoo.com', NULL, '$2y$10$MB7TGvU7aXIkI7WCXwMwhOZCTrbZt/aQsaK7t.WQoesCCOw0hETI6', NULL, '2020-07-07 16:35:01', '2020-07-07 16:35:01'),
(2, 'ion', 'bran.ionel@gmail.com', NULL, '$2y$10$5n2WjYGrXLf/dCaYiI12rOoZzGOtcgOyhShQNLGoLYxHUhbf.kPCa', NULL, '2020-07-07 16:51:15', '2020-07-07 16:51:15'),
(3, 'david', 'bran.ionel2@gmail.com', NULL, '$2y$10$ORL/Lx1jvMZUIk0DvJOUXurzRiG4049Ff.aBOoj2tNb6s1qNcoVNe', NULL, '2020-09-06 14:16:49', '2020-09-06 14:16:49'),
(4, 'david', 'david12@yahoo.com', NULL, '$2y$10$Bm93sqA7wFLxWjei6kAMRedyvIBoAzfHki6y8gPgNCzniHDcDBtBu', NULL, '2020-11-01 19:26:59', '2020-11-01 19:26:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_info`
--
ALTER TABLE `log_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myprojects`
--
ALTER TABLE `myprojects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_info`
--
ALTER TABLE `log_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myprojects`
--
ALTER TABLE `myprojects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
