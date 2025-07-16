-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 09:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('superadmin','admin') DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Mustak Aalam', 'abcd@gmail.com', '$2y$10$yOwzg.qYyCw.M2HabjmwGu8yhjYmtrzQeS74JtsKqdNfIabQcZFUW', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `subscription_plan` enum('500','750','850') NOT NULL,
  `start_date` date NOT NULL,
  `ticket_pdf` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('pending','confirmed','cancelled','reserved') DEFAULT 'pending',
  `expiry_date` datetime NOT NULL DEFAULT current_timestamp(),
  `amount_paid` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `seat_id`, `subscription_plan`, `start_date`, `ticket_pdf`, `qr_code`, `created_at`, `status`, `expiry_date`, `amount_paid`, `total_amount`) VALUES
(38, 29, 13, '500', '2025-03-01', NULL, NULL, '2025-03-01 08:17:50', '', '2025-03-31 00:00:00', 750.00, 750.00),
(40, 23, 17, '500', '2025-07-16', NULL, NULL, '2025-07-16 07:35:21', 'confirmed', '2025-08-15 00:00:00', 500.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Mustak', 'mustakalam77@gmail.com', 'Hello', '2025-02-14 14:00:40'),
(2, 'Mustak', 'mustakalam77@gmail.com', 'Hello', '2025-02-15 04:59:17'),
(3, 'Vijay', 'vijaysinghthakur935@gmail.com', 'Seat pics and chair...?', '2025-03-01 05:29:17'),
(4, 'Ella Flora', 'ellafloramkt@gmail.com', ' 																\r\n 																\r\nHello,																\r\n																\r\nWith your permission I would like to send you a SEO Report with prices showing you a few things to greatly improve these search results for you.																\r\n																\r\nThese things are not difficult, and my report will be very specific. It will show you exactly what needs to be done to move you up in the rankings dramatically.																\r\n																\r\nIf interested. May I send you a quote/package/proposal.?																\r\n																\r\nThanks & Regards,																c\r\nElla Flora																\r\n																\r\n																\r\n																\r\n																\r\n																\r\n', '2025-03-04 06:42:46'),
(5, 'Ella Flora', 'ellafloramkt@gmail.com', ' 														\r\nHello,														\r\n														\r\nWith your permission I would like to send you a SEO Report with prices showing you a few things to greatly improve these search results for you.														\r\n														\r\nThese things are not difficult, and my report will be very specific. It will show you exactly what needs to be done to move you up in the rankings dramatically.														\r\n														\r\nIf interested. May I send you a quote/package/proposal.?														\r\n														\r\nThanks & Regards,														\r\nElla Flora														\r\n														\r\n														\r\n', '2025-03-04 06:44:33'),
(6, 'MyName', 'pffnmaon@do-not-respond.me', 'pBRIXJod fxsPW InBpUZt dBTwfj doOyffMp OZAC qrxIZtoW', '2025-03-18 03:07:38'),
(7, 'Anky ', 'info@letsgetuoptimize.com', 'Hey team lostmonktales.com,\r\n\r\nI would like to discuss SEO!\r\n\r\nI can help your website to get on first page of Google and increase the number of leads and sales you are getting from your website.\r\n\r\nMay I send you a quote & price list?\r\n\r\nBests Regards,\r\nAnky\r\nLets Get You Optimize\r\nAccounts Manager\r\nwww.letsgetuoptimize.com\r\nPhone No: +1 (949) 508-0277', '2025-03-20 13:28:43'),
(8, 'RaymondDup', 'raymondheibe@gmail.com', 'Yo! lostmonktales.com \r\n \r\nYou can send corporate offers without risk and in full compliance with the law, without worrying about spam filters. \r\nWhen such proposals are sent, no personal data is used, and messages are sent to forms specifically designed to receive messages and appeals. \r\nMessages submitted through Contact Forms are treated as significant, so they usually reach recipients without issue. \r\nStart using our service today—completely risk-free! \r\nRely on our service to send up to 50,000 messages efficiently. \r\n \r\nThe cost of sending one million messages is $59. \r\n \r\nThis message was automatically generated. \r\n \r\nContact us. \r\nTelegram - https://t.me/FeedbackFormEU \r\nWhatsApp - +375259112693 \r\nWhatsApp  https://wa.me/+375259112693 \r\nWe only use chat for communication.', '2025-03-28 14:26:04'),
(9, 'Ankit S', 'info@bestaiseocompany.com', 'Hey team lostmonktales.com,\r\n\r\nHope your doing well!\r\n\r\nI just following your website and realized that despite having a good design; but it was not ranking high on any of the Search Engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n*  Top ranking on Google search!\r\n*  Improve website clicks and views!\r\n*  Increase Your Leads, clients & Revenue!\r\n\r\nInterested? Please provide your name, contact information, and email.\r\n\r\nBests Regards,\r\nAnkit\r\nBest AI SEO Company\r\nAccounts Manager\r\nwww.bestaiseocompany.com\r\nPhone No: +1 (949) 508-0277', '2025-04-10 08:44:12'),
(10, 'Ankit S', 'info@bestaiseocompany.com', 'Hey team lostmonktales.com,\r\n\r\nHope your doing well!\r\n\r\nI just following your website and realized that despite having a good design; but it was not ranking high on any of the Search Engines (Google, Yahoo & Bing) for most of the keywords related to your business.\r\n\r\nWe can place your website on Google\'s 1st page.\r\n\r\n*  Top ranking on Google search!\r\n*  Improve website clicks and views!\r\n*  Increase Your Leads, clients & Revenue!\r\n\r\nInterested? Please provide your name, contact information, and email.\r\n\r\nBests Regards,\r\nAnkit\r\nBest AI SEO Company\r\nAccounts Manager\r\nwww.bestaiseocompany.com\r\nPhone No: +1 (949) 508-0277', '2025-04-18 15:58:14'),
(11, 'Mike Claude Moreau\r\n', 'mike@monkeydigital.co', 'Hi, \r\n \r\nThis is Mike from Monkey Digital, \r\nI am reaching out about a exciting collaboration. \r\n \r\nHow would you like to show our banners on your site and connect via your custom affiliate link towards popular SEO solutions from our platform? \r\n \r\nThis way, you receive a solid 35% residual income, every month from any sales that come in from your audience. \r\n \r\nThink about it, most website owners require SEO, so this is a massive opportunity. \r\n \r\nWe already have thousands of affiliates and our payouts are paid out monthly. \r\nRecently, we reached over $27,000 in affiliate earnings to our affiliates. \r\n \r\nIf you want in, kindly message us here: \r\nhttps://monkeydigital.co/affiliates-whatsapp/ \r\n \r\nOr sign up today: \r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ \r\n \r\nBest Regards, \r\nMike Claude Moreau\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-04-19 19:37:34'),
(12, 'NAEWTRER934998NEWETREWT', 'jsqobqxt@bonjourfmail.com', 'MEKYUJTYJ934998MAERWETT', '2025-04-20 22:51:07'),
(13, 'Mike Jiirqen Smith\r\n', 'info@digital-x-press.com', 'Greetings, \r\n \r\nI realize that many struggle to grasp that search engine optimization is a long-term game and a methodical monthly approach. \r\n \r\nThe reality is, very few site owners have the determination to wait for the slow but steady yet powerful results that can elevate their online presence. \r\n \r\nWith Google’s evolving algorithms, a steady, long-term strategy is critical for securing a positive ROI. \r\n \r\nIf you believe this as the most effective method, partner with us! \r\n \r\nDiscover Our SEO Growth Packages \r\nhttps://www.digital-x-press.com/unbeatable-seo/ \r\n \r\nContact Us on Live Support \r\nhttps://www.digital-x-press.com/whatsapp-us/ \r\n \r\nWe provide exceptional value for your SEO spend, and you will appreciate choosing us as your SEO partner. \r\n \r\nThank you, \r\nDigital X SEO Experts \r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-04-25 10:46:33'),
(14, 'Mike Laurent Wilson\r\n', 'mike@monkeydigital.co', 'Hi there, \r\n \r\nI wanted to check in with something that could seriously improve your website’s visitor count. We work with a trusted ad network that allows us to deliver genuine, geo-targeted social ads traffic for just $10 per 10,000 visits. \r\n \r\nThis isn\'t fake traffic—it’s actual users, tailored to your preferred location and niche. \r\n \r\nWhat you get: \r\n \r\n10,000+ real visitors for just $10 \r\nLocalized traffic for multiple regions \r\nHigher volumes available based on your needs \r\nUsed by marketers—we even use this for our SEO clients! \r\n \r\nWant to give it a try? Check out the details here: \r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ \r\n \r\nOr ask any questions on WhatsApp: \r\nhttps://monkeydigital.co/whatsapp-us/ \r\n \r\nLet\'s get started today! \r\n \r\nBest, \r\nMike Laurent Wilson\r\n \r\nPhone/whatsapp: +1 (775) 314-7914', '2025-04-26 13:04:09'),
(15, 'Hello', 'thwjnzfl@dont-reply.me', 'dtwvSTOm tqYHQmT WGdzJ', '2025-04-27 13:05:17'),
(16, 'Hello', 'jezqkrch@dont-reply.me', 'blQepCwy pSP iAChQc XPaKJj RioND UHngjSk', '2025-04-27 13:05:17'),
(17, 'TommyWex', 'xrumer23Teria@gmail.com', 'hi', '2025-04-28 09:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `credit_history`
--

CREATE TABLE `credit_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_history`
--

INSERT INTO `credit_history` (`id`, `user_id`, `amount`, `source`, `description`, `created_at`) VALUES
(9, 23, 1000, 'admin', 'Voucher assigned by admin', '2025-02-22 19:49:59'),
(10, 23, 1000, 'admin', 'Voucher assigned by admin: ', '2025-02-22 19:50:52'),
(11, 23, 1500, 'Mustak', 'Voucher applied: LM4CB16B1500', '2025-02-22 19:51:34'),
(13, 23, -500, 'pass_purchase', 'Purchased Library Pass', '2025-02-26 15:03:54'),
(15, 29, 750, 'admin', 'Credits added by admin', '2025-03-01 08:17:11');

-- --------------------------------------------------------

--
-- Table structure for table `library_passes`
--

CREATE TABLE `library_passes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status` enum('active','expired') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `library_passes`
--

INSERT INTO `library_passes` (`id`, `user_id`, `purchase_date`, `expiry_date`, `status`) VALUES
(1, 23, '2025-02-26', '2025-03-28', 'expired');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `is_read`) VALUES
(5, 23, 'hello', '2025-02-10 05:57:57', 1),
(7, 23, 'LM4CB16B1500', '2025-02-22 19:50:31', 1),
(8, 23, 'Your booking for Seat 1 has been cancelled by the admin. Please book a new seat.', '2025-02-22 19:52:52', 1),
(13, 23, 'Admin has booked Seat 1 for you with a ₹750 plan.', '2025-02-28 17:03:46', 1),
(27, 23, 'Your booking for Seat 1 has been cancelled by the admin.', '2025-03-01 08:41:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','completed','failed') DEFAULT 'pending',
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL,
  `status` enum('available','booked','selected') DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `seat_number`, `status`) VALUES
