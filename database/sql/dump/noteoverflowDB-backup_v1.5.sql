-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Dim 12 Mai 2019 à 09:57
-- Version du serveur :  10.3.14-MariaDB-1
-- Version de PHP :  7.2.9-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `noteoverflow`
--

-- --------------------------------------------------------

--
-- Structure de la table `aktiviteler`
--

CREATE TABLE `aktiviteler` (
  `aktivite_id` int(10) NOT NULL,
  `uye_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `icerik` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `oldugu_tarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `arkadaslar`
--

CREATE TABLE `arkadaslar` (
  `uye_id` int(11) NOT NULL,
  `arkadas_id` int(11) NOT NULL,
  `arkadas_olma_tarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `arkadaslar`
--

INSERT INTO `arkadaslar` (`uye_id`, `arkadas_id`, `arkadas_olma_tarihi`) VALUES
(1, 3, '2019-03-01 20:06:53'),
(1, 4, '2019-03-01 20:06:53'),
(1, 10, '2019-03-01 20:06:53'),
(1, 5, '2019-03-01 20:06:53'),
(1, 8, '2019-03-01 20:06:53'),
(1, 9, '2019-03-01 20:06:53'),
(1, 13, '2019-03-01 20:06:53'),
(1, 17, '2019-03-01 20:06:53'),
(1, 15, '2019-03-01 20:06:53'),
(1, 2, '2019-03-01 20:21:30'),
(2, 3, '2019-03-01 20:21:30'),
(3, 4, '2019-03-01 20:21:30'),
(4, 5, '2019-03-01 20:21:30'),
(5, 6, '2019-03-01 20:21:30'),
(6, 7, '2019-03-01 20:21:30'),
(7, 8, '2019-03-01 20:21:30'),
(8, 9, '2019-03-01 20:21:30'),
(9, 10, '2019-03-01 20:21:30'),
(10, 11, '2019-03-01 20:21:30'),
(2, 6, '2019-03-04 11:23:57'),
(2, 65, '2019-03-04 11:23:57'),
(6, 78, '2019-03-04 11:28:25'),
(2, 56, '2019-03-04 11:28:25'),
(2, 89, '2019-03-04 11:28:25'),
(2, 48, '2019-03-04 11:28:25'),
(3, 78, '2019-03-04 11:28:25'),
(3, 89, '2019-03-04 11:28:25'),
(3, 74, '2019-03-04 11:28:25'),
(3, 98, '2019-03-04 11:28:25'),
(3, 45, '2019-03-04 11:28:25'),
(4, 21, '2019-03-04 11:28:25'),
(4, 56, '2019-03-04 11:28:25'),
(4, 12, '2019-03-04 11:28:25'),
(4, 52, '2019-03-04 11:28:25'),
(4, 32, '2019-03-04 11:28:25'),
(5, 31, '2019-03-04 11:28:25'),
(5, 21, '2019-03-04 11:28:25'),
(5, 11, '2019-03-04 11:28:25'),
(5, 61, '2019-03-04 11:28:25'),
(5, 16, '2019-03-04 11:28:25'),
(6, 8, '2019-03-04 11:33:58'),
(6, 18, '2019-03-04 11:33:58'),
(6, 28, '2019-03-04 11:33:58'),
(6, 38, '2019-03-04 11:33:58'),
(7, 45, '2019-03-04 11:33:58'),
(7, 78, '2019-03-04 11:33:58'),
(7, 65, '2019-03-04 11:33:58'),
(7, 98, '2019-03-04 11:33:58'),
(7, 21, '2019-03-04 11:33:58'),
(8, 10, '2019-03-04 11:33:58'),
(8, 11, '2019-03-04 11:33:58'),
(8, 9, '2019-03-04 11:33:58'),
(8, 16, '2019-03-04 11:33:58'),
(8, 64, '2019-03-04 11:33:58'),
(9, 21, '2019-03-04 11:33:58'),
(9, 22, '2019-03-04 11:33:58'),
(9, 33, '2019-03-04 11:33:58'),
(9, 34, '2019-03-04 11:33:58'),
(10, 11, '2019-03-04 11:33:58'),
(10, 35, '2019-03-04 11:33:58'),
(10, 78, '2019-03-04 11:33:58'),
(10, 79, '2019-03-04 11:33:58'),
(10, 80, '2019-03-04 11:33:58'),
(11, 15, '2019-03-04 11:33:58'),
(11, 32, '2019-03-04 11:33:58'),
(11, 45, '2019-03-04 11:33:58'),
(11, 63, '2019-03-04 11:33:58'),
(12, 14, '2019-03-04 11:33:58'),
(12, 47, '2019-03-04 11:33:58'),
(12, 48, '2019-03-04 11:33:58'),
(12, 50, '2019-03-04 11:33:58'),
(12, 89, '2019-03-04 11:33:58'),
(13, 65, '2019-03-04 11:33:58'),
(13, 66, '2019-03-04 11:33:58'),
(13, 68, '2019-03-04 11:33:58'),
(13, 78, '2019-03-04 11:33:58'),
(13, 79, '2019-03-04 11:33:58'),
(14, 6, '2019-03-04 11:33:58'),
(14, 8, '2019-03-04 11:33:58'),
(14, 87, '2019-03-04 11:39:01'),
(14, 52, '2019-03-04 11:39:01'),
(15, 25, '2019-03-04 11:39:01'),
(15, 89, '2019-03-04 11:39:01'),
(15, 47, '2019-03-04 11:39:01'),
(15, 48, '2019-03-04 11:39:01'),
(15, 65, '2019-03-04 11:39:01'),
(16, 5, '2019-03-04 11:39:01'),
(16, 6, '2019-03-04 11:39:01'),
(16, 26, '2019-03-04 11:39:01'),
(16, 36, '2019-03-04 11:39:01'),
(16, 36, '2019-03-04 11:39:01'),
(16, 98, '2019-03-04 11:39:01'),
(17, 97, '2019-03-04 11:39:01'),
(17, 98, '2019-03-04 11:39:01'),
(17, 65, '2019-03-04 11:39:01'),
(17, 57, '2019-03-04 11:39:01'),
(17, 47, '2019-03-04 11:39:01'),
(17, 27, '2019-03-04 11:39:01'),
(18, 25, '2019-03-04 11:39:01'),
(18, 47, '2019-03-04 11:39:01'),
(18, 25, '2019-03-04 11:39:01'),
(19, 29, '2019-03-04 11:39:01'),
(19, 9, '2019-03-04 11:39:01'),
(19, 39, '2019-03-04 11:39:01'),
(19, 49, '2019-03-04 11:39:01'),
(19, 59, '2019-03-04 11:39:01'),
(19, 69, '2019-03-04 11:39:01'),
(20, 10, '2019-03-04 11:39:01'),
(20, 30, '2019-03-04 11:39:01'),
(20, 40, '2019-03-04 11:39:01'),
(20, 50, '2019-03-04 11:39:01'),
(20, 80, '2019-03-04 11:39:01'),
(21, 41, '2019-03-04 11:39:01'),
(21, 31, '2019-03-04 11:39:01'),
(21, 51, '2019-03-04 11:39:01'),
(21, 61, '2019-03-04 11:39:01'),
(21, 91, '2019-03-04 11:39:01'),
(21, 81, '2019-03-04 11:39:01'),
(22, 32, '2019-03-04 11:39:01'),
(22, 3, '2019-03-04 11:45:13'),
(22, 32, '2019-03-04 11:45:13'),
(22, 65, '2019-03-04 11:45:13'),
(22, 78, '2019-03-04 11:45:13'),
(22, 98, '2019-03-04 11:45:13'),
(22, 14, '2019-03-04 11:45:13'),
(23, 33, '2019-03-04 11:45:13'),
(23, 43, '2019-03-04 11:45:13'),
(23, 53, '2019-03-04 11:45:13'),
(23, 63, '2019-03-04 11:45:13'),
(23, 83, '2019-03-04 11:45:13'),
(24, 54, '2019-03-04 11:45:13'),
(24, 64, '2019-03-04 11:45:13'),
(24, 84, '2019-03-04 11:45:13'),
(24, 74, '2019-03-04 11:45:13'),
(24, 98, '2019-03-04 11:45:13'),
(25, 100, '2019-03-04 11:45:13'),
(25, 75, '2019-03-04 11:45:13'),
(25, 16, '2019-03-04 11:45:13'),
(25, 78, '2019-03-04 11:45:13'),
(25, 65, '2019-03-04 11:45:13'),
(26, 16, '2019-03-04 11:45:13'),
(26, 36, '2019-03-04 11:45:13'),
(26, 46, '2019-03-04 11:45:13'),
(26, 56, '2019-03-04 11:45:13'),
(26, 87, '2019-03-04 11:45:13'),
(27, 75, '2019-03-04 11:45:13'),
(27, 84, '2019-03-04 11:45:13'),
(27, 65, '2019-03-04 11:45:13'),
(27, 64, '2019-03-04 11:45:13'),
(27, 63, '2019-03-04 11:45:13'),
(28, 78, '2019-03-04 11:45:13'),
(28, 45, '2019-03-04 11:45:13'),
(28, 65, '2019-03-04 11:45:13'),
(28, 74, '2019-03-04 11:45:13'),
(28, 74, '2019-03-04 11:45:13'),
(28, 65, '2019-03-04 11:45:13'),
(28, 74, '2019-03-04 11:45:13'),
(28, 95, '2019-03-04 11:45:13'),
(29, 56, '2019-03-04 11:45:13'),
(29, 21, '2019-03-04 11:50:47'),
(29, 45, '2019-03-04 11:50:47'),
(29, 78, '2019-03-04 12:02:32'),
(29, 56, '2019-03-04 12:02:32'),
(30, 52, '2019-03-04 12:02:32'),
(30, 87, '2019-03-04 12:02:32'),
(30, 89, '2019-03-04 12:02:32'),
(30, 14, '2019-03-04 12:02:32'),
(30, 78, '2019-03-04 12:02:32'),
(31, 45, '2019-03-04 12:02:32'),
(31, 87, '2019-03-04 12:02:32'),
(31, 85, '2019-03-04 12:02:32'),
(31, 2, '2019-03-04 12:02:32'),
(31, 6, '2019-03-04 12:02:32'),
(32, 9, '2019-03-04 12:02:32'),
(32, 39, '2019-03-04 12:02:32'),
(32, 45, '2019-03-04 12:02:32'),
(33, 97, '2019-03-04 12:02:32'),
(33, 58, '2019-03-04 12:02:32'),
(33, 47, '2019-03-04 12:02:32'),
(33, 85, '2019-03-04 12:02:32'),
(33, 56, '2019-03-04 12:02:32'),
(34, 89, '2019-03-04 12:02:32'),
(34, 28, '2019-03-04 12:02:32'),
(34, 48, '2019-03-04 12:02:32'),
(34, 78, '2019-03-04 12:02:32'),
(34, 69, '2019-03-04 12:02:32'),
(35, 68, '2019-03-04 12:02:32'),
(35, 97, '2019-03-04 12:02:32'),
(35, 68, '2019-03-04 12:02:32'),
(35, 28, '2019-03-04 12:02:32'),
(35, 67, '2019-03-04 12:02:32'),
(35, 24, '2019-03-04 12:02:32'),
(36, 28, '2019-03-04 12:02:32'),
(36, 10, '2019-03-04 12:02:32'),
(36, 77, '2019-03-04 12:02:32'),
(36, 58, '2019-03-04 12:02:32'),
(37, 55, '2019-03-04 12:02:32'),
(37, 98, '2019-03-04 12:02:32'),
(37, 58, '2019-03-04 12:02:32'),
(37, 14, '2019-03-04 12:02:32'),
(37, 63, '2019-03-04 12:02:32'),
(38, 41, '2019-03-04 12:15:14'),
(38, 42, '2019-03-04 12:15:14'),
(38, 43, '2019-03-04 12:15:14'),
(38, 44, '2019-03-04 12:15:14'),
(38, 45, '2019-03-04 12:15:14'),
(39, 51, '2019-03-04 12:15:14'),
(39, 52, '2019-03-04 12:15:14'),
(39, 53, '2019-03-04 12:15:14'),
(39, 54, '2019-03-04 12:15:14'),
(39, 89, '2019-03-04 12:15:14'),
(40, 41, '2019-03-04 12:15:14'),
(40, 85, '2019-03-04 12:15:14'),
(40, 86, '2019-03-04 12:15:14'),
(40, 65, '2019-03-04 12:15:14'),
(40, 12, '2019-03-04 12:15:14'),
(41, 4, '2019-03-04 12:15:14'),
(41, 5, '2019-03-04 12:15:14'),
(41, 6, '2019-03-04 12:15:14'),
(41, 7, '2019-03-04 12:15:14'),
(42, 6, '2019-03-04 12:15:14'),
(42, 81, '2019-03-04 12:15:14'),
(42, 86, '2019-03-04 12:15:14'),
(42, 18, '2019-03-04 12:15:14'),
(43, 54, '2019-03-04 12:15:14'),
(43, 74, '2019-03-04 12:15:14'),
(43, 52, '2019-03-04 12:15:14'),
(44, 52, '2019-03-04 12:15:14'),
(44, 36, '2019-03-04 12:15:14'),
(44, 20, '2019-03-04 12:15:14'),
(45, 39, '2019-03-04 12:15:14'),
(45, 78, '2019-03-04 12:15:14'),
(45, 12, '2019-03-04 12:15:14'),
(46, 87, '2019-03-04 12:15:14'),
(46, 25, '2019-03-04 12:15:14'),
(46, 32, '2019-03-04 12:15:14'),
(47, 89, '2019-03-04 12:15:14'),
(47, 19, '2019-03-04 12:15:14'),
(47, 28, '2019-03-04 12:15:14'),
(47, 98, '2019-03-04 12:15:14'),
(48, 76, '2019-03-04 12:15:14'),
(48, 49, '2019-03-04 12:20:12'),
(48, 50, '2019-03-04 12:20:12'),
(48, 62, '2019-03-04 12:20:12'),
(49, 82, '2019-03-04 12:20:12'),
(49, 68, '2019-03-04 12:20:12'),
(49, 78, '2019-03-04 12:20:12'),
(50, 65, '2019-03-04 12:20:12'),
(50, 74, '2019-03-04 12:20:12'),
(50, 74, '2019-03-04 12:20:12'),
(50, 29, '2019-03-04 12:20:12'),
(51, 96, '2019-03-04 12:20:12'),
(51, 83, '2019-03-04 12:20:12'),
(51, 28, '2019-03-04 12:20:12'),
(51, 63, '2019-03-04 12:20:12'),
(52, 89, '2019-03-04 12:20:12'),
(52, 98, '2019-03-04 12:20:12'),
(52, 19, '2019-03-04 12:20:12'),
(53, 17, '2019-03-04 12:20:12'),
(53, 94, '2019-03-04 12:20:12'),
(53, 28, '2019-03-04 12:20:12'),
(54, 96, '2019-03-04 12:20:12'),
(54, 32, '2019-03-04 12:20:12'),
(54, 13, '2019-03-04 12:20:12'),
(55, 87, '2019-03-04 12:20:12'),
(55, 64, '2019-03-04 12:20:12'),
(55, 73, '2019-03-04 12:20:12'),
(56, 47, '2019-03-04 12:20:12'),
(56, 82, '2019-03-04 12:20:12'),
(56, 14, '2019-03-04 12:20:12'),
(57, 96, '2019-03-04 12:20:12'),
(57, 48, '2019-03-04 12:20:12'),
(58, 43, '2019-03-04 12:20:12'),
(58, 80, '2019-03-04 12:20:12'),
(58, 90, '2019-03-04 12:20:12'),
(59, 87, '2019-03-04 12:20:12'),
(59, 62, '2019-03-04 12:20:12'),
(59, 73, '2019-03-04 12:20:12'),
(60, 61, '2019-03-04 12:20:12'),
(60, 62, '2019-03-04 12:20:12'),
(60, 63, '2019-03-04 12:20:12'),
(61, 2, '2019-03-04 12:26:22'),
(61, 38, '2019-03-04 12:26:22'),
(61, 6, '2019-03-04 12:26:22'),
(61, 8, '2019-03-04 12:26:22'),
(62, 76, '2019-03-04 12:26:22'),
(62, 64, '2019-03-04 12:26:22'),
(63, 88, '2019-03-04 12:26:22'),
(63, 44, '2019-03-04 12:26:22'),
(63, 5, '2019-03-04 12:26:22'),
(64, 82, '2019-03-04 12:26:22'),
(64, 91, '2019-03-04 12:26:22'),
(65, 42, '2019-03-04 12:26:22'),
(65, 48, '2019-03-04 12:26:22'),
(65, 23, '2019-03-04 12:26:22'),
(66, 28, '2019-03-04 12:26:22'),
(66, 29, '2019-03-04 12:26:22'),
(67, 31, '2019-03-04 12:26:22'),
(67, 37, '2019-03-04 12:26:22'),
(68, 10, '2019-03-04 12:26:22'),
(68, 11, '2019-03-04 12:26:22'),
(68, 12, '2019-03-04 12:26:22'),
(69, 25, '2019-03-04 12:26:22'),
(69, 26, '2019-03-04 12:26:22'),
(69, 27, '2019-03-04 12:26:22'),
(70, 76, '2019-03-04 12:26:22'),
(70, 1, '2019-03-04 12:26:22'),
(70, 4, '2019-03-04 12:26:22'),
(70, 6, '2019-03-04 12:26:22'),
(71, 39, '2019-03-04 12:26:22'),
(71, 5, '2019-03-04 12:26:22'),
(72, 33, '2019-03-04 12:26:22'),
(72, 94, '2019-03-04 12:26:22'),
(73, 64, '2019-03-04 12:26:22'),
(73, 16, '2019-03-04 12:26:22'),
(74, 38, '2019-03-04 12:26:22'),
(74, 15, '2019-03-04 12:26:22'),
(74, 30, '2019-03-04 12:26:22'),
(75, 21, '2019-03-04 12:26:22'),
(75, 84, '2019-03-04 12:26:22'),
(76, 90, '2019-03-04 12:26:22'),
(76, 40, '2019-03-04 12:31:13'),
(77, 41, '2019-03-04 12:31:13'),
(78, 94, '2019-03-04 12:31:13'),
(78, 46, '2019-03-04 12:31:13'),
(79, 45, '2019-03-04 12:31:13'),
(79, 88, '2019-03-04 12:31:13'),
(80, 35, '2019-03-04 12:31:13'),
(80, 48, '2019-03-04 12:31:13'),
(80, 74, '2019-03-04 12:31:13'),
(81, 16, '2019-03-04 12:31:13'),
(81, 97, '2019-03-04 12:31:13'),
(81, 100, '2019-03-04 12:31:13'),
(82, 64, '2019-03-04 12:31:13'),
(82, 37, '2019-03-04 12:31:13'),
(82, 64, '2019-03-04 12:31:13'),
(83, 78, '2019-03-04 12:31:13'),
(83, 97, '2019-03-04 12:31:13'),
(84, 16, '2019-03-04 12:31:13'),
(84, 29, '2019-03-04 12:31:13'),
(85, 19, '2019-03-04 12:31:13'),
(85, 43, '2019-03-04 12:31:13'),
(85, 77, '2019-03-04 12:31:13'),
(86, 47, '2019-03-04 12:31:13'),
(86, 70, '2019-03-04 12:31:13'),
(87, 70, '2019-03-04 12:31:13'),
(87, 90, '2019-03-04 12:31:13'),
(88, 40, '2019-03-04 12:31:13'),
(88, 90, '2019-03-04 12:31:13'),
(88, 60, '2019-03-04 12:31:13'),
(89, 64, '2019-03-04 12:31:13'),
(89, 41, '2019-03-04 12:31:13'),
(89, 74, '2019-03-04 12:31:13'),
(90, 3, '2019-03-04 12:31:13'),
(90, 5, '2019-03-04 12:31:13'),
(90, 7, '2019-03-04 12:31:13'),
(90, 6, '2019-03-04 12:31:13'),
(91, 8, '2019-03-04 12:31:13'),
(91, 4, '2019-03-04 12:31:13'),
(92, 7, '2019-03-04 12:31:13'),
(92, 19, '2019-03-04 12:31:13'),
(92, 3, '2019-03-04 12:37:31'),
(93, 8, '2019-03-04 12:37:31'),
(93, 65, '2019-03-04 12:37:31'),
(94, 87, '2019-03-04 12:37:31'),
(94, 7, '2019-03-04 12:37:31'),
(95, 35, '2019-03-04 12:37:31'),
(95, 74, '2019-03-04 12:37:31'),
(96, 28, '2019-03-04 12:37:31'),
(97, 24, '2019-03-04 12:37:31'),
(97, 34, '2019-03-04 12:37:31'),
(98, 58, '2019-03-04 12:37:31'),
(98, 47, '2019-03-04 12:37:31'),
(99, 52, '2019-03-04 12:37:31'),
(99, 74, '2019-03-04 12:37:31'),
(100, 2, '2019-03-04 12:37:31'),
(100, 6, '2019-03-04 12:37:51'),
(100, 7, '2019-03-04 12:37:51'),
(1, 6, '2019-03-04 11:23:57'),
(1, 65, '2019-03-04 11:23:57'),
(1, 78, '2019-03-04 11:28:25'),
(1, 56, '2019-03-04 11:28:25'),
(1, 89, '2019-03-04 11:28:25'),
(1, 48, '2019-03-04 11:28:25'),
(1, 78, '2019-03-04 11:28:25'),
(1, 89, '2019-03-04 11:28:25'),
(1, 74, '2019-03-04 11:28:25'),
(1, 98, '2019-03-04 11:28:25'),
(1, 45, '2019-03-04 11:28:25'),
(1, 21, '2019-03-04 11:28:25'),
(1, 56, '2019-03-04 11:28:25'),
(1, 12, '2019-03-04 11:28:25'),
(1, 52, '2019-03-04 11:28:25'),
(1, 32, '2019-03-04 11:28:25'),
(1, 31, '2019-03-04 11:28:25'),
(1, 21, '2019-03-04 11:28:25'),
(1, 89, '2019-03-04 12:20:12'),
(3, 98, '2019-03-04 12:20:12'),
(3, 19, '2019-03-04 12:20:12'),
(3, 17, '2019-03-04 12:20:12'),
(3, 94, '2019-03-04 12:20:12'),
(3, 28, '2019-03-04 12:20:12'),
(3, 96, '2019-03-04 12:20:12'),
(2, 32, '2019-03-04 12:20:12'),
(3, 13, '2019-03-04 12:20:12'),
(1, 87, '2019-03-04 12:20:12'),
(1, 64, '2019-03-04 12:20:12'),
(1, 73, '2019-03-04 12:20:12'),
(1, 47, '2019-03-04 12:20:12'),
(1, 82, '2019-03-04 12:20:12'),
(1, 96, '2019-03-04 12:20:12'),
(1, 61, '2019-03-04 12:20:12'),
(1, 62, '2019-03-04 12:20:12'),
(1, 63, '2019-03-04 12:20:12'),
(1, 38, '2019-03-04 12:26:22'),
(1, 76, '2019-03-04 12:26:22'),
(1, 64, '2019-03-04 12:26:22'),
(1, 88, '2019-03-04 12:26:22'),
(1, 44, '2019-03-04 12:26:22'),
(1, 5, '2019-03-04 12:26:22'),
(1, 82, '2019-03-04 12:26:22'),
(1, 91, '2019-03-04 12:26:22'),
(1, 42, '2019-03-04 12:26:22'),
(1, 48, '2019-03-04 12:26:22'),
(1, 23, '2019-03-04 12:26:22'),
(1, 28, '2019-03-04 12:26:22'),
(1, 29, '2019-03-04 12:26:22'),
(1, 92, '2019-03-04 12:37:51'),
(3, 14, '2019-05-11 19:28:50'),
(2, 14, '2019-05-11 19:30:30'),
(1, 14, '2019-05-11 20:55:16');

-- --------------------------------------------------------

--
-- Structure de la table `arkadaslik_istekleri`
--

CREATE TABLE `arkadaslik_istekleri` (
  `uye_id` int(10) NOT NULL,
  `arkadas_id` int(10) NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `bildirimler`
--

CREATE TABLE `bildirimler` (
  `bil_id` int(10) NOT NULL,
  `bil_sahibi` int(10) NOT NULL,
  `bil_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bil_tarihi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dersler`
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
-- Contenu de la table `dersler`
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
(61, 'Kablosuz Algılayıcı Ağlar (KAA)', 'Kablosuz Algılayıcı Ağlar (KAA) temel kavramları, KAA uygulamaları, kablosuz algılayıcı düğüm mimarisi, KAA için ağ mimarisi, yönlendirme, topoloji kontrolü, konum tespiti ve güvenlik, KAA için geliştirilmiş işletim sistemleri ile ilgili öğrenciye temel bilgi verilmektedir.', '8.Yarıyıl', '3', '0', 3, 5),
(62, 'Derleyici Tasarımı', 'Java programlama dilinde otomatik sözcük analizci üretimine yönelik JLex ve otomatik ayrıştırıcı üretimine yönelik CUP gibi önemli yazılım araçları tanıtılmaktadır. Anlamsal eylemler, ara temsiller ve kod üretimi, komut seçimi, veri akış analizi, yaşam analizi ve graf boyamalı yazmaç tahsisi ve çalışma zamanı bellek yönetimi de bu derste anlatılan konular arasındadır. Bu dersi\r\nbaşarıyla tamamlayan öğrenciler, derste öğrendikleri teoriyi ve yöntemleri çoğu programlama\r\ndilleri için iyileştirilmiş derleyicilerin tasarım ve gerçekleştirilmesinde uygulayabilirler.', '8.Yarıyıl', '3', '0', 3, 5),
(63, 'Paralel Sistemler', 'Özel önbelleklere sahip işlemcilerden oluşan paralel mimarilerde karşılaşılan veri tutarlılığı problemi tanıtılıp önbellek tutarlılık protokolleri üzerinde durulmaktadır. Önbellek tutarlı üniform olmayan bellek erişimli (ccNUMA) paralel sistemler tanıtılıp bu tür mimarilerin sağladığı performans kazançlarından bahsedilmektedir. Genel olarak, programlama modeli olarak paylaşılan\r\nbellekli makineler yönelik OpenMP anlatılıp, işlerin çoklu iş parçacıkları arasında paylaşımını\r\nsağlayan OpenMP özellikleri üzerine yoğunlaşılmaktadır. Ayrıca dağıtık bellekli makineler için\r\nMPI programlama modelinden kısa da olsa bahsedilmektedir.', '8.Yarıyıl', '3', '0', 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `mesajlar`
--

CREATE TABLE `mesajlar` (
  `measaj_id` int(10) NOT NULL,
  `gonderen_id` int(10) NOT NULL,
  `alici_id` int(10) NOT NULL,
  `masaj_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `mesaj_metni` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `notlar`
--

CREATE TABLE `notlar` (
  `not_id` int(10) NOT NULL,
  `not_basligi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_aciklamasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `eklendigi_tarih` timestamp NOT NULL DEFAULT current_timestamp(),
  `uye_id` int(10) NOT NULL,
  `not_durumu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_id` int(10) NOT NULL,
  `not_dosyasi` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begen_sayisi` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `notlar`
--

INSERT INTO `notlar` (`not_id`, `not_basligi`, `not_aciklamasi`, `eklendigi_tarih`, `uye_id`, `not_durumu`, `ders_id`, `not_dosyasi`, `begen_sayisi`) VALUES
(1, 'Yapay Zeka Ders Notlari 1', 'YAPAY ZEKA ve UZMAN SİSTEMLER\nDers Notları - I\nDr. A. Cumhur KINACI\n2017-2018 Bahar', '2019-04-28 23:25:12', 1, 'SHARED', 54, 'MonApr29022512EET2019iZa7sNdsJTILGRgJ6158844140841245923.pdf', 0),
(8, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'NDAT dersi ile ilgili bir pdf kaynak kitap. \r\nBu kaynak design pattern ile halakalı.', '2019-04-29 13:10:55', 1, 'PUBLIC', 37, 'MonApr29161055EET2019MMqK5sd04iL4B1qV8832738345589158364.pdf', 0),
(10, 'Yılı bilinmeyen Veri Haberleşmesi Arasınav Soruları', 'Yılı bilinmeyen Veri Haberleşmesi Arasınav Soruları. Bir şeyler yarar umarım.', '2019-04-29 13:24:47', 1, 'PRIVATE', 36, 'MonApr29162447EET2019amoF4misMxytIY1q7909285947756028672.JPG', 0),
(11, 'Data Structures and Algorithms in Python', '4. sınıfın Algoritma Analizi dersi için İngilizce kaynak kıtabı. Hoca sınıfta bu kıtap kullandı. ', '2019-04-29 13:30:23', 1, 'PUBLIC', 56, 'MonApr29163022EET2019U2ZcOxdDTRqGkxP88371382716617416783.pdf', 0),
(12, 'Fundamentals of Database Systems (7th edition)', 'VTYS dersi için Veri Taban Fundamentals of Database Systems (7th edition) adlı bir İngilizce kaynak kıtabıdır.', '2019-04-29 13:33:37', 1, 'SHARED', 27, 'MonApr29163337EET2019GzRDGztyoHVWOs204221262974596668497.pdf', 0),
(13, 'Artificial Intelligence A Modern Approach (3rd edition)', 'Artificial Intelligence A Modern Approach (3rd edition) : Yapay Zeka ve Uzman Sistemleri dersin kaynak kitabıdır.', '2019-04-29 13:38:15', 1, 'PUBLIC', 54, 'MonApr29163815EET2019QmUgUT5t2QyEDjSx7564927131317220996.pdf', 0),
(14, 'Görüntü İşleme Dersi Notları 8', 'Görüntü İşleme Dersi-8 Notları. İyi çalışmalar!', '2019-04-29 13:42:22', 1, 'PUBLIC', 48, 'MonApr29164222EET2019LeYpNLmwBLoVv0vL6500637996872842125.pdf', 0),
(18, 'Mark Allen Aeiss Data Structures And Algorithms In C 2nd Edtition', 'This book describes data structures, methods of organizing large amounts of data, and algorithm analysis, the estimation of the running time of algorithms. As computers become faster and faster, the need for programs that can handle large amounts of input becomes more acute. Paradoxically, this requires more careful attention to efficiency, since inefficiencies in programs become most obvious when input sizes are large. By analyzing an algorithm before it is actually coded, students can decide if a particular solution will be feasible.', '2019-05-12 06:06:56', 5, 'PUBLIC', 56, 'SunMay12090656EET2019dNOPskLgvB1BWC3x2413769876848102635.pdf', 0),
(19, 'Machine Learning An Algorithmic Perspective (2nd ed.) [Marsland 2014-10-08]', 'There have been some interesting developments in machine learning over the past four years,\r\nsince the 1st edition of this book came out. One is the rise of Deep Belief Networks as an\r\narea of real research interest (and business interest, as large internet-based companies look\r\nto snap up every small company working in the area), while another is the continuing work\r\non statistical interpretations of machine learning algorithms. This second one is very good for the field as an area of research, but it does mean that computer science students, whose statistical background can be rather lacking, find it hard to get started in an area that they are sure should be of interest to them. The hope is that this book, focussing on the algorithms of machine learning as it does, will help such students get a handle on the ideas, and that it will start them on a journey towards mastery of the relevant mathematics and statistics as well as the necessary programming and experimentation.', '2019-05-12 06:10:22', 2, 'PUBLIC', 58, 'SunMay12091022EET2019ztujnGwZkWskUhxB2218823105051392329.pdf', 0),
(20, 'Veri Haberleşmesi Vize Önceki Ders Notu  2019', 'Veri Haberleşmesi Vize Önceki Ders Notu  2019. \r\nİyi çalışmalar dilerim herkeze.', '2019-05-12 06:14:44', 3, 'PUBLIC', 36, 'SunMay12091444EET20198Zfgd99gUkgOOwkC3575151877879750938.zip', 0),
(21, 'Mobile Programlama Vize Öceki Ders Notları 2019', 'Mobile Programlama Vize Öceki Ders Notları 2019.\r\nHerkese iyi çalışmalar dilerim. ', '2019-05-12 06:21:52', 14, 'PUBLIC', 50, 'SunMay12092152EET2019OixJttzhdz4GlqAX4659028360378315057.zip', 0),
(22, 'Telsiz Duyarga Ağlarda Kullanılan Yönlendirme Tekniklerinin Enerji Verimliliği Açısından Karşılaştırması[#49001]-41722', 'Telsiz Duyarga Ağlarda Kullanılan Yönlendirme Tekniklerinin Enerji Verimliliği Açısından Karşılaştırması[#49001]-41722 (Comparison of Routing Techniques in Wireless Sensor Networks in Terms\r\nof Energy Efficiency)', '2019-05-12 06:30:33', 6, 'PUBLIC', 61, 'SunMay12093033EET2019TfLh1IqjG0vhTazQ6565156196780707081.pdf', 0);

-- --------------------------------------------------------

--
-- Structure de la table `ortak_notlar`
--

CREATE TABLE `ortak_notlar` (
  `uye_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `ortak_notlar`
--

INSERT INTO `ortak_notlar` (`uye_id`, `not_id`, `tarih`) VALUES
(6, 12, '2019-05-04 13:47:21'),
(7, 1, '2019-05-04 14:36:38');

-- --------------------------------------------------------

--
-- Structure de la table `rollar`
--

CREATE TABLE `rollar` (
  `rol_id` tinyint(1) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `rollar`
--

INSERT INTO `rollar` (`rol_id`, `authority`) VALUES
(0, 'ROLE_SUPERADMIN'),
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Structure de la table `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(10) NOT NULL,
  `uye_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_soyadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Vi3n9K_19',
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_rolu` tinyint(1) NOT NULL DEFAULT 2,
  `kayit_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `profil_resmi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar-default.png',
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_adi`, `uye_soyadi`, `username`, `username2`, `password`, `telefon`, `uye_rolu`, `kayit_tarihi`, `profil_resmi`, `aktif`) VALUES
(1, 'Abdoul Karim', 'TOURE', 'trabdlkarim@gmail.com', 'trabdlkarim', 'Aminatiamo', '05348506190', 1, '2018-12-21 08:01:20', 'avatar-trabdlkarim.jpg', 1),
(2, 'Augusto', 'GOMES JUNIOR', 'agustogomes15@gmail.com', 'agustogomes15', 'Augusto123', '05457245409', 2, '2018-12-21 08:06:30', 'avatar-default.png', 1),
(3, 'Figen Kardelen', 'YILDIRIM', 'f.kardelenyildirim@gmail.com', 'fkardelenyildirim', 'Figen123', '05389659989', 2, '2018-12-21 08:12:14', 'avatar-f.kardelenyildirim.jpg', 1),
(4, 'Benjamin', 'Jacobs', 'b.jacobs@gmail.com', 'benjacob', 'Vi3n9K_19', '+1-202-555-0150', 2, '2019-03-01 19:18:56', 'avatar-benjamin-jacobs.jpg', 1),
(5, 'Deborah', 'Young', 'd.young@gmail.com', 'dyoung', 'Vi3n9K_19', '+1-202-555-0119', 2, '2019-03-01 19:18:56', 'avatar-deborah-young.jpg', 1),
(6, 'Louis', 'Hawkins', 'l.hawkins19@mail.com', 'louis.hawkins', 'Vi3n9K_19', '+1-502-555-0131', 2, '2019-03-01 19:18:56', 'avatar-louis-hawkins.jpg', 1),
(7, 'Ashley', 'Warren', 'ashleywarren@gmail.com', 'ashley_warren15', 'Vi3n9K_19', '+1-382-555-0144', 2, '2019-03-01 19:18:56', 'avatar-ashley-warren.jpg', 1),
(8, 'Christopher', 'Tucker', 'christucker@gmail.com', 'christucker', 'Vi3n9K_19', '+1-102-555-0197', 2, '2019-03-01 19:18:56', 'avatar-christopher-tucker.jpg', 1),
(9, 'Lori', 'Harrison', 'loriharrison@mail.com', 'lori.harrison.9454', 'Vi3n9K_19', '+1-242-555-0116', 2, '2019-03-01 19:18:56', 'avatar-lori-harrison.jpg', 1),
(10, 'Phillip', 'Cole', 'phillicole@gmail.com', 'phillicole', 'Vi3n9K_19', '+44 1632 960804', 2, '2019-03-01 19:18:56', 'avatar-phillip-cole.jpg', 1),
(11, 'Ann', 'James', 'a.james@outlook.com', 'ann.james', 'Vi3n9K_19', '+44 1632 960040', 2, '2019-03-01 19:18:56', 'avatar-ann-james.jpg', 1),
(12, 'Tyler', 'Brewer', 'tyler_brewer@mail.com', 'tyler.brewer', 'Vi3n9K_19', '+44 1632 960472', 2, '2019-03-01 19:18:56', 'avatar-tyler-brewer.jpg', 1),
(13, 'Eric', 'Martinez', 'ericmart@outlook.com', 'ericmarti', 'Vi3n9K_19', '+44 1632 960733', 2, '2019-03-01 19:18:56', 'avatar-eric-martinez.jpg', 1),
(14, 'Karen', 'Garcia', 'kgarcia@hotmail.com', 'kgarcia13', 'Vi3n9K_19', '+1-313-555-0113', 2, '2019-03-01 19:18:56', 'avatar-karen-garcia.jpg', 1),
(15, 'Susan', 'Estrada', 'susan.estrada86@outlook.com', 'susan.estrada', 'Vi3n9K_19', '+1-713-555-0105', 2, '2019-03-01 19:18:56', 'avatar-susan-estrada.jpg', 1),
(16, 'Joshua', 'Ward', 'joshward@yahoo.fr', 'joshward', 'Vi3n9K_19', '+1-613-555-0113', 2, '2019-03-01 19:18:56', 'avatar-joshua-ward.jpg', 1),
(17, 'Louis', 'Mendoza', 'louis.mendo@zoho.com', 'louis.mendo', 'Vi3n9K_19', '+61 1900 654 321', 2, '2019-03-01 19:18:56', 'avatar-louis-mendoza.jpg', 1),
(19, 'Berkcan ', 'Çiftçi', 'berkcanciftci@gmail.com', 'berkcanciftci', 'Vi3n9K_19', '05986352412', 2, '2019-03-04 09:36:22', 'avatar-default.png', 1),
(20, 'Berk', 'Altuğ', 'berkaltug@gmail.com', 'berkaltug', 'Vi3n9K_19', '05389647821', 2, '2019-03-04 09:38:02', 'avatar-default.png', 1),
(21, 'Faruk', 'Değerli', 'farukdegerli@gmail.com', 'farukdegerli', 'Vi3n9K_19', '05367425897', 2, '2019-03-04 09:40:01', 'avatar-default.png', 1),
(22, 'Fatih', 'Yıldız', 'fatihyildiz@gmail.com', 'fatihyildiz', 'Vi3n9K_19', '05347896521', 2, '2019-03-04 09:40:01', 'avatar-default.png', 1),
(23, 'Cemal', 'Arslan', 'cemalarslan@gmail.com', 'cemalarslan', 'Vi3n9K_19', '05347896453', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(24, 'Yusufcan', 'Arslan', 'yusufcanarslan@gmail.com', 'yusufcanarslan', 'Vi3n9K_19', '05896352175', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(25, 'Mete', 'Aydın', 'meteaydin@gmail.com', 'meteaydin', 'Vi3n9K_19', '05897548635', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(26, 'Talha', 'Kanyılmaz', 'talhakanyilmaz@gmail.com', 'talhakanyilmaz', 'Vi3n9K_19', '05375634512', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(27, 'Aysel', 'Bilici', 'ayselbilici@gmail.com', 'ayselbilici', 'Vi3n9K_19', '05634578652', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(28, 'Dilek', 'Özgül', 'dilekozgul@gmail.com', 'dilekozgul', 'Vi3n9K_19', '05347852463', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(29, 'Gökhan', 'Sarı', 'gokhansarı@gmail.com', 'gokhansarı', 'Vi3n9K_19', '05347852541', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(30, 'Enes Chatzi ', 'Osman', 'enesosman@gmail.com', 'eneschatziosman', 'Vi3n9K_19', '05362134578', 2, '2019-03-04 09:49:06', 'avatar-default.png', 1),
(33, 'Sönmez', 'Cankurt', 'sonmezcankurt@gmail.com', 'sonmezcankurt', 'Vi3n9K_19', '05634567825', 2, '2019-03-04 09:57:02', 'avatar-default.png', 1),
(34, 'Samet', 'Uzun', 'sametuzun@gmail.com', 'sametuzun', 'Vi3n9K_19', '05456352345', 2, '2019-03-04 09:57:02', 'avatar-default.png', 1),
(35, 'Kübra', 'Mumcu', 'kubramumcu@gmail.com', 'kubramumcu', 'Vi3n9K_19', '05367425897', 2, '2019-03-04 10:01:59', 'avatar-default.png', 1),
(36, 'Ayşegül', 'Hatipoğlu', 'aysegulhatipoglu@gmail.com', 'aysegulhatipoglu', 'Vi3n9K_19', '05896352175', 2, '2019-03-04 10:01:59', 'avatar-default.png', 1),
(38, 'Esra', 'Karakaş', 'esrakarakas@gmail.com', 'esrakarakas', 'Vi3n9K_19', '05647895632', 2, '2019-03-04 10:01:59', 'avatar-default.png', 1),
(39, 'Merve', 'Zavrak', 'mervezavarak@gmail.com', 'mervezavrak', 'Vi3n9K_19', '05783214565', 2, '2019-03-04 10:01:59', 'avatar-default.png', 1),
(43, 'Ömer Faruk', 'Demirel', 'omerfarukdemirel@gmail.com', 'omerfarukdemirel', 'Vi3n9K_19', '05345632145', 2, '2019-03-04 10:02:30', 'avatar-default.png', 1),
(46, 'Nur', 'İlhanlı', 'nurilhanli@gmail.com', 'nurilhanli', 'Vi3n9K_19', '05872563521', 2, '2019-03-04 10:02:30', 'avatar-default.png', 1),
(47, 'Oğuzhan', 'Koç', 'oguzhankoc@gmail.com', 'oguzhankoc', 'Vi3n9K_19', '053897563425', 2, '2019-03-04 10:05:53', 'avatar-default.png', 1),
(48, 'Mehmet', 'Ardıç', 'mehmetardıc@gmail.com', 'mehmetardıc', 'Vi3n9K_19', '05781452637', 2, '2019-03-04 10:05:53', 'avatar-default.png', 1),
(49, 'Duygu', 'Bozyel', 'duygubozyel@gmail.com', 'duygubozyel', 'Vi3n9K_19', '05789652415', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(50, 'Ayşegül', 'İpek', 'aysegulipek@gmail.com', 'aysegulipek', 'Vi3n9K_19', '05347589635', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(51, 'Burcu', 'Turan', 'burcuturan@gmail.com', 'burcuturan', 'Vi3n9K_19', '05345638525', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(52, 'Derya', 'Özdin', 'deryaozdin@gmail.com', 'deryaozdin', 'Vi3n9K_19', '05347896525', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(53, 'Reyhan', 'Aydın', 'reyhanaydin@gmail.com', 'reyhanaydin', 'Vi3n9K_19', '05345217845', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(54, 'Rümeysa', 'Ayvaz', 'rumeysaayvaz@gmail.com', 'rumeysaayvaz', 'Vi3n9K_19', '05314562545', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(55, 'Ruken', 'Erden', 'rukenerden@gmail.com', 'rukenerden', 'Vi3n9K_19', '05314567895', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(56, 'Gökçe', 'Hergenç', 'gokceergenc@gmail.com', 'gokceergenc', 'Vi3n9K_19', '05312547895', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(57, 'Steve', 'Jobs', 'stevejobs@gmail.com', 'stevejobs', 'Vi3n9K_19', '05645632145', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(58, 'Billy', 'Williams', 'billwilly@gmail.com', 'billwilly', 'Vi3n9K_19', '05312563521', 2, '2019-03-04 10:15:41', 'avatar-default.png', 1),
(59, 'Kıvanç', 'Tatlıtuğ', 'kivanctatlutug@gmail.com', 'kıvanctatlitug', 'Vi3n9K_19', '05348752145', 2, '2019-03-04 10:17:58', 'avatar-default.png', 1),
(60, 'Beren', 'Saat', 'berensaat@gmail.com', 'berensaat', 'Vi3n9K_19', '05634521458', 2, '2019-03-04 10:17:58', 'avatar-default.png', 1),
(61, 'Enes', 'Arıkan', 'enesarıkan@gmail.com', 'enisarikan', 'Vi3n9K_19', '05347854216', 2, '2019-03-04 10:20:50', 'avatar-default.png', 1),
(62, 'Ezgi ', 'Mola', 'ezgimola@gmail.com', 'ezgimola', 'Vi3n9K_19', '05345623145', 2, '2019-03-04 10:20:50', 'avatar-default.png', 1),
(63, 'Tolga', 'Dağıdır', 'tolgadagıdır@gmail.com', 'tolgadagıdır', 'Vi3n9K_19', '05342156545', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(64, 'Barış', 'Bayram', 'barısbayram@gmail.com', 'barısbayram', 'Vi3n9K_19', '0563458975', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(65, 'Elif', 'Akbaş', 'elifakbas@gmail.com', 'elifakbas', 'Vi3n9K_19', '05634587965', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(66, 'Çağatay', 'Ulusoy', 'cagatayulusoy@gmail.com', 'cagatayulusoy', 'Vi3n9K_19', '05124587965', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(67, 'Serenay', 'Sarıkaya', 'seranaysarikaya@gmail.com', 'seranaksarikaya', 'Vi3n9K_19', '05987456321', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(68, 'Kenan', 'İmirzalıoğlu', 'kenanimirzalioğlu@gmail.com', 'kenanimirzalioğlu', 'Vi3n9K_19', '05345621478', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(69, 'Şadi Evren', 'Şeker', 'sadievrenseker@gmail.com', 'sadievrenseker', 'Vi3n9K_19', '05784653214', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(70, 'Ünal', 'Yıldırım', 'unalyıldırım@gmail.com', 'unalyıldırım', 'Vi3n9K_19', '05648759635', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(71, 'Şerife', 'Yıldırım', 'serifeyildirim@gmail.com', 'serifeyildirim', 'Vi3n9K_19', '05324568975', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(72, 'Zeynep', 'Yıldırım', 'zeynepyildirim@gmail.com', 'zeynepyildirim', 'Vi3n9K_19', '058963478521', 2, '2019-03-04 10:31:49', 'avatar-default.png', 1),
(73, 'Behiç', 'Açar', 'behicacar@gmail.com', 'behicacar', 'Vi3n9K_19', '05964785421', 2, '2019-03-04 10:53:21', 'avatar-default.png', 1),
(74, 'Muratcan', 'Kış', 'muratcankıs@gmail.com', 'muratcankıs', 'Vi3n9K_19', '05647896545', 2, '2019-03-04 10:53:21', 'avatar-default.png', 1),
(75, 'Berkay', 'Demirel', 'berkaydemirel@gmail.com', 'berkaydemirel', 'Vi3n9K_19', '05647893214', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(76, 'Burcin', 'Akalın', 'burcinakalin@gmail.com', 'burcinakalin', 'Vi3n9K_19', '05457896532', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(77, 'Eray', 'Adıyoklar', 'erayadıyoklar@gmail.com', 'erayadıyoklar', 'Vi3n9K_19', '05479865214', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(78, 'Ozan', 'Erden', 'ozanerden@gmail.com', 'ozanerden', 'Vi3n9K_19', '05973214568', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(79, 'İsmet', 'Batansu', 'ismetbatansu@gmail.com', 'ismetbatansu', 'Vi3n9K_19', '05634568795', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(80, 'Sara', 'Avcı', 'saraavci@gmail.com', 'saraavci', 'Vi3n9K_19', '05789684563', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(81, 'Yasin', 'Turpçu', 'yasinturpcu@gmail.com', 'yasinturpcu', 'Vi3n9K_19', '05463589475', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(82, 'Sonay', 'Koç', 'sonaykoc@gmail.com', 'sonaykoc', 'Vi3n9K_19', '05789645632', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(83, 'Ezgi', 'Karakuş', 'ezgikarakus@gmail.com', 'ezgikarakus', 'Vi3n9K_19', '05317896542', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(84, 'Neslihan', 'Aydın', 'neslihanaydin@gmail.com', 'neslihanaydin', 'Vi3n9K_19', '05457898565', 2, '2019-03-04 11:02:29', 'avatar-default.png', 1),
(85, 'Hakan', 'Yaşar', 'hakanyasar@gmail.com', 'hakanyasar', 'Vi3n9K_19', '05347898525', 2, '2019-03-04 11:04:43', 'avatar-default.png', 1),
(86, 'Özkan', 'Koç', 'ozkankoc@gmail.com', 'ozkankoc', 'Vi3n9K_19', '05789654562', 2, '2019-03-04 11:04:43', 'avatar-default.png', 1),
(87, 'Sercan', 'Karaca', 'sercankaraca@gmail.com', 'sercankaraca', 'Vi3n9K_19', '05647853214', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(88, 'Nurullah', 'İriş', 'nurullahirirs@gmail.com', 'nurullahiris', 'Vi3n9K_19', '05786543214', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(89, 'Mervenur', 'Yaral', 'mervenuryaral@gmail.com', 'mervenuryaral', 'Vi3n9K_19', '05234563212', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(90, 'Kadriye', 'Taylan', 'kadriyetaylan@gmail.com', 'kadriyetaylan', 'Vi3n9K_19', '05463214569', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(91, 'Fahri', 'Güreşci', 'fahriguresci@gmail.com', 'fahriguresci', 'Vi3n9K_19', '05236541295', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(92, 'Büşra', 'Öztürk', 'busraozturk@gmail.com', 'busraozturk', 'Vi3n9K_19', '05347896524', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(93, 'Fawzi', 'Latta', 'fawzilatta@gmail.com', 'fawzilatte', 'Vi3n9K_19', '05345624563', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(94, 'Yamen', 'Alzoubi', 'yamenalzoubi@gmail.com', 'yamenalzoubi', 'Vi3n9K_19', '05645873258', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(95, 'Devrim', 'Özkocaman', 'devrimozkocaman@gmail.com', 'devrimozkocaman', 'Vi3n9K_19', '05789654875', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(96, 'Emin', 'Cebecioğlu', 'emincebecioğlu@gmail.com', 'emincebecioğlu', 'Vi3n9K_19', '05634569828', 2, '2019-03-04 11:14:52', 'avatar-default.png', 1),
(97, 'Özge', 'Toprak', 'ozgetoprak@gmail.com', 'ozgetoprak', 'Vi3n9K_19', '05314569875', 2, '2019-03-04 11:17:07', 'avatar-default.png', 1),
(98, 'Uğur', 'Akdağ', 'ugurakdag@gmail.com', 'ugurakdag', 'Vi3n9K_19', '05547896525', 2, '2019-03-04 11:17:07', 'avatar-default.png', 1),
(99, 'Adem', 'Nalbantoğlu', 'ademnalbantoglu@gmail.com', 'ademnalbantoglu', 'Vi3n9K_19', '05987653241', 2, '2019-03-04 11:19:38', 'avatar-default.png', 1),
(100, 'Dilek', 'Şen', 'dileksen@gmail.com', 'dileksen', 'Vi3n9K_19', '05468953241', 2, '2019-03-04 11:19:38', 'avatar-default.png', 1);

-- --------------------------------------------------------

--
-- Structure de la table `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yourum_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `yorum_icerigi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `yorum_tarihi` timestamp NOT NULL DEFAULT current_timestamp(),
  `yorumlayan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD PRIMARY KEY (`aktivite_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`),
  ADD UNIQUE KEY `post_id` (`not_id`);

--
-- Index pour la table `arkadaslar`
--
ALTER TABLE `arkadaslar`
  ADD KEY `fk_arkadaslar_uye_id` (`uye_id`),
  ADD KEY `fk_arkadaslar_arkadas_id` (`arkadas_id`);

--
-- Index pour la table `bildirimler`
--
ALTER TABLE `bildirimler`
  ADD PRIMARY KEY (`bil_id`),
  ADD UNIQUE KEY `bil_sahibi` (`bil_sahibi`);

--
-- Index pour la table `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`ders_id`);

--
-- Index pour la table `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`measaj_id`),
  ADD UNIQUE KEY `uye_id` (`gonderen_id`),
  ADD KEY `fk_msg_alici_id` (`alici_id`);

--
-- Index pour la table `notlar`
--
ALTER TABLE `notlar`
  ADD PRIMARY KEY (`not_id`);

--
-- Index pour la table `ortak_notlar`
--
ALTER TABLE `ortak_notlar`
  ADD KEY `fk_ortak_not_id` (`not_id`);

--
-- Index pour la table `rollar`
--
ALTER TABLE `rollar`
  ADD PRIMARY KEY (`rol_id`);

--
-- Index pour la table `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `username2` (`username2`),
  ADD KEY `fk_uye_rol_id` (`uye_rolu`);

--
-- Index pour la table `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yourum_id`),
  ADD UNIQUE KEY `not_id` (`not_id`),
  ADD UNIQUE KEY `uye_id` (`yorumlayan`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  MODIFY `aktivite_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `bildirimler`
--
ALTER TABLE `bildirimler`
  MODIFY `bil_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `dersler`
--
ALTER TABLE `dersler`
  MODIFY `ders_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `measaj_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `notlar`
--
ALTER TABLE `notlar`
  MODIFY `not_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uye_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT pour la table `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yourum_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD CONSTRAINT `fk_act_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`),
  ADD CONSTRAINT `fk_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Contraintes pour la table `bildirimler`
--
ALTER TABLE `bildirimler`
  ADD CONSTRAINT `fk_bil_sahibi` FOREIGN KEY (`bil_sahibi`) REFERENCES `uyeler` (`uye_id`);

--
-- Contraintes pour la table `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD CONSTRAINT `fk_msg_alici_id` FOREIGN KEY (`alici_id`) REFERENCES `uyeler` (`uye_id`),
  ADD CONSTRAINT `fk_msg_gonderen_id` FOREIGN KEY (`gonderen_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Contraintes pour la table `uyeler`
--
ALTER TABLE `uyeler`
  ADD CONSTRAINT `fk_uye_rol_id` FOREIGN KEY (`uye_rolu`) REFERENCES `rollar` (`rol_id`);

--
-- Contraintes pour la table `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD CONSTRAINT `fk_yorum_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`),
  ADD CONSTRAINT `fk_yorun_sahibi` FOREIGN KEY (`yorumlayan`) REFERENCES `uyeler` (`uye_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
