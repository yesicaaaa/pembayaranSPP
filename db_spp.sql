-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 12:58 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp`
--
CREATE DATABASE `db_spp`;
-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
(1, 'XI', 'OTKP'),
(5, 'XI', 'TKJ'),
(6, 'X', 'OTKP'),
(8, 'X', 'TKJ'),
(9, 'XII', 'TKJ'),
(12, 'XII', 'RPL'),
(13, 'X', 'RPL'),
(15, 'XII', 'OTKP'),
(16, 'XI', 'RPL');

-- --------------------------------------------------------

--
-- Table structure for table `log_petugas`
--

CREATE TABLE `log_petugas` (
  `id_log_petugas` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nama_petugas_baru` varchar(128) NOT NULL,
  `nama_petugas_lama` varchar(128) NOT NULL,
  `email_baru` varchar(128) NOT NULL,
  `email_lama` varchar(128) NOT NULL,
  `no_telp_lama` varchar(128) NOT NULL,
  `no_telp_baru` varchar(128) NOT NULL,
  `alamat_lama` text NOT NULL,
  `alamat_baru` text NOT NULL,
  `posisi_lama` varchar(128) NOT NULL,
  `posisi_baru` varchar(128) NOT NULL,
  `tgl_diubah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_petugas`
--

INSERT INTO `log_petugas` (`id_log_petugas`, `id_petugas`, `nama_petugas_baru`, `nama_petugas_lama`, `email_baru`, `email_lama`, `no_telp_lama`, `no_telp_baru`, `alamat_lama`, `alamat_baru`, `posisi_lama`, `posisi_baru`, `tgl_diubah`) VALUES
(1, 2, 'Ajeng Mae', 'Ajeng Maelani', 'ajengm@gmail.com', 'ajeng@gmail.com', '08945432222', '08945432323', 'Jl.Cibaduyut Raya', 'Jl.Cibaduyut', 'Petugas', 'Admin', '2021-04-01'),
(2, 2, 'Ajeng Maelani', 'Ajeng Mae', 'ajeng@gmail.com', 'ajengm@gmail.com', '08945432323', '08945432323', 'Jl.Cibaduyut', 'Jl. Cibaduyut', 'Admin', 'Petugas', '2021-04-02'),
(3, 6, 'baruuu', 'baru', 'baru@gmail.com', 'baru@gmail.com', '0898509435', '0898509435', 'Jl. Cibaduyut Raya', 'Jl. Cibaduyut Raya', 'Admin', 'Admin', '2021-04-03'),
(4, 7, 'baruuuu', 'baru', 'baru@gmail.com', 'baru@gmail.com', '08945434545', '08945434545', 'Jl. Cibaduyut Raya', 'Jl. Cibaduyut Raya', 'Petugas', 'Petugas', '2021-04-05'),
(5, 1, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn04@gmail.com', 'yesicaagrn04@gmail.com', '08945434544', '08945434800', 'Jl. Ciparay Tengah', 'Jl. Ciparay Tengah', 'Admin', 'Admin', '2021-04-05'),
(6, 1, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn04@gmail.com', 'yesicaagrn04@gmail.com', '08945434800', '08945434800', 'Jl. Ciparay Tengah', 'Jl. Ciparay Tengah', 'Admin', 'Admin', '2021-04-05'),
(7, 1, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn04@gmail.com', 'yesicaagrn04@gmail.com', '08945434800', '08945434811', 'Jl. Ciparay Tengah', 'Jl. Ciparay Tengah', 'Admin', 'Admin', '2021-04-05'),
(8, 1, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn04@gmail.com', 'yesicaagrn04@gmail.com', '08945434811', '08945434800', 'Jl. Ciparay Tengah', 'Jl. Ciparay Tengah', 'Admin', 'Admin', '2021-04-05'),
(9, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432323', '08945432333', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-05'),
(10, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432333', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-05'),
(11, 9, 'baruuuuu', 'baru', 'yesic@gmail.com', 'yesica@gmail.com', '08945434545', '089400000', 'Bandung', 'Bandungg', 'Admin', 'Petugas', '2021-04-06'),
(12, 10, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn04@gmail.com', 'yesicaagrn04@gmail.com', '085678329832', '085678329832', 'Bandung', 'Bandung', 'Admin', 'Admin', '2021-04-07'),
(13, 8, 'Yesica Anggraeni', 'Celine Natalie', 'yesicaagrn654@gmail.com', 'yesicaagrn654@gmail.com', '085844739299', '085844739299', 'Bandung', 'Bandung', 'Petugas', 'Admin', '2021-04-07'),
(14, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(16, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(17, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(18, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(19, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(20, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajengg@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(22, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajengg@gmail.com', 'ajengg@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(23, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajengg@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(24, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(25, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajengg@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(27, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajengg@gmail.com', 'ajengg@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(28, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajengg@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(31, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '08945432300', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Petugas', '2021-04-07'),
(33, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '08945432300', '0894543200', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Petugas', 'Admin', '2021-04-07'),
(34, 15, 'baruuu', 'baru', 'baru@gmail.com', 'baru@gmail.com', '08945432300', '08945432300', 'Bandung', 'Bandung', 'Petugas', 'Petugas', '2021-04-07'),
(35, 8, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn654@gmail.com', 'yesicaagrn654@gmail.com', '085844739299', '08584473900', 'Bandung', 'Bandung', 'Admin', 'Admin', '2021-04-07'),
(36, 8, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn654@gmail.com', 'yesicaagrn654@gmail.com', '08584473900', '08584470000', 'Bandung', 'Bandung', 'Admin', 'Admin', '2021-04-07'),
(37, 8, 'Yesica Anggraeni', 'Yesica Anggraeni', 'yesicaagrn654@gmail.com', 'yesicaagrn654@gmail.com', '08584470000', '08584470000', 'Bandung', 'Bandung', 'Admin', 'Admin', '2021-04-07'),
(38, 16, 'baru', 'baru', 'yesica@gmail.com', 'yesica@gmail.com', '08945434544', '0894543400', 'Bandung', 'Bandung', 'Admin', 'Petugas', '2021-04-07'),
(39, 2, 'Ajeng Maelani', 'Ajeng Maelani', 'ajeng@gmail.com', 'ajeng@gmail.com', '0894543200', '0894543200', 'Jl. Cibaduyut', 'Jl. Cibaduyut', 'Admin', 'Petugas', '2021-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(8) NOT NULL,
  `tahun_dibayar` varchar(4) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `status` enum('Lunas','Belum Lunas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`, `status`) VALUES
(2, 1, '0085943323', '2021-04-05', 'Februari', '2021', 10, 405000, 'Lunas'),
(11, 1, '0085942232', '2021-04-06', 'Januari', '2021', 10, 405000, 'Lunas'),
(12, 1, '0075894388', '2021-04-06', 'Maret', '2021', 10, 405000, 'Lunas'),
(13, 1, '0043542387', '2021-04-06', 'April', '2021', 1, 800000, 'Lunas'),
(14, 1, '0085749934', '2021-04-06', 'April', '2021', 10, 405000, 'Lunas'),
(15, 1, '0085749934', '2021-04-06', 'Januari', '2021', 10, 405000, 'Lunas'),
(16, 1, '0085749934', '2021-04-06', 'Juni', '2021', 10, 405000, 'Lunas'),
(17, 2, '0085749934', '2021-04-06', 'November', '2021', 10, 405000, 'Lunas'),
(20, 2, '0043542387', '2021-04-07', 'Juli', '2021', 1, 800000, 'Lunas'),
(21, 2, '0085749934', '2021-04-07', 'Oktober', '2021', 10, 405000, 'Lunas'),
(22, 8, '0043542387', '2021-04-07', 'Mei', '2021', 1, 800000, 'Lunas'),
(23, 8, '0043542387', '2021-04-07', 'Septembe', '2021', 1, 800000, 'Lunas'),
(25, 8, '0032475543', '2021-04-07', 'Maret', '2021', 10, 405000, 'Lunas'),
(26, 2, '0085749934', '2021-04-07', 'Juli', '2021', 10, 405000, 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `gambar` varchar(128) DEFAULT NULL,
  `no_telp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `email`, `password`, `nama_petugas`, `gambar`, `no_telp`, `alamat`, `level`) VALUES
(2, 'ajeng@gmail.com', '$2y$10$Z145QqMT90VLwoEWLmN0MuChS9Hv1yNh4bfFfpGQk2qOlWGLFQPGe', 'Ajeng Maelani', 'default.png', '0894543200', 'Jl. Cibaduyut', 'Petugas'),
(8, 'yesicaagrn654@gmail.com', '$2y$10$75egwWgKPzKJg1B3nFNWkejxUx5kJsBmSriNirwKDDITNAJAXOQyq', 'Yesica Anggraeni', 'default.png', '08584470000', 'Bandung', 'Admin'),
(11, 'yesicaagrn04@gmail.com', '$2y$10$SMiCBItrfbohIPyL9NLVOexvkXv3ikJ.lPms3VmlmqYPS.XkMvJ/a', 'Celine Natalie', 'default.png', '08945434544', 'Bandung', 'Petugas');

--
-- Triggers `petugas`
--
DELIMITER $$
CREATE TRIGGER `before_update_petugas` BEFORE UPDATE ON `petugas` FOR EACH ROW BEGIN

INSERT INTO log_petugas
SET id_petugas = old.id_petugas,
nama_petugas_baru = new.nama_petugas,
nama_petugas_lama = old.nama_petugas,
email_baru = new.email,
email_lama = old.email,
no_telp_baru = new.no_telp,
no_telp_lama = old.no_telp,
alamat_baru = new.alamat,
alamat_lama = old.alamat,
posisi_baru = new.level,
posisi_lama = old.level,
tgl_diubah = now();

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` char(10) NOT NULL,
  `nis` char(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `email`, `gambar`, `id_kelas`, `alamat`, `no_telp`, `id_spp`, `password`) VALUES
('0032475543', '1819.10007', 'Pebi Riyani', 'pebi@gmail.com', 'default.png', 5, 'Bandung', '089475893485', 10, '$2y$10$QBpoeQ5PbuSEg7qKCX7FpOikNzPwPgDoUv05YDdd6JdmpP08ZZura'),
('0043542387', '1718.10032', 'Riana Damayanti', 'riana@gmail.com', 'default.png', 1, 'Jl. Cibaduyut Raya', '08945434544', 1, '$2y$10$htpl8NQ6EYWpXghXGZ.HKuUfYZfxoxJaWdwzWs/OWKzOhnMSHvfey'),
('0075894388', '1819.10014', 'Nauval Abyan S', 'nauval@gmail.com', 'default.png', 13, 'Bandung', '089578443922', 10, '$2y$10$0IxFqSOBwn1Z5YVZ/4LHKu5VqmSZvX6HG0UTbCTAYOGYyEgpxtSZa'),
('0085749934', '1819.10032', 'Kirani Rizkya ', 'kirani@gmail.com', 'default.png', 6, 'Bandung', '085574832238', 10, '$2y$10$L6RRjP7/NsncTyFA8kr6A.71Z5J1RHOebA/zJkWf14H1TKZajWS36'),
('0085942232', '1819.10015', 'Maya Gita ', 'maya@gmail.com', 'default.png', 9, 'Bandung', '089485842238', 10, '$2y$10$Vh/3JGwYvOfXUyMFWPJtwuNOR41fnJkOrX2fuhj7DIyn9AnYbFC6W'),
('0085943323', '1819.10006', 'Tisha Destiarani', 'tisha@gmail.com', 'default.png', 9, 'Bandung', '089574832274', 10, '$2y$10$NOzAXGyOENzdoKa1SeIX.uSxphmOAPsVSLfGMdE0mgUn1nqR/tzuq');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
(1, 2021, 800000),
(10, 2021, 405000);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'yesicaagrn654@gmail.com', 'dNWOQ+nRqlI7R4I70R9jAJcYCIm9cIfuUWfxWmlOM7Q=', 1617008090),
(4, 'yesicaagrn04@gmail.com', 'G7TRXuawd+YOGOght08o3+Y5zEGWAabid9A7Kk3Slbk=', 1617760236),
(5, 'yesicaagrn04@gmail.com', 'Oyn9Q+ikLnHKCQAiEteHi8R6bWC0iozK31Rs90ZO6w4=', 1617780137),
(6, 'yesicaagrn654@gmail.com', 'hTITJt5dRcONm3dnntkLqFo08kIYc/e6ZSJAcGODMKI=', 1617780186),
(7, 'yesicaagrn654@gmail.com', 'CQEqi6f8krmF/OiVf9uJi1iJVrYBGv0TB+1XNXhHMkA=', 1617780902);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `log_petugas`
--
ALTER TABLE `log_petugas`
  ADD PRIMARY KEY (`id_log_petugas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `idx_spp` (`id_spp`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `log_petugas`
--
ALTER TABLE `log_petugas`
  MODIFY `id_log_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `siswa_ibfk_3` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_4` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
