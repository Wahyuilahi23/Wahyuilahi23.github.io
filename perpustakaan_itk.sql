-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Mei 2018 pada 14.23
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan itk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `databuku`
--

CREATE TABLE `databuku` (
  `KodeBuku` varchar(12) NOT NULL,
  `NamaBuku` varchar(30) NOT NULL,
  `NamaPengarang` varchar(25) NOT NULL,
  `Penerbit` varchar(25) NOT NULL,
  `TahunTerbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `databuku`
--

INSERT INTO `databuku` (`KodeBuku`, `NamaBuku`, `NamaPengarang`, `Penerbit`, `TahunTerbit`) VALUES
('BHS0001', 'Sastara Indonesia', 'Supardi', 'Erlangga', 2008),
('BHS002', 'Bhs Indonesia', 'Susanto', '', 0000),
('IPA0001', 'Ilmu Alam', 'Ryanti', 'Yudihtira', 2008);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login1`
--

CREATE TABLE `login1` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login1`
--

INSERT INTO `login1` (`Username`, `Password`) VALUES
('wahyuilahi', 'wahyuilahi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databuku`
--
ALTER TABLE `databuku`
  ADD PRIMARY KEY (`KodeBuku`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
