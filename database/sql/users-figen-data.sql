-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Mar 2019, 15:43:57
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `noteowerflow`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aktiviteler`
--

CREATE TABLE `aktiviteler` (
  `aktivite_id` int(10) NOT NULL,
  `uye_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `oldugu_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arkadaslar`
--

CREATE TABLE `arkadaslar` (
  `uye_id` int(11) NOT NULL,
  `arkadas_id` int(11) NOT NULL,
  `arkadas_olma_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `arkadaslar`
--

INSERT INTO `arkadaslar` (`uye_id`, `arkadas_id`, `arkadas_olma_tarihi`) VALUES

(2, 6, '2019-03-04 14:23:57'),
(2, 65, '2019-03-04 14:23:57'),
(6, 78, '2019-03-04 14:28:25'),
(2, 56, '2019-03-04 14:28:25'),
(2, 89, '2019-03-04 14:28:25'),
(2, 48, '2019-03-04 14:28:25'),
(3, 78, '2019-03-04 14:28:25'),
(3, 89, '2019-03-04 14:28:25'),
(3, 14, '2019-03-04 14:28:25'),
(3, 74, '2019-03-04 14:28:25'),
(3, 98, '2019-03-04 14:28:25'),
(3, 45, '2019-03-04 14:28:25'),
(4, 21, '2019-03-04 14:28:25'),
(4, 56, '2019-03-04 14:28:25'),
(4, 12, '2019-03-04 14:28:25'),
(4, 52, '2019-03-04 14:28:25'),
(4, 32, '2019-03-04 14:28:25'),
(5, 31, '2019-03-04 14:28:25'),
(5, 21, '2019-03-04 14:28:25'),
(5, 11, '2019-03-04 14:28:25'),
(5, 61, '2019-03-04 14:28:25'),
(5, 16, '2019-03-04 14:28:25'),
(6, 8, '2019-03-04 14:33:58'),
(6, 18, '2019-03-04 14:33:58'),
(6, 28, '2019-03-04 14:33:58'),
(6, 38, '2019-03-04 14:33:58'),
(7, 45, '2019-03-04 14:33:58'),
(7, 78, '2019-03-04 14:33:58'),
(7, 65, '2019-03-04 14:33:58'),
(7, 98, '2019-03-04 14:33:58'),
(7, 21, '2019-03-04 14:33:58'),
(8, 10, '2019-03-04 14:33:58'),
(8, 11, '2019-03-04 14:33:58'),
(8, 9, '2019-03-04 14:33:58'),
(8, 16, '2019-03-04 14:33:58'),
(8, 64, '2019-03-04 14:33:58'),
(9, 21, '2019-03-04 14:33:58'),
(9, 22, '2019-03-04 14:33:58'),
(9, 33, '2019-03-04 14:33:58'),
(9, 34, '2019-03-04 14:33:58'),
(10, 11, '2019-03-04 14:33:58'),
(10, 35, '2019-03-04 14:33:58'),
(10, 78, '2019-03-04 14:33:58'),
(10, 79, '2019-03-04 14:33:58'),
(10, 80, '2019-03-04 14:33:58'),
(11, 15, '2019-03-04 14:33:58'),
(11, 32, '2019-03-04 14:33:58'),
(11, 45, '2019-03-04 14:33:58'),
(11, 63, '2019-03-04 14:33:58'),
(12, 14, '2019-03-04 14:33:58'),
(12, 47, '2019-03-04 14:33:58'),
(12, 48, '2019-03-04 14:33:58'),
(12, 50, '2019-03-04 14:33:58'),
(12, 89, '2019-03-04 14:33:58'),
(13, 65, '2019-03-04 14:33:58'),
(13, 66, '2019-03-04 14:33:58'),
(13, 68, '2019-03-04 14:33:58'),
(13, 78, '2019-03-04 14:33:58'),
(13, 79, '2019-03-04 14:33:58'),
(14, 6, '2019-03-04 14:33:58'),
(14, 1, '2019-03-04 14:33:58'),
(14, 8, '2019-03-04 14:33:58'),
(14, 87, '2019-03-04 14:39:01'),
(14, 52, '2019-03-04 14:39:01'),
(15, 25, '2019-03-04 14:39:01'),
(15, 89, '2019-03-04 14:39:01'),
(15, 47, '2019-03-04 14:39:01'),
(15, 48, '2019-03-04 14:39:01'),
(15, 65, '2019-03-04 14:39:01'),
(16, 5, '2019-03-04 14:39:01'),
(16, 6, '2019-03-04 14:39:01'),
(16, 26, '2019-03-04 14:39:01'),
(16, 36, '2019-03-04 14:39:01'),
(16, 36, '2019-03-04 14:39:01'),
(16, 98, '2019-03-04 14:39:01'),
(17, 97, '2019-03-04 14:39:01'),
(17, 98, '2019-03-04 14:39:01'),
(17, 65, '2019-03-04 14:39:01'),
(17, 57, '2019-03-04 14:39:01'),
(17, 47, '2019-03-04 14:39:01'),
(17, 27, '2019-03-04 14:39:01'),
(18, 25, '2019-03-04 14:39:01'),
(18, 47, '2019-03-04 14:39:01'),
(18, 25, '2019-03-04 14:39:01'),
(19, 29, '2019-03-04 14:39:01'),
(19, 9, '2019-03-04 14:39:01'),
(19, 39, '2019-03-04 14:39:01'),
(19, 49, '2019-03-04 14:39:01'),
(19, 59, '2019-03-04 14:39:01'),
(19, 69, '2019-03-04 14:39:01'),
(20, 10, '2019-03-04 14:39:01'),
(20, 30, '2019-03-04 14:39:01'),
(20, 40, '2019-03-04 14:39:01'),
(20, 50, '2019-03-04 14:39:01'),
(20, 80, '2019-03-04 14:39:01'),
(21, 41, '2019-03-04 14:39:01'),
(21, 31, '2019-03-04 14:39:01'),
(21, 51, '2019-03-04 14:39:01'),
(21, 61, '2019-03-04 14:39:01'),
(21, 91, '2019-03-04 14:39:01'),
(21, 81, '2019-03-04 14:39:01'),
(22, 32, '2019-03-04 14:39:01'),
(22, 3, '2019-03-04 14:45:13'),
(22, 32, '2019-03-04 14:45:13'),
(22, 65, '2019-03-04 14:45:13'),
(22, 78, '2019-03-04 14:45:13'),
(22, 98, '2019-03-04 14:45:13'),
(22, 14, '2019-03-04 14:45:13'),
(23, 33, '2019-03-04 14:45:13'),
(23, 43, '2019-03-04 14:45:13'),
(23, 53, '2019-03-04 14:45:13'),
(23, 63, '2019-03-04 14:45:13'),
(23, 83, '2019-03-04 14:45:13'),
(24, 54, '2019-03-04 14:45:13'),
(24, 64, '2019-03-04 14:45:13'),
(24, 84, '2019-03-04 14:45:13'),
(24, 74, '2019-03-04 14:45:13'),
(24, 98, '2019-03-04 14:45:13'),
(25, 100, '2019-03-04 14:45:13'),
(25, 75, '2019-03-04 14:45:13'),
(25, 16, '2019-03-04 14:45:13'),
(25, 78, '2019-03-04 14:45:13'),
(25, 65, '2019-03-04 14:45:13'),
(26, 16, '2019-03-04 14:45:13'),
(26, 36, '2019-03-04 14:45:13'),
(26, 46, '2019-03-04 14:45:13'),
(26, 56, '2019-03-04 14:45:13'),
(26, 87, '2019-03-04 14:45:13'),
(27, 75, '2019-03-04 14:45:13'),
(27, 84, '2019-03-04 14:45:13'),
(27, 65, '2019-03-04 14:45:13'),
(27, 64, '2019-03-04 14:45:13'),
(27, 63, '2019-03-04 14:45:13'),
(28, 78, '2019-03-04 14:45:13'),
(28, 45, '2019-03-04 14:45:13'),
(28, 65, '2019-03-04 14:45:13'),
(28, 74, '2019-03-04 14:45:13'),
(28, 74, '2019-03-04 14:45:13'),
(28, 65, '2019-03-04 14:45:13'),
(28, 74, '2019-03-04 14:45:13'),
(28, 95, '2019-03-04 14:45:13'),
(29, 56, '2019-03-04 14:45:13'),
(29, 21, '2019-03-04 14:50:47'),
(29, 45, '2019-03-04 14:50:47'),
(29, 78, '2019-03-04 15:02:32'),
(29, 56, '2019-03-04 15:02:32'),
(30, 52, '2019-03-04 15:02:32'),
(30, 87, '2019-03-04 15:02:32'),
(30, 89, '2019-03-04 15:02:32'),
(30, 14, '2019-03-04 15:02:32'),
(30, 78, '2019-03-04 15:02:32'),
(31, 45, '2019-03-04 15:02:32'),
(31, 87, '2019-03-04 15:02:32'),
(31, 85, '2019-03-04 15:02:32'),
(31, 2, '2019-03-04 15:02:32'),
(31, 6, '2019-03-04 15:02:32'),
(32, 9, '2019-03-04 15:02:32'),
(32, 39, '2019-03-04 15:02:32'),
(32, 45, '2019-03-04 15:02:32'),
(33, 97, '2019-03-04 15:02:32'),
(33, 58, '2019-03-04 15:02:32'),
(33, 47, '2019-03-04 15:02:32'),
(33, 85, '2019-03-04 15:02:32'),
(33, 56, '2019-03-04 15:02:32'),
(34, 89, '2019-03-04 15:02:32'),
(34, 28, '2019-03-04 15:02:32'),
(34, 48, '2019-03-04 15:02:32'),
(34, 78, '2019-03-04 15:02:32'),
(34, 69, '2019-03-04 15:02:32'),
(35, 68, '2019-03-04 15:02:32'),
(35, 97, '2019-03-04 15:02:32'),
(35, 68, '2019-03-04 15:02:32'),
(35, 28, '2019-03-04 15:02:32'),
(35, 67, '2019-03-04 15:02:32'),
(35, 24, '2019-03-04 15:02:32'),
(36, 28, '2019-03-04 15:02:32'),
(36, 10, '2019-03-04 15:02:32'),
(36, 77, '2019-03-04 15:02:32'),
(36, 58, '2019-03-04 15:02:32'),
(37, 55, '2019-03-04 15:02:32'),
(37, 98, '2019-03-04 15:02:32'),
(37, 58, '2019-03-04 15:02:32'),
(37, 14, '2019-03-04 15:02:32'),
(37, 63, '2019-03-04 15:02:32'),
(38, 41, '2019-03-04 15:15:14'),
(38, 42, '2019-03-04 15:15:14'),
(38, 43, '2019-03-04 15:15:14'),
(38, 44, '2019-03-04 15:15:14'),
(38, 45, '2019-03-04 15:15:14'),
(39, 51, '2019-03-04 15:15:14'),
(39, 52, '2019-03-04 15:15:14'),
(39, 53, '2019-03-04 15:15:14'),
(39, 54, '2019-03-04 15:15:14'),
(39, 89, '2019-03-04 15:15:14'),
(40, 41, '2019-03-04 15:15:14'),
(40, 85, '2019-03-04 15:15:14'),
(40, 86, '2019-03-04 15:15:14'),
(40, 65, '2019-03-04 15:15:14'),
(40, 12, '2019-03-04 15:15:14'),
(41, 4, '2019-03-04 15:15:14'),
(41, 5, '2019-03-04 15:15:14'),
(41, 6, '2019-03-04 15:15:14'),
(41, 7, '2019-03-04 15:15:14'),
(42, 6, '2019-03-04 15:15:14'),
(42, 81, '2019-03-04 15:15:14'),
(42, 86, '2019-03-04 15:15:14'),
(42, 18, '2019-03-04 15:15:14'),
(43, 54, '2019-03-04 15:15:14'),
(43, 74, '2019-03-04 15:15:14'),
(43, 52, '2019-03-04 15:15:14'),
(44, 52, '2019-03-04 15:15:14'),
(44, 36, '2019-03-04 15:15:14'),
(44, 20, '2019-03-04 15:15:14'),
(45, 39, '2019-03-04 15:15:14'),
(45, 78, '2019-03-04 15:15:14'),
(45, 12, '2019-03-04 15:15:14'),
(46, 87, '2019-03-04 15:15:14'),
(46, 25, '2019-03-04 15:15:14'),
(46, 32, '2019-03-04 15:15:14'),
(47, 89, '2019-03-04 15:15:14'),
(47, 19, '2019-03-04 15:15:14'),
(47, 28, '2019-03-04 15:15:14'),
(47, 98, '2019-03-04 15:15:14'),
(48, 76, '2019-03-04 15:15:14'),
(48, 49, '2019-03-04 15:20:12'),
(48, 50, '2019-03-04 15:20:12'),
(48, 62, '2019-03-04 15:20:12'),
(49, 82, '2019-03-04 15:20:12'),
(49, 68, '2019-03-04 15:20:12'),
(49, 78, '2019-03-04 15:20:12'),
(50, 65, '2019-03-04 15:20:12'),
(50, 74, '2019-03-04 15:20:12'),
(50, 74, '2019-03-04 15:20:12'),
(50, 29, '2019-03-04 15:20:12'),
(51, 96, '2019-03-04 15:20:12'),
(51, 83, '2019-03-04 15:20:12'),
(51, 28, '2019-03-04 15:20:12'),
(51, 63, '2019-03-04 15:20:12'),
(52, 89, '2019-03-04 15:20:12'),
(52, 98, '2019-03-04 15:20:12'),
(52, 19, '2019-03-04 15:20:12'),
(53, 17, '2019-03-04 15:20:12'),
(53, 94, '2019-03-04 15:20:12'),
(53, 28, '2019-03-04 15:20:12'),
(54, 96, '2019-03-04 15:20:12'),
(54, 32, '2019-03-04 15:20:12'),
(54, 13, '2019-03-04 15:20:12'),
(55, 87, '2019-03-04 15:20:12'),
(55, 64, '2019-03-04 15:20:12'),
(55, 73, '2019-03-04 15:20:12'),
(56, 47, '2019-03-04 15:20:12'),
(56, 82, '2019-03-04 15:20:12'),
(56, 14, '2019-03-04 15:20:12'),
(57, 96, '2019-03-04 15:20:12'),
(57, 48, '2019-03-04 15:20:12'),
(58, 43, '2019-03-04 15:20:12'),
(58, 80, '2019-03-04 15:20:12'),
(58, 90, '2019-03-04 15:20:12'),
(59, 87, '2019-03-04 15:20:12'),
(59, 62, '2019-03-04 15:20:12'),
(59, 73, '2019-03-04 15:20:12'),
(60, 61, '2019-03-04 15:20:12'),
(60, 62, '2019-03-04 15:20:12'),
(60, 63, '2019-03-04 15:20:12'),
(61, 2, '2019-03-04 15:26:22'),
(61, 38, '2019-03-04 15:26:22'),
(61, 6, '2019-03-04 15:26:22'),
(61, 8, '2019-03-04 15:26:22'),
(62, 76, '2019-03-04 15:26:22'),
(62, 64, '2019-03-04 15:26:22'),
(63, 88, '2019-03-04 15:26:22'),
(63, 44, '2019-03-04 15:26:22'),
(63, 5, '2019-03-04 15:26:22'),
(64, 82, '2019-03-04 15:26:22'),
(64, 91, '2019-03-04 15:26:22'),
(65, 42, '2019-03-04 15:26:22'),
(65, 48, '2019-03-04 15:26:22'),
(65, 23, '2019-03-04 15:26:22'),
(66, 28, '2019-03-04 15:26:22'),
(66, 29, '2019-03-04 15:26:22'),
(67, 31, '2019-03-04 15:26:22'),
(67, 37, '2019-03-04 15:26:22'),
(68, 10, '2019-03-04 15:26:22'),
(68, 11, '2019-03-04 15:26:22'),
(68, 12, '2019-03-04 15:26:22'),
(69, 25, '2019-03-04 15:26:22'),
(69, 26, '2019-03-04 15:26:22'),
(69, 27, '2019-03-04 15:26:22'),
(70, 76, '2019-03-04 15:26:22'),
(70, 1, '2019-03-04 15:26:22'),
(70, 4, '2019-03-04 15:26:22'),
(70, 6, '2019-03-04 15:26:22'),
(71, 39, '2019-03-04 15:26:22'),
(71, 5, '2019-03-04 15:26:22'),
(72, 33, '2019-03-04 15:26:22'),
(72, 94, '2019-03-04 15:26:22'),
(73, 64, '2019-03-04 15:26:22'),
(73, 16, '2019-03-04 15:26:22'),
(74, 38, '2019-03-04 15:26:22'),
(74, 15, '2019-03-04 15:26:22'),
(74, 30, '2019-03-04 15:26:22'),
(75, 21, '2019-03-04 15:26:22'),
(75, 84, '2019-03-04 15:26:22'),
(76, 90, '2019-03-04 15:26:22'),
(76, 40, '2019-03-04 15:31:13'),
(77, 41, '2019-03-04 15:31:13'),
(78, 94, '2019-03-04 15:31:13'),
(78, 46, '2019-03-04 15:31:13'),
(79, 45, '2019-03-04 15:31:13'),
(79, 88, '2019-03-04 15:31:13'),
(80, 35, '2019-03-04 15:31:13'),
(80, 48, '2019-03-04 15:31:13'),
(80, 74, '2019-03-04 15:31:13'),
(81, 16, '2019-03-04 15:31:13'),
(81, 97, '2019-03-04 15:31:13'),
(81, 100, '2019-03-04 15:31:13'),
(82, 64, '2019-03-04 15:31:13'),
(82, 37, '2019-03-04 15:31:13'),
(82, 64, '2019-03-04 15:31:13'),
(83, 78, '2019-03-04 15:31:13'),
(83, 97, '2019-03-04 15:31:13'),
(84, 16, '2019-03-04 15:31:13'),
(84, 29, '2019-03-04 15:31:13'),
(85, 19, '2019-03-04 15:31:13'),
(85, 43, '2019-03-04 15:31:13'),
(85, 77, '2019-03-04 15:31:13'),
(86, 47, '2019-03-04 15:31:13'),
(86, 70, '2019-03-04 15:31:13'),
(87, 70, '2019-03-04 15:31:13'),
(87, 90, '2019-03-04 15:31:13'),
(88, 40, '2019-03-04 15:31:13'),
(88, 90, '2019-03-04 15:31:13'),
(88, 60, '2019-03-04 15:31:13'),
(89, 64, '2019-03-04 15:31:13'),
(89, 41, '2019-03-04 15:31:13'),
(89, 74, '2019-03-04 15:31:13'),
(90, 3, '2019-03-04 15:31:13'),
(90, 5, '2019-03-04 15:31:13'),
(90, 7, '2019-03-04 15:31:13'),
(90, 6, '2019-03-04 15:31:13'),
(91, 8, '2019-03-04 15:31:13'),
(91, 4, '2019-03-04 15:31:13'),
(92, 7, '2019-03-04 15:31:13'),
(92, 19, '2019-03-04 15:31:13'),
(92, 3, '2019-03-04 15:37:31'),
(93, 8, '2019-03-04 15:37:31'),
(93, 65, '2019-03-04 15:37:31'),
(94, 87, '2019-03-04 15:37:31'),
(94, 7, '2019-03-04 15:37:31'),
(95, 35, '2019-03-04 15:37:31'),
(95, 74, '2019-03-04 15:37:31'),
(96, 28, '2019-03-04 15:37:31'),
(97, 24, '2019-03-04 15:37:31'),
(97, 34, '2019-03-04 15:37:31'),
(98, 58, '2019-03-04 15:37:31'),
(98, 47, '2019-03-04 15:37:31'),
(99, 52, '2019-03-04 15:37:31'),
(99, 74, '2019-03-04 15:37:31'),
(100, 2, '2019-03-04 15:37:31'),
(100, 6, '2019-03-04 15:37:51'),
(100, 7, '2019-03-04 15:37:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bildirimler`
--

CREATE TABLE `bildirimler` (
  `bil_id` int(10) NOT NULL,
  `bil_sahibi` int(10) NOT NULL,
  `bil_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bil_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

CREATE TABLE `dersler` (
  `ders_id` int(10) NOT NULL,
  `ders_adi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_yariyili` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teorik` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uygulama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_kredisi` tinyint(2) NOT NULL,
  `ders_akts` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`ders_id`, `ders_adi`, `ders_icerigi`, `ders_yariyili`, `teorik`, `uygulama`, `ders_kredisi`, `ders_akts`) VALUES
(1, 'Oryantasyon', 'Üniversite ve bölüm ile ilgili bilgiler. Öğrencilerin üniversite yaşamı, üniversite olanakları, bölüm olanakları, yönetmelikler. Bilgisayar Mühendisliği mesleği hakında bilgi, üniversite eğitimi süreci ve mezuniyet sonrası kariyer.Akademik yayın hazırlama, tarama.Ofis programları kullanımı: Kelime İşlemci, Hesap Tablosu, Sunum. Öğrenci değişim programları, üniversiteler arası geçiş\r\nimkanları.', '1.Yarıyıl', '1', '0', 1, 1),
(2, 'Genel Fizik 1', 'Fizik ve Ölçme, Vektörler, Bir boyutta hareket, İki boyutta Hareket, Hareket Kanunları, Dairesel Hareket ve Newton Kanunlarının Diğer Uygulamaları, İş ve Kinetik Enerji, Potansiyel Enerji ve Enerjinin Korunumu, Doğrusal Momentum ve Çarpışmalar, Katı Cismin Sabit Bir Eksen Etrafında\r\nDönmesi, Yuvarlanma Hareketi ve Açısal Momentum, Statik Denge ve Esneklik, Kütle Merkezi.', '1.Yarıyıl', '2', '2', 3, 6),
(3, 'Matematik 1', 'Sayılar, Fonksiyonlar, Fonksiyonların Grafikleri, Parçalı Tanımlı Fonksiyonlar, Limit, Süreklilik,Türev ve Türev Alma Kuralları, Türevin Uygulamaları, Maksimum ve Minimum Değerler,\r\nTürevin Geometrik Yorumu, Maksimum ve Minimum Değer Problemleri, Belirsizlikler ve\r\nL\'Hospital Kuralı,Asimptotlar', '1.Yarıyıl', '2', '2', 3, 6),
(4, 'Algoritma ve Programlama', 'Algoritma ve akış şeması kavramları, genel olarak programlamaya giriş. Değişken kavramı ve bazı\r\ncebirsel işlemlerin algoritma ve akış şemalarının çizilmesi. Dizilerle ilgili algoritmalar ve akış\r\nşemaları.Matrislerle ilgili algoritmalar ve akış şemaları.Sıralama algoritmaları.Basit oyunların\r\nalgoritmaları ve akış şemaları.Python programlama dilinin temel kavramları. Algoritması veya\r\nakış şeması verilen programların Python ile kodlanması.Temel seviyede oyunların kodlanması', '1.Yarıyıl', '2', '2', 3, 5),
(5, 'Bilgisayar Mğhendisliğine Giriş', 'Bilgisayar Mühendisliği kavramı, Bilgi ve Bilgi Sistemleri, Yarıiletkenler, Temel Mantıksal\r\nYapılar,Bilgisayarın Tarihsel Gelişim Süreci, Von Neumann Mimarisi, Bilgisayar Yazılımı, Veri\r\nTabanları, İşletim Sistemleri, Algoritmik Program Tasarımı, Akış Şemaları, Bilgisayar Ağları.', '1.Yarıyıl', '3', '0', 3, 5),
(6, 'Atatürk İlkeleri ve İnkılâp Tarihi 1', 'Atatürk İlkeleri ve İnkılâp Tarihi dersi yüksek öğretimde iki yarıyıl olarak “Atatürk İlkeleri ve\r\nİnkılâp Tarihi I” ve “Atatürk İlkeleri ve İnkılâp Tarihi II” okutulmakta ve ders geçme açısından\r\nbirbirinden bağımsız iki ders niteliği taşımaktadır. Atatürk İlkeleri ve İnkılâp Tarihi, Ulu Önder\r\nMustafa Kemal Paşa’nın Samsun’a çıkmasıyla başlayan ve yurdun işgallerden kurtarılmasından\r\nsonra ülkenin çağdaş ülkeler seviyesine çıkarılmasını amaçlayan inkılâplar dönemini ve Atatürk\r\nilkelerini içerir.', '1.Yarıyıl', '2', '0', 2, 1),
(7, 'Türk Dili 1', 'Türk Dili dersinin amacı, bu dersi alan her gence, ana dilinin yapı ve işleyiş özelliklerini gereğince kavratabilmek; dil-düşünce bağlantısı açısından, yazılı ve sözlü ifade vasıtası olarak, Türkçeyi doğru ve güzel kullanabilme yeteneği kazandırabilmek; öğretimde birleştirici bir dili hâkim kılmak ve ana dili şuuruna sahip gençler yetiştirmektir', '1.Yarıyıl', '2', '0', 2, 1),
(8, 'Yabancı Dil (İngilizce) 1', 'Lisans ve Ön lisans programlarında 1. sınıflara yönelik Temel İngilizce Dersi', '1.Yarıyıl', '2', '0', 2, 2),
(9, 'Genel Fizik 2', 'Elektrik,manyetizma, optik ve modern fizik kanunları ve kavramlarının tanımı, fiziksel\r\nuygulamalarda temel elektrik ve manyetizma kavramlarının uygulanması, fiziksel veya genel\r\nsorunlara karşı sistematik ve mantıksal yaklaşımlar geliştirilmesi', '2.Yarıyıl', '2', '2', 3, 6),
(10, 'Lineer Cebir', 'Lineer denklem sistemleri ve çözümleri (Gauss, Gauss-Jordan, Cramer, ters matris v.b.), matrisler (rank, minör, kofaktör ek kavramları ve matris türleri) ve matrislerde cebirsel işlemler,\r\ndeterminantlar, vektör uzayları, ortagonal ve ortanormal vektörler, lineer bağımlı ve lineer\r\nbağımsız vektörler, vektör uzayının tabanı ve boyutu, Normlu uzaylar, özdeğer problemi (özdeğer\r\nve özvektörler), diyogonelleştirme.', '2.Yarıyıl', '2', '2', 3, 5),
(11, 'Matematik 2', 'Belirsiz İntegral, Riemann İntegrali , Belirli integraller,Analizin Temel Teoremi,İntegral Alma Kuralları, Belirli İntegralin Uygulamaları,Genelleştirilmiş İntegraller.', '2.Yarıyıl', '2', '2', 3, 6),
(12, 'Yapısal Programlama', 'Yapısal programlama kavramı ve c programlama Dili Değişkenler, sabitler ve operatörler Genel giriş çıkış fonksiyonları Program akış kontrol yapıları, döngüler Fonksiyonlar Diziler İşaretçiler Dizgiler Yapılar Dosyalar', '2.Yarıyıl', '2', '2', 3, 6),
(13, 'Atatürk İlkeleri ve İnkılâp Tarihi 2', 'Atatürk İlkeleri ve İnkılâp Tarihi dersi yüksek öğretimde iki yarıyıl olarak “Atatürk İlkeleri ve İnkılâp Tarihi I” ve “Atatürk İlkeleri ve İnkılâp Tarihi II” okutulmakta ve ders geçme açısından birbirinden bağımsız iki ders niteliği taşımaktadır. Atatürk İlkeleri ve İnkılâp Tarihi, Ulu Önder Mustafa Kemal Paşa’nın Samsun’a çıkmasıyla başlayan ve yurdun işgallerden kurtarılmasından sonra ülkenin çağdaş ülkeler seviyesine çıkarılmasını amaçlayan inkılâplar dönemini ve Atatürk ilkelerini içerir.', '2.Yarıyıl', '2', '0', 2, 1),
(14, 'Türk Dili 2', 'Türk Dili II dersi; yazılı ve sözlü anlatım konuları üzerine odaklanır.', '2.Yarıyıl', '2', '0', 2, 1),
(15, 'Yabancı Dil (İngilizce) 2', 'Lisans ve Ön lisans programlarında 1. sınıflara yönelik Temel İngilizce Dersi', '2.Yarıyıl', '2', '0', 2, 2),
(16, 'Veri Yapıları', 'Bu derste anlatılan konular arasında pointer mantığı, algoritmaların asimtotik analizi (Büyük O notasyonu ve onun benzerleri); algoritmaların yinelemeli ve iteratif gerçekleştirimleri; dizi, liste, kuyruk, yığın, heap, sözlük, arama ağacı ve graf gibi popüler veri yapıları ve Java Collection\r\nFramework yer almaktadır. Kod yazımları C ve/veya Java programlama dillerinde yapılmaktadır.', '3.Yarıyıl', '2', '2', 3, 6),
(17, 'Nesneye yönelik programlama ', 'Nesneye yönelik programlama kavramları Java dilinde işlenecektir. Java platform kavramı açıklanacaktır. Nesneye yönelik programama yaklaşımının diğer programlama yaklaşımlarından farklarının incelenmesi. Kontrol ve döngü yapıları. Nesne, sınıf, soyutlama, paketleme, kalıtım, çok biçimlilik kavramlarının teorik ve uygulamalar ile pekiştirilmesi.', '3.Yarıyıl', '2', '2', 3, 6),
(18, 'Ayrık Matematik', 'Bu dersin dört önemli teması olarak adlandırılan matematiksel sonuç çıkarma, kesikli yapılar, algoritmik düşünme, uygulama ve modelleme konuları incelenecektir.', '3.Yarıyıl', '2', '2', 3, 6),
(19, 'Diferansiyel Denklemler', 'Bu dersin içeriği yoktur.', '3.Yarıyıl', '2', '2', 3, 6),
(20, 'Analog Elektronik', 'Devre Elemanlarına Giriş.Pasif Devre Elemanları,Dirençler ve Devreleri,Kondansatörler, Bobinler ve Devreleri, Aktif devre elemanlarına Giriş,Yarı İletkenler, Diyotlar ve Diyot devreleri transistorler ve Bağlantı gurupları,Transistorlü Yükselteçler ve opamplar gösterilmektedir.', '3.Yarıyıl', '2', '2', 3, 6),
(21, 'Olasılık ve İstatistik', 'Mühendisler için temel olasılık ve istatistik teori konu ve uygulamaları.', '4.Yarıyıl', '2', '2', 3, 6),
(22, 'Bilgisayar Organizasyonu', 'Komut Kümesi Mimarisi (KKM) (Instruction Set Architecture) kavramı yanında, veri temsili, bellek adresleme, bellek haritası, yazmaç dosyaları, dallanma, prosedür çağrısı, kod yer değiştirme ve komut yürütümü sırasındaki temel adımlar bu derste anlatılmaktadır. Bunlar tipik bir MIPS\r\nbenzeri RISC makinede Gerçek Assembly Dilinden (TAL), MIPS Assembly Dili (MAL) ve Basit\r\nSoyut Dilde (SAL) öğretilmektedir.', '4.Yarıyıl', '2', '2', 3, 6),
(23, 'Sayısal Elektronik', 'Lojik mantığı, sayı sistemleri, lojik kapılar, Boolean mantığı, Karnough haritaları, Flip-Flop lar, sayıcılar, toplayıcılar-çıkarıcılar, kaydediciler, RAM ve ROM lar, multiplexer-demultiplexer gösterilmektedir.', '4.Yarıyıl', '2', '2', 3, 6),
(24, 'Programlama Laboratuvarı', 'Yapısal ve Nesneye Yönelik Programlama yaklaşımlarının ileri seviye uygulamaları. Yapısal programlama için: dosya yapıları, sıradan ve rast gele erişim, Veri yapıları, kendinden referanslı yapılar, bağlı listeler, kuyruk yapısı, ağaç yapıları. Nesneye programlama için jenerik yapılar, hata kontrolü, veri yapıları, kolleksiyonlar, çoklu kullanım yapıları', '4.Yarıyıl', '0', '4', 2, 6),
(25, 'Bilimsel Hesaplama', 'Bu dersin içeriği yoktur.', '4.Yarıyıl', '3', '0', 3, 6),
(26, 'Devre Analizi', 'Paralel Rezonans, Seri- Paralel karmasık bir devredeki rezonans kosullarının analizi,Yarı Güç\r\nFrekansları ve Rezonans ile ilgili örnekler, Rezonanstaki Akımın Durumu, AC Analizde Çevre\r\nAkımları, Düğüm Gerilimleri , Thevenin ve Norton Yöntemleri,Çevre, Düğüm, Thevenin ve\r\nNorton, Yıldız-Üçgen dönüsümü ve Diğer Analiz Yöntemleri, Kompanzasyon Teoremi,\r\nMaksimum Güç Transferi Teoremi Magnetik Kuplaj Devreler gösterilmektedir.', '4.Yarıyıl', '2', '2', 3, 6),
(27, 'Veri Tabanı Yönetim Sistemleri', 'İlişkisel veri tabanı yönetim sistemlerine giriş ve temel kavramlar tanıtılır. Dönem boyunca ilişkisel veritabanı tasarımı ve SQL ile kullanımı üzerinde odaklanılır. Ders konuları şöyledir; bilgi sistemlerinde Varlık-İlişki diyagramı oluşturma ve veri tabanı olarak belirleme, erişme ve düzenleme ile ilgili kavramsal ve uygulamalı olarak bilgi sahibi olmaları amaçlanmaktadır. Veri tabanı tasarımı ile ilgili kavramlardan sonra bir örnek uygulama üzerinden veri tabanı sorgu dilleri (SQL) ve ORM yapıları üzerinden veri tabanı kullanımı örneklendirilir.', '5.Yarıyıl', '2', '2', 3, 5),
(28, 'İşletim Sistemleri', 'İşletim sistemlerine giriş, süreçler ve iş parçacıkları, IPC, ölümcül kilitler, işlemci zamanlama, bellek yönetimi, giriş ve çıkış sistemi, dosya sistemi.', '5.Yarıyıl', '2', '2', 3, 5),
(29, 'Veri Yönetimi ve Dosya Yapıları', 'Veri ve dosya yapıları, dosya saklama ortamları (sabit diskler, optik depolama ortamları), buffer yönetimi, sıralı erişimli dosyalar ve bunlar üzerinde kayıtların düzenlenmesi, rastgele erişimli dosyalar, çakışmalar, çakışmaların statik ve dinamik yaklaşımlarla çözümlenmesi, indeksli sıralı erişimli dosyalar, bit seviyesinde dosya işlemleri ,ikincil anahtarlar.', '5.Yarıyıl', '2', '2', 3, 4),
(30, 'Mesleki İngilizce', 'Bu dersin temel amacı, öğrencilere bilgisayar mühendisliği/bilimleri ile bilişim teknolojisiyle yakından ilişkili elektrik, elektronik, haberleşme ve mekatronik gibi temel mühendislik dallarında sıklıkla kullanılan teknik terimleri, ifadeleri ve yapıları öğretmektir. Ayrıca bu terimlerin ve ifadelerin İngilizce teknik raporlarda doğru kullanımı pekiştirilir. Derste dağıtılan bilgisayar\r\nbilimleri alanındaki teknik dokümanlar Türkçeye çevrilmektedir.', '5.Yarıyıl', '2', '2', 3, 4),
(31, 'Windows Programlama', '.NET mimarisi, temel veri türleri, sınıflar ve nesneler, temel I/O ve string işlemleri, temsilciler ve olaylar, olay yönetimi, şablonlar, iş parçacıkları, veri tabanına bağlanma ve sorgulamalar, veri tabanı işlemleri için kullanılan farklı kütüphaneler, grafikler, uygulama etki alanları ve servisler.', '5.Yarıyıl', '2', '2', 3, 4),
(32, 'Mikro Denetleyiciler', 'Mikroişlemciler ile Mikrodenetleyiciler arasındaki farkın irdelenmesi. Simülatör kullanılarak Mikrodenetleyici içeren devrelerin tasarlanması. Devre içerisindeki Mikrodenetleyicinin derleyici yardımıyla pic basic pro dili ile programlanarak devre içerisinde gerçek zamanlı çalışmasının gözlemlenmesi.', '5.Yarıyıl', '2', '2', 3, 4),
(33, 'Linux ile Sistem Yönetimi', 'Bu dersin içeriği yoktur.', '5.Yarıyıl', '2', '2', 3, 4),
(34, 'Fonksiyonel Programlama', 'Fonksiyonel programlama temelleri. Özyineleme. Soyutlama. Yüksek dereceli\r\nfonksiyonlar ve veri tipleri. Listelerin kullanımı. Desen eşleme. Monad kavramı.', '5.Yarıyıl', '2', '2', 3, 4),
(35, 'rogramlama Dilleri Kavramları', 'Programlama dillerinin genel özellikleri, kullanım alanları. Dil değerlendirme ölçütleri, dil tasarımını etkileyen unsurlar. Sözdizimi ve anlam analizi, isimler, bağlamalar, kapsamlar, tip kavramı, ifadeler ve atama deyimleri. Kontrol yapıları, Alt programlar ve alt programların gerçekleştirimi. Nesne tabanlı programlama temel kavramları: Soyutlama, kapsülleme, kalıtım. Eşzamanlılık. Sözkonusu programlama dilleri kavramları buyurgan, nesne-tabanlı ve fonksiyonel\r\nprogramlama dilleri vasıtasıyla öğretilmektedir.', '6.Yarıyıl', '2', '2', 3, 5),
(36, 'Veri Haberleşmesi', 'Desrin içeriği boş', '6.Yarıyıl', '2', '2', 3, 5),
(37, 'Nesneye Dayalı Analiz ve Tasarım', 'Dersin içerği boş', '6.Yarıyıl', '2', '2', 3, 5),
(38, 'Mesleki İngilizce 2', 'Bilgisayarlar ve bilişim teknolojileriyle ilişkili güncel dokümanlar öğrencilere dağıtılır. Bu dokümanların tercümeleri yapılır. Özellikle son haftalarda İngilizce doküman hazırlama\r\nkonusunda öğrencilere yardımda bulunulur.', '6.Yarıyıl', '2', '2', 3, 5),
(39, 'İleri Veritabanı Sistemleri', 'İlişkisel veri tabanı yeteneklerinin eksikleri ve çözüm metodları, çok boyutlu veri modelleme, veri ambarları, OLAP küpleri, OLAP mimari tasarımları, OLAP üzerinde sorgu oluşturma ve çalıştırma, veri madenciliği ve veri tabanları ile gerçekleştirimi, mekansal türler ve sorgulanması', '6.Yarıyıl', '2', '2', 3, 5),
(40, 'Programlanabilir Denetleyiciler', 'PIC16F877 mikrodenetleyici deney kiti kullanarak, PicBasic Pro dili yardımıyla gerçek mikrodenetleyici programlanmaktadır. Farklı uygulamaların yer aldığı deney modüllerinde step motor, LCD, Display, Led, Asansör, EEPROM, ADC, Ultrasonic mesafe ölçme, Tuş takımı\r\nuygulamaları gerçekleştirilmektedir.', '6.Yarıyıl', '2', '2', 3, 5),
(41, 'Kriptografi', 'Dersin içeriği yoktur.', '6.Yarıyıl', '2', '2', 3, 5),
(42, 'Mikroişlemciler ve Mikrobilgisayarlar', 'Sayı sistemleri, bilgisayar kodları, boolean mantığı, temel saklayıcı yapısı, Von Neumann makinesi, mikroişlemcinin birimleri ve çalışması, CISC ve RISC mimarileri, x86 mimarisi, bellekler, bellek haritalarının oluşturulması, adresleme modları, veri transfer ve kontrol komutları, mikroişlemcinin farklı çalışma modları, sayfalama.', '6.Yarıyıl', '2', '2', 3, 5),
(43, 'Web Tabanlı Windows Programlama', 'Http temelleri, ASP.NET Web Formlar, Validationlar, Master Sayfalar, ileri düzey LINQ sorgularının yazılması, Linq to XML, Linq to SQL ve Entity Framework , JavaScript ve JQuery, JSON, Web Servis yazımı', '6.Yarıyıl', '3', '0', 3, 5),
(44, 'Formal Diller ve Otomat Teorisi', 'Bu derste farklı hesaplama modelleri tanıtılıp, her bir modelin neleri hesaplayıp hesaplayamayacağı açıklanmaktadır. Chomsky Hiyerarşisindeki diller ve onların hesaplama modelleri öğretilmektedir. Düzenli diller, içerikten bağımsız ve içeriğe bağlı diller ve onları tanıyan modeller derleyici tasarımı perspektifinden açıklanmaktadır. Ayrıca bu modelleri\r\nyazılımla gerçekleştirmede yardımcı olan yazılım araçları (JLex ve CUP) da tanıtılmaktadır.', '7.Yarıyıl', '3', '0', 3, 4),
(45, 'Yöneylem Araştırmalar ve Karar Analizleri', 'Yöneylem araştırması, karar verme ve problem çözme kavramları, Doğrusal programlama (LP), grafik LP çözümü, Grafik çözüm yöntemi için hassasiyet (duyarlılık) analizi. LP problemlerinin bilgisayar kullanılarak çözülmesi. Bellibaşlı LP modellerinin analizi, Simplex yöntemi. Simplex algoritması. Yapay başlangıç çözümü. M yöntemi. Simplex yöntemindeki özel durumlar, Dualite ve Dual problem tanımı. Optimum Primal ve Dual çözümler arası ilişki. Dualite’nin ekonomik yorumlanması. Dual simplex yöntemi, Primal-dual hesaplamaları. Optimal-sonrası analiz veya\r\nHassasiyet (duyarlılık) analizi, ulaştırma modeli ve bunun çeşitleri. Diğer ulaştırma modelleri.\r\nUlaştırma algoritması, Atama modeli. Taşıma modeli, Ağ (şebeke) modelleri. Minimal kapsayan\r\nağaç yapısı (Minimal Spanning Tree, MST) algoritması. En kısa yol problemi, Maksimum akış\r\nmodeli. Minimum-maliyet kapasiteli akış problemi. CPM (Critical Path Method, Kritik Yol\r\nYöntemi) ve PERT (Program Evaluation and Review Technique, Program Değerlendirme ve\r\nİnceleme Tekniği), Hedef Programlama, Tamsayılı Doğrusal Programlama. Dinamik\r\nProgramlama, Stok modelleri. Tahmin modelleri. Karar analizi ve oyunlar. Belirlilik altında karar\r\nverme, Analitik Sıradüzen Süreci (Analytic Hierarchy Process, AHP). Risk altında karar verme.\r\nBelirsizlik altında karar verme, Oyun teorisi.', '7.Yarıyıl', '2', '2', 3, 4),
(46, 'Bilgisayar Ağları', 'Boş', '7.Yarıyıl', '3', '0', 3, 4),
(47, 'Yazılım Mühendisliği', 'Bu ders, Yazılım Mühendisliği ve Yazılım Projelerinin Yönetimi ile ilgili kavramlarını tanıtmayı hedeflemektedir. Dersin geliştirme süreç modelleri, yazılım çözümlemesi ve tasarımı, yazılım sınaması gibi genel yazılım mühendisliği konularını kapsayan içeriği, yazılım mühendisliği alanında genel bilgi sahibi olunmasını sağlamayı amaçlamaktadır.', '7.Yarıyıl', '3', '0', 3, 4),
(48, 'Görünntü İşleme', 'Dersin amacı uzaysal ve frekans domenlerinde temel görüntü işleme yöntem ve algoritmalarını ögretmektir. Görüntü Ön İşlenmesi, Görüntü İyilestirme, Görüntü Restorasyonu, Bölütleme\r\nAlgoritmaları, Morfoloji, Renkli Görüntü İsleme, Hareket Analizi, Görüntü Sıkıstırma, Örüntü\r\nTanıma Temelleri.', '7.Yarıyıl', '3', '0', 3, 4),
(49, 'Ontoloji Mühendisliği', 'Boş', '7.Yarıyıl', '3', '0', 3, 4),
(50, 'Çoklu Ortam Sistemleri', 'Çoklu ortam sistemlerine giriş, Çoklu ortam sistemleri için mimariler, Çoklu ortam iletişimi, Çoklu ortam verilerinin gösterimi, Sayısal ses ve görüntü teknolojileri, Metin ve görüntü sıkıştırma, Ses ve video sıkıştırma, İnternet&#39;in altyapısı, İnternet&#39;te veri depolama ve\r\nbilgi elde etme yöntemleri, Çoklu ortam iletişimine ilişkin standartlar, Eğlence ağları ve yüksek hızlı\r\nmodemler, İletim protokolleri, İletim protokolleri için ileri konular.', '7.Yarıyıl', '2', '2', 3, 4),
(51, 'Kuantum Bilgisayarlar I', 'Giriş ve temeller Kompleks Uzay Vektör uzayları, bazlar ve lineer bağımsızlık, iç çarpım, gram-schmidt dikleştirme yöntemi Özdeğer ve özdenklemler, Operatör kavramı, Hermitik veeşlenik operatörler, Operatör fonksiyonları , Lineer dönüşümler, Spektral teoremi, Tensör çarpımı,\r\nSingular-Value ve Schmidt ayrıştırma teoremi Özdeğer ve özdenklemler, Operatör kavramı,\r\nHermitik ve eşlenik operatörler, Operatör fonksiyonları , Lineer dönüşümler, Spektral teoremi,\r\nTensör çarpımı, Singular-Value ve Schmidt ayrıştırma teoremi Dirac Gösterimi Modüler\r\nAritmetik, sürekli kesirler ve Fourier Dönüşümü Modüler Aritmetik, sürekli kesirler ve Fourier\r\nDönüşümü Temel Grup Teorisi ve abelyen gruplar Klasik Hesaplama Modelleri ( Turing\r\nmakinesi, hesaplanabilir fonksiyonlar, klasik hesaplama kapıları, Toffoli, Frendkin kapıları\r\n,terslenebilir hesaplama, ve hesaplama karmaşıklıkları) Klasik Hesaplama Modelleri ( Turing\r\nmakinesi, hesaplanabilir fonksiyonlar, klasik hesaplama kapıları, Toffoli, Frendkin kapıları\r\n,terslenebilir hesaplama, ve hesaplama karmaşıklıkları) Kuantum sistemler ve zaman evrimleri,\r\nBirleşik kuantum sistemlerinin tanımlanması Ölçme ve genel kuantum işlemleri Dolanık durumlar\r\nve sonuçları', '7.Yarıyıl', '2', '2', 3, 4),
(52, 'Windows Azure ile Bulut Bilişime Giriş', 'Dersin amacı bulut bilişim kavramının teorik ve pratik yönleriyle tanıtmaktır. Dersin içeriği bulut bilişime giriş ve temel kavramlar, sanal makinalar, veri saklama ortamları, mobil servisler,veritabanı servisleridir.', '7.Yarıyıl', '3', '0', 3, 4),
(53, 'Veri Madenciliği', 'Veri madenciliği kavramı, veri ambarları, OLAP, veri küpleri, ham veriden bilgi çıkarma, veri ön işleme: veri temizleme –birleştirme - dönüştürme, Sınıflama Yöntemleri: Karar Ağaçları, Bayes Yöntemi, Yapay Sinir Ağları, Destek Vektör Makinaları, Kümele Yöntemleri: Bölüntüleme\r\nYöntemleri – Hiyerarşik Yöntemler, yöntemlerin başarım değerlendirmesi, ilişkilendirme,\r\nkorelasyon ve örüntü inceleme', '7.Yarıyıl', '3', '0', 3, 4),
(54, 'Yapay Zeka ve Uzman Sistemler', 'Bilgi gösterimi. Arama ve sezgisel programlama. Mantık ve mantık programlama. Yapay zeka uygulama alanları: problem çözme, oyunlar, uzman sistemler, planlama, öğrenme,\r\ngörüş, ve doğal dil anlama.', '7.Yarıyıl', '3', '0', 3, 4),
(55, 'Robot Teknolojileri', 'Günümüzde, PLC ( Programmable Logic Controller) otomasyon sistemlerinin temel taşı haline gelmiştir. İnsan gücünü neredeyse yarıya indirebilen PLC, endüstrinin birçok alanında yaygın\r\nolarak kullanılmaktadır. Ağırlıklı olarak, Omron markalı PLC sistemleri olmak üzere otomasyon\r\nteknolojilerinde kullanılan diğer sistemler de anlatılacaktır. PLC sistemlerini programlamak için\r\nkullanılan en yaygın dillerden biri olan Ladder programlama dilinin tanıtılması ve programlanması\r\nuygulamalı olarak anlatılacaktır. Üzerinde Windows çalışan dizüstü bilgisayar (Programın\r\nçalışması için) ve USB-COM dönüştürücü aparat ders için gereklidir.', '7.Yarıyıl', '3', '0', 3, 4),
(56, 'Algoritma Analizi', 'Dersin içeriği ; algoritma analizi temel kavramları, notasyon, temel algoritmaların analiz etme yöntemleri, en iyi durum, en kötü durum ve ortala durum senaryolarının gösterilmesinden sonra amortized cost kavramının tanıtılması, Liste, kuyruk, yığın ve ağaç gibi temel veri yapılarının karmaşıklık analizi, Dinamik programlama , String algoritmaların örneklerle tanıtılmasıdır.', '8.Yarıyıl', '3', '0', 3, 5),
(57, 'Bigisayar Mimarisi', 'Bu derste işlemci performansını artırmayı amaçlayan paralelliğe yönelik yöntemler üzerinde durulmaktadır. Pipeline, dinamik komut planlaması, derleyici temelli statik komut planlaması,\r\ndallanma tahmini, spekülatif komut yürütümü, yazılım pipeline gibi süper ölçekli işlemcilerde\r\nperformansı artırmaya yönelik yöntemler dersin konuları arasındadır. Bellek hiyerarşisi tanıtılıp,\r\nbunun sistem performansı üzerine olan etkisi açıklanmaktadır. Günümüzdeki çok çekirdekli\r\nmakinelerin temel özellikleri ve önbellek hiyerarşileri anlatılmaktadır. İşletim sistemi, donanım ve\r\nderleyici arasındaki ilişkiler ve etkileşimler sistem performansı açısından incelenmektedir.', '8.Yarıyıl', '3', '0', 3, 5),
(58, 'Yapay Sinir Ağları', 'Yapay öğrenme sistemleri. Yapay sinir ağı modelleri. Eğiticili ve eğiticisiz öğrenme.Özellik Çıkarımı. Kümeleme, sınıflandırma ve tahminleme problemleri. Destekleyicili\r\nöğrenme. Desen tanıma. Derin öğrenme.', '8.Yarıyıl', '3', '0', 3, 5),
(59, 'Kuantum Bilgisayarlar II', 'Giriş ve temeller Dirac notasyonu Kuantum Olasılık(durum vektörlerinin olasılıkları, yoğunluk\r\nmatrisleri, yoğunluk matrisleri arasındaki mesafe fonksiyonları, ölçme, bozulma) Kuantum\r\nOlasılık (durum vektörlerinin olasılıkları, yoğunluk matrisleri, yoğunluk matrisleri arasındaki\r\nmesafe fonksiyonları, ölçme, bozulma) Kuantum Bit ve bilgi, Kuantum Turing Makinesi Kuantum\r\nBit ve bilgi, Kuantum Turing Makinesi Kuantum devre modeli, kuantum kapıları ve evrensel\r\nkuantum kapı kümesi ve birimsel dönüşümlerde yakınsama Kuantum devre modeli, kuantum\r\nkapıları ve evrensel kuantum kapı kümesi ve birimsel dönüşümlerde yakınsama Kuantum devre\r\nmodeli, kuantum kapıları ve evrensel kuantum kapı kümesi ve birimsel dönüşümlerde yakınsama\r\nKuantum devre modeli, kuantum kapıları ve evrensel kuantum kapı kümesi ve birimsel\r\ndönüşümlerde yakınsama Süper yoğun kodlama Kuantum Teleportasyon Kuantum bilgisayarların\r\ngerçekleştirimindeki yöntemler Kuantum bilgisayarların gerçekleştirimindeki yöntemler', '8.Yarıyıl', '2', '2', 3, 5),
(60, 'Dağıtık Sistemler', 'Ders kapsamında, iletişim ve katmanlı protokoller, Uzak Yordam Çağrısı (RPC), Uzak Nesne Çağrısı (ROI), Mesajlaşmaya-dayalı iletişim, Akışa-dayalı iletişim, süreçler, kod taşıma (göçü) ve\r\nsaat senkronizasyonu detayları ile açıklanmaktadır.', '8.Yarıyıl', '2', '2', 3, 5),
(61, 'Kablosuz Algılayıcı Ağlar (KAA', 'Kablosuz Algılayıcı Ağlar (KAA) temel kavramları, KAA uygulamaları, kablosuz algılayıcı düğüm mimarisi, KAA için ağ mimarisi, yönlendirme, topoloji kontrolü, konum tespiti ve güvenlik, KAA için geliştirilmiş işletim sistemleri ile ilgili öğrenciye temel bilgi verilmektedir.', '8.Yarıyıl', '3', '0', 3, 5),
(62, 'Derleyici Tasarımı', 'Java programlama dilinde otomatik sözcük analizci üretimine yönelik JLex ve otomatik ayrıştırıcı üretimine yönelik CUP gibi önemli yazılım araçları tanıtılmaktadır. Anlamsal eylemler, ara temsiller ve kod üretimi, komut seçimi, veri akış analizi, yaşam analizi ve graf boyamalı yazmaç tahsisi ve çalışma zamanı bellek yönetimi de bu derste anlatılan konular arasındadır. Bu dersi\r\nbaşarıyla tamamlayan öğrenciler, derste öğrendikleri teoriyi ve yöntemleri çoğu programlama\r\ndilleri için iyileştirilmiş derleyicilerin tasarım ve gerçekleştirilmesinde uygulayabilirler.', '8.Yarıyıl', '3', '0', 3, 5),
(63, 'Paralel Sistemler', 'Özel önbelleklere sahip işlemcilerden oluşan paralel mimarilerde karşılaşılan veri tutarlılığı problemi tanıtılıp önbellek tutarlılık protokolleri üzerinde durulmaktadır. Önbellek tutarlı üniform olmayan bellek erişimli (ccNUMA) paralel sistemler tanıtılıp bu tür mimarilerin sağladığı performans kazançlarından bahsedilmektedir. Genel olarak, programlama modeli olarak paylaşılan\r\nbellekli makineler yönelik OpenMP anlatılıp, işlerin çoklu iş parçacıkları arasında paylaşımını\r\nsağlayan OpenMP özellikleri üzerine yoğunlaşılmaktadır. Ayrıca dağıtık bellekli makineler için\r\nMPI programlama modelinden kısa da olsa bahsedilmektedir.', '8.Yarıyıl', '3', '0', 3, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `measaj_id` int(10) NOT NULL,
  `gonderen_id` int(10) NOT NULL,
  `alici_id` int(10) NOT NULL,
  `masaj_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mesaj_metni` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notlar`
--

CREATE TABLE `notlar` (
  `not_id` int(10) NOT NULL,
  `not_basligi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_aciklamasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `eklendigi_tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uye_id` int(10) NOT NULL,
  `not_durumu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_id` int(10) NOT NULL,
  `not_dosyasi` longblob NOT NULL,
  `begen_sayisi` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ortak_notlar`
--

CREATE TABLE `ortak_notlar` (
  `uye_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rollar`
--

CREATE TABLE `rollar` (
  `rol_id` tinyint(1) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `rollar`
--

INSERT INTO `rollar` (`rol_id`, `authority`) VALUES
(0, 'ROLE_SUPERADMIN'),
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(10) NOT NULL,
  `uye_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_soyadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vi3n9K_19',
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_rolu` tinyint(1) NOT NULL DEFAULT '2',
  `kayit_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `profil_resmi` longblob,
  `aktif` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `uyeler`
--


INSERT INTO `uyeler` (`uye_id`, `uye_adi`, `uye_soyadi`, `username`, `username2`, `password`, `telefon`, `uye_rolu`, `kayit_tarihi`, `profil_resmi`, `aktif`) VALUES
(19, 'Berkcan ', 'Çiftçi', 'berkcanciftci@gmail.com', 'berkcanciftci', 'Vi3n9K_19', '05986352412', 2, '2019-03-04 12:36:22',"avatar-default.png", 1),
(20, 'Berk', 'Altuğ', 'berkaltug@gmail.com', 'berkaltug', 'Vi3n9K_19', '05389647821', 2, '2019-03-04 12:38:02', "avatar-default.png", 1),
(21, 'Faruk', 'Değerli', 'farukdegerli@gmail.com', 'farukdegerli', 'Vi3n9K_19', '05367425897', 2, '2019-03-04 12:40:01', "avatar-default.png", 1),
(22, 'Fatih', 'Yıldız', 'fatihyildiz@gmail.com', 'fatihyildiz', 'Vi3n9K_19', '05347896521', 2, '2019-03-04 12:40:01', NULL, 1),
(23, 'Cemal', 'Arslan', 'cemalarslan@gmail.com', 'cemalarslan', 'Vi3n9K_19', '05347896453', 2, '2019-03-04 12:49:06', NULL, 1),
(24, 'Yusufcan', 'Arslan', 'yusufcanarslan@gmail.com', 'yusufcanarslan', 'Vi3n9K_19', '05896352175', 2, '2019-03-04 12:49:06', NULL, 1),
(25, 'Mete', 'Aydın', 'meteaydin@gmail.com', 'meteaydin', 'Vi3n9K_19', '05897548635', 2, '2019-03-04 12:49:06', NULL, 1),
(26, 'Talha', 'Kanyılmaz', 'talhakanyilmaz@gmail.com', 'talhakanyilmaz', 'Vi3n9K_19', '05375634512', 2, '2019-03-04 12:49:06', NULL, 1),
(27, 'Aysel', 'Bilici', 'ayselbilici@gmail.com', 'ayselbilici', 'Vi3n9K_19', '05634578652', 2, '2019-03-04 12:49:06', NULL, 1),
(28, 'Dilek', 'Özgül', 'dilekozgul@gmail.com', 'dilekozgul', 'Vi3n9K_19', '05347852463', 2, '2019-03-04 12:49:06', NULL, 1),
(29, 'Gökhan', 'Sarı', 'gokhansarı@gmail.com', 'gokhansarı', 'Vi3n9K_19', '05347852541', 2, '2019-03-04 12:49:06', NULL, 1),
(30, 'Enes Chatzi ', 'Osman', 'enesosman@gmail.com', 'eneschatziosman', 'Vi3n9K_19', '05362134578', 2, '2019-03-04 12:49:06', NULL, 1),
(33, 'Sönmez', 'Cankurt', 'sonmezcankurt@gmail.com', 'sonmezcankurt', 'Vi3n9K_19', '05634567825', 2, '2019-03-04 12:57:02', NULL, 1),
(34, 'Samet', 'Uzun', 'sametuzun@gmail.com', 'sametuzun', 'Vi3n9K_19', '05456352345', 2, '2019-03-04 12:57:02', NULL, 1),
(35, 'Kübra', 'Mumcu', 'kubramumcu@gmail.com', 'kubramumcu', 'Vi3n9K_19', '05367425897', 2, '2019-03-04 13:01:59', NULL, 1),
(36, 'Ayşegül', 'Hatipoğlu', 'aysegulhatipoglu@gmail.com', 'aysegulhatipoglu', 'Vi3n9K_19', '05896352175', 2, '2019-03-04 13:01:59', NULL, 1),
(38, 'Esra', 'Karakaş', 'esrakarakas@gmail.com', 'esrakarakas', 'Vi3n9K_19', '05647895632', 2, '2019-03-04 13:01:59', NULL, 1),
(39, 'Merve', 'Zavrak', 'mervezavarak@gmail.com', 'mervezavrak', 'Vi3n9K_19', '05783214565', 2, '2019-03-04 13:01:59', NULL, 1),
(41, 'Kübra', 'Mumcu', 'kubramumcu@gmail.com', 'kubramumcu', 'Vi3n9K_19', '05367425897', 2, '2019-03-04 13:02:30', NULL, 1),
(42, 'Ayşegül', 'Hatipoğlu', 'aysegulhatipoglu@gmail.com', 'aysegulhatipoglu', 'Vi3n9K_19', '05896352175', 2, '2019-03-04 13:02:30', NULL, 1),
(43, 'Ömer Faruk', 'Demirel', 'omerfarukdemirel@gmail.com', 'omerfarukdemirel', 'Vi3n9K_19', '05345632145', 2, '2019-03-04 13:02:30', NULL, 1),
(44, 'Esra', 'Karakaş', 'esrakarakas@gmail.com', 'esrakarakas', 'Vi3n9K_19', '05647895632', 2, '2019-03-04 13:02:30', NULL, 1),
(45, 'Merve', 'Zavrak', 'mervezavarak@gmail.com', 'mervezavrak', 'Vi3n9K_19', '05783214565', 2, '2019-03-04 13:02:30', NULL, 1),
(46, 'Nur', 'İlhanlı', 'nurilhanli@gmail.com', 'nurilhanli', 'Vi3n9K_19', '05872563521', 2, '2019-03-04 13:02:30', NULL, 1),
(47, 'Oğuzhan', 'Koç', 'oguzhankoc@gmail.com', 'oguzhankoc', 'Vi3n9K_19', '053897563425', 2, '2019-03-04 13:05:53', NULL, 1),
(48, 'Mehmet', 'Ardıç', 'mehmetardıc@gmail.com', 'mehmetardıc', 'Vi3n9K_19', '05781452637', 2, '2019-03-04 13:05:53', NULL, 1),
(49, 'Duygu', 'Bozyel', 'duygubozyel@gmail.com', 'duygubozyel', 'Vi3n9K_19', '05789652415', 2, '2019-03-04 13:15:41', NULL, 1),
(50, 'Ayşegül', 'İpek', 'aysegulipek@gmail.com', 'aysegulipek', 'Vi3n9K_19', '05347589635', 2, '2019-03-04 13:15:41', NULL, 1),
(51, 'Burcu', 'Turan', 'burcuturan@gmail.com', 'burcuturan', 'Vi3n9K_19', '05345638525', 2, '2019-03-04 13:15:41', NULL, 1),
(52, 'Derya', 'Özdin', 'deryaozdin@gmail.com', 'deryaozdin', 'Vi3n9K_19', '05347896525', 2, '2019-03-04 13:15:41', NULL, 1),
(53, 'Reyhan', 'Aydın', 'reyhanaydin@gmail.com', 'reyhanaydin', 'Vi3n9K_19', '05345217845', 2, '2019-03-04 13:15:41', NULL, 1),
(54, 'Rümeysa', 'Ayvaz', 'rumeysaayvaz@gmail.com', 'rumeysaayvaz', 'Vi3n9K_19', '05314562545', 2, '2019-03-04 13:15:41', NULL, 1),
(55, 'Ruken', 'Erden', 'rukenerden@gmail.com', 'rukenerden', 'Vi3n9K_19', '05314567895', 2, '2019-03-04 13:15:41', NULL, 1),
(56, 'Gökçe', 'Hergenç', 'gokceergenc@gmail.com', 'gokceergenc', 'Vi3n9K_19', '05312547895', 2, '2019-03-04 13:15:41', NULL, 1),
(57, 'Steve', 'Jobs', 'stevejobs@gmail.com', 'stevejobs', 'Vi3n9K_19', '05645632145', 2, '2019-03-04 13:15:41', NULL, 1),
(58, 'Bill', 'Gates', 'billgates@gmail.com', 'billgates', 'Vi3n9K_19', '05312563521', 2, '2019-03-04 13:15:41', NULL, 1),
(59, 'Kıvanç', 'Tatlıtuğ', 'kivanctatlutug@gmail.com', 'kıvanctatlitug', 'Vi3n9K_19', '05348752145', 2, '2019-03-04 13:17:58', NULL, 1),
(60, 'Beren', 'Saat', 'berensaat@gmail.com', 'berensaat', 'Vi3n9K_19', '05634521458', 2, '2019-03-04 13:17:58', NULL, 1),
(61, 'Enes', 'Arıkan', 'enesarıkan@gmail.com', 'enisarikan', 'Vi3n9K_19', '05347854216', 2, '2019-03-04 13:20:50', NULL, 1),
(62, 'Ezgi ', 'Mola', 'ezgimola@gmail.com', 'ezgimola', 'Vi3n9K_19', '05345623145', 2, '2019-03-04 13:20:50', NULL, 1),
(63, 'Tolga', 'Dağıdır', 'tolgadagıdır@gmail.com', 'tolgadagıdır', 'Vi3n9K_19', '05342156545', 2, '2019-03-04 13:31:49', NULL, 1),
(64, 'Barış', 'Bayram', 'barısbayram@gmail.com', 'barısbayram', 'Vi3n9K_19', '0563458975', 2, '2019-03-04 13:31:49', NULL, 1),
(65, 'Elif', 'Akbaş', 'elifakbas@gmail.com', 'elifakbas', 'Vi3n9K_19', '05634587965', 2, '2019-03-04 13:31:49', NULL, 1),
(66, 'Çağatay', 'Ulusoy', 'cagatayulusoy@gmail.com', 'cagatayulusoy', 'Vi3n9K_19', '05124587965', 2, '2019-03-04 13:31:49', NULL, 1),
(67, 'Serenay', 'Sarıkaya', 'seranaysarikaya@gmail.com', 'seranaksarikaya', 'Vi3n9K_19', '05987456321', 2, '2019-03-04 13:31:49', NULL, 1),
(68, 'Kenan', 'İmirzalıoğlu', 'kenanimirzalioğlu@gmail.com', 'kenanimirzalioğlu', 'Vi3n9K_19', '05345621478', 2, '2019-03-04 13:31:49', NULL, 1),
(69, 'Şadi Evren', 'Şeker', 'sadievrenseker@gmail.com', 'sadievrenseker', 'Vi3n9K_19', '05784653214', 2, '2019-03-04 13:31:49', NULL, 1),
(70, 'Ünal', 'Yıldırım', 'unalyıldırım@gmail.com', 'unalyıldırım', 'Vi3n9K_19', '05648759635', 2, '2019-03-04 13:31:49', NULL, 1),
(71, 'Şerife', 'Yıldırım', 'serifeyildirim@gmail.com', 'serifeyildirim', 'Vi3n9K_19', '05324568975', 2, '2019-03-04 13:31:49', NULL, 1),
(72, 'Zeynep', 'Yıldırım', 'zeynepyildirim@gmail.com', 'zeynepyildirim', 'Vi3n9K_19', '058963478521', 2, '2019-03-04 13:31:49', NULL, 1),
(73, 'Behiç', 'Açar', 'behicacar@gmail.com', 'behicacar', 'Vi3n9K_19', '05964785421', 2, '2019-03-04 13:53:21', NULL, 1),
(74, 'Muratcan', 'Kış', 'muratcankıs@gmail.com', 'muratcankıs', 'Vi3n9K_19', '05647896545', 2, '2019-03-04 13:53:21', NULL, 1),
(75, 'Berkay', 'Demirel', 'berkaydemirel@gmail.com', 'berkaydemirel', 'Vi3n9K_19', '05647893214', 2, '2019-03-04 14:02:29', NULL, 1),
(76, 'Burcin', 'Akalın', 'burcinakalin@gmail.com', 'burcinakalin', 'Vi3n9K_19', '05457896532', 2, '2019-03-04 14:02:29', NULL, 1),
(77, 'Eray', 'Adıyoklar', 'erayadıyoklar@gmail.com', 'erayadıyoklar', 'Vi3n9K_19', '05479865214', 2, '2019-03-04 14:02:29', NULL, 1),
(78, 'Ozan', 'Erden', 'ozanerden@gmail.com', 'ozanerden', 'Vi3n9K_19', '05973214568', 2, '2019-03-04 14:02:29', NULL, 1),
(79, 'İsmet', 'Batansu', 'ismetbatansu@gmail.com', 'ismetbatansu', 'Vi3n9K_19', '05634568795', 2, '2019-03-04 14:02:29', NULL, 1),
(80, 'Sara', 'Avcı', 'saraavci@gmail.com', 'saraavci', 'Vi3n9K_19', '05789684563', 2, '2019-03-04 14:02:29', NULL, 1),
(81, 'Yasin', 'Turpçu', 'yasinturpcu@gmail.com', 'yasinturpcu', 'Vi3n9K_19', '05463589475', 2, '2019-03-04 14:02:29', NULL, 1),
(82, 'Sonay', 'Koç', 'sonaykoc@gmail.com', 'sonaykoc', 'Vi3n9K_19', '05789645632', 2, '2019-03-04 14:02:29', NULL, 1),
(83, 'Ezgi', 'Karakuş', 'ezgikarakus@gmail.com', 'ezgikarakus', 'Vi3n9K_19', '05317896542', 2, '2019-03-04 14:02:29', NULL, 1),
(84, 'Neslihan', 'Aydın', 'neslihanaydin@gmail.com', 'neslihanaydin', 'Vi3n9K_19', '05457898565', 2, '2019-03-04 14:02:29', NULL, 1),
(85, 'Hakan', 'Yaşar', 'hakanyasar@gmail.com', 'hakanyasar', 'Vi3n9K_19', '05347898525', 2, '2019-03-04 14:04:43', NULL, 1),
(86, 'Özkan', 'Koç', 'ozkankoc@gmail.com', 'ozkankoc', 'Vi3n9K_19', '05789654562', 2, '2019-03-04 14:04:43', NULL, 1),
(87, 'Sercan', 'Karaca', 'sercankaraca@gmail.com', 'sercankaraca', 'Vi3n9K_19', '05647853214', 2, '2019-03-04 14:14:52', NULL, 1),
(88, 'Nurullah', 'İriş', 'nurullahirirs@gmail.com', 'nurullahiris', 'Vi3n9K_19', '05786543214', 2, '2019-03-04 14:14:52', NULL, 1),
(89, 'Mervenur', 'Yaral', 'mervenuryaral@gmail.com', 'mervenuryaral', 'Vi3n9K_19', '05234563212', 2, '2019-03-04 14:14:52', NULL, 1),
(90, 'Kadriye', 'Taylan', 'kadriyetaylan@gmail.com', 'kadriyetaylan', 'Vi3n9K_19', '05463214569', 2, '2019-03-04 14:14:52', NULL, 1),
(91, 'Fahri', 'Güreşci', 'fahriguresci@gmail.com', 'fahriguresci', 'Vi3n9K_19', '05236541295', 2, '2019-03-04 14:14:52', NULL, 1),
(92, 'Büşra', 'Öztürk', 'busraozturk@gmail.com', 'busraozturk', 'Vi3n9K_19', '05347896524', 2, '2019-03-04 14:14:52', NULL, 1),
(93, 'Fawzi', 'Latta', 'fawzilatta@gmail.com', 'fawzilatte', 'Vi3n9K_19', '05345624563', 2, '2019-03-04 14:14:52', NULL, 1),
(94, 'Yamen', 'Alzoubi', 'yamenalzoubi@gmail.com', 'yamenalzoubi', 'Vi3n9K_19', '05645873258', 2, '2019-03-04 14:14:52', NULL, 1),
(95, 'Devrim', 'Özkocaman', 'devrimozkocaman@gmail.com', 'devrimozkocaman', 'Vi3n9K_19', '05789654875', 2, '2019-03-04 14:14:52', NULL, 1),
(96, 'Emin', 'Cebecioğlu', 'emincebecioğlu@gmail.com', 'emincebecioğlu', 'Vi3n9K_19', '05634569828', 2, '2019-03-04 14:14:52', NULL, 1),
(97, 'Özge', 'Toprak', 'ozgetoprak@gmail.com', 'ozgetoprak', 'Vi3n9K_19', '05314569875', 2, '2019-03-04 14:17:07', NULL, 1),
(98, 'Uğur', 'Akdağ', 'ugurakdag@gmail.com', 'ugurakdag', 'Vi3n9K_19', '05547896525', 2, '2019-03-04 14:17:07', NULL, 1),
(99, 'Adem', 'Nalbantoğlu', 'ademnalbantoglu@gmail.com', 'ademnalbantoglu', 'Vi3n9K_19', '05987653241', 2, '2019-03-04 14:19:38', NULL, 1),
(100, 'Dilek', 'Şen', 'dileksen@gmail.com', 'dileksen', 'Vi3n9K_19', '05468953241', 2, '2019-03-04 14:19:38', NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yourum_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `yorum_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `yorum_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorumlayan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD PRIMARY KEY (`aktivite_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`),
  ADD UNIQUE KEY `post_id` (`not_id`);

--
-- Tablo için indeksler `bildirimler`
--
ALTER TABLE `bildirimler`
  ADD PRIMARY KEY (`bil_id`),
  ADD UNIQUE KEY `bil_sahibi` (`bil_sahibi`);

--
-- Tablo için indeksler `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`ders_id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`measaj_id`),
  ADD UNIQUE KEY `uye_id` (`gonderen_id`),
  ADD KEY `fk_msg_alici_id` (`alici_id`);

--
-- Tablo için indeksler `notlar`
--
ALTER TABLE `notlar`
  ADD PRIMARY KEY (`not_id`),
  ADD UNIQUE KEY `ders_id` (`ders_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`);

--
-- Tablo için indeksler `ortak_notlar`
--
ALTER TABLE `ortak_notlar`
  ADD UNIQUE KEY `uye_id` (`uye_id`),
  ADD KEY `fk_ortak_not_id` (`not_id`);

--
-- Tablo için indeksler `rollar`
--
ALTER TABLE `rollar`
  ADD PRIMARY KEY (`rol_id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yourum_id`),
  ADD UNIQUE KEY `not_id` (`not_id`),
  ADD UNIQUE KEY `uye_id` (`yorumlayan`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `aktiviteler`
--
ALTER TABLE `aktiviteler`
  MODIFY `aktivite_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `bildirimler`
--
ALTER TABLE `bildirimler`
  MODIFY `bil_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `dersler`
--
ALTER TABLE `dersler`
  MODIFY `ders_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `measaj_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `notlar`
--
ALTER TABLE `notlar`
  MODIFY `not_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uye_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
