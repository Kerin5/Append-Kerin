-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 01:40 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `_dbecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `dapel`
--

CREATE TABLE `dapel` (
  `kode_pelanggan` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `status_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dapel`
--

INSERT INTO `dapel` (`kode_pelanggan`, `nama_pelanggan`, `status_pelanggan`, `alamat_pelanggan`) VALUES
('001', 'Kerin', 'Pelajar', 'Medan'),
('002', 'Raz', 'Pelajar', 'Medan'),
('003', 'Kaur', 'Pelajar', 'Medan');

-- --------------------------------------------------------

--
-- Table structure for table `dapro`
--

CREATE TABLE `dapro` (
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `stock_produk` varchar(100) NOT NULL,
  `gambar_produk` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dapro`
--

INSERT INTO `dapro` (`kode_produk`, `nama_produk`, `harga_produk`, `stock_produk`, `gambar_produk`) VALUES
('001', 'Giorgio Armani Code Le Parfum', '1800000', '31', 'Giorgio Armani Code Le Parfum.jpg'),
('002', 'Giorgio Armani Si Eau de Parfum', '2100000', '21', 'Giorgio Armani Si Eau de Parfum.jpg'),
('003', 'Give Miss Dior Eau de Parfum for Holiday', '1950000', '17', 'Give Miss Dior Eau de Parfum for Holiday.jpg'),
('004', 'Christian Dior Jadore', '1200000', '47', 'Christian Dior Jadore.jpg'),
('005', 'Sauvage Eau de Toilette', '1450000', '23', 'Sauvage Eau de Toilette.jpg'),
('006', 'YSL Libre Eau De Toilette', '2350000', '75', 'Libre Eau De Toilette.jpg'),
('007', 'YSL Libre Eau De Parfum', '2400000', '24', 'Libre Eau De Parfum.jpg'),
('008', 'YSL Libre Intense L Eau de parfum', '2450000', '45', 'Ysl Libre Intense L Eau de parfum.jpg'),
('009', 'YSL Black Opium Eau De Parfum', '2300000', '57', 'Black Opium Eau De Parfum.jpg'),
('010', ' YSL Eau De Parfum', '2200000', '52', 'Eau De Parfum.jpg'),
('011', 'YSL Mon Paris Eau De Parfum', '2150000', '27', 'Mon Paris Eau De Parfum.jpg'),
('012', 'Coco Mademoiselle', '2500000', '22', 'Coco Mademoiselle.jpg'),
('013', 'Gabrielle Chanel Extrait Spray', '3000000', '27', 'GABRIELLE CHANEL EXTRAIT SPRAY.jpg'),
('014', 'Chanel No 5', '2000000', '75', 'Chanel No 5.jpg'),
('015', 'Bleu De Chanel', '1500000', '45', 'BLEU DE CHANEL.jpg'),
('016', 'Chance Eau Tendre Eau de Parfum', '1750000', '52', 'Chance Eau Tendre Eau de Parfum.jpg'),
('017', 'Coach Wild Rose Eau De Parfum', '1150000', '16', 'Coach Wild Rose Eau De Parfum.jpg'),
('018', 'Coach Eau de Parfum For Women', '1250000', '37', 'Coach Eau de Parfum For Women.jpg'),
('019', 'Coach Untuk Pria Eau de Toilette', '950000', '11', 'Coach Untuk Pria Eau de Toilette.jpg'),
('020', 'Coach Blue Man', '900000', '27', 'Coach Blue Man.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dasup`
--

CREATE TABLE `dasup` (
  `kode_supplier` varchar(100) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `status_supplier` varchar(100) NOT NULL,
  `alamat_supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dasup`
--

INSERT INTO `dasup` (`kode_supplier`, `nama_supplier`, `status_supplier`, `alamat_supplier`) VALUES
('000001', 'Ruby', 'Pelajar', 'Medan'),
('000002', 'Jane', 'Pelajar', 'Medan'),
('00005', 'Kerin', 'Pelajar', 'medan');

-- --------------------------------------------------------

--
-- Table structure for table `datajual`
--

CREATE TABLE `datajual` (
  `kodebarang` varchar(10) NOT NULL,
  `namabarang` varchar(100) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `datajual`
--

INSERT INTO `datajual` (`kodebarang`, `namabarang`, `jumlah`, `total`) VALUES
('', '', '1', '0'),
('004', 'Christian Dior Jadore', '1', '1200000'),
('005', ' YSL Eau De Parfum', '1', '2200000'),
('006', 'YSL Mon Paris Eau De Parfum', '1', '2150000'),
('009', 'YSL Black Opium Eau De Parfum', '1', '2300000'),
('017', 'Coach Wild Rose Eau De Parfum', '1', '1150000'),
('020', 'Coach Blue Man', '1', '900000');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`kode`, `nama`, `harga`, `qty`, `total`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `se_user`
--

CREATE TABLE `se_user` (
  `user_id` char(20) NOT NULL,
  `user_name` char(50) NOT NULL,
  `user_company` char(50) NOT NULL,
  `user_email` char(100) NOT NULL,
  `user_hp` char(30) NOT NULL,
  `user_pwd` varchar(32) NOT NULL,
  `user_status` char(100) DEFAULT NULL,
  `user_signin` char(1) DEFAULT NULL,
  `user_signin_time` datetime DEFAULT NULL,
  `user_active` char(1) DEFAULT NULL,
  `user_picture` char(100) DEFAULT NULL,
  `user_level_code` char(5) DEFAULT NULL,
  `user_key_number` char(20) DEFAULT NULL,
  `user_profile_code` char(10) DEFAULT NULL,
  `user_proc_code` char(5) DEFAULT NULL,
  `user_branch_code` char(10) DEFAULT NULL,
  `user_unit_code` char(5) DEFAULT NULL,
  `user_flag` char(10) DEFAULT NULL,
  `user_create_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_user`
--

INSERT INTO `se_user` (`user_id`, `user_name`, `user_company`, `user_email`, `user_hp`, `user_pwd`, `user_status`, `user_signin`, `user_signin_time`, `user_active`, `user_picture`, `user_level_code`, `user_key_number`, `user_profile_code`, `user_proc_code`, `user_branch_code`, `user_unit_code`, `user_flag`, `user_create_time`) VALUES
('risfar', 'risfartesting', '', '', '', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, 'yutube.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0000-00-00 00:00:00'),
('admin', 'admin', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, 'Desert1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0000-00-00 00:00:00'),
('koperasiYKMF', 'KOPERASI YKMF', '', '', '', '044a2fc30eacfb63d14ed32669f66f94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0000-00-00 00:00:00'),
('admininventaris', 'ADMIN INVENTARIS', '', '', '', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '0000-00-00 00:00:00'),
('9000', 'meme', '', '', '', 'd5ab8dc7ef67ca92e41d730982c5c602', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '2023-11-30 11:43:12'),
('Kerin', 'KerinR', '', '', '', '202cb962ac59075b964b07152d234b70', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '2023-11-13 14:40:33'),
('200', 'depo', '', '', '', '3644a684f98ea8fe223c713b77189a77', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '2023-11-30 11:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_barang`
--

CREATE TABLE `tbl_data_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(400) NOT NULL,
  `jenis` varchar(128) NOT NULL,
  `jumlah_barang` int(128) NOT NULL,
  `jumlah_barang_real` int(128) NOT NULL,
  `gudang_barang` char(50) DEFAULT '',
  `satuan_barang` char(50) DEFAULT '',
  `group_barang` varchar(128) NOT NULL,
  `harga_barang` int(50) NOT NULL,
  `harga_barang_jual` int(50) NOT NULL,
  `kategori_barang` varchar(20) NOT NULL,
  `state` char(5) NOT NULL,
  `max_stock` int(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_barang`
--

INSERT INTO `tbl_data_barang` (`id`, `kode_barang`, `nama_barang`, `jenis`, `jumlah_barang`, `jumlah_barang_real`, `gudang_barang`, `satuan_barang`, `group_barang`, `harga_barang`, `harga_barang_jual`, `kategori_barang`, `state`, `max_stock`) VALUES
(20000, 'A001', 'BUKU GARIS 1', 'BUKU', 4574, 0, 'N', 'Buah', '-Silahkan Pilih-', 3000, 0, 'sale', 'N', 10000),
(20001, 'A002', 'BUKU GARIS 2', 'BUKU', 6397, 0, 'N', 'Buah', '-Silahkan Pilih-', 3000, 0, 'sale', '-Sila', 10000),
(20002, 'A003', 'BUKU PETAK KECIL', 'BUKU', 0, 0, 'N', 'Buah', '-Silahkan Pilih-', 0, 0, 'sale', '-Sila', 10000),
(20003, 'B001', 'PULPEN MERAH', 'ALAT TULIS', 0, 0, 'N', 'Pcs', '-Silahkan Pilih-', 0, 0, 'sale', '-Sila', 3000),
(20004, 'C001', 'ATRIBUT SABLON SD', 'ATRIBUT', 0, 0, 'N', 'Pcs', '-Silahkan Pilih-', 0, 0, 'sale', '-Sila', 1000),
(20005, 'C002', 'ATRIBUT SABLON SMP', 'ATRIBUT', 0, 0, 'N', 'Pcs', '-Silahkan Pilih-', 0, 0, 'sale', '-Sila', 500),
(20007, 'D001', 'KERTAS UJIAN GARIS 1', 'KERTAS', 0, 0, 'N', 'Set', '-Silahkan Pilih-', 0, 0, 'sale', '-Sila', 1000),
(20008, 'E001', 'BAJU OLAHRAGA UKURAN 30', 'SERAGAM', 0, 0, 'N', 'Set', '-Silahkan Pilih-', 0, 0, 'sale', '-Sila', 100),
(20009, 'B002', 'PULPEN HITAM', 'ALAT TULIS', 2, 3, '4', '0', '', 0, 0, '', '', 0),
(20010, 'B003', 'BUKU GAMBAR', 'BUKU', 2, 3, '4', '0', '0', 25000, 26000, 'BUKU', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dapel`
--
ALTER TABLE `dapel`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `dapro`
--
ALTER TABLE `dapro`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `dasup`
--
ALTER TABLE `dasup`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- Indexes for table `datajual`
--
ALTER TABLE `datajual`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `se_user`
--
ALTER TABLE `se_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_data_barang`
--
ALTER TABLE `tbl_data_barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data_barang`
--
ALTER TABLE `tbl_data_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20011;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
