-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2019 at 03:22 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon_bjc`
--

-- --------------------------------------------------------

--
-- Table structure for table `bjc_nilai_jawaban`
--

CREATE TABLE `bjc_nilai_jawaban` (
  `id_nilai` int(11) NOT NULL,
  `id_pertanyaan` varchar(5) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `skor` int(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bjc_nilai_jawaban`
--

INSERT INTO `bjc_nilai_jawaban` (`id_nilai`, `id_pertanyaan`, `jawaban`, `skor`, `active`) VALUES
(1, '1', 'Tentu saja, mengapa tidak', 30, '1'),
(2, '1', 'Ya untuk mendapatkan skor yang lebih tinggi', 10, '1'),
(3, '1', 'Saya tidak tahu itu tergantung pada pertanyaan', 20, '1'),
(4, '1', 'Mungkin tidak saya tidak bisa berhenti berbohong', 0, '1'),
(5, '2', 'Agak, saya tertangkap berbohong sesekali', 10, '1'),
(6, '2', 'Ya, sesekali', 20, '1'),
(7, '2', 'Selalu, saya berbohong seolah anda tidak akan pernah membayangkan', 0, '1'),
(8, '2', 'Mereka percaya padaku karena aku jujur', 30, '1'),
(9, '3', 'Saya tidak ingat kapan terakhir kalinya', 30, '1'),
(10, '3', 'Saya nyaris tidak berbohong', 20, '1'),
(12, '3', 'Saya sering berbohong saat pamitan pergi keluar', 0, '1'),
(13, '3', 'Terkadang saya berlagak sakit agar terbebas dari pekerjaan rumah', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `bjc_pekerjaan`
--

CREATE TABLE `bjc_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `id_user` varchar(2) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `active` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `status_pengupload` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gambar` tinyblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bjc_pertanyaan`
--

CREATE TABLE `bjc_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `active` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bjc_pertanyaan`
--

INSERT INTO `bjc_pertanyaan` (`id_pertanyaan`, `pertanyaan`, `active`) VALUES
(1, 'Apakah anda akan jujur menjawab pertanyaan selanjutnya?', '1'),
(2, 'Apakah orang lain biasa mempercayai anda?', '1'),
(3, 'Seberapa sering anda berbohong kepada kedua orang tua anda?', '1'),
(4, 'Bagaimana perasaanmu ketika berbohong?', '1'),
(5, 'Kapan anda akan berbohong?', '1'),
(6, 'Apa taktik berbohong anda?', '1'),
(7, 'Anda dalam kesulitan untuk sesuatu yang tidak anda lakukan. Apa yang kamu kerjakan?', '1'),
(8, 'Permainan kartu mana yang akan kamu mainkan?', '1'),
(9, 'Pilih kutipan:', '1'),
(10, 'Jadi, apakah anda berbohong di kuiz ini?', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bjc_perusahaan`
--

CREATE TABLE `bjc_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` tinyblob NOT NULL,
  `active` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bjc_skill`
--

CREATE TABLE `bjc_skill` (
  `id_skill` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `nama_skill` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bjc_skor`
--

CREATE TABLE `bjc_skor` (
  `id_skor` int(11) NOT NULL,
  `id_pertanyaan` varchar(100) NOT NULL,
  `id_nilai` varchar(100) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `skor` int(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bjc_user`
--

CREATE TABLE `bjc_user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bjc_user`
--

INSERT INTO `bjc_user` (`id`, `username`, `nama`, `email`, `jenis_kelamin`, `gambar`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'adminsuper', 'Admin Super', 'sisadaadm19@gmail.com', 'Laki-Laki', 'defaullt.jpg', '$2y$10$TAt8D4KuiBEA12DAJGS9Y.5o2Dhcri4B/QmWZ.iXMGQURLuwOZPIC', 1, 1, '1571059932'),
(2, 'admin', 'Admin', 'joko.riyadi97@gmail.com', 'Perempuan', 'default.jpg', '$2y$10$7ts46nrNe5Ggft06KBwjSuzziscyw1YhEwG.CzAZ57q1fmWKrHxm.', 2, 1, '1571059932'),
(3, 'jokorey', 'joko riyadi', 'joko.riyadi9@gmail.com', 'Laki-Laki', 'default.jpg', '$2y$10$fGRsejnw4/hy8m5axgpme..zwCMSAZDyzuRmgiuK.8cd8ioYA38A2', 1, 1, '1571059932'),
(6, 'riya', 'riya', 'riya@gmail.com', 'Perempuan', 'default.jpg', '$2y$10$.Bd.4zGaDs6Xwv8UyS2TGe.XrqYSdA.QWN/oGcAWRgq14PUq825oi', 1, 1, '1571060266');

-- --------------------------------------------------------

--
-- Table structure for table `bjc_user_role`
--

CREATE TABLE `bjc_user_role` (
  `id` int(100) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bjc_user_role`
--

INSERT INTO `bjc_user_role` (`id`, `role`) VALUES
(1, 'admin Super'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bjc_user_token`
--

CREATE TABLE `bjc_user_token` (
  `id` int(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bjc_nilai_jawaban`
--
ALTER TABLE `bjc_nilai_jawaban`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `bjc_pekerjaan`
--
ALTER TABLE `bjc_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `bjc_pertanyaan`
--
ALTER TABLE `bjc_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `bjc_perusahaan`
--
ALTER TABLE `bjc_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `bjc_skill`
--
ALTER TABLE `bjc_skill`
  ADD PRIMARY KEY (`id_skill`);

--
-- Indexes for table `bjc_skor`
--
ALTER TABLE `bjc_skor`
  ADD PRIMARY KEY (`id_skor`);

--
-- Indexes for table `bjc_user`
--
ALTER TABLE `bjc_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bjc_user_role`
--
ALTER TABLE `bjc_user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bjc_user_token`
--
ALTER TABLE `bjc_user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bjc_nilai_jawaban`
--
ALTER TABLE `bjc_nilai_jawaban`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bjc_pekerjaan`
--
ALTER TABLE `bjc_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bjc_pertanyaan`
--
ALTER TABLE `bjc_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bjc_perusahaan`
--
ALTER TABLE `bjc_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bjc_skill`
--
ALTER TABLE `bjc_skill`
  MODIFY `id_skill` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bjc_skor`
--
ALTER TABLE `bjc_skor`
  MODIFY `id_skor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bjc_user`
--
ALTER TABLE `bjc_user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bjc_user_role`
--
ALTER TABLE `bjc_user_role`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bjc_user_token`
--
ALTER TABLE `bjc_user_token`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
