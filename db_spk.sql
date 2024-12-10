-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2024 pada 08.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `alamat`, `telepon`, `email`, `username`, `password`) VALUES
(1, 'admin', 'Bangkalan', '123', 'admin@gmail.com', 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_spk`
--

CREATE TABLE `hasil_spk` (
  `id_spk` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `hasil_spk` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil_spk`
--

INSERT INTO `hasil_spk` (`id_spk`, `id_calon_kr`, `hasil_spk`) VALUES
(57, 15, 43.90),
(58, 16, 72.47),
(59, 17, 77.00),
(60, 18, 56.70),
(61, 19, 59.70),
(62, 20, 61.87),
(63, 21, 81.40),
(64, 22, 68.27),
(65, 23, 87.20),
(66, 48, 56.20),
(67, 24, 42.60),
(68, 25, 61.90),
(69, 26, 69.00),
(70, 27, 46.80),
(71, 28, 78.00),
(72, 29, 71.20),
(73, 30, 74.60),
(74, 31, 46.80),
(75, 32, 48.10),
(76, 33, 66.10),
(77, 34, 79.20),
(78, 35, 49.10),
(79, 36, 72.80),
(80, 37, 68.27),
(81, 38, 42.60),
(82, 39, 48.10),
(83, 40, 58.40),
(84, 41, 61.87),
(85, 42, 42.60),
(86, 43, 74.80),
(87, 44, 50.30),
(88, 45, 48.10),
(89, 46, 61.87),
(90, 47, 50.30),
(91, 49, 50.27),
(92, 50, 67.60),
(93, 51, 48.10),
(94, 52, 46.80),
(95, 53, 48.10),
(96, 54, 43.90),
(97, 55, 53.30),
(98, 56, 49.00),
(99, 57, 61.90),
(100, 58, 44.60),
(101, 59, 56.67),
(102, 60, 61.80),
(103, 61, 77.00),
(104, 62, 50.27),
(105, 63, 62.60),
(106, 64, 79.20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_tpa`
--

CREATE TABLE `hasil_tpa` (
  `id_test` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `Akreditasi` varchar(100) DEFAULT NULL,
  `Jumlah_Mahasiswa` int(255) DEFAULT NULL,
  `Jumlah_Dosen` int(255) DEFAULT NULL,
  `Biaya_Per_Semester` int(255) DEFAULT NULL,
  `Jumlah_Fakultas` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil_tpa`
--

INSERT INTO `hasil_tpa` (`id_test`, `id_calon_kr`, `Akreditasi`, `Jumlah_Mahasiswa`, `Jumlah_Dosen`, `Biaya_Per_Semester`, `Jumlah_Fakultas`) VALUES
(79, 15, '64', 67, 71, 79, 81),
(80, 16, '65', 69, 75, 78, 81),
(81, 48, '65', 67, 73, 80, 81),
(82, 18, '64', 69, 73, 79, 81),
(83, 19, '65', 68, 73, 79, 81),
(84, 20, '65', 68, 73, 78, 81),
(85, 21, '65', 69, 73, 76, 81),
(86, 22, '65', 69, 74, 78, 81),
(87, 23, '65', 68, 73, 76, 82),
(88, 24, '64', 67, 71, 80, 81),
(89, 25, '65', 69, 73, 79, 81),
(90, 26, '65', 69, 75, 80, 81),
(91, 27, '64', 67, 72, 80, 81),
(92, 28, '64', 66, 75, 76, 81),
(93, 29, '65', 70, 75, 80, 81),
(94, 30, '65', 68, 75, 77, 81),
(95, 31, '64', 67, 72, 80, 81),
(96, 32, '64', 67, 72, 79, 81),
(97, 33, '65', 69, 74, 79, 81),
(98, 34, '65', 68, 73, 76, 81),
(99, 35, '65', 67, 71, 79, 81),
(100, 36, '65', 67, 72, 76, 81),
(101, 37, '65', 69, 74, 78, 81),
(102, 38, '64', 67, 71, 80, 81),
(103, 39, '64', 67, 72, 79, 81),
(104, 40, '65', 68, 73, 80, 81),
(105, 41, '65', 68, 73, 78, 81),
(106, 42, '64', 67, 71, 80, 81),
(107, 43, '65', 70, 74, 77, 81),
(108, 44, '64', 68, 72, 79, 81),
(109, 45, '64', 67, 72, 79, 81),
(110, 46, '65', 68, 73, 78, 81),
(111, 47, '64', 68, 72, 79, 81),
(112, 17, '65', 67, 73, 76, 81),
(113, 49, '64', 67, 72, 78, 81),
(114, 50, '64', 67, 72, 76, 81),
(115, 51, '64', 67, 72, 79, 81),
(116, 52, '64', 67, 72, 80, 81),
(117, 53, '64', 67, 72, 79, 81),
(118, 54, '64', 67, 71, 79, 81),
(119, 55, '65', 67, 72, 79, 81),
(120, 56, '64', 68, 72, 80, 81),
(121, 57, '65', 69, 73, 79, 81),
(122, 58, '64', 66, 72, 80, 81),
(123, 59, '64', 68, 73, 78, 81),
(124, 60, '64', 70, 74, 80, 81),
(125, 61, '65', 67, 73, 76, 81),
(126, 62, '64', 67, 72, 78, 81),
(127, 63, '65', 68, 74, 80, 81),
(128, 64, '65', 68, 73, 76, 81);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(32) DEFAULT NULL,
  `bobot` float(5,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`, `type`) VALUES
(34, 'Akreditasi', 26.00, 'Benefit'),
(35, 'Jumlah_Mahasiswa', 11.00, 'Benefit'),
(36, 'Jumlah_Dosen', 21.00, 'Benefit'),
(37, 'Biaya_Per_Semester', 26.00, 'Cost'),
(38, 'Jumlah_Fakultas', 16.00, 'Benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pts`
--

CREATE TABLE `pts` (
  `id_calon_kr` int(11) NOT NULL,
  `nama_pts` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pts`
--

INSERT INTO `pts` (`id_calon_kr`, `nama_pts`) VALUES
(15, 'Universitas Islam Jakarta'),
(16, 'Universitas Jakarta'),
(17, 'Universitas Kristen Indonesia'),
(18, 'Universitas Muhammadiyah Jakarta'),
(19, 'Universitas Nasional'),
(20, 'Universitas Pancasila'),
(21, 'Universitas Tarumanagara'),
(22, 'Universitas Trisakti'),
(23, 'Universitas Surabaya (UBAYA)'),
(24, 'Universitas 17 Agustus 1945 Jakarta'),
(25, 'Universitas Muhammadiyah Surakarta'),
(26, 'Universitas Mercu Buana'),
(27, 'Universitas Mpu Tantular'),
(28, 'Universitas Pelita Harapan'),
(29, 'Universitas Gunadarma'),
(30, 'Universitas Bina Nusantara'),
(31, 'Universitas Bung Karno'),
(32, 'Universitas Al-Azhar Indonesia'),
(33, 'Universitas Ahmad Dahlan'),
(34, 'Universitas Kristen Petra'),
(35, 'Universitas Pertamina'),
(36, 'Universitas Prasetiya Mulya'),
(37, 'Universitas Islam Indonesia'),
(38, 'Universitas Pramita Indonesia'),
(39, 'Universitas Nusa Mandiri'),
(40, 'Universitas Kristen Satya Wacana'),
(41, 'Universitas Kristen Maranatha'),
(42, 'Institut Teknologi Budi Utomo'),
(43, 'Universitas Telkom'),
(44, 'Universitas Ibn Khaldun Bogor'),
(45, 'Universitas Jayabaya'),
(46, 'Universitas Katolik Indonesia Atma Jaya'),
(47, 'Universitas Krisnadwipayana'),
(48, 'Universitas Kristen Indonesia'),
(49, 'Universitas Kristen Krida Wacana'),
(50, 'Universitas Prof Dr Moestopo (Beragama)'),
(51, 'Universitas Persada Indonesia Yai'),
(52, 'Universitas Islam As-syafiiyah'),
(53, 'Universitas Darma Persada'),
(54, 'Universitas Satya Negara Indonesia'),
(55, 'Universitas Kristen Duta Wacana'),
(56, 'Universitas Bhayangkara Jakarta Raya'),
(57, 'Universitas Muhammadiyah Prof Dr Hamka'),
(58, 'Universitas Azzahra'),
(59, 'Universitas Budi Luhur'),
(60, 'Universitas Indraprasta PGRI'),
(61, 'Universitas Katolik Widya Mandala Surabaya'),
(62, 'Universitas Mohammad Husni Thamrin Jakarta'),
(63, 'Universitas Muhammadiyah Malang'),
(64, 'Universitas Katolik Parahyangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `subkriteria` varchar(255) NOT NULL,
  `nilai` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_subkriteria`, `id_kriteria`, `subkriteria`, `nilai`) VALUES
(62, 34, 'Tidak terakreditasi', 2.00),
(63, 34, 'C', 3.00),
(64, 34, 'B', 4.00),
(65, 34, 'A', 5.00),
(66, 35, '<1000', 1.00),
(67, 35, '1000-7000', 2.00),
(68, 35, '7001-14000', 3.00),
(69, 35, '14001-30000', 4.00),
(70, 35, '>30000', 5.00),
(71, 36, '<100', 1.00),
(72, 36, '101-300', 2.00),
(73, 36, '301-700', 3.00),
(74, 36, '701-1000', 4.00),
(75, 36, '>1000', 5.00),
(76, 37, '>20 juta', 1.00),
(77, 37, '16 jt - 20 jt', 2.00),
(78, 37, '11 jt - 15 jt', 3.00),
(79, 37, '6 jt - 10 jt', 4.00),
(80, 37, '1 jt - 5 jt', 5.00),
(81, 38, '<15', 1.00),
(82, 38, '15-30', 2.00),
(83, 38, '31-45', 3.00),
(84, 38, '46-60', 4.00),
(85, 38, '>60', 5.00);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  ADD PRIMARY KEY (`id_spk`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indeks untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `pts`
--
ALTER TABLE `pts`
  ADD PRIMARY KEY (`id_calon_kr`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  MODIFY `id_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `pts`
--
ALTER TABLE `pts`
  MODIFY `id_calon_kr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
