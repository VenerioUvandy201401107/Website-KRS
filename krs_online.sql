-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 06:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krs_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_makul` int(11) NOT NULL,
  `nama_makul` text NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `prodi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_makul`, `nama_makul`, `sks`, `semester`, `prodi`) VALUES
(1, 'Metode Penelitian Informatika', 4, 6, 'Ilmu Komputer'),
(2, 'Game Developer', 4, 6, 'Ilmu Komputer'),
(3, 'Kriptografi', 4, 6, 'Ilmu Komputer'),
(4, 'Rekayasa Perangkat Lunak', 4, 6, 'Ilmu Komputer'),
(5, 'E Commerce', 4, 5, 'Teknik Informatika'),
(6, 'Dasar Pemrograman', 4, 3, 'Teknik Informatika'),
(8, 'Sistem Digital', 4, 1, 'Teknik Informatika'),
(9, 'Algoritma dan Pemrograman', 4, 1, 'Teknik Informatika'),
(10, 'Struktur Data', 2, 2, 'Teknik Informatika'),
(11, 'Statistika dan Probablitisas', 3, 2, 'Teknik Informatika'),
(12, 'Metode Numerik', 3, 4, 'Teknik Informatika'),
(13, 'Aplikasi Teknologi Online', 2, 4, 'Teknik Informatika'),
(14, 'Metodologi Penelitian', 2, 6, 'Teknik Informatika'),
(15, 'Aplikasi Kompitasi Bergerak', 2, 6, 'Teknik Informatika'),
(16, 'Kerja Praktek', 2, 7, 'Teknik Informatika'),
(17, 'Proposal dan Seminar Tugas Akhir', 2, 7, 'Teknik Informatika'),
(18, 'Kepribadian dan Komunikasi', 2, 8, 'Teknik Informatika'),
(19, 'Skripsi', 2, 8, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `pengambilan`
--

CREATE TABLE `pengambilan` (
  `id_pengambilan` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `id_makul` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengambilan`
--

INSERT INTO `pengambilan` (`id_pengambilan`, `nim`, `id_makul`, `status`) VALUES
(17, 20117034, 14, 'acc'),
(18, 20117034, 15, 'acc'),
(19, 20117031, 1, 'acc'),
(20, 20117031, 4, 'acc'),
(21, 20117031, 5, 'acc'),
(22, 201401107, 14, 'acc'),
(23, 201401107, 15, 'acc'),
(24, 20140127, 1, 'acc'),
(25, 20140127, 4, 'acc'),
(26, 20140127, 5, 'acc');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nim`, `nama`, `password`, `status`) VALUES
(201, 'Ven', 'Ven', 2),
(20117031, 'Muhammad Saifullah', '12345', 3),
(20117034, 'Hilmi Mubarok', '123', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_makul`);

--
-- Indexes for table `pengambilan`
--
ALTER TABLE `pengambilan`
  ADD PRIMARY KEY (`id_pengambilan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_makul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pengambilan`
--
ALTER TABLE `pengambilan`
  MODIFY `id_pengambilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
