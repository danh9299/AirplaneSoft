-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 08:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airplanesoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `Flight_ID` bigint(20) UNSIGNED NOT NULL,
  `Aircraft_ID` varchar(255) NOT NULL,
  `Departure_Airport` varchar(15) NOT NULL,
  `Arrival_Airport` varchar(15) NOT NULL,
  `Departure_Time` time NOT NULL,
  `Arrival_Time` time NOT NULL,
  `Flight_Duration` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`Flight_ID`, `Aircraft_ID`, `Departure_Airport`, `Arrival_Airport`, `Departure_Time`, `Arrival_Time`, `Flight_Duration`, `created_at`, `updated_at`) VALUES
(2, '160', 'Tempore.', 'Omnis.', '16:49:45', '15:55:32', '09:08:30', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(3, '930', 'Tenetur.', 'Eum.', '11:40:02', '13:47:54', '20:54:33', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(4, '836', 'Sint.', 'Voluptatibus.', '04:59:30', '07:11:41', '00:03:36', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(5, '063', 'Velit.', 'Consectetur.', '19:49:23', '21:27:16', '17:23:12', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(6, '705', 'Enim autem.', 'Neque.', '23:03:14', '17:31:52', '11:04:58', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(7, '623', 'Ipsum aut.', 'Et.', '10:38:44', '22:50:22', '16:25:47', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(8, '854', 'Quia.', 'Similique.', '18:50:38', '04:53:45', '19:23:09', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(9, '026', 'Est.', 'Incidunt.', '06:04:19', '20:16:52', '04:44:39', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(10, '918', 'Est ut est.', 'Illum amet.', '15:52:00', '04:01:37', '22:23:21', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(11, '179', 'Aut.', 'Eos et.', '01:51:02', '14:53:53', '20:49:54', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(12, '448', 'Ut aut.', 'Suscipit.', '18:09:55', '14:46:53', '21:54:47', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(13, '850', 'Omnis.', 'Quo.', '22:56:35', '17:15:40', '13:11:56', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(14, '506', 'Sit.', 'Qui.', '18:43:02', '19:33:57', '02:42:04', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(15, '289', 'Quas id.', 'Deserunt ipsam.', '06:59:29', '20:34:06', '20:07:03', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(16, '088', 'Similique.', 'Voluptatum.', '09:30:10', '06:19:00', '16:26:25', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(17, '873', 'Facilis.', 'Rem.', '19:24:06', '18:28:15', '01:05:24', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(18, '639', 'Minima non.', 'Maxime.', '19:32:35', '07:12:15', '07:50:14', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(19, '994', 'Et.', 'Et.', '22:58:25', '07:47:22', '11:09:26', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(20, '490', 'Et.', 'Qui.', '07:03:39', '09:01:03', '17:37:25', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(21, '684', 'Voluptatem.', 'Consequatur.', '06:22:41', '10:47:12', '12:47:52', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(22, '849', 'Accusamus.', 'Numquam.', '13:34:05', '12:45:24', '09:13:25', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(23, '324', 'Illum minus.', 'Vel aut.', '14:14:59', '20:54:17', '19:40:46', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(24, '949', 'Aut sunt in.', 'Possimus.', '14:00:42', '17:51:14', '04:46:39', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(25, '810', 'Aut rerum.', 'Fugit.', '22:19:34', '21:00:59', '05:27:53', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(26, '411', 'Qui fuga.', 'Eum sed.', '05:44:46', '11:47:24', '15:32:35', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(27, '223', 'Et.', 'Dolorem.', '12:46:07', '18:48:07', '08:19:23', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(28, '903', 'Quasi.', 'Rem.', '15:55:13', '17:02:53', '10:04:16', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(29, '768', 'Qui iste.', 'Molestiae.', '19:21:16', '07:48:03', '13:29:13', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(30, '379', 'Quod.', 'Ab.', '06:20:40', '05:47:58', '23:21:22', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(31, '438', 'Iure.', 'Aut qui.', '16:03:19', '07:17:24', '15:47:17', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(32, '107', 'Aliquam.', 'Enim dolores.', '22:46:50', '16:19:39', '02:31:07', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(33, '407', 'Fugit.', 'Est.', '03:40:42', '02:19:20', '06:34:38', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(34, '741', 'Ut.', 'Suscipit id.', '19:53:17', '14:55:58', '09:48:42', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(35, '483', 'Et fuga.', 'Rerum sit.', '17:30:25', '10:40:45', '02:51:35', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(36, '067', 'Ipsa rem.', 'Architecto.', '02:40:39', '06:33:42', '22:34:17', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(37, '345', 'Eos autem.', 'Quo.', '07:31:30', '20:45:22', '10:28:27', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(38, '041', 'A eius.', 'Qui.', '14:54:03', '07:33:28', '22:07:42', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(39, '727', 'Numquam.', 'Quis ipsa quia.', '04:00:49', '19:43:57', '06:50:35', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(40, '464', 'Quia.', 'Ut deserunt.', '14:13:20', '23:02:18', '09:48:06', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(41, '182', 'Saepe.', 'Odio iste.', '12:08:56', '21:13:30', '08:34:56', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(42, '940', 'Autem.', 'At ut aut.', '02:21:53', '04:56:19', '10:54:16', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(43, '706', 'Magnam.', 'Rem.', '17:34:17', '14:22:29', '00:55:15', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(44, '321', 'Quod.', 'Numquam.', '18:01:06', '23:49:46', '22:09:13', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(45, '108', 'Nihil.', 'Minus.', '22:52:38', '15:04:17', '13:08:33', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(46, '720', 'Assumenda.', 'Minus tempore.', '09:29:38', '21:52:20', '05:24:26', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(47, '271', 'Vero.', 'Dolores.', '04:27:07', '03:43:50', '01:05:44', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(48, '277', 'Accusamus.', 'Est.', '08:21:45', '00:43:53', '17:01:32', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(49, '745', 'Quos.', 'Iste.', '19:37:15', '19:21:28', '16:04:32', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(50, '127', 'Ea.', 'Vel.', '11:43:42', '13:15:01', '05:53:08', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(51, '180', 'Quasi.', 'Provident.', '11:51:57', '11:46:31', '10:53:57', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(52, '153', 'Nihil autem.', 'Expedita.', '16:10:36', '02:11:03', '17:22:32', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(53, '919', 'Et.', 'Architecto.', '05:46:34', '05:55:17', '01:04:03', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(54, '578', 'Fuga.', 'Harum.', '16:41:29', '06:00:37', '12:31:27', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(55, '108', 'Omnis.', 'Assumenda.', '10:31:37', '15:52:30', '02:28:21', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(56, '067', 'Illo.', 'Ab.', '17:22:34', '10:10:37', '06:57:03', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(57, '862', 'Ut.', 'Unde.', '03:39:50', '04:09:21', '01:19:29', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(58, '307', 'Voluptatibus.', 'Vel quasi.', '21:48:36', '13:46:00', '15:51:30', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(59, '030', 'Earum.', 'Omnis aliquid.', '19:40:46', '22:55:59', '22:21:02', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(60, '840', 'Ut voluptas.', 'Aliquid et.', '04:16:46', '08:12:27', '19:30:46', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(61, '470', 'Ut.', 'Qui ea.', '10:43:30', '15:33:07', '23:05:09', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(62, '855', 'Est.', 'Natus.', '17:23:13', '18:56:15', '01:05:49', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(63, '923', 'Ut vel et aut.', 'Culpa.', '17:47:44', '23:12:39', '05:30:53', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(64, '972', 'Suscipit.', 'Ad.', '22:25:01', '12:18:03', '07:24:39', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(65, '385', 'Saepe aut.', 'Ut sunt.', '23:11:00', '03:19:00', '16:39:58', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(66, '283', 'Dolor.', 'Sequi.', '22:45:09', '05:47:55', '04:28:15', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(67, '640', 'Ducimus.', 'Ab nihil.', '21:37:34', '19:15:03', '04:08:58', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(68, '501', 'Esse unde.', 'Aliquid a.', '03:19:52', '10:36:11', '15:56:35', '2023-06-12 18:07:56', '2023-06-12 18:07:56'),
(70, '845', 'HCM', 'HN', '02:52:30', '02:52:30', '09:19:26', '2023-06-12 18:07:56', '2023-06-12 18:35:36'),
(71, '123', 'Hanoi', 'HCM', '20:34:00', '10:33:00', '08:35:00', '2023-06-12 18:33:13', '2023-06-12 18:33:13'),
(72, '123', 'Danang', 'Saigon', '09:07:00', '09:08:00', '09:08:00', '2023-06-12 19:03:45', '2023-06-12 19:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(7, '2019_08_19_000000_create_failed_jobs_table', 2),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(9, '2023_06_13_005436_create-flights-table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`Flight_ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `Flight_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
