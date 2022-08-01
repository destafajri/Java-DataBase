-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 05:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desta_day27`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen_pembimbing`
--

CREATE TABLE `dosen_pembimbing` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `topic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen_pembimbing`
--

INSERT INTO `dosen_pembimbing` (`id_dosen`, `nama_dosen`, `alamat`, `topic`) VALUES
(1, 'Prof. Wipsar Sunu Brams,PhD', 'Jlraya Condong catur', 'Nanomaterial'),
(2, 'Prof. Dr. Ariswan', 'Gejayan', 'Fisika Semiconductor');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(200) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama_mahasiswa`, `jenis_kelamin`, `alamat`, `id_dosen`) VALUES
(1, 'Desta', 'L', 'Puertorico', 1),
(2, 'King', 'L', 'tangsel', 1),
(3, 'Nandi', 'L', 'planet bekasi', 2),
(4, 'Abi', 'L', 'palembang', 2),
(5, 'Esa', 'P', 'cilacap', 2),
(6, 'Herbol', 'P', 'Sumba', 2),
(7, 'Tino Dutro', 'L', 'GK', 1),
(8, 'Pong pong kopong', 'P', 'Borobudur', 1),
(10, 'Sukmah', 'P', 'Planet Depok', 2),
(11, 'Lily', 'P', 'uji coba', 2),
(12, 'otong', 'P', 'uji coba', 2),
(28, 'Paijo', 'P', 'uji coba', 2),
(29, 'Paijo', 'P', 'uji coba', 2),
(30, 'PaijoRoyo', 'L', 'uji coba', 2),
(31, 'PaijoRoyoLoyoo', 'L', 'uji coba', 2),
(32, 'PaijoRoyoLoyoo', 'L', 'uji coba', 2),
(33, 'PaijoRoyoLoyoo', 'L', 'uji coba', 2),
(34, 'PaijoRoyoLoyoo', 'L', 'uji coba', 2),
(35, 'PaijoRoyoLoyoo', 'L', 'uji coba', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen_pembimbing`
--
ALTER TABLE `dosen_pembimbing`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen_pembimbing`
--
ALTER TABLE `dosen_pembimbing`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen_pembimbing` (`id_dosen`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
