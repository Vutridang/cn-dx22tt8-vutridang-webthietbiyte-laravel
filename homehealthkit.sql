-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 03, 2025 lúc 06:45 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `homehealthkit`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Máy đo huyết áp', 'may-do-huyet-ap', 0, NULL, '2025-09-02 14:46:53', '2025-09-02 14:46:53'),
(2, 'Máy đo huyết áp điện tử', 'may-do-huyet-ap-dien-tu', 1, NULL, '2025-09-02 14:47:16', '2025-09-02 14:47:16'),
(3, 'Máy đo huyết áp cơ học', 'may-do-huyet-ap-co-hoc', 1, NULL, '2025-09-02 14:47:29', '2025-09-02 14:47:29'),
(4, 'Máy đo huyết áp tự động', 'may-do-huyet-ap-tu-dong', 1, NULL, '2025-09-02 14:47:29', '2025-09-02 14:47:29'),
(5, 'Khẩu trang', 'khau-trang', 0, NULL, '2025-09-02 14:48:39', '2025-09-02 14:48:39'),
(6, 'Bộ sơ cứu', 'bo-so-cuu', 0, NULL, '2025-09-02 14:48:39', '2025-09-02 14:48:39'),
(7, 'Găng tay bảo hộ', 'gang-tay-bao-ho', 0, '2025-09-03 09:28:55', '2025-09-03 09:27:57', '2025-09-03 09:28:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'user1', 'admin@gmail.com', '0788388749', 'TPHCM', '', '2025-09-03 09:26:56', '2025-09-03 05:06:58', '2025-09-03 09:26:56'),
(4, 'Prof. Okey McLaughlin', 'user@admin.com', '0982097131', '94109 Porter Summit\r\nHanebury, OR 23587', '', NULL, '2025-09-03 05:27:07', '2025-09-03 05:27:07'),
(5, 'user2', 'admin1@gmail.com', '123456789', 'TPHCM', 'Thanh toán khi nhận hàng', NULL, '2025-09-03 09:21:54', '2025-09-03 09:21:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `name`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', 2, NULL, NULL, NULL),
(2, '2.jpg', 2, NULL, NULL, NULL),
(3, '3.jpg', 2, NULL, NULL, NULL),
(4, '4.jpg', 2, NULL, NULL, NULL),
(5, '5.jpg', 2, NULL, NULL, NULL),
(6, '1.jpg', 3, NULL, NULL, NULL),
(7, '2.jpg', 3, NULL, NULL, NULL),
(8, '3.jpg', 3, NULL, NULL, NULL),
(9, '4.jpg', 3, NULL, NULL, NULL),
(10, '5.jpg', 3, NULL, NULL, NULL),
(11, '1.jpg', 4, NULL, NULL, NULL),
(12, '2.jpg', 4, NULL, NULL, NULL),
(13, '3.jpg', 4, NULL, NULL, NULL),
(14, '4.jpg', 4, NULL, NULL, NULL),
(15, '5.jpg', 4, NULL, NULL, NULL),
(16, '1.jpg', 5, NULL, NULL, NULL),
(17, '2.jpg', 5, NULL, NULL, NULL),
(18, '3.jpg', 5, NULL, NULL, NULL),
(19, '4.jpg', 5, NULL, NULL, NULL),
(20, '5.jpg', 5, NULL, NULL, NULL),
(21, '1.jpg', 6, NULL, NULL, NULL),
(22, '2.jpg', 6, NULL, NULL, NULL),
(23, '3.jpg', 6, NULL, NULL, NULL),
(24, '4.jpg', 6, NULL, NULL, NULL),
(25, '5.jpg', 6, NULL, NULL, NULL),
(26, '1.jpg', 7, NULL, NULL, NULL),
(27, '2.jpg', 7, NULL, NULL, NULL),
(28, '3.jpg', 7, NULL, NULL, NULL),
(29, '4.jpg', 7, NULL, NULL, NULL),
(30, '5.jpg', 7, NULL, NULL, NULL),
(31, '1.jpg', 8, NULL, NULL, NULL),
(32, '2.jpg', 8, NULL, NULL, NULL),
(33, '3.jpg', 8, NULL, NULL, NULL),
(34, '4.jpg', 8, NULL, NULL, NULL),
(35, '5.jpg', 8, NULL, NULL, NULL),
(36, '1.jpg', 9, NULL, NULL, NULL),
(37, '2.jpg', 9, NULL, NULL, NULL),
(38, '3.jpg', 9, NULL, NULL, NULL),
(39, '4.jpg', 9, NULL, NULL, NULL),
(40, '5.jpg', 9, NULL, NULL, NULL),
(41, '1.jpg', 10, NULL, NULL, NULL),
(42, '2.jpg', 10, NULL, NULL, NULL),
(43, '3.jpg', 10, NULL, NULL, NULL),
(44, '4.jpg', 10, NULL, NULL, NULL),
(45, '5.jpg', 10, NULL, NULL, NULL),
(46, '1.jpg', 11, NULL, NULL, NULL),
(47, '2.jpg', 11, NULL, NULL, NULL),
(48, '3.jpg', 11, NULL, NULL, NULL),
(49, '4.jpg', 11, NULL, NULL, NULL),
(50, '5.jpg', 11, NULL, NULL, NULL),
(51, '1.jpg', 12, NULL, NULL, NULL),
(52, '2.jpg', 12, NULL, NULL, NULL),
(53, '3.jpg', 12, NULL, NULL, NULL),
(54, '4.jpg', 12, NULL, NULL, NULL),
(55, '5.jpg', 12, NULL, NULL, NULL),
(56, '1.jpg', 13, NULL, NULL, NULL),
(57, '2.jpg', 13, NULL, NULL, NULL),
(58, '3.jpg', 13, NULL, NULL, NULL),
(59, '4.jpg', 13, NULL, NULL, NULL),
(60, '5.jpg', 13, NULL, NULL, NULL),
(61, '1.jpg', 14, NULL, NULL, NULL),
(62, '2.jpg', 14, NULL, NULL, NULL),
(63, '3.jpg', 14, NULL, NULL, NULL),
(64, '4.jpg', 14, NULL, NULL, NULL),
(65, '5.jpg', 14, NULL, NULL, NULL),
(66, '1.jpg', 15, NULL, NULL, NULL),
(67, '2.jpg', 15, NULL, NULL, NULL),
(68, '3.jpg', 15, NULL, NULL, NULL),
(69, '4.jpg', 15, NULL, NULL, NULL),
(70, '5.jpg', 15, NULL, NULL, NULL),
(71, '1.jpg', 16, NULL, NULL, NULL),
(72, '2.jpg', 16, NULL, NULL, NULL),
(73, '3.jpg', 16, NULL, NULL, NULL),
(74, '4.jpg', 16, NULL, NULL, NULL),
(75, '5.jpg', 16, NULL, NULL, NULL),
(76, '1.jpg', 17, NULL, NULL, NULL),
(77, '2.jpg', 17, NULL, NULL, NULL),
(78, '3.jpg', 17, NULL, NULL, NULL),
(79, '4.jpg', 17, NULL, NULL, NULL),
(80, '5.jpg', 17, NULL, NULL, NULL),
(81, '1.jpg', 18, NULL, NULL, NULL),
(82, '2.jpg', 18, NULL, NULL, NULL),
(83, '3.jpg', 18, NULL, NULL, NULL),
(84, '4.jpg', 18, NULL, NULL, NULL),
(85, '5.jpg', 18, NULL, NULL, NULL),
(86, '1.jpg', 19, NULL, NULL, NULL),
(87, '2.jpg', 19, NULL, NULL, NULL),
(88, '3.jpg', 19, NULL, NULL, NULL),
(89, '4.jpg', 19, NULL, NULL, NULL),
(90, '5.jpg', 19, NULL, NULL, NULL),
(91, '1.jpg', 20, NULL, NULL, NULL),
(92, '2.jpg', 20, NULL, NULL, NULL),
(93, '3.jpg', 20, NULL, NULL, NULL),
(94, '4.jpg', 20, NULL, NULL, NULL),
(95, '5.jpg', 20, NULL, NULL, NULL),
(96, '1.jpg', 21, NULL, NULL, NULL),
(97, '2.jpg', 21, NULL, NULL, NULL),
(98, '3.jpg', 21, NULL, NULL, NULL),
(99, '4.jpg', 21, NULL, NULL, NULL),
(100, '5.jpg', 21, NULL, NULL, NULL),
(101, '1.jpg', 22, NULL, NULL, NULL),
(102, '2.jpg', 22, NULL, NULL, NULL),
(103, '3.jpg', 22, NULL, NULL, NULL),
(104, '4.jpg', 22, NULL, NULL, NULL),
(105, '5.jpg', 22, NULL, NULL, NULL),
(106, '1.jpg', 23, NULL, NULL, NULL),
(107, '2.jpg', 23, NULL, NULL, NULL),
(108, '3.jpg', 23, NULL, NULL, NULL),
(109, '4.jpg', 23, NULL, NULL, NULL),
(110, '5.jpg', 23, NULL, NULL, NULL),
(111, '1.jpg', 24, NULL, NULL, NULL),
(112, '2.jpg', 24, NULL, NULL, NULL),
(113, '3.jpg', 24, NULL, NULL, NULL),
(114, '4.jpg', 24, NULL, NULL, NULL),
(115, '5.jpg', 24, NULL, NULL, NULL),
(116, '1.jpg', 25, NULL, NULL, NULL),
(117, '2.jpg', 25, NULL, NULL, NULL),
(118, '3.jpg', 25, NULL, NULL, NULL),
(119, '4.jpg', 25, NULL, NULL, NULL),
(120, '5.jpg', 25, NULL, NULL, NULL),
(121, '1.jpg', 26, NULL, NULL, NULL),
(122, '2.jpg', 26, NULL, NULL, NULL),
(123, '3.jpg', 26, NULL, NULL, NULL),
(124, '4.jpg', 26, NULL, NULL, NULL),
(125, '5.jpg', 26, NULL, NULL, NULL),
(126, '1.jpg', 27, NULL, NULL, NULL),
(127, '2.jpg', 27, NULL, NULL, NULL),
(128, '3.jpg', 27, NULL, NULL, NULL),
(129, '4.jpg', 27, NULL, NULL, NULL),
(130, '5.jpg', 27, NULL, NULL, NULL),
(131, '1.jpg', 28, NULL, NULL, NULL),
(132, '2.jpg', 28, NULL, NULL, NULL),
(133, '3.jpg', 28, NULL, NULL, NULL),
(134, '4.jpg', 28, NULL, NULL, NULL),
(135, '5.jpg', 28, NULL, NULL, NULL),
(136, '1.jpg', 29, NULL, NULL, NULL),
(137, '2.jpg', 29, NULL, NULL, NULL),
(138, '3.jpg', 29, NULL, NULL, NULL),
(139, '4.jpg', 29, NULL, NULL, NULL),
(140, '5.jpg', 29, NULL, NULL, NULL),
(141, '1.jpg', 30, NULL, NULL, NULL),
(142, '2.jpg', 30, NULL, NULL, NULL),
(143, '3.jpg', 30, NULL, NULL, NULL),
(144, '4.jpg', 30, NULL, NULL, NULL),
(145, '5.jpg', 30, NULL, NULL, NULL),
(146, '1.jpg', 31, NULL, NULL, NULL),
(147, '2.jpg', 31, NULL, NULL, NULL),
(148, '3.jpg', 31, NULL, NULL, NULL),
(149, '4.jpg', 31, NULL, NULL, NULL),
(150, '5.jpg', 31, NULL, NULL, NULL),
(151, '1.jpg', 32, NULL, NULL, NULL),
(152, '2.jpg', 32, NULL, NULL, NULL),
(153, '3.jpg', 32, NULL, NULL, NULL),
(154, '4.jpg', 32, NULL, NULL, NULL),
(155, '5.jpg', 32, NULL, NULL, NULL),
(156, '1.jpg', 33, NULL, NULL, NULL),
(157, '2.jpg', 33, NULL, NULL, NULL),
(158, '3.jpg', 33, NULL, NULL, NULL),
(159, '4.jpg', 33, NULL, NULL, NULL),
(160, '5.jpg', 33, NULL, NULL, NULL),
(161, '1.jpg', 34, NULL, NULL, NULL),
(162, '2.jpg', 34, NULL, NULL, NULL),
(163, '3.jpg', 34, NULL, NULL, NULL),
(164, '4.jpg', 34, NULL, NULL, NULL),
(165, '5.jpg', 34, NULL, NULL, NULL),
(166, '1.jpg', 35, NULL, NULL, NULL),
(167, '2.jpg', 35, NULL, NULL, NULL),
(168, '3.jpg', 35, NULL, NULL, NULL),
(169, '4.jpg', 35, NULL, NULL, NULL),
(170, '5.jpg', 35, NULL, NULL, NULL),
(171, '1.jpg', 36, NULL, NULL, NULL),
(172, '2.jpg', 36, NULL, NULL, NULL),
(173, '3.jpg', 36, NULL, NULL, NULL),
(174, '4.jpg', 36, NULL, NULL, NULL),
(175, '5.jpg', 36, NULL, NULL, NULL),
(176, '1.jpg', 37, NULL, NULL, NULL),
(177, '2.jpg', 37, NULL, NULL, NULL),
(178, '3.jpg', 37, NULL, NULL, NULL),
(179, '4.jpg', 37, NULL, NULL, NULL),
(180, '5.jpg', 37, NULL, NULL, NULL),
(181, '1.jpg', 38, NULL, NULL, NULL),
(182, '2.jpg', 38, NULL, NULL, NULL),
(183, '3.jpg', 38, NULL, NULL, NULL),
(184, '4.jpg', 38, NULL, NULL, NULL),
(185, '5.jpg', 38, NULL, NULL, NULL),
(186, '1.jpg', 39, NULL, NULL, NULL),
(187, '2.jpg', 39, NULL, NULL, NULL),
(188, '3.jpg', 39, NULL, NULL, NULL),
(189, '4.jpg', 39, NULL, NULL, NULL),
(190, '5.jpg', 39, NULL, NULL, NULL),
(191, '1.jpg', 40, NULL, NULL, NULL),
(192, '2.jpg', 40, NULL, NULL, NULL),
(193, '3.jpg', 40, NULL, NULL, NULL),
(194, '4.jpg', 40, NULL, NULL, NULL),
(195, '5.jpg', 40, NULL, NULL, NULL),
(196, '1.jpg', 41, NULL, NULL, NULL),
(197, '2.jpg', 41, NULL, NULL, NULL),
(198, '3.jpg', 41, NULL, NULL, NULL),
(199, '4.jpg', 41, NULL, NULL, NULL),
(200, '5.jpg', 41, NULL, NULL, NULL),
(201, '1.jpg', 42, NULL, NULL, NULL),
(202, '2.jpg', 42, NULL, NULL, NULL),
(203, '3.jpg', 42, NULL, NULL, NULL),
(204, '4.jpg', 42, NULL, NULL, NULL),
(205, '5.jpg', 42, NULL, NULL, NULL),
(206, '1.jpg', 43, NULL, NULL, NULL),
(207, '2.jpg', 43, NULL, NULL, NULL),
(208, '3.jpg', 43, NULL, NULL, NULL),
(209, '4.jpg', 43, NULL, NULL, NULL),
(210, '5.jpg', 43, NULL, NULL, NULL),
(211, '1.jpg', 44, NULL, NULL, NULL),
(212, '2.jpg', 44, NULL, NULL, NULL),
(213, '3.jpg', 44, NULL, NULL, NULL),
(214, '4.jpg', 44, NULL, NULL, NULL),
(215, '5.jpg', 44, NULL, NULL, NULL),
(216, '1.jpg', 45, NULL, NULL, NULL),
(217, '2.jpg', 45, NULL, NULL, NULL),
(218, '3.jpg', 45, NULL, NULL, NULL),
(219, '4.jpg', 45, NULL, NULL, NULL),
(220, '5.jpg', 45, NULL, NULL, NULL),
(221, '1.jpg', 46, NULL, NULL, NULL),
(222, '2.jpg', 46, NULL, NULL, NULL),
(223, '3.jpg', 46, NULL, NULL, NULL),
(224, '4.jpg', 46, NULL, NULL, NULL),
(225, '5.jpg', 46, NULL, NULL, NULL),
(226, '1.jpg', 47, NULL, NULL, NULL),
(227, '2.jpg', 47, NULL, NULL, NULL),
(228, '3.jpg', 47, NULL, NULL, NULL),
(229, '4.jpg', 47, NULL, NULL, NULL),
(230, '5.jpg', 47, NULL, NULL, NULL),
(231, '1.jpg', 48, NULL, NULL, NULL),
(232, '2.jpg', 48, NULL, NULL, NULL),
(233, '3.jpg', 48, NULL, NULL, NULL),
(234, '4.jpg', 48, NULL, NULL, NULL),
(235, '5.jpg', 48, NULL, NULL, NULL),
(236, '1.jpg', 49, NULL, NULL, NULL),
(237, '2.jpg', 49, NULL, NULL, NULL),
(238, '3.jpg', 49, NULL, NULL, NULL),
(239, '4.jpg', 49, NULL, NULL, NULL),
(240, '5.jpg', 49, NULL, NULL, NULL),
(241, '1.jpg', 50, NULL, NULL, NULL),
(242, '2.jpg', 50, NULL, NULL, NULL),
(243, '3.jpg', 50, NULL, NULL, NULL),
(244, '4.jpg', 50, NULL, NULL, NULL),
(245, '5.jpg', 50, NULL, NULL, NULL),
(246, '1.jpg', 51, NULL, NULL, NULL),
(247, '2.jpg', 51, NULL, NULL, NULL),
(248, '3.jpg', 51, NULL, NULL, NULL),
(249, '4.jpg', 51, NULL, NULL, NULL),
(250, '5.jpg', 51, NULL, NULL, NULL),
(251, '1.jpg', 52, NULL, NULL, NULL),
(252, '2.jpg', 52, NULL, NULL, NULL),
(253, '3.jpg', 52, NULL, NULL, NULL),
(254, '4.jpg', 52, NULL, NULL, NULL),
(255, '5.jpg', 52, NULL, NULL, NULL),
(256, '1.jpg', 53, NULL, NULL, NULL),
(257, '2.jpg', 53, NULL, NULL, NULL),
(258, '3.jpg', 53, NULL, NULL, NULL),
(259, '4.jpg', 53, NULL, NULL, NULL),
(260, '5.jpg', 53, NULL, NULL, NULL),
(261, '1.jpg', 54, NULL, NULL, NULL),
(262, '2.jpg', 54, NULL, NULL, NULL),
(263, '3.jpg', 54, NULL, NULL, NULL),
(264, '4.jpg', 54, NULL, NULL, NULL),
(265, '5.jpg', 54, NULL, NULL, NULL),
(266, '1.jpg', 55, NULL, NULL, NULL),
(267, '2.jpg', 55, NULL, NULL, NULL),
(268, '3.jpg', 55, NULL, NULL, NULL),
(269, '4.jpg', 55, NULL, NULL, NULL),
(270, '5.jpg', 55, NULL, NULL, NULL),
(271, '1.jpg', 56, NULL, NULL, NULL),
(272, '2.jpg', 56, NULL, NULL, NULL),
(273, '3.jpg', 56, NULL, NULL, NULL),
(274, '4.jpg', 56, NULL, NULL, NULL),
(275, '5.jpg', 56, NULL, NULL, NULL),
(276, '1.jpg', 57, NULL, NULL, NULL),
(277, '2.jpg', 57, NULL, NULL, NULL),
(278, '3.jpg', 57, NULL, NULL, NULL),
(279, '4.jpg', 57, NULL, NULL, NULL),
(280, '5.jpg', 57, NULL, NULL, NULL),
(281, '1.jpg', 58, NULL, NULL, NULL),
(282, '2.jpg', 58, NULL, NULL, NULL),
(283, '3.jpg', 58, NULL, NULL, NULL),
(284, '4.jpg', 58, NULL, NULL, NULL),
(285, '5.jpg', 58, NULL, NULL, NULL),
(286, '1.jpg', 59, NULL, NULL, NULL),
(287, '2.jpg', 59, NULL, NULL, NULL),
(288, '3.jpg', 59, NULL, NULL, NULL),
(289, '4.jpg', 59, NULL, NULL, NULL),
(290, '5.jpg', 59, NULL, NULL, NULL),
(291, '1.jpg', 60, NULL, NULL, NULL),
(292, '2.jpg', 60, NULL, NULL, NULL),
(293, '3.jpg', 60, NULL, NULL, NULL),
(294, '4.jpg', 60, NULL, NULL, NULL),
(295, '5.jpg', 60, NULL, NULL, NULL),
(296, '1.jpg', 61, NULL, NULL, NULL),
(297, '2.jpg', 61, NULL, NULL, NULL),
(298, '3.jpg', 61, NULL, NULL, NULL),
(299, '4.jpg', 61, NULL, NULL, NULL),
(300, '5.jpg', 61, NULL, NULL, NULL),
(301, '1.jpg', 62, NULL, NULL, NULL),
(302, '2.jpg', 62, NULL, NULL, NULL),
(303, '3.jpg', 62, NULL, NULL, NULL),
(304, '4.jpg', 62, NULL, NULL, NULL),
(305, '5.jpg', 62, NULL, NULL, NULL),
(306, '1.jpg', 63, NULL, NULL, NULL),
(307, '2.jpg', 63, NULL, NULL, NULL),
(308, '3.jpg', 63, NULL, NULL, NULL),
(309, '4.jpg', 63, NULL, NULL, NULL),
(310, '5.jpg', 63, NULL, NULL, NULL),
(311, '1.jpg', 64, NULL, NULL, NULL),
(312, '2.jpg', 64, NULL, NULL, NULL),
(313, '3.jpg', 64, NULL, NULL, NULL),
(314, '4.jpg', 64, NULL, NULL, NULL),
(315, '5.jpg', 64, NULL, NULL, NULL),
(316, '1.jpg', 65, NULL, NULL, NULL),
(317, '2.jpg', 65, NULL, NULL, NULL),
(318, '3.jpg', 65, NULL, NULL, NULL),
(319, '4.jpg', 65, NULL, NULL, NULL),
(320, '5.jpg', 65, NULL, NULL, NULL),
(321, '1.jpg', 66, NULL, NULL, NULL),
(322, '2.jpg', 66, NULL, NULL, NULL),
(323, '3.jpg', 66, NULL, NULL, NULL),
(324, '4.jpg', 66, NULL, NULL, NULL),
(325, '5.jpg', 66, NULL, NULL, NULL),
(326, '1756902278.10.jpg', 67, NULL, NULL, NULL),
(327, '1756902278.6.jpg', 67, NULL, NULL, NULL),
(328, '1756902278.7.jpg', 67, NULL, NULL, NULL),
(329, '1756902278.8.jpg', 67, NULL, NULL, NULL),
(330, '1756902278.9.jpg', 67, NULL, NULL, NULL),
(331, '1756916989.6.jpg', 68, NULL, NULL, NULL),
(332, '1756916989.7.jpg', 68, NULL, NULL, NULL),
(333, '1756916989.8.jpg', 68, NULL, NULL, NULL),
(334, '1756916989.9.jpg', 68, NULL, NULL, NULL),
(335, '1756916989.10.jpg', 68, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_11_10_135345_create_categorys', 1),
(5, '2021_11_10_140858_create_products', 1),
(6, '2021_11_10_141054_create_customers', 1),
(7, '2021_11_10_141204_create_orders', 1),
(8, '2021_11_10_141254_create_images', 1),
(9, '2021_11_11_093200_create_pay_order', 1),
(10, '2021_11_11_094359_update_order', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, '#9J8MLO9AIE', 2, NULL, '2025-09-03 05:06:58', '2025-09-03 05:11:44'),
(4, '#WNJQFUGZEV', 1, NULL, '2025-09-03 05:14:39', '2025-09-03 05:14:39'),
(5, '#AFPUQLF8GZ', 1, NULL, '2025-09-03 05:27:07', '2025-09-03 05:27:07'),
(6, '#RRKGELZMFR', 1, NULL, '2025-09-03 05:29:23', '2025-09-03 05:29:23'),
(7, '#TDOO9JHHKE', 2, NULL, '2025-09-03 09:21:54', '2025-09-03 09:23:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_order`
--

CREATE TABLE `pay_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pay_qty` int(11) NOT NULL,
  `pay_subtotal` int(11) NOT NULL,
  `pay_price` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_order`
--

INSERT INTO `pay_order` (`id`, `pay_qty`, `pay_subtotal`, `pay_price`, `customer_id`, `product_id`, `order_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 100000, 100000, 3, 66, 3, NULL, '2025-09-03 05:06:58', '2025-09-03 05:06:58'),
(4, 12, 1200000, 100000, 3, 66, 4, NULL, '2025-09-03 05:14:39', '2025-09-03 05:14:39'),
(5, 1, 100000, 100000, 4, 67, 5, NULL, '2025-09-03 05:27:07', '2025-09-03 05:27:07'),
(6, 1, 100000, 100000, 4, 67, 6, NULL, '2025-09-03 05:29:23', '2025-09-03 05:29:23'),
(7, 5, 500000, 100000, 5, 65, 7, NULL, '2025-09-03 09:21:54', '2025-09-03 09:21:54'),
(8, 1, 100000, 100000, 5, 67, 7, NULL, '2025-09-03 09:21:54', '2025-09-03 09:21:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `status_hight_light` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `slug`, `number`, `description`, `price`, `status`, `status_hight_light`, `user_id`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '#L2QJDESXUO', 'Maia Koch', 'maia-koch', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(3, '#BXZXYLNXKV', 'Jasper Witting', 'jasper-witting', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(4, '#QHS7AP0RMK', 'Kaylee Turcotte I', 'kaylee-turcotte-i', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(5, '#QKJQFHB7AR', 'Vickie Zieme', 'vickie-zieme', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(6, '#9LWVFLM2NV', 'Haylee Lebsack', 'haylee-lebsack', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(7, '#4OL5MT9SW5', 'Tara Nikolaus', 'tara-nikolaus', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(8, '#3BSVZUTZMP', 'Mrs. Karolann Konopelski', 'mrs-karolann-konopelski', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(9, '#6KXTQ7FUWW', 'Myrl Parker', 'myrl-parker', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(10, '#GJQ377YVVL', 'Dr. Arvilla Rutherford', 'dr-arvilla-rutherford', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(11, '#DDLHS3OU58', 'Tatyana Leannon', 'tatyana-leannon', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(12, '#CGDOUAEPJ2', 'Francis Powlowski Jr.', 'francis-powlowski-jr', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(13, '#JBID2DMQGN', 'Mrs. Icie Bechtelar', 'mrs-icie-bechtelar', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(14, '#MUCNCJU9MX', 'Celine Boyer', 'celine-boyer', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(15, '#TATWDMVYLY', 'Darrell Mohr', 'darrell-mohr', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(16, '#E7SO2QEIHU', 'Ofelia Mann', 'ofelia-mann', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(17, '#40HE6JRIBR', 'Rodrick Tremblay', 'rodrick-tremblay', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(18, '#0JVRP4IML8', 'Elinor McGlynn', 'elinor-mcglynn', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(19, '#1THYGVWKEH', 'Aurelie Kohler', 'aurelie-kohler', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(20, '#SBQKNIYIU6', 'Veda Harris', 'veda-harris', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(21, '#7V5DHQSK2T', 'Genevieve Littel', 'genevieve-littel', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(22, '#XYLQSZDBUL', 'Mr. Bud Tremblay', 'mr-bud-tremblay', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(23, '#D8C1UFL64A', 'Stanton Dietrich Jr.', 'stanton-dietrich-jr', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(24, '#KVVB8OSQ1W', 'Diana Paucek', 'diana-paucek', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(25, '#8VFRDOSYUB', 'Rosalinda McKenzie', 'rosalinda-mckenzie', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(26, '#2DKVCCNJUX', 'Ansel Dach', 'ansel-dach', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(27, '#YY9XAAROYW', 'Felipa Wisoky', 'felipa-wisoky', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(28, '#GXOAFZYHKP', 'Jewel Schiller Sr.', 'jewel-schiller-sr', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(29, '#RPEXG6MK1L', 'Anna Rogahn', 'anna-rogahn', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(30, '#S9K4TSCRX0', 'Prof. Trinity Hahn', 'prof-trinity-hahn', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(31, '#ERTGOCOHDA', 'Caleb Langosh', 'caleb-langosh', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(32, '#N6BOBROCCQ', 'Ms. Elyse Bayer', 'ms-elyse-bayer', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(33, '#XTKPS3M9IP', 'Dr. Pierce Metz IV', 'dr-pierce-metz-iv', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(34, '#LIHAFAGYCF', 'Reva Lynch', 'reva-lynch', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(35, '#NUZYDNV7GH', 'Kailyn Kessler', 'kailyn-kessler', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(36, '#XEK8Y3BV6Q', 'Rae Rogahn', 'rae-rogahn', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(37, '#OY6MLSV4F3', 'Vince Shanahan', 'vince-shanahan', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(38, '#HFZVEFYRI4', 'Dr. Alvah Crona III', 'dr-alvah-crona-iii', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(39, '#NLU0BV3CYW', 'Marjolaine Kunze', 'marjolaine-kunze', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(40, '#3ARWDY94FR', 'Garett Runolfsdottir', 'garett-runolfsdottir', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(41, '#OPAYYSHQSR', 'Ray Reichert DVM', 'ray-reichert-dvm', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(42, '#NRNIXJWZFE', 'Prof. Coleman Upton MD', 'prof-coleman-upton-md', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(43, '#GWNMUW2SYL', 'Edmund Heller', 'edmund-heller', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(44, '#ZMOR1DODOE', 'Mr. Angus Dach V', 'mr-angus-dach-v', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(45, '#NYXNAUS7P4', 'Iliana Reynolds V', 'iliana-reynolds-v', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(46, '#ZYCSX7DCGS', 'Prof. Una Torphy DVM', 'prof-una-torphy-dvm', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(47, '#GNSYAVYSNB', 'Bella Gerlach IV', 'bella-gerlach-iv', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(48, '#NPAWTP6ARJ', 'Edgar White', 'edgar-white', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(49, '#X4VCJBGC6X', 'Mr. Johnson Casper I', 'mr-johnson-casper-i', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(50, '#TAJTQCFK9A', 'Prof. Burnice Nader', 'prof-burnice-nader', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(51, '#VWC3XBHGSO', 'Dr. Annie Doyle I', 'dr-annie-doyle-i', 10, NULL, 100000, 1, 2, 1, 1, NULL, NULL, NULL),
(52, '#NPXX8ZKKNG', 'Miss Abigail Beer', 'miss-abigail-beer', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(53, '#JQ0MS6EOKW', 'Abby Pouros IV', 'abby-pouros-iv', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(54, '#MIVRDUSLG9', 'Therese Gutkowski', 'therese-gutkowski', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(55, '#TTASSFAEW1', 'Prof. Camron Huels II', 'prof-camron-huels-ii', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(56, '#DXXVLR5HBV', 'Osvaldo Jaskolski DVM', 'osvaldo-jaskolski-dvm', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(57, '#P5VGCXNCQA', 'Mr. Shad Yundt', 'mr-shad-yundt', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(58, '#APVCUGTYYK', 'Prof. Landen Hoeger', 'prof-landen-hoeger', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(59, '#2OPFRNNVUR', 'Dr. Burley Kuphal', 'dr-burley-kuphal', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(60, '#NRZBUUGBKM', 'Finn Eichmann', 'finn-eichmann', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(61, '#10M5JWSSYG', 'Everardo McGlynn', 'everardo-mcglynn', 10, NULL, 100000, 1, 2, 1, 2, NULL, NULL, NULL),
(62, '#5Y9C11TN9W', 'Florence Sanford', 'florence-sanford', 5, NULL, 100000, 1, 2, 1, 3, NULL, NULL, NULL),
(63, '#URARWIOVG8', 'Mr. Mortimer Ratke IV', 'mr-mortimer-ratke-iv', 5, NULL, 100000, 1, 2, 1, 3, NULL, NULL, NULL),
(64, '#FJQOXI3SPY', 'Joyce Reichel', 'joyce-reichel', 5, NULL, 100000, 1, 2, 1, 3, NULL, NULL, NULL),
(65, '#3BQHNT7L50', 'Reinhold Padberg', 'reinhold-padberg', 0, NULL, 100000, 2, 2, 1, 3, NULL, NULL, '2025-09-03 09:21:54'),
(66, '#XJJFW2D4FT', 'Colin Will', 'colin-will', 0, NULL, 100000, 0, 1, 1, 3, NULL, NULL, '2025-09-03 05:22:37'),
(67, '#72TWVCU1JL', 'Khẩu trang y tế', 'khau-trang-y-te', 10, '<p>Khẩu trang y tế l&agrave; sản phẩm bảo hộ c&aacute; nh&acirc;n được thiết kế nhằm che chắn v&ugrave;ng mũi v&agrave; miệng, gi&uacute;p ngăn chặn sự x&acirc;m nhập của bụi bẩn, vi khuẩn, virus v&agrave; c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh l&acirc;y qua đường h&ocirc; hấp. Đ&acirc;y l&agrave; vật dụng kh&ocirc;ng thể thiếu trong m&ocirc;i trường y tế cũng như trong đời sống h&agrave;ng ng&agrave;y, đặc biệt trong giai đoạn c&oacute; dịch bệnh truyền nhiễm.</p>\r\n\r\n<p><strong>Đặc điểm nổi bật:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Cấu tạo từ <strong>3 &ndash; 4 lớp vải kh&ocirc;ng dệt</strong> cao cấp, c&oacute; khả năng lọc bụi mịn, vi khuẩn v&agrave; giọt bắn hiệu quả.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp ngo&agrave;i chống thấm nước, ngăn giọt bắn v&agrave; dịch tiết.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp giữa l&agrave; m&agrave;ng lọc kh&aacute;ng khuẩn, hỗ trợ hạn chế l&acirc;y nhiễm ch&eacute;o.</p>\r\n	</li>\r\n	<li>\r\n	<p>Lớp trong mềm mại, thấm h&uacute;t mồ h&ocirc;i, tạo cảm gi&aacute;c thoải m&aacute;i khi sử dụng l&acirc;u d&agrave;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>D&acirc;y đeo co gi&atilde;n tốt, kh&ocirc;ng g&acirc;y đau tai, ph&ugrave; hợp nhiều k&iacute;ch cỡ khu&ocirc;n mặt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thanh nẹp mũi gi&uacute;p &ocirc;m s&aacute;t mặt, hạn chế hơi thở tho&aacute;t ra ngo&agrave;i.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bảo vệ đường h&ocirc; hấp trước kh&oacute;i bụi, &ocirc; nhiễm m&ocirc;i trường.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p ngăn ngừa sự l&acirc;y lan của vi khuẩn, virus qua đường h&ocirc; hấp.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sử dụng trong bệnh viện, ph&ograve;ng kh&aacute;m, ph&ograve;ng th&iacute; nghiệm, hoặc khi di chuyển ngo&agrave;i trời.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Rửa tay sạch trước khi đeo khẩu trang.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đeo mặt c&oacute; m&agrave;u ra ngo&agrave;i, kẹp mũi hướng l&ecirc;n tr&ecirc;n.</p>\r\n	</li>\r\n	<li>\r\n	<p>Che k&iacute;n mũi v&agrave; miệng, điều chỉnh thanh nẹp cho &ocirc;m s&aacute;t sống mũi.</p>\r\n	</li>\r\n	<li>\r\n	<p>Sau khi d&ugrave;ng, th&aacute;o bằng c&aacute;ch cầm d&acirc;y đeo, kh&ocirc;ng chạm v&agrave;o mặt ngo&agrave;i khẩu trang.</p>\r\n	</li>\r\n	<li>\r\n	<p>Vứt bỏ đ&uacute;ng nơi quy định, kh&ocirc;ng t&aacute;i sử dụng khẩu trang d&ugrave;ng một lần.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Để nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp v&agrave; m&ocirc;i trường ẩm ướt.</p>\r\n	</li>\r\n</ul>', 100000, 1, 1, 1, 5, NULL, '2025-09-03 05:24:38', '2025-09-03 09:24:22'),
(68, '#MDVYJLB7PD', 'Khẩu trang kháng khuẩn', 'khau-trang-khang-khuan', 20, '<p>Khẩu trang kh&aacute;ng khuẩn</p>', 50000, 1, 2, 1, 5, '2025-09-03 09:30:37', '2025-09-03 09:29:49', '2025-09-03 09:30:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `number_phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `date_of_birth`, `number_phone`, `address`, `role`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Okey McLaughlin', 'user@admin.com', '2025-09-03 04:35:06', '$2y$10$Fn1/BZRMoLn60caq4SqRkOac49EzpuX10N./LMRt7zpgG3XRwQz9.', 1, '1994-03-03 00:00:00', '0982097131', '94109 Porter Summit\nHanebury, OR 23587', 1, '87eoPCudt8domBhaqNhQvnPRADwVq8Y6BGLMXQLB7Y8UgTyciN2pc6DvqDnp', NULL, NULL, NULL),
(2, 'user1', 'admin@gmail.com', NULL, '$2y$10$Tw5J3owq4yKsdaPaJvzYFOGV5PFEWIA5aYQSQW5kKdblEixA.zZvq', 1, '1997-02-22 00:00:00', '0788388749', 'TPHCM', 2, '7Nhv9lLCIrajI9YHM56xHCq1H52n4adgWkCaTpRWpj614hxRcBQpdBMmTxqM', NULL, '2025-09-03 05:02:44', '2025-09-03 05:02:44'),
(3, 'user2', 'admin1@gmail.com', NULL, '$2y$10$l61EUaGt4K1chjI31TNzRuilpoueKiYGv1o2gIBqYAzHbj.hVD85W', 2, '1997-02-22 00:00:00', '123456789', 'TPHCM', 2, 'EXG0QBu9ikgUZrJt9Rl3QOcHilxeziTUVrWeXBZeaDbV3DhMCB9qM4ihQJWq', NULL, '2025-09-03 09:18:32', '2025-09-03 09:18:32');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pay_order`
--
ALTER TABLE `pay_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_order_order_id_foreign` (`order_id`),
  ADD KEY `pay_order_customer_id_foreign` (`customer_id`),
  ADD KEY `pay_order_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `pay_order`
--
ALTER TABLE `pay_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pay_order`
--
ALTER TABLE `pay_order`
  ADD CONSTRAINT `pay_order_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `pay_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `pay_order_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categorys` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
