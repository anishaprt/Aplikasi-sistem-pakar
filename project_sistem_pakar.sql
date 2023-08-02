-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2023 at 01:32 AM
-- Server version: 5.7.33
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_done1_sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturans`
--

CREATE TABLE `aturans` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaaturan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aturans`
--

INSERT INTO `aturans` (`id`, `namaaturan`, `kondisi`, `penyakit_id`, `created_at`, `updated_at`) VALUES
(1, 'P01', 'G01, G02, G03, G12, G13, G14, G19, G20, G26, G29, G34, G35, G36, G37, G39, G43, G51, G53, G68, G69, G70', 1, NULL, NULL),
(2, 'P02', 'G01, G02, G04, G06, G07, G08, G,09, G10, G11, G12, G13, G16, \nG17, G18, G21, G22, G23, G25, G26, G40, G48, G53, G58, G59, G61, G62, G63, G67', 2, NULL, NULL),
(3, 'P03', 'G14, G20, G30, G48, G51, G59, G61', 3, NULL, NULL),
(4, 'P04', 'G01, G02, G04, G05, G06, G07, G09, G11, G13, \nG17, G26, G49, G62', 4, NULL, NULL),
(5, 'P05', 'G01, G02, G26, G29, G30, G31, G32, G34, G38, G39, G41, G45, G48, G50, G51', 13, NULL, NULL),
(7, 'P07', 'G03, G04, G14, G20, G26, G28, G29, G30, G31, \nG32, G33, G34, G42, G46, G47, G52', 15, NULL, NULL),
(8, 'P08', 'G01, G02, G13, G20, G26, G29, G30, G31, G32, G34, G38, G45, G49, G50, G51, G64', 16, NULL, NULL),
(9, 'P09', 'S18, S20, S39', 17, NULL, NULL),
(10, 'P10', 'G01, G02, G04, G05, G06, G07, G08, G10, G11, G12, G13, G16, G17, G18, G21, G22, G23, G24, G25, G26, G40, G53', 18, NULL, NULL),
(11, 'P11', 'G20, G29, G34, G41, G47, G50, G65', 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datapasien`
--

CREATE TABLE `datapasien` (
  `id` int(11) NOT NULL,
  `namapasien` varchar(100) NOT NULL,
  `jeniskelamin` varchar(15) NOT NULL,
  `umur` int(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datapasien`
--

INSERT INTO `datapasien` (`id`, `namapasien`, `jeniskelamin`, `umur`, `created_at`, `updated_at`) VALUES
(724374, 'SITI SUKAINAH', 'P', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733428, 'ENY ROSDIANA', 'P', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788927, 'LAUNURU GAUS', 'L', 70, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962885, 'M IKHSAN LOFTI S', 'L', 64, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967543, 'ARLIANSYAH', 'L', 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008626, 'NOOR ARRSAYIS', 'L', 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015469, 'MARDINEM', 'P', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1063263, 'DIDIK HARIYANTO', 'L', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1064334, 'ERNAWATI', 'P', 48, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1099778, 'DINA AULIANI', 'P', 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1108361, 'NURLIANA', 'P', 73, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1126837, 'ABDUL HADI', 'L', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1128907, 'SARIWATI', 'P', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1144005, 'SUGIONO', 'L', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1186904, 'HERLINA', 'P', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1198156, 'TAUPIK RAHMAN', 'L', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1198853, 'HJ.MNURSIAH', 'P', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1225981, 'SRI MISNA', 'P', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1231958, 'MUHAIMIN', 'L', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1236028, 'GISLIYANOR', 'P', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1242928, 'FATHUR RIDANI', 'L', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1353208, 'PANAHATAN SIAHAAN', 'L', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1354440, 'RUSDIAN', 'L', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1355674, 'SITI HADIJAH', 'P', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1357663, 'ANANG SAPRUN ', 'L', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1366459, 'FAHRUDDIN', 'L', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1369625, 'ARYS DARMAWAN', 'L', 39, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1370205, 'VERY LIANSYAH', 'L', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1370541, 'AHMAD MULIADI', 'L', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1371835, 'SYAMSUDDIN RAMLI', 'L', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1376108, 'SAMSUNI', 'L', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1381673, 'AHMAD FIKRI HIDAYAT', 'L', 77, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1384938, 'MUNTAHA ', 'L', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1402292, 'ROSITA EDDY', 'P', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1403462, 'M HUSAINNI', 'L', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1407696, 'MAKMUN', 'L', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1411020, 'IRNANIAH', 'P', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1412055, 'MAKHYUDINN S', 'L', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1423427, 'SALASIAH', 'P', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1427416, 'DONY AMBARA', 'L', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1429017, 'SYAMSUL HADI', 'L', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1432810, 'HENNY HADIANY', 'P', 37, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1439049, 'SAPIAH', 'P', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1442290, 'DRS.H MANSYUR I', 'L', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1444083, 'NUR ALDA YULIANI', 'P', 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1446611, 'MINDARJO', 'L', 57, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1455683, 'BAGUS SATRIYO', 'L', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1462195, 'MISLAN', 'L', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1462273, 'HAIRIAH', 'P', 51, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1464143, 'JUANDA ', 'L', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1464792, 'SYARIFUDIN', 'L', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1467722, 'MAWARDAH', 'P', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1470228, 'SITI MAESYAROH', 'P', 65, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1470730, 'MARSELINUS BHIA', 'L', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1472833, 'HARIYATI', 'P', 28, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1474900, 'BUDIANTO', 'L', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1475904, 'ABDURRAHMAN', 'L', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1479785, 'HARIANTO', 'L', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1480203, 'ASMADI ', 'L', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1480489, 'NI MADE WIRATI', 'P', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1481434, 'RIDUAN', 'L', 75, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1481723, 'NUR RIZKIA FADILLAH', 'P', 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1482979, 'M ANDRI', 'L', 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1483543, 'SYAHRANI', 'L', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1483622, 'NAOMI RENGGO UTAMI', 'P', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1484485, 'IRMA', 'P', 33, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1484526, 'M ZAINI', 'L', 47, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1484637, 'ALIDIN', 'L', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1485099, 'PATIMAH', 'P', 32, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1485110, 'FRANS IDI YANTO', 'L', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1485342, 'SUMARNO', 'L', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1485670, 'NORHAYATI', 'P', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1485998, 'ATRAN', 'L', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1486492, 'SRI NORMILA WATY', 'P', 63, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1487851, 'SANIAH', 'P', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1488047, 'NASRULLAH', 'L', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1489105, 'SARIYEM', 'P', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1489512, 'ZAKARIA', 'L', 49, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1489867, 'SRI SARIYANI', 'P', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1490109, 'M RIDHA AL FADHIL', 'L', 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1490315, 'EFLIN KOYANSOW', 'L', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1490446, 'HELMIAH', 'P', 46, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1490931, 'CHRISTINA SUYATMI', 'P', 62, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1491011, 'M TAUFIQ', 'L', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1491486, 'IWAN ARDIANSYAH', 'L', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1491652, 'TJATUR ARIEFIANTO', 'L', 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1491653, 'M DAFI\'I', 'L', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1492365, 'ABDUSSALAM', 'L', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1492633, 'AGUNG', 'L', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1492680, 'BAHRUDIN', 'L', 60, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1492758, 'AHMAD GAZAL', 'L', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500196, 'HARTATIK', 'P', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500416, 'SURIANI', 'P', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500492, 'IBRAMSYAH', 'L', 55, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500494, 'AINUN', 'P', 58, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500553, 'RUSMAWATI', 'P', 66, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500651, 'M FADLY', 'L', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500932, 'SITI AISAH', 'P', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1500991, 'SUKITAH', 'P', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1501104, 'AISYAH', 'P', 44, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1501175, 'SULEMAN', 'L', 43, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1501916, 'KASIRAH', 'P', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1502486, 'AGUS SUDIYONO', 'L', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1502600, 'ISHAQ', 'L', 40, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1502839, 'ENY SUPRAPTI', 'P', 42, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1503153, 'AKHMAD ROSANJI', 'L', 54, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1503231, 'M KHAIRI', 'L', 50, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1503400, 'BRENKIN GOHONG', 'L', 71, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1504021, 'NORSEHAN', 'P', 67, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1504141, 'VERDINANDUS QUIDOLAU', 'L', 41, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1504152, 'ALMAIDA', 'P', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1504297, 'PUGUH YULIANTO', 'L', 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1504740, 'HASANUDDIN', 'L', 61, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1505055, 'PAIMAN', 'L', 56, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1506043, 'NANGIMAH', 'P', 59, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1506054, 'Anisha Pratiwi', 'P', 22, '2023-06-21 21:22:24', '2023-06-21 21:22:24'),
(1506055, 'Siti Fatimah', 'P', 21, '2023-06-22 06:19:05', '2023-06-22 06:19:05'),
(1506056, 'SYAHNAS ENJANG', 'P', 21, '2023-07-03 17:21:08', '2023-07-03 17:21:08'),
(1506057, 'NANGIMAH', 'P', 59, '2023-07-03 17:34:34', '2023-07-03 17:34:34'),
(1506058, 'syahroni', 'L', 23, '2023-07-03 19:10:38', '2023-07-03 19:10:38'),
(1506059, '123', 'L', 123, '2023-07-10 00:46:50', '2023-07-10 00:46:50'),
(1506060, '123', 'L', 123, '2023-07-10 00:48:49', '2023-07-10 00:48:49'),
(1506061, 'Muhammad Rafii', 'L', 23, '2023-07-20 06:20:34', '2023-07-20 06:20:34'),
(1506062, 'shanum zoya', 'P', 45, '2023-07-22 06:07:26', '2023-07-22 06:07:26'),
(1506063, 'dhania', 'P', 34, '2023-07-23 02:33:12', '2023-07-23 02:33:12');

-- --------------------------------------------------------

--
-- Table structure for table `detail_aturans`
--

CREATE TABLE `detail_aturans` (
  `id` int(10) UNSIGNED NOT NULL,
  `aksiaturan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_aturan` int(11) NOT NULL,
  `resiko` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_umur` int(11) NOT NULL,
  `sampai_umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_aturans`
--

INSERT INTO `detail_aturans` (`id`, `aksiaturan`, `id_aturan`, `resiko`, `keterangan`, `dari_umur`, `sampai_umur`, `created_at`, `updated_at`) VALUES
(1, 'S01, S02', 4, 'tidak beresiko', 'penyakit anda tidak beresiko karena usianya dibawah 10thn, jadi tenang saja', 1, 10, NULL, NULL),
(2, 'S03, S04', 4, 'tidak beresiko ', 'penyakit anda tidak beresiko karena usianya dibawah 20thn, jadi tenang saja', 11, 20, NULL, NULL),
(3, 'S05, S06', 4, 'beresiko', 'penyakit anda beresiko karena usiasanya diatas 20thn, segera tangani penyakit anda', 21, 30, NULL, NULL),
(4, 'S07, S08', 4, 'beresiko', 'penyakit anda beresiko karena usiasanya diatas 30thn, segera tangani penyakit anda', 31, 40, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejalas`
--

CREATE TABLE `gejalas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kodegejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_umur` int(11) NOT NULL,
  `sampai_umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejalas`
--

INSERT INTO `gejalas` (`id`, `kodegejala`, `kondisi`, `created_at`, `updated_at`, `jeniskelamin`, `dari_umur`, `sampai_umur`) VALUES
(1, 'G01', 'Tekanan darah tinggi/naik ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 2, 90),
(2, 'G02', 'Kadar gula di atas normal ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 6, 70),
(3, 'G03', 'Diare ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 0, 65),
(4, 'G04', 'Gampang capek ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 75),
(5, 'G05', 'Lemas/kurang berenergi ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 90),
(6, 'G06', 'Nafsu makan menurun ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 3, 80),
(7, 'G07', 'Sulit tidur ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 75),
(8, 'G08', 'Kram otot (pada malam hari) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 85),
(9, 'G09', 'Kaki bengkak ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 11, 85),
(10, 'G10', 'Kulit gatal (gatal-gatal) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 2, 90),
(11, 'G11', 'Kulit kering', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 2, 90),
(12, 'G12', 'Bengkak pada mata (pada pagi hari) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 2, 75),
(13, 'G13', 'Sering kencing/Nokturia (terutama malam hari)', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 10, 80),
(14, 'G14', 'Pembengkakan pada tungkai (edema) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 10, 80),
(15, 'G15', 'Pembengkakan pada muka', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(16, 'G16', 'Ascites (penimbunan air dalam rongga perut) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 10, 90),
(17, 'G17', 'Gangguan pengecapan ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(18, 'G18', 'Berat badan turun ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 2, 80),
(19, 'G19', 'Tidak keluar urin ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(20, 'G20', 'Urine berdarah', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(21, 'G21', 'Cairan di selaput jantung dan paru-paru ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(22, 'G22', 'Sesak nafas ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(23, 'G23', 'Gerakan-gerakan tak terkendali', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 5, 80),
(24, 'G24', 'HB turun ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 15, 75),
(25, 'G25', 'Vena di leher melebar ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 90),
(26, 'G26', 'Produksi urin menurun ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 90),
(27, 'G27', 'Kolesterol naik ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 20, 90),
(28, 'G28', 'Bengkak pada perut ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(29, 'G29', 'Nyeri pinggang/ hebat kolik ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(30, 'G30', 'Demam  ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(31, 'G31', 'Menggigil ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(32, 'G32', 'Rasa panas/terbakar saat kencing (Disuria) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(33, 'G33', 'Urine berwarna keruh ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(34, 'G34', 'Mual dan muntah ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(35, 'G35', 'Sakit kepala ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(36, 'G36', 'Sering masuk angin ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(37, 'G37', 'Sering cegukan ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(38, 'G38', 'urgensi/ merasa ingin BAK segera', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(39, 'G39', 'Penurunan kesadaran ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(40, 'G40', 'Kejang – kejang ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(41, 'G41', 'Kencing batu ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(42, 'G42', 'Nyeri di daerah kemaluan dan selangkangan ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(43, 'G43', 'Nafas berbau ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(44, 'G44', 'Sesuatu yabg asing dalam kandung kemih ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(45, 'G45', 'Nyeri saat buang air kecil ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(46, 'G46', 'Urine beku berdarah ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(47, 'G47', 'Nyeri perut ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(48, 'G48', 'Sukar berkonsentrasi ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(49, 'G49', 'Pegal pinggang/panggul ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(50, 'G50', 'nyeri tekan di area ginjal ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(51, 'G51', 'Oliguria (urine keluar < 400ml/24 jam ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(52, 'G52', 'Bau air kencing yang lebih menyengat ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(53, 'G53', 'Pucat/anemia ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(54, 'G54', 'Reaksi Alergi ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(55, 'G55', 'Penglihatan kabur ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(56, 'G56', 'Dispnea waktu melakukan kegiatan', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(57, 'G57', 'Susah Buang Air Kecil ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(58, 'G58', 'kulit mudah lecet ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(59, 'G59', 'insomnia ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(60, 'G60', 'impotensi ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(61, 'G61', 'Bingung ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(62, 'G62', 'Urea frost (kristalisasi urea pada kulit) ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(63, 'G63', 'Kelemahan otot- otot ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(64, 'G64', 'nyeri ketok pada pinggang ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(65, 'G65', 'Perdarahan ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(66, 'G66', 'Haus/ dehidrasi ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(67, 'G67', 'Nafsu seks menurun ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(68, 'G68', 'Berak Darah ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(69, 'G69', 'Payah jantung ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85),
(70, 'G70', 'Pusing pada setiap perubahan posisi tubuh ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'unisex', 1, 85);

-- --------------------------------------------------------

--
-- Table structure for table `gejala_pasien`
--

CREATE TABLE `gejala_pasien` (
  `id` int(11) NOT NULL,
  `id_pasien` varchar(100) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala_pasien`
--

INSERT INTO `gejala_pasien` (`id`, `id_pasien`, `id_gejala`, `created_at`, `updated_at`) VALUES
(43, '1506048', 2, '2023-05-17 20:17:35', '2023-05-17 20:17:35'),
(44, '1506048', 6, '2023-05-17 20:17:39', '2023-05-17 20:17:39'),
(45, '1506048', 7, '2023-05-17 20:17:40', '2023-05-17 20:17:40'),
(46, '1506048', 8, '2023-05-17 20:17:41', '2023-05-17 20:17:41');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `solusi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id`, `pasien_id`, `penyakit_id`, `gejala`, `solusi`, `created_at`, `updated_at`) VALUES
(1, 121, 4, 'G03', 'Tidak Merokok--Mengkonsumsi Serat Cukup--Konsumsi Obat Pereda Nyeri', '2023-05-17 05:27:55', '2023-05-17 04:13:05'),
(4, 1506049, 2, 'G04', 'Diet Rendah Garam--Menjaga Berat Badan Ideal--Diet Gula', '2023-05-17 20:25:30', '2023-05-17 20:26:19');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_23_152525_create_faktas_table', 1),
(6, '2023_03_23_152810_create_pakars_table', 1),
(7, '2023_03_23_152957_create_penyakits_table', 1),
(8, '2023_03_23_153026_create_gejalas_table', 1),
(9, '2023_03_23_153102_create_solusis_table', 1),
(10, '2023_03_23_153649_create_forwardchainings_table', 1),
(11, '2023_03_23_153735_create_diagnosiss_table', 1),
(12, '2023_04_29_095353_create_aturans_table', 1),
(13, '2023_05_04_031233_create_konsultasis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakits`
--

CREATE TABLE `penyakits` (
  `id` int(11) NOT NULL,
  `kodepenyakit` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jeniskelamin` varchar(255) NOT NULL,
  `dari_umur` int(11) NOT NULL,
  `sampai_umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penyakits`
--

INSERT INTO `penyakits` (`id`, `kodepenyakit`, `nama`, `deskripsi`, `created_at`, `updated_at`, `jeniskelamin`, `dari_umur`, `sampai_umur`) VALUES
(1, 'P1', 'Gagal Ginjal Akut', '\"Penyakit ginjal akut, juga dikenal sebagai gagal ginjal akut (GGA),  merujuk pada kondisi tiba-tiba yang terjadi ketika ginjal  kehilangan kemampuan untuk berfungsi secara efektif  dalam waktu singkat. Kondisi ini mempengaruhi kemampuan  ginjal untuk menyaring limbah, garam, dan cairan dari darah,  sehingga menyebabkan penumpukan zat-zat berbahaya di dalam tubuh. beberapa penyebabnya antara lain, dehidrasi,  penyakit atau terdapat infeksi pada ginjal, gangguan sirkulasi, obstruksi, atau efek samping dari mengkonsumsi obat-obatan.\"', '2023-07-19 00:38:03', '2023-07-22 06:08:25', 'Unisex', 30, 80),
(2, 'P2', 'Gagal Ginjal Kronik', '\"Gagal ginjal kronik (GGK) adalah kondisi medis yang ditandai  dengan penurunan fungsi ginjal secara progresif dan  permanen selama periode waktu yang panjang. Ginjal yang  mengalami gagal ginjal kronik tidak dapat sepenuhnya pulih atau kembali normal, sehingga memerlukan manajemen dan  perawatan jangka panjang. beberapa penyebabnya antara lain, Diabetes Melitus tipe I dan II, Tekanan Darah Tinggi (Hipertensi), Penyakit Ginjal Polikistik, Glomerulonefritis, Penyakit Ginjal Kronik Interstisial, atau Obstruksi Saluran Kemih.\"', '2023-07-19 00:40:47', '2023-07-22 06:08:36', 'Unisex', 1, 75),
(3, 'P3', 'Nefritis Akut', '\"Nefritis akut, juga dikenal sebagai glomerulonefritis akut, adalah suatu kondisi yang ditandai oleh peradangan mendadak  pada glomerulus ginjal. Glomerulus adalah unit penyaringan  kecil di dalam ginjal yang bertanggung jawab untuk menyaring  zat-zat berbahaya dan limbah dari darah. beberapa  penyebabnya antara lain, Infeksi Bakteri pada Saluran Kemih,  Penyakit Autoimun, Reaksi terhadap Obat-obatan, atau  Penyakit Ginjal Turunan.\"', '2023-07-19 00:41:24', '2023-07-22 06:08:47', 'Unisex', 0, 45),
(4, 'P4', 'Nefropati Diabetik', '\"Nefropati diabetik, juga dikenal sebagai nefropati diabetes, adalah komplikasi serius dari diabetes mellitus yang mempengaruhi ginjal. Kondisi ini  merupakan salah satu penyebab utama gagal ginjal kronik di banyak negara. Penyakit nefropati diabetik terjadi ketika tingkat gula darah  tinggi yang tidak terkontrol pada penderita diabetes merusak  pembuluh darah kecil di glomerulus ginjal. Glomerulus  berperan penting dalam menyaring darah dan menghilangkan  limbah dan kelebihan cairan dari tubuh. Jika glomerulus  mengalami kerusakan, fungsi ginjal dapat terganggu dan  timbullah kerusakan jaringan yang lebih parah.\"', '2023-07-19 00:42:09', '2023-07-22 06:09:02', 'Unisex', 30, 90),
(13, 'P5', 'Infeksi Saluran Kemih', '\"Infeksi Saluran Kemih (ISK) adalah kondisi medis yang  disebabkan oleh bakteri atau mikroorganisme lain yang  menginfeksi bagian saluran kemih, termasuk kandung kemih,  uretra (saluran yang menghubungkan kandung kemih dengan  lingkungan luar), ureter (saluran yang menghubungkan  kandung kemih dengan ginjal), dan kadang-kadang ginjal itu  sendiri. Penyebab Infeksi Saluran Kemih: Bakteri dari area sekitar anus atau kulit dapat masuk ke saluran  kemih dan menyebabkan infeksi. Bakteri yang paling umum  penyebab ISK adalah Escherichia coli (E. coli), yang biasanya  ditemukan di usus. Selain itu, bakteri lain seperti  Staphylococcus saprophyticus dan Klebsiella juga dapat menjadi  penyebab ISK.\"', '2023-07-19 00:50:41', '2023-07-19 00:50:41', 'Laki-laki', 15, 70),
(15, 'P6', 'Batu Ginjal', '\"Batu ginjal, juga dikenal sebagai nefrolitiasis atau urolitiasis,  adalah massa keras yang terbentuk dari kristal mineral dan  garam yang mengendap dan menyatu di dalam ginjal atau  saluran kemih. Batu ginjal dapat berkembang dalam ukuran  yang bervariasi, dari seukuran butiran pasir hingga batu yang  lebih besar. Penyebab Batu Ginjal: Batu ginjal terbentuk ketika zat-zat tertentu dalam urin, seperti  kalsium, oksalat, asam urat, atau sistin, mengendap dan  membentuk kristal.\"', '2023-07-19 00:51:49', '2023-07-22 06:09:25', 'Unisex', 30, 60),
(16, 'P7', 'Pielonefritis', '\"Pielonefritis adalah infeksi bakteri yang menyerang salah satu  atau kedua ginjal dan biasanya terjadi ketika bakteri dari  saluran kemih naik ke ginjal. Infeksi ini termasuk dalam kategori  infeksi saluran kemih yang lebih serius karena melibatkan ginjal  yang merupakan bagian penting dari sistem kemih. Pielonefritis akut adalah infeksi mendadak yang sering kali  menimbulkan gejala yang jelas dan perlu penanganan segera.  Sementara itu, pielonefritis kronis adalah infeksi yang  berlangsung dalam jangka waktu lama dan bisa menyebabkan  kerusakan ginjal secara bertahap jika tidak diobati. Penyebab Pielonefritis: Pielonefritis biasanya disebabkan oleh bakteri Escherichia coli  (E. coli), yang umumnya hidup dalam usus dan bisa masuk ke  saluran kemih melalui uretra. Selain itu, bakteri lain seperti  Klebsiella, Proteus, atau Enterococcus juga dapat menjadi  penyebab pielonefritis.\"', '2023-07-19 00:52:47', '2023-07-22 06:10:19', 'Unisex', 5, 65),
(17, 'P8', 'Tuberkolosis Ginjal', '\"Tuberkulosis ginjal adalah bentuk tuberkulosis ekstrapulmonari  yang mengenai ginjal. Tuberkulosis (TB) adalah penyakit infeksi  bakteri yang disebabkan oleh Mycobacterium tuberculosis.  Meskipun TB biasanya menyerang paru-paru, dapat juga  menyebar ke organ tubuh lain, termasuk ginjal. Penyebab Tuberkulosis Ginjal: Tuberkulosis ginjal disebabkan oleh bakteri Mycobacterium  tuberculosis yang menyebar melalui aliran darah dari bagian  tubuh yang lain atau dari infeksi paru. Bakteri ini menetap di ginjal dan menyebabkan peradangan serta pembentukan  massa berbentuk benjolan atau abses di dalam ginjal. \"', '2023-07-19 00:53:16', '2023-07-22 06:10:36', 'Unisex', 20, 50),
(18, 'P9', 'Batu Ureter', '\"Batu ureter, juga dikenal sebagai batu ureteral, adalah massa  keras yang terbentuk dari garam mineral dan kristal yang  mengendap dan menyatu di dalam saluran ureter. Ureter  adalah saluran yang menghubungkan ginjal dengan kandung  kemih dan berfungsi untuk mengalirkan urin dari ginjal ke  kandung kemih. Penyebab Batu Ureter: Batu ureter terbentuk ketika beberapa zat dalam urin, seperti  kalsium, oksalat, asam urat, atau sistin, mengendap dan  membentuk kristal yang kemudian berkumpul menjadi batu. \"', '2023-07-19 00:53:37', '2023-07-22 06:11:02', 'Unisex', 30, 60),
(19, 'P10', 'Tumor Ginjal', '\"Tumor ginjal adalah pertumbuhan sel yang tidak normal atau  kanker yang terjadi di dalam jaringan ginjal. Tumor ginjal paling  sering terjadi pada orang dewasa dan bisa bersifat jinak (non- kanker) atau ganas (kanker). Jenis tumor ginjal yang paling  umum adalah karsinoma sel ginjal.\"', '2023-07-19 00:56:39', '2023-07-22 06:11:18', 'Unisex', 40, 70);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_diagnosa`
--

CREATE TABLE `riwayat_diagnosa` (
  `id` int(11) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `solusi` varchar(255) NOT NULL,
  `resiko` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riwayat_diagnosa`
--

INSERT INTO `riwayat_diagnosa` (`id`, `pasien_id`, `penyakit_id`, `gejala`, `solusi`, `resiko`, `keterangan`, `created_at`, `updated_at`) VALUES
(14, 120, 4, 'G01', 'Tidak Mengkonsumsi Alkohol--Menjaga Berat Badan Ideal', 'beresiko', 'penyakit anda beresiko karena usiasanya diatas 30thn, segera tangani penyakit anda', '2023-07-27 09:44:18', '2023-07-27 09:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `solusi_1`
--

CREATE TABLE `solusi_1` (
  `id` int(11) NOT NULL,
  `kodesolusi` varchar(5) NOT NULL,
  `solusi` varchar(255) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jeniskelamin` varchar(255) NOT NULL,
  `dari_umur` int(11) NOT NULL,
  `sampai_umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `solusi_1`
--

INSERT INTO `solusi_1` (`id`, `kodesolusi`, `solusi`, `deskripsi`, `foto`, `jeniskelamin`, `dari_umur`, `sampai_umur`, `created_at`, `updated_at`) VALUES
(1, 'S01', 'Diet Rendah Garam', 'Diet rendah garam adalah usaha untuk mengurangi konsumsi garam (sodium/natrium) dalam kehidupan sehari-hari. Tujuannya adalah untuk mengontrol tekanan darah agar terhindar dari hipertensi. Akan tetapi, diet ini dirasa sulit mengingat garam adalah salah satu bumbu dapur yang selalu digunakan untuk menyedapkan makanan. Sebagian besar orang enggan melakukan diet ini dengan alasan masih ingin menikmati makanan dengan rasa lezat yang tidak hambar. TIPS MAKANAN UNTUK DIET RENDAH GARAM      Beras, ubi, maizena, terigu, tapioca, hunkwe, gula dan makanan yang diolah tidak dibubuhi dengan garam, soda.     Daging sapi, daging ayam, ikan, maksimum 100 g sehari, telur ayam 1 butir sehari     Kacang-kacangan tanpa garam dapur     Sayuran tanpa garam, natrium benzoate, dan soda     Buah segar dan diawetkan tanpa garam dan soda     Bumbu segar dan kering yang tidak ada garam dan natrium lainnya', '/storage/foto/m2SZDLdDp1i0S6FPWjgksolnsv54nVNDazG96q5p.jpg', 'Unisex', 1, 80, NULL, '2023-07-22 23:39:59'),
(2, 'S02', 'Olahraga Rutin', 'Olahraga adalah semua bentuk aktivitas fisik yang dilakukan baik dalam bentuk kompetitif atau juga santai. Beberapa contoh olahraga yang umum dilakukan antara lain, Lari, Bersepeda, Renang, Yoga, Angkat Beban, Aerobik.', '/storage/foto/lNnEixWOJXAVhTyqTshEpGR7pyBZ1VCJwNIfbvDZ.jpg', 'Unisex', 10, 80, NULL, '2023-07-22 23:42:12'),
(3, 'S03', 'Tidak Merokok', 'Konsumsi rokok dapat merugikan kesehatan seseorang, baik perokok itu sendiri maupun perokok pasif. Merokok merupakan penyebab utama penyakit tidak menular seperti penyakit jantung koroner, stroke, hipertensi, kanker, penyakit paru menahun, gangguan janin, gangguan pernapasan (PPOK, dan asma), impotensi, dan kesuburan. Akibatnya, bukan hanya pengeluaran biaya yang mahal untuk pengobatan, tetapi juga hilangnya waktu produktivitas sebagai masyarakat produktif.', '/storage/foto/N4IWKKNWKHQPTVIqhHhQpASeQ9TpYzjClOSGnmUN.jpg', 'Laki-laki', 12, 65, NULL, '2023-07-22 23:44:10'),
(4, 'S04', 'Mengkonsumsi Antibiotik', 'Antibiotik adalah obat yang digunakan untuk mengobati infeksi bakteri. Obat ini idealnya hanya boleh digunakan sesuai resep dan petunjuk dokter. Jika obat ini dikonsumsi sembarangan, penggunaannya bukan hanya menjadi tidak efektif, melainkan bisa berbahaya bagi kesehatan.', '/storage/foto/aR7GB064vUwys93WdlSIUFcccG4lrCIDbsQmqDqr.jpg', 'Unisex', 1, 70, NULL, '2023-07-22 23:46:19'),
(5, 'S05', 'Hemodialisa', 'Hemodialisia adalah perawatan untuk menyaring limbah dan air dari darah. Hemodialisis membantu mengontrol tekanan darah dan menyeimbangkan mineral penting, seperti kalium, natrium, dan kalsium, dalam darah. Hemodialisis dapat membantu mengembalikan kualitas hidup, tetapi terapi ini bukan obat untuk menyembuhkan gagal ginjal.', '/storage/foto/SVeXfUbHcVYr6nJUvblPFYIaq0TH2iU4svfBuZTn.jpg', 'Unisex', 2, 90, NULL, '2023-07-22 23:47:30'),
(6, 'S06', 'Transplantasi Darah', 'Transfudi darah adalah proses pemindahan darah dari seseorang yang sehat (donor) ke orang sakit (resipien), dimana darah yang dipindahkan dapat berupa darah lengkap dan komponen darah.', '/storage/foto/4IirKNuOm4klSLgyg6iUimgC2gqAaIQ1BEJ61XUp.jpg', 'Unisex', 2, 85, NULL, '2023-07-22 23:54:22'),
(7, 'S07', 'Tidak Mengkonsumsi Alkohol', 'Kecanduan alkohol adalah kondisi saat tubuh telah bergantung pada alkohol dan sulit untuk mengendalikan konsumsinya. Kecanduan alkohol adalah hasil dari gabungan yang cukup kompleks antara faktor genetik, psikologis, dan lingkungan.', '/storage/foto/RK2J1iuWP72R3FQajCV9levx9Rn4tmGwSHzDBt3t.jpg', 'Unisex', 2, 85, NULL, '2023-07-22 23:56:33'),
(8, 'S08', 'Menjaga Berat Badan Ideal', 'Menjaga berat badan ideal adalah penting untuk kesehatan dan kesejahteraan fisik Anda. Namun, berat badan ideal dapat bervariasi dari satu individu ke individu lainnya tergantung pada berbagai faktor, termasuk tinggi badan, usia, jenis kelamin, komposisi tubuh, dan tingkat aktivitas fisik.', '/storage/foto/joVSxHEvs5vAmcfwhZE8iyutEQdIVXhoDQk1rf1f.jpg', 'Unisex', 20, 85, NULL, '2023-07-23 00:01:50'),
(9, 'S09', 'Diet Gula', 'Diet gula alias diet tanpa gula ini adalah jenis diet yang dalam aturan makannya membatasi asupan gula tambahan dalam waktu tertentu, biasanya adalah selama 30 hari. Ketika menjalankan diet gula ini, tidak serta-merta menghilangkan asupan gula dalam makanan begitu saja, sebab seperti yang telah diuraikan sebelumnya bahwa tubuh manusia tetap membutuhkan gula sebagai sumber energi.', '/storage/foto/qGdeUlagvgfxIvbUlguhCFDPhSdlgdXf5kLjzKMu.jpg', 'Unisex', 10, 85, NULL, '2023-07-23 00:00:23'),
(10, 'S10', 'Melakukan Pemeriksaan Berkala', 'Melakukan pemeriksaan berkala atau rutin adalah langkah penting dalam menjaga kesehatan dan mendeteksi dini masalah kesehatan. Pemeriksaan berkala dapat membantu mengidentifikasi risiko penyakit sejak dini, memberikan kesempatan untuk melakukan tindakan pencegahan, dan memastikan bahwa tubuh Anda dalam kondisi yang baik.', '/storage/foto/xJWHTjEJI2jektUCTiYyGqZZ5OoXpsGQbbXrVf40.jpg', 'Unisex', 0, 85, NULL, '2023-07-23 00:03:23'),
(11, 'S11', 'Terapi Ablasi', 'Ablasi adalah prosedur medis yang sering digunakan dalam bidang kardiologi dan kedokteran untuk mengobati beberapa kondisi kesehatan, terutama gangguan ritme jantung (aritmia). Proses ablasi melibatkan penghancuran atau penghilangan jaringan jantung yang abnormal atau mengganggu untuk mengembalikan ritme jantung yang normal.', '/storage/foto/E9YYifn4TZkY5aE8AG6oBtGDmRPwWz8ckoNawrSS.jpg', 'Unisex', 2, 85, NULL, '2023-07-23 00:05:54'),
(12, 'S12', 'Mengkonsumsi Obat Pereda Nyeri', 'Mengkonsumsi obat pereda nyeri dapat membantu mengurangi atau menghilangkan rasa sakit dan ketidaknyamanan yang Anda alami.', '/storage/foto/XDeF3slaFG9BG76nCPRkliKmsli1TUzF9C6j7iWh.jpg', 'Unisex', 2, 85, NULL, '2023-07-23 00:07:04'),
(13, 'S13', 'Istirahat Yang Cukup', 'Istirahat yang cukup merupakan faktor penting dalam menjaga kesehatan dan kesejahteraan secara keseluruhan. Istirahat yang memadai memungkinkan tubuh untuk pulih, meregenerasi, dan memperbaiki diri setelah aktivitas sehari-hari.', '/storage/foto/jqDpdheS8C7ZSXCtSelptGT6Lf7dWwzAs6LeRQSe.jpg', 'Unisex', 5, 85, NULL, '2023-07-23 00:10:22'),
(14, 'S14', 'Vaksin Pneumonia', 'Vaksin pneumonia adalah vaksin yang digunakan untuk melindungi tubuh terhadap penyakit pneumonia (radang paru-paru). Pneumonia dapat disebabkan oleh berbagai jenis infeksi, termasuk bakteri, virus, atau jamur. Vaksin pneumonia bertujuan untuk mengurangi risiko terkena infeksi pneumonia dan mengurangi keparahan penyakit jika infeksi terjadi.', '/storage/foto/cP2t4JI9U7KGBOGWUNp5gQdcVvJUeWg8fovBq3Nr.jpg', 'Unisex', 1, 85, NULL, '2023-07-23 00:13:39'),
(15, 'S15', 'Diet Rendah Protein', 'Diet rendah protein adalah jenis diet yang membatasi asupan protein harian. Diet ini biasanya direkomendasikan dalam beberapa kondisi kesehatan tertentu, seperti penyakit ginjal, penyakit hati, gangguan metabolisme, atau kondisi tertentu yang memerlukan penurunan asupan protein.', '/storage/foto/P1FE6kp8FI75dTOBNRZf2AritGgLRAwQReGy2hln.jpg', 'Unisex', 1, 85, NULL, '2023-07-23 00:14:49'),
(16, 'S16', 'Menjaga Pola Makan Sehat', 'Menjaga pola makan sehat sangat penting untuk kesehatan dan kesejahteraan secara keseluruhan. Berikut adalah beberapa langkah yang dapat membantu Anda menjaga pola makan sehat seperti Konsumsi makanan yang seimbang (biji-bijian, protein, buah-buahan, sayuran, susu rendah lemak, dan lemak sehat), Kurangi makanan olahan dan cepat saji, Kontrol porsi makan, Hindari minuman manis dan beralkohol.', '/storage/foto/2mTUDjCWctLp6UyEqO5D0PXStlBfOnKzIKf0xYVr.jpg', 'Unisex', 1, 85, NULL, '2023-07-23 01:59:30'),
(17, 'S17', 'Pencegahan Penularan Melalui Udara', 'Pencegahan penularan melalui udara sangat penting untuk menghentikan penyebaran penyakit menular yang dapat menyebar melalui droplet (droplet transmission) atau partikel-partikel kecil yang dikeluarkan saat batuk, bersin, atau berbicara.', '/storage/foto/0it3Hf7wBhdcOJjv2orhnxIdoI0SbRuudh8mHvvw.jpg', 'Unisex', 1, 85, NULL, '2023-07-23 01:53:49'),
(18, 'S18', 'Mengkonsumsi Air Putih Yang Cukup', 'Mengkonsumsi air putih yang cukup merupakan langkah penting untuk menjaga kesehatan tubuh. Air memiliki peran vital dalam berbagai fungsi tubuh, seperti menjaga keseimbangan cairan, mengatur suhu tubuh, melarutkan zat-zat penting, membantu dalam proses pencernaan, dan menjaga kesehatan kulit.', '/storage/foto/7vbMaCZDYCzf297CXMWKETuA702E3rCcIjoXVZx3.jpg', 'Unisex', 1, 85, NULL, '2023-07-23 01:48:53'),
(19, 'S19', 'Mengkonsumsi Probiotik', 'Mengkonsumsi probiotik adalah praktik yang dapat memberikan manfaat bagi kesehatan usus dan sistem pencernaan. Probiotik adalah mikroorganisme hidup yang bermanfaat, terutama bakteri, yang dapat membantu memelihara keseimbangan mikrobiota usus atau flora usus yang sehat.', '/storage/foto/WJGn0Da9qtxW25QSmNqSmK9q1SSh4hGyko51gUSi.jpg', 'Unisex', 1, 85, NULL, '2023-07-23 01:55:05'),
(20, 'S20', 'Pemberian Vaksin BCG', 'Vaksin BCG (Bacillus Calmette-Guérin) adalah vaksin yang digunakan untuk mencegah tuberkulosis (TB), sebuah penyakit infeksi bakteri yang menyerang paru-paru dan organ tubuh lainnya. Vaksin BCG dinamai dari para penemu vaksin ini, yaitu Albert Calmette dan Camille Guérin.', '/storage/foto/U7UCV3mQJ24mPwXtvylup3S936CoYMf8aaftbGci.jpg', 'Unisex', 0, 85, NULL, '2023-07-23 02:15:14'),
(21, 'S21', 'Posisi BAK dengan Duduk Di Atas Toilet', 'Pengosongan kandung kemih (BAK - Buka Air Kecil) dengan duduk di atas toilet adalah salah satu posisi yang umum digunakan oleh banyak orang. Posisi ini biasanya dianggap lebih nyaman dan mudah karena sebagian besar toilet dirancang untuk digunakan dengan cara ini.', '/storage/foto/mfFPxCgl2qdBf1F81Y81or3D9paNTejiUuch3EuB.jpg', 'Perempuan', 2, 85, NULL, '2023-07-23 02:17:12'),
(22, 'S22', 'Buang Air Kecil Setelah Berhubungan Seksual', 'Buang air kecil setelah berhubungan seksual merupakan langkah yang disarankan oleh banyak profesional kesehatan untuk membantu mencegah infeksi saluran kemih (ISK).', '/storage/foto/HeCf9CEWcr8oS4YSIBYf7kHOCl7UafZaPGCjq7R0.jpg', 'Unisex', 19, 60, NULL, '2023-07-23 02:18:50'),
(23, 'S23', 'Membersihkan Organ Kelamin dengan Mengusap dari Depan ke Belakang', 'Cara membersihkan organ kelamin (vulva dan area genital) pada wanita adalah dengan mengusap dari depan ke belakang, bukan sebaliknya. Ini penting untuk mencegah kontaminasi bakteri dari daerah anus yang dapat menyebabkan infeksi saluran kemih (ISK) atau infeksi vagina.', '/storage/foto/kBc9slJsBszZ9FyJhbL8gmzuAjDoOYI76YKIZ2Gn.jpg', 'Perempuan', 5, 70, NULL, '2023-07-23 02:20:00'),
(24, 'S24', 'Pemberian Kalsium', 'Pemberian kalsium adalah proses memberikan suplemen atau sumber kalsium tambahan kepada individu untuk meningkatkan atau menjaga kadar kalsium dalam tubuh. Kalsium adalah mineral yang penting untuk menjaga kesehatan tulang dan gigi, serta berperan dalam fungsi saraf, kontraksi otot, pembekuan darah, dan fungsi lainnya dalam tubuh.', '/storage/foto/wclgrf041hXOSzCB5JZVSZErKFFpoT8cDEg6gcxo.jpg', 'Unisex', 1, 65, NULL, '2023-07-23 01:47:07'),
(25, 'S25', 'Diet Kalium', 'Diet kalium adalah pola makan yang kaya akan kalium, mineral esensial yang diperlukan oleh tubuh untuk menjaga kesehatan jantung, fungsi otot, keseimbangan cairan, dan fungsi saraf yang normal. Konsumsi kalium yang cukup penting untuk menjaga keseimbangan elektrolit yang optimal dalam tubuh. Sumber makanan kaya akan kalium antara lain, buah-buahan seperti pisang, jeruk, mangga, dan alpukat, sayuran hijau seperti, bayam dan brokoli, juga kacang-kacangan.', '/storage/foto/iInwIFmB3l1t1yFR5Q3qNbeQBKbHglH6NkGeDNmJ.jpg', 'Unisex', 1, 65, NULL, '2023-07-23 00:44:25'),
(26, 'S26', 'Rutin Melakukan Pemeriksaan Tekanan Darah', 'Rutin melakukan pemeriksaan tekanan darah adalah langkah yang sangat penting untuk menjaga kesehatan jantung dan mencegah masalah kesehatan yang terkait dengan tekanan darah tinggi (hipertensi) atau rendah (hipotensi). Pemeriksaan tekanan darah yang teratur membantu mendeteksi dini perubahan tekanan darah yang tidak normal, sehingga tindakan pencegahan atau pengobatan dapat dilakukan sesegera mungkin.', '/storage/foto/O1XVDjBpWOVEu6nmVjBGy6AHuAaPreW5GYlDPLNg.jpg', 'Unisex', 5, 90, NULL, '2023-07-23 02:21:31'),
(27, 'S27', 'Mengkonsumsi Serat Cukup', 'Mengkonsumsi serat cukup adalah bagian penting dari pola makan sehat. Serat adalah jenis karbohidrat kompleks yang tidak dapat dicerna oleh tubuh dan ditemukan dalam makanan nabati. Mengonsumsi cukup serat memiliki banyak manfaat bagi kesehatan, termasuk menjaga pencernaan yang sehat, mengendalikan berat badan, dan mengurangi risiko berbagai penyakit.', '/storage/foto/QV43j4qyERHRNYWEj8laRzrRENnMhyWdPtLeIbPc.jpg', 'Unisex', 1, 90, '2023-07-20 05:55:36', '2023-07-23 02:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `namalengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pasien` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `namalengkap`, `jeniskelamin`, `umur`, `alamat`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `id_pasien`, `tanggal_lahir`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Anisha Pratiwi', 'Perempuan', 22, 'Jl. Gubernur Syarkawi/Lingkar Utara', 'anisha2001pratiwi@gmail.com', NULL, '$2y$10$qQfb0DQTXbTYKJ3Q1WCHSeYsc4aOCo90NnKv.5q8rfbcWPY/3e2Au', 'Pengguna', '5kQszBBc8WSaYwIrmBR403GpReIGf9nWndFFzMMgYIChSbTx4Ojpebs3xi7G', NULL, NULL, NULL, '2023-05-05 04:52:50', '2023-05-05 04:52:50'),
(7, 'Admin1', 'Perempuan', 39, 'banjarmasin', 'admin@gmail.com', NULL, '$2y$10$BcdZ6iJ.vznDFgAD8Kjb2OMG0VJwqIK3ygb0HVCEWLiMZjGjvk2UK', 'Admin', '8gBps6GAXcCKNdrkWBtnKNPERiiyIfXZiXFzYYYjB46onA1ITVToQzMoe6si', NULL, NULL, NULL, '2023-05-09 06:30:06', '2023-05-09 06:30:06'),
(10, 'rizky2', 'Laki-laki', 33, 'jalanku', 'rizky2@gmail.com', NULL, '$2y$10$TkvZlyvWuEoK65wApS/l1.LmJPU7p3aYPARFASKWo0wM.F0SSNnx6', 'Pengguna', 'o2emlmhMsSaRhuWpHyCvcxTYjVWD2oYR5RhIAo8shtkqKAuAMVuB1sfcwucS', '120', NULL, NULL, '2023-05-14 06:24:58', '2023-05-14 06:24:58'),
(12, 'admin', 'Laki-laki', 23, 'Jl. Gubernur Syarkawi/Lingkar Utara', 'admin@admin.com', NULL, '$2y$10$qQfb0DQTXbTYKJ3Q1WCHSeYsc4aOCo90NnKv.5q8rfbcWPY/3e2Au', 'Admin', 'og6ypuNnwESR299nfnAyhDS12OSofq2nUSgs5HJI440xNJT5rZBo2WMuCegy', NULL, NULL, NULL, '2023-05-14 22:32:30', '2023-05-14 22:32:30'),
(14, 'bb', 'Laki-laki', 45, 'Jl. Gubernur Syarkawi/Lingkar Utara', 'bb@bb.com', NULL, '$2y$10$V0bxkL.oVyAqLEdo57mEWOGe0KRUEX0zvc9ZoMkuWxZmqSipGxP5q', 'Pengguna', 'alMJZbwbbBIEEizVyxb8AuJF41AL6GIQcbA2LoCCejzxLOxENx4ZeHAaXMPE', NULL, NULL, NULL, '2023-05-14 22:47:24', '2023-05-14 22:47:24'),
(16, 'rizky', 'Laki-laki', 22, 'alamatku', 'rizky@gmail.com', NULL, '$2y$10$dPYckmzEuFdqZJlbs7IgLOewQSZ/R5soivahRgSVw6mF8O/Ew6wly', 'Pengguna', '3Iy0cDBQ2x9eTC7v14XsCikwAzVHYb02v6lyoc1MYTlH3BWrSbOVDwBztLWj', '121', NULL, NULL, '2023-05-16 19:47:00', '2023-05-16 19:47:00'),
(17, 'nama saya', 'Laki-laki', 22, 'jalan saya', 'saya@gmail.com', NULL, '$2y$10$nXcEO02VKNEHLPTsezlPB.HEPv4PsQeMXwJ55tqTniJHK1Uz2dL1u', 'Pengguna', 't18oW9roDvF98lJgFfYjRy5mByFjhpkrA56JAZc41h9hCq1GItdHlhgCcGyg', '1506048', NULL, NULL, '2023-05-17 20:16:31', '2023-05-17 20:16:31'),
(18, 'testes', 'Laki-laki', 24, 'jalan tes', 'tes@gmail.com', NULL, '$2y$10$23vItSQVAYaZOTTAij4vlOX2xrqpLAJxLoqXo5ICz/BX0.bUPBoni', 'Pengguna', 'W7F7XyvjfO3EQaba3yvfS6ib6EuSeucMWRKnmDZ9S3aK8725Yjcp5ltS9NZM', '1506049', NULL, NULL, '2023-05-17 20:24:03', '2023-05-17 20:24:03'),
(19, 'dian', 'Perempuan', 11, 'jalanku', 'dian@gmail.com', NULL, '$2y$10$uyalWbuGHVYEKTyZNVQ/Eu13JEfP4qMkYLlEr3cNC6cKW6HXM.Xka', 'Pengguna', '0IUkX6lYTBTcGsgUJ44YovPQrLLyw68sGKzrNI4BZEJmvYu8OUU9FWTEN2xC', '1506050', NULL, NULL, '2023-06-10 19:28:21', '2023-06-10 19:28:21'),
(21, 'white', 'Perempuan', 17, 'jalan', 'white@gmail.com', NULL, '$2y$10$BTIRCkEe9FpQ/JrTZsaPgubjID6SA86.6axZaFEtEJpolvw7yW/lC', 'Pengguna', 'UwDw0O2QqhLKkB6aM9L1jt7aJorzXXAYXMow4BQpOrwedZo6VyeiJsNPNWpL', '1506052', NULL, NULL, '2023-06-10 19:33:27', '2023-06-10 19:33:27'),
(22, 'cek', 'Laki-laki', 20, 'address', '22@gmail.com', NULL, '$2y$10$yTiJPixBucjfqz9KY6a82O1BgwUbiub5cLhdt7JbEDZd340pmQHk2', 'Pengguna', '53IaIF1xDM0Q9ROafds4wg5cEKAy4ESCXRSYoBaOPzJ2kWTQViVbaXMUeaNS', '1506053', NULL, NULL, '2023-06-12 18:23:51', '2023-06-12 18:23:51'),
(23, 'Anisha Pratiwi', 'Perempuan', 22, 'jalan address', '23@gmail.com', NULL, '$2y$10$YgwHThjyt/P9MtlibARkZuijFHl7JxJrYNT5ATe.1tcgZ9hMq8O2K', 'Pengguna', 'AyjtqaOn5eyHBNovHHlb096FEEFTb7MNsgVN5v2aVdb2qXyhH1qhGxdxzgAV', '1506054', NULL, NULL, '2023-06-21 21:22:25', '2023-06-21 21:22:25'),
(24, 'Siti Fatimah', 'Perempuan', 21, 'address', '24@gmail.com', NULL, '$2y$10$Vi8cmU7lGmQa9xBZ/GuOoe48CkEbY8bnlcKkWWUxsBJd0G8YElxeq', 'Pengguna', 'XuOA6HSEtpM8HwiZMLy0h6PilKEGclNABPf2FXhTN5grKc2jsh0AU9SoOMYT', '1506055', NULL, NULL, '2023-06-22 06:19:06', '2023-06-22 06:19:06'),
(25, 'SYAHNAS ENJANG', 'Perempuan', 21, 'address', '25@gmail.com', NULL, '$2y$10$snwW8yntKARN3MPkUeo2ee5bfZWxslWqDZ32SIBFRLkhnaxb2OJoS', 'Pengguna', 'sp7EtMQ6feBZGFYHxnXKN3buzP00ofDZNoCZmu1X8WIZhf16oLtM2a4zGZg1', '1506056', NULL, NULL, '2023-07-03 17:21:08', '2023-07-03 17:21:08'),
(26, 'NANGIMAH', 'Perempuan', 59, 'address', '26@gmail.com', NULL, '$2y$10$H5DD1kn0GCW/neAZ8RpnF.zD3T6h1QdK/E6/Av8VNTG2Py3onerx2', 'Pengguna', 'YCKKe6pwZm4kmb5VPxvXdpJ33b2zeILP1QRaXqWRvwKCeKqUbHFAOHy9hIZU', '1506057', NULL, NULL, '2023-07-03 17:34:34', '2023-07-03 17:34:34'),
(27, 'syahroni', 'Laki-laki', 23, 'address', '27@gmail.com', NULL, '$2y$10$jTTfkyLq0oIqklxQy61HYe9Iy73z5QkpyzNm03oOw1KrBuMbzVW6q', 'Pengguna', 'BfrijKvSKcXXbuPO6O5xoweu4JtRFyBZiOn2ESWHJwkhRMnvLW1S9Z6UXdNU', '1506058', NULL, NULL, '2023-07-03 19:10:38', '2023-07-03 19:10:38'),
(28, 'taufik', 'Perempuan', 24, 'handil bakti', 'taufik@admin.com', NULL, '$2y$10$qQfb0DQTXbTYKJ3Q1WCHSeYsc4aOCo90NnKv.5q8rfbcWPY/3e2Au', 'Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'SITI SUKAINAH', 'Perempuan', 39, 'jalan', '724374@gmail.com', '', 'password', 'Pengguna', '724374', '724374', NULL, NULL, NULL, NULL),
(30, 'ENY ROSDIANA', 'Perempuan', 54, 'jalan', '733428@gmail.com', '', 'password', 'Pengguna', '733428', '733428', NULL, NULL, NULL, NULL),
(31, 'LAUNURU GAUS', 'Laki-laki', 70, 'jalan', '788927@gmail.com', '', 'password', 'Pengguna', '788927', '788927', NULL, NULL, NULL, NULL),
(32, 'M IKHSAN LOFTI S', 'Laki-laki', 64, 'jalan', '962885@gmail.com', '', 'password', 'Pengguna', '962885', '962885', NULL, NULL, NULL, NULL),
(33, 'ARLIANSYAH', 'Laki-laki', 41, 'jalan', '967543@gmail.com', '', 'password', 'Pengguna', '967543', '967543', NULL, NULL, NULL, NULL),
(34, 'NOOR ARRSAYIS', 'Laki-laki', 21, 'jalan', '1008626@gmail.com', '', 'password', 'Pengguna', '1008626', '1008626', NULL, NULL, NULL, NULL),
(35, 'MARDINEM', 'Perempuan', 58, 'jalan', '1015469@gmail.com', '', 'password', 'Pengguna', '1015469', '1015469', NULL, NULL, NULL, NULL),
(36, 'DIDIK HARIYANTO', 'Laki-laki', 57, 'jalan', '1063263@gmail.com', '', 'password', 'Pengguna', '1063263', '1063263', NULL, NULL, NULL, NULL),
(37, 'ERNAWATI', 'Perempuan', 48, 'jalan', '1064334@gmail.com', '', 'password', 'Pengguna', '1064334', '1064334', NULL, NULL, NULL, NULL),
(38, 'DINA AULIANI', 'Perempuan', 20, 'jalan', '1099778@gmail.com', '', 'password', 'Pengguna', '1099778', '1099778', NULL, NULL, NULL, NULL),
(39, 'NURLIANA', 'Perempuan', 73, 'jalan', '1108361@gmail.com', '', 'password', 'Pengguna', '1108361', '1108361', NULL, NULL, NULL, NULL),
(40, 'ABDUL HADI', 'Laki-laki', 47, 'jalan', '1126837@gmail.com', '', 'password', 'Pengguna', '1126837', '1126837', NULL, NULL, NULL, NULL),
(41, 'SARIWATI', 'Perempuan', 42, 'jalan', '1128907@gmail.com', '', 'password', 'Pengguna', '1128907', '1128907', NULL, NULL, NULL, NULL),
(42, 'SUGIONO', 'Laki-laki', 28, 'jalan', '1144005@gmail.com', '', 'password', 'Pengguna', '1144005', '1144005', NULL, NULL, NULL, NULL),
(43, 'HERLINA', 'Perempuan', 49, 'jalan', '1186904@gmail.com', '', 'password', 'Pengguna', '1186904', '1186904', NULL, NULL, NULL, NULL),
(44, 'TAUPIK RAHMAN', 'Laki-laki', 59, 'jalan', '1198156@gmail.com', '', 'password', 'Pengguna', '1198156', '1198156', NULL, NULL, NULL, NULL),
(45, 'HJ.MNURSIAH', 'Perempuan', 75, 'jalan', '1198853@gmail.com', '', 'password', 'Pengguna', '1198853', '1198853', NULL, NULL, NULL, NULL),
(46, 'SRI MISNA', 'Perempuan', 51, 'jalan', '1225981@gmail.com', '', 'password', 'Pengguna', '1225981', '1225981', NULL, NULL, NULL, NULL),
(47, 'MUHAIMIN', 'Laki-laki', 54, 'jalan', '1231958@gmail.com', '', 'password', 'Pengguna', '1231958', '1231958', NULL, NULL, NULL, NULL),
(48, 'GISLIYANOR', 'Perempuan', 50, 'jalan', '1236028@gmail.com', '', 'password', 'Pengguna', '1236028', '1236028', NULL, NULL, NULL, NULL),
(49, 'FATHUR RIDANI', 'Laki-laki', 47, 'jalan', '1242928@gmail.com', '', 'password', 'Pengguna', '1242928', '1242928', NULL, NULL, NULL, NULL),
(50, 'PANAHATAN SIAHAAN', 'Laki-laki', 60, 'jalan', '1353208@gmail.com', '', 'password', 'Pengguna', '1353208', '1353208', NULL, NULL, NULL, NULL),
(51, 'RUSDIAN', 'Laki-laki', 57, 'jalan', '1354440@gmail.com', '', 'password', 'Pengguna', '1354440', '1354440', NULL, NULL, NULL, NULL),
(52, 'SITI HADIJAH', 'Perempuan', 19, 'jalan', '1355674@gmail.com', '', 'password', 'Pengguna', '1355674', '1355674', NULL, NULL, NULL, NULL),
(53, 'ANANG SAPRUN ', 'Laki-laki', 66, 'jalan', '1357663@gmail.com', '', 'password', 'Pengguna', '1357663', '1357663', NULL, NULL, NULL, NULL),
(54, 'FAHRUDDIN', 'Laki-laki', 61, 'jalan', '1366459@gmail.com', '', 'password', 'Pengguna', '1366459', '1366459', NULL, NULL, NULL, NULL),
(55, 'ARYS DARMAWAN', 'Laki-laki', 39, 'jalan', '1369625@gmail.com', '', 'password', 'Pengguna', '1369625', '1369625', NULL, NULL, NULL, NULL),
(56, 'VERY LIANSYAH', 'Laki-laki', 33, 'jalan', '1370205@gmail.com', '', 'password', 'Pengguna', '1370205', '1370205', NULL, NULL, NULL, NULL),
(57, 'AHMAD MULIADI', 'Laki-laki', 12, 'jalan', '1370541@gmail.com', '', 'password', 'Pengguna', '1370541', '1370541', NULL, NULL, NULL, NULL),
(58, 'SYAMSUDDIN RAMLI', 'Laki-laki', 60, 'jalan', '1371835@gmail.com', '', 'password', 'Pengguna', '1371835', '1371835', NULL, NULL, NULL, NULL),
(59, 'SAMSUNI', 'Laki-laki', 62, 'jalan', '1376108@gmail.com', '', 'password', 'Pengguna', '1376108', '1376108', NULL, NULL, NULL, NULL),
(60, 'AHMAD FIKRI HIDAYAT', 'Laki-laki', 77, 'jalan', '1381673@gmail.com', '', 'password', 'Pengguna', '1381673', '1381673', NULL, NULL, NULL, NULL),
(61, 'MUNTAHA ', 'Laki-laki', 63, 'jalan', '1384938@gmail.com', '', 'password', 'Pengguna', '1384938', '1384938', NULL, NULL, NULL, NULL),
(62, 'ROSITA EDDY', 'Perempuan', 66, 'jalan', '1402292@gmail.com', '', 'password', 'Pengguna', '1402292', '1402292', NULL, NULL, NULL, NULL),
(63, 'M HUSAINNI', 'Laki-laki', 65, 'jalan', '1403462@gmail.com', '', 'password', 'Pengguna', '1403462', '1403462', NULL, NULL, NULL, NULL),
(64, 'MAKMUN', 'Laki-laki', 54, 'jalan', '1407696@gmail.com', '', 'password', 'Pengguna', '1407696', '1407696', NULL, NULL, NULL, NULL),
(65, 'IRNANIAH', 'Perempuan', 59, 'jalan', '1411020@gmail.com', '', 'password', 'Pengguna', '1411020', '1411020', NULL, NULL, NULL, NULL),
(66, 'MAKHYUDINN S', 'Laki-laki', 62, 'jalan', '1412055@gmail.com', '', 'password', 'Pengguna', '1412055', '1412055', NULL, NULL, NULL, NULL),
(67, 'SALASIAH', 'Perempuan', 54, 'jalan', '1423427@gmail.com', '', 'password', 'Pengguna', '1423427', '1423427', NULL, NULL, NULL, NULL),
(68, 'DONY AMBARA', 'Laki-laki', 37, 'jalan', '1427416@gmail.com', '', 'password', 'Pengguna', '1427416', '1427416', NULL, NULL, NULL, NULL),
(69, 'SYAMSUL HADI', 'Laki-laki', 45, 'jalan', '1429017@gmail.com', '', 'password', 'Pengguna', '1429017', '1429017', NULL, NULL, NULL, NULL),
(70, 'HENNY HADIANY', 'Perempuan', 37, 'jalan', '1432810@gmail.com', '', 'password', 'Pengguna', '1432810', '1432810', NULL, NULL, NULL, NULL),
(71, 'SAPIAH', 'Perempuan', 45, 'jalan', '1439049@gmail.com', '', 'password', 'Pengguna', '1439049', '1439049', NULL, NULL, NULL, NULL),
(72, 'DRS.H MANSYUR I', 'Laki-laki', 60, 'jalan', '1442290@gmail.com', '', 'password', 'Pengguna', '1442290', '1442290', NULL, NULL, NULL, NULL),
(73, 'NUR ALDA YULIANI', 'Perempuan', 19, 'jalan', '1444083@gmail.com', '', 'password', 'Pengguna', '1444083', '1444083', NULL, NULL, NULL, NULL),
(74, 'MINDARJO', 'Laki-laki', 57, 'jalan', '1446611@gmail.com', '', 'password', 'Pengguna', '1446611', '1446611', NULL, NULL, NULL, NULL),
(75, 'BAGUS SATRIYO', 'Laki-laki', 40, 'jalan', '1455683@gmail.com', '', 'password', 'Pengguna', '1455683', '1455683', NULL, NULL, NULL, NULL),
(76, 'MISLAN', 'Laki-laki', 50, 'jalan', '1462195@gmail.com', '', 'password', 'Pengguna', '1462195', '1462195', NULL, NULL, NULL, NULL),
(77, 'HAIRIAH', 'Perempuan', 51, 'jalan', '1462273@gmail.com', '', 'password', 'Pengguna', '1462273', '1462273', NULL, NULL, NULL, NULL),
(78, 'JUANDA ', 'Laki-laki', 55, 'jalan', '1464143@gmail.com', '', 'password', 'Pengguna', '1464143', '1464143', NULL, NULL, NULL, NULL),
(79, 'SYARIFUDIN', 'Laki-laki', 54, 'jalan', '1464792@gmail.com', '', 'password', 'Pengguna', '1464792', '1464792', NULL, NULL, NULL, NULL),
(80, 'MAWARDAH', 'Perempuan', 56, 'jalan', '1467722@gmail.com', '', 'password', 'Pengguna', '1467722', '1467722', NULL, NULL, NULL, NULL),
(81, 'SITI MAESYAROH', 'Perempuan', 65, 'jalan', '1470228@gmail.com', '', 'password', 'Pengguna', '1470228', '1470228', NULL, NULL, NULL, NULL),
(82, 'MARSELINUS BHIA', 'Laki-laki', 43, 'jalan', '1470730@gmail.com', '', 'password', 'Pengguna', '1470730', '1470730', NULL, NULL, NULL, NULL),
(83, 'HARIYATI', 'Perempuan', 28, 'jalan', '1472833@gmail.com', '', 'password', 'Pengguna', '1472833', '1472833', NULL, NULL, NULL, NULL),
(84, 'BUDIANTO', 'Laki-laki', 40, 'jalan', '1474900@gmail.com', '', 'password', 'Pengguna', '1474900', '1474900', NULL, NULL, NULL, NULL),
(85, 'ABDURRAHMAN', 'Laki-laki', 49, 'jalan', '1475904@gmail.com', '', 'password', 'Pengguna', '1475904', '1475904', NULL, NULL, NULL, NULL),
(86, 'HARIANTO', 'Laki-laki', 60, 'jalan', '1479785@gmail.com', '', 'password', 'Pengguna', '1479785', '1479785', NULL, NULL, NULL, NULL),
(87, 'ASMADI ', 'Laki-laki', 62, 'jalan', '1480203@gmail.com', '', 'password', 'Pengguna', '1480203', '1480203', NULL, NULL, NULL, NULL),
(88, 'NI MADE WIRATI', 'Perempuan', 33, 'jalan', '1480489@gmail.com', '', 'password', 'Pengguna', '1480489', '1480489', NULL, NULL, NULL, NULL),
(89, 'RIDUAN', 'Laki-laki', 75, 'jalan', '1481434@gmail.com', '', 'password', 'Pengguna', '1481434', '1481434', NULL, NULL, NULL, NULL),
(90, 'NUR RIZKIA FADILLAH', 'Perempuan', 14, 'jalan', '1481723@gmail.com', '', 'password', 'Pengguna', '1481723', '1481723', NULL, NULL, NULL, NULL),
(91, 'M ANDRI', 'Laki-laki', 31, 'jalan', '1482979@gmail.com', '', 'password', 'Pengguna', '1482979', '1482979', NULL, NULL, NULL, NULL),
(92, 'SYAHRANI', 'Laki-laki', 44, 'jalan', '1483543@gmail.com', '', 'password', 'Pengguna', '1483543', '1483543', NULL, NULL, NULL, NULL),
(93, 'NAOMI RENGGO UTAMI', 'Perempuan', 59, 'jalan', '1483622@gmail.com', '', 'password', 'Pengguna', '1483622', '1483622', NULL, NULL, NULL, NULL),
(94, 'IRMA', 'Perempuan', 33, 'jalan', '1484485@gmail.com', '', 'password', 'Pengguna', '1484485', '1484485', NULL, NULL, NULL, NULL),
(95, 'M ZAINI', 'Laki-laki', 47, 'jalan', '1484526@gmail.com', '', 'password', 'Pengguna', '1484526', '1484526', NULL, NULL, NULL, NULL),
(96, 'ALIDIN', 'Laki-laki', 58, 'jalan', '1484637@gmail.com', '', 'password', 'Pengguna', '1484637', '1484637', NULL, NULL, NULL, NULL),
(97, 'PATIMAH', 'Perempuan', 32, 'jalan', '1485099@gmail.com', '', 'password', 'Pengguna', '1485099', '1485099', NULL, NULL, NULL, NULL),
(98, 'FRANS IDI YANTO', 'Laki-laki', 59, 'jalan', '1485110@gmail.com', '', 'password', 'Pengguna', '1485110', '1485110', NULL, NULL, NULL, NULL),
(99, 'SUMARNO', 'Laki-laki', 67, 'jalan', '1485342@gmail.com', '', 'password', 'Pengguna', '1485342', '1485342', NULL, NULL, NULL, NULL),
(100, 'NORHAYATI', 'Perempuan', 67, 'jalan', '1485670@gmail.com', '', 'password', 'Pengguna', '1485670', '1485670', NULL, NULL, NULL, NULL),
(101, 'ATRAN', 'Laki-laki', 71, 'jalan', '1485998@gmail.com', '', 'password', 'Pengguna', '1485998', '1485998', NULL, NULL, NULL, NULL),
(102, 'SRI NORMILA WATY', 'Perempuan', 63, 'jalan', '1486492@gmail.com', '', 'password', 'Pengguna', '1486492', '1486492', NULL, NULL, NULL, NULL),
(103, 'SANIAH', 'Perempuan', 61, 'jalan', '1487851@gmail.com', '', 'password', 'Pengguna', '1487851', '1487851', NULL, NULL, NULL, NULL),
(104, 'NASRULLAH', 'Laki-laki', 40, 'jalan', '1488047@gmail.com', '', 'password', 'Pengguna', '1488047', '1488047', NULL, NULL, NULL, NULL),
(105, 'SARIYEM', 'Perempuan', 55, 'jalan', '1489105@gmail.com', '', 'password', 'Pengguna', '1489105', '1489105', NULL, NULL, NULL, NULL),
(106, 'ZAKARIA', 'Laki-laki', 49, 'jalan', '1489512@gmail.com', '', 'password', 'Pengguna', '1489512', '1489512', NULL, NULL, NULL, NULL),
(107, 'SRI SARIYANI', 'Perempuan', 55, 'jalan', '1489867@gmail.com', '', 'password', 'Pengguna', '1489867', '1489867', NULL, NULL, NULL, NULL),
(108, 'M RIDHA AL FADHIL', 'Laki-laki', 12, 'jalan', '1490109@gmail.com', '', 'password', 'Pengguna', '1490109', '1490109', NULL, NULL, NULL, NULL),
(109, 'EFLIN KOYANSOW', 'Laki-laki', 59, 'jalan', '1490315@gmail.com', '', 'password', 'Pengguna', '1490315', '1490315', NULL, NULL, NULL, NULL),
(110, 'HELMIAH', 'Perempuan', 46, 'jalan', '1490446@gmail.com', '', 'password', 'Pengguna', '1490446', '1490446', NULL, NULL, NULL, NULL),
(111, 'CHRISTINA SUYATMI', 'Perempuan', 62, 'jalan', '1490931@gmail.com', '', 'password', 'Pengguna', '1490931', '1490931', NULL, NULL, NULL, NULL),
(112, 'M TAUFIQ', 'Laki-laki', 26, 'jalan', '1491011@gmail.com', '', 'password', 'Pengguna', '1491011', '1491011', NULL, NULL, NULL, NULL),
(113, 'IWAN ARDIANSYAH', 'Laki-laki', 54, 'jalan', '1491486@gmail.com', '', 'password', 'Pengguna', '1491486', '1491486', NULL, NULL, NULL, NULL),
(114, 'TJATUR ARIEFIANTO', 'Laki-laki', 45, 'jalan', '1491652@gmail.com', '', 'password', 'Pengguna', '1491652', '1491652', NULL, NULL, NULL, NULL),
(115, 'M DAFI\'I', 'Laki-laki', 24, 'jalan', '1491653@gmail.com', '', 'password', 'Pengguna', '1491653', '1491653', NULL, NULL, NULL, NULL),
(116, 'ABDUSSALAM', 'Laki-laki', 43, 'jalan', '1492365@gmail.com', '', 'password', 'Pengguna', '1492365', '1492365', NULL, NULL, NULL, NULL),
(117, 'AGUNG', 'Laki-laki', 40, 'jalan', '1492633@gmail.com', '', 'password', 'Pengguna', '1492633', '1492633', NULL, NULL, NULL, NULL),
(118, 'BAHRUDIN', 'Laki-laki', 60, 'jalan', '1492680@gmail.com', '', 'password', 'Pengguna', '1492680', '1492680', NULL, NULL, NULL, NULL),
(119, 'AHMAD GAZAL', 'Laki-laki', 66, 'jalan', '1492758@gmail.com', '', 'password', 'Pengguna', '1492758', '1492758', NULL, NULL, NULL, NULL),
(120, 'HARTATIK', 'Perempuan', 66, 'jalan', '1500196@gmail.com', '', 'password', 'Pengguna', '1500196', '1500196', NULL, NULL, NULL, NULL),
(121, 'SURIANI', 'Perempuan', 42, 'jalan', '1500416@gmail.com', '', 'password', 'Pengguna', '1500416', '1500416', NULL, NULL, NULL, NULL),
(122, 'IBRAMSYAH', 'Laki-laki', 55, 'jalan', '1500492@gmail.com', '', 'password', 'Pengguna', '1500492', '1500492', NULL, NULL, NULL, NULL),
(123, 'AINUN', 'Perempuan', 58, 'jalan', '1500494@gmail.com', '', 'password', 'Pengguna', '1500494', '1500494', NULL, NULL, NULL, NULL),
(124, 'RUSMAWATI', 'Perempuan', 66, 'jalan', '1500553@gmail.com', '', 'password', 'Pengguna', '1500553', '1500553', NULL, NULL, NULL, NULL),
(125, 'M FADLY', 'Laki-laki', 35, 'jalan', '1500651@gmail.com', '', 'password', 'Pengguna', '1500651', '1500651', NULL, NULL, NULL, NULL),
(126, 'SITI AISAH', 'Perempuan', 61, 'jalan', '1500932@gmail.com', '', 'password', 'Pengguna', '1500932', '1500932', NULL, NULL, NULL, NULL),
(127, 'SUKITAH', 'Perempuan', 61, 'jalan', '1500991@gmail.com', '', 'password', 'Pengguna', '1500991', '1500991', NULL, NULL, NULL, NULL),
(128, 'AISYAH', 'Perempuan', 44, 'jalan', '1501104@gmail.com', '', 'password', 'Pengguna', '1501104', '1501104', NULL, NULL, NULL, NULL),
(129, 'SULEMAN', 'Laki-laki', 43, 'jalan', '1501175@gmail.com', '', 'password', 'Pengguna', '1501175', '1501175', NULL, NULL, NULL, NULL),
(130, 'KASIRAH', 'Perempuan', 71, 'jalan', '1501916@gmail.com', '', 'password', 'Pengguna', '1501916', '1501916', NULL, NULL, NULL, NULL),
(131, 'AGUS SUDIYONO', 'Laki-laki', 56, 'jalan', '1502486@gmail.com', '', 'password', 'Pengguna', '1502486', '1502486', NULL, NULL, NULL, NULL),
(132, 'ISHAQ', 'Laki-laki', 40, 'jalan', '1502600@gmail.com', '', 'password', 'Pengguna', '1502600', '1502600', NULL, NULL, NULL, NULL),
(133, 'ENY SUPRAPTI', 'Perempuan', 42, 'jalan', '1502839@gmail.com', '', 'password', 'Pengguna', '1502839', '1502839', NULL, NULL, NULL, NULL),
(134, 'AKHMAD ROSANJI', 'Laki-laki', 54, 'jalan', '1503153@gmail.com', '', 'password', 'Pengguna', '1503153', '1503153', NULL, NULL, NULL, NULL),
(135, 'M KHAIRI', 'Laki-laki', 50, 'jalan', '1503231@gmail.com', '', 'password', 'Pengguna', '1503231', '1503231', NULL, NULL, NULL, NULL),
(136, 'BRENKIN GOHONG', 'Laki-laki', 71, 'jalan', '1503400@gmail.com', '', 'password', 'Pengguna', '1503400', '1503400', NULL, NULL, NULL, NULL),
(137, 'NORSEHAN', 'Perempuan', 67, 'jalan', '1504021@gmail.com', '', 'password', 'Pengguna', '1504021', '1504021', NULL, NULL, NULL, NULL),
(138, 'VERDINANDUS QUIDOLAU', 'Laki-laki', 41, 'jalan', '1504141@gmail.com', '', 'password', 'Pengguna', '1504141', '1504141', NULL, NULL, NULL, NULL),
(139, 'ALMAIDA', 'Perempuan', 25, 'jalan', '1504152@gmail.com', '', 'password', 'Pengguna', '1504152', '1504152', NULL, NULL, NULL, NULL),
(140, 'PUGUH YULIANTO', 'Laki-laki', 35, 'jalan', '1504297@gmail.com', '', 'password', 'Pengguna', '1504297', '1504297', NULL, NULL, NULL, NULL),
(141, 'HASANUDDIN', 'Laki-laki', 61, 'jalan', '1504740@gmail.com', '', 'password', 'Pengguna', '1504740', '1504740', NULL, NULL, NULL, NULL),
(142, 'PAIMAN', 'Laki-laki', 56, 'jalan', '1505055@gmail.com', '', 'password', 'Pengguna', '1505055', '1505055', NULL, '111111111111', NULL, NULL),
(143, 'NANGIMAH', 'Perempuan', 59, 'jalan', '1506043@gmail.com', '', 'password', 'Pengguna', '1506043', '1506043', NULL, NULL, NULL, NULL),
(144, 'Anisha Pratiwi', 'Perempuan', 22, 'jalan', '1506054@gmail.com', '', 'password', 'Pengguna', '1506054', '1506054', NULL, NULL, NULL, NULL),
(145, 'Siti Fatimah', 'Perempuan', 21, 'jalan', '1506055@gmail.com', '', 'password', 'Pengguna', '1506055', '1506055', NULL, NULL, NULL, NULL),
(146, 'SYAHNAS ENJANG', 'Perempuan', 21, 'jalan', '1506056@gmail.com', '', 'password', 'Pengguna', '1506056', '1506056', NULL, NULL, NULL, NULL),
(147, 'NANGIMAH', 'Perempuan', 59, 'jalan', '1506057@gmail.com', '', 'password', 'Pengguna', '1506057', '1506057', NULL, NULL, NULL, NULL),
(148, 'syahroni', 'Laki-laki', 23, 'jalan', '1506058@gmail.com', '', 'password', 'Pengguna', '1506058', '1506058', NULL, NULL, NULL, NULL),
(149, '123', 'Laki-laki', 123, 'address', '123@gmail.com', NULL, '$2y$10$rZ.p1qy7StgyWGII4Z2Lpev4VF4UDPT1uBlGpWhjBv5vVOQGz3fPK', 'Pengguna', 'SKypkJ3E7vxzcGRETNkEciK52j8kst3q4qyy7QS6Jmk41Uy0OwqOOuatOQHJ', '1506059', NULL, NULL, '2023-07-10 00:46:50', '2023-07-10 00:46:50'),
(150, '123', 'Laki-laki', 123, 'address', '123@gmail.com', NULL, '$2y$10$E6YhvRPL.gCHvPn.tRq5Ee8nZQOSRo2KOD8NZibhhThQMTbNPDCNS', 'Pengguna', 'FyQtzNblf2sVyxe1D2GS8UEO2KtPIqLuRDR1kEArzITqU0dnKKbYVzBlkjCz', '1506060', '2023-07-18', '123', '2023-07-10 00:48:49', '2023-07-10 00:48:49'),
(151, 'Muhammad Rafii', 'Laki-laki', 23, 'Jl. Gubernur Syarkawi/Lingkar Utara', 'mrafii@gmail.com', NULL, '$2y$10$WLbM1YD6dxLK/FHZjsVXbuj5xlCSqj2o8UwMQ6grrMURAEU45iuNK', 'Pengguna', 'KdKBL8R6ayAAdwZ6Kn9YCnsMTEs8yfQBKi9QuWmvG21YoxCIYLERwldC3Zg5', '1506061', NULL, '088813131919', '2023-07-20 06:20:34', '2023-07-20 06:20:34'),
(152, 'shanum zoya', 'Perempuan', 45, 'senaken', 'njoy@gmail.com', NULL, '$2y$10$kHVjkG/KIJK36I.YOUz73.WAOxmLwbJhJu9uieCHnfKDLZAbZ4PTm', 'Pengguna', 'B7NQpXX9wJ4m6Xf2mp5IfbccwisbwzYF5y9MpaaVtKHi6EuftrSoPjrqU59E', '1506062', NULL, '088812345678', '2023-07-22 06:07:27', '2023-07-22 06:07:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturans`
--
ALTER TABLE `aturans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datapasien`
--
ALTER TABLE `datapasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_aturans`
--
ALTER TABLE `detail_aturans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gejalas`
--
ALTER TABLE `gejalas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala_pasien`
--
ALTER TABLE `gejala_pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`pasien_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `penyakits`
--
ALTER TABLE `penyakits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `riwayat_diagnosa`
--
ALTER TABLE `riwayat_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solusi_1`
--
ALTER TABLE `solusi_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aturans`
--
ALTER TABLE `aturans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `datapasien`
--
ALTER TABLE `datapasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1506064;

--
-- AUTO_INCREMENT for table `detail_aturans`
--
ALTER TABLE `detail_aturans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejalas`
--
ALTER TABLE `gejalas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `gejala_pasien`
--
ALTER TABLE `gejala_pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penyakits`
--
ALTER TABLE `penyakits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_diagnosa`
--
ALTER TABLE `riwayat_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `solusi_1`
--
ALTER TABLE `solusi_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
