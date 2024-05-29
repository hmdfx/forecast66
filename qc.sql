-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 12.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qc`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `label`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Solvent', '2024-04-29 15:24:34', 2, '2024-04-29 15:24:34', 2),
(2, 'Base Color', '2024-05-17 12:41:12', 2, '2024-05-17 12:41:12', 2),
(3, 'Color Matching', '2024-05-17 12:41:21', 2, '2024-05-17 12:41:29', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `label`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Test', '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 3),
(2, 'Drake', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 2),
(3, 'Kendrick', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 2),
(4, 'Metro', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 2),
(5, 'RIck', '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `forecast`
--

CREATE TABLE `forecast` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `forecast` bigint(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `stock` bigint(20) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `forecast`
--

INSERT INTO `forecast` (`id`, `id_product`, `label`, `forecast`, `date`, `stock`, `qty`, `id_customer`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(4, 3, 'Forecast Super White', 1000, '2024-01-01', 1000, 1000, 5, '2024-05-17 16:14:11', 2, '2024-05-17 16:14:11', 2),
(5, 4, 'Forecast Geranium January', 1000, '2024-01-04', 1000, 1000, 4, '2024-05-17 16:16:35', 2, '2024-05-17 16:16:35', 2),
(6, 3, 'Forecast Super White February', 800, '2024-02-01', 1200, 1200, 3, '2024-05-17 16:22:39', 2, '2024-05-17 16:22:39', 2),
(7, 4, 'Forecast Super Geranium February', 800, '2024-02-04', 1200, 1200, 2, '2024-05-17 16:23:16', 2, '2024-05-17 16:23:16', 2),
(8, 13, 'Forecast Solid Green', 1000, '2024-01-01', 1000, 1000, 2, '2024-05-17 16:30:43', 2, '2024-05-17 16:30:43', 2),
(9, 13, 'Forecast Solid Green February', 800, '2024-02-01', 1200, 1200, 5, '2024-05-17 16:51:21', 2, '2024-05-17 16:51:21', 2),
(10, 5, 'Forecast Red Magic', 1000, '2024-01-01', 1000, 1000, 4, '2024-05-17 16:52:37', 2, '2024-05-17 16:52:37', 2),
(11, 5, 'Forecast Red Magic February', 800, '2024-02-01', 1200, 1200, 2, '2024-05-17 16:53:44', 2, '2024-05-17 16:53:44', 2),
(12, 6, 'Forecast Blue Sky', 1000, '2024-01-01', 1000, 1000, 4, '2024-05-17 16:55:11', 2, '2024-05-17 16:55:11', 2),
(13, 6, 'Forecast Blue Sky February', 800, '2024-02-01', 1200, 1200, 5, '2024-05-17 16:55:44', 2, '2024-05-17 16:55:44', 2),
(14, 7, 'Forecast Clear Magenta', 1000, '2024-01-01', 1000, 1000, 4, '2024-05-17 16:56:18', 2, '2024-05-17 16:56:18', 2),
(15, 7, 'Forecast Clear Magenta February ', 800, '2024-02-01', 1200, 1200, 5, '2024-05-17 16:57:13', 2, '2024-05-17 16:57:13', 2),
(16, 13, 'Forecast Solid Green March', 1000, '2024-03-01', 1400, 1400, 3, '2024-05-17 17:04:40', 2, '2024-05-17 17:04:40', 2),
(17, 3, 'Forecast Super White March', 1000, '2024-03-01', 1400, 1400, 2, '2024-05-17 17:05:13', 2, '2024-05-17 17:05:13', 2),
(18, 4, 'Forecast Super Geranium March', 1000, '2024-03-01', 1400, 1400, 3, '2024-05-17 17:06:22', 2, '2024-05-17 17:06:22', 2),
(19, 5, 'Forecast Red Magic March', 1000, '2024-03-01', 1400, 1400, 4, '2024-05-17 17:06:54', 2, '2024-05-17 17:06:54', 2),
(20, 6, 'Forecast Blue Sky March', 1000, '2024-03-01', 1400, 1400, 5, '2024-05-17 17:07:31', 2, '2024-05-17 17:07:31', 2),
(21, 7, 'Forecast Clear Magenta March', 1000, '2024-03-01', 1400, 1400, 2, '2024-05-17 17:09:27', 2, '2024-05-17 17:09:27', 2),
(22, 3, 'Forecast Super White April', 1200, '2024-04-01', 1600, 1600, 3, '2024-05-17 17:10:28', 2, '2024-05-17 17:10:28', 2),
(23, 13, 'Forecast Solid Green April', 1200, '2024-04-01', 1600, 1600, 4, '2024-05-17 17:10:58', 2, '2024-05-17 17:10:58', 2),
(24, 4, 'Forecast Super Geranium April', 1200, '2024-04-01', 1600, 1600, 4, '2024-05-17 17:11:33', 2, '2024-05-17 17:11:33', 2),
(25, 6, 'Forecast Blue Sky April', 1200, '2024-04-01', 1600, 1600, 2, '2024-05-17 17:12:11', 2, '2024-05-17 17:12:11', 2),
(26, 7, 'Forecast Clear Magenta April', 1200, '2024-04-01', 1600, 1600, 2, '2024-05-17 17:12:51', 2, '2024-05-17 17:12:51', 2),
(27, 13, 'Forecast Solid Green May ', 1500, '2024-05-01', 1800, 1800, 4, '2024-05-17 17:13:30', 2, '2024-05-17 17:13:30', 2),
(28, 3, 'Forecast Super White May', 1500, '2024-05-01', 1800, 1800, 5, '2024-05-17 17:13:54', 2, '2024-05-17 17:13:54', 2),
(29, 4, 'Forecast Super Geranium May', 1500, '2024-05-01', 1800, 1800, 4, '2024-05-17 17:14:29', 2, '2024-05-17 17:14:29', 2),
(30, 6, 'Forecast Blue Sky May', 1500, '2024-05-01', 1800, 1800, 4, '2024-05-17 17:15:12', 2, '2024-05-17 17:15:12', 2),
(31, 7, 'Forecast Clear Magenta May', 1500, '2024-05-01', 1800, 1800, 2, '2024-05-17 17:15:44', 2, '2024-05-17 17:15:44', 2),
(32, 13, 'Forecast Solid Green June', 900, '2024-06-01', 1100, 1100, 3, '2024-05-17 17:16:22', 2, '2024-05-17 17:16:22', 2),
(33, 3, 'Forecast Super White June', 900, '2024-06-01', 1100, 1100, 3, '2024-05-17 17:17:31', 2, '2024-05-17 17:17:31', 2),
(34, 4, 'Forecast Super Geranium June', 900, '2024-05-01', 1100, 1100, 4, '2024-05-17 17:18:14', 2, '2024-05-17 17:18:14', 2),
(35, 6, 'Forecast Blue Sky June ', 900, '2024-06-01', 1100, 1100, 3, '2024-05-17 17:18:37', 2, '2024-05-17 17:18:37', 2),
(36, 5, 'Forecast Red Magic June', 900, '2024-06-01', 1100, 1100, 4, '2024-05-17 17:19:31', 2, '2024-05-17 17:19:31', 2),
(37, 7, 'Forecast Clear Magenta June', 900, '2024-06-01', 1100, 1100, 2, '2024-05-17 17:20:02', 2, '2024-05-17 17:20:02', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `status` enum('Success','Failed') NOT NULL DEFAULT 'Success',
  `action` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `logs`
--

INSERT INTO `logs` (`id`, `status`, `action`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(10, 'Success', 'Menginput Forecast Forecast Geranium January Dengan Nilai 1000', '2024-05-17 16:16:35', 2, '2024-05-17 16:16:35', 2),
(11, 'Success', 'Menginput Product  > 1000', '2024-05-17 16:18:44', 2, '2024-05-17 16:18:44', 2),
(12, 'Success', 'Menginput Product  > 1000', '2024-05-17 16:19:14', 2, '2024-05-17 16:19:14', 2),
(13, 'Success', 'Menginput Product  > 1200', '2024-05-17 16:20:57', 2, '2024-05-17 16:20:57', 2),
(14, 'Success', 'Menginput Product  > 1200', '2024-05-17 16:21:19', 2, '2024-05-17 16:21:19', 2),
(15, 'Success', 'Menginput Forecast Forecast Super White February Dengan Nilai 800', '2024-05-17 16:22:39', 2, '2024-05-17 16:22:39', 2),
(16, 'Success', 'Menginput Forecast Forecast Super Geranium February Dengan Nilai 800', '2024-05-17 16:23:16', 2, '2024-05-17 16:23:16', 2),
(17, 'Success', 'Menginput Product  > 1000', '2024-05-17 16:28:58', 2, '2024-05-17 16:28:58', 2),
(18, 'Success', 'Menginput Forecast Forecast Solid Green Dengan Nilai 1000', '2024-05-17 16:30:43', 2, '2024-05-17 16:30:43', 2),
(19, 'Success', 'Menginput Product  > 1200', '2024-05-17 16:33:01', 2, '2024-05-17 16:33:01', 2),
(20, 'Success', 'Menginput Product  > 1000', '2024-05-17 16:35:37', 2, '2024-05-17 16:35:37', 2),
(21, 'Success', 'Menginput Product  > 1200', '2024-05-17 16:35:57', 2, '2024-05-17 16:35:57', 2),
(22, 'Success', 'Menginput Product  > 1000', '2024-05-17 16:36:13', 2, '2024-05-17 16:36:13', 2),
(23, 'Success', 'Menginput Product  > 1200', '2024-05-17 16:36:45', 2, '2024-05-17 16:36:45', 2),
(24, 'Success', 'Menginput Product  > 1000', '2024-05-17 16:37:01', 2, '2024-05-17 16:37:01', 2),
(25, 'Success', 'Menginput Product  > 1200', '2024-05-17 16:37:23', 2, '2024-05-17 16:37:23', 2),
(26, 'Success', 'Menginput Product  > 1400', '2024-05-17 16:38:48', 2, '2024-05-17 16:38:48', 2),
(27, 'Success', 'Menginput Product  > 1400', '2024-05-17 16:39:11', 2, '2024-05-17 16:39:11', 2),
(28, 'Success', 'Menginput Product  > 1400', '2024-05-17 16:39:40', 2, '2024-05-17 16:39:40', 2),
(29, 'Success', 'Menginput Product  > 1400', '2024-05-17 16:39:57', 2, '2024-05-17 16:39:57', 2),
(30, 'Success', 'Menginput Product  > 1400', '2024-05-17 16:40:12', 2, '2024-05-17 16:40:12', 2),
(31, 'Success', 'Menginput Product  > 1400', '2024-05-17 16:40:30', 2, '2024-05-17 16:40:30', 2),
(32, 'Success', 'Menginput Product  > 1600', '2024-05-17 16:40:55', 2, '2024-05-17 16:40:55', 2),
(33, 'Success', 'Menginput Product  > 1600', '2024-05-17 16:41:12', 2, '2024-05-17 16:41:12', 2),
(34, 'Success', 'Menginput Product  > 1600', '2024-05-17 16:41:32', 2, '2024-05-17 16:41:32', 2),
(35, 'Success', 'Menginput Product  > 1600', '2024-05-17 16:41:47', 2, '2024-05-17 16:41:47', 2),
(36, 'Success', 'Menginput Product  > 1600', '2024-05-17 16:42:08', 2, '2024-05-17 16:42:08', 2),
(37, 'Success', 'Menginput Product  > 1800', '2024-05-17 16:42:48', 2, '2024-05-17 16:42:48', 2),
(38, 'Success', 'Menginput Product  > 1800', '2024-05-17 16:43:04', 2, '2024-05-17 16:43:04', 2),
(39, 'Success', 'Menginput Product  > 1800', '2024-05-17 16:43:23', 2, '2024-05-17 16:43:23', 2),
(40, 'Success', 'Menginput Product  > 1800', '2024-05-17 16:43:49', 2, '2024-05-17 16:43:49', 2),
(41, 'Success', 'Menginput Product  > 1800', '2024-05-17 16:44:08', 2, '2024-05-17 16:44:08', 2),
(42, 'Success', 'Menginput Product  > 1800', '2024-05-17 16:44:33', 2, '2024-05-17 16:44:33', 2),
(43, 'Success', 'Menginput Product  > 1600', '2024-05-17 16:45:45', 2, '2024-05-17 16:45:45', 2),
(44, 'Success', 'Menginput Product  > 1100', '2024-05-17 16:46:29', 2, '2024-05-17 16:46:29', 2),
(45, 'Success', 'Menginput Product  > 1100', '2024-05-17 16:46:46', 2, '2024-05-17 16:46:46', 2),
(46, 'Success', 'Menginput Product  > 1100', '2024-05-17 16:47:03', 2, '2024-05-17 16:47:03', 2),
(47, 'Success', 'Menginput Product  > 1100', '2024-05-17 16:47:23', 2, '2024-05-17 16:47:23', 2),
(48, 'Success', 'Menginput Product  > 1100', '2024-05-17 16:47:38', 2, '2024-05-17 16:47:38', 2),
(49, 'Success', 'Menginput Product  > 1100', '2024-05-17 16:48:17', 2, '2024-05-17 16:48:17', 2),
(50, 'Success', 'Menginput Forecast Forecast Solid Green February Dengan Nilai 800', '2024-05-17 16:51:21', 2, '2024-05-17 16:51:21', 2),
(51, 'Success', 'Menginput Forecast Forecast Red Magic Dengan Nilai 1000', '2024-05-17 16:52:37', 2, '2024-05-17 16:52:37', 2),
(52, 'Success', 'Menginput Forecast Forecast Red Magic February Dengan Nilai 800', '2024-05-17 16:53:44', 2, '2024-05-17 16:53:44', 2),
(53, 'Success', 'Menginput Forecast Forecast Blue Sky Dengan Nilai 1000', '2024-05-17 16:55:11', 2, '2024-05-17 16:55:11', 2),
(54, 'Success', 'Menginput Forecast Forecast Blue Sky February Dengan Nilai 800', '2024-05-17 16:55:44', 2, '2024-05-17 16:55:44', 2),
(55, 'Success', 'Menginput Forecast Forecast Clear Magenta Dengan Nilai 1000', '2024-05-17 16:56:18', 2, '2024-05-17 16:56:18', 2),
(56, 'Success', 'Menginput Forecast Forecast Clear Magenta February  Dengan Nilai 800', '2024-05-17 16:57:13', 2, '2024-05-17 16:57:13', 2),
(57, 'Success', 'Menginput Forecast Forecast Solid Green March Dengan Nilai 1000', '2024-05-17 17:04:40', 2, '2024-05-17 17:04:40', 2),
(58, 'Success', 'Menginput Forecast Forecast Super White March Dengan Nilai 1000', '2024-05-17 17:05:13', 2, '2024-05-17 17:05:13', 2),
(59, 'Success', 'Menginput Forecast Forecast Super Geranium March Dengan Nilai 1000', '2024-05-17 17:06:22', 2, '2024-05-17 17:06:22', 2),
(60, 'Success', 'Menginput Forecast Forecast Red Magic March Dengan Nilai 1000', '2024-05-17 17:06:54', 2, '2024-05-17 17:06:54', 2),
(61, 'Success', 'Menginput Forecast Forecast Blue Sky March Dengan Nilai 1000', '2024-05-17 17:07:31', 2, '2024-05-17 17:07:31', 2),
(62, 'Success', 'Menginput Forecast Forecast Clear Magenta March Dengan Nilai 1000', '2024-05-17 17:09:27', 2, '2024-05-17 17:09:27', 2),
(63, 'Success', 'Menginput Forecast Forecast Super White April Dengan Nilai 1200', '2024-05-17 17:10:28', 2, '2024-05-17 17:10:28', 2),
(64, 'Success', 'Menginput Forecast Forecast Solid Green April Dengan Nilai 1200', '2024-05-17 17:10:58', 2, '2024-05-17 17:10:58', 2),
(65, 'Success', 'Menginput Forecast Forecast Super Geranium April Dengan Nilai 1200', '2024-05-17 17:11:33', 2, '2024-05-17 17:11:33', 2),
(66, 'Success', 'Menginput Forecast Forecast Blue Sky April Dengan Nilai 1200', '2024-05-17 17:12:11', 2, '2024-05-17 17:12:11', 2),
(67, 'Success', 'Menginput Forecast Forecast Clear Magenta April Dengan Nilai 1200', '2024-05-17 17:12:51', 2, '2024-05-17 17:12:51', 2),
(68, 'Success', 'Menginput Forecast Forecast Solid Green May  Dengan Nilai 1500', '2024-05-17 17:13:30', 2, '2024-05-17 17:13:30', 2),
(69, 'Success', 'Menginput Forecast Forecast Super White May Dengan Nilai 1500', '2024-05-17 17:13:54', 2, '2024-05-17 17:13:54', 2),
(70, 'Success', 'Menginput Forecast Forecast Super Geranium May Dengan Nilai 1500', '2024-05-17 17:14:29', 2, '2024-05-17 17:14:29', 2),
(71, 'Success', 'Menginput Forecast Forecast Blue Sky May Dengan Nilai 1500', '2024-05-17 17:15:12', 2, '2024-05-17 17:15:12', 2),
(72, 'Success', 'Menginput Forecast Forecast Clear Magenta May Dengan Nilai 1500', '2024-05-17 17:15:44', 2, '2024-05-17 17:15:44', 2),
(73, 'Success', 'Menginput Forecast Forecast Solid Green June Dengan Nilai 900', '2024-05-17 17:16:22', 2, '2024-05-17 17:16:22', 2),
(74, 'Success', 'Menginput Forecast Forecast Super White June Dengan Nilai 900', '2024-05-17 17:17:31', 2, '2024-05-17 17:17:31', 2),
(75, 'Success', 'Menginput Forecast Forecast Super Geranium June Dengan Nilai 900', '2024-05-17 17:18:14', 2, '2024-05-17 17:18:14', 2),
(76, 'Success', 'Menginput Forecast Forecast Blue Sky June  Dengan Nilai 900', '2024-05-17 17:18:37', 2, '2024-05-17 17:18:37', 2),
(77, 'Success', 'Menginput Forecast Forecast Red Magic June Dengan Nilai 900', '2024-05-17 17:19:31', 2, '2024-05-17 17:19:31', 2),
(78, 'Success', 'Menginput Forecast Forecast Clear Magenta June Dengan Nilai 900', '2024-05-17 17:20:02', 2, '2024-05-17 17:20:02', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `code_category` varchar(255) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_technology` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `code`, `label`, `color`, `series`, `code_category`, `id_category`, `id_technology`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(3, '30043024002', 'Super White', 'White', 'Canon', 'A', 2, 2, '2024-05-17 12:44:48', 2, '0000-00-00 00:00:00', 2),
(4, '30043024003', 'Super Geranium', 'Geranium', 'TF', 'A', 2, 3, '2024-05-17 12:51:03', 2, '0000-00-00 00:00:00', 2),
(5, '30043024004', 'Red Magic', 'Red', 'TX', 'N', 3, 4, '2024-05-17 13:51:39', 2, '0000-00-00 00:00:00', 2),
(6, '30043024005', 'Blue Sky', 'Cyan', 'Lite', 'E', 2, 5, '2024-05-17 13:52:23', 2, '0000-00-00 00:00:00', 2),
(7, '30043024006', 'Clear Magenta', 'Magenta', 'FF', 'A', 2, 1, '2024-05-17 13:52:58', 2, '0000-00-00 00:00:00', 2),
(8, '30043024007', 'Super Red', 'Red', 'TX', 'B', 2, 3, '2024-05-17 13:57:15', 2, '0000-00-00 00:00:00', 2),
(9, '30043024008', 'New White', 'White', 'FF', 'A', 1, 1, '2024-05-17 13:57:49', 2, '0000-00-00 00:00:00', 2),
(10, '30043024009', 'Green Leaf', 'Green', 'AA', 'C', 2, 3, '2024-05-17 13:58:54', 2, '0000-00-00 00:00:00', 2),
(11, '30043024010', 'New Blue', 'Dark Blue', 'TM', 'N', 3, 2, '2024-05-17 13:59:42', 2, '0000-00-00 00:00:00', 2),
(12, '30043024011', 'Block Blue', 'Blue', 'RF', 'A', 2, 2, '2024-05-17 14:00:30', 2, '0000-00-00 00:00:00', 2),
(13, '3004302401', 'Solid Green', 'Green', 'AB', 'C', 3, 1, '2024-05-17 14:01:08', 2, '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `qc`
--

CREATE TABLE `qc` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `load_number` varchar(255) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `production_date` date NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `qc`
--

INSERT INTO `qc` (`id`, `id_product`, `load_number`, `qty`, `production_date`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(3, 3, '1000', 1000, '2024-01-01', '2024-05-17 16:18:44', 2, '2024-05-17 16:18:44', 2),
(4, 4, '1000', 1000, '2024-01-04', '2024-05-17 16:19:14', 2, '2024-05-17 16:19:14', 2),
(5, 3, '1200', 1200, '2024-02-01', '2024-05-17 16:20:57', 2, '2024-05-17 16:20:57', 2),
(6, 4, '1200', 1200, '2024-02-04', '2024-05-17 16:21:19', 2, '2024-05-17 16:21:19', 2),
(7, 13, 'A2141', 1000, '2024-01-01', '2024-05-17 16:28:58', 2, '2024-05-17 16:28:58', 2),
(8, 13, 'SG002', 1200, '2024-02-01', '2024-05-17 16:33:01', 2, '2024-05-17 16:33:01', 2),
(9, 5, 'RM001', 1000, '2024-01-01', '2024-05-17 16:35:37', 2, '2024-05-17 16:35:37', 2),
(10, 5, 'RM002', 1200, '2024-02-01', '2024-05-17 16:35:57', 2, '2024-05-17 16:35:57', 2),
(11, 6, 'BS001', 1000, '2024-01-01', '2024-05-17 16:36:13', 2, '2024-05-17 16:36:13', 2),
(12, 6, 'BS002', 1200, '2024-02-01', '2024-05-17 16:36:45', 2, '2024-05-17 16:36:45', 2),
(13, 7, 'CM001', 1000, '2024-01-01', '2024-05-17 16:37:01', 2, '2024-05-17 16:37:01', 2),
(14, 7, 'CM002', 1200, '2024-02-01', '2024-05-17 16:37:23', 2, '2024-05-17 16:37:23', 2),
(15, 13, 'SG003', 1400, '2024-03-01', '2024-05-17 16:38:48', 2, '2024-05-17 16:38:48', 2),
(16, 3, 'SW003', 1400, '2024-03-01', '2024-05-17 16:39:11', 2, '2024-05-17 16:39:11', 2),
(17, 4, 'SG003', 1400, '2024-03-01', '2024-05-17 16:39:40', 2, '2024-05-17 16:39:40', 2),
(18, 5, 'RM003', 1400, '2024-03-01', '2024-05-17 16:39:57', 2, '2024-05-17 16:39:57', 2),
(19, 6, 'BS003', 1400, '2024-03-01', '2024-05-17 16:40:12', 2, '2024-05-17 16:40:12', 2),
(20, 7, 'CM003', 1400, '2024-05-01', '2024-05-17 16:40:30', 2, '2024-05-17 16:40:30', 2),
(21, 13, 'SG004', 1600, '2024-04-01', '2024-05-17 16:40:55', 2, '2024-05-17 16:40:55', 2),
(22, 3, 'SW004', 1600, '2024-04-01', '2024-05-17 16:41:12', 2, '2024-05-17 16:41:12', 2),
(23, 4, 'SG004', 1600, '2024-04-01', '2024-05-17 16:41:32', 2, '2024-05-17 16:41:32', 2),
(24, 5, 'RM004', 1600, '2024-04-01', '2024-05-17 16:41:47', 2, '2024-05-17 16:41:47', 2),
(25, 6, 'BS004', 1600, '2024-04-01', '2024-05-17 16:42:08', 2, '2024-05-17 16:42:08', 2),
(26, 13, 'SG005', 1800, '2024-05-01', '2024-05-17 16:42:48', 2, '2024-05-17 16:42:48', 2),
(27, 3, 'SW005', 1800, '2024-05-01', '2024-05-17 16:43:04', 2, '2024-05-17 16:43:04', 2),
(28, 4, 'SG005', 1800, '2024-05-01', '2024-05-17 16:43:23', 2, '2024-05-17 16:43:23', 2),
(29, 5, 'RM005', 1800, '2024-05-01', '2024-05-17 16:43:49', 2, '2024-05-17 16:43:49', 2),
(30, 6, 'BS005', 1800, '2024-05-01', '2024-05-17 16:44:08', 2, '2024-05-17 16:44:08', 2),
(31, 7, 'CM005', 1800, '2024-05-01', '2024-05-17 16:44:33', 2, '2024-05-17 16:44:33', 2),
(32, 7, 'CM004', 1600, '2024-04-01', '2024-05-17 16:45:45', 2, '2024-05-17 16:45:45', 2),
(33, 13, 'SG006', 1100, '2024-06-01', '2024-05-17 16:46:29', 2, '2024-05-17 16:46:29', 2),
(34, 3, 'SW006', 1100, '2024-06-01', '2024-05-17 16:46:46', 2, '2024-05-17 16:46:46', 2),
(35, 4, 'SG006', 1100, '2024-06-01', '2024-05-17 16:47:03', 2, '2024-05-17 16:47:03', 2),
(36, 5, 'RM006', 1100, '2024-06-01', '2024-05-17 16:47:23', 2, '2024-05-17 16:47:23', 2),
(37, 6, 'BS006', 1100, '2024-06-01', '2024-05-17 16:47:38', 2, '2024-05-17 16:47:38', 2),
(38, 7, 'CM006', 1100, '2024-06-01', '2024-05-17 16:48:17', 2, '2024-05-17 16:48:17', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `level`, `label`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(2, 2, 'Owner', '2024-04-29 10:42:33', 1, '2024-04-29 10:42:33', 1),
(3, 3, 'Marketing', '2024-04-29 13:16:23', 1, '2024-04-29 13:16:23', 1),
(4, 4, 'PIC', '2024-04-29 13:16:46', 1, '2024-04-29 13:16:46', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_forecast` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `id_user`, `id_forecast`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, 1, '2024-05-03 16:11:09', 1, '2024-05-03 16:11:09', 1),
(2, 2, 1, '2024-05-03 16:11:09', 1, '2024-05-03 16:11:09', 1),
(3, 6, 2, '2024-05-17 15:58:08', 2, '2024-05-17 15:58:08', 2),
(4, 6, 3, '2024-05-17 16:02:50', 2, '2024-05-17 16:02:50', 2),
(5, 6, 4, '2024-05-17 16:14:11', 2, '2024-05-17 16:14:11', 2),
(6, 6, 5, '2024-05-17 16:16:35', 2, '2024-05-17 16:16:35', 2),
(7, 6, 6, '2024-05-17 16:22:39', 2, '2024-05-17 16:22:39', 2),
(8, 6, 7, '2024-05-17 16:23:16', 2, '2024-05-17 16:23:16', 2),
(9, 6, 8, '2024-05-17 16:30:43', 2, '2024-05-17 16:30:43', 2),
(10, 6, 9, '2024-05-17 16:51:21', 2, '2024-05-17 16:51:21', 2),
(11, 6, 10, '2024-05-17 16:52:37', 2, '2024-05-17 16:52:37', 2),
(12, 6, 11, '2024-05-17 16:53:44', 2, '2024-05-17 16:53:44', 2),
(13, 6, 12, '2024-05-17 16:55:11', 2, '2024-05-17 16:55:11', 2),
(14, 6, 13, '2024-05-17 16:55:44', 2, '2024-05-17 16:55:44', 2),
(15, 6, 14, '2024-05-17 16:56:18', 2, '2024-05-17 16:56:18', 2),
(16, 6, 15, '2024-05-17 16:57:13', 2, '2024-05-17 16:57:13', 2),
(17, 6, 16, '2024-05-17 17:04:40', 2, '2024-05-17 17:04:40', 2),
(18, 6, 17, '2024-05-17 17:05:13', 2, '2024-05-17 17:05:13', 2),
(19, 6, 18, '2024-05-17 17:06:22', 2, '2024-05-17 17:06:22', 2),
(20, 6, 19, '2024-05-17 17:06:54', 2, '2024-05-17 17:06:54', 2),
(21, 6, 20, '2024-05-17 17:07:31', 2, '2024-05-17 17:07:31', 2),
(22, 6, 21, '2024-05-17 17:09:27', 2, '2024-05-17 17:09:27', 2),
(23, 6, 22, '2024-05-17 17:10:28', 2, '2024-05-17 17:10:28', 2),
(24, 6, 23, '2024-05-17 17:10:58', 2, '2024-05-17 17:10:58', 2),
(25, 6, 24, '2024-05-17 17:11:33', 2, '2024-05-17 17:11:33', 2),
(26, 6, 25, '2024-05-17 17:12:11', 2, '2024-05-17 17:12:11', 2),
(27, 6, 26, '2024-05-17 17:12:51', 2, '2024-05-17 17:12:51', 2),
(28, 6, 27, '2024-05-17 17:13:30', 2, '2024-05-17 17:13:30', 2),
(29, 6, 28, '2024-05-17 17:13:54', 2, '2024-05-17 17:13:54', 2),
(30, 6, 29, '2024-05-17 17:14:29', 2, '2024-05-17 17:14:29', 2),
(31, 6, 30, '2024-05-17 17:15:12', 2, '2024-05-17 17:15:12', 2),
(32, 6, 31, '2024-05-17 17:15:44', 2, '2024-05-17 17:15:44', 2),
(33, 6, 32, '2024-05-17 17:16:22', 2, '2024-05-17 17:16:22', 2),
(34, 6, 33, '2024-05-17 17:17:31', 2, '2024-05-17 17:17:31', 2),
(35, 6, 34, '2024-05-17 17:18:14', 2, '2024-05-17 17:18:14', 2),
(36, 6, 35, '2024-05-17 17:18:37', 2, '2024-05-17 17:18:37', 2),
(37, 6, 36, '2024-05-17 17:19:31', 2, '2024-05-17 17:19:31', 2),
(38, 6, 37, '2024-05-17 17:20:02', 2, '2024-05-17 17:20:02', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `technology`
--

CREATE TABLE `technology` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `technology`
--

INSERT INTO `technology` (`id`, `label`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'VINNYL', '2024-04-29 15:29:26', 2, '2024-04-29 15:29:26', 2),
(2, 'PU', '2024-05-17 12:36:34', 2, '2024-05-17 12:36:34', 2),
(3, 'NC / PA', '2024-05-17 12:36:46', 2, '2024-05-17 12:36:46', 2),
(4, 'ACRLYC', '2024-05-17 12:37:11', 2, '2024-05-17 12:37:11', 2),
(5, 'CLPP', '2024-05-17 12:38:07', 2, '2024-05-17 12:38:07', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenis_kelamin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kontak` varchar(50) NOT NULL,
  `id_role` int(1) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `jenis_kelamin`, `username`, `password`, `kontak`, `id_role`, `photo`, `id_shop`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Zyarga', 'zyargacode@gmail.com', 0, 'zyarga', '202cb962ac59075b964b07152d234b70', '081384215205', 1, 'default.png', 0, '2024-04-29 10:01:11', 1, '2024-04-29 10:01:11', 1),
(2, 'Hamid', 'hamid@gmail.com', 0, 'hamid', '202cb962ac59075b964b07152d234b70', '21312321', 2, 'default.png', 1, '2024-04-29 10:43:43', 1, '2024-04-29 10:43:43', 1),
(3, 'Marketing', 'marketing@gmail.com', 0, 'marketing', '202cb962ac59075b964b07152d234b70', '12321', 3, 'default.png', 0, '2024-05-02 15:27:26', 2, '2024-05-02 15:27:26', 2),
(6, 'Infy M', 'infynerf2@gmail.com', 0, 'Infy', '202cb962ac59075b964b07152d234b70', '0123049', 4, 'default.png', 0, '2024-05-17 14:14:34', 2, '2024-05-17 14:14:34', 2),
(7, 'Aubrey Graham', '2@2', 0, 'Drake', '202cb962ac59075b964b07152d234b70', '01230588', 3, 'default.png', 0, '2024-05-17 14:36:16', 2, '2024-05-17 14:36:16', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `forecast`
--
ALTER TABLE `forecast`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `qc`
--
ALTER TABLE `qc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `forecast`
--
ALTER TABLE `forecast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `qc`
--
ALTER TABLE `qc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `technology`
--
ALTER TABLE `technology`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
