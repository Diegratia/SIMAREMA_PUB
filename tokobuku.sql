-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 03:15 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `release_year` int(4) DEFAULT NULL,
  `author` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` decimal(4,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `book_category_id` int(5) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `title`, `slug`, `release_year`, `author`, `price`, `discount`, `stock`, `cover`, `book_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Mahabharata', 'mahabharata', 2016, '', 85000, '45.00', 2, NULL, 2, '2022-03-11 07:46:10', '2022-03-21 06:36:21', '2022-03-21 06:36:21'),
(6, 'php', 'php', 2016, 'unyil', 4500, '2.00', 2000, NULL, 1, '2022-03-13 09:47:24', '2022-03-21 21:20:27', '2022-03-21 21:20:27'),
(7, 'Pemrograman', 'pemrograman', 2002, 'hek', 800000, '2.00', 200, NULL, 1, '2022-03-13 22:04:00', '2022-03-21 06:36:31', '2022-03-21 06:36:31'),
(8, 'CookingBook', 'cookingbook', 2003, 'Morgan', 100000, '3.00', 290, NULL, 1, '2022-03-13 22:28:38', '2022-03-21 20:16:06', '2022-03-21 20:16:06'),
(9, 'edit22', 'edit22', 1233, ' awdad', 12313, '2.00', 2, '1648883505_e45a0f68eb3d339d51bf.jpg', 2, '2022-03-13 22:37:31', '2022-04-20 20:01:32', '2022-04-20 20:01:32'),
(19, 'test edit', 'test-edit', 2022, 'dog windows', 100, '1.00', 2, '1648390062_40c695512c4ff0840362.jpg', 2, '2022-03-27 09:07:18', '2022-03-27 09:07:46', '2022-03-27 09:07:46'),
(20, 'teawd22', 'teawd22', 2002, ' wdw22', 12000, '2.00', 90, '1648514886_cfe7bf4d8bff4c878b3c.jpg', 1, '2022-03-28 19:47:37', '2022-03-28 19:48:11', '2022-03-28 19:48:11'),
(21, 'kimia', 'kimia', 2013, ' awda', 10000, '10.00', 2, 'default.jpg', 2, '2022-03-28 19:48:26', '2022-04-20 20:01:29', '2022-04-20 20:01:29'),
(22, 'Dionesius Diegratia Febrian', 'dionesius-diegratia-febrian', 2002, ' Dion', 200200, '0.00', 18, '1650502864_02b39a9cfa81faa9fc0a.jpg', 1, '2022-04-20 20:01:04', '2022-04-20 20:01:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(5) NOT NULL,
  `name_category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name_category`) VALUES
