-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2016 at 04:22 PM
-- Server version: 5.5.27
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gicode_sisinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tt_agama`
--

CREATE TABLE `tt_agama` (
  `id` int(11) NOT NULL,
  `nama_agama` varchar(30) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_agama`
--

INSERT INTO `tt_agama` (`id`, `nama_agama`, `created_date`, `created_by`) VALUES
(3, 'Islam', '2015-12-14', 1),
(4, 'Protestan', '2015-12-14', 1),
(5, 'Katolik', '2015-12-14', 1),
(6, 'Budha', '2015-12-14', 1),
(8, 'Hindu', '2015-12-14', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_babinkumtni`
--

CREATE TABLE `tt_babinkumtni` (
  `id` int(11) NOT NULL,
  `nama_babinkumtni` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_babinkumtni`
--

INSERT INTO `tt_babinkumtni` (`id`, `nama_babinkumtni`, `created_date`, `created_by`) VALUES
(1, 'Niiii 2', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_catpasal`
--

CREATE TABLE `tt_catpasal` (
  `id` int(11) NOT NULL,
  `nama_catpasal` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_catpasal`
--

INSERT INTO `tt_catpasal` (`id`, `nama_catpasal`, `created_date`, `created_by`) VALUES
(1, 'test pasal', '2016-01-07', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_datapasal`
--

CREATE TABLE `tt_datapasal` (
  `id` int(11) NOT NULL,
  `nama_datapasal` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_datapasal`
--

INSERT INTO `tt_datapasal` (`id`, `nama_datapasal`, `created_date`, `created_by`) VALUES
(1, 'aaaa', '2016-01-07', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_goldarah`
--

CREATE TABLE `tt_goldarah` (
  `id` int(11) NOT NULL,
  `nama_goldarah` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_goldarah`
--

INSERT INTO `tt_goldarah` (`id`, `nama_goldarah`, `created_date`, `created_by`) VALUES
(1, 'A', '2015-12-15', 15),
(2, 'B', '2015-12-15', 15),
(3, 'AB', '2015-12-15', 15),
(4, 'O', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_jabdarat`
--

CREATE TABLE `tt_jabdarat` (
  `id` int(11) NOT NULL,
  `nama_jabdarat` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_jabdarat`
--

INSERT INTO `tt_jabdarat` (`id`, `nama_jabdarat`, `created_date`, `created_by`) VALUES
(1, '122 edit', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_jablaut`
--

CREATE TABLE `tt_jablaut` (
  `id` int(11) NOT NULL,
  `nama_jablaut` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_jablaut`
--

INSERT INTO `tt_jablaut` (`id`, `nama_jablaut`, `created_date`, `created_by`) VALUES
(1, 'Contoh 1', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_jabudara`
--

CREATE TABLE `tt_jabudara` (
  `id` int(11) NOT NULL,
  `nama_jabudara` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_jabudara`
--

INSERT INTO `tt_jabudara` (`id`, `nama_jabudara`, `created_date`, `created_by`) VALUES
(2, 'ddd1111', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_kabupaten`
--

CREATE TABLE `tt_kabupaten` (
  `id` int(11) NOT NULL,
  `nama_kabupaten` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tt_kecamatan`
--

CREATE TABLE `tt_kecamatan` (
  `id` int(11) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tt_kelurahan`
--

CREATE TABLE `tt_kelurahan` (
  `id` int(11) NOT NULL,
  `nama_kelurahan` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_kelurahan`
--

INSERT INTO `tt_kelurahan` (`id`, `nama_kelurahan`, `created_date`, `created_by`) VALUES
(1, 'ss', '2016-01-07', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_korpsdarat`
--

CREATE TABLE `tt_korpsdarat` (
  `id` int(11) NOT NULL,
  `nama_korpsdarat` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_korpsdarat`
--

INSERT INTO `tt_korpsdarat` (`id`, `nama_korpsdarat`, `created_date`, `created_by`) VALUES
(3, 'Satu Lagi', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_korpslaut`
--

CREATE TABLE `tt_korpslaut` (
  `id` int(11) NOT NULL,
  `nama_korpslaut` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_korpslaut`
--

INSERT INTO `tt_korpslaut` (`id`, `nama_korpslaut`, `created_date`, `created_by`) VALUES
(2, 'Dua', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_korpsudara`
--

CREATE TABLE `tt_korpsudara` (
  `id` int(11) NOT NULL,
  `nama_korpsudara` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_korpsudara`
--

INSERT INTO `tt_korpsudara` (`id`, `nama_korpsudara`, `created_date`, `created_by`) VALUES
(2, 'Dua 1', '2016-01-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_kotamad`
--

CREATE TABLE `tt_kotamad` (
  `id` int(11) NOT NULL,
  `nama_kotamad` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_kotamad`
--

INSERT INTO `tt_kotamad` (`id`, `nama_kotamad`, `created_date`, `created_by`) VALUES
(1, 'AD', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_kotamal`
--

CREATE TABLE `tt_kotamal` (
  `id` int(11) NOT NULL,
  `nama_kotamal` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_kotamal`
--

INSERT INTO `tt_kotamal` (`id`, `nama_kotamal`, `created_date`, `created_by`) VALUES
(2, 'satu', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_kotamaluar`
--

CREATE TABLE `tt_kotamaluar` (
  `id` int(11) NOT NULL,
  `nama_kotamaluar` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_kotamaluar`
--

INSERT INTO `tt_kotamaluar` (`id`, `nama_kotamaluar`, `created_date`, `created_by`) VALUES
(2, 'Luar2', '2015-12-16', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_kotamamabes`
--

CREATE TABLE `tt_kotamamabes` (
  `id` int(11) NOT NULL,
  `nama_kotamamabes` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_kotamamabes`
--

INSERT INTO `tt_kotamamabes` (`id`, `nama_kotamamabes`, `created_date`, `created_by`) VALUES
(1, 'Satu', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_kotamau`
--

CREATE TABLE `tt_kotamau` (
  `id` int(11) NOT NULL,
  `nama_kotamau` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_kotamau`
--

INSERT INTO `tt_kotamau` (`id`, `nama_kotamau`, `created_date`, `created_by`) VALUES
(1, 'auedit', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_masmil`
--

CREATE TABLE `tt_masmil` (
  `id` int(11) NOT NULL,
  `nama_masmil` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_masmil`
--

INSERT INTO `tt_masmil` (`id`, `nama_masmil`, `created_date`, `created_by`) VALUES
(1, 'masmil 1', '2016-01-07', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_matra`
--

CREATE TABLE `tt_matra` (
  `id` int(11) NOT NULL,
  `nama_matra` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_matra`
--

INSERT INTO `tt_matra` (`id`, `nama_matra`, `created_date`, `created_by`) VALUES
(1, 'TNI AD', '2015-12-14', 15),
(3, 'Udara', '2015-12-14', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_otjen`
--

CREATE TABLE `tt_otjen` (
  `id` int(11) NOT NULL,
  `nama_otjen` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_otjen`
--

INSERT INTO `tt_otjen` (`id`, `nama_otjen`, `created_date`, `created_by`) VALUES
(1, 'Test Otjen', '2016-01-07', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_otmil`
--

CREATE TABLE `tt_otmil` (
  `id` int(11) NOT NULL,
  `nama_otmil` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_otmil`
--

INSERT INTO `tt_otmil` (`id`, `nama_otmil`, `created_date`, `created_by`) VALUES
(1, 'Test Otmil', '2016-01-07', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_otmilti`
--

CREATE TABLE `tt_otmilti` (
  `id` int(11) NOT NULL,
  `nama_otmilti` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tt_pangal`
--

CREATE TABLE `tt_pangal` (
  `id` int(11) NOT NULL,
  `nama_pangal` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_pangal`
--

INSERT INTO `tt_pangal` (`id`, `nama_pangal`, `created_date`, `created_by`) VALUES
(1, 'satu', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_pangdar`
--

CREATE TABLE `tt_pangdar` (
  `id` int(11) NOT NULL,
  `nama_pangdar` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_pangdar`
--

INSERT INTO `tt_pangdar` (`id`, `nama_pangdar`, `created_date`, `created_by`) VALUES
(2, 'Satu', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_pangpns`
--

CREATE TABLE `tt_pangpns` (
  `id` int(11) NOT NULL,
  `nama_pangpns` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_pangpns`
--

INSERT INTO `tt_pangpns` (`id`, `nama_pangpns`, `created_date`, `created_by`) VALUES
(1, 'Gol IIA', '2015-12-15', 15),
(2, 'Gol IIIB', '2015-12-15', 15),
(4, 'Gol IIIA', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_pangud`
--

CREATE TABLE `tt_pangud` (
  `id` int(11) NOT NULL,
  `nama_pangud` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_pangud`
--

INSERT INTO `tt_pangud` (`id`, `nama_pangud`, `created_date`, `created_by`) VALUES
(1, 'Test 1', '2015-12-15', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_provinsi`
--

CREATE TABLE `tt_provinsi` (
  `id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tt_register_perkara`
--

CREATE TABLE `tt_register_perkara` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `descr` text,
  `personil_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_register_perkara`
--

INSERT INTO `tt_register_perkara` (`id`, `code`, `date`, `descr`, `personil_id`, `created_date`, `created_by`) VALUES
(1, '098/K/AL/II-08/XI/2015', '2015-12-14', 'Berkas Lengkap', 5, '2015-12-14', 1),
(2, '123', '2015-12-14', 'Berkas Lengkap', 5, '2015-12-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tt_satkerdarat`
--

CREATE TABLE `tt_satkerdarat` (
  `id` int(11) NOT NULL,
  `nama_satkerdarat` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_satkerdarat`
--

INSERT INTO `tt_satkerdarat` (`id`, `nama_satkerdarat`, `created_date`, `created_by`) VALUES
(1, 'Tes 1 edit', '2015-12-16', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_satkerlaut`
--

CREATE TABLE `tt_satkerlaut` (
  `id` int(11) NOT NULL,
  `nama_satkerlaut` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_satkerlaut`
--

INSERT INTO `tt_satkerlaut` (`id`, `nama_satkerlaut`, `created_date`, `created_by`) VALUES
(1, 'Test edit', '2015-12-16', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_satkerudara`
--

CREATE TABLE `tt_satkerudara` (
  `id` int(11) NOT NULL,
  `nama_satkerudara` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_satkerudara`
--

INSERT INTO `tt_satkerudara` (`id`, `nama_satkerudara`, `created_date`, `created_by`) VALUES
(2, 'Dua Test edited', '2015-12-16', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_statperkawinan`
--

CREATE TABLE `tt_statperkawinan` (
  `id` int(11) NOT NULL,
  `nama_status` varchar(50) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_statperkawinan`
--

INSERT INTO `tt_statperkawinan` (`id`, `nama_status`, `created_date`, `created_by`) VALUES
(2, 'Kawin', '2015-12-14', 15),
(3, 'Tidak Kawin', '2015-12-14', 15),
(4, 'Janda', '2015-12-14', 15),
(5, 'Duda', '2015-12-14', 15),
(6, 'Tidak Diketahui', '2015-12-14', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tt_sukubangsa`
--

CREATE TABLE `tt_sukubangsa` (
  `id` int(11) NOT NULL,
  `nama_suku` varchar(30) NOT NULL,
  `created_date` date NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_sukubangsa`
--

INSERT INTO `tt_sukubangsa` (`id`, `nama_suku`, `created_date`, `created_by`) VALUES
(1, 'Jawa', '2015-12-14', 15),
(2, 'Sunda', '2015-12-14', 15),
(3, 'Batak', '2015-12-14', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tt_agama`
--
ALTER TABLE `tt_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_babinkumtni`
--
ALTER TABLE `tt_babinkumtni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_catpasal`
--
ALTER TABLE `tt_catpasal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_datapasal`
--
ALTER TABLE `tt_datapasal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_goldarah`
--
ALTER TABLE `tt_goldarah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_jabdarat`
--
ALTER TABLE `tt_jabdarat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_jablaut`
--
ALTER TABLE `tt_jablaut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_jabudara`
--
ALTER TABLE `tt_jabudara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kabupaten`
--
ALTER TABLE `tt_kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kecamatan`
--
ALTER TABLE `tt_kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kelurahan`
--
ALTER TABLE `tt_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_korpsdarat`
--
ALTER TABLE `tt_korpsdarat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_korpslaut`
--
ALTER TABLE `tt_korpslaut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_korpsudara`
--
ALTER TABLE `tt_korpsudara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kotamad`
--
ALTER TABLE `tt_kotamad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kotamal`
--
ALTER TABLE `tt_kotamal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kotamaluar`
--
ALTER TABLE `tt_kotamaluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kotamamabes`
--
ALTER TABLE `tt_kotamamabes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_kotamau`
--
ALTER TABLE `tt_kotamau`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_masmil`
--
ALTER TABLE `tt_masmil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_matra`
--
ALTER TABLE `tt_matra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_otjen`
--
ALTER TABLE `tt_otjen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_otmil`
--
ALTER TABLE `tt_otmil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_otmilti`
--
ALTER TABLE `tt_otmilti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_pangal`
--
ALTER TABLE `tt_pangal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_pangdar`
--
ALTER TABLE `tt_pangdar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_pangpns`
--
ALTER TABLE `tt_pangpns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_pangud`
--
ALTER TABLE `tt_pangud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_provinsi`
--
ALTER TABLE `tt_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_register_perkara`
--
ALTER TABLE `tt_register_perkara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_satkerdarat`
--
ALTER TABLE `tt_satkerdarat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_satkerlaut`
--
ALTER TABLE `tt_satkerlaut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_satkerudara`
--
ALTER TABLE `tt_satkerudara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_statperkawinan`
--
ALTER TABLE `tt_statperkawinan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_sukubangsa`
--
ALTER TABLE `tt_sukubangsa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tt_agama`
--
ALTER TABLE `tt_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tt_babinkumtni`
--
ALTER TABLE `tt_babinkumtni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_catpasal`
--
ALTER TABLE `tt_catpasal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_datapasal`
--
ALTER TABLE `tt_datapasal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tt_goldarah`
--
ALTER TABLE `tt_goldarah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tt_jabdarat`
--
ALTER TABLE `tt_jabdarat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_jablaut`
--
ALTER TABLE `tt_jablaut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_jabudara`
--
ALTER TABLE `tt_jabudara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_kabupaten`
--
ALTER TABLE `tt_kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tt_kecamatan`
--
ALTER TABLE `tt_kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tt_kelurahan`
--
ALTER TABLE `tt_kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_korpsdarat`
--
ALTER TABLE `tt_korpsdarat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tt_korpslaut`
--
ALTER TABLE `tt_korpslaut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_korpsudara`
--
ALTER TABLE `tt_korpsudara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_kotamad`
--
ALTER TABLE `tt_kotamad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_kotamal`
--
ALTER TABLE `tt_kotamal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_kotamaluar`
--
ALTER TABLE `tt_kotamaluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_kotamamabes`
--
ALTER TABLE `tt_kotamamabes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_kotamau`
--
ALTER TABLE `tt_kotamau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_masmil`
--
ALTER TABLE `tt_masmil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_matra`
--
ALTER TABLE `tt_matra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tt_otjen`
--
ALTER TABLE `tt_otjen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_otmil`
--
ALTER TABLE `tt_otmil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_otmilti`
--
ALTER TABLE `tt_otmilti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_pangal`
--
ALTER TABLE `tt_pangal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_pangdar`
--
ALTER TABLE `tt_pangdar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_pangpns`
--
ALTER TABLE `tt_pangpns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tt_pangud`
--
ALTER TABLE `tt_pangud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_provinsi`
--
ALTER TABLE `tt_provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tt_register_perkara`
--
ALTER TABLE `tt_register_perkara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_satkerdarat`
--
ALTER TABLE `tt_satkerdarat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_satkerlaut`
--
ALTER TABLE `tt_satkerlaut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tt_satkerudara`
--
ALTER TABLE `tt_satkerudara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tt_statperkawinan`
--
ALTER TABLE `tt_statperkawinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tt_sukubangsa`
--
ALTER TABLE `tt_sukubangsa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
