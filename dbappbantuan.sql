-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 05, 2024 at 04:03 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbappbantuan`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_20_071203_create_penduduks_table', 1),
(6, '2024_07_20_130838_create_penduduks_table', 2),
(7, '2024_07_22_113805_create_sembakos_table', 3),
(8, '2024_07_22_114148_view_sembako', 4),
(9, '2024_08_02_065052_create_tunais_table', 5),
(10, '2024_08_02_065735_view_tunai', 6),
(11, '2024_08_05_114929_create_rumahs_table', 7),
(12, '2024_08_05_115302_view_rumah', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penduduks`
--

CREATE TABLE `penduduks` (
  `nik_kk` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeniskelamin_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgllahir_kk` date NOT NULL,
  `pendidikan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penghasilan_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penduduks`
--

INSERT INTO `penduduks` (`nik_kk`, `nama_kk`, `jeniskelamin_kk`, `tgllahir_kk`, `pendidikan_kk`, `pekerjaan_kk`, `penghasilan_kk`, `alamat_kk`, `created_at`, `updated_at`) VALUES
('1234567890111222', 'Maulana', 'Laki-Laki', '1996-01-17', 'SMA', 'Pedagang', '10000000', 'ANJIR MUARA', '2024-07-22 03:57:06', '2024-07-22 03:57:06'),
('1234567890123456', 'ISKANDAR', 'Laki-Laki', '1981-02-11', 'SMA', 'PETANI', '700000', 'ANJIR PASAR', '2024-07-22 03:59:37', '2024-07-22 03:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
-- Table structure for table `rumahs`
--

CREATE TABLE `rumahs` (
  `id` bigint UNSIGNED NOT NULL,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rumahs`
--

INSERT INTO `rumahs` (`id`, `nik_kk`, `tgl_bantuan`, `jumlah_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1234567890123456', '2024-08-01', '3000000', 'Pembuatan Dapur dan Kamar Mandi', '2024-08-05 07:44:17', '2024-08-05 07:56:21'),
(2, '1234567890111222', '2024-08-21', '100000000', 'Perbaikan Atap dan Dinding Rumah', '2024-08-05 08:02:11', '2024-08-05 08:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `sembakos`
--

CREATE TABLE `sembakos` (
  `id` bigint UNSIGNED NOT NULL,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jenis_bantuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sembakos`
--

INSERT INTO `sembakos` (`id`, `nik_kk`, `tgl_bantuan`, `jenis_bantuan`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1234567890123456', '2024-01-04', 'Beras Gandum 1 Kwintal', 'Bantuan Sosial Dari DPR BATOLA', NULL, '2024-07-26 23:20:26'),
(2, '1234567890111222', '2024-01-05', '11 Kg Minyak Goreng', 'Bantuan Desa', '2024-07-22 05:11:53', '2024-07-26 23:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `tunais`
--

CREATE TABLE `tunais` (
  `id` bigint UNSIGNED NOT NULL,
  `nik_kk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_bantuan` date NOT NULL,
  `jumlah_dana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunais`
--

INSERT INTO `tunais` (`id`, `nik_kk`, `tgl_bantuan`, `jumlah_dana`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, '1234567890111222', '2024-08-13', '3000000', 'Beasiswa KIP Kuliah UNISKA', '2024-08-05 05:56:57', '2024-08-05 05:56:57'),
(4, '1234567890123456', '2024-08-29', '3000000', 'Beasiswa KIP Kuliah UNISKA', '2024-08-05 05:57:51', '2024-08-05 05:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewrumah`
-- (See below for the actual view)
--
CREATE TABLE `viewrumah` (
`alamat_kk` varchar(255)
,`created_at` timestamp
,`id` bigint unsigned
,`jeniskelamin_kk` varchar(255)
,`jumlah_dana` varchar(255)
,`keterangan` varchar(255)
,`nama_kk` varchar(255)
,`nik_kk` varchar(255)
,`pekerjaan_kk` varchar(255)
,`penghasilan_kk` varchar(255)
,`tgl_bantuan` varchar(255)
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewsembako`
-- (See below for the actual view)
--
CREATE TABLE `viewsembako` (
`alamat_kk` varchar(255)
,`created_at` timestamp
,`id` bigint unsigned
,`jenis_bantuan` varchar(255)
,`jeniskelamin_kk` varchar(255)
,`keterangan` varchar(255)
,`nama_kk` varchar(255)
,`nik_kk` varchar(255)
,`pekerjaan_kk` varchar(255)
,`penghasilan_kk` varchar(255)
,`tgl_bantuan` date
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewtunai`
-- (See below for the actual view)
--
CREATE TABLE `viewtunai` (
`alamat_kk` varchar(255)
,`created_at` timestamp
,`id` bigint unsigned
,`jeniskelamin_kk` varchar(255)
,`jumlah_dana` varchar(255)
,`keterangan` varchar(255)
,`nama_kk` varchar(255)
,`nik_kk` varchar(255)
,`pekerjaan_kk` varchar(255)
,`penghasilan_kk` varchar(255)
,`tgl_bantuan` date
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Structure for view `viewrumah`
--
DROP TABLE IF EXISTS `viewrumah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewrumah`  AS SELECT DISTINCT `rumahs`.`id` AS `id`, `rumahs`.`nik_kk` AS `nik_kk`, `penduduks`.`nama_kk` AS `nama_kk`, `penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`, `penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`, `penduduks`.`penghasilan_kk` AS `penghasilan_kk`, `penduduks`.`alamat_kk` AS `alamat_kk`, `rumahs`.`tgl_bantuan` AS `tgl_bantuan`, `rumahs`.`jumlah_dana` AS `jumlah_dana`, `rumahs`.`keterangan` AS `keterangan`, `rumahs`.`created_at` AS `created_at`, `rumahs`.`updated_at` AS `updated_at` FROM (`penduduks` join `rumahs` on((`penduduks`.`nik_kk` = `rumahs`.`nik_kk`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `viewsembako`
--
DROP TABLE IF EXISTS `viewsembako`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewsembako`  AS SELECT DISTINCT `sembakos`.`id` AS `id`, `sembakos`.`nik_kk` AS `nik_kk`, `penduduks`.`nama_kk` AS `nama_kk`, `penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`, `penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`, `penduduks`.`penghasilan_kk` AS `penghasilan_kk`, `penduduks`.`alamat_kk` AS `alamat_kk`, `sembakos`.`tgl_bantuan` AS `tgl_bantuan`, `sembakos`.`jenis_bantuan` AS `jenis_bantuan`, `sembakos`.`keterangan` AS `keterangan`, `sembakos`.`created_at` AS `created_at`, `sembakos`.`updated_at` AS `updated_at` FROM (`penduduks` join `sembakos` on((`penduduks`.`nik_kk` = `sembakos`.`nik_kk`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `viewtunai`
--
DROP TABLE IF EXISTS `viewtunai`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtunai`  AS SELECT DISTINCT `tunais`.`id` AS `id`, `tunais`.`nik_kk` AS `nik_kk`, `penduduks`.`nama_kk` AS `nama_kk`, `penduduks`.`jeniskelamin_kk` AS `jeniskelamin_kk`, `penduduks`.`pekerjaan_kk` AS `pekerjaan_kk`, `penduduks`.`penghasilan_kk` AS `penghasilan_kk`, `penduduks`.`alamat_kk` AS `alamat_kk`, `tunais`.`tgl_bantuan` AS `tgl_bantuan`, `tunais`.`jumlah_dana` AS `jumlah_dana`, `tunais`.`keterangan` AS `keterangan`, `tunais`.`created_at` AS `created_at`, `tunais`.`updated_at` AS `updated_at` FROM (`penduduks` join `tunais` on((`penduduks`.`nik_kk` = `tunais`.`nik_kk`)))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `penduduks`
--
ALTER TABLE `penduduks`
  ADD PRIMARY KEY (`nik_kk`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rumahs`
--
ALTER TABLE `rumahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sembakos`
--
ALTER TABLE `sembakos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tunais`
--
ALTER TABLE `tunais`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rumahs`
--
ALTER TABLE `rumahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sembakos`
--
ALTER TABLE `sembakos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tunais`
--
ALTER TABLE `tunais`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
