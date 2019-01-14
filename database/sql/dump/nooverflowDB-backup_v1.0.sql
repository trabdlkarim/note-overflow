-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2019 at 10:48 AM
-- Server version: 10.1.37-MariaDB-3
-- PHP Version: 7.2.9-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noteoverflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktiviteler`
--

CREATE TABLE `aktiviteler` (
  `aktivite_id` int(10) NOT NULL,
  `uye_id` int(10) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `arkadaslar`
--

CREATE TABLE `arkadaslar` (
  `arkadas_id` int(10) NOT NULL,
  `uye_id` int(10) NOT NULL,
  `arkadas_olma_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bengenme`
--

CREATE TABLE `bengenme` (
  `begenme_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `begenme_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dersler`
--

CREATE TABLE `dersler` (
  `ders_id` int(10) NOT NULL,
  `ders_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_hocasi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_donemi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mesajlar`
--

CREATE TABLE `mesajlar` (
  `measaj_id` int(10) NOT NULL,
  `gonderen_id` int(10) NOT NULL,
  `alici_id` int(10) NOT NULL,
  `masaj_tarihi` datetime NOT NULL,
  `mesaj_metni` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notlar`
--

CREATE TABLE `notlar` (
  `not_id` int(10) NOT NULL,
  `not_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarih` datetime NOT NULL,
  `uye_id` int(10) NOT NULL,
  `not_durumu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ders_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `yorum_id` int(10) NOT NULL,
  `post_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rollar`
--

CREATE TABLE `rollar` (
  `rol_id` tinyint(1) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rollar`
--

INSERT INTO `rollar` (`rol_id`, `authority`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(10) NOT NULL,
  `uye_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_soyadi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parola` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uye_rolu` tinyint(1) NOT NULL DEFAULT '2',
  `kayit_tarihi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_adi`, `uye_soyadi`, `email`, `parola`, `username`, `telefon`, `uye_rolu`, `kayit_tarihi`) VALUES
(1, 'Abdoul Karim', 'TOURE', 'trabdlkarim@gmail.com', 'Aminatiamo', 'trabdlkarim', '05348506190', 1, '2018-12-21 11:01:20'),
(2, 'Augusto', 'GOMES JUNIOR', 'agustogomes15@gmail.com', 'Augusto123', 'augoju', '05457245409', 2, '2018-12-21 11:06:30'),
(3, 'Figen Kardelen', 'YILDIRIM', 'f.kardelenyildirim@gmail.com', 'Figen123', 'figenyildirim', '05389659989', 2, '2018-12-21 11:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yourum_id` int(10) NOT NULL,
  `not_id` int(10) NOT NULL,
  `yorum_metni` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yorum_tarihi` datetime NOT NULL,
  `uye_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD PRIMARY KEY (`aktivite_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `arkadaslar`
--
ALTER TABLE `arkadaslar`
  ADD PRIMARY KEY (`arkadas_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`);

--
-- Indexes for table `bengenme`
--
ALTER TABLE `bengenme`
  ADD PRIMARY KEY (`begenme_id`),
  ADD UNIQUE KEY `not_id` (`not_id`);

--
-- Indexes for table `dersler`
--
ALTER TABLE `dersler`
  ADD PRIMARY KEY (`ders_id`);

--
-- Indexes for table `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`measaj_id`),
  ADD UNIQUE KEY `uye_id` (`gonderen_id`),
  ADD KEY `fk_msg_alici_id` (`alici_id`);

--
-- Indexes for table `notlar`
--
ALTER TABLE `notlar`
  ADD PRIMARY KEY (`not_id`),
  ADD UNIQUE KEY `ders_id` (`ders_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `not_id` (`not_id`),
  ADD UNIQUE KEY `yorum_id` (`yorum_id`);

--
-- Indexes for table `rollar`
--
ALTER TABLE `rollar`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`),
  ADD KEY `fk_uye_rol_id` (`uye_rolu`);

--
-- Indexes for table `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yourum_id`),
  ADD UNIQUE KEY `not_id` (`not_id`),
  ADD UNIQUE KEY `uye_id` (`uye_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  MODIFY `aktivite_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bengenme`
--
ALTER TABLE `bengenme`
  MODIFY `begenme_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dersler`
--
ALTER TABLE `dersler`
  MODIFY `ders_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `measaj_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notlar`
--
ALTER TABLE `notlar`
  MODIFY `not_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uye_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yourum_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `aktiviteler`
--
ALTER TABLE `aktiviteler`
  ADD CONSTRAINT `fk_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `fk_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `arkadaslar`
--
ALTER TABLE `arkadaslar`
  ADD CONSTRAINT `fk_act_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `bengenme`
--
ALTER TABLE `bengenme`
  ADD CONSTRAINT `fk_ben_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`);

--
-- Constraints for table `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD CONSTRAINT `fk_msg_alici_id` FOREIGN KEY (`alici_id`) REFERENCES `uyeler` (`uye_id`),
  ADD CONSTRAINT `fk_msg_gonderen_id` FOREIGN KEY (`gonderen_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `notlar`
--
ALTER TABLE `notlar`
  ADD CONSTRAINT `fk_not_ders_id` FOREIGN KEY (`ders_id`) REFERENCES `dersler` (`ders_id`),
  ADD CONSTRAINT `fk_not_uye_id` FOREIGN KEY (`uye_id`) REFERENCES `uyeler` (`uye_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`),
  ADD CONSTRAINT `fk_yorum_id` FOREIGN KEY (`yorum_id`) REFERENCES `yorumlar` (`yourum_id`);

--
-- Constraints for table `uyeler`
--
ALTER TABLE `uyeler`
  ADD CONSTRAINT `fk_uye_rol_id` FOREIGN KEY (`uye_rolu`) REFERENCES `rollar` (`rol_id`);

--
-- Constraints for table `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD CONSTRAINT `fk_yorum_not_id` FOREIGN KEY (`not_id`) REFERENCES `notlar` (`not_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
