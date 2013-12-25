-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- โฮสต์: 127.0.0.1
-- เวลาในการสร้าง: 
-- เวอร์ชั่นของเซิร์ฟเวอร์: 5.6.14
-- รุ่นของ PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- ฐานข้อมูล: `school`
--

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `mcou`
--

CREATE TABLE IF NOT EXISTS `mcou` (
  `id_mcou` int(11) NOT NULL AUTO_INCREMENT,
  `mcou_code` varchar(50) DEFAULT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `name_th` varchar(50) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(11) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mcou`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ประเทศ' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `mmem`
--

CREATE TABLE IF NOT EXISTS `mmem` (
  `id_mmem` int(11) NOT NULL AUTO_INCREMENT,
  `id_mmem_cat` int(11) DEFAULT NULL,
  `mmem_code` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_member` int(11) DEFAULT NULL,
  `from_table` varchar(255) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(11) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mmem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='สมาชิก' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `mmem_cat`
--

CREATE TABLE IF NOT EXISTS `mmem_cat` (
  `id_mmem_cat` int(11) NOT NULL AUTO_INCREMENT,
  `mmem_cat_code` varchar(50) DEFAULT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `name_th` varchar(50) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(11) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mmem_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ประเภทสมาชิก' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `mmnu`
--

CREATE TABLE IF NOT EXISTS `mmnu` (
  `id_mmnu` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(50) DEFAULT NULL,
  `name_th` varchar(50) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `id_order` int(11) DEFAULT NULL,
  `filelocation` varchar(255) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `id_create` int(11) NOT NULL,
  `dt_create` datetime NOT NULL,
  `id_update` int(11) NOT NULL,
  `dt_update` datetime NOT NULL,
  PRIMARY KEY (`id_mmnu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='เมนูโปรแกรม' AUTO_INCREMENT=28 ;

--
-- dump ตาราง `mmnu`
--

INSERT INTO `mmnu` (`id_mmnu`, `name_en`, `name_th`, `id_parent`, `id_order`, `filelocation`, `comment`, `status`, `id_create`, `dt_create`, `id_update`, `dt_update`) VALUES
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
-- โครงสร้างตาราง `mpar`
--

CREATE TABLE IF NOT EXISTS `mpar` (
  `id_mpar` int(11) NOT NULL AUTO_INCREMENT,
  `metier` int(11) DEFAULT NULL,
  `revenue` varchar(50) DEFAULT NULL,
  `study` varchar(4000) DEFAULT NULL,
  `id_msex` tinyint(4) DEFAULT NULL,
  `status_marriaged` tinyint(4) DEFAULT NULL,
  `id_mpre` int(11) DEFAULT NULL,
  `firstname_th` varchar(25) DEFAULT NULL,
  `lastname_th` varchar(25) DEFAULT NULL,
  `firstname_en` varchar(25) DEFAULT NULL,
  `lastname_en` varchar(25) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `adr1_number` varchar(50) DEFAULT NULL,
  `adr1_moo` varchar(50) DEFAULT NULL,
  `adr1_village` varchar(50) DEFAULT NULL,
  `adr1_soi` varchar(50) DEFAULT NULL,
  `adr1_road` varchar(50) DEFAULT NULL,
  `adr1_subdistrict` varchar(50) DEFAULT NULL,
  `adr1_district` varchar(50) DEFAULT NULL,
  `id_mprv1` int(11) DEFAULT NULL,
  `id_country1` varchar(50) DEFAULT NULL,
  `adr1_postcode` varchar(50) DEFAULT NULL,
  `adr2_number` varchar(50) DEFAULT NULL,
  `adr2_moo` varchar(50) DEFAULT NULL,
  `adr2_village` varchar(50) DEFAULT NULL,
  `adr2_soi` varchar(50) DEFAULT NULL,
  `adr2_road` varchar(50) DEFAULT NULL,
  `adr2_subdistrict` varchar(50) DEFAULT NULL,
  `adr2_district` varchar(50) DEFAULT NULL,
  `id_mprv2` int(11) DEFAULT NULL,
  `id_country2` varchar(50) DEFAULT NULL,
  `adr2_postcode` varchar(50) DEFAULT NULL,
  `idcard_num` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(11) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mpar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ผู้ปกครองนักเรียน' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `mprv`
--

CREATE TABLE IF NOT EXISTS `mprv` (
  `id_mprv` int(11) NOT NULL AUTO_INCREMENT,
  `mprv_code` varchar(50) DEFAULT NULL,
  `name_en` varchar(50) DEFAULT NULL,
  `name_th` varchar(50) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(11) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mprv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='จังหวัด/เมือง' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `mstu`
--

CREATE TABLE IF NOT EXISTS `mstu` (
  `id_mstu` int(11) NOT NULL AUTO_INCREMENT,
  `id_mcla` int(11) DEFAULT NULL,
  `mstu_number` int(11) DEFAULT NULL,
  `mstu_code` varchar(50) DEFAULT NULL,
  `mstu_start_date` date DEFAULT NULL,
  `id_mpre` int(11) DEFAULT NULL,
  `firstname_th` varchar(25) DEFAULT NULL,
  `lastname_th` varchar(25) DEFAULT NULL,
  `firstname_en` varchar(25) DEFAULT NULL,
  `lastname_en` varchar(25) DEFAULT NULL,
  `idcard_num` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `nationality` int(11) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `adr1_number` varchar(50) DEFAULT NULL,
  `adr1_moo` varchar(50) DEFAULT NULL,
  `adr1_village` varchar(50) DEFAULT NULL,
  `adr1_soi` varchar(50) DEFAULT NULL,
  `adr1_road` varchar(50) DEFAULT NULL,
  `adr1_subdistrict` varchar(50) DEFAULT NULL,
  `adr1_district` varchar(50) DEFAULT NULL,
  `id_mprv1` int(11) DEFAULT NULL,
  `id_country1` varchar(50) DEFAULT NULL,
  `adr1_postcode` varchar(50) DEFAULT NULL,
  `adr2_number` varchar(50) DEFAULT NULL,
  `adr2_moo` varchar(50) DEFAULT NULL,
  `adr2_village` varchar(50) DEFAULT NULL,
  `adr2_soi` varchar(50) DEFAULT NULL,
  `adr2_road` varchar(50) DEFAULT NULL,
  `adr2_subdistrict` varchar(50) DEFAULT NULL,
  `adr2_district` varchar(50) DEFAULT NULL,
  `id_mprv2` int(11) DEFAULT NULL,
  `id_country2` varchar(50) DEFAULT NULL,
  `adr2_postcode` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `id_mpar_father` int(11) DEFAULT NULL,
  `id_mpar_mother` int(11) DEFAULT NULL,
  `id_mpar_dwel` varchar(25) DEFAULT NULL,
  `is_connected` varchar(50) DEFAULT NULL,
  `pre_school` varchar(50) DEFAULT NULL,
  `pre_subdistrict` varchar(50) DEFAULT NULL,
  `pre_district` varchar(50) DEFAULT NULL,
  `pre_id_mprv` int(11) DEFAULT NULL,
  `pre_id_country` varchar(50) DEFAULT NULL,
  `pre_id_mcla` int(11) DEFAULT NULL,
  `comment` varchar(4000) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  `id_update` int(11) DEFAULT NULL,
  `dt_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id_mstu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ประเภทนักเรียน' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `tlog_lgn`
--

CREATE TABLE IF NOT EXISTS `tlog_lgn` (
  `id_tlog_lgn` int(11) NOT NULL AUTO_INCREMENT,
  `id_mmem` int(11) DEFAULT NULL,
  `is_login` tinyint(4) DEFAULT NULL,
  `id_create` int(11) DEFAULT NULL,
  `dt_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tlog_lgn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='log login' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
