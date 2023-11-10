-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 10:23 AM
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
(1, 'Apple iPad Air (5th generation), 2022, Wifi (256GB) (1Year Warranty)', '1', 'grand', '57'),
(2, 'Ubliss Zero Massage Chair ', '2', 'grand', NULL),
(3, 'SONY Playstation 5 (Disc Version)', '3', 'grand', NULL),
(4, 'Dyson v8 Slim Fluffy Vacuum', '4', 'grand', NULL),
(5, 'MH Gift Card', '5', 'grand', NULL),
(6, 'Habib Voucher', '6', 'grand', NULL),
(7, 'Top Kinabalu Voucher', '7', 'grand', NULL),
(8, 'DJI Pocket 2', '8', 'grand', NULL),
(9, 'Apple Watch SE (2023)', '9', 'grand', NULL),
(10, 'Habib Voucher', '10', 'grand', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `number` varchar(191) DEFAULT NULL,
  `prize` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `number`, `prize`) VALUES
(1, '23001', NULL),
(2, '23002', NULL),
(3, '23003', NULL),
(4, '23004', NULL),
(5, '23005', NULL),
(6, '23006', NULL),
(7, '23007', NULL),
(8, '23008', NULL),
(9, '23009', NULL),
(10, '23010', NULL),
(11, '23011', NULL),
(12, '23012', NULL),
(13, '23013', NULL),
(14, '23014', NULL),
(15, '23015', NULL),
(16, '23016', NULL),
(17, '23017', NULL),
(18, '23018', NULL),
(19, '23019', NULL),
(20, '23020', NULL),
(21, '23021', NULL),
(22, '23022', NULL),
(23, '23023', NULL),
(24, '23024', NULL),
(25, '23025', NULL),
(26, '23026', NULL),
(27, '23027', NULL),
(28, '23028', NULL),
(29, '23029', NULL),
(30, '23030', NULL),
(31, '23031', NULL),
(32, '23032', NULL),
(33, '23033', NULL),
(34, '23034', NULL),
(35, '23035', NULL),
(36, '23036', NULL),
(37, '23037', NULL),
(38, '23038', NULL),
(39, '23039', NULL),
(40, '23040', NULL),
(41, '23041', NULL),
(42, '23042', NULL),
(43, '23043', NULL),
(44, '23044', NULL),
(45, '23045', NULL),
(46, '23046', NULL),
(47, '23047', NULL),
(48, '23048', NULL),
(49, '23049', NULL),
(50, '23050', NULL),
(51, '23051', NULL),
(52, '23052', NULL),
(53, '23053', NULL),
(54, '23054', NULL),
(55, '23055', NULL),
(56, '23056', NULL),
(57, '23057', '1'),
(58, '23058', NULL),
(59, '23059', NULL),
(60, '23060', NULL),
(61, '23061', NULL),
(62, '23062', NULL),
(63, '23063', NULL),
(64, '23064', NULL),
(65, '23065', NULL),
(66, '23066', NULL),
(67, '23067', NULL),
(68, '23068', NULL),
(69, '23069', NULL),
(70, '23070', NULL),
(71, '23071', NULL),
(72, '23072', NULL),
(73, '23073', NULL),
(74, '23074', NULL),
(75, '23075', NULL),
(76, '23076', NULL),
(77, '23077', NULL),
(78, '23078', NULL),
(79, '23079', NULL),
(80, '23080', NULL),
(81, '23081', NULL),
(82, '23082', NULL),
(83, '23083', NULL),
(84, '23084', NULL),
(85, '23085', NULL),
(86, '23086', NULL),
(87, '23087', NULL);

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
(9, '57', '1');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `winnings`
--
ALTER TABLE `winnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
