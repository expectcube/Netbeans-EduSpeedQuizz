-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2025 at 02:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduspeed_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil`
--

CREATE TABLE `tbl_hasil` (
  `id` int(11) NOT NULL,
  `mahasiswa_id` int(11) DEFAULT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `skor` int(11) NOT NULL,
  `waktu_selesai` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hasil`
--

INSERT INTO `tbl_hasil` (`id`, `mahasiswa_id`, `quiz_id`, `skor`, `waktu_selesai`) VALUES
(1, 2, 1, 0, '2025-12-13 22:08:17'),
(2, 2, 1, 33, '2025-12-13 23:20:17'),
(3, 2, 1, 0, '2025-12-14 08:02:30'),
(4, 2, 1, 50, '2025-12-14 08:03:14'),
(6, 2, 1, 0, '2025-12-14 08:04:05'),
(7, 1, 1, 0, '2025-12-14 08:07:26'),
(8, 2, 1, 100, '2025-12-14 08:08:34'),
(9, 2, 4, 0, '2025-12-14 09:58:53'),
(10, 2, 4, 0, '2025-12-14 09:59:12'),
(11, 2, 4, 100, '2025-12-14 10:03:20'),
(12, 2, 1, 75, '2025-12-14 12:08:44'),
(13, 2, 1, 66, '2025-12-14 14:56:29'),
(14, 2, 1, 33, '2025-12-14 16:23:17'),
(15, 2, 1, 0, '2025-12-14 17:34:18'),
(16, 2, 5, 100, '2025-12-14 18:10:54'),
(17, 3, 5, 100, '2025-12-14 18:14:53'),
(18, 3, 6, 66, '2025-12-14 18:27:43'),
(19, 3, 6, 87, '2025-12-14 20:23:56'),
(20, 5, 4, 100, '2025-12-14 20:28:25'),
(21, 5, 7, 33, '2025-12-14 20:41:18'),
(22, 5, 7, 99, '2025-12-14 20:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz`
--

CREATE TABLE `tbl_quiz` (
  `id` int(11) NOT NULL,
  `nama_quiz` varchar(100) NOT NULL,
  `waktu_menit` int(11) DEFAULT 5,
  `dosen_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_quiz`
--

INSERT INTO `tbl_quiz` (`id`, `nama_quiz`, `waktu_menit`, `dosen_id`) VALUES
(1, 'Kuis Matematika', 5, 1),
(3, 'Quiz Matematika Dasar', 5, 1),
(4, 'Quiz Anjay Mabar', 9, 1),
(5, 'Tes', 2, 1),
(6, 'Kuis Campuran Umum', 10, 4),
(7, 'Quiz Member', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_soal`
--

CREATE TABLE `tbl_soal` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `pertanyaan` text NOT NULL,
  `opsi_a` varchar(200) NOT NULL,
  `opsi_b` varchar(200) NOT NULL,
  `opsi_c` varchar(200) NOT NULL,
  `opsi_d` varchar(200) NOT NULL,
  `jawaban_benar` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_soal`
--

INSERT INTO `tbl_soal` (`id`, `quiz_id`, `pertanyaan`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `jawaban_benar`) VALUES
(4, 1, '2 + 2 = ?', '3', '4', '5', '6', 'B'),
(5, 1, '5 x 5 = ?', '20', '25', '30', '35', 'B'),
(6, 1, 'Ayam goreng?', 'ya', 'tidak', 'plekeniyk', 'waduh', 'C'),
(8, 4, 'aduhai?', 'Jomok', 'duh le', 'waduh', 'tes', 'A'),
(9, 5, 'Apa yang kamu ketahui tentang saya?', 'aduh', 'weluh', 'ppp', 'tsss', 'A'),
(10, 6, 'Hasil dari 12 × 8 = ?', '86', '96', '88', '108', 'B'),
(11, 6, 'Luas persegi dengan sisi 15 cm adalah ... cm²', '225', '30', '60', '150', 'A'),
(12, 6, 'Bilangan prima terkecil adalah ...', '0', '1', '2', '3', 'C'),
(13, 6, 'Ibu kota Indonesia adalah ...', 'Surabaya', 'Bandung', 'Jakarta', 'Medan', 'C'),
(14, 6, 'Planet terdekat dengan Matahari adalah ...', 'Venus', 'Merkurius', 'Mars', 'Jupiter', 'B'),
(15, 6, 'Hewan yang disebut \"raja hutan\" adalah ...', 'Harimau', 'Singa', 'Gajah', 'Beruang', 'B'),
(16, 6, 'Sungai terpanjang di Indonesia adalah ...', 'Sungai Kapuas', 'Sungai Mahakam', 'Sungai Brantas', 'Sungai Citarum', 'A'),
(17, 6, 'Hasil dari 456 + 789 = ?', '1235', '1245', '1345', '1145', 'B'),
(18, 6, '1000 gram sama dengan ... kilogram', '0,1', '1', '10', '100', 'B'),
(19, 6, 'Lambang kimia air adalah ...', 'O2', 'H2', 'H2O', 'CO2', 'C'),
(20, 6, 'Gunung tertinggi di Indonesia adalah ...', 'Gunung Rinjani', 'Gunung Semeru', 'Gunung Jayawijaya', 'Gunung Merapi', 'C'),
(21, 6, 'Presiden pertama Indonesia adalah ...', 'Soeharto', 'Soekarno', 'Habibie', 'Megawati', 'B'),
(22, 6, 'Hari Kemerdekaan Indonesia diperingati tanggal ...', '17 Agustus', '1 Juni', '10 November', '28 Oktober', 'A'),
(23, 6, 'Jumlah provinsi di Indonesia saat ini adalah ... (2025)', '34', '38', '39', '37', 'B'),
(24, 6, 'Mata uang negara Jepang adalah ...', 'Yuan', 'Won', 'Yen', 'Ringgit', 'C'),
(25, 6, 'Hasil dari 25% dari 400 adalah ...', '75', '100', '125', '150', 'B'),
(26, 6, 'Bentuk lain dari 3/4 adalah ...', '0,25', '0,5', '0,75', '0,8', 'C'),
(27, 6, 'Satuan panjang standar internasional adalah ...', 'Inci', 'Kaki', 'Meter', 'Mil', 'C'),
(28, 6, 'Organ tubuh yang berfungsi memompa darah adalah ...', 'Paru-paru', 'Ginjal', 'Jantung', 'Hati', 'C'),
(29, 6, 'Tanaman yang menghasilkan oksigen melalui fotosintesis disebut ...', 'Produsen', 'Konsumen', 'Dekomposer', 'Parasit', 'A'),
(30, 6, 'Bahasa resmi Perserikatan Bangsa-Bangsa (PBB) ada ... macam', '4', '5', '6', '7', 'C'),
(31, 6, 'Benua terkecil di dunia adalah ...', 'Asia', 'Australia', 'Eropa', 'Afrika', 'B'),
(32, 6, 'Hasil dari 7 × 9 = ?', '56', '63', '72', '81', 'B'),
(33, 6, 'Negara yang dijuluki \"Negeri Sakura\" adalah ...', 'Korea', 'China', 'Jepang', 'Thailand', 'C'),
(34, 6, 'Alat musik tradisional Jawa yang terbuat dari bambu adalah ...', 'Gamelan', 'Angklung', 'Sasando', 'Kolintang', 'B'),
(35, 6, '1 hari = ... jam', '12', '24', '36', '48', 'B'),
(36, 6, 'Hewan mamalia yang bertelur adalah ...', 'Kangguru', 'Platipus', 'Koala', 'Berang-berang', 'B'),
(37, 6, 'Warna bendera Indonesia adalah ...', 'Merah Putih', 'Putih Merah', 'Merah Kuning', 'Hijau Putih', 'A'),
(38, 6, 'Jumlah sisi pada segi enam adalah ...', '4', '5', '6', '8', 'C'),
(39, 6, 'Penemu lampu pijar adalah ...', 'Alexander Graham Bell', 'Thomas Alva Edison', 'Nikola Tesla', 'Albert Einstein', 'B'),
(40, 7, 'Siapa mas fuad?', 'saya sendiri', 'dia sendiri', 'sebelahnya kita', 'teman lookman', 'D'),
(41, 7, 'Ciri ciri lookman', 'dia kuliah di uny', 'dia suka supra', 'dia suka MC', 'dia suka main dark souls', 'C'),
(42, 7, 'Apa itu Anggrek mekar pontianak?', 'woilah cikk', 'nguwawor cik', 'Mana tahan cik', 'masnya loh ya', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('dosen','mahasiswa') NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `role`, `nama_lengkap`) VALUES
(1, 'dosen1', 'pass123', 'dosen', 'Dr. Ani'),
(2, 'maha1', 'pass123', 'mahasiswa', 'Budi Santoso'),
(3, 'notokcomputer', 'pass123', 'mahasiswa', 'Dimas Putra Nur Rohmat'),
(4, 'saulgoodman', 'pass123', 'dosen', 'Saul Goodman'),
(5, 'lookman', 'pass123', 'mahasiswa', 'Zainal Luqman Wijaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_hasil`
--
ALTER TABLE `tbl_hasil`
  ADD CONSTRAINT `tbl_hasil_ibfk_1` FOREIGN KEY (`mahasiswa_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_hasil_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `tbl_quiz` (`id`);

--
-- Constraints for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  ADD CONSTRAINT `tbl_quiz_ibfk_1` FOREIGN KEY (`dosen_id`) REFERENCES `tbl_user` (`id`);

--
-- Constraints for table `tbl_soal`
--
ALTER TABLE `tbl_soal`
  ADD CONSTRAINT `tbl_soal_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `tbl_quiz` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
