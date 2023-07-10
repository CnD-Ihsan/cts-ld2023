-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 05:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctsld2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `winner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `name`, `img`, `type`, `winner`) VALUES
(1, 'Insta 360 Virtual Tour Kit', '1', 'grand', '15'),
(2, 'Voucher Habib', '2', 'standard', NULL),
(3, 'Voucher Habib', '3', 'standard', NULL),
(4, 'Voucher Habib', '4', 'standard', NULL),
(5, 'Voucher Habib', '5', 'standard', NULL),
(6, 'Voucher Habib', '6', 'standard', NULL),
(11, 'Outback Omega 200 Gas Barbeque with cover', '11', 'grand', NULL),
(12, 'MI Electric Scooter 1S', '12', 'grand', NULL),
(13, 'MI Electric Scooter 1S', '13', 'grand', NULL),
(14, 'Voucher Senq', '14', 'standard', NULL),
(15, 'Voucher Senq', '15', 'standard', NULL),
(16, 'Voucher Senq', '16', 'standard', NULL),
(17, 'Voucher Senq', '17', 'standard', '19'),
(18, 'Voucher Senq', '18', 'standard', NULL),
(19, 'Set Nespresso Inissia + Capsules', '19', 'standard', NULL),
(20, 'Set Nespresso Inissia + Capsules', '20', 'standard', '48'),
(21, 'Set Nespresso Inissia + Capsules', '21', 'standard', NULL),
(25, 'Set Nescafe Dolce + Cornell 2 in 1 Grill', '25', 'standard', NULL),
(26, 'Samsung Galaxy S22 + Free Wireless Charger + Free gift from store', '26', 'grand', NULL),
(27, 'Galaxy Watch 5 Bluetooth + Free extra strap + Free gift from store', '27', 'grand', NULL),
(28, 'Set Apple Watch Series 7 + Airpod 3rd Gen', '28', 'grand', NULL),
(29, 'Ipad Air 64GB', '29', 'grand', NULL),
(30, 'Voucher Tong\'s', '30', 'standard', NULL),
(31, 'Voucher Tong\'s', '31', 'standard', NULL),
(32, 'Voucher Tong\'s', '32', 'standard', NULL),
(33, 'Voucher Tong\'s', '33', 'standard', '69'),
(34, 'Voucher Tong\'s', '34', 'standard', NULL),
(35, 'Voucher Top Kinabalu', '35', 'standard', NULL),
(36, 'Voucher Top Kinabalu', '36', 'standard', NULL),
(37, 'Voucher Top Kinabalu', '37', 'standard', NULL),
(38, 'Voucher Top Kinabalu', '38', 'standard', NULL),
(39, 'Voucher Top Kinabalu', '39', 'standard', NULL),
(40, 'Voucher Top Kinabalu', '40', 'standard', NULL),
(41, 'HAIER 250L BD-248WL Digital Touch Upright Freezer', '41', 'grand', NULL),
(42, 'LG 50\" 50UP7550PTB 4K SMART TV', '42', 'grand', NULL),
(43, 'SAMSUNG 13KG WA13T5360BV/FQ TOP LOAD WASHER', '43', 'grand', NULL),
(44, 'Dyson V8 Slim? Fluffy+', '44', 'grand', NULL),
(45, 'Toshiba DW-08T1(S)-MY 8 Diswasher ', '45', 'grand', NULL),
(46, 'Midea 7kg MD 7388 VENTING DRYER', '46', 'grand', NULL),
(47, 'Faber FCH 3C/69BK Built In Ceramic Hob', '47', 'standard', NULL),
(48, 'Faber FCH 3C/69BK Built In Ceramic Hob', '48', 'standard', NULL),
(49, 'Faber FCH 3C/69BK Built In Ceramic Hob', '49', 'standard', NULL),
(50, 'Faber FCH 3C/69BK Built In Ceramic Hob', '50', 'standard', NULL),
(51, 'Set Cornell Top Pan Grill + Samsung 30L Microwave Oven', '51', 'standard', NULL),
(52, 'Set Cornell Top Pan Grill + Samsung 30L Microwave Oven', '52', 'standard', NULL),
(53, 'Set Cornell Top Pan Grill + Samsung 30L Microwave Oven', '53', 'standard', NULL),
(54, 'Set Cornell Top Pan Grill + Samsung 30L Microwave Oven', '54', 'standard', NULL),
(55, 'Set La Gourmet 12L Convection Oven + Hamilton Beach Blender', '55', 'standard', NULL),
(56, 'Set La Gourmet 12L Convection Oven + Hamilton Beach Blender', '56', 'standard', NULL),
(57, 'Set La Gourmet 12L Convection Oven + Hamilton Beach Blender', '57', 'standard', NULL),
(58, 'Set La Gourmet 12L Convection Oven + Hamilton Beach Blender', '58', 'standard', NULL),
(59, 'Set Elba 10L Food Steamer + Kenwood 2.1L Metal Food Processor + Kenwood 10L Toaster Oven', '59', 'standard', '89'),
(60, 'Set Elba 10L Food Steamer + Kenwood 2.1L Metal Food Processor + Kenwood 10L Toaster Oven', '60', 'standard', NULL),
(61, 'Set Elba 10L Food Steamer + Kenwood 2.1L Metal Food Processor + Kenwood 10L Toaster Oven', '61', 'standard', NULL),
(62, 'Set Elba 10L Food Steamer + Kenwood 2.1L Metal Food Processor + Kenwood 10L Toaster Oven', '62', 'standard', NULL),
(63, 'Set Panasonic Blender + Lebensstil Air Fryer Oven', '63', 'standard', NULL),
(64, 'Set Panasonic Blender + Lebensstil Air Fryer Oven', '64', 'standard', '72'),
(65, 'Set Panasonic Blender + Lebensstil Air Fryer Oven', '65', 'standard', NULL),
(66, 'Set Panasonic Blender + Lebensstil Air Fryer Oven', '66', 'standard', NULL),
(67, 'Set Philips Cordless Stick Vacuum Cleaner + Midea 2L Stand Garment Steamer', '67', 'standard', NULL),
(68, 'Set Philips Cordless Stick Vacuum Cleaner + Midea 2L Stand Garment Steamer', '68', 'standard', NULL),
(69, 'Set Philips Cordless Stick Vacuum Cleaner + Midea 2L Stand Garment Steamer', '69', 'standard', NULL),
(70, 'Set Philips Cordless Stick Vacuum Cleaner + Midea 2L Stand Garment Steamer', '70', 'standard', '29'),
(71, 'Sony 5.1CH Home Cinema Soundbar System HT-S20R', '71', 'standard', NULL),
(72, 'Sony 5.1CH Home Cinema Soundbar System HT-S20R', '72', 'standard', NULL),
(73, 'Sony 5.1CH Home Cinema Soundbar System HT-S20R', '73', 'standard', NULL),
(74, 'Sony 5.1CH Home Cinema Soundbar System HT-S20R', '74', 'standard', NULL),
(75, 'Toshiba 7KG AW-J800AM Top Load Washer', '75', 'standard', NULL),
(76, 'Toshiba 7KG AW-J800AM Top Load Washer', '76', 'standard', NULL),
(77, 'Toshiba 7KG AW-J800AM Top Load Washer', '77', 'standard', '6'),
(78, 'uZen Massage Chair', '78', 'grand', NULL),
(79, 'Set Zero Galaxy Mobile Seat + Mini Shiatsu Pillow + iFit Eye Massager + uRelex', '79', 'standard', NULL),
(80, 'Set Zero Galaxy Mobile Seat + Mini Shiatsu Pillow + iFit Eye Massager + uRelex', '80', 'standard', NULL),
(81, 'Set Zero Galaxy Mobile Seat + Mini Shiatsu Pillow + iFit Eye Massager + uRelex', '81', 'standard', NULL),
(82, 'Voucher Senq', '82', 'standard', NULL),
(83, 'Voucher Senq', '83', 'standard', NULL),
(84, 'Voucher UNIQLO', '84', 'standard', NULL),
(85, 'Voucher UNIQLO', '85', 'standard', NULL),
(86, 'Voucher UNIQLO', '86', 'standard', NULL),
(87, 'Voucher UNIQLO', '87', 'standard', NULL),
(88, 'Voucher UNIQLO', '88', 'standard', NULL),
(89, 'Voucher AirAsia (Superplus)', '89', 'standard', NULL),
(90, 'Voucher AirAsia (Superplus)', '90', 'standard', NULL),
(91, 'Voucher AirAsia (Superplus)', '91', 'standard', NULL),
(92, 'Voucher AirAsia (Superplus)', '92', 'standard', NULL),
(93, 'Voucher AirAsia (Superplus)', '93', 'standard', NULL),
(94, 'Voucher AirAsia (Superplus)', '94', 'standard', '53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `prize`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, '77'),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL),
(12, NULL),
(14, NULL),
(15, '1'),
(17, NULL),
(18, NULL),
(19, '17'),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, NULL),
(28, NULL),
(29, '70'),
(30, NULL),
(31, NULL),
(32, NULL),
(33, NULL),
(35, NULL),
(36, NULL),
(37, NULL),
(38, NULL),
(39, NULL),
(40, NULL),
(41, NULL),
(42, NULL),
(43, NULL),
(44, NULL),
(46, NULL),
(47, NULL),
(48, '20'),
(49, NULL),
(50, NULL),
(51, NULL),
(52, NULL),
(53, '94'),
(54, NULL),
(55, NULL),
(56, NULL),
(57, NULL),
(58, NULL),
(59, NULL),
(60, NULL),
(61, NULL),
(62, NULL),
(64, NULL),
(65, NULL),
(66, NULL),
(67, NULL),
(68, NULL),
(69, '33'),
(70, NULL),
(71, NULL),
(72, '64'),
(73, NULL),
(74, NULL),
(75, NULL),
(76, NULL),
(77, NULL),
(78, NULL),
(80, NULL),
(81, NULL),
(82, NULL),
(83, NULL),
(84, NULL),
(85, NULL),
(86, NULL),
(87, NULL),
(88, NULL),
(89, '59'),
(91, NULL),
(92, NULL),
(93, NULL),
(94, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `winnings`
--

CREATE TABLE `winnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `winnings`
--

INSERT INTO `winnings` (`id`, `user`, `prize`) VALUES
(1, '6', '77'),
(2, '48', '20'),
(3, '72', '64'),
(4, '29', '70'),
(5, '69', '33'),
(6, '19', '17'),
(7, '89', '59'),
(8, '53', '94'),
(9, '15', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `winnings`
--
ALTER TABLE `winnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
