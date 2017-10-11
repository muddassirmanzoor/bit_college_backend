-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2017 at 02:56 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fc_officers`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `place` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `owner_name` varchar(250) DEFAULT NULL,
  `record_type` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banker_subscription`
--

CREATE TABLE `banker_subscription` (
  `bs_id` int(20) NOT NULL,
  `banker_in` varchar(100) DEFAULT NULL,
  `banker_name` varchar(100) DEFAULT NULL,
  `banker_branch` varchar(100) DEFAULT NULL,
  `subscription_in` varchar(100) DEFAULT NULL,
  `subscription_type` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `ARMYNO` decimal(20,0) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banker_subscription`
--

INSERT INTO `banker_subscription` (`bs_id`, `banker_in`, `banker_name`, `banker_branch`, `subscription_in`, `subscription_type`, `amount`, `ARMYNO`, `updated_at`) VALUES
(3, 'In Pakistan', 'mcb', 'f10', 'In Pakistan', 'Insurance Policy/Policies', '11', '2', '2017-04-18 14:08:35'),
(4, 'In Pakistan', 'Bank Alfalah', 'F-10 Branch', 'In Pakistan', 'Insurance Policy/Policies', '50000', '1', '2017-04-24 07:58:23'),
(5, 'In Pakistan', 'HBL', 'f-11 Islamabad', '', '', '', '1', '2017-04-24 08:06:09'),
(6, 'In Foreign Countries', 'Yes Bank', '', '', '', '', '1', '2017-04-24 08:11:46'),
(7, '', '', '', 'In Foreign Countries', 'DSOP/Provident Funds', '111', '1', '2017-04-24 08:25:42'),
(9, '', '', '', 'In Pakistan', 'Religious/Sectional Fund', '333', '1', '2017-04-24 08:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `caste`
--

CREATE TABLE `caste` (
  `tribe_id` int(11) NOT NULL,
  `caste` char(40) NOT NULL,
  `caste_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `caste`
--

INSERT INTO `caste` (`tribe_id`, `caste`, `caste_title`) VALUES
(1, 'AFD', 'AFRIDI'),
(2, 'B/KHEL', 'B/KHEL'),
(3, 'BNG', 'BANGASH'),
(4, 'BNI', 'BNI'),
(5, 'BTNI', 'BTNI'),
(6, 'DAUR', 'DAUR'),
(7, 'DIRI', 'DIRI'),
(8, 'FR KU', 'FR KU'),
(9, 'GDPR', 'GDPR'),
(10, 'K/MMD', 'K/MMD'),
(11, 'KDI', 'KDI'),
(12, 'KTK', 'KHATTAK'),
(13, 'MGI', 'MGI'),
(14, 'MGL', 'MENGAL'),
(15, 'MIX', 'MIX'),
(16, 'MMD', 'MMD'),
(17, 'MQBL', 'MQBL'),
(18, 'MSD', 'MSD'),
(19, 'MSZI', 'MSZI'),
(20, 'MWT', 'MWT'),
(21, 'OKZ', 'OKZ'),
(22, 'PARA', 'PARA'),
(23, 'RZI', 'RZI'),
(24, 'S/KHEL', 'S/KHEL'),
(25, 'SMI', 'SMI'),
(26, 'SWT', 'SWT'),
(27, 'TKI', 'TKI'),
(28, 'TURI', 'TURI'),
(29, 'UTK', 'UTK'),
(30, 'WZR', 'WZR'),
(31, 'YZI', 'YZI'),
(32, 'ZDN', 'ZDN'),
(33, 'SRI', 'SRI'),
(34, 'KOH', 'KOH'),
(35, 'PJBI', 'PJBI'),
(36, 'CHR', 'CHR'),
(37, 'AWAN', 'AWAN'),
(38, 'GUJAR', 'GUJAR'),
(39, 'BALOCH', 'BALOCH'),
(40, 'QUSHI', 'QUSHI'),
(41, 'DOTANI', 'DOTANI'),
(42, 'SIAL', 'SIAL'),
(43, 'BABAR', 'BABAR'),
(44, 'SALARZAI', 'SALARZAI'),
(45, 'NIAZI', 'NIAZI'),
(46, 'KASHMIRI', 'KASHMIRI'),
(47, 'TANOLI', 'TANOLI'),
(48, 'HAZARA', 'HAZARA'),
(49, 'BHATTI', 'BHATTI'),
(50, 'MASHWANI', 'MASHWANI'),
(51, 'SHINWARI', 'SHINWARI'),
(52, 'CHAUDHRY', 'CHAUDHRY'),
(53, 'MIANI', 'MIANI'),
(54, 'CHDWN', 'CHDWN'),
(55, 'SAGOO', 'SAGOO'),
(56, 'KHOKHAR', 'KHOKHAR'),
(57, 'WAGRAH', 'WAGRAH'),
(59, 'HINDU', 'HINDU'),
(60, 'MUGHAL', 'MUGHAL'),
(61, 'ARYAN', 'ARYAN'),
(62, 'SYED', 'SYED'),
(63, 'SHEIKH', 'SHEIKH'),
(64, 'KHAN', 'KHAN'),
(65, 'ABBASI', 'ABBASI'),
(66, 'MISC', 'MISC'),
(67, 'KRT', 'KHAROTI'),
(68, 'MIX PL', 'MIX PL'),
(69, 'ROTATION', 'ROTATION'),
(70, 'POOL', 'POOL'),
(71, 'CTLI', 'CTLI'),
(72, 'DURRANI', 'DURRANI'),
(74, 'MIAN KHEL', 'MIAN KHEL'),
(76, 'ALZI', 'ALZI'),
(77, 'JAFFRI', 'JAFFRI'),
(78, 'KAKAR', 'KAKAR'),
(79, 'JAJI', 'JAJI'),
(80, 'XYZ', 'XYZ'),
(81, 'afd', 'ajkaafa');

-- --------------------------------------------------------

--
-- Table structure for table `clubs_memberships`
--

CREATE TABLE `clubs_memberships` (
  `membership_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `org_name` varchar(250) DEFAULT NULL,
  `branch` varchar(250) DEFAULT NULL,
  `membership_no` varchar(250) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clubs_memberships`
--

INSERT INTO `clubs_memberships` (`membership_id`, `ARMYNO`, `org_name`, `branch`, `membership_no`, `joining_date`, `position`, `updated_at`) VALUES
(8, '2', 'csk', 'lahore', '242', '2017-04-12', 'NA', '2017-04-17 13:45:30'),
(9, '1', 'Islamabad United', 'islamabad', '22', '2017-04-03', 'Batsman', '2017-04-24 09:05:38'),
(10, '1', 'Education for all', 'lahore', '324', '2017-04-18', 'volunteer ', '2017-04-24 09:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `course` varchar(250) DEFAULT NULL,
  `institute` varchar(250) DEFAULT NULL,
  `place` varchar(250) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `roll_no` varchar(250) DEFAULT NULL,
  `subjects` text,
  `result` varchar(250) DEFAULT NULL,
  `year` varchar(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `record_type` varchar(250) DEFAULT NULL,
  `auth` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `ARMYNO`, `course`, `institute`, `place`, `from_date`, `to_date`, `roll_no`, `subjects`, `result`, `year`, `date`, `country`, `record_type`, `auth`, `updated_at`) VALUES
(1, '2', 'Boxing', '', '', '2017-04-04', '2017-04-20', NULL, '', 'A', '0', NULL, NULL, 'Professional Courses', NULL, '2017-04-19 12:27:59'),
(2, '2', 'A', '', '', '1970-01-01', '1970-01-01', NULL, '', 'B', '0', NULL, NULL, 'Professional Courses', '', '2017-05-15 08:13:47'),
(4, '1', 'Running', '', 'islamabad', '2017-04-08', '2017-04-18', NULL, '', 'A', '', NULL, NULL, 'Professional Courses', '', '2017-04-28 12:21:59'),
(5, '1', 'Boxing', '', 'lahore', '2017-04-21', '2017-04-29', NULL, '', 'B', '', NULL, NULL, 'Professional Courses', '', '2017-04-26 12:28:54'),
(6, '1', '', 'Punjab college', '', '2016-11-16', '2017-04-14', NULL, '', 'A', '', NULL, NULL, 'Educational Institution Attend', '', '2017-04-26 12:28:48'),
(7, '1', '', 'Nust University ', '', '2017-04-06', '2017-04-29', NULL, '', '3.12 CGPA ', '', NULL, NULL, 'Educational Institution Attend', '', '2017-04-26 12:28:41'),
(8, '1', 'FSC', 'IMCB G-10/4,Islamabad', '', '0000-00-00', '0000-00-00', NULL, '', '', '2012', NULL, NULL, 'Civ Qualification', 'ok', '2017-04-26 11:31:36'),
(9, '1', 'CS', 'Nust University ', '', '0000-00-00', '0000-00-00', NULL, '', '', '2013', NULL, NULL, 'Mil Qualfication', 'clear', '2017-04-26 11:49:25'),
(10, '1', 'BSCS', 'fuuast', '', '0000-00-00', '0000-00-00', NULL, '', '', '2016', NULL, NULL, 'Civ Qualification', 'auth', '2017-04-26 11:52:39'),
(11, '1', 'Internal Boxing course', 'fc academy ', '', '2017-03-26', '2017-04-21', NULL, '', 'A', '', NULL, NULL, 'Internal Professional Course', 'OK', '2017-04-26 12:41:28'),
(12, '1', 'Foreign running course', 'kohat academy', '', '2017-04-18', '2017-04-29', NULL, '', 'B', '', NULL, NULL, 'Foreign Professional Course', 'auth', '2017-04-26 12:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `court_trials`
--

CREATE TABLE `court_trials` (
  `trial_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `offence` text,
  `act` text,
  `trial_date` date DEFAULT NULL,
  `place` varchar(250) DEFAULT NULL,
  `punishment` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `court_trials`
--

INSERT INTO `court_trials` (`trial_id`, `ARMYNO`, `offence`, `act`, `trial_date`, `place`, `punishment`, `updated_at`) VALUES
(6, '2', 'robery', '121a', '2017-04-17', 'islamabad', 'Suspended', '2017-04-13 11:33:01'),
(7, '1', 'robery', '23ad', '2017-04-28', 'islamabad', 'Suspended', '2017-04-27 13:13:15'),
(8, '1', 'Discipline issue', '32a', '2017-04-18', 'lahore', 'Suspended', '2017-04-24 10:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `dist_id` int(11) NOT NULL,
  `ref_no` decimal(10,0) NOT NULL,
  `district` char(30) NOT NULL,
  `tehsil` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`dist_id`, `ref_no`, `district`, `tehsil`) VALUES
(1, '1', 'ABBOTTABAD', 'ABBOTTABAD'),
(2, '2', 'ABBOTTABAD', 'HAVELIAN'),
(3, '4', 'BATAGRAM', 'BATAGRAM'),
(4, '5', 'BATAGRAM', 'ALLAI'),
(5, '6', 'BUNER', 'DAGGAR'),
(6, '7', 'BUNER', 'SOWARI'),
(7, '8', 'CHARSADDA', 'TANGI'),
(8, '9', 'CHARSADDA', 'CHARSADDA'),
(9, '10', 'CHARSADDA', 'SHABQADAR'),
(10, '11', 'CHITRAL', 'CHITRAL'),
(11, '12', 'CHITRAL', 'MASTOOJ'),
(12, '14', 'D.I.KHAN', 'D.I.KHAN'),
(13, '15', 'D.I.KHAN', 'PAHARPUR'),
(14, '16', 'D.I.KHAN', 'KULACHI'),
(15, '17', 'D.I.KHAN', 'DARABAN'),
(16, '18', 'D.I.KHAN', 'PAROA'),
(17, '19', 'DIR UPPER', 'DIR'),
(18, '20', 'DIR UPPER', 'WARI'),
(19, '21', 'DIR LOWER', 'SAMAR BAGH'),
(20, '22', 'DIR LOWER', 'TIMARGARA'),
(21, '23', 'HANGU', 'HANGU'),
(22, '24', 'HANGU', 'THALL'),
(23, '25', 'HANGU', 'KALAYA'),
(24, '26', 'HARIPUR', 'HARIPUR'),
(25, '27', 'HARIPUR', 'GHAZI'),
(26, '28', 'KALA DHAKA', 'KALA DHAKA'),
(27, '29', 'KARAK', 'KARAK'),
(28, '30', 'KARAK', 'BANDA DAUD SHAH'),
(29, '31', 'KARAK', 'TAKHTE NASRATI'),
(30, '32', 'KOHAT', 'KOHAT'),
(31, '33', 'KOHAT', 'LACHI'),
(32, '35', 'KOHISTAN', 'PALLAS'),
(33, '36', 'KOHISTAN', 'DASSU'),
(34, '37', 'KOHISTAN', 'PATTAN'),
(35, '38', 'LAKKI MARWAT', 'LAKKI MARWAT'),
(36, '39', 'LAKKI MARWAT', 'SARAI NAURANG'),
(37, '41', 'MALAKAND', 'BATKHELA'),
(38, '42', 'MALAKAND', 'DARGAI'),
(39, '43', 'MANSEHRA', 'MANSEHRA'),
(40, '44', 'MANSEHRA', 'OGHI'),
(41, '45', 'MARDAN', 'MARDAN'),
(42, '46', 'MARDAN', 'TAKHT BHAI'),
(43, '47', 'NOWSHERA', 'NOWSHERA'),
(44, '48', 'SWABI', 'SWABI'),
(45, '49', 'SWABI', 'CHOTTA LAHORE'),
(46, '50', 'SWAT', 'SWAT'),
(47, '51', 'SWAT', 'MATTA'),
(48, '52', 'SHANGLA', 'ALPURI'),
(49, '53', 'SHANGLA', 'PURAN'),
(50, '54', 'TANK', 'TANK'),
(51, '55', 'PESHAWAR', 'PESHAWAR'),
(52, '56', 'MIANWALI', 'ESSA KHEL'),
(53, '57', 'MIANWALI', 'MIANWALI'),
(54, '58', 'MIANWALI', 'PIPLAN'),
(55, '59', 'KHUSHAB', 'KHUSHAB'),
(56, '60', 'KHUSHAB', 'JOHARABAD'),
(57, '62', 'NWA', 'MIRANSHAH'),
(58, '63', 'NWA', 'MIRALI'),
(59, '64', 'SWA', 'WANA'),
(60, '65', 'SWA', 'TIARZA'),
(61, '66', 'KM AGENCY', 'PARACHINAR'),
(62, '67', 'NWA', 'RAZMAK'),
(63, '68', 'NWA', 'DATTAKHEL'),
(64, '70', 'SWA', 'SARWAKAI'),
(65, '71', 'SWA', 'SARAROGHA'),
(66, '72', 'SWA', 'MAKEEN'),
(67, '73', 'SWA', 'LADHA'),
(68, '74', 'KM AGENCY', 'SADDA'),
(69, '75', 'KM AGENCY', 'ALIZAI'),
(70, '76', 'BAJAUR AGENCY', 'KHAR'),
(71, '77', 'BAJAUR AGENCY', 'NAWAGAI'),
(72, '78', 'MOHMAND AGENCY', 'GHALLANAI'),
(73, '79', 'MOHMAND AGENCY', 'YAKKA GHUND'),
(74, '81', 'KHYBER AGENCY', 'LANDIKOTAL'),
(75, '82', 'KHYBER AGENCY', 'JAMRUD'),
(76, '83', 'KHYBER AGENCY', 'BARA'),
(77, '84', 'BAJAUR AGENCY', 'MAMUND'),
(78, '85', 'BAJAUR AGENCY', 'SALARZAI'),
(79, '86', 'BAJAUR AGENCY', 'CHAMARKAND'),
(80, '87', 'BANNU', 'BANNU'),
(81, '89', 'CHITRAL', 'TORKHOW'),
(82, '90', 'CHITRAL', 'DROSH'),
(83, '91', 'SWAT', 'BARIKOT'),
(84, '92', 'SWAT', 'MINGORA'),
(85, '93', 'FR TANK', 'JANDOLA'),
(86, '94', 'FR LAKKI', 'TAJORHI'),
(87, '97', 'FR KOHAT', 'DARA ADAM KHEL'),
(88, '98', 'CHITRAL', 'MULKHOW'),
(89, '99', 'CHITRAL', 'LOTKOH'),
(90, '100', 'SWA', 'BERMAL'),
(91, '101', 'OKZ AGENCY', 'KALAYA'),
(92, '102', 'OKZ AGENCY', 'LOWER'),
(93, '103', 'OKZ AGENCY', 'UPPER'),
(94, '104', 'ATTOCK', 'JAND'),
(95, '105', 'BAKHAR', 'KLOR KOT'),
(96, '106', 'SIALKOT', 'DASKA'),
(97, '108', 'SARGODHA', 'BHALWAL'),
(98, '110', 'D.I.KHAN', 'DARAZINDA'),
(99, '112', 'LAKKI MARWAT', 'TAJURI'),
(100, '113', 'SIALKOT', 'PASRUR'),
(101, '114', 'GUJRANWALA', 'GUJRANWALA'),
(102, '115', 'NAROWAL', 'NAROWAL'),
(103, '116', 'FR LAKKI', 'FR LAKKI'),
(104, '117', 'SWA', 'RATHANZAI'),
(105, '118', 'FAISALABAD', 'FAISALABAD'),
(106, '119', 'MANSEHRA', 'BALAKOT'),
(107, '120', 'DIR LOWER', 'ADINZAI'),
(108, '121', 'DIR LOWER', 'CHAKDARA'),
(109, '123', 'JHANG', 'SHERKOT'),
(110, '125', 'CHAKWAL', 'CHAKWAL'),
(111, '126', 'ISLAMABAD', 'ISLAMABAD'),
(112, '127', 'NANKANA SAHIB', 'SHAH KOT'),
(113, '128', 'SHEIKHUPURA', 'SHEIKHUPURA'),
(114, '129', 'KHANEWAL', 'MIAN CHUNNU'),
(115, '130', 'LAHORE', 'LAHORE'),
(116, '131', 'KASUR', 'KASUR'),
(117, '132', 'OKARA', 'OKARA'),
(118, '133', 'SIALKOT', 'SAFDAR ABAD'),
(119, '134', 'SIALKOT', 'SIALKOT'),
(120, '135', 'SARGODHA', 'SHAHPUR'),
(121, '136', 'SARGODHA', 'SARGODHA'),
(122, '137', 'RAWALPINDI', 'TIXALA'),
(123, '138', 'RAWALPINDI', 'RAWALPINDI'),
(124, '139', 'MALAKAND', 'MALAKAND'),
(125, '140', 'LAYYAH', 'KAROR'),
(126, '141', 'NWA', 'SPINWAM'),
(127, '143', 'GUJRAT', 'GUJRAT'),
(128, '144', 'SAHIWAL', 'CHICHA WATNI'),
(129, '147', 'KARACHI', 'KARACHI'),
(130, '148', 'GUJRANWALA', 'WAZIR ABAD'),
(131, '149', 'HAFIZ ABAD', 'HAFIZ ABAD'),
(132, '150', 'HAFIZ ABAD', 'HAFIZ ABAD'),
(133, '151', 'KARACHI', 'NAZIM ABAD'),
(134, '152', 'ATTOCK', 'ATTOCK'),
(135, '153', 'ATTOCK', 'FATEH JANG'),
(136, '154', 'DIR UPPER', 'CALKOT'),
(137, '155', 'BAGH AZAD KASHMIR', 'BAGH AZAD KASHMIR'),
(138, '156', 'DIR LOWER', 'MUNDA'),
(139, '157', 'JEHLUM', 'PIND DADAN KHAN'),
(140, '158', 'SHAKAR GARH', 'SHAKAR GARH'),
(141, '160', 'TOBA TEK SINGH', 'GOJRA'),
(142, '161', 'BAKHAR', 'BAKHAR'),
(143, '162', 'MULTAN', 'MULTAN'),
(144, '163', 'FAISALABAD', 'SAMANDRI'),
(145, '164', 'FR BANNU', 'FR BANNU'),
(146, '165', 'BANNU', 'DOMAIL'),
(147, '166', 'BANNU', 'WAZIR BAGH'),
(148, '167', 'KHANEWAL', 'JEHANIA'),
(149, '168', 'KASUR', 'PATOKI'),
(150, '169', 'MANDI BAHA UD DIN', 'MANDI BAHA UD DIN'),
(151, '170', 'JHANG', 'JHANG'),
(152, '171', 'GUJRAT', 'KHARIAN'),
(153, '172', 'CHINOT', 'LALIA'),
(154, '173', 'MUZAFAR GARH', 'MUZAFAR GARH'),
(155, '174', 'SARGODA', 'SARGODHA'),
(156, '175', 'SWAT', 'BAHRAIN');

-- --------------------------------------------------------

--
-- Table structure for table `employment_nature`
--

CREATE TABLE `employment_nature` (
  `employment_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `unit` varchar(250) DEFAULT NULL,
  `employment` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `auth` varchar(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_nature`
--

INSERT INTO `employment_nature` (`employment_id`, `ARMYNO`, `unit`, `employment`, `date`, `auth`, `updated_at`) VALUES
(5, '4', 'TS', 'captain', '2017-04-22', 'clear', '2017-04-17 11:15:15'),
(7, '2', 'SR', 'ca', '2017-04-25', 'auth', '2017-04-17 13:45:49'),
(8, '1', 'BS', 'captain', '2017-04-28', 'ok', '2017-04-28 12:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(20) NOT NULL,
  `ARMYNO` decimal(20,0) DEFAULT NULL,
  `exam` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `auth` varchar(100) DEFAULT NULL,
  `record_type` varchar(50) DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `ARMYNO`, `exam`, `date`, `auth`, `record_type`, `update_at`) VALUES
(1, '1', 'Promotion to next rank exam', '2017-04-18', 'sdfa', 'Prom Exam', '2017-04-26 11:38:32'),
(2, '1', 'Exam 1', '2017-04-03', 'ok', 'Other Exam', '2017-04-26 12:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `member_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `maiden_name` varchar(100) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(250) DEFAULT NULL,
  `living` varchar(250) DEFAULT NULL,
  `deceased` varchar(250) DEFAULT NULL,
  `nationality` varchar(250) DEFAULT NULL,
  `religion` varchar(250) DEFAULT NULL,
  `sect` varchar(250) DEFAULT NULL,
  `cast` varchar(250) DEFAULT NULL,
  `profession` varchar(250) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `present_address` varchar(250) DEFAULT NULL,
  `political_aff` varchar(250) DEFAULT NULL,
  `dependent` varchar(11) DEFAULT NULL,
  `occupation_before_marriage` varchar(100) DEFAULT NULL,
  `occupation_after_marriage` varchar(100) DEFAULT NULL,
  `marriage_date` date DEFAULT NULL,
  `marriage_place` varchar(250) DEFAULT NULL,
  `marriage_status` varchar(250) DEFAULT NULL,
  `religion_before_marriage` varchar(250) DEFAULT NULL,
  `religion_after_marriage` varchar(250) DEFAULT NULL,
  `employment_city` varchar(250) DEFAULT NULL,
  `employment_country` varchar(250) DEFAULT NULL,
  `auth` varchar(11) DEFAULT NULL,
  `record_type` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`member_id`, `ARMYNO`, `name`, `maiden_name`, `gender`, `birth_date`, `birth_place`, `living`, `deceased`, `nationality`, `religion`, `sect`, `cast`, `profession`, `age`, `present_address`, `political_aff`, `dependent`, `occupation_before_marriage`, `occupation_after_marriage`, `marriage_date`, `marriage_place`, `marriage_status`, `religion_before_marriage`, `religion_after_marriage`, `employment_city`, `employment_country`, `auth`, `record_type`, `updated_at`) VALUES
(14, '3', 'zeeshan haider', NULL, 'Male', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'Father in law/Mother in law', '2017-04-20 10:47:28'),
(15, '3', 'kamran', NULL, 'Male', '0000-00-00', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'Husband/Wife Bothers and Sisters', '2017-04-20 10:53:48'),
(18, '2', 'Ayesha', NULL, 'Female', '2017-04-29', '', '', '', '', '', 'NON MUSLIM', '', '', 0, '', '', '', '', '', '2017-04-29', '', '', 'NON MUSLIM', 'ISLAM', '', '', 'auth', 'Own Mother/Father', '2017-04-21 08:02:57'),
(19, '2', 'Qaiser Abbas', 'ayesha', 'Male', '2017-04-26', 'SGD', 'living', 'deceases', 'pakistani', 'ISLAM', 'NON MUSLIM', 'sheikh', 'developer', 11, 'islamabad', 'pti', 'yes dep', 'clerk', 'developer', '2017-04-22', 'lahore', 'still married', 'NON MUSLIM', 'ISLAM', 'karachi', 'pak', 'auth', 'Childen', '2017-04-20 14:19:15'),
(20, '1', 'Bashir Ahmad', NULL, 'Male', '2017-04-11', 'sargodha', 'living', 'No', 'pakistani', 'ISLAM', 'SUNNI', 'sheikh', 'Teacher', 0, 'G-10/4, Islamabad', '', 'yes', '', '', '1970-01-01', 'lahore', '', '', '', '', '', '', 'Own Mother/Father', '2017-04-25 07:05:49'),
(21, '1', 'Amra Ali', NULL, 'Female', '2017-03-28', '', 'living', 'No', 'pakistani', 'ISLAM', 'SHIA', 'Mughal', 'House wife', 0, 'G-10/4, Islamabad', 'PMLN', 'No', '', '', '1970-01-01', '', '', '', '', '', '', '', 'Own Mother/Father', '2017-04-25 07:17:16'),
(22, '1', 'Kamran Abbas', NULL, 'Male', '2017-04-19', 'Islamabad', '', '', '', '', '', '', 'Student', 0, 'islamabad', '', '', '', '', '0000-00-00', '', '', '', '', '', '', 'clear', 'Children', '2017-04-27 07:27:14'),
(23, '1', 'Zahid Abbas', NULL, 'Male', '1970-01-01', 'Islamabad', '', '', '', '', '', '', 'Teacher', 0, 'islamabad', '', '', '', '', '2017-04-03', '', '', '', '', '', '', '', 'Children', '2017-04-27 07:27:55'),
(24, '1', 'Amna Abbas', NULL, 'Female', '2017-04-13', 'Islamabad', '', '', '', '', '', '', 'developer', 0, 'islamabad', '', '', '', '', '2017-03-29', '', '', '', '', '', '', '', 'Children', '2017-04-27 07:28:15'),
(25, '1', 'Zara Abbas', NULL, 'Female', '2017-04-18', 'Islamabad', '', '', '', '', '', '', 'software developer ', 0, 'islamabad', '', '', '', '', '1970-01-01', '', '', '', '', '', '', '', 'Children', '2017-04-27 07:27:46'),
(26, '1', 'Ayesha abbas', NULL, 'Female', '2017-04-12', 'sargodha', '', '', 'pakistani', '', '', 'sheikh', '', 0, 'G-10/4, Islamabad', 'pti', '', '', '', '2017-04-13', 'lahore', 'still married', 'ISLAM', 'ISLAM', '', '', 'auth', 'Wife/Husband', '2017-04-27 07:14:19'),
(27, '3', 'Amir khan', NULL, 'Male', '2017-04-06', 'sargodha', '', '', 'pakistani', '', 'SUNNI', 'sheikh', '', 0, 'G-10/4, Islamabad', 'PMLN', '', 'student', 'developer', '2017-04-10', 'lahore', 'still married', 'ISLAM', 'ISLAM', '', '', '', 'Wife/Husband', '2017-04-25 05:31:07'),
(28, '1', 'Rizwan', NULL, 'Male', '0000-00-00', '', '', '', '', '', '', '', '', 0, 'islamabad', 'Pti', '', '', '', '0000-00-00', '', '', '', '', 'Islamabad', 'pakistan', '', 'Father in law/Mother in law', '2017-04-25 05:46:42'),
(29, '1', 'wasif sajid', NULL, '', '0000-00-00', '', '', '', '', '', '', '', 'Teacher', 0, 'G-10/4, Islamabad', 'PMLN', '', '', '', '0000-00-00', '', '', '', '', '', '', '', 'Husband/Wife Bothers and Sisters', '2017-04-25 06:16:36'),
(30, '1', 'Zuhair abbas', NULL, 'Male', '0000-00-00', '', '', '', 'pakistani', 'ISLAM', 'SHIA', 'sheikh', 'developer', 25, 'islamabad', 'Pti', 'No', '', '', '0000-00-00', '', '', '', '', '', '', '', 'Own Bothers and Sisters', '2017-04-25 07:35:29'),
(31, '1', 'Amna Abbas', NULL, 'Female', '0000-00-00', '', '', '', 'pakistani', 'ISLAM', 'SUNNI', '', 'Student', 19, 'islamabad', 'pti', 'Yes', '', '', '0000-00-00', '', '', '', '', '', '', '', 'Own Bothers and Sisters', '2017-04-27 06:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `honours_awards`
--

CREATE TABLE `honours_awards` (
  `award_id` int(11) NOT NULL,
  `ARMYNO` decimal(10,0) NOT NULL,
  `award` varchar(250) DEFAULT NULL,
  `award_date` date DEFAULT NULL,
  `award_place` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `paa_section` varchar(250) DEFAULT NULL,
  `auth` varchar(11) DEFAULT NULL,
  `record_type` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honours_awards`
--

INSERT INTO `honours_awards` (`award_id`, `ARMYNO`, `award`, `award_date`, `award_place`, `type`, `paa_section`, `auth`, `record_type`, `updated_at`) VALUES
(2, '2', 'aw', '2017-04-20', 'islamabad', 'type', 'paa', '0', 'Honours and Awards', '2017-04-14 11:21:09'),
(8, '2', 'afaaa', '2017-04-12', 'islamabad', 'Running', 'A', 'clear', 'Honours and Awards', '2017-04-14 12:10:51'),
(9, '2', 'Disciplinary Medal', '2017-04-05', 'islamabad', 'type', 'paa', 'auth', 'Disciplinary Awards', '2017-04-19 13:31:51'),
(10, '1', 'Medal', '2017-04-12', 'Lahore', 'Managing unit', 'A', 'clear', 'Disciplinary Awards', '2017-04-26 10:35:35'),
(11, '1', '', '0000-00-00', '', 'Excellent performance award', '', 'ok', 'Honours and Awards', '2017-04-26 12:58:52'),
(12, '3', 'Medal', '2017-05-08', '', '', '', '', 'Honours and Awards', '2017-05-25 06:42:51'),
(13, '4', 'Medal', '2017-05-23', '', '', '', '', 'Disciplinary Awards', '2017-05-25 06:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `languages_acq`
--

CREATE TABLE `languages_acq` (
  `lang_id` int(20) NOT NULL,
  `ARMYNO` decimal(20,0) DEFAULT NULL,
  `lang_name` varchar(100) DEFAULT NULL,
  `lang_read` int(11) NOT NULL DEFAULT '0',
  `lang_write` int(11) NOT NULL DEFAULT '0',
  `lang_speak` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_acq`
--

INSERT INTO `languages_acq` (`lang_id`, `ARMYNO`, `lang_name`, `lang_read`, `lang_write`, `lang_speak`, `updated_at`) VALUES
(4, '2', 'English', 1, 1, 0, '2017-04-21 07:13:51'),
(10, '2', 'urdu', 0, 1, 0, '2017-04-21 06:39:59'),
(11, '1', 'English', 1, 1, 0, '2017-04-24 07:34:21'),
(12, '1', 'urdu', 1, 0, 1, '2017-04-24 07:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `leave_records`
--

CREATE TABLE `leave_records` (
  `leave_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `leave_nature` text,
  `entit_year` int(11) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `months` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `auth` varchar(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_records`
--

INSERT INTO `leave_records` (`leave_id`, `ARMYNO`, `leave_nature`, `entit_year`, `from_date`, `to_date`, `months`, `days`, `auth`, `updated_at`) VALUES
(5, '4', 'nature', 0, '1970-01-01', '2017-04-21', 0, 0, '', '2017-04-17 07:22:46'),
(6, '4', 'nature', 2017, '2017-04-25', '2017-04-15', 2, 11, 'auth', '2017-04-17 07:22:41'),
(7, '4', 'family leave', 2016, '2017-04-20', '2017-04-09', 2, 12, 'auth', '2017-04-17 07:23:37'),
(8, '1', 'family leave', 2017, '2017-04-24', '2017-04-28', 3, 15, 'ok', '2017-04-28 12:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `nominee_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `relationship` varchar(250) DEFAULT NULL,
  `percentage` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `auth` varchar(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`nominee_id`, `ARMYNO`, `name`, `relationship`, `percentage`, `address`, `type`, `auth`, `updated_at`) VALUES
(4, '2', 'kamran', 'brother', '11', 'sgd', 'Death Gratuity', 'authd', '2017-04-17 09:02:15'),
(5, '2', 'Qaiser Abbas', 'brother', '55', 'islamabad', 'Family Pension', 'clear', '2017-04-17 09:02:32'),
(6, '1', 'Kamran abbas', 'brother', '50%', 'islamabad', 'Family Pension', 'ok', '2017-04-25 12:20:41'),
(7, '1', 'Ali hasan', 'brother', '55', 'islamabad', 'Death Gratuity', 'ok', '2017-04-27 08:13:31'),
(8, '1', 'Umar abbas', 'cousin', '60', 'islamabad', 'Gp Insurance', 'ok', '2017-04-27 08:13:58'),
(9, '1', 'Imran malik', 'cousin', '45', 'islamabad', 'DSOP Fund', 'ok', '2017-04-27 08:14:22'),
(10, '1', 'Wasif Sajid', 'nephew', '35', 'islamabad', 'Death Compen,NOK OF SD House and DHA Plot', 'clear', '2017-04-27 08:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `pay_allces`
--

CREATE TABLE `pay_allces` (
  `pay_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `detail` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `auth` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_allces`
--

INSERT INTO `pay_allces` (`pay_id`, `ARMYNO`, `unit`, `detail`, `date`, `auth`, `updated_at`) VALUES
(5, '2', 'KR', 'detail', '2017-04-29', 'auth', '2017-04-17 13:46:08'),
(6, '1', 'BS', 'Monthly allces ', '2017-04-28', 'ok', '2017-04-28 12:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE `personnel` (
  `personnel_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `prev_name` varchar(250) DEFAULT NULL,
  `name_change_reason` varchar(250) DEFAULT NULL,
  `aliases` varchar(250) DEFAULT NULL,
  `rank` varchar(250) DEFAULT NULL,
  `unit` varchar(250) DEFAULT NULL,
  `arm` varchar(20) DEFAULT NULL,
  `ARMYNO` varchar(250) DEFAULT NULL,
  `regt` varchar(100) DEFAULT NULL,
  `personal_no` varchar(250) DEFAULT NULL,
  `blood_group` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(250) DEFAULT NULL,
  `height_ft` int(11) DEFAULT NULL,
  `height_in` int(11) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `build` varchar(250) DEFAULT NULL,
  `complexion` varchar(250) DEFAULT NULL,
  `eyes_color` varchar(250) DEFAULT NULL,
  `identity_mark` varchar(250) DEFAULT NULL,
  `religion` varchar(250) DEFAULT NULL,
  `sect` varchar(250) DEFAULT NULL,
  `caste` varchar(250) DEFAULT NULL,
  `other_nationality` varchar(250) DEFAULT NULL,
  `nic` varchar(250) DEFAULT NULL,
  `nic_date` date DEFAULT NULL,
  `nic_place` varchar(250) DEFAULT NULL,
  `domicile` varchar(250) DEFAULT NULL,
  `prev_nationality` varchar(250) DEFAULT NULL,
  `immigration_date` date DEFAULT NULL,
  `pccn` varchar(250) DEFAULT NULL,
  `pccn_date` date DEFAULT NULL,
  `pccn_issue_at` varchar(250) DEFAULT NULL,
  `passport_no` varchar(250) DEFAULT NULL,
  `passport_date` date DEFAULT NULL,
  `passport_type` varchar(250) DEFAULT NULL,
  `passport_countries` varchar(250) DEFAULT NULL,
  `passport_authority` varchar(250) DEFAULT NULL,
  `perm_village` varchar(250) DEFAULT NULL,
  `perm_house_no` varchar(250) DEFAULT NULL,
  `post_office` varchar(250) DEFAULT NULL,
  `telegraph_office` varchar(250) DEFAULT NULL,
  `thana` varchar(250) DEFAULT NULL,
  `tehsil` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `present_address` varchar(250) DEFAULT NULL,
  `displaced_address` varchar(250) DEFAULT NULL,
  `martial_status` text,
  `games` text,
  `hobbies` text,
  `svc_joining_date` date DEFAULT NULL,
  `commision_date` date DEFAULT NULL,
  `present_appt` varchar(33) DEFAULT NULL,
  `appt_loc` varchar(33) DEFAULT NULL,
  `appt_date` varchar(30) DEFAULT NULL,
  `promotion_date` date DEFAULT NULL,
  `last_posting` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`personnel_id`, `name`, `gender`, `prev_name`, `name_change_reason`, `aliases`, `rank`, `unit`, `arm`, `ARMYNO`, `regt`, `personal_no`, `blood_group`, `image`, `birth_date`, `birth_place`, `height_ft`, `height_in`, `weight`, `build`, `complexion`, `eyes_color`, `identity_mark`, `religion`, `sect`, `caste`, `other_nationality`, `nic`, `nic_date`, `nic_place`, `domicile`, `prev_nationality`, `immigration_date`, `pccn`, `pccn_date`, `pccn_issue_at`, `passport_no`, `passport_date`, `passport_type`, `passport_countries`, `passport_authority`, `perm_village`, `perm_house_no`, `post_office`, `telegraph_office`, `thana`, `tehsil`, `district`, `present_address`, `displaced_address`, `martial_status`, `games`, `hobbies`, `svc_joining_date`, `commision_date`, `present_appt`, `appt_loc`, `appt_date`, `promotion_date`, `last_posting`, `created_at`, `updated_at`) VALUES
(1, 'Qaiser Abbas', 'Male', 'Ali', 'Didn''t like the first', 'QA', 'MIS SEP', 'ISCR', 'arty ', '1', '323regt', '03474222734', 'A+', 'assets/images/personnel/1.jpg', '2017-03-27', 'SGD', 5, 11, 55, 'strong', 'b', 'black', 'none', 'ISLAM', 'SUNNI', 'BTNI', 'NA', '33202-43000-959', '2017-04-18', 'ISB', 'punjab', 'usa', '2017-04-03', '234234', '2017-04-02', 'SARGODHA', '3232', '2017-04-18', 'VISIT', 'ALL', 'afafa', 'Kot momin', '121', 'Bucha kalan', 'sgd telegraph', 'sgd police station', 'bhalwal', 'sargodha', 'islamabad', 'lahore', 'Married', 'FOOTBALL', 'reading', '2017-01-31', '2017-05-16', 'comdt', 'yousaf khel', '2017-05-03', '2017-04-04', 'multan', '2017-04-07 13:06:59', '0000-00-00 00:00:00'),
(2, 'zeeshan haider', 'Male', '', '', 'fd', 'NK', 'BS', 'AK', '2', '', '2034902394', 'A-', 'assets/images/personnel/2.jpg', '1915-11-06', 'SGD', 0, 0, 0, '', '', '', '', 'NON MUSLIM', 'SHIA', 'DIRI', '', '', '1970-01-01', '', 'punjab', '', '1970-01-01', '', '1970-01-01', '', '3131', '1970-01-01', '', '', '', '', '', '', '', '', '', 'Chakwal', '', '', 'Married', '', '', '2017-04-04', '2017-04-03', '201WComd', 'bara', '2017-05-23', '2017-04-04', 'lahore', '2017-04-07 13:08:10', '0000-00-00 00:00:00'),
(3, 'Mahwish abid', 'Female', '', '', 'none', 'B/S', 'SHC', 'ASC ', '3', '', '2034902394', 'A-', 'assets/images/personnel/3.jpg', '2017-04-23', '', 0, 0, 0, '', '', '', '', 'ISLAM', 'SUNNI', 'AFRIDI', '', '', '2017-04-06', '', 'punjab', '', '2017-04-10', '', '2017-04-03', '', '', '1970-01-01', '', '', '', '', '', '', '', '', '', '', '', '', 'Married', '', '', '2017-04-25', '2017-03-28', 'Wing adjt', 'Wsk', '2017-05-16', '2017-04-11', 'rwp', '2017-04-10 10:44:59', '0000-00-00 00:00:00'),
(4, 'umar', 'Male', '', '', '', 'B/S', 'SHC', NULL, '4', NULL, '52352353', 'B+', 'assets/images/personnel/4.jpg', '1970-01-01', '', 0, 0, 0, '', '', '', '', 'ISLAM', 'SUNNI', '', '', '', '1970-01-01', '', 'punjab', '', '1970-01-01', '', '1970-01-01', '', '', '1970-01-01', '', '', '', '', '', '', '', '', '', '', '', '', 'Married', '', '', '2017-04-04', '1970-01-01', NULL, NULL, NULL, '1970-01-01', '', '2017-04-10 11:38:35', '0000-00-00 00:00:00'),
(5, 'ali', 'Male', '', '', '', 'NK', 'BS', NULL, '5', '', '', '', '', '1970-01-01', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '1970-01-01', '', 'punjab', '', '1970-01-01', '', '1970-01-01', '', '', '1970-01-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1970-01-01', '1970-01-01', NULL, NULL, NULL, '1970-01-01', 'karachi', '2017-04-10 11:40:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `prev_employements`
--

CREATE TABLE `prev_employements` (
  `employement_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `employer_name` varchar(250) NOT NULL,
  `work_nature` text NOT NULL,
  `place` varchar(250) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `leaving_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prev_employements`
--

INSERT INTO `prev_employements` (`employement_id`, `ARMYNO`, `employer_name`, `work_nature`, `place`, `from_date`, `to_date`, `leaving_reason`) VALUES
(4, '4', 'ghousia int', 'accountant', 'lahore', '2017-03-26', '2017-03-28', 'personal'),
(5, '4', 'phebsoft', 'coding', 'islamabad', '2017-02-28', '2017-04-28', 'personal'),
(6, '1', 'phebsoft', 'Website development', 'islamabad', '2017-04-11', '2017-04-19', 'personal'),
(7, '1', 'ghousia int', ' accountant', 'islamabad', '2017-03-27', '2017-04-20', 'burden of work ');

-- --------------------------------------------------------

--
-- Table structure for table `property_shares`
--

CREATE TABLE `property_shares` (
  `ps_id` int(20) NOT NULL,
  `ARMYNO` decimal(20,0) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `record_type` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property_shares`
--

INSERT INTO `property_shares` (`ps_id`, `ARMYNO`, `place`, `value`, `name`, `record_type`, `updated_at`) VALUES
(1, '1', 'islamabad', '45324234', 'zeeshan haider', 'Property Movable in Pakistan', '2017-04-24 13:21:58'),
(2, '1', 'islamabad', '111', 'Qaiser Abbas', 'Property Immovable in Pakistan', '2017-04-24 13:22:09'),
(3, '1', 'islamabad', '234234', 'Qaiser Abbas', 'Shares or Securities in Pakistan', '2017-04-24 13:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` char(40) NOT NULL,
  `svc_years` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`, `svc_years`) VALUES
(1, 'PA', '25'),
(2, 'NK', '21'),
(3, 'MIS SEP', '18'),
(4, 'L/NK', '18'),
(5, 'HAV', '21'),
(6, 'ELEC', '25'),
(7, 'CKDR', '25'),
(8, 'AYA', '25'),
(9, 'AO', '25'),
(10, 'APS', '25'),
(11, 'ARO', '25'),
(12, 'ASFC', '25'),
(13, 'ASTT', '25'),
(14, 'ASTT I/C', '25'),
(15, 'B/OFFR', '25'),
(16, 'B/S', '25'),
(17, 'BLDR', '25'),
(18, 'BO', '25'),
(19, 'C/MECH', '25'),
(20, 'AT', '25'),
(21, 'C/P', '25'),
(22, 'CLNR', '25'),
(23, 'COOLI', '25'),
(24, 'D/M', '25'),
(25, 'DHBI', '25'),
(26, 'E&BR', '25'),
(27, 'E&M SUPDT', '25'),
(28, 'EO', '25'),
(29, 'FARRIER', '25'),
(30, 'FITTER', '25'),
(31, 'GRSR', '25'),
(32, 'H/CAPT', '24'),
(33, 'H/LT', '24'),
(34, 'HC', '25'),
(35, 'HJM', '25'),
(36, 'JC', '25'),
(37, 'KHLSI', '25'),
(38, 'KRB', '25'),
(39, 'L/MN', '25'),
(40, 'M/OPTR', '25'),
(41, 'M/RDR', '25'),
(42, 'M/W', '25'),
(43, 'MALI', '25'),
(44, 'MATE', '25'),
(45, 'MIS', '25'),
(46, 'MOCHI', '25'),
(47, 'MSLCHI', '25'),
(48, 'MSN', '25'),
(49, 'N/KHTB', '25'),
(50, 'N/SUB', '24'),
(51, 'NCE', '25'),
(52, 'O/MN', '25'),
(53, 'OED', '25'),
(54, 'OVSR(B&R)', '25'),
(55, 'OVSR(E&M)', '25'),
(56, 'P/DVR', '25'),
(57, 'P/FTR', '25'),
(58, 'PLMBR', '25'),
(59, 'RECT', '18'),
(60, 'PNTR', '25'),
(61, 'RT', '25'),
(62, 'S/WKR', '25'),
(63, 'SBA', '25'),
(64, 'SC', '25'),
(65, 'SDO', '25'),
(66, 'SECY', '25'),
(67, 'SEP', '18'),
(68, 'SM', '24'),
(69, 'SPVSR', '25'),
(70, 'STENO TYPIST', '25'),
(71, 'STENOGRAPHER', '25'),
(72, 'SUB', '24'),
(73, 'TLR', '25'),
(74, 'SUPDT', '25'),
(75, 'TNDL', '25'),
(76, 'V/MN', '25'),
(77, 'VC', '25'),
(78, 'W/C', '25'),
(79, 'W/MN', '25'),
(80, 'W/MSHI', '25'),
(81, 'WKS MISTRI', '25'),
(82, 'OVSR(B&P)', '25'),
(83, 'L/S', '0'),
(84, 'ANCY', '18'),
(85, 'BLACK SMITH', '0'),
(86, 'S/C', '0'),
(87, 'CK', '0'),
(88, 'TENDAL', '0'),
(89, 'SWPR', '0');

-- --------------------------------------------------------

--
-- Table structure for table `relatives`
--

CREATE TABLE `relatives` (
  `relative_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `relationship` varchar(250) DEFAULT NULL,
  `occupation` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `rank` varchar(250) DEFAULT NULL,
  `regt` varchar(250) DEFAULT NULL,
  `record_type` varchar(250) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relatives`
--

INSERT INTO `relatives` (`relative_id`, `ARMYNO`, `name`, `relationship`, `occupation`, `address`, `rank`, `regt`, `record_type`, `updated_at`) VALUES
(2, '2', 'amir', '', 'student', 'lahore', '', '    ', 'Aquaintances', '2017-04-20 14:16:23'),
(13, '2', 'Qaiser Abbas', 'nephew', 'developer', 'islamabad', 'a', 'ar', 'Relative in India/Bangladesh/Afghanistan', '2017-04-11 07:49:44'),
(14, '2', 'ali', 'dd', 'architect', 'bb', 'bs', '      32323', 'Defense services serving Relative', '2017-04-24 11:58:35'),
(17, '3', 'zeeshan ', 'brother', 'developer', 'sgd', 'bs', ' 323', 'Relative in India/Bangladesh/Afghanistan', '2017-04-13 05:21:20'),
(19, '3', 'Qaiser Abbas', 'brother', 'student', 'islamabad', 'bs', '  323', 'Defense services serving Relative', '2017-04-24 10:19:14'),
(20, '1', 'Amir ', 'brother ', 'student', 'mumbai', '', '  ', 'Relative in India/Bangladesh/Afghanistan', '2017-04-24 06:36:28'),
(21, '1', 'Ali hasan', 'nephew', 'developer', 'dhaka', '', ' ', 'Relative in India/Bangladesh/Afghanistan', '2017-04-24 06:36:15'),
(22, '1', 'Imran', 'cousin', 'architect', 'london,england', '', '', 'Relative in Foreign Countries', '2017-04-24 06:36:05'),
(23, '1', 'Mustafa', 'cousin', '', 'Islamabad', 'BS', '232', 'Defense services serving Relative', '2017-04-24 10:54:58'),
(24, '1', 'Asif khan', 'brother', '', 'islamabad', 'DS', '37435', 'Defense services serving Relative', '2017-04-24 10:55:28'),
(25, '1', 'khawar', '', '', 'Karachi', 'Engineer ', '', 'Aquaintances', '2017-04-24 10:59:32'),
(26, '1', 'Raza', '', '', 'lahore', 'Developer ', ' ', 'Aquaintances', '2017-04-24 11:01:05'),
(27, '1', 'Mudasar ', '', '', 'islamabad', 'PHP Developer ', ' ', 'Aquaintances', '2017-04-24 11:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_type` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_type`, `updated_at`) VALUES
(1, 'Super Admin', '2017-02-10 12:08:48'),
(2, 'Admin', '2017-02-13 06:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `svc_backgounds`
--

CREATE TABLE `svc_backgounds` (
  `service_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `unit` varchar(250) DEFAULT NULL,
  `station` varchar(250) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `co_name` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svc_backgounds`
--

INSERT INTO `svc_backgounds` (`service_id`, `ARMYNO`, `unit`, `station`, `designation`, `from_date`, `to_date`, `co_name`, `updated_at`) VALUES
(1, '1', 'DS', '58C', 'Major ', '2017-04-12', '2017-04-19', 'fafak', '2017-05-12 06:53:02'),
(4, '3', 'DS', 'karachi', 'constable', '2017-02-27', '2017-04-29', 'phebsoft', '2017-04-13 07:37:24'),
(7, '4', 'BS', 'chakwal', 'capt', '2017-04-24', '2017-04-25', 'phebsoft', '2017-05-11 06:49:50'),
(8, '2', 'BS', 'NDC', 'Captian', '2017-03-26', '2017-04-29', '', '2017-05-12 06:52:39'),
(9, '2', 'KM', 'lahore', 'general', '2017-04-12', '2017-04-18', '', '2017-04-19 12:54:27'),
(10, '1', 'DS', 'lahore', 'officer', '2017-04-25', '2017-04-29', 'fdsfasfd', '2017-04-24 09:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `svc_particulars`
--

CREATE TABLE `svc_particulars` (
  `particular_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `purpose` varchar(250) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `rank` varchar(250) DEFAULT NULL,
  `regt` varchar(250) DEFAULT NULL,
  `period` varchar(250) DEFAULT NULL,
  `auth` varchar(100) DEFAULT NULL,
  `record_type` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `svc_particulars`
--

INSERT INTO `svc_particulars` (`particular_id`, `ARMYNO`, `type`, `date`, `purpose`, `from_date`, `to_date`, `rank`, `regt`, `period`, `auth`, `record_type`, `updated_at`) VALUES
(5, '2', 'type', '2017-04-09', 's', '2017-05-05', '2017-05-06', 'AYA', ' 4', '6', NULL, 'Former/Cadet Svc Counted', '2017-04-14 09:10:36'),
(6, '1', 'rank promotion ', '2017-04-05', '', '0000-00-00', '0000-00-00', '', '', '', 'clear', 'Commission', '2017-04-26 09:39:28'),
(7, '1', '', '2017-04-12', 'Discipline', '0000-00-00', '0000-00-00', '', '', '', 'ok', 'Seniority', '2017-04-27 13:16:49'),
(8, '1', 'Cadet', '0000-00-00', '', '2017-04-04', '2017-04-28', '', '545', '', 'auth', 'Former/Cadet Svc Counted', '2017-04-27 13:16:41'),
(9, '1', '', '0000-00-00', 'personal', '0000-00-00', '0000-00-00', '', '', '2', 'clear ', 'Forfeiture of Svc', '2017-04-26 10:14:54'),
(10, '1', '', '2017-03-16', '', '0000-00-00', '0000-00-00', 'NK', '', '', '0354/17402/MS', 'Proms', '2017-05-12 06:23:09'),
(11, '1', '', '2017-05-16', '', '0000-00-00', '0000-00-00', 'L/NK', '', '', '', 'Proms', '2017-05-10 14:18:46'),
(12, '2', '', '2017-04-30', '', '0000-00-00', '0000-00-00', 'AO', '', '', '03111/256/2007', 'Proms', '2017-05-12 06:55:07'),
(13, '2', '', '2017-05-09', '', '0000-00-00', '0000-00-00', 'NK', '', '', '03111/256/2007', 'Proms', '2017-05-12 06:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `travel_abroad`
--

CREATE TABLE `travel_abroad` (
  `travel_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `country` varchar(250) DEFAULT NULL,
  `purpose` text,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_abroad`
--

INSERT INTO `travel_abroad` (`travel_id`, `ARMYNO`, `country`, `purpose`, `from_date`, `to_date`) VALUES
(4, '3', 'brazil', 'personal', '2017-04-10', '2017-04-18'),
(5, '1', 'England', 'business', '2017-04-20', '2017-04-21'),
(6, '1', 'USA', 'personal', '2017-04-18', '2017-03-27');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(11) NOT NULL,
  `unit_name` char(40) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `unit_name`, `updated_at`) VALUES
(1, 'HQFC', '0000-00-00 00:00:00'),
(2, 'BS', '0000-00-00 00:00:00'),
(3, 'DS', '0000-00-00 00:00:00'),
(4, 'KM', '0000-00-00 00:00:00'),
(5, 'KR', '0000-00-00 00:00:00'),
(6, 'KS', '0000-00-00 00:00:00'),
(7, 'MR', '0000-00-00 00:00:00'),
(8, 'MS', '0000-00-00 00:00:00'),
(9, 'OS', '0000-00-00 00:00:00'),
(10, 'SR', '0000-00-00 00:00:00'),
(11, 'SS', '0000-00-00 00:00:00'),
(12, 'SWS', '0000-00-00 00:00:00'),
(13, 'TS', '0000-00-00 00:00:00'),
(14, 'STA', '0000-00-00 00:00:00'),
(15, 'ISCR', '0000-00-00 00:00:00'),
(16, 'SHN', '0000-00-00 00:00:00'),
(17, 'SHC', '0000-00-00 00:00:00'),
(18, 'SHS', '0000-00-00 00:00:00'),
(19, 'SHSW', '0000-00-00 00:00:00'),
(20, 'THL', '0000-00-00 00:00:00'),
(21, 'SOG 1', '0000-00-00 00:00:00'),
(22, 'SOG 2', '0000-00-00 00:00:00'),
(23, 'SOG 3', '0000-00-00 00:00:00'),
(24, 'SOG 4', '0000-00-00 00:00:00'),
(25, 'SOG', '0000-00-00 00:00:00'),
(26, 'SOG 5', '0000-00-00 00:00:00'),
(27, 'KM-ERE', '0000-00-00 00:00:00'),
(28, 'BS-ERE', '0000-00-00 00:00:00'),
(29, 'CS-ERE', '0000-00-00 00:00:00'),
(30, 'DS-ERE', '0000-00-00 00:00:00'),
(31, 'HQFC-ERE', '0000-00-00 00:00:00'),
(32, 'KR-ERE', '0000-00-00 00:00:00'),
(33, 'KS-ERE', '0000-00-00 00:00:00'),
(34, 'MR-ERE', '0000-00-00 00:00:00'),
(35, 'MS-ERE', '0000-00-00 00:00:00'),
(36, 'SR-ERE', '0000-00-00 00:00:00'),
(37, 'SS-ERE', '0000-00-00 00:00:00'),
(38, 'SWS-ERE', '0000-00-00 00:00:00'),
(39, 'THL-ERE', '0000-00-00 00:00:00'),
(40, 'TS-ERE', '0000-00-00 00:00:00'),
(41, 'SOG 6', '0000-00-00 00:00:00'),
(42, 'SQN MS', '0000-00-00 00:00:00'),
(43, 'SOG 7', '0000-00-00 00:00:00'),
(44, 'OS-ERE', '0000-00-00 00:00:00'),
(45, 'CS', '0000-00-00 00:00:00'),
(46, 'BR', '0000-00-00 00:00:00'),
(47, 'BR-ERE', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `role_id` int(11) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `registered` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `first_name`, `last_name`, `email`, `role_id`, `password`, `parent`, `registered`, `updated_at`) VALUES
(7, 'superadmin', 'Master', 'User', 'master@fc.pk', 1, 'e10adc3949ba59abbe56e057f20f883e', NULL, 1, '2017-02-07 12:29:05'),
(8, 'qa', 'qaiser ', 'abbas', 'qaiserabbas101@gmail.com', 1, 'f9ba4b067df6caf4fb29609cd8799242', NULL, 1, '2017-05-11 11:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `war_experience`
--

CREATE TABLE `war_experience` (
  `war_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `unit` varchar(250) DEFAULT NULL,
  `designation` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `war_experience`
--

INSERT INTO `war_experience` (`war_id`, `ARMYNO`, `year`, `unit`, `designation`, `location`, `from_date`, `to_date`, `updated_at`) VALUES
(6, '2', 1971, 'TS', 'officer', 'sailkot', '2017-04-05', '2017-04-29', '2017-04-13 09:10:16'),
(7, '2', 1965, 'KS', 'constable', 'afa', '2017-04-24', '2017-04-16', '2017-04-14 13:27:26'),
(8, '1', 1965, 'KS', 'officer', 'sailkot', '2017-04-05', '2017-04-22', '2017-04-27 13:10:14'),
(9, '1', 1971, 'KS', 'Captian', 'Dhaka', '2017-03-07', '2017-04-24', '2017-04-24 10:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `wounds`
--

CREATE TABLE `wounds` (
  `wound_id` int(11) NOT NULL,
  `ARMYNO` decimal(20,0) NOT NULL,
  `cas_nature` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `disability` varchar(250) DEFAULT NULL,
  `attribute_ability` varchar(250) DEFAULT NULL,
  `auth` varchar(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wounds`
--

INSERT INTO `wounds` (`wound_id`, `ARMYNO`, `cas_nature`, `date`, `disability`, `attribute_ability`, `auth`, `updated_at`) VALUES
(6, '3', 'A', '2017-03-29', '50', 'fine', 'clear', '2017-05-10 13:47:27'),
(8, '2', 'B', '2017-04-08', '50', 'ok', 'clear', '2017-05-10 13:47:15'),
(9, '1', 'A', '2017-04-08', '12', 'ok', 'auth', '2017-05-10 13:30:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `banker_subscription`
--
ALTER TABLE `banker_subscription`
  ADD PRIMARY KEY (`bs_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `caste`
--
ALTER TABLE `caste`
  ADD PRIMARY KEY (`tribe_id`),
  ADD KEY `caste` (`caste`);

--
-- Indexes for table `clubs_memberships`
--
ALTER TABLE `clubs_memberships`
  ADD PRIMARY KEY (`membership_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `court_trials`
--
ALTER TABLE `court_trials`
  ADD PRIMARY KEY (`trial_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`dist_id`),
  ADD KEY `refno` (`ref_no`);

--
-- Indexes for table `employment_nature`
--
ALTER TABLE `employment_nature`
  ADD PRIMARY KEY (`employment_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `honours_awards`
--
ALTER TABLE `honours_awards`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `languages_acq`
--
ALTER TABLE `languages_acq`
  ADD PRIMARY KEY (`lang_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `leave_records`
--
ALTER TABLE `leave_records`
  ADD PRIMARY KEY (`leave_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`nominee_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `pay_allces`
--
ALTER TABLE `pay_allces`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`personnel_id`);

--
-- Indexes for table `prev_employements`
--
ALTER TABLE `prev_employements`
  ADD PRIMARY KEY (`employement_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `property_shares`
--
ALTER TABLE `property_shares`
  ADD PRIMARY KEY (`ps_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `relatives`
--
ALTER TABLE `relatives`
  ADD PRIMARY KEY (`relative_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `svc_backgounds`
--
ALTER TABLE `svc_backgounds`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `svc_particulars`
--
ALTER TABLE `svc_particulars`
  ADD PRIMARY KEY (`particular_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `travel_abroad`
--
ALTER TABLE `travel_abroad`
  ADD PRIMARY KEY (`travel_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`),
  ADD KEY `reg` (`unit_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `war_experience`
--
ALTER TABLE `war_experience`
  ADD PRIMARY KEY (`war_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- Indexes for table `wounds`
--
ALTER TABLE `wounds`
  ADD PRIMARY KEY (`wound_id`),
  ADD KEY `ARMYNO` (`ARMYNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `asset_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banker_subscription`
--
ALTER TABLE `banker_subscription`
  MODIFY `bs_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `caste`
--
ALTER TABLE `caste`
  MODIFY `tribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `clubs_memberships`
--
ALTER TABLE `clubs_memberships`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `court_trials`
--
ALTER TABLE `court_trials`
  MODIFY `trial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `dist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT for table `employment_nature`
--
ALTER TABLE `employment_nature`
  MODIFY `employment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `honours_awards`
--
ALTER TABLE `honours_awards`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `languages_acq`
--
ALTER TABLE `languages_acq`
  MODIFY `lang_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `leave_records`
--
ALTER TABLE `leave_records`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `nominee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pay_allces`
--
ALTER TABLE `pay_allces`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `personnel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prev_employements`
--
ALTER TABLE `prev_employements`
  MODIFY `employement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `property_shares`
--
ALTER TABLE `property_shares`
  MODIFY `ps_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `relatives`
--
ALTER TABLE `relatives`
  MODIFY `relative_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `svc_backgounds`
--
ALTER TABLE `svc_backgounds`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `svc_particulars`
--
ALTER TABLE `svc_particulars`
  MODIFY `particular_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `travel_abroad`
--
ALTER TABLE `travel_abroad`
  MODIFY `travel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `war_experience`
--
ALTER TABLE `war_experience`
  MODIFY `war_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wounds`
--
ALTER TABLE `wounds`
  MODIFY `wound_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
