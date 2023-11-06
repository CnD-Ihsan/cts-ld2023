-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cts_ld2023`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_09_19_032723_create_gifts_table', 1),
(4, '2022_09_28_080509_create_winnings_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

CREATE TABLE `prizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `img` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `winner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`id`, `name`, `img`, `type`, `winner`) VALUES
(1, 'Apple iPad Air (5th generation), 2022, Wifi (256GB) (1Year Warranty)', '1', 'grand', '59'),
(2, 'Zero Massage Chair (Ubliss)', '2', 'grand', '85'),
(3, 'SONY Playstation 5 Disc Version', '3', 'grand', '52'),
(4, 'Dyson V8 Slim Fluffy+ Vacuum', '4', 'grand', '9'),
(5, 'MH Gift Card', '5', 'grand', '84'),
(6, 'Habib Voucher', '6', 'grand', '67'),
(7, 'SenQ Cash Voucher', '11', 'grand', '53'),
(8, 'DJI Pocket 2', '12', 'grand', '36'),
(9, 'Apple Watch SE 2023 40mm ', '13', 'grand', '20'),
(10, 'KIV', '14', 'grand', '96');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) DEFAULT NULL,
  `prize` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `number`, `prize`) VALUES
(1, 10101, NULL),
(2, 10102, NULL),
(3, 10103, NULL),
(4, 10104, NULL),
(5, 10105, NULL),
(6, 10106, NULL),
(7, 10107, NULL),
(8, 10108, NULL),
(9, 10109, '4'),
(10, 10110, NULL),
(11, 10111, NULL),
(12, 10112, NULL),
(13, 10113, NULL),
(14, 10114, NULL),
(15, 10115, NULL),
(16, 10116, NULL),
(17, 10117, NULL),
(18, 10118, NULL),
(19, 10119, NULL),
(20, 10120, '9'),
(21, 10121, NULL),
(22, 10122, NULL),
(23, 10123, NULL),
(24, 10124, NULL),
(25, 10125, NULL),
(26, 10126, NULL),
(27, 10127, NULL),
(28, 10128, NULL),
(29, 10129, NULL),
(30, 10130, NULL),
(31, 10131, NULL),
(32, 10132, NULL),
(33, 10133, NULL),
(34, 10134, NULL),
(35, 10135, NULL),
(36, 10136, '8'),
(37, 10137, NULL),
(38, 10138, NULL),
(39, 10139, NULL),
(40, 10140, NULL),
(41, 10141, NULL),
(42, 10142, NULL),
(43, 10143, NULL),
(44, 10144, NULL),
(45, 10145, NULL),
(46, 10146, NULL),
(47, 10147, NULL),
(48, 10148, NULL),
(49, 10149, NULL),
(50, 10150, NULL),
(51, 10151, NULL),
(52, 10152, '3'),
(53, 10153, '7'),
(54, 10154, NULL),
(55, 10155, NULL),
(56, 10156, NULL),
(57, 10157, NULL),
(58, 10158, NULL),
(59, 10159, '1'),
(60, 10160, NULL),
(61, 10161, NULL),
(62, 10162, NULL),
(63, 10163, NULL),
(64, 10164, NULL),
(65, 10165, NULL),
(66, 10166, NULL),
(67, 10167, '6'),
(68, 10168, NULL),
(69, 10169, NULL),
(70, 10170, NULL),
(71, 10171, NULL),
(72, 10172, NULL),
(73, 10173, NULL),
(74, 10174, NULL),
(75, 10175, NULL),
(76, 10176, NULL),
(77, 10177, NULL),
(78, 10178, NULL),
(79, 10179, NULL),
(80, 10180, NULL),
(81, 10181, NULL),
(82, 10182, NULL),
(83, 10183, NULL),
(84, 10184, '5'),
(85, 10185, '2'),
(86, 10186, NULL),
(87, 10187, NULL),
(88, 10188, NULL),
(89, 10189, NULL),
(90, 10190, NULL),
(91, 10191, NULL),
(92, 10192, NULL),
(93, 10193, NULL),
(94, 10194, NULL),
(95, 10195, NULL),
(96, 10196, '10'),
(97, 10197, NULL),
(98, 10198, NULL),
(99, 10199, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `winnings`
--

CREATE TABLE `winnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` text DEFAULT NULL,
  `prize` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `winnings`
--

INSERT INTO `winnings` (`id`, `user`, `prize`) VALUES
(1, '59', '1'),
(2, '85', '2'),
(3, '52', '3'),
(4, '9', '4'),
(5, '84', '5'),
(6, '67', '6'),
(7, '53', '7'),
(8, '36', '8'),
(9, '20', '9'),
(10, '96', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winnings`
--
ALTER TABLE `winnings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `winnings`
--
ALTER TABLE `winnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