(1, 1, 'available'),
(2, 2, 'available'),
(3, 3, 'available'),
(4, 4, 'available'),
(5, 5, 'available'),
(6, 6, 'available'),
(7, 7, 'available'),
(8, 8, 'available'),
(9, 9, 'available'),
(10, 10, 'available'),
(11, 11, 'available'),
(12, 12, 'available'),
(13, 13, 'available'),
(14, 14, 'available'),
(15, 15, 'available'),
(16, 16, 'available'),
(17, 17, 'booked'),
(18, 18, 'available'),
(19, 19, 'available'),
(20, 20, 'available'),
(21, 21, 'available'),
(22, 22, 'available'),
(23, 23, 'available'),
(25, 24, 'available'),
(26, 25, 'available'),
(27, 26, 'available'),
(28, 27, 'available'),
(29, 28, 'available'),
(30, 29, 'available'),
(31, 30, 'available'),
(32, 31, 'available'),
(33, 32, 'available'),
(34, 33, 'available'),
(35, 34, 'available'),
(36, 35, 'available'),
(37, 36, 'available'),
(38, 37, 'available'),
(39, 38, 'available'),
(40, 39, 'available'),
(41, 40, 'available'),
(42, 41, 'available'),
(43, 42, 'available'),
(44, 43, 'available'),
(45, 44, 'available'),
(46, 45, 'available'),
(47, 46, 'available'),
(48, 47, 'available'),
(49, 48, 'available'),
(50, 49, 'available'),
(51, 50, 'available'),
(52, 51, 'available'),
(53, 52, 'available'),
(54, 53, 'available'),
(55, 54, 'available'),
(56, 55, 'available'),
(57, 56, 'available'),
(58, 57, 'available'),
(59, 58, 'available'),
(60, 59, 'available'),
(61, 60, 'available'),
(62, 61, 'available'),
(63, 62, 'available'),
(64, 63, 'available'),
(65, 64, 'available'),
(66, 65, 'available'),
(67, 66, 'available'),
(68, 67, 'available'),
(69, 68, 'available'),
(70, 69, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `suggestion` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_id`, `suggestion`, `created_at`) VALUES
(1, 23, 'hellp', '2025-02-26 15:13:20'),
(2, 23, 'Hlo', '2025-02-26 18:34:26'),
(3, 6, 'BHAIYA SMELL BHOT AATI HAI', '2025-02-28 16:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT 'default.png',
  `address` text DEFAULT NULL,
  `whatsapp_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(15) DEFAULT NULL,
  `home_address` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `id_proof` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `lm_credits` int(11) DEFAULT 0,
  `credits` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_image`, `address`, `whatsapp_link`, `created_at`, `phone`, `home_address`, `dob`, `id_proof`, `profile_photo`, `lm_credits`, `credits`) VALUES
(23, 'Mustak', 'mustakalam77@gmail.com', '$2y$10$UFNicev7w4zk3nEojW6YHu6GhYQT5wCmv.eDxGtUtjWSQdGrYiGJ6', '1738819425_1535067794857.jpg', NULL, NULL, '2025-02-06 05:23:45', '1234567890', 'Faridabad, Haryana', '1995-09-17', 'uploads/1738821253_shutterstock_1946273065-4096x2450.jpg', 'assets/img/default-avatar.png', 0, 750),
(29, 'Abcd', 'abcd@gmail.com', '$2y$10$sATxw4LYKAmzkdRR6eTFQO/CmKh5glWZwi1hNW7dVyjqrh2wQgDiy', 'default.png', NULL, NULL, '2025-03-01 08:15:59', NULL, NULL, NULL, NULL, NULL, 0, 0),
(30, 'ShaunOvani', 'hollingsworthwalkley@gmail.com ', '$2y$10$PviSxZ/RU0oOMJ1osQtMJeXSsR5coFRxMwsOQ9kf9AIbP.DeHaUMm', 'default.png', NULL, NULL, '2025-03-09 08:55:50', NULL, NULL, NULL, NULL, NULL, 0, 0),
(31, 'Josephtredy', 'hollin.gsworthwalkley@gmail.com ', '$2y$10$EQPTfr4QjtRtox28alDah.nd7zsrgESJe8S8AgERPUgq9e5EZHcKG', 'default.png', NULL, NULL, '2025-03-09 19:00:51', NULL, NULL, NULL, NULL, NULL, 0, 0),
(32, 'Vikas', 'cmaintermediate0870@gmail.com', '$2y$10$wo.XHHzK2Rh/IUlQYU//qupWxwxQJ.eCFBXG6PMBkwqLbF4/35USC', 'default.png', NULL, NULL, '2025-04-07 07:10:46', NULL, NULL, NULL, NULL, NULL, 0, 0),
(33, 'Elen', 'annatreccani@icloud.com', '$2y$10$adWAq/Z6zSddREZmAACA0eRekuylSai5iWhhYVGPojnHA.4fuF3eO', 'default.png', NULL, NULL, '2025-04-13 13:53:37', NULL, NULL, NULL, NULL, NULL, 0, 0),
(34, 'MyName', 'xrynupee@dont-reply.me', '$2y$10$9cxSnXr4RfzI35Kvet0HI.2GwDYDiQHUhpH8n/XYQk48Ubpf7FfxC', 'default.png', NULL, NULL, '2025-04-27 13:05:17', NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `credit_value` int(11) NOT NULL,
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `discount` int(11) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `code`, `credit_value`, `used`, `created_at`, `discount`, `assigned_to`, `is_used`) VALUES
(41, 'LM77A0541000', 1000, 0, '2025-02-22 19:49:43', 0, 23, 1),
(42, 'LM7E70701000', 1000, 0, '2025-02-22 19:49:59', 0, 23, 1),
(43, 'LM4CB16B1500', 1500, 0, '2025-02-22 19:50:12', 0, 23, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_history`
--
ALTER TABLE `credit_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `library_passes`
--
ALTER TABLE `library_passes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seat_number` (`seat_number`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `credit_history`
--
ALTER TABLE `credit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `library_passes`
--
ALTER TABLE `library_passes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `credit_history`
--
ALTER TABLE `credit_history`
  ADD CONSTRAINT `credit_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `library_passes`
--
ALTER TABLE `library_passes`
  ADD CONSTRAINT `library_passes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