(1, 'Buku Pelajaran'),
(2, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_customer` varchar(30) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `no_customer`, `gender`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Ki Anom', '1', 'L', 'Jalan janti 65', 'example@gmail.com', '08523654896', '2022-04-04 00:02:26', '2022-04-04 00:02:26'),
(2, 'Ki Anom', '1', 'L', 'Jalan janti 65', 'example@gmail.com', '08523654896', '2022-04-04 00:02:26', '2022-04-04 00:02:26'),
(3, 'Hasna Wijayanti S.I.Kom', '7305811201081801', 'L', 'Kpg. Mulyadi No. 403, Depok 29118, NTT', 'apuspasari@hidayanto.net', '0558 7303 9445', '1975-09-12 15:52:14', '1989-02-09 13:25:23'),
(4, 'Kasiran Karsana Firmansyah', '3323891306958948', 'L', 'Dk. Baranang No. 342, Banjar 68152, Gorontalo', 'puti.kuswandari@yahoo.com', '0874 9135 028', '2017-08-10 08:36:18', '1986-04-25 14:16:47'),
(5, 'Prabowo Damar Saefullah S.Pt', '3375840208198486', 'L', 'Dk. Raya Setiabudhi No. 366, Manado 83930, Jateng', 'pandu.wahyudin@gmail.com', '0601 4540 514', '1978-05-21 05:17:41', '1993-04-21 19:37:49'),
(6, 'Sakura Gasti Yolanda S.E.I', '7101132204168042', 'L', 'Ki. Babadak No. 720, Subulussalam 67737, Kalbar', 'gading.wahyudin@gmail.co.id', '(+62) 200 2332 035', '2019-09-15 16:44:24', '2020-11-03 11:22:38'),
(7, 'Jefri Wibisono', '7413502910118838', 'L', 'Gg. Haji No. 521, Banjar 15934, Pabar', 'manullang.edi@gmail.co.id', '(+62) 993 6137 0809', '1991-04-12 22:02:22', '2002-04-18 02:55:26'),
(8, 'Ivan Kuswoyo', '7306105806145882', 'L', 'Gg. Bata Putih No. 303, Depok 62525, Pabar', 'simanjuntak.prakosa@gmail.com', '(+62) 436 8590 1525', '1985-06-10 01:57:06', '1998-05-28 22:24:56'),
(9, 'Patricia Haryanti', '9110514210944424', 'L', 'Dk. Flora No. 459, Tidore Kepulauan 33709, Bali', 'winarno.puspa@suryono.tv', '(+62) 412 5012 7732', '2016-01-30 04:03:31', '2000-04-28 00:20:02'),
(10, 'Jasmani Hidayat', '7202042606204502', 'L', 'Dk. Merdeka No. 789, Balikpapan 34944, Sulbar', 'hnuraini@yahoo.co.id', '(+62) 801 805 479', '1993-01-21 13:38:02', '2018-04-16 22:18:33'),
(11, 'Dian Mayasari', '1612536112103516', 'L', 'Ds. Thamrin No. 571, Ternate 38702, Sumut', 'ytamba@gmail.co.id', '(+62) 234 8838 669', '1999-10-05 03:48:39', '2012-01-09 00:53:50'),
(12, 'Darmaji Daru Mangunsong M.Farm', '6411540604173471', 'L', 'Dk. B.Agam Dlm No. 103, Banda Aceh 77232, Kaltara', 'dnurdiyanti@hardiansyah.biz.id', '(+62) 814 253 882', '2021-07-17 05:58:52', '1990-01-25 13:22:20'),
(13, 'Rahmat Kuswoyo', '3323144605014609', 'L', 'Ki. Flores No. 828, Sukabumi 17831, Kepri', 'daryani.nasyidah@gmail.com', '(+62) 599 8606 9664', '2002-01-19 00:50:09', '2013-10-03 02:04:12'),
(14, 'Talia Lestari S.Pt', '1606004908998721', 'L', 'Dk. Nakula No. 797, Banjar 96554, NTB', 'koko04@gmail.co.id', '(+62) 223 5745 2702', '1998-02-07 02:37:33', '1995-09-27 22:34:42'),
(15, 'Mursita Teguh Sitorus M.Pd', '1301844509964658', 'L', 'Jr. Kyai Mojo No. 383, Padangsidempuan 75131, Bengkulu', 'danu.winarsih@kuswoyo.name', '(+62) 594 8504 809', '1977-03-17 06:15:23', '2010-08-31 21:34:17'),
(16, 'Jaeman Saputra', '6403675705211288', 'L', 'Ds. Gambang No. 650, Yogyakarta 38658, Babel', 'caraka81@setiawan.or.id', '0879 6313 217', '2019-11-30 07:56:07', '1980-03-02 03:06:49'),
(17, 'Jaiman Situmorang', '5319954106103597', 'L', 'Ki. Sam Ratulangi No. 272, Metro 79990, DIY', 'ratna09@yahoo.com', '0596 4500 1976', '2019-07-18 14:29:01', '2009-09-26 01:34:09'),
(18, 'Putri Diah Puspasari', '7414674408002334', 'L', 'Jln. Sam Ratulangi No. 168, Tasikmalaya 95488, DIY', 'umar.hastuti@mahendra.biz.id', '(+62) 308 3664 299', '1992-06-29 05:16:44', '1978-04-08 00:21:25'),
(19, 'Anita Riyanti', '9120540804042237', 'L', 'Ki. Rajiman No. 108, Gunungsitoli 33673, Aceh', 'ami23@gmail.co.id', '0887 3352 190', '1980-10-18 04:41:15', '1995-02-09 04:22:02'),
(20, 'Amalia Amelia Mayasari S.Kom', '7601714809007300', 'L', 'Gg. Lada No. 998, Pasuruan 88342, Maluku', 'habibi.saadat@hidayat.in', '0573 6082 7272', '1998-04-28 20:43:18', '2020-12-18 21:58:36'),
(21, 'Gamanto Kunthara Jailani', '1110382909102259', 'L', 'Ds. Agus Salim No. 309, Prabumulih 49851, Banten', 'taswir93@gmail.com', '(+62) 539 7346 7052', '2015-01-30 07:05:24', '2021-01-23 21:32:01'),
(22, 'Bagya Sihombing', '6403596905065259', 'L', 'Psr. Ronggowarsito No. 104, Tomohon 70142, Maluku', 'natsir.citra@yahoo.co.id', '(+62) 898 7797 062', '2003-09-13 18:16:25', '2019-08-19 05:44:22'),
(23, 'Gandi Prayoga S.Sos', '3373931003209182', 'L', 'Jln. Ikan No. 301, Ambon 20342, Kaltara', 'puspita.dimaz@gmail.co.id', '(+62) 759 4038 3825', '1984-01-28 15:36:57', '1985-09-04 10:02:21'),
(24, 'Wisnu Pranowo', '9109952903224343', 'L', 'Dk. Lembong No. 730, Magelang 93284, Gorontalo', 'wsuartini@habibi.name', '(+62) 840 9471 037', '2000-04-18 03:30:54', '1986-10-06 02:47:07'),
(25, 'Yosef Adiarja Pradana M.TI.', '1220484304215906', 'L', 'Dk. Untung Suropati No. 658, Tidore Kepulauan 95599, Jatim', 'astuti.chelsea@yahoo.co.id', '0372 6854 563', '1971-03-05 16:03:34', '2014-08-03 11:21:50'),
(26, 'Hadi Sirait', '1171071403965859', 'L', 'Gg. Pacuan Kuda No. 486, Malang 47246, Pabar', 'nadia.lazuardi@kusmawati.mil.id', '(+62) 328 2071 346', '2006-04-13 07:52:58', '1992-08-23 09:42:11'),
(27, 'Jelita Mandasari', '3274562110080684', 'L', 'Kpg. Bara No. 992, Lubuklinggau 12420, Gorontalo', 'langgeng73@gmail.co.id', '0444 4480 1013', '2012-01-05 05:35:48', '1991-08-22 09:40:32'),
(28, 'Prasetyo Waskita', '6207651701178351', 'L', 'Gg. Bara No. 223, Langsa 79933, Kalbar', 'pudjiastuti.pia@yulianti.info', '(+62) 516 0574 278', '1985-04-15 12:47:44', '1996-09-06 21:50:19'),
(29, 'Queen Permata', '7503001205130549', 'L', 'Jr. Sutarto No. 455, Ternate 43523, Kalteng', 'capa06@nasyiah.sch.id', '(+62) 742 1666 3433', '2009-10-24 02:15:14', '1971-10-17 11:48:52'),
(30, 'Galih Yusuf Maryadi', '9106401809081599', 'L', 'Gg. Hasanuddin No. 187, Dumai 11160, Kaltim', 'kala.tamba@prasetya.co.id', '(+62) 498 9925 937', '2016-10-02 07:45:24', '2009-06-25 16:38:27'),
(31, 'Kamal Maryadi', '1218781810118058', 'L', 'Jr. Veteran No. 222, Medan 35374, Sulsel', 'taswir.agustina@rahayu.asia', '0371 7375 9379', '2000-12-12 22:56:24', '2010-11-07 11:03:24'),
(32, 'Rafi Endra Irawan', '6503117103083041', 'L', 'Gg. Gremet No. 748, Singkawang 68309, Jambi', 'wulandari.clara@yahoo.com', '(+62) 901 8985 3786', '1987-05-11 00:12:10', '2022-02-02 16:51:07'),
(33, 'Aurora Lailasari S.H.', '3308920511049598', 'L', 'Ds. Reksoninten No. 571, Salatiga 51094, Gorontalo', 'febi.prastuti@thamrin.mil.id', '(+62) 642 8232 370', '2019-09-02 10:36:57', '1993-10-13 03:23:19'),
(34, 'Lukita Habibi', '5204131601046264', 'L', 'Jln. Moch. Toha No. 96, Tanjungbalai 42822, Babel', 'warsita.hutapea@gmail.com', '0695 2416 624', '1999-05-04 13:03:08', '2013-09-03 07:37:50'),
(35, 'Icha Malika Suryatmi S.Ked', '1306275505059640', 'L', 'Ds. Ronggowarsito No. 700, Gunungsitoli 25739, Lampung', 'hidayat.kamaria@gmail.co.id', '(+62) 543 0157 127', '1998-09-23 11:44:31', '2016-10-12 22:43:54'),
(36, 'Hasta Garan Rajasa', '7203554506001536', 'L', 'Psr. Bambon No. 972, Administrasi Jakarta Timur 16416, Maluku', 'dwidodo@gmail.co.id', '025 6915 360', '2001-02-20 23:41:16', '2010-08-07 04:58:38'),
(37, 'Gawati Betania Nurdiyanti S.Psi', '3501931504938848', 'L', 'Dk. Rumah Sakit No. 860, Sibolga 50912, Kalsel', 'rini49@saptono.go.id', '0350 5902 4400', '1992-12-25 13:32:12', '2011-07-09 19:28:01'),
(38, 'Nilam Oni Yuliarti M.M.', '8107380909049101', 'L', 'Dk. Gremet No. 510, Sorong 33201, Jateng', 'jelita.safitri@kurniawan.com', '0850 807 213', '2000-09-14 07:08:43', '1999-10-13 14:38:55'),
(39, 'Eli Astuti S.Sos', '3375305306191943', 'L', 'Dk. Gading No. 651, Gorontalo 85984, Malut', 'wrahimah@gmail.com', '0456 5533 567', '1975-03-17 00:49:51', '2014-01-04 06:57:42'),
(40, 'Jagaraga Prayoga', '7101104610160217', 'L', 'Kpg. Bappenas No. 889, Prabumulih 68391, DIY', 'elvina.kuswoyo@yahoo.co.id', '0851 7922 421', '1999-02-04 10:23:34', '1973-01-04 17:20:27'),
(41, 'Paris Sadina Permata S.T.', '7210331701060398', 'L', 'Ki. Suryo Pranoto No. 438, Tanjung Pinang 58525, Babel', 'ymandasari@yahoo.co.id', '0728 7036 713', '1987-08-16 02:49:34', '2000-02-19 17:22:31'),
(42, 'Siska Lailasari', '5207184903086255', 'L', 'Ds. Pasir Koja No. 735, Pematangsiantar 88410, Kaltim', 'cindy.maheswara@farida.com', '(+62) 720 9189 595', '2003-03-03 23:13:04', '1993-07-29 02:57:58'),
(43, 'Jarwadi Uwais S.E.I', '5301571609114554', 'L', 'Kpg. Halim No. 285, Administrasi Jakarta Selatan 90074, Sumbar', 'hairyanto51@sihombing.info', '0802 2988 079', '1979-10-24 05:38:58', '1970-06-05 17:39:35'),
(44, 'Marsito Raharja Pradana S.Pt', '3523765604091716', 'L', 'Ki. Padang No. 362, Tomohon 30192, Sulsel', 'wage.nasyidah@yahoo.com', '0322 5614 419', '1999-09-24 13:16:02', '1983-11-13 09:03:15'),
(45, 'Karsa Cager Wasita M.Farm', '5306502611943796', 'L', 'Kpg. Suryo Pranoto No. 885, Banjarbaru 56442, Papua', 'ana.sudiati@gmail.com', '(+62) 361 7987 073', '1999-05-21 21:09:29', '1980-11-07 10:39:03'),
(46, 'Salwa Mandasari S.Sos', '2102735205213072', 'L', 'Ki. Tambak No. 801, Batam 45222, Malut', 'kusmawati.parman@yahoo.com', '0813 7517 4162', '2016-08-07 10:54:51', '2001-07-16 04:20:59'),
(47, 'Oskar Nugroho', '9201476304167385', 'L', 'Jln. Hasanuddin No. 437, Bekasi 67426, Jambi', 'galang79@usamah.or.id', '0792 9151 157', '1983-07-20 13:16:45', '1987-10-22 13:30:14'),
(48, 'Jefri Salman Sihombing S.Ked', '6408515207158270', 'L', 'Kpg. Bawal No. 137, Pariaman 21678, Kalteng', 'jaka40@hutapea.tv', '0571 2416 974', '2006-04-17 22:20:50', '1982-09-27 02:16:19'),
(49, 'Ulva Rahayu', '5108822412171861', 'L', 'Jln. Cikapayang No. 950, Prabumulih 70996, Sultra', 'jaka.nainggolan@yahoo.com', '(+62) 807 1184 0453', '1986-06-07 05:08:24', '1974-05-07 14:08:21'),
(50, 'Sarah Pertiwi', '7306985501096927', 'L', 'Psr. Haji No. 457, Bengkulu 75159, Jateng', 'qrahayu@andriani.go.id', '(+62) 804 9425 894', '2007-07-19 18:50:04', '2017-12-21 23:59:25'),
(51, 'Gawati Permata', '6106590408176683', 'L', 'Jr. Camar No. 607, Tomohon 94693, NTB', 'banara.siregar@nurdiyanti.ac.id', '0553 5576 182', '2010-06-02 01:07:42', '2016-12-19 15:27:33'),
(52, 'Galuh Putra', '3307170207183912', 'L', 'Gg. Pahlawan No. 418, Samarinda 34865, Bengkulu', 'kamila33@sirait.sch.id', '0805 4437 208', '1984-06-03 02:24:58', '2010-09-09 08:31:00'),
(53, 'Hani Riyanti S.Farm', '5304080309951526', 'L', 'Psr. Achmad Yani No. 856, Tebing Tinggi 23457, Babel', 'pudjiastuti.ika@riyanti.my.id', '(+62) 824 2280 245', '2012-02-12 08:00:28', '2006-01-12 22:03:42'),
(54, 'Artawan Marbun S.Pt', '6501481907002404', 'L', 'Jr. Bakau Griya Utama No. 923, Kupang 44307, Kepri', 'gaman.narpati@melani.org', '0906 2483 6169', '1989-01-14 12:08:35', '2021-05-24 03:22:26'),
(55, 'Laswi Thamrin S.Pt', '7212001003180725', 'L', 'Psr. Gajah No. 12, Padangpanjang 77849, NTT', 'jane64@gmail.co.id', '0974 1489 157', '1990-08-14 22:13:36', '2019-08-12 02:36:13'),
(56, 'Darsirah Iswahyudi', '1310772801183320', 'L', 'Jln. Bambon No. 275, Denpasar 85806, Sumsel', 'qwaluyo@yahoo.co.id', '0680 5781 5786', '1989-12-05 16:51:07', '2005-04-19 09:20:09'),
(57, 'Najib Tarihoran S.Kom', '3523275501005168', 'L', 'Psr. Bara Tambar No. 358, Gorontalo 91152, Sulsel', 'febi50@gmail.com', '0654 9936 0906', '1993-12-11 14:57:37', '1976-03-19 04:27:20'),
(58, 'Farhunnisa Andriani', '1811501207988238', 'L', 'Kpg. Bambu No. 639, Kediri 92435, DIY', 'hendri47@mustofa.com', '022 9634 6265', '2017-08-21 11:59:33', '1998-06-07 19:16:58'),
(59, 'Naradi Heryanto Jailani S.I.Kom', '3506127004126897', 'L', 'Psr. Otista No. 590, Pematangsiantar 23311, Bengkulu', 'nasrullah08@gunawan.co', '0566 7824 5552', '1989-08-09 22:44:36', '1997-11-11 06:47:24'),
(60, 'Jamalia Pertiwi M.M.', '7602502205997800', 'L', 'Jln. Pahlawan No. 336, Bengkulu 73251, Kalteng', 'rrahimah@riyanti.web.id', '(+62) 220 3366 597', '2014-10-01 01:52:28', '2003-06-29 13:49:27'),
(61, 'Taswir Hutasoit S.Ked', '1408460703108475', 'L', 'Ki. Lembong No. 625, Serang 22009, Sumsel', 'mardhiyah.marsudi@yahoo.com', '(+62) 452 3801 363', '2016-05-04 17:15:21', '2001-08-16 17:53:55'),
(62, 'Kezia Hastuti', '1402544412030173', 'L', 'Jln. Otista No. 738, Tasikmalaya 64038, Kalsel', 'mulyono.wastuti@prayoga.desa.id', '0809 185 762', '2017-11-29 14:01:54', '1986-11-14 19:09:43'),
(63, 'Pia Pertiwi', '1401151108134275', 'L', 'Jr. Pasir Koja No. 198, Parepare 50397, Lampung', 'situmorang.tami@susanti.go.id', '(+62) 474 5093 299', '2016-05-05 01:53:27', '1984-03-16 07:36:21'),
(64, 'Faizah Widiastuti', '8106974911208180', 'L', 'Gg. Radio No. 837, Tidore Kepulauan 60137, Malut', 'xputra@sinaga.in', '(+62) 378 7688 591', '2011-06-30 19:59:01', '1978-06-01 07:04:31'),
(65, 'Lintang Yolanda M.Farm', '1209675805024663', 'L', 'Psr. Industri No. 217, Metro 98266, DIY', 'enamaga@gmail.com', '(+62) 496 6550 0804', '1970-09-02 16:00:20', '1981-03-05 19:20:17'),
(66, 'Limar Budiman', '6208715405975630', 'L', 'Jr. Sutarto No. 580, Bau-Bau 69253, Kaltim', 'wtarihoran@permata.my.id', '(+62) 517 0508 6636', '1993-09-03 12:51:40', '2020-02-15 20:39:51'),
(67, 'Uchita Titi Zulaika S.Sos', '1707872603964976', 'L', 'Psr. Babadan No. 318, Lhokseumawe 17922, DIY', 'amelia.hutasoit@yahoo.co.id', '0938 7092 5179', '1999-09-07 11:14:36', '2007-08-02 06:58:52'),
(68, 'Hilda Siti Purwanti S.H.', '3175004607167822', 'L', 'Ki. Tangkuban Perahu No. 92, Pasuruan 22225, Sulbar', 'edward.prakasa@utami.net', '(+62) 705 2580 8941', '2013-02-26 14:43:35', '2001-07-11 13:55:26'),
(69, 'Betania Lintang Farida', '1104405312038985', 'L', 'Gg. Bakit  No. 270, Semarang 60569, Jabar', 'mutia00@pradana.or.id', '(+62) 622 8562 280', '2001-08-01 02:37:29', '1973-05-13 19:03:15'),
(70, 'Prabawa Sitompul', '7205754507960761', 'L', 'Gg. Badak No. 21, Tanjungbalai 80576, NTB', 'kayun89@yahoo.com', '0250 7661 8984', '2020-10-27 15:57:33', '1970-11-13 11:57:51'),
(71, 'Rina Halimah', '1374412804979806', 'L', 'Dk. Bak Mandi No. 499, Pematangsiantar 64849, Sulbar', 'andriani.mahmud@handayani.co.id', '(+62) 377 9860 012', '2018-04-25 03:35:43', '1994-12-11 05:52:55'),
(72, 'Septi Winarsih', '1201960903195132', 'L', 'Jln. Bakau No. 843, Tomohon 33184, Bali', 'zhandayani@wahyuni.co', '020 0042 3763', '1976-02-08 07:07:33', '1986-01-28 13:12:11'),
(73, 'Jati Maulana S.H.', '6302881408123178', 'L', 'Psr. Baiduri No. 498, Administrasi Jakarta Pusat 30848, DKI', 'cemplunk46@hidayanto.org', '0823 3130 5856', '2021-02-13 04:50:33', '1991-10-01 06:12:37'),
(74, 'Olivia Iriana Laksmiwati', '9209180705987005', 'L', 'Dk. Kyai Gede No. 517, Bandar Lampung 32321, Gorontalo', 'pratama.zamira@gmail.co.id', '(+62) 827 8287 821', '2012-12-16 02:45:31', '1979-04-09 02:28:15'),
(75, 'Mahfud Ardianto M.Pd', '3507446809946883', 'L', 'Gg. Abdul Muis No. 905, Tangerang 88547, Lampung', 'digdaya22@yahoo.co.id', '0346 1583 606', '1995-09-14 05:15:00', '1970-10-30 22:14:33'),
(76, 'Hardi Makara Prasetya S.E.I', '9119931907044437', 'L', 'Ki. Pelajar Pejuang 45 No. 281, Prabumulih 40475, Lampung', 'bagiya.oktaviani@nasyidah.co', '(+62) 695 5142 452', '1994-01-17 06:59:40', '2014-05-18 04:19:22'),
(77, 'Julia Kusmawati M.TI.', '1220074105941567', 'L', 'Psr. Pasirkoja No. 789, Cilegon 63865, DKI', 'oktaviani.jamalia@yahoo.com', '0850 805 890', '2013-10-02 02:26:55', '1998-04-16 15:36:23'),
(78, 'Tedi Lembah Nainggolan', '7209870809060409', 'L', 'Kpg. Babadan No. 846, Padang 56550, Sumut', 'pranata65@laksmiwati.biz', '(+62) 782 9243 800', '1994-09-22 09:02:44', '1974-08-19 01:30:01'),
(79, 'Maryanto Nababan', '5104201708078933', 'L', 'Jr. Suharso No. 212, Administrasi Jakarta Timur 27430, Malut', 'qwulandari@kuswandari.mil.id', '(+62) 566 5326 304', '1993-02-07 19:56:35', '2017-06-26 01:12:53'),
(80, 'Icha Lailasari', '1905042609092781', 'L', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 575, Palu 51325, Sumbar', 'joktaviani@hartati.asia', '(+62) 20 5278 124', '2016-09-09 08:56:14', '2011-02-12 05:06:11'),
(81, 'Gangsar Teguh Hutapea', '1276945603139441', 'L', 'Kpg. W.R. Supratman No. 188, Pasuruan 90591, DKI', 'mumpuni59@gmail.co.id', '020 4601 470', '2014-11-05 00:27:01', '1991-05-19 13:30:03'),
(82, 'Tari Febi Purnawati', '5104980603228653', 'L', 'Ki. Tambak No. 972, Palu 34005, Lampung', 'uhutapea@hakim.or.id', '(+62) 465 7454 2536', '1999-12-17 05:35:15', '1989-10-20 15:35:58'),
(83, 'Ganjaran Maryadi Wibisono', '7606655310024796', 'L', 'Ds. Suryo Pranoto No. 726, Tomohon 36108, Banten', 'cayadi.sitompul@hutasoit.biz', '(+62) 27 3231 0608', '1990-12-24 08:58:26', '2001-12-06 13:22:10'),
(84, 'Gantar Adriansyah', '1301731801132053', 'L', 'Jln. Samanhudi No. 341, Bekasi 20309, Sulut', 'mala88@iswahyudi.go.id', '028 8226 2007', '1994-02-08 19:39:16', '1971-01-04 22:20:35'),
(85, 'Hasna Widiastuti', '1278996709183795', 'L', 'Kpg. Baabur Royan No. 698, Bengkulu 96839, Malut', 'yulianti.prabu@gmail.com', '0789 8548 013', '1982-07-23 07:04:25', '2008-03-06 19:40:30'),
(86, 'Kamal Aris Wahyudin', '5309270403974054', 'L', 'Kpg. Karel S. Tubun No. 184, Padangsidempuan 63292, DIY', 'mardhiyah.jindra@yahoo.com', '(+62) 661 0737 203', '1992-01-07 01:09:42', '1975-11-19 04:26:45'),
(87, 'Ellis Rahayu', '1405906611036305', 'L', 'Kpg. Antapani Lama No. 940, Denpasar 45530, Lampung', 'rhariyah@lailasari.name', '(+62) 406 8071 1554', '1989-08-22 21:34:06', '1975-03-14 23:42:09'),
(88, 'Rusman Ajiono Sihotang S.Pd', '3271132003108247', 'L', 'Kpg. Veteran No. 845, Surabaya 56314, Sulut', 'lwidodo@handayani.or.id', '(+62) 29 6374 1428', '2005-02-12 20:20:45', '1999-02-03 22:55:47'),
(89, 'Belinda Pudjiastuti', '6211923012081863', 'L', 'Kpg. M.T. Haryono No. 595, Magelang 87256, Sumsel', 'jyuliarti@gmail.co.id', '0672 5707 7332', '2018-12-03 07:01:00', '2001-12-27 07:56:00'),
(90, 'Tantri Nurdiyanti S.H.', '1801743005951395', 'L', 'Psr. Nakula No. 549, Palu 14454, Jateng', 'permadi.qori@susanti.name', '0488 2275 933', '2018-10-25 04:25:49', '2018-09-08 19:12:23'),
(91, 'Padma Cinthia Susanti S.I.Kom', '7101616111074717', 'L', 'Psr. Imam Bonjol No. 783, Tanjungbalai 72306, Banten', 'lpratiwi@yahoo.com', '0714 4234 3542', '1993-02-11 00:49:44', '1993-04-03 05:42:59'),
(92, 'Laras Rahimah', '1309822006979007', 'L', 'Jr. Hang No. 982, Padang 93902, Lampung', 'anita16@yahoo.co.id', '0476 7857 7909', '2011-10-25 07:15:49', '2008-05-05 12:03:31'),
(93, 'Amalia Andriani', '5105845406924391', 'L', 'Ki. Suryo No. 626, Bontang 26609, Sulteng', 'esimbolon@mangunsong.co.id', '0480 6570 3903', '2016-04-16 09:15:01', '2017-05-29 02:18:03'),
(94, 'Raisa Chelsea Suartini S.I.Kom', '5107825112066560', 'L', 'Ds. Basoka No. 961, Bandar Lampung 18481, Maluku', 'edi97@lazuardi.asia', '0808 1514 207', '1987-04-15 19:18:26', '1978-03-15 23:04:07'),
(95, 'Liman Iswahyudi S.Pt', '1312115204030541', 'L', 'Gg. Zamrud No. 985, Padang 83483, Kaltara', 'rini.maulana@halimah.biz', '(+62) 437 7069 164', '2015-10-05 01:58:38', '1972-07-12 16:03:20'),
(96, 'Silvia Ani Suartini', '8105374801991425', 'L', 'Gg. Basoka Raya No. 999, Singkawang 64059, Lampung', 'jhutagalung@yahoo.com', '0572 9590 539', '1995-07-25 04:47:05', '1970-11-14 15:26:01'),
(97, 'Gaduh Siregar', '9125270303041484', 'L', 'Gg. Baladewa No. 613, Depok 49166, Sultra', 'nadine45@nuraini.desa.id', '024 5196 962', '1990-05-13 15:12:32', '2010-07-24 12:16:00'),
(98, 'Icha Kuswandari', '5318140701207430', 'L', 'Kpg. Baladewa No. 198, Pematangsiantar 75088, Sumsel', 'jelita.permadi@yahoo.com', '(+62) 876 4929 7527', '1995-03-31 04:39:00', '1977-12-17 20:37:24'),
(99, 'Patricia Bella Hassanah M.TI.', '7201187006033086', 'L', 'Jr. Pahlawan No. 838, Pontianak 20598, NTT', 'hutapea.umi@gmail.co.id', '(+62) 472 7937 190', '2000-02-03 13:08:16', '2008-03-19 16:21:03'),
(100, 'Limar Vero Saputra', '5309400104194208', 'L', 'Dk. Halim No. 462, Yogyakarta 63571, Kalsel', 'prastuti.galuh@gmail.co.id', '(+62) 21 3158 8175', '1998-05-24 14:09:12', '1972-11-07 23:36:53'),
(101, 'Satya Nashiruddin S.Pd', '1272514401091723', 'L', 'Gg. Bata Putih No. 87, Mataram 99598, Sumsel', 'amalia24@gmail.com', '0699 0563 479', '1978-01-27 11:30:40', '2016-10-03 17:18:00'),
(102, 'Kacung Firmansyah', '6407022004995548', 'L', 'Gg. Otto No. 152, Dumai 53189, Kepri', 'soleh03@yahoo.co.id', '(+62) 20 8881 188', '1988-08-15 16:22:32', '2018-04-16 10:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `distributor_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`distributor_id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Dionesius Diegratia Febrian', 'awdawd', 'awdawd', '123', '2022-04-04 19:52:18', '2022-04-20 20:03:30.0'),
(3, 'Arta Kanda Nashiruddin', 'Jr. Cemara No. 721, Batu 78718, Jabar', 'tsihotang@andriani.o', '0891 398 770', '2008-11-01 07:25:11', '1977-03-28 07:32:21.0'),
(5, 'Kamaria Hasanah', 'Psr. Katamso No. 621, Pekanbaru 24968, Maluku', 'inashiruddin@gmail.c', '(+62) 718 9150 638', '2018-06-21 12:36:52', '1970-05-02 09:10:50.0'),
(6, 'Ilyas Marsito Siregar', 'Gg. Jakarta No. 802, Padangpanjang 11016, DKI', 'laksmiwati.shania@ku', '0609 2488 667', '1970-06-13 07:51:29', '1972-10-30 13:27:59.0'),
(7, 'Teddy Habibi', 'Jr. Bank Dagang Negara No. 62, Kupang 75337, Pabar', 'haryanti.ozy@hutapea', '0945 0789 748', '2012-01-24 21:12:51', '1985-01-01 19:43:19.0'),
(8, 'Malika Paris Maryati', 'Jln. Karel S. Tubun No. 406, Sibolga 44160, NTT', 'kardi90@mulyani.com', '(+62) 23 0592 4300', '2007-07-01 19:02:06', '2016-03-02 07:29:34.0'),
(9, 'Dalima Nasyiah S.Kom', 'Jr. Karel S. Tubun No. 571, Pekalongan 81892, Jateng', 'rahayu.yance@marpaun', '025 3440 638', '2014-06-20 14:40:41', '1976-03-15 00:42:48.0'),
(10, 'Adika Pranowo', 'Gg. B.Agam 1 No. 796, Bekasi 27931, Sumut', 'hutasoit.kamaria@gma', '0892 7533 2797', '2018-04-25 06:55:20', '1990-03-05 21:33:48.0'),
(11, 'Amalia Yessi Palastri', 'Jr. Raden Saleh No. 585, Lhokseumawe 18315, Jatim', 'haryanto.kurnia@lazu', '(+62) 513 3130 2326', '1984-05-18 07:03:11', '1995-06-03 14:58:14.0'),
(12, 'Hasna Wahyuni', 'Ki. K.H. Maskur No. 222, Samarinda 94011, Kepri', 'panji.santoso@gmail.', '020 1185 442', '1978-04-11 04:28:34', '1975-02-02 20:20:48.0'),
(13, 'Laswi Tarihoran S.I.Kom', 'Psr. Qrisdoren No. 417, Medan 47542, Kepri', 'wmaryadi@pertiwi.org', '0288 5860 983', '2020-12-22 05:58:34', '1999-09-14 20:05:30.0'),
(14, 'Among Samosir', 'Kpg. Sutami No. 566, Ambon 52472, Sumsel', 'yuniar.artanto@kuswa', '0687 2334 823', '2021-02-23 08:47:14', '2020-01-11 16:32:21.0'),
(15, 'Liman Prakasa', 'Psr. Moch. Toha No. 56, Tangerang Selatan 89407, Pabar', 'kezia34@yahoo.co.id', '(+62) 28 8666 145', '2008-03-30 07:56:55', '1978-03-25 16:39:06.0'),
(16, 'Hardana Saputra', 'Psr. Raden Saleh No. 112, Tasikmalaya 85455, Kalbar', 'bnatsir@yahoo.com', '(+62) 311 4761 7900', '1971-01-01 19:13:18', '1998-05-21 15:08:41.0'),
(17, 'Eli Pudjiastuti S.E.', 'Ds. Gegerkalong Hilir No. 222, Lubuklinggau 79441, NTT', 'qori07@halimah.my.id', '0774 9919 9775', '1999-11-18 10:03:54', '2022-03-21 01:00:24.0'),
(18, 'Praba Hakim', 'Kpg. Banal No. 258, Batu 39903, Lampung', 'dalima76@rajata.sch.', '(+62) 486 1922 666', '2016-11-05 02:42:54', '2012-01-29 03:37:03.0'),
(19, 'Yance Riyanti M.Ak', 'Jr. Thamrin No. 748, Salatiga 70093, Sulteng', 'martani03@yahoo.co.i', '0949 9365 718', '1986-10-07 05:39:40', '1986-01-26 14:57:44.0'),
(20, 'Ajeng Haryanti', 'Dk. R.M. Said No. 811, Batam 28745, Kalteng', 'ratih67@yahoo.com', '(+62) 569 1829 364', '1989-08-21 13:45:44', '1981-05-04 01:32:25.0'),
(21, 'Humaira Riyanti M.TI.', 'Dk. Krakatau No. 445, Banjarmasin 16935, Riau', 'hpalastri@yahoo.com', '0390 8314 619', '2000-05-24 08:28:40', '1991-03-04 18:25:59.0'),
(22, 'Cawuk Harja Tamba', 'Jr. Babadak No. 978, Pagar Alam 61526, Jateng', 'abyasa.wibisono@lail', '0341 4604 3590', '2014-08-23 14:26:24', '2020-04-09 12:39:18.0'),
(23, 'Ayu Agustina', 'Gg. Abdul Rahmat No. 521, Surakarta 50663, Kalsel', 'tantri62@mayasari.my', '0845 6999 834', '2009-03-27 11:32:18', '1975-04-26 05:34:52.0'),
(24, 'Cayadi Putra M.Kom.', 'Psr. Cikutra Barat No. 578, Batu 96667, Bali', 'abyasa.firgantoro@gm', '0457 7496 120', '2001-11-09 07:34:58', '2009-03-13 16:19:33.0'),
(25, 'Sabri Narpati', 'Gg. Babah No. 304, Administrasi Jakarta Utara 81379, DKI', 'uoktaviani@sudiati.w', '(+62) 867 5560 9083', '2009-05-26 17:42:12', '1974-12-04 23:59:10.0'),
(26, 'Cager Santoso S.Psi', 'Jln. Sentot Alibasa No. 526, Makassar 66826, Kalbar', 'qpradana@yahoo.co.id', '0797 3895 693', '1995-12-08 04:13:06', '2017-12-08 04:42:09.0'),
(27, 'Gamblang Hidayat', 'Kpg. Moch. Yamin No. 956, Bekasi 55159, Sulteng', 'gara60@yahoo.com', '0776 8583 644', '1985-03-22 04:03:23', '2021-05-07 01:58:37.0'),
(28, 'Cemplunk Hardana Anggriawan', 'Jr. Baranang No. 610, Tual 24974, Sulut', 'alika.permata@hariya', '0473 3936 0144', '1973-03-07 01:14:06', '1975-12-05 21:34:23.0'),
(29, 'Vicky Palastri', 'Kpg. Arifin No. 706, Cilegon 68635, Kalsel', 'halimah.dian@yahoo.c', '(+62) 501 5953 423', '2008-06-02 14:12:57', '1974-06-07 16:41:43.0'),
(30, 'Lintang Sakura Rahimah S.IP', 'Kpg. Sukajadi No. 529, Magelang 75709, Jabar', 'ajiono37@yahoo.co.id', '(+62) 975 7316 7518', '2000-07-22 04:14:49', '1974-08-01 23:36:39.0'),
(31, 'Zahra Novitasari', 'Ds. Casablanca No. 57, Samarinda 56487, Gorontalo', 'tbudiyanto@gmail.co.', '(+62) 219 4957 6565', '2007-04-07 07:18:13', '1973-10-04 06:56:11.0'),
(32, 'Najib Firmansyah', 'Ds. Tubagus Ismail No. 1, Bandung 69996, Lampung', 'rahimah.salman@rahma', '(+62) 813 2751 5654', '1994-05-02 06:50:41', '2013-10-26 16:35:24.0'),
(33, 'Gawati Yuliarti', 'Kpg. S. Parman No. 73, Bukittinggi 18715, Malut', 'dipa47@pratiwi.net', '0600 5859 173', '1978-02-12 06:19:40', '2003-05-25 11:39:18.0'),
(34, 'Jane Fujiati', 'Ki. Baiduri No. 792, Surakarta 77123, Jateng', 'warsa21@marpaung.sch', '(+62) 659 9612 5571', '1990-02-10 19:50:02', '1997-03-27 23:12:57.0'),
(35, 'Lintang Endah Nasyiah S.Pt', 'Kpg. Hasanuddin No. 437, Cilegon 45406, Babel', 'wastuti.karma@mangun', '(+62) 373 8445 345', '2015-11-30 17:10:34', '1975-02-24 21:13:10.0'),
(36, 'Rahmi Rahimah', 'Ki. Baranang Siang Indah No. 64, Sorong 12726, Bengkulu', 'pusamah@yahoo.co.id', '(+62) 688 1003 059', '1974-05-12 21:24:29', '2018-04-29 06:56:29.0'),
(37, 'Yunita Melinda Widiastuti', 'Ds. Sudirman No. 946, Tasikmalaya 37169, Kaltim', 'ganep70@hidayanto.as', '028 2129 2103', '2009-12-28 17:45:31', '2012-05-29 23:16:47.0'),
(38, 'Ridwan Adriansyah', 'Jln. Gotong Royong No. 41, Tidore Kepulauan 47171, Sumsel', 'purwadi.sudiati@lail', '0545 6351 0399', '2006-03-01 19:22:20', '2009-10-08 02:43:45.0'),
(39, 'Jatmiko Danu Sitorus S.IP', 'Psr. Yohanes No. 832, Mojokerto 86613, Kaltim', 'natsir.wadi@yahoo.co', '(+62) 687 1498 454', '1990-04-25 07:39:14', '1993-06-13 20:07:24.0'),
(40, 'Mulyanto Samosir S.Sos', 'Gg. Badak No. 972, Kediri 40561, Jatim', 'jasmani.mandasari@ya', '(+62) 445 1762 8089', '2010-06-11 09:04:39', '2010-07-29 16:29:33.0'),
(41, 'Uchita Widya Rahimah', 'Kpg. B.Agam 1 No. 396, Tangerang 33150, Lampung', 'yuliarti.malika@gmai', '(+62) 551 2663 4878', '1997-11-19 07:10:43', '2010-11-18 08:36:48.0'),
(42, 'Nilam Mulyani', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 126, Serang 35085, Banten', 'amansur@gmail.co.id', '(+62) 238 6422 9112', '2018-03-03 11:27:54', '2019-08-24 20:49:20.0'),
(43, 'Mustika Lasmanto Dabukke S.Kom', 'Ds. Rumah Sakit No. 284, Ternate 26550, Gorontalo', 'olatupono@yahoo.co.i', '0870 3560 043', '1975-10-11 02:47:51', '1993-10-06 14:20:14.0'),
(44, 'Paramita Lestari', 'Gg. Babakan No. 597, Prabumulih 39532, Sulut', 'nasyidah.kariman@wah', '(+62) 298 4707 9287', '2020-02-20 08:56:52', '2002-12-27 05:25:57.0'),
(45, 'Vicky Rahayu', 'Dk. Bata Putih No. 966, Tegal 10575, Jateng', 'isimbolon@yahoo.com', '(+62) 670 0488 7423', '2020-10-20 15:21:21', '1976-06-08 11:31:15.0'),
(46, 'Laras Sudiati', 'Dk. Babadan No. 414, Sibolga 59575, NTB', 'aurora.mardhiyah@rah', '023 6315 0538', '2006-11-16 04:34:46', '2010-06-25 01:56:02.0'),
(47, 'Raisa Elma Lailasari', 'Dk. Basudewo No. 46, Langsa 18911, DIY', 'aurora94@santoso.mil', '0835 880 524', '1988-06-03 03:55:22', '2018-06-25 04:15:45.0'),
(48, 'Cindy Purwanti', 'Psr. Gatot Subroto No. 910, Bengkulu 38068, Jatim', 'zpurnawati@gmail.co.', '(+62) 494 9499 9428', '1997-08-08 13:44:50', '2014-04-23 08:15:10.0'),
(49, 'Teguh Mangunsong', 'Jln. Sudiarto No. 43, Tebing Tinggi 99363, Sultra', 'qkuswandari@wibowo.o', '(+62) 622 7103 470', '2006-11-09 21:54:49', '1999-03-07 15:03:50.0'),
(50, 'Novi Laksita', 'Dk. Camar No. 439, Pekanbaru 93562, DIY', 'kunthara.hastuti@gma', '(+62) 659 0470 009', '2020-11-28 02:53:55', '1996-07-21 19:28:16.0'),
(51, 'Gilda Safitri', 'Jln. Rumah Sakit No. 405, Administrasi Jakarta Selatan 69257, NTB', 'zulfa.wastuti@agusti', '(+62) 28 1945 347', '2016-01-22 07:43:33', '1975-10-25 01:24:46.0'),
(52, 'Yunita Susanti S.Psi', 'Psr. Krakatau No. 560, Palu 80795, Pabar', 'anastasia.wastuti@ya', '0463 6733 4857', '1997-04-08 19:37:50', '1971-07-27 11:01:37.0'),
(53, 'Hardi Mahmud Mahendra M.Pd', 'Jr. Raya Ujungberung No. 710, Administrasi Jakarta Selatan 18621, Papua', 'eka.hasanah@tarihora', '(+62) 446 6742 687', '2015-06-19 03:58:40', '2005-01-28 19:18:17.0'),
(54, 'Diah Jamalia Padmasari M.TI.', 'Kpg. Jaksa No. 506, Bau-Bau 61967, Kepri', 'lintang.rahimah@maul', '0402 1291 732', '2018-06-29 07:09:19', '2000-07-13 16:43:38.0'),
(55, 'Mariadi Estiawan Utama', 'Psr. Suniaraja No. 721, Banjarmasin 87780, NTB', 'mahfud94@maulana.sch', '(+62) 429 0871 006', '1988-09-27 14:52:59', '2014-11-02 14:28:32.0'),
(56, 'Asmadi Gunawan', 'Jr. Cikutra Barat No. 928, Administrasi Jakarta Pusat 50369, Gorontalo', 'pradipta.diana@yahoo', '(+62) 837 531 797', '2018-08-14 16:37:21', '1994-12-22 00:41:15.0'),
(57, 'Tri Cagak Sitorus', 'Gg. Sadang Serang No. 377, Bau-Bau 22084, DKI', 'qardianto@yahoo.co.i', '0867 878 130', '1982-11-02 18:27:22', '2018-08-24 21:35:07.0'),
(58, 'Nabila Utami', 'Gg. Aceh No. 386, Bau-Bau 51778, Sumsel', 'ewulandari@gmail.com', '0588 9748 368', '1996-03-05 21:42:37', '1990-01-14 10:48:22.0'),
(59, 'Daliman Adriansyah', 'Ki. Bhayangkara No. 601, Pasuruan 88917, Lampung', 'yani.purnawati@yahoo', '(+62) 254 4449 7673', '2001-06-14 12:52:11', '1989-01-20 06:49:12.0'),
(60, 'Kayla Haryanti', 'Jln. Adisucipto No. 122, Surabaya 68133, Kalteng', 'ulya81@hasanah.sch.i', '0844 247 973', '1998-12-07 08:24:46', '2021-10-21 19:02:32.0'),
(61, 'Marsudi Radika Hidayat', 'Ds. Babadak No. 358, Madiun 30852, Kepri', 'uyainah.kartika@yaho', '0657 6932 799', '2013-12-30 01:01:25', '1991-12-11 03:50:15.0'),
(62, 'Febi Susanti', 'Dk. Bakau No. 880, Administrasi Jakarta Barat 96945, Jambi', 'atma.kurniawan@mansu', '0974 6055 468', '1974-03-22 06:21:42', '2007-01-11 03:04:32.0'),
(63, 'Puti Mayasari', 'Jr. Radio No. 907, Langsa 23717, DIY', 'tiara.suryono@dabukk', '(+62) 807 898 937', '1984-01-10 21:21:39', '2016-07-14 06:48:39.0'),
(64, 'Yosef Mulya Mahendra M.TI.', 'Jr. Salam No. 220, Mataram 85930, Bengkulu', 'kyuliarti@gmail.co.i', '(+62) 967 0454 5407', '2006-12-07 14:54:21', '2020-01-06 04:40:43.0'),
(65, 'Sari Umi Prastuti', 'Dk. Jaksa No. 440, Padangpanjang 51001, Jabar', 'widya.laksmiwati@yah', '0874 7328 642', '2008-12-30 05:27:07', '1983-06-12 03:29:19.0'),
(66, 'Laila Safitri', 'Psr. Ahmad Dahlan No. 705, Bima 50984, DKI', 'vera17@gmail.com', '0638 7576 4606', '1976-05-23 09:44:34', '1973-12-28 11:57:04.0'),
(67, 'Hilda Lidya Farida', 'Jln. Baja Raya No. 844, Probolinggo 35959, Banten', 'michelle62@widodo.bi', '0884 0240 323', '1982-10-17 14:00:07', '2020-08-05 16:52:43.0'),
(68, 'Irwan Simbolon', 'Dk. Baha No. 122, Administrasi Jakarta Pusat 41442, Sulbar', 'uyainah.galih@uyaina', '0278 1980 752', '1984-06-08 10:23:53', '2008-05-20 14:51:02.0'),
(69, 'Eka Uwais', 'Gg. Bagas Pati No. 849, Administrasi Jakarta Pusat 97997, Lampung', 'sarah.firmansyah@rah', '(+62) 349 3868 514', '1982-09-13 19:07:56', '1978-06-16 23:05:24.0'),
(70, 'Ami Andriani S.E.I', 'Jln. Imam Bonjol No. 337, Ternate 82163, Jambi', 'queen.wibisono@mulya', '0427 5555 2251', '2013-01-10 06:28:12', '2011-09-01 09:37:00.0'),
(71, 'Balapati Heryanto Salahudin', 'Kpg. Elang No. 248, Pangkal Pinang 43096, Sumbar', 'belinda62@yahoo.com', '0837 1535 394', '2004-04-29 20:36:15', '2009-03-06 04:55:09.0'),
(72, 'Jelita Ratih Prastuti', 'Jr. Imam No. 351, Tasikmalaya 43327, Gorontalo', 'rahayu.vicky@gmail.c', '0429 6434 9066', '2012-02-08 02:19:10', '1985-07-26 15:35:21.0'),
(73, 'Vivi Mulyani', 'Dk. Juanda No. 337, Cirebon 12371, Bengkulu', 'yulianti.siska@utami', '(+62) 29 2498 821', '1972-09-20 21:45:02', '1987-04-20 01:06:27.0'),
(74, 'Ganda Adika Prasetya S.I.Kom', 'Jln. Kyai Gede No. 184, Bukittinggi 98646, Malut', 'samosir.tasnim@tampu', '0483 8487 789', '1991-07-27 21:34:04', '1997-07-28 14:17:19.0'),
(75, 'Aurora Hassanah', 'Psr. BKR No. 514, Bogor 85541, Pabar', 'kezia.widodo@yahoo.c', '(+62) 351 7162 846', '1978-11-09 00:26:16', '1973-10-24 20:35:36.0'),
(76, 'Eli Mayasari', 'Ds. Baha No. 369, Tangerang 94624, Jabar', 'kusumo.ani@yahoo.com', '(+62) 563 2964 4100', '1986-08-04 18:19:32', '1981-05-30 04:36:01.0'),
(77, 'Dasa Wibisono M.Farm', 'Ds. Bambu No. 952, Malang 12003, Papua', 'anainggolan@usada.my', '(+62) 648 0630 232', '1971-01-22 22:17:30', '1998-06-20 23:25:54.0'),
(78, 'Darijan Marbun S.Gz', 'Jln. Banceng Pondok No. 775, Magelang 41043, Jatim', 'budiman.putri@usamah', '0788 0801 4850', '1998-04-21 16:52:17', '1979-05-24 19:56:21.0'),
(79, 'Respati Saptono', 'Jln. Sutarjo No. 383, Sungai Penuh 83343, Gorontalo', 'putri.widodo@gmail.c', '(+62) 911 9821 139', '1981-08-25 08:13:13', '1997-10-03 00:35:41.0'),
(80, 'Mahmud Iswahyudi S.Pd', 'Jr. Wahid Hasyim No. 303, Palopo 13802, Riau', 'wyuniar@lailasari.in', '(+62) 262 7307 5556', '2012-12-02 05:05:15', '1992-01-28 05:37:44.0'),
(81, 'Ilsa Agustina S.Farm', 'Psr. Sudirman No. 73, Binjai 69260, Jateng', 'aryani.puspa@gmail.c', '0869 9219 599', '1979-10-01 03:04:02', '2005-07-16 12:33:34.0'),
(82, 'Purwadi Jabal Permadi M.Pd', 'Jln. Setiabudhi No. 311, Parepare 42775, Sumut', 'danang.palastri@sito', '(+62) 285 6869 1676', '1997-10-20 14:01:42', '1973-07-20 07:15:31.0'),
(83, 'Salimah Farida', 'Gg. Jend. A. Yani No. 606, Cilegon 40840, Babel', 'yani51@hastuti.web.i', '0946 4758 498', '2003-03-09 16:22:56', '2015-09-19 19:58:43.0'),
(84, 'Lantar Pranowo', 'Ki. Moch. Ramdan No. 780, Administrasi Jakarta Utara 20782, Jambi', 'saadat77@permata.sch', '(+62) 925 0404 243', '2006-07-07 20:05:04', '2017-10-01 01:32:40.0'),
(85, 'Wakiman Luhung Mustofa', 'Kpg. Yosodipuro No. 233, Tidore Kepulauan 71806, Aceh', 'belinda.samosir@uyai', '0265 3718 752', '2004-03-16 11:47:44', '1971-01-28 08:28:07.0'),
(86, 'Yoga Bajragin Suwarno', 'Gg. S. Parman No. 670, Tangerang 11232, Kalsel', 'gnababan@yahoo.com', '(+62) 896 9786 6755', '1974-07-14 18:29:01', '1985-10-21 06:04:13.0'),
(87, 'Purwadi Ardianto', 'Ds. Banceng Pondok No. 11, Padangpanjang 40234, Jateng', 'kusuma64@anggraini.i', '0785 5525 668', '2005-02-16 10:53:08', '2018-10-27 03:17:21.0'),
(88, 'Latika Uli Mandasari S.E.I', 'Kpg. Babah No. 651, Magelang 64221, Lampung', 'rahmawati.maya@gmail', '0604 6804 218', '2018-04-28 00:04:07', '2003-10-27 17:25:47.0'),
(89, 'Digdaya Hardana Zulkarnain S.Kom', 'Ki. Kyai Mojo No. 738, Bandar Lampung 57006, Kaltim', 'omar06@yahoo.com', '(+62) 451 7032 5282', '2016-09-02 09:52:09', '2021-04-19 05:20:44.0'),
(90, 'Hartana Eka Santoso S.E.', 'Kpg. Bakaru No. 81, Mojokerto 15503, Papua', 'rahayu.tami@yahoo.co', '0681 4564 3158', '2019-07-07 23:30:31', '1971-07-15 05:13:43.0'),
(91, 'Eka Utami', 'Gg. Sunaryo No. 518, Sungai Penuh 53424, Jambi', 'jamalia.samosir@yaho', '(+62) 677 9137 0502', '2018-02-01 03:28:35', '2002-10-05 10:43:04.0'),
(92, 'Jamal Siregar', 'Jr. Baranang Siang No. 585, Kediri 59649, Jambi', 'winarno.adiarja@yaho', '0821 9737 7838', '1982-03-11 05:13:42', '1987-10-18 20:36:16.0'),
(93, 'Lasmono Rajata', 'Jln. Wahid No. 267, Batu 25339, Kepri', 'iswahyudi.makara@yah', '(+62) 734 5804 0627', '2014-10-28 05:22:28', '1989-01-31 16:47:30.0'),
(94, 'Cawisono Jailani S.H.', 'Gg. Dipatiukur No. 340, Sukabumi 45754, Malut', 'mnashiruddin@yahoo.c', '(+62) 834 712 175', '2000-07-18 14:14:07', '1971-10-19 20:30:46.0'),
(95, 'Nabila Uyainah', 'Ds. Sampangan No. 706, Mataram 75567, Pabar', 'wlailasari@agustina.', '(+62) 500 3720 5314', '2001-07-07 07:47:12', '2012-10-28 14:27:51.0'),
(96, 'Bakijan Waluyo', 'Psr. Batako No. 879, Pematangsiantar 80338, Papua', 'msitorus@gmail.co.id', '0850 2868 682', '1996-11-03 14:41:59', '1994-08-14 02:05:25.0'),
(97, 'Lili Rahmawati', 'Ds. HOS. Cjokroaminoto (Pasirkaliki) No. 651, Sawahlunto 94839, Banten', 'adinata.yolanda@yaho', '0790 8442 169', '2007-08-26 22:32:08', '2009-02-09 02:10:00.0'),
(98, 'Prima Hidayanto', 'Ki. Yos No. 488, Bitung 72055, Gorontalo', 'febi.agustina@nurain', '(+62) 512 5282 643', '2003-12-31 08:36:02', '2009-11-04 22:28:53.0'),
(99, 'Atmaja Prabowo', 'Kpg. Ujung No. 839, Ternate 58567, Riau', 'tputra@prayoga.org', '0876 2631 585', '1975-05-09 05:15:59', '1993-11-23 12:09:57.0'),
(100, 'Melinda Haryanti', 'Ds. Wahidin No. 238, Pontianak 75957, Jateng', 'gwaluyo@suryono.info', '(+62) 912 3919 3580', '2021-11-06 06:09:23', '2002-02-27 00:14:31.0'),
(101, 'Okto Budiman', 'Ds. B.Agam Dlm No. 77, Bukittinggi 28780, Sulbar', 'mutia07@santoso.in', '0476 4385 714', '2018-08-07 16:47:24', '2016-09-19 18:43:38.0'),
(102, 'Yance Gasti Laksita S.Psi', 'Jr. Krakatau No. 855, Bandung 13501, Papua', 'wijayanti.liman@yaho', '0925 2964 4193', '1983-01-25 09:26:56', '1992-01-25 17:14:36.0');

-- --------------------------------------------------------

--
-- Table structure for table `majalah`
--

CREATE TABLE `majalah` (
  `majalah_id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `tahun` smallint(4) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `harga` float NOT NULL,
  `diskon` decimal(4,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `majalah_category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `majalah`
--

INSERT INTO `majalah` (`majalah_id`, `judul`, `slug`, `tahun`, `penerbit`, `harga`, `diskon`, `stok`, `cover`, `majalah_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Janda tidak Beranak edit', 'janda-tidak-beranak-edit', 2002, '  Malvin', 12000, '12.00', 200, '1648515511_ad0e5615e7ed855bc953.jpg', 1, '2022-03-14 21:31:07', '2022-03-28 19:58:31', NULL),
(4, 'kimia', 'kimia', 2013, '', 2000, '2.00', 200, '', 2, '2022-03-14 21:37:01', '2022-03-21 21:20:36', '2022-03-21 21:20:36'),
(5, 'test', 'test', 2013, 'Dion', 12000, '10.00', 2, '', 2, '2022-03-14 21:41:04', '2022-03-21 21:25:45', '2022-03-21 21:25:45'),
(6, 'php', 'php', 2022, '  Malvin', 10000, '2.00', 200, '', 1, '2022-03-21 20:38:43', '2022-03-21 21:38:26', '2022-03-21 21:38:26'),
(7, 'test edit', 'test-edit', 2013, 'awd', 10000, '2.00', 90, '1648516607_b1366d208d5dfb0506d6.jpg', 1, '2022-03-28 19:22:42', '2022-03-28 20:16:47', NULL),
(8, 'createbmajalah un', 'createbmajalah-un', 2022, 'majalah create', 12000, '12.00', 200, 'default.jpg', 1, '2022-03-28 19:43:47', '2022-03-28 20:03:55', '2022-03-28 20:03:55'),
(9, 'php22', 'php22', 2022, 'dw', 10000, '2.00', 200, '1648515087_c7672c754dde62d71074.jpg', 1, '2022-03-28 19:51:27', '2022-03-28 20:03:51', '2022-03-28 20:03:51'),
(10, 'test edit2', 'test-edit2', 2013, ' sidu', 12000, '2.00', 200, '1648516883_b49b60a0158075ee5257.jpg', 1, '2022-03-28 20:20:55', '2022-03-28 20:21:27', '2022-03-28 20:21:27'),
(11, 'test majalah2', 'test-majalah2', 2013, '  ad', 10000, '12.00', 2, '1650459745_a41b91adc044443c492e.jpg', 1, '2022-04-20 08:02:25', '2022-04-20 08:02:25', NULL),
(12, 'Dionesius Diegratia Febrian', 'dionesius-diegratia-febrian', 2002, ' Dion', 200200, '0.00', 90, '1650502936_0af7c501fc49877c0b6e.jpg', 2, '2022-04-20 20:02:16', '2022-04-20 20:02:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `majalah_category`
--

CREATE TABLE `majalah_category` (
  `majalah_category_id` int(5) NOT NULL,
  `name_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `majalah_category`
--

INSERT INTO `majalah_category` (`majalah_category_id`, `name_category`) VALUES
(1, 'Remaja'),
(2, 'Dewasa'),
(3, 'Anak');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-04-05-001820', 'App\\Database\\Migrations\\Distributor', 'default', 'App', 1649118440, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `address` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(20) CHARACTER SET latin1 NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'test 2', 'tawawd', 'HAWDUHAW@GAMIL.COM', '123123', '2022-04-02 01:23:34', '2022-04-03 01:48:56'),
(6, 'test edit suppppp', 'a', 'a', '1', '2022-04-02 01:54:35', '2022-04-03 01:42:50'),
(7, 'ayam goreng', 'Jl. Pangeran Antasari', 'INIAWDB@HUDHAUWD', '0822-5633-7325', '2022-04-03 01:50:36', '2022-04-03 01:50:36'),
(8, 'test up', 'adwad', 'emaildaw', '2131', '2022-04-03 01:52:43', '2022-04-03 01:52:43'),
(9, 'awdawdawd', 'AWDAWDWADA', 'awdawdwadawd', '123123', '2022-04-03 02:07:23', '2022-04-03 02:07:23'),
(10, 'Dionesius Diegratia Febrian', 'KAPITALALAMAT', 'kapital@gmail', '123123', '2022-04-03 02:07:46', '2022-04-03 02:07:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `foreign` (`book_category_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributor_id`);

--
-- Indexes for table `majalah`
--
ALTER TABLE `majalah`
  ADD PRIMARY KEY (`majalah_id`),
  ADD KEY `tugas` (`majalah_category_id`);

--
-- Indexes for table `majalah_category`
--
ALTER TABLE `majalah_category`
  ADD PRIMARY KEY (`majalah_category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `distributor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `majalah`
--
ALTER TABLE `majalah`
  MODIFY `majalah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `majalah_category`
--
ALTER TABLE `majalah_category`
  MODIFY `majalah_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `foreign` FOREIGN KEY (`book_category_id`) REFERENCES `book_category` (`book_category_id`);

--
-- Constraints for table `majalah`
--
ALTER TABLE `majalah`
  ADD CONSTRAINT `tugas` FOREIGN KEY (`majalah_category_id`) REFERENCES `majalah_category` (`majalah_category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
