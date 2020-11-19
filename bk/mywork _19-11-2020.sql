-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2020 at 01:01 PM
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_time_log` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_info`
--

INSERT INTO `log_info` (`id`, `ip`, `browser`, `device`, `os`, `date_time_log`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 21:47:51', NULL, NULL),
(2, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 21:47:55', NULL, NULL),
(3, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 21:47:59', NULL, NULL),
(4, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 21:47:59', NULL, NULL),
(5, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 21:48:06', NULL, NULL),
(6, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 21:48:07', NULL, NULL),
(7, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 22:03:28', NULL, NULL),
(8, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 22:03:28', NULL, NULL),
(9, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 22:05:20', NULL, NULL),
(10, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-12 22:25:29', NULL, NULL),
(11, '86.124.189.186', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 22:48:22', NULL, NULL),
(12, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 22:52:12', NULL, NULL),
(13, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 22:59:55', NULL, NULL),
(14, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 22:59:58', NULL, NULL),
(15, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:03', NULL, NULL),
(16, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:03', NULL, NULL),
(17, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:05', NULL, NULL),
(18, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:06', NULL, NULL),
(19, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:12', NULL, NULL),
(20, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:13', NULL, NULL),
(21, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:25', NULL, NULL),
(22, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:26', NULL, NULL),
(23, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:00:29', NULL, NULL),
(24, '86.124.189.186', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:16:05', NULL, NULL),
(25, '86.124.189.186', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:16:10', NULL, NULL),
(26, '86.124.189.186', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:16:10', NULL, NULL),
(27, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:16:33', NULL, NULL),
(28, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:16:37', NULL, NULL),
(29, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:20:34', NULL, NULL),
(30, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:20:39', NULL, NULL),
(31, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:20:39', NULL, NULL),
(32, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:20:47', NULL, NULL),
(33, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:20:50', NULL, NULL),
(34, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:21:06', NULL, NULL),
(35, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:21:12', NULL, NULL),
(36, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:21:26', NULL, NULL),
(37, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:21:32', NULL, NULL),
(38, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:21:44', NULL, NULL),
(39, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:21:48', NULL, NULL),
(40, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:26:30', NULL, NULL),
(41, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:34:25', NULL, NULL),
(42, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:34:31', NULL, NULL),
(43, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:34:43', NULL, NULL),
(44, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:34:45', NULL, NULL),
(45, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:38:38', NULL, NULL),
(46, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:38:43', NULL, NULL),
(47, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:38:45', NULL, NULL),
(48, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:38:55', NULL, NULL),
(49, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:38:57', NULL, NULL),
(50, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:04', NULL, NULL),
(51, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:06', NULL, NULL),
(52, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:12', NULL, NULL),
(53, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:14', NULL, NULL),
(54, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:19', NULL, NULL),
(55, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:21', NULL, NULL),
(56, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:31', NULL, NULL),
(57, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:32', NULL, NULL),
(58, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-15 23:39:32', NULL, NULL),
(59, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:15:13', NULL, NULL),
(60, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:19:12', NULL, NULL),
(61, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:21:04', NULL, NULL),
(62, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:25:02', NULL, NULL),
(63, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:25:08', NULL, NULL),
(64, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:25:19', NULL, NULL),
(65, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:25:24', NULL, NULL),
(66, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:25:31', NULL, NULL),
(67, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-18 23:25:33', NULL, NULL),
(68, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 10:25:49', NULL, NULL),
(69, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 10:34:14', NULL, NULL),
(70, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 11:19:59', NULL, NULL),
(71, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 11:31:25', NULL, NULL),
(72, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 11:32:48', NULL, NULL),
(73, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 13:06:39', NULL, NULL),
(74, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 13:06:50', NULL, NULL),
(75, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 13:06:56', NULL, NULL),
(76, '127.0.0.1', 'Chrome', 'Computer', 'Windows 10', '2020-11-19 13:52:52', NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_26_185723_create_myprojects_table', 1),
(5, '2020_07_07_191834_add_log_info_table', 1),
(6, '2020_11_12_152633_create_tags_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `myprojects`
--

CREATE TABLE `myprojects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `launch_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_code_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myprojects`
--

INSERT INTO `myprojects` (`id`, `user_id`, `name`, `description`, `launch_link`, `images`, `source_code_link`, `created_at`, `updated_at`) VALUES
(1, 1, 'Romania frumoasa', 'It is make in a simple php and little js (don\'t use any framework)\r\n    In admin mode:\r\n    username:david\r\n    password:david12', 'http://79.112.97.53/Romania_Frumoasa2/', 'public/media/011120_21_48_470.bmp,public/media/011120_21_48_471.bmp,public/media/011120_21_48_472.bmp,public/media/011120_21_48_473.bmp', 'https://github.com/BranDavidIonel/Romania_frumoasa', NULL, NULL),
(10, 1, 'Apartments for rent', 'This site is made in Codeigniter framework (PHP) \r\n\r\nI made this site because I whant to import data for other site , I want to import data from other sites that give me in XML information.\r\n', 'http://79.112.97.53/ApartamenteDeInchiriat/', 'public/media/061120_08_33_200.bmp,public/media/061120_08_33_201.bmp,public/media/061120_08_33_202.bmp', 'https://github.com/BranDavidIonel/ApartamenteDeInchiriat', NULL, NULL),
(12, 1, 'MyWork', 'This site for prezentation is made in Laravel framework  and have CRUD operation( in admin mode ).', 'http://79.112.97.53/MyWork/MyWork/public/', 'public/media/110720_16_58_220.bmp,public/media/110720_16_58_221.bmp,public/media/110720_16_58_222.bmp', 'https://github.com/BranDavidIonel/MyWork', NULL, NULL),
(16, 1, 'Dictionary-BD', 'It is made in C# ( Windows Forms) , the date about the words is kept in files TXT , you can add words in english and romanian.', '.......', 'public/media/050720_19_18_270.bmp,public/media/050720_19_18_271.bmp', 'https://github.com/BranDavidIonel/Dictionary-BD', NULL, NULL),
(19, 1, 'HandF', 'Ii is a little game made in C# in Windows Forms ,  In this game It is about  hunts deers and rabbits or other animals..First you search on map ( something to shoot) and after that you hit de ', '..', 'public/media/160720_19_02_250.bmp,public/media/160720_19_02_251.bmp,public/media/160720_19_02_252.bmp,public/media/160720_19_02_253.bmp', 'https://github.com/BranDavidIonel/HuntingAndFishing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `myproject_tag`
--

CREATE TABLE `myproject_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `myproject_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myproject_tag`
--

INSERT INTO `myproject_tag` (`id`, `myproject_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(24, 1, 3, '2020-11-19 09:57:53', '2020-11-19 09:57:53'),
(25, 10, 2, '2020-11-19 09:58:17', '2020-11-19 09:58:17'),
(26, 10, 3, '2020-11-19 09:58:17', '2020-11-19 09:58:17'),
(27, 16, 4, '2020-11-19 09:58:41', '2020-11-19 09:58:41'),
(28, 19, 4, '2020-11-19 09:59:00', '2020-11-19 09:59:00'),
(29, 12, 1, '2020-11-19 09:59:47', '2020-11-19 09:59:47'),
(30, 12, 3, '2020-11-19 09:59:47', '2020-11-19 09:59:47');

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
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'public/media/images_tag/191120_11_52_02.png', NULL, '2020-11-19 09:03:39'),
(2, 'Codeigniter', 'public/media/images_tag/191120_11_37_10.jpg', NULL, '2020-11-19 09:10:37'),
(3, 'PHP', 'public/media/images_tag/191120_09_45_30.jpg', '2020-11-19 07:30:45', '2020-11-19 07:30:45'),
(4, 'C#', 'public/media/images_tag/191120_09_04_32.jpg', '2020-11-19 07:32:04', '2020-11-19 07:32:04');

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
(1, 'david', 'david@yahoo.com', NULL, '$2y$10$QKl6fy06pw/HE9gCenogFeH5hwOnIAXu9Yxgk6E//WSv2Tba4m9K2', NULL, '2020-11-12 17:47:50', '2020-11-12 17:47:50');

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
-- Indexes for table `myproject_tag`
--
ALTER TABLE `myproject_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myproject_tag_myproject_id_foreign` (`myproject_id`),
  ADD KEY `myproject_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `myprojects`
--
ALTER TABLE `myprojects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `myproject_tag`
--
ALTER TABLE `myproject_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `myproject_tag`
--
ALTER TABLE `myproject_tag`
  ADD CONSTRAINT `myproject_tag_myproject_id_foreign` FOREIGN KEY (`myproject_id`) REFERENCES `myprojects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `myproject_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
