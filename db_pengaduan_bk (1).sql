-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2026 at 06:39 AM
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
-- Database: `db_pengaduan_bk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`, `created_at`) VALUES
(1, 'Bu Rina', 'rina.bk', '$2a$10$examplehashbcryptxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2026-08-10 10:44:34');

-- --------------------------------------------------------

--
-- Table structure for table `bukti`
--

CREATE TABLE `bukti` (
  `id_bukti` int(11) NOT NULL,
  `id_laporan` int(11) NOT NULL,
  `file_bukti` varchar(255) NOT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) NOT NULL,
  `catatan_gurubk` varchar(1000) DEFAULT NULL,
  `detail_masalah` varchar(2000) DEFAULT NULL,
  `jadwal_konseling` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` datetime(6) DEFAULT NULL,
  `topik` varchar(255) NOT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `metode` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `siswa_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`id`, `catatan_gurubk`, `detail_masalah`, `jadwal_konseling`, `kategori`, `status`, `tanggal_pengajuan`, `topik`, `kode`, `tanggal`, `waktu`, `metode`, `nis`, `siswa_id`) VALUES
(1, 'shajudj', 'jsakdsh', NULL, 'Karier', 'PENDING', '2026-08-16 00:00:00.000000', 'saya susah fokus', 'BK-6100FB19', '2026-08-16', 'Siang', 'Online', '-', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_masalah`
--

CREATE TABLE `kategori_masalah` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_masalah`
--

INSERT INTO `kategori_masalah` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Akademik'),
(2, 'Perundungan'),
(3, 'Keluarga'),
(4, 'Pergaulan'),
(5, 'Kesehatan Mental'),
(6, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id` bigint(20) NOT NULL,
  `catatan` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `kelas_siswa` varchar(255) DEFAULT NULL,
  `metode` varchar(255) DEFAULT NULL,
  `nama_siswa` varchar(255) DEFAULT NULL,
  `nis_siswa` varchar(255) DEFAULT NULL,
  `preferensi_guru` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_pengajuan` date DEFAULT NULL,
  `tracking_id` varchar(255) DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `catatan`, `deskripsi`, `judul`, `kategori`, `kelas_siswa`, `metode`, `nama_siswa`, `nis_siswa`, `preferensi_guru`, `status`, `tanggal_pengajuan`, `tracking_id`, `waktu`) VALUES
(1, 'guru yang bisa menjaga rahasia', 'susah fokus', 'susah fokus', 'Akademik', 'X RPL 1', 'Online (Melalui video call / chat)', 'Azka Aldiansyah', '230932', 'Guru BK Laki-laki', 'PENDING', '2026-08-16', 'BK-A48B5392', 'Setelah Jam Pelajaran (14.00 - 16.00)');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_siswa` bigint(20) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `kronologi` text DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `tanggal_kejadian` date NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `id_siswa`, `id_kategori`, `judul`, `kronologi`, `lokasi`, `tanggal_kejadian`, `status`, `created_at`) VALUES
(4, 3, 1, 'Bullying 12 RPL 1', '[Pelapor Sebagai: Korban]\n[Privasi: Identitas terbuka kepada Guru BK]\n\nsaya di bully oleh sekelompok siswa ', 'Kantin SMKN 24', '2026-08-05', 'PENDING', '2026-08-13 04:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kasus`
--

CREATE TABLE `laporan_kasus` (
  `id` bigint(20) NOT NULL,
  `catatan_gurubk` text DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `judul` varchar(255) NOT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `status` enum('DIPROSES','DITOLAK','PENDING','SELESAI') NOT NULL,
  `tanggal_dibuat` datetime(6) DEFAULT NULL,
  `tanggal_kejadian` datetime(6) DEFAULT NULL,
  `pelapor_id` bigint(20) DEFAULT NULL,
  `guru_bk_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_kasus`
--

INSERT INTO `laporan_kasus` (`id`, `catatan_gurubk`, `deskripsi`, `judul`, `lokasi`, `status`, `tanggal_dibuat`, `tanggal_kejadian`, `pelapor_id`, `guru_bk_id`) VALUES
(1, NULL, 'Terjadi ejekan berulang saat jam istirahat pertama.', 'Perundungan Verbal di Kantin', 'Kantin Belakang', 'PENDING', '2026-08-10 03:54:20.000000', '2026-08-09 03:54:20.000000', 1, NULL),
(2, NULL, '[Pelapor Sebagai: Korban]\n[Privasi: Identitas terbuka kepada Guru BK]\n\nsaya dibully oleh oara agit', 'Bullyiing ', 'Kantin', 'PENDING', '2026-08-16 00:51:14.000000', '2026-08-06 17:00:00.000000', 40, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` bigint(20) NOT NULL,
  `pesan` varchar(255) DEFAULT NULL,
  `tanggal` datetime(6) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `dibaca` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sesi_konseling`
--

CREATE TABLE `sesi_konseling` (
  `id` bigint(20) NOT NULL,
  `jadwal_konseling` datetime(6) DEFAULT NULL,
  `keluhan` text DEFAULT NULL,
  `status` enum('DIJADWALKAN','DITOLAK','MENUNGGU_KONFIRMASI','SELESAI') NOT NULL,
  `tanggal_pengajuan` datetime(6) DEFAULT NULL,
  `topik` varchar(255) NOT NULL,
  `guru_bk_id` bigint(20) DEFAULT NULL,
  `siswa_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sesi_konseling`
--

INSERT INTO `sesi_konseling` (`id`, `jadwal_konseling`, `keluhan`, `status`, `tanggal_pengajuan`, `topik`, `guru_bk_id`, `siswa_id`) VALUES
(1, '2026-08-12 03:54:20.000000', 'Bingung memilih jurusan kuliah atau fokus kerja setelah lulus.', 'MENUNGGU_KONFIRMASI', '2026-08-10 03:54:20.000000', 'Konsultasi Minat Kejuruan / Karir', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `no_hp` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_lengkap`, `kelas`, `no_hp`, `username`, `password`, `created_at`, `nama`, `nis`, `user_id`) VALUES
(1, 'Dimas Prasetyo', 'XI RPL 1', '081234567890', 'dimas.p', '$2a$10$examplehashbcryptxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2026-08-10 10:44:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tindak_lanjut`
--

CREATE TABLE `tindak_lanjut` (
  `id_tindak` int(11) NOT NULL,
  `id_laporan` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `bukti_tindak_lanjut` varchar(255) DEFAULT NULL,
  `status` enum('selesai','perlu_pemantauan','dirujuk') NOT NULL,
  `tanggal_tindak` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `kartu_pelajar_url` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nisn` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('GURU_BK','SISWA') NOT NULL,
  `status` enum('APPROVED','PENDING','REJECTED') NOT NULL,
  `username` varchar(255) NOT NULL,
  `kartu_pelajar_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `kartu_pelajar_url`, `kelas`, `nama_lengkap`, `nisn`, `password`, `role`, `status`, `username`, `kartu_pelajar_path`) VALUES
(1, NULL, 'XI RPL 1', 'Budi Santoso', '1234567890', '$2a$10$rPrX2yX0GYjttxD8QNxM/eWzByEncw20int3dE.oCJvlBwgyQSgU.', 'SISWA', 'APPROVED', 'siswa', NULL),
(2, NULL, NULL, 'Ibu Rahmawati, S.Pd.', NULL, '$2a$10$9QzROqgcpDJ8y8atHwNpqu/Pss019S7bCpLBbGE.cmNT1SMrneH/a', 'GURU_BK', 'APPROVED', 'gurubk', NULL),
(3, NULL, NULL, 'Naura Aeprillya Effendi', '0082567190', '$2a$10$g.XAHqF/h3zcvANfWItCWOW8UClsono9brwOpZ6CwE.GRcJ.0JOx.', 'SISWA', 'REJECTED', 'verlitta22@gmail.com', 'C:\\Users\\welcome\\Downloads\\innerpeacebk\\innerpeacebk\\uploads\\1786337257725_kartu pelajar naura.jpg'),
(4, NULL, 'XII RPL 1', 'Mona Verlitta Putri', '0081913156', '$2a$10$ONpr6kFxjr8UtlNf8Kokp.n/E.JnrHGZ2IsfG5gBiayCkJbREgapi', 'SISWA', 'REJECTED', 'verlitta', 'uploads/kartu_48a19245-53d6-4326-8999-b786a9b0794b.jpg'),
(39, NULL, 'XII RPL 1', 'Mona Verlitta Putri', '8438735', '$2a$10$6PrLopN2AmwsKMMo3FPnLukmBJ2NeU9.uQfF6N50ucb/nLCmENfyy', 'SISWA', 'APPROVED', 'verlitta22', 'uploads/kartu_b00f2ca1-540c-4206-b5a2-b098d4a1676e.jpg'),
(40, NULL, 'X RPL 1', 'Azka Aldiansyah', '230932', '$2a$10$2jzRYZJ4a838Y/iNpVWvD.2UmeiJWOKbyy6py63ndSml4CUjhIY3u', 'SISWA', 'APPROVED', 'azka', 'uploads/kartu_c5a7ae4f-c6ab-4c73-bd8b-2e95c90b0a7d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `bukti`
--
ALTER TABLE `bukti`
  ADD PRIMARY KEY (`id_bukti`),
  ADD KEY `id_laporan` (`id_laporan`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2tum3hpm0g2hv08a60hd9k0k` (`siswa_id`);

--
-- Indexes for table `kategori_masalah`
--
ALTER TABLE `kategori_masalah`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `idx_laporan_status` (`status`),
  ADD KEY `idx_laporan_tanggal` (`tanggal_kejadian`),
  ADD KEY `fk_laporan_users` (`id_siswa`);

--
-- Indexes for table `laporan_kasus`
--
ALTER TABLE `laporan_kasus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7ksptodnre54k1koqg7ub4ksw` (`pelapor_id`),
  ADD KEY `FKrnonl23i541d3jpucdowiotq8` (`guru_bk_id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe1j4hdw86ae1r30h91kh35t3y` (`user_id`);

--
-- Indexes for table `sesi_konseling`
--
ALTER TABLE `sesi_konseling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6xb6cikbplfuvyqpe0xkg18mk` (`guru_bk_id`),
  ADD KEY `FK1jd8whekhmmvnemxc4pa2dl9g` (`siswa_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `UKl3pmn1fg7eapkru2eldegy5pl` (`user_id`);

--
-- Indexes for table `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  ADD PRIMARY KEY (`id_tindak`),
  ADD KEY `id_laporan` (`id_laporan`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UKjpqpg6xgewadynvls1m58i52m` (`nisn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bukti`
--
ALTER TABLE `bukti`
  MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori_masalah`
--
ALTER TABLE `kategori_masalah`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan_kasus`
--
ALTER TABLE `laporan_kasus`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sesi_konseling`
--
ALTER TABLE `sesi_konseling`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  MODIFY `id_tindak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bukti`
--
ALTER TABLE `bukti`
  ADD CONSTRAINT `bukti_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`) ON DELETE CASCADE;

--
-- Constraints for table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `FK2tum3hpm0g2hv08a60hd9k0k` FOREIGN KEY (`siswa_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `fk_laporan_users` FOREIGN KEY (`id_siswa`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_masalah` (`id_kategori`);

--
-- Constraints for table `laporan_kasus`
--
ALTER TABLE `laporan_kasus`
  ADD CONSTRAINT `FK7ksptodnre54k1koqg7ub4ksw` FOREIGN KEY (`pelapor_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKrnonl23i541d3jpucdowiotq8` FOREIGN KEY (`guru_bk_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD CONSTRAINT `FKe1j4hdw86ae1r30h91kh35t3y` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sesi_konseling`
--
ALTER TABLE `sesi_konseling`
  ADD CONSTRAINT `FK1jd8whekhmmvnemxc4pa2dl9g` FOREIGN KEY (`siswa_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK6xb6cikbplfuvyqpe0xkg18mk` FOREIGN KEY (`guru_bk_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `FK71doj9txh3w3cvcrooec62cle` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tindak_lanjut`
--
ALTER TABLE `tindak_lanjut`
  ADD CONSTRAINT `tindak_lanjut_ibfk_1` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`) ON DELETE CASCADE,
  ADD CONSTRAINT `tindak_lanjut_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
