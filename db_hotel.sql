-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 01:42 PM
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
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `kode_bk` bigint(20) UNSIGNED NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `kode_hotel` varchar(255) NOT NULL,
  `kode_kamar` varchar(255) NOT NULL,
  `kode_layanan` varchar(255) NOT NULL,
  `durasi_menginap` varchar(255) NOT NULL,
  `total_tagihan` varchar(255) NOT NULL,
  `status_bk` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`kode_bk`, `id_user`, `kode_hotel`, `kode_kamar`, `kode_layanan`, `durasi_menginap`, `total_tagihan`, `status_bk`, `created_at`, `updated_at`) VALUES
(1, '45', '87', '23', '12', '5', '450000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(2, '16', '59', '33', '89', '7', '570000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(3, '54', '21', '78', '44', '4', '320000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(4, '3', '61', '85', '18', '6', '380000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(5, '92', '44', '9', '11', '3', '200000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(6, '75', '25', '55', '67', '5', '450000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(7, '36', '63', '62', '30', '8', '500000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(8, '22', '71', '57', '14', '10', '550000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(9, '88', '36', '43', '63', '9', '430000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(10, '66', '18', '19', '91', '7', '370000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(11, '48', '99', '15', '4', '6', '330000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(12, '55', '70', '65', '26', '5', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(13, '39', '68', '72', '49', '8', '460000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(14, '21', '20', '36', '79', '11', '520000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(15, '60', '40', '69', '80', '4', '310000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(16, '79', '16', '12', '5', '9', '420000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(17, '98', '74', '27', '88', '3', '250000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(18, '72', '58', '74', '13', '5', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(19, '32', '41', '91', '23', '8', '480000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(20, '24', '35', '61', '47', '6', '340000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(21, '51', '83', '46', '15', '7', '390000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(22, '15', '56', '67', '25', '9', '460000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(23, '57', '85', '29', '32', '6', '330000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(24, '11', '64', '84', '52', '7', '390000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(25, '30', '62', '51', '40', '3', '250000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(26, '26', '28', '77', '81', '4', '310000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(27, '33', '82', '68', '9', '5', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(28, '14', '48', '25', '56', '8', '440000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(29, '9', '19', '12', '41', '6', '380000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(30, '12', '50', '69', '78', '7', '420000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(31, '61', '15', '82', '55', '5', '350000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(32, '5', '48', '34', '63', '4', '300000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(33, '41', '52', '70', '19', '9', '470000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(34, '56', '17', '49', '7', '7', '390000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(35, '28', '78', '26', '56', '8', '440000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(36, '70', '57', '35', '68', '6', '340000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(37, '80', '59', '10', '77', '4', '300000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(38, '16', '81', '58', '5', '7', '420000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(39, '65', '73', '60', '30', '5', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(40, '58', '44', '56', '67', '8', '460000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(41, '22', '77', '80', '91', '3', '270000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(42, '99', '26', '9', '24', '6', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(43, '9', '36', '63', '20', '5', '310000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(44, '61', '89', '77', '64', '8', '430000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(45, '61', '41', '36', '75', '3', '250000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(46, '10', '53', '18', '65', '7', '380000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(47, '99', '83', '58', '31', '4', '300000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(48, '60', '29', '12', '91', '9', '460000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(49, '51', '14', '48', '24', '8', '430000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(50, '78', '44', '61', '69', '6', '370000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(51, '62', '81', '32', '50', '8', '440000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(52, '74', '69', '11', '17', '5', '320000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(53, '29', '76', '27', '35', '6', '330000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(54, '39', '23', '80', '68', '7', '380000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(55, '87', '60', '53', '81', '8', '470000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(56, '45', '32', '72', '45', '9', '420000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(57, '91', '19', '57', '91', '6', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(58, '14', '63', '31', '78', '3', '290000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(59, '81', '57', '44', '90', '5', '350000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(60, '72', '53', '39', '67', '7', '380000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(61, '80', '36', '40', '52', '8', '450000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(62, '52', '26', '74', '15', '9', '470000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(63, '17', '78', '49', '28', '6', '360000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(64, '44', '60', '81', '60', '8', '420000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(65, '3', '69', '29', '76', '4', '330000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(66, '94', '54', '68', '61', '7', '440000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(67, '84', '37', '74', '62', '9', '450000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(68, '67', '49', '50', '9', '3', '270000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(69, '69', '80', '55', '23', '6', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(70, '12', '51', '42', '10', '8', '430000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(71, '23', '27', '47', '88', '5', '320000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(72, '30', '38', '50', '25', '9', '450000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(73, '53', '64', '75', '66', '6', '400000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(74, '11', '22', '29', '52', '7', '370000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(75, '39', '62', '44', '56', '4', '300000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(76, '88', '56', '23', '80', '3', '290000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(77, '5', '17', '11', '19', '6', '340000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(78, '26', '47', '61', '39', '8', '420000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(79, '61', '51', '53', '78', '7', '450000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(80, '8', '39', '56', '23', '9', '380000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(81, '66', '58', '72', '61', '4', '440000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(82, '89', '43', '49', '70', '6', '420000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(83, '36', '51', '22', '59', '7', '450000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(84, '74', '64', '49', '30', '8', '380000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(85, '55', '77', '40', '64', '5', '470000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(86, '47', '59', '39', '56', '4', '350000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(87, '11', '80', '35', '74', '3', '320000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(88, '23', '46', '54', '32', '9', '400000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(89, '77', '58', '61', '67', '7', '440000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(90, '92', '29', '62', '77', '8', '350000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(91, '49', '57', '70', '48', '5', '420000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(92, '19', '69', '59', '45', '6', '300000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(94, '63', '48', '37', '54', '8', '380000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(95, '9', '71', '57', '39', '6', '390000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(96, '72', '35', '52', '63', '4', '470000', 'menunggu konfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(97, '88', '62', '43', '79', '5', '420000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(98, '63', '49', '70', '29', '7', '300000', 'dibatalkan', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(100, '38', '57', '69', '72', '9', '450000', 'terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:19:58'),
(101, '101', '13', '3', '10', '8', '8800000', 'Terkonfirmasi', '2025-01-07 05:19:58', '2025-01-07 05:20:20'),
(102, '102', '12', '13', '15', '27', '30240000', 'Menunggu Konfirmasi', '2025-01-07 05:38:30', '2025-01-07 05:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `kode_hotel` bigint(20) UNSIGNED NOT NULL,
  `nama_hotel` varchar(255) NOT NULL,
  `desc_hotel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`kode_hotel`, `nama_hotel`, `desc_hotel`, `created_at`, `updated_at`) VALUES
(2, 'Hotel Sunrise', 'Hotel bintang lima dengan pemandangan matahari terbit yang indah', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(3, 'Grand Palace Hotel', 'Hotel mewah dengan fasilitas lengkap dan layanan prima', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(4, 'Ocean Breeze Resort', 'Resort di tepi pantai dengan suasana tropis yang menenangkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(5, 'Mountain View Inn', 'Hotel nyaman dengan pemandangan pegunungan yang menakjubkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(6, 'City Central Hotel', 'Hotel bisnis dengan lokasi strategis di pusat kota', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(7, 'Lakeside Retreat', 'Retret mewah di tepi danau dengan fasilitas spa lengkap', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(8, 'Skyline Hotel', 'Hotel tinggi dengan pemandangan kota yang menakjubkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(9, 'Seaside Resort', 'Resort pantai dengan akses langsung ke laut dan restoran seafood', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(10, 'Sunset Lodge', 'Penginapan kecil dengan pemandangan matahari terbenam yang spektakuler', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(11, 'Green Valley Hotel', 'Hotel ramah lingkungan dengan taman dan kebun hijau', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(12, 'Desert Oasis', 'Hotel mewah di tengah gurun dengan kolam renang terbesar', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(13, 'Royal Beach Resort', 'Resor mewah dengan pantai pribadi dan fasilitas spa kelas dunia', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(14, 'Urban Retreat', 'Hotel di tengah kota dengan nuansa tenang dan layanan kelas atas', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(15, 'Safari Lodge', 'Penginapan unik dengan nuansa safari dan petualangan alam', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(16, 'Coral Reef Resort', 'Resort tepi laut dengan terumbu karang yang indah untuk snorkeling', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(17, 'Forest Hideaway', 'Resort terpencil di hutan yang menyajikan suasana damai dan alami', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(18, 'Palace Hotel', 'Hotel mewah bergaya kerajaan dengan fasilitas kelas dunia', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(19, 'Cultural Heritage Inn', 'Penginapan dengan tema budaya lokal dan fasilitas modern', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(20, 'Hillside Villa', 'Vila pribadi dengan pemandangan perbukitan dan kolam renang pribadi', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(21, 'Coastal Breeze Hotel', 'Hotel pantai dengan akses mudah ke olahraga air dan restoran laut', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(22, 'Mountain Lodge', 'Hotel di kaki gunung dengan banyak aktivitas alam untuk keluarga', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(23, 'Tropical Paradise Resort', 'Resort tropis dengan akses langsung ke pantai dan hutan hujan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(24, 'Lakeview Suites', 'Apartemen mewah dengan pemandangan danau yang menakjubkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(25, 'City Lights Hotel', 'Hotel dengan pemandangan indah ke kota dan akses mudah ke atraksi lokal', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(26, 'Riverfront Inn', 'Hotel dengan pemandangan sungai dan suasana yang tenang', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(27, 'Luxury Mountain Resort', 'Resort mewah dengan akses ke jalur hiking dan olahraga salju', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(28, 'Sunshine Villa', 'Vila yang nyaman dengan pemandangan pantai dan taman tropis', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(29, 'Woodland Escape', 'Penginapan di tengah hutan dengan suasana yang sejuk dan nyaman', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(30, 'Coral Beach Resort', 'Resort di pantai berpasir putih dengan fasilitas olahraga air lengkap', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(31, 'City Plaza Hotel', 'Hotel modern di pusat kota dengan berbagai restoran dan toko-toko', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(32, 'Cliffside Lodge', 'Penginapan di tebing dengan pemandangan luar biasa ke laut', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(33, 'Golden Sands Resort', 'Resort mewah dengan pasir emas dan fasilitas pantai eksklusif', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(34, 'Hidden Valley Inn', 'Penginapan terpencil dengan suasana tenang dan akses ke alam', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(35, 'Heritage Hotel', 'Hotel bersejarah dengan desain klasik dan fasilitas modern', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(36, 'Starlight Resort', 'Resort bintang lima dengan restoran bintang Michelin dan layanan luar biasa', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(37, 'Silver Lake Inn', 'Hotel di sekitar danau dengan fasilitas rekreasi dan olahraga air', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(38, 'Wildflower Retreat', 'Retret alam dengan fokus pada kesehatan dan ketenangan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(39, 'Skyview Hotel', 'Hotel dengan pemandangan cakrawala kota yang memukau dan rooftop bar', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(40, 'Eco Resort', 'Resor yang berfokus pada keberlanjutan dengan aktivitas berbasis alam', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(41, 'Luxury Lagoon Hotel', 'Hotel mewah di tepi laguna dengan taman tropis dan kolam renang', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(42, 'Canyon View Lodge', 'Penginapan dengan pemandangan jurang yang memukau dan jalur hiking', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(43, 'Treetop Inn', 'Hotel unik yang dibangun di atas pohon dengan pemandangan hutan tropis', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(44, 'Seaview Resort', 'Resort dengan pantai pribadi dan banyak aktivitas laut', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(45, 'Alpine Lodge', 'Penginapan di dataran tinggi dengan udara segar dan pemandangan pegunungan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(46, 'Golden Gate Hotel', 'Hotel mewah di pusat kota dengan fasilitas spa dan restoran bintang lima', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(47, 'Horizon Beach Resort', 'Resort pantai dengan restoran seafood dan pemandangan matahari terbenam', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(48, 'Pine Hill Resort', 'Resort dengan suasana pegunungan dan fasilitas untuk keluarga', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(49, 'Majestic Oceanview', 'Hotel dengan pemandangan samudra luas dan kolam renang infinity', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(50, 'City Garden Hotel', 'Hotel hijau di tengah kota dengan taman dan fasilitas eco-friendly', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(51, 'Lush Forest Inn', 'Hotel berbasis alam dengan fasilitas ramah lingkungan dan taman rimbun', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(52, 'Seabreeze Inn', 'Penginapan di pinggir pantai dengan suasana santai dan tenang', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(53, 'Serenity Bay Resort', 'Resort tenang di teluk yang jauh dari keramaian', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(54, 'Crystal Waters Hotel', 'Hotel dengan akses langsung ke danau jernih dan fasilitas rekreasi', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(55, 'Lakefront Villa', 'Vila mewah di tepi danau dengan fasilitas kelas atas dan privasi penuh', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(56, 'Royal Garden Resort', 'Resort bintang lima dengan taman yang luas dan fasilitas istana', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(57, 'Sunset Bay Hotel', 'Hotel yang terletak di teluk dengan pemandangan matahari terbenam yang indah', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(58, 'Blue Lagoon Resort', 'Resort di laguna dengan air jernih dan akses ke olahraga air', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(59, 'Riverside Hotel', 'Hotel tepi sungai dengan akses mudah ke jalur hiking dan aktivitas luar ruangan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(60, 'Grandview Hotel', 'Hotel tinggi dengan pemandangan kota dan fasilitas mewah', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(61, 'Parkside Inn', 'Penginapan yang nyaman di dekat taman kota dengan fasilitas keluarga', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(62, 'Lakeside View Resort', 'Resort dengan pemandangan danau dan fasilitas air olahraga', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(63, 'Oceanfront Inn', 'Penginapan dengan pemandangan laut dan akses mudah ke pantai', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(64, 'Tropical Oasis Resort', 'Resort tropis dengan kebun hijau dan kolam renang besar', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(65, 'Waveside Hotel', 'Hotel di pinggir laut dengan fasilitas luar biasa untuk liburan keluarga', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(66, 'Woodland Escape Resort', 'Resort dalam hutan dengan suasana damai dan fasilitas lengkap', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(67, 'Vista Grand Hotel', 'Hotel modern dengan pemandangan luar biasa dan fasilitas premium', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(68, 'Marina Bay Resort', 'Resort tepi laut dengan marina dan berbagai aktivitas perahu', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(69, 'Mountain View Resort', 'Resort dengan pemandangan pegunungan dan berbagai kegiatan alam', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(70, 'Horizon Vista Inn', 'Penginapan dengan pemandangan cakrawala dan suasana yang menenangkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(71, 'Sunrise Haven', 'Vila di atas bukit dengan pemandangan matahari terbit yang luar biasa', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(72, 'Coral Bay Resort', 'Resort yang indah di pantai dengan kegiatan bawah laut yang luar biasa', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(73, 'Golden Sands Resort', 'Resort dengan pasir putih dan fasilitas mewah', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(74, 'Palm Island Resort', 'Resort di pulau pribadi dengan fasilitas spa dan olahraga air', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(75, 'Echo Valley Hotel', 'Hotel bergaya pedesaan dengan pemandangan lembah dan suasana tenang', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(76, 'Blue Ridge Resort', 'Resort di pegunungan dengan fasilitas keluarga dan petualangan luar ruangan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(77, 'Sunset Hill Hotel', 'Hotel dengan pemandangan matahari terbenam di tepi bukit', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(78, 'Sand Dunes Inn', 'Hotel dengan akses mudah ke gurun dan pemandangan pasir yang menakjubkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(79, 'Island Breeze Resort', 'Resort dengan angin laut sejuk dan fasilitas pantai yang luas', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(80, 'Shoreline Resort', 'Resort di tepi pantai dengan kolam renang infinity', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(81, 'Crystal Cove Resort', 'Resort tepi laut dengan akses langsung ke cove pribadi', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(82, 'Jungle Retreat', 'Retret di tengah hutan dengan fasilitas meditasi dan relaksasi', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(83, 'Royal View Hotel', 'Hotel mewah dengan pemandangan kerajaan dan fasilitas kelas satu', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(84, 'Celestial Hotel', 'Hotel dengan desain futuristik dan layanan premium', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(85, 'Mountain Springs Resort', 'Resort di kaki gunung dengan air terjun dan aktivitas outdoor', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(86, 'Seaside Heights Hotel', 'Hotel tinggi dengan pemandangan luar biasa ke laut', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(87, 'Waterfront Villa', 'Vila di tepi laut dengan kolam renang pribadi dan pemandangan indah', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(88, 'Oasis Retreat', 'Retret di tengah padang pasir dengan fasilitas mewah', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(89, 'Seashell Hotel', 'Hotel di tepi pantai dengan akses ke olahraga air dan pasir putih', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(90, 'Tropical Breeze Resort', 'Resort tropis dengan fasilitas lengkap dan kolam renang besar', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(91, 'Cascading Falls Inn', 'Penginapan dengan pemandangan air terjun yang menakjubkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(92, 'Sundown Hotel', 'Hotel dengan pemandangan matahari terbenam yang spektakuler', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(93, 'Starfish Resort', 'Resort di pantai dengan pemandangan terumbu karang dan kegiatan snorkeling', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(94, 'Alpine Springs Hotel', 'Hotel gunung dengan pemandangan pegunungan dan fasilitas salju', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(95, 'Coastal Retreat', 'Retret tepi laut dengan suasana tenang dan fasilitas relaksasi', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(96, 'Riverview Lodge', 'Penginapan dengan pemandangan sungai dan suasana alami', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(97, 'Celestial Bay Resort', 'Resort di teluk dengan pemandangan langit yang menakjubkan', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(98, 'Summit Peak Hotel', 'Hotel di puncak gunung dengan pemandangan spektakuler', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(99, 'Sunset Island Hotel', 'Hotel di pulau kecil dengan pemandangan matahari terbenam', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(100, 'Beachside Resort', 'Resort pantai dengan kolam renang luar ruangan dan kegiatan pantai', '2025-01-07 10:06:50', '2025-01-07 10:06:50'),
(101, 'Crystal Ridge Hotel', 'Hotel berbintang lima dengan pemandangan bukit dan kolam renang infinity', '2025-01-07 10:06:50', '2025-01-07 10:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `kode_kamar` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) NOT NULL,
  `harga_kamar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`kode_kamar`, `nama_kamar`, `harga_kamar`, `created_at`, `updated_at`) VALUES
(1, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(2, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(3, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(4, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(5, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(6, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(7, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(8, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(9, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(10, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(11, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(12, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(13, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(14, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(15, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(16, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(17, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(18, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(19, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(20, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(21, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(22, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(23, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(24, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(25, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(26, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(27, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(28, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(29, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(30, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(31, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(32, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(33, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(34, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(35, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(36, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(37, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(38, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(39, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(40, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(41, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(42, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(43, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(44, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(45, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(46, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(47, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(48, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(49, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(50, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(51, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(52, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(53, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(54, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(55, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(56, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(57, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(58, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(59, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(60, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(61, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(62, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(63, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(64, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(65, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(66, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(67, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(68, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(69, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(70, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(71, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(72, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(73, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(74, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(75, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(76, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(77, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(78, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(79, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(80, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(81, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(82, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(83, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(84, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(85, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(86, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(87, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(88, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(89, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(90, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(91, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(92, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(93, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(94, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(95, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(96, 'Kamar Standard', '500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(97, 'Kamar Deluxe', '750000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(98, 'Kamar Suite', '1000000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(99, 'Kamar Executive', '1500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21'),
(100, 'Kamar Presiden', '2500000', '2025-01-07 10:09:21', '2025-01-07 10:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `kode_layanan` bigint(20) UNSIGNED NOT NULL,
  `nama_layanan` varchar(255) NOT NULL,
  `harga_layanan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`kode_layanan`, `nama_layanan`, `harga_layanan`, `created_at`, `updated_at`) VALUES
(1, 'Pembersihan Kamar', '50000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(2, 'Layanan Antar Jemput', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(3, 'Layanan Makan Malam', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(4, 'Spa dan Pijat', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(5, 'Layanan Laundry', '75000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(6, 'Layanan Penyewaan Mobil', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(7, 'Layanan Wi-Fi Premium', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(8, 'Paket Tour Wisata', '400000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(9, 'Layanan Kamar 24 Jam', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(10, 'Layanan Sarapan Pagi', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(11, 'Layanan Penyewaan Sepeda', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(12, 'Layanan Sewa Ruang Rapat', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(13, 'Paket Spa Romantis', '700000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(14, 'Layanan Antariksa', '80000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(15, 'Layanan Pet Grooming', '120000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(16, 'Paket Pernikahan', '2000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(17, 'Layanan Makan Siang', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(18, 'Layanan Penyewaan Peralatan Olahraga', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(19, 'Paket Kesehatan', '350000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(20, 'Layanan Pengiriman Makanan', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(21, 'Layanan Fotografi', '600000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(22, 'Paket Aktivitas Anak', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(23, 'Layanan Bimbingan Yoga', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(24, 'Layanan Layanan Kesehatan Darurat', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(25, 'Layanan Sewa Mobil Mewah', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(26, 'Layanan Pembelian Tiket Pesawat', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(27, 'Paket Liburan', '3000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(28, 'Layanan Menyewa Kostum', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(29, 'Layanan Teater dan Hiburan', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(30, 'Layanan Belanja Pribadi', '350000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(31, 'Layanan Pijat Refleksi', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(32, 'Layanan Penyewaan Ruang Karaoke', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(33, 'Paket Pesta Ulang Tahun', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(34, 'Layanan Pengasuhan Anak', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(35, 'Paket Resor Kesehatan', '1500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(36, 'Layanan Penyewaan Kolam Renang', '400000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(37, 'Layanan Layanan Makan Siang Pribadi', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(38, 'Paket Kegiatan Olahraga', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(39, 'Layanan Penyewaan Alat Memasak', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(40, 'Layanan Penyewaan Dekorasi', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(41, 'Layanan Pengiriman Barang', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(42, 'Layanan Keamanan Khusus', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(43, 'Layanan Sewa Gedung', '2000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(44, 'Layanan Rentang Waktu Hotel', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(45, 'Layanan Pembersihan Telp', '50000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(46, 'Layanan Sewa Pembalut Hotel', '75000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(47, 'Layanan Pembuatan Kue', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(48, 'Layanan Penyewaan Speaker', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(49, 'Layanan Rekaman Suara', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(50, 'Layanan Layanan Pribadi', '350000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(51, 'Layanan Penyewaan Ruang Santai', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(52, 'Layanan Parkir Mobil', '50000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(53, 'Layanan Teater Video', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(54, 'Layanan Penyewaan Tempat Duduk Outdoor', '75000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(55, 'Paket Pesta Sederhana', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(56, 'Layanan Pengiriman Makanan Malam', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(57, 'Layanan Pembelian Tiket Pertunjukan', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(58, 'Layanan Musik Langsung', '400000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(59, 'Layanan Perawatan Kecantikan', '600000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(60, 'Layanan Makanan Ringan', '75000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(61, 'Layanan Ruang Meditasi', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(62, 'Layanan Pendidikan Anak', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(63, 'Layanan Penyewaan Peralatan Pesta', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(64, 'Layanan Pengiriman Bunga', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(65, 'Layanan Penyewaan Fasilitas Konferensi', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(66, 'Layanan Pembuatan Makanan Kecil', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(67, 'Layanan Penyewaan Tenda', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(68, 'Layanan Penyewaan Sound System', '300000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(69, 'Layanan Pembayaran Tiket', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(70, 'Layanan Yoga Pagi', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(71, 'Layanan Sewa Baju Pengantin', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(72, 'Layanan Pembelian Perhiasan', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(73, 'Paket Pesta Kolam Renang', '600000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(74, 'Layanan Penyewaan Taman', '350000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(75, 'Layanan Ruang Perjamuan', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(76, 'Layanan Pembuatan Karangan Bunga', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(77, 'Layanan Pengantaran Pesanan', '150000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(78, 'Layanan Pembelian Tiket Acara', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(79, 'Layanan Penyewaan Mesin Pembuat Kopi', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(80, 'Layanan Katering Khusus', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(81, 'Layanan Pembelian Pakaian', '200000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(82, 'Layanan Penyewaan Mesin Fotokopi', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(83, 'Layanan Pencucian Mobil', '75000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(84, 'Paket Layanan Kemewahan', '1500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(85, 'Layanan Makan Siang Pribadi', '250000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(86, 'Layanan Pengiriman Pakaian', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(87, 'Layanan Penyewaan Tempat Parkir', '50000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(88, 'Layanan Medis Darurat', '2000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(89, 'Layanan Penyewaan Kursi Roda', '100000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(90, 'Layanan Penyewaan Panggung', '400000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(91, 'Layanan Layanan Resor', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(92, 'Layanan Makanan Meja Bulat', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(93, 'Layanan Penyewaan Studio', '500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(94, 'Layanan Sewa Kolam Renang Pribadi', '750000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(95, 'Layanan Penyewaan Ruang Rapat Mewah', '2000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(96, 'Layanan Pengaturan Acara Khusus', '1500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(97, 'Paket Perayaan Tahun Baru', '2500000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(98, 'Layanan Sewa Ruang Theater', '1000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(99, 'Layanan Penyewaan Meja Buffet', '400000', '2025-01-07 10:11:32', '2025-01-07 10:11:32'),
(100, 'Layanan Pesta Pribadi', '3000000', '2025-01-07 10:11:32', '2025-01-07 10:11:32');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_29_114138_add_type_to_users_table', 1),
(5, '2025_01_04_170437_create_layanans_table', 1),
(6, '2025_01_05_160837_create_hotels_table', 1),
(7, '2025_01_05_162131_create_kamars_table', 1),
(8, '2025_01_05_183701_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('x3rxmDGfMwVQuRZhdRexWrfT0fOLyJLkA6qNJJb1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWpZblJ6TlJMaFpsSEpqYk9RVzQ0YjU2M2hyZmFaZW5rbVVxV3BleSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9ob3RlbCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1736253637);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Administrator', 'admin@email.com', NULL, '$2y$12$6d.T9.hSNup9227G9NeYO.oluP7ezfUNbk/KMrNWISPA7MujyYz2a', NULL, '2025-01-07 02:52:39', '2025-01-07 02:52:39', 1),
(2, 'Jane Smith', 'janesmith@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(3, 'Robert Brown', 'robertbrown@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(4, 'Emily Johnson', 'emilyjohnson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(5, 'Michael Williams', 'michaelwilliams@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(6, 'Sarah Davis', 'sarahdavis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(7, 'David Martinez', 'davidmartinez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(8, 'Laura Garcia', 'lauragarcia@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(9, 'James Wilson', 'jameswilson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(10, 'Megan Taylor', 'megantaylor@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(11, 'Chris Miller', 'chrismiller@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(12, 'Olivia Moore', 'oliviamoore@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(13, 'Daniel Anderson', 'danielanderson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(14, 'Sophia Thomas', 'sophiathomas@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(15, 'William Jackson', 'williamjackson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(16, 'Charlotte White', 'charlottewhite@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(17, 'Benjamin Harris', 'benjaminharris@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(18, 'Amelia Clark', 'ameliaclark@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(19, 'Lucas Lewis', 'lucaslewis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(20, 'Mia Robinson', 'miarobinson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(21, 'Ethan Walker', 'ethanwalker@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(22, 'Harper Young', 'harperyoung@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(23, 'Alexander King', 'alexanderking@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(24, 'Isabella Scott', 'isabellascott@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(25, 'Henry Adams', 'henryadams@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(26, 'Lily Baker', 'lilybaker@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(27, 'Jack Gonzalez', 'jackgonzalez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(28, 'Ava Nelson', 'avanelson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(29, 'Sebastian Carter', 'sebastiancarter@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(30, 'Ella Mitchell', 'ellamitchell@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(31, 'Mason Perez', 'masonperez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(32, 'Grace Roberts', 'graceroberts@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(33, 'Samuel Evans', 'samuelevans@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(34, 'Luna Green', 'lunagreen@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(35, 'Oliver Adams', 'oliveradams@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(36, 'Chloe Nelson', 'chloenelson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(37, 'Wyatt Carter', 'wyattcarter@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(38, 'Madeline Hall', 'madelinehall@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(39, 'Joseph Lee', 'josephlee@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(40, 'Natalie Allen', 'natalieallen@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(41, 'Joshua King', 'joshuaking@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(42, 'Addison Wright', 'addisonwright@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(43, 'Zachary Lopez', 'zacharylopez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(44, 'Victoria Gonzalez', 'victoriagonzalez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(45, 'Elijah Harris', 'elijhaharris@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(46, 'Ella Perez', 'ellaperez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(47, 'Daniela Moore', 'danielamoore@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(48, 'Lucas Hall', 'lucashall@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(49, 'Victoria Clark', 'victoriaclark@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(50, 'Gabriel Lewis', 'gabriellewis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(51, 'Landon Scott', 'landonscott@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(52, 'Lena Turner', 'lenaturner@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(53, 'Gabriel Walker', 'gabrielwalker@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(54, 'Charlotte King', 'charlotteking@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(55, 'David Lee', 'davidlee@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(56, 'Emily Perez', 'emilyperez@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(57, 'Jack Lewis', 'jacklewis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(58, 'Olivia Hall', 'oliviahall@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(59, 'Noah White', 'noahwhite@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(60, 'Grace Green', 'gracegreen@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(61, 'Dylan Miller', 'dylanmiller@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(62, 'Maya Moore', 'mayamoore@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(63, 'Michael Wilson', 'michaelwilson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(64, 'Aidan Young', 'aidanyoung@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(65, 'Natalie Clark', 'natalieclark@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(66, 'Leo Davis', 'leodavis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(67, 'Sophia Walker', 'sophiawalker@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(68, 'Mason Lee', 'masonlee@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(69, 'Harper Taylor', 'harpertaylor@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(70, 'Sebastian Adams', 'sebastianadams@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(71, 'Amelia Miller', 'ameliamiller@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(72, 'Leo Robinson', 'leorobinson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(73, 'Wyatt Young', 'wyattyoung@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(74, 'Ella Taylor', 'ellataylor@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(75, 'Lucas Brown', 'lucasbrown@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(76, 'Megan Wilson', 'meganwilson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(77, 'Sophie Scott', 'sophiescott@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(78, 'Henry White', 'henrywhite@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(79, 'Olivia Davis', 'oliviadavis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(80, 'Matthew Taylor', 'matthewtaylor@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(81, 'Ella Miller', 'ellamiller@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(82, 'Sophia King', 'sophiaking@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(83, 'Grace White', 'gracewhite@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(84, 'Aiden Robinson', 'aidenrobinson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(85, 'David Green', 'davidgreen@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(86, 'Henry Taylor', 'henrytaylor@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(87, 'Mia Lee', 'mialee@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(88, 'Sophie Robinson', 'sophierobinson@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(89, 'Lucas Adams', 'lucasadams@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(90, 'Alexander Mitchell', 'alexandermitchell@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(91, 'Madeline Harris', 'madelineharris@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(92, 'Jack Hall', 'jackhall@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(93, 'Sophia Adams', 'sophiaadams@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(94, 'Aidan Lee', 'aidanlee@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(95, 'Lily Davis', 'lilydavis@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(96, 'Ethan Harris', 'ethanharris@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(97, 'Aiden Moore', 'aidenmoore@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(98, 'Mason Hall', 'masonhall@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(99, 'Madeline Green', 'madelinegreen@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(100, 'Benjamin Taylor', 'benjamintaylor@example.com', NULL, 'password123', NULL, '2025-01-07 12:18:19', '2025-01-07 12:18:19', 0),
(101, 'Omar Syafaat', 'kmar.rizki@gmail.com', NULL, '$2y$12$oUOUDTdoETR65YpQ1acVO.U1fvJRYMEn5YxcloRHxJ9yrUCivsQwe', NULL, '2025-01-07 05:19:30', '2025-01-07 05:19:30', 0),
(102, 'aldo', 'dwipuji123@gmail.com', NULL, '$2y$12$LKujKed1MQYFNb6ZWjOZv.z9lBIO5I.8vFHW8YYHk1ulYFC4/YhTS', NULL, '2025-01-07 05:38:16', '2025-01-07 05:38:16', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`kode_hotel`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`kode_kamar`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`kode_layanan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `kode_bk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `kode_hotel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `kode_kamar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `kode_layanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
