-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 11:53 AM
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
-- Database: `syahrul_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Laptop Aspire 5', 'Acer', '7760000', '7500000', 'PCS', '18', '6 October 2020, 0:41', '25 December 2022, 11:41'),
(2, 'BR002', 5, 'Laptop Legion 5', 'Lenovo', '12500000', '10000000', 'PCS', '14', '6 October 2020, 0:41', '6 October 2020, 0:54'),
(3, 'BR003', 5, 'POCO M3', 'Xiaomi', '1990000', '1800000', 'PCS', '12', '6 October 2020, 1:34', '27 December 2022, 17:52'),
(4, 'BR004', 6, 'Hoddie Bulu', 'Absolute', '270000', '270000', 'PCS', '6', '25 December 2022, 11:38', NULL),
(5, 'BR005', 1, 'Mouse', 'Logitech', '350000', '300000', 'PCS', '7', '25 December 2022, 11:41', NULL),
(6, 'BR006', 1, 'Keyboard', 'Logitech', '550000', '550000', 'PCS', '10', '25 December 2022, 11:43', NULL),
(7, 'BR007', 7, 'Coca-Cola Dingin', 'Coca-Cola', '5000', '3500', 'PCS', '14', '25 December 2022, 11:44', '25 December 2022, 11:45'),
(8, 'BR008', 7, 'Sprite Dingin', 'Sprite', '5000', '4500', 'PCS', '7', '25 December 2022, 11:45', NULL),
(9, 'BR009', 8, 'Beng-Beng', 'Beng-Beng', '3000', '2500', 'PCS', '12', '25 December 2022, 11:46', '27 December 2022, 17:52'),
(10, 'BR010', 1, 'Tv Polytron', 'Polytron', '1200000', '1150000', 'PCS', '8', '25 December 2022, 11:47', '25 December 2022, 11:56'),
(11, 'BR011', 0, 'Tv LCD LG', 'LG', '250000', '240000', 'PCS', '8', '25 December 2022, 11:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Elektronik', '27 December 2022, 17:50'),
(5, 'HandPhone', '27 December 2022, 17:51'),
(6, 'Pakaian', '27 December 2022, 17:51'),
(7, 'Minuman', '27 December 2022, 17:52'),
(8, 'Makanan', '27 December 2022, 17:52');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'Syahrul', 'bc2c4885c5668d245c4cd05da04b621d', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Syahrul', 'Malangjiwan', '089609569710', 'rulztarito123@gmail.com', '1671940491syahrul.jpg', '061102');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Rulztarito', 'Malangjiwan', '089609569710', 'Muhamamd Syahrul Romadhon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;