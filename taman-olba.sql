-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 31 Jul 2024 pada 08.04
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taman-olba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:20:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createPaket\";i:9;s:11:\"updatePaket\";i:10;s:9:\"viewPaket\";i:11;s:11:\"deletePaket\";i:12;s:13:\"createPesanan\";i:13;s:13:\"updatePesanan\";i:14;s:11:\"viewPesanan\";i:15;s:13:\"deletePesanan\";i:16;s:11:\"viewRiwayat\";i:17;s:11:\"viewSidebar\";i:18;s:11:\"viewProfile\";i:19;s:13:\"updateSetting\";}'),
(2, 'user', 'a:5:{i:0;s:13:\"createPesanan\";i:1;s:11:\"viewRiwayat\";i:2;s:11:\"viewSidebar\";i:3;s:11:\"viewProfile\";i:4;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id_paket` int(100) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `dsk_paket` varchar(100) NOT NULL,
  `harga_paket` int(50) NOT NULL,
  `upload_file` text NOT NULL,
  `status_paket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `nama_paket`, `dsk_paket`, `harga_paket`, `upload_file`, `status_paket`) VALUES
(47, 'Paket GRADUATION', 'Paketan untuk perayaan wisuda', 200000, 'assets/images/paket/9eb598ce6e50f4ed7a4aeabc535d10e7.JPG', 'Aktif'),
(48, 'Paket Outbound', 'Tiket masuk, Renang, Flying Fox, Peralatan Outbound + Instruktur, Lapangan, Dokumentasi', 350000, 'assets/images/paket/7bbe4a4d6bc77bcd9a1fc2946ab3e3ab.JPG', 'Aktif'),
(50, 'Paket HBD', 'Perayaan Ulang Tahun', 150000, 'assets/images/paket/6694c753b9b17.JPG', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int(50) NOT NULL,
  `jumlah_tiket` int(55) NOT NULL,
  `total_harga` int(55) NOT NULL,
  `tanggal_pesanan` date NOT NULL,
  `dsk_pesanan` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `metode_bayar` varchar(100) NOT NULL,
  `status_pesanan` varchar(20) NOT NULL,
  `waktu_pemesanan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id_pesanan`, `nama_paket`, `harga_paket`, `jumlah_tiket`, `total_harga`, `tanggal_pesanan`, `dsk_pesanan`, `id`, `username`, `firstname`, `phone`, `instagram`, `metode_bayar`, `status_pesanan`, `waktu_pemesanan`) VALUES
(121, 'Paket Outbound', 350000, 2, 0, '2024-07-18', 'qwer', 33, 'krisna', 'Krisna', '081775435675', 'Koossoong', 'COD', 'Accepted', '2024-07-15 13:23:50'),
(122, 'Paket 35', 35000, 2, 0, '2024-07-19', 'wqert', 33, 'krisna', 'Krisna', '081775435675', 'Koossoong', 'COD', 'LUNAS', '2024-07-15 13:27:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `instagram`, `address`) VALUES
(1, 'admin', '$2y$10$qfDBG/AxIjJHdkgpmAzHreaYM5FgEcK9mJH7t3.EXBYugiEYdZiIC', 'admin@admin.com', 'Admin', 'Krisna', '081775435675', '', 'Ngawi'),
(33, 'krisna', '$2y$10$D856GxzLIIeVJRUtsDkx6.K.z3DnUXSrVhxutHHYgPFQecUYARCyq', 'krsprtm86@gmail.com', 'Krisna', 'Pratama', '081775435675', 'Koossoong', 'Ngawi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(33, 32, 2),
(34, 33, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id_paket` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
