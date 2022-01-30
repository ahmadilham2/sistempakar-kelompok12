-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 11:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acsplit`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `code_gejala` varchar(255) DEFAULT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `code_gejala`, `nama_gejala`) VALUES
(1, 'G001', 'Filter AC Kotor ?'),
(2, 'G002', 'Lampu Indikator Berkedip ?'),
(3, 'G003', 'AC Berisik ?'),
(4, 'G004', 'Unit Outdoor Kotor ?'),
(5, 'G005', 'Kompresor Berkarat  ?'),
(6, 'G006', 'Kompresor Berisik ? ?'),
(7, 'G007', 'Freon Bocor ?'),
(8, 'G008', 'Ruangan Lembab ?'),
(9, 'G009', 'Ac Berbau Tak Sedap ?');

-- --------------------------------------------------------

--
-- Table structure for table `pakar`
--

CREATE TABLE `pakar` (
  `id_pakar` int(11) NOT NULL,
  `id_gejala` varchar(255) DEFAULT NULL,
  `jawaban_tidak` varchar(255) DEFAULT NULL,
  `jawaban_iya` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pakar`
--

INSERT INTO `pakar` (`id_pakar`, `id_gejala`, `jawaban_tidak`, `jawaban_iya`) VALUES
(1, 'G001', 'G004', 'G002'),
(2, 'G002', '0', 'G003'),
(3, 'G003', '0', 'P001'),
(4, 'G004', 'G007', 'G005'),
(5, 'G005', '0', 'G006'),
(6, 'G006', '0', 'P002'),
(7, 'G007', '0', 'G008'),
(8, 'G008', 'P003', 'G009'),
(9, 'G009', 'P003', 'P003');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `code_penyakit` varchar(255) DEFAULT NULL,
  `nama_penyakit` varchar(255) DEFAULT NULL,
  `solusi_penyakit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `code_penyakit`, `nama_penyakit`, `solusi_penyakit`) VALUES
(1, 'P001', 'Freon Habis', 'Solusi : Segera Lakukan Penggantian Freon Dengan Yang Baru'),
(2, 'P002', 'Saluran Pembuangan Kotor', 'Solusi : Untuk mengatasi masalah ini tinggal membershikan saluran pembuangan pada ac split\r\n'),
(3, 'P003', 'Filter Ac Kotor', 'Solusi : Untuk mengatasi masalah ini tinggal membershikan Filter pada ac split\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `pakar`
--
ALTER TABLE `pakar`
  ADD PRIMARY KEY (`id_pakar`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pakar`
--
ALTER TABLE `pakar`
  MODIFY `id_pakar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
