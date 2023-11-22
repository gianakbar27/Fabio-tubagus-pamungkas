-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 09:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(10) NOT NULL,
  `nm_agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `nm_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katolik');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) NOT NULL,
  `namakelas` int(10) DEFAULT NULL,
  `kompetensi` varchar(100) DEFAULT NULL,
  `tahun_pembelajaran` int(10) DEFAULT NULL,
  `keterangan` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `namakelas`, `kompetensi`, `tahun_pembelajaran`, `keterangan`) VALUES
(1, 0, 'teknik komputer jaringan', 2022, 'Ramadhan'),
(2, 0, 'rekayasa perangkat lunak', 2023, 'Kusmadi'),
(3, 0, 'desain komunikasi visual', 2023, 'Imam');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tplahir` varchar(50) DEFAULT NULL,
  `tglahir` date DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `hobi` varchar(225) DEFAULT NULL,
  `cita_cita` varchar(225) DEFAULT NULL,
  `jm_saudara` int(100) DEFAULT NULL,
  `idkelas` int(10) DEFAULT NULL,
  `idagama` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `tplahir`, `tglahir`, `alamat`, `hobi`, `cita_cita`, `jm_saudara`, `idkelas`, `idagama`) VALUES
(1, 'Dava Syatria', 'Malang', '2006-09-30', 'jl.klayatan gg.02', 'futsal', 'tentara', 3, 2, 1),
(2, 'Erwinson', 'Surabaya', '2006-10-24', 'jl.tebo', 'main', 'polisi', 2, 3, 2),
(7, 'Dava Syatria', '', '0000-00-00', 'jl.klayatan gg.03', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `role` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, 'suparman', 'parman', 'parman123', 'administrator'),
(2, 'lumenen', 'lumen', 'lumen123', 'petugas'),
(3, 'budiman', 'budi', 'budi123', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
