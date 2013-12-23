-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2013 at 11:03 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `mcou`
--

CREATE TABLE IF NOT EXISTS `mcou` (
  `id_mcou` int(11) NOT NULL AUTO_INCREMENT,
  `mcou_code` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `comment` varchar(4000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(11) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mcou`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mmem`
--

CREATE TABLE IF NOT EXISTS `mmem` (
  `id_mmem` int(11) NOT NULL AUTO_INCREMENT,
  `id_mmem_cat` int(11) NOT NULL,
  `mmem_code` varchar(50) NOT NULL,
  `id_msex` tinyint(4) NOT NULL,
  `status_marriaged` tinyint(4) NOT NULL,
  `id_mpre` varchar(25) NOT NULL,
  `firstname_en` varchar(25) NOT NULL,
  `lastname_en` varchar(25) NOT NULL,
  `firstname_th` varchar(25) NOT NULL,
  `lastname_th` varchar(25) NOT NULL,
  `birthdate` date NOT NULL,
  `startdate` datetime NOT NULL,
  `resigndate` datetime NOT NULL,
  `adr_number` varchar(50) NOT NULL,
  `adr_moo` varchar(50) NOT NULL,
  `adr_village` varchar(50) NOT NULL,
  `adr_soi` varchar(50) NOT NULL,
  `adr_road` varchar(50) NOT NULL,
  `adr_subdistrict` varchar(50) NOT NULL,
  `adr_district` varchar(50) NOT NULL,
  `id_mprv` int(11) NOT NULL,
  `adr_country` varchar(50) NOT NULL,
  `adr_postcode` varchar(50) NOT NULL,
  `idcard_num` varchar(50) NOT NULL,
  `drv_lcn_num` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `comment` varchar(4000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(11) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mmem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mmem_cat`
--

CREATE TABLE IF NOT EXISTS `mmem_cat` (
  `id_mmem_cat` int(11) NOT NULL AUTO_INCREMENT,
  `mmem_cat_code` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `comment` varchar(4000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(11) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mmem_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mmnu`
--

CREATE TABLE IF NOT EXISTS `mmnu` (
  `id_mmnu` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(50) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `filelocation` varchar(255) NOT NULL,
  `comment` varchar(4000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `di_update` int(11) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mmnu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `mmnu`
--

INSERT INTO `mmnu` (`id_mmnu`, `name_en`, `name_th`, `id_parent`, `id_order`, `filelocation`, `comment`, `status`, `id_create`, `dt_create`, `di_update`, `dt_update`) VALUES
(1, 'Home', 'หน้าหลัก', 1, 1, 'ctl_main', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(2, 'Master', 'ตั้งค่าหลัก', 1, 2, '', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(3, 'Master Menber Category', 'ประเภทสมาชิก', 2, 1, '', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(4, 'Master Member', 'สมาชิก', 2, 2, '', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(5, 'Master Class', 'ชั้นเรียน', 2, 3, '', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(6, 'Master Classroom', 'ห้องเรียน', 2, 4, '', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(7, 'Master Student', 'ชั้นเรียน', 2, 5, '', '', 1, 1, '2013-12-18 12:02:40', 1, '2013-12-18 12:02:40'),
(9, 'List', 'รายการ', 8, 1, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(10, 'Insert', 'สร้าง', 8, 2, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(11, 'Edit', 'แก้ไข', 8, 3, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(12, 'Edit Status', 'อนุญาตให้ใช้/ล็อค\n', 8, 4, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(13, 'Master Class', 'ชั้นเรียน', 2, 3, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(14, 'List', 'รายการ', 13, 1, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(15, 'Insert', 'สร้าง', 13, 2, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(16, 'Edit', 'แก้ไข', 13, 3, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(17, 'Edit Status', 'อนุญาตให้ใช้/ล็อค\n', 13, 4, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(18, 'Master Classroom', 'ห้องเรียน', 2, 4, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(19, 'List', 'รายการ', 18, 4, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(20, 'Insert', 'สร้าง', 18, 2, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(21, 'Edit', 'แก้ไข', 18, 3, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(22, 'Edit Status', 'อนุญาตให้ใช้/ล็อค\n', 18, 4, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(23, 'Master Student', 'ชั้นเรียน', 2, 5, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(24, 'List', 'รายการ', 23, 1, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(25, 'Insert', 'สร้าง', 23, 2, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(26, 'Edit', 'แก้ไข', 23, 3, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00'),
(27, 'Edit Status', 'อนุญาตให้ใช้/ล็อค\n', 23, 4, '', '', 1, 1, '2013-12-18 12:02:00', 1, '2013-12-18 12:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `mprv`
--

CREATE TABLE IF NOT EXISTS `mprv` (
  `id_mprv` int(11) NOT NULL AUTO_INCREMENT,
  `mprv_code` varchar(50) NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_th` varchar(50) NOT NULL,
  `comment` varchar(4000) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(11) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mprv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tlog_lgn`
--

CREATE TABLE IF NOT EXISTS `tlog_lgn` (
  `id_tlog_lgn` int(11) NOT NULL AUTO_INCREMENT,
  `id_mmem` int(11) NOT NULL,
  `is_login` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  PRIMARY KEY (`id_tlog_lgn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
