-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 14, 2018 at 01:43 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiproduct`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` text,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Buku ', 'Buku itu dibuat dari kertas', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(2, 'Tas', 'Tas terbuat dari kulit manusia', '2018-03-07 06:54:23', '2018-03-07 06:54:23'),
(3, 'PC', 'PC Laptop', '2018-03-07 09:01:54', '2018-03-07 09:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Buku', 'Google Books', '2018-03-08 00:00:00', '2018-03-13 08:42:55'),
(2, 'Resep', 'Buku resep', '2018-03-07 06:34:53', '2018-03-07 06:34:53'),
(7, 'foo', 'bar', '2018-03-13 02:56:56', '2018-03-13 02:56:56'),
(8, 'foo', 'bar', '2018-03-13 02:57:48', '2018-03-13 02:57:48'),
(9, 'foo', 'bar', '2018-03-13 02:58:10', '2018-03-13 02:58:10'),
(10, 'foo', 'bar', '2018-03-13 02:59:57', '2018-03-13 02:59:57'),
(13, 'Arul', 'Ganteng', '2018-03-13 03:35:40', '2018-03-13 03:35:40'),
(15, 'Mangga', 'Mangga itu buah', '2018-03-14 03:29:42', '2018-03-14 03:29:42'),
(16, 'Mangga', 'Mangga itu buah', '2018-03-14 03:29:45', '2018-03-14 03:29:45'),
(17, 'Wew', 'Wew itu wew', '2018-03-14 03:56:38', '2018-03-14 03:56:38'),
(20, 'Buku tulis', 'Buku tulis 32 lembar', '2018-03-14 07:18:20', '2018-03-14 07:18:20'),
(21, 'Buku gambar', 'Buku gambar itu untuk gambar', '2018-03-14 07:19:56', '2018-03-14 07:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20180307061936'),
('20180307063929');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD UNIQUE KEY `unique_schema_migrations` (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
