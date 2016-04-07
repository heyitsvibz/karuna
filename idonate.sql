-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 07, 2016 at 01:21 PM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `idonate`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_makers`
--

CREATE TABLE IF NOT EXISTS `cat_makers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categ` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `cat_makers`
--

INSERT INTO `cat_makers` (`id`, `categ`) VALUES
(1, 'samsung'),
(2, 'nokia'),
(3, 'apple'),
(4, 'mi'),
(5, 'HTC'),
(6, 'BlackBerry'),
(7, 'Asus'),
(8, 'Le'),
(51, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `cred`
--

CREATE TABLE IF NOT EXISTS `cred` (
  `UID` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `cell` varchar(12) NOT NULL,
  `club` int(20) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cred`
--

INSERT INTO `cred` (`UID`, `username`, `password`, `email`, `name`, `cell`, `club`) VALUES
(1, 'admin', 'q', 'heyitsvibz@gmail.com', 'ADMIN USER', '9560300505', 110010),
(2, 'user', 'z', 'dil_036@gmail.com', 'DEMO USER', '9990888945', 110059),
(7, 'monu', 'a', 'hi@gmail.com', 'monu', '234', 110046);

-- --------------------------------------------------------

--
-- Table structure for table `data_set`
--

CREATE TABLE IF NOT EXISTS `data_set` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `LOCALITY` varchar(20) NOT NULL,
  `PHONE` varchar(12) NOT NULL,
  `HELP` varchar(50) NOT NULL,
  `PINCODE` int(6) NOT NULL,
  `MESSAGE` text NOT NULL,
  `STATUS` varchar(10) NOT NULL DEFAULT 'Pending',
  `LONGI` varchar(10) NOT NULL,
  `LAT` varchar(10) NOT NULL,
  `Allotted` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `data_set`
--

INSERT INTO `data_set` (`ID`, `NAME`, `LOCALITY`, `PHONE`, `HELP`, `PINCODE`, `MESSAGE`, `STATUS`, `LONGI`, `LAT`, `Allotted`) VALUES
(1, 'Divit Panwar', 'NCR', '25590962', 'I want to teach', 110001, 'Vocational Teaching ', 'Done', '28.6328', '77.2197', 'admin'),
(2, 'vaibhav panwar', 'Janak Puri', '9560300505', 'I want to donate Medicines', 110045, 'check', 'Pending', '28.6415294', '77.1209145', ''),
(3, 'shrey aggarwal', 'Janak Puri', '9898981223', 'Or you just wanna have a chat', 110008, 'Buzz me for a chat', 'Pending', '28.6578704', '77.1426742', ''),
(4, 'Dhawal Arora', 'Subhash Nagar', '9876543210', 'I want to donate Clothes', 110009, 'Hi dos !', 'Done', '28.7158727', '77.1910738', 'admin'),
(28, 'gurpreet singh', 'yo', '22', 'I want to donate Clothes', 110045, 'yo', 'Pending', '28.6166877', '77.0762448', ''),
(30, 'akanksha singh', 'delhi', '4550252', 'I want to donate Medicines', 110005, '12 : 00 pm is time', 'Pending', '28.6153026', '77.0737036', ''),
(32, 'prateek srivastav', 'dwaraka', '21345311', 'I want to donate Medicines', 110072, 'hello ', 'Pending', '28.6167324', '77.0763700', ''),
(40, 'Rajarshi Chakraborti', 'Greater Kailash', '9579654011', '', 110046, 'test form 1', 'Pending', '12.9724852', '77.6641175', ''),
(41, 'Anmol Dawar', 'Binghamton , New Yor', '6077688846', '', 110059, '', 'Done', '42.0999815', '-75.927073', 'admin'),
(42, 'Vibhor gupta', 'Inderpuri', '7838388338', '', 110012, 'Please pick the material', 'Done', '28.5007634', '77.4005199', 'admin'),
(44, 'nishant', 'punjabi bagh', 'gvgvujvjj', '', 110026, 'jhbjhkb ', 'Pending', '28.6930575', '77.1490159', ''),
(51, 'rohan', 'Jammu', '82574111', '', 1000000000, 'Hello', 'Pending', '28.7040592', '77.1024901', ''),
(52, 'sryagg', 'pitampura', '852741', '', 110059, 'saddasd', 'Done', '42.1900249', '-87.908403', '');

-- --------------------------------------------------------

--
-- Table structure for table `delhi`
--

CREATE TABLE IF NOT EXISTS `delhi` (
  `UID` int(11) NOT NULL,
  `OFFICE_NAME` varchar(34) NOT NULL,
  `PINCODE` int(11) NOT NULL,
  `DISTRICT` varchar(16) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delhi`
--

INSERT INTO `delhi` (`UID`, `OFFICE_NAME`, `PINCODE`, `DISTRICT`) VALUES
(1, 'Hauz Qazi S.O', 110006, 'CENTRAL DELHI'),
(2, 'Jama Masjid S.O', 110006, 'CENTRAL DELHI'),
(3, 'A.G.C.R. S.O', 110002, 'CENTRAL DELHI'),
(4, 'A.K.Market S.O', 110055, 'CENTRAL DELHI'),
(5, 'Ajmeri Gate Extn. S.O', 110002, 'CENTRAL DELHI'),
(6, 'Anand Parbat Indl. Area S.O', 110005, 'CENTRAL DELHI'),
(7, 'Anand Parbat S.O', 110005, 'CENTRAL DELHI'),
(8, 'Bank Street S.O', 110005, 'CENTRAL DELHI'),
(9, 'Baroda House S.O', 110001, 'CENTRAL DELHI'),
(10, 'Bengali Market S.O', 110001, 'CENTRAL DELHI'),
(11, 'Bhagat Singh Market S.O', 110001, 'CENTRAL DELHI'),
(12, 'Connaught Place S.O', 110001, 'CENTRAL DELHI'),
(13, 'Constitution House S.O', 110001, 'CENTRAL DELHI'),
(14, 'Dada Ghosh Bhawan S.O', 110008, 'CENTRAL DELHI'),
(15, 'Darya Ganj S.O', 110002, 'CENTRAL DELHI'),
(16, 'Delhi High Court S.O', 110003, 'CENTRAL DELHI'),
(17, 'Desh Bandhu Gupta Road S.O', 110005, 'CENTRAL DELHI'),
(18, 'Election Commission S.O', 110001, 'CENTRAL DELHI'),
(19, 'Gandhi Smarak Nidhi S.O', 110002, 'CENTRAL DELHI'),
(20, 'Guru Gobind Singh Marg S.O', 110005, 'CENTRAL DELHI'),
(21, 'Gym Khana Club S.O', 110011, 'CENTRAL DELHI'),
(22, 'I.A.R.I. S.O', 110012, 'CENTRAL DELHI'),
(23, 'I.P.Estate S.O', 110002, 'CENTRAL DELHI'),
(24, 'Inderpuri S.O', 110012, 'CENTRAL DELHI'),
(25, 'Indraprastha H.O', 110002, 'CENTRAL DELHI'),
(26, 'Janpath S.O', 110001, 'CENTRAL DELHI'),
(27, 'Karol Bagh S.O', 110005, 'CENTRAL DELHI'),
(28, 'Krishi Bhawan S.O', 110001, 'CENTRAL DELHI'),
(29, 'Lady Harding Medical College S.O', 110001, 'CENTRAL DELHI'),
(30, 'Master Prithvi Nath Marg S.O', 110005, 'CENTRAL DELHI'),
(31, 'Minto Road S.O', 110002, 'CENTRAL DELHI'),
(32, 'Multani Dhanda S.O', 110055, 'CENTRAL DELHI'),
(33, 'National Physical Laboratory S.O', 110012, 'CENTRAL DELHI'),
(34, 'Nirman Bhawan S.O', 110011, 'CENTRAL DELHI'),
(35, 'North Avenue S.O', 110001, 'CENTRAL DELHI'),
(36, 'Pahar Ganj S.O', 110055, 'CENTRAL DELHI'),
(37, 'Pandara Road S.O', 110003, 'CENTRAL DELHI'),
(38, 'Parliament House S.O', 110001, 'CENTRAL DELHI'),
(39, 'Patel Nagar East S.O', 110008, 'CENTRAL DELHI'),
(40, 'Patel Nagar S.O', 110008, 'CENTRAL DELHI'),
(41, 'Patel Nagar South S.O', 110008, 'CENTRAL DELHI'),
(42, 'Patel Nagar West S.O', 110008, 'CENTRAL DELHI'),
(43, 'Patiala House S.O', 110001, 'CENTRAL DELHI'),
(44, 'Pragati Maidan S.O', 110001, 'CENTRAL DELHI'),
(45, 'Rail Bhawan S.O', 110001, 'CENTRAL DELHI'),
(46, 'Rajender Nagar S.O', 110060, 'CENTRAL DELHI'),
(47, 'Rajghat Power House S.O', 110002, 'CENTRAL DELHI'),
(48, 'Rashtrapati Bhawan S.O', 110004, 'CENTRAL DELHI'),
(49, 'Sansad Marg H.O', 110001, 'CENTRAL DELHI'),
(50, 'Sansadiya Soudh S.O', 110001, 'CENTRAL DELHI'),
(51, 'Sat Nagar S.O', 110005, 'CENTRAL DELHI'),
(52, 'Secretariat North S.O', 110001, 'CENTRAL DELHI'),
(53, 'Shastri Bhawan S.O', 110001, 'CENTRAL DELHI'),
(54, 'South Avenue S.O', 110011, 'CENTRAL DELHI'),
(55, 'Supreme Court S.O', 110001, 'CENTRAL DELHI'),
(56, 'Swami Ram Tirth Nagar S.O', 110055, 'CENTRAL DELHI'),
(57, 'Udyog Bhawan S.O', 110011, 'CENTRAL DELHI'),
(58, 'Union Public Service Commissio S.O', 110069, 'CENTRAL DELHI'),
(59, 'Babarpur S.O', 110032, 'EAST DELHI'),
(60, 'Brahampuri S.O', 110053, 'EAST DELHI'),
(61, 'Anand Vihar S.O', 110092, 'EAST DELHI'),
(62, 'Azad Nagar S.O', 110051, 'EAST DELHI'),
(63, 'Chilla B.O', 110091, 'EAST DELHI'),
(64, 'Distt. Court (KKD) S.O', 110032, 'EAST DELHI'),
(65, 'Gandhi Nagar Bazar S.O', 110031, 'EAST DELHI'),
(66, 'Gandhi Nagar S.O', 110031, 'EAST DELHI'),
(67, 'Geeta Colony S.O', 110031, 'EAST DELHI'),
(68, 'Ghazipur B.O', 110096, 'EAST DELHI'),
(69, 'Govind Pura S.O', 110051, 'EAST DELHI'),
(70, 'Himmatpuri S.O', 110091, 'EAST DELHI'),
(71, 'Kailash Nagar S.O', 110031, 'EAST DELHI'),
(72, 'Kalyanpuri S.O', 110091, 'EAST DELHI'),
(73, 'Kalyanvas S.O', 110091, 'EAST DELHI'),
(74, 'Krishna Nagar H.O', 110051, 'EAST DELHI'),
(75, 'Laxmi Nagar S.O', 110092, 'EAST DELHI'),
(76, 'Mandawali Fazalpur S.O', 110092, 'EAST DELHI'),
(77, 'Mayur Vihar Ph-I S.O', 110091, 'EAST DELHI'),
(78, 'Mayur Vihar Ph-III S.O', 110096, 'EAST DELHI'),
(79, 'Nirman Vihar S.O', 110092, 'EAST DELHI'),
(80, 'Patparganj S.O', 110091, 'EAST DELHI'),
(81, 'Raghubar Pura S.O', 110031, 'EAST DELHI'),
(82, 'Rajgarh Colony S.O', 110031, 'EAST DELHI'),
(83, 'Ram Nagar S.O', 110051, 'EAST DELHI'),
(84, 'Shakarpur S.O', 110092, 'EAST DELHI'),
(85, 'Shastri Nagar S.O', 110031, 'EAST DELHI'),
(86, 'Surajmal Vihar S.O', 110092, 'EAST DELHI'),
(87, 'Trilok Puri S.O', 110091, 'EAST DELHI'),
(88, 'V.K. Nagar S.O', 110095, 'EAST DELHI'),
(89, 'Vasundhra Enclave S.O', 110096, 'EAST DELHI'),
(90, 'Vishwas Nagar S.O', 110032, 'EAST DELHI'),
(91, 'Vivek Vihar S.O', 110095, 'EAST DELHI'),
(92, 'Yozna Vihar S.O', 110092, 'EAST DELHI'),
(93, 'Balbir Nagar S.O', 110032, 'EAST DELHI'),
(94, 'Bhajan Pura S.O', 110053, 'EAST DELHI'),
(95, 'Bhola Nath Nagar S.O', 110032, 'EAST DELHI'),
(96, 'Dayalpur B.O', 110094, 'EAST DELHI'),
(97, 'Dilshad Garden S.O', 110095, 'EAST DELHI'),
(98, 'G.T.B. Hospital S.O', 110095, 'EAST DELHI'),
(99, 'Ghonda B.O', 110053, 'EAST DELHI'),
(100, 'Gokal Puri S.O', 110094, 'EAST DELHI'),
(101, 'Goverdhan Bihari Colony S.O', 110032, 'EAST DELHI'),
(102, 'Jafrabad S.O', 110053, 'EAST DELHI'),
(103, 'Jagjit Nagar S.O', 110053, 'EAST DELHI'),
(104, 'Jhilmil H.O', 110095, 'EAST DELHI'),
(105, 'Jhilmil Tahirpur B.O', 110095, 'EAST DELHI'),
(106, 'Johripur B.O', 110094, 'EAST DELHI'),
(107, 'Karawal Nagar S.O', 110094, 'EAST DELHI'),
(108, 'Khazuri Khas B.O', 110094, 'EAST DELHI'),
(109, 'Loni Road Housing Complex S.O', 110093, 'EAST DELHI'),
(110, 'Loni Road S.O', 110032, 'EAST DELHI'),
(111, 'Man Sarovar Park S.O', 110032, 'EAST DELHI'),
(112, 'Mandoli Saboli B.O', 110093, 'EAST DELHI'),
(113, 'Maujpur S.O', 110053, 'EAST DELHI'),
(114, 'Nand Nagri "A" S.O', 110093, 'EAST DELHI'),
(115, 'Nand Nagri "C" S.O', 110093, 'EAST DELHI'),
(116, 'New Seemapuri S.O', 110095, 'EAST DELHI'),
(117, 'New Usmanpur B.O', 110053, 'EAST DELHI'),
(118, 'Old Seemapuri S.O', 110095, 'EAST DELHI'),
(119, 'Rohtash Nagar S.O', 110032, 'EAST DELHI'),
(120, 'Sabhapur B.O', 110094, 'EAST DELHI'),
(121, 'Seelampur S.O', 110053, 'EAST DELHI'),
(122, 'Shahdara Mandi S.O', 110032, 'EAST DELHI'),
(123, 'Shahdara S.O', 110032, 'EAST DELHI'),
(124, 'Shivaji Park S.O', 110032, 'EAST DELHI'),
(125, 'Sonia Vihar S.O', 110094, 'EAST DELHI'),
(126, 'Telewara S.O', 110032, 'EAST DELHI'),
(127, 'Yamuna Vihar S.O', 110053, 'EAST DELHI'),
(128, 'F F C Okhla S.O', 110020, 'NEW DELHI'),
(129, 'New Delhi G.P.O.', 110001, 'NEW DELHI'),
(130, 'New Delhi H.O', 110001, 'NEW DELHI'),
(131, 'Baratooti S.O', 110006, 'NORTH DELHI'),
(132, 'Jawahar Nagar S.O', 110007, 'NORTH DELHI'),
(133, 'Rana Pratap Bagh S.O', 110007, 'NORTH DELHI'),
(134, 'Birla Lines S.O', 110007, 'NORTH DELHI'),
(135, 'Burari S.O', 110084, 'NORTH DELHI'),
(136, 'C.C.I. S.O', 110007, 'NORTH DELHI'),
(137, 'Chandni Chowk S.O', 110006, 'NORTH DELHI'),
(138, 'Chawri Bazar S.O', 110006, 'NORTH DELHI'),
(139, 'Civil Lines S.O', 110054, 'NORTH DELHI'),
(140, 'Dareeba S.O', 110006, 'NORTH DELHI'),
(141, 'Delhi G.P.O.', 110006, 'NORTH DELHI'),
(142, 'Delhi Sadar Bazar S.O', 110006, 'NORTH DELHI'),
(143, 'Delhi University S.O', 110007, 'NORTH DELHI'),
(144, 'Distt Courts S.O', 110054, 'NORTH DELHI'),
(145, 'Gulabi Bagh S.O', 110007, 'NORTH DELHI'),
(146, 'Jagatpur B.O', 110084, 'NORTH DELHI'),
(147, 'Jharoda Majraa B.O', 110084, 'NORTH DELHI'),
(148, 'Kamla Nagar S.O', 110007, 'NORTH DELHI'),
(149, 'Malka Ganj S.O', 110007, 'NORTH DELHI'),
(150, 'Padam Nagar S.O', 110007, 'NORTH DELHI'),
(151, 'Patrachar Vidyalay S.O', 110054, 'NORTH DELHI'),
(152, 'R.C.A.O. S.O', 110007, 'NORTH DELHI'),
(153, 'R K Puram (Main) S.O', 110066, 'SOUTH WEST DELHI'),
(154, 'R K Puram Sect-1 S.O', 110022, 'SOUTH WEST DELHI'),
(155, 'R K Puram Sect-12 S.O', 110022, 'SOUTH WEST DELHI'),
(156, 'R K Puram Sect-3 S.O', 110022, 'SOUTH WEST DELHI'),
(157, 'R K Puram Sect-4 S.O', 110022, 'SOUTH WEST DELHI'),
(158, 'R K Puram Sect-5 S.O', 110022, 'SOUTH WEST DELHI'),
(159, 'R K Puram Sect7 S.O', 110022, 'SOUTH WEST DELHI'),
(160, 'R K Puram Sect-8 S.O', 110022, 'SOUTH WEST DELHI'),
(161, 'R K Puram West S.O', 110066, 'SOUTH WEST DELHI'),
(162, 'R R Hospital S.O', 110010, 'SOUTH WEST DELHI'),
(163, 'S J Enclave S.O', 110029, 'SOUTH WEST DELHI'),
(164, 'S P School S.O', 110074, 'SOUTH WEST DELHI'),
(165, 'South Delhi Campus S.O', 110021, 'SOUTH WEST DELHI'),
(166, 'Station Road S.O', 110010, 'SOUTH WEST DELHI'),
(167, 'Subroto Park S.O', 110010, 'SOUTH WEST DELHI'),
(168, 'Sultanpur S.O', 110030, 'SOUTH WEST DELHI'),
(169, 'T B Hospital S.O', 110030, 'SOUTH WEST DELHI'),
(170, 'Technology Bhawan S.O', 110016, 'SOUTH WEST DELHI'),
(171, 'Vasant Kunj Pkt-A S.O', 110070, 'SOUTH WEST DELHI'),
(172, 'Vasant Kunj S.O', 110070, 'SOUTH WEST DELHI'),
(173, 'Vasant Vihar-1 S.O', 110057, 'SOUTH WEST DELHI'),
(174, 'Vasant Vihar-2 S.O', 110057, 'SOUTH WEST DELHI'),
(175, 'Signal Enclave S.O', 110010, 'SOUTH WEST DELHI'),
(176, 'Sarojini Nagar H.O', 110023, 'SOUTH WEST DELHI'),
(177, 'Amberhai B.O', 110075, 'SOUTH WEST DELHI'),
(178, 'Badhosarai B.O', 110028, 'SOUTH WEST DELHI'),
(179, 'Badusarai B.O', 110071, 'SOUTH WEST DELHI'),
(180, 'Bagrola B.O', 110077, 'SOUTH WEST DELHI'),
(181, 'Baprola B.O', 110028, 'SOUTH WEST DELHI'),
(182, 'Barthal B.O', 110077, 'SOUTH WEST DELHI'),
(183, 'Chhawla S.O', 110071, 'SOUTH WEST DELHI'),
(184, 'CRPF Jharoda Kalan S.O', 110072, 'SOUTH WEST DELHI'),
(185, 'D C Goyla B.O', 110028, 'SOUTH WEST DELHI'),
(186, 'D C Nangli Sakravati B.O', 110028, 'SOUTH WEST DELHI'),
(187, 'Dabri B.O', 110028, 'SOUTH WEST DELHI'),
(188, 'Daulatpur B.O', 110028, 'SOUTH WEST DELHI'),
(189, 'Dhulsiras B.O', 110077, 'SOUTH WEST DELHI'),
(190, 'Dichaoal Kalan B.O', 110028, 'SOUTH WEST DELHI'),
(191, 'Dindarpur B.O', 110028, 'SOUTH WEST DELHI'),
(192, 'Dulsiras B.O', 110028, 'SOUTH WEST DELHI'),
(193, 'Dwarka Sec-6 S.O', 110075, 'SOUTH WEST DELHI'),
(194, 'Galib Pur B.O', 110028, 'SOUTH WEST DELHI'),
(195, 'Ghuman Hera B.O', 110028, 'SOUTH WEST DELHI'),
(196, 'Indira Park B.O', 110028, 'SOUTH WEST DELHI'),
(197, 'Indira Park S.O', 110045, 'SOUTH WEST DELHI'),
(198, 'Issapur B.O', 110028, 'SOUTH WEST DELHI'),
(199, 'Issapur S.O', 110073, 'SOUTH WEST DELHI'),
(200, 'Jafarpur B.O', 110028, 'SOUTH WEST DELHI'),
(201, 'Jharoda Kalan B.O', 110028, 'SOUTH WEST DELHI'),
(202, 'Jhatikara B.O', 110028, 'SOUTH WEST DELHI'),
(203, 'Kair B.O', 110028, 'SOUTH WEST DELHI'),
(204, 'Kair S.O', 110043, 'SOUTH WEST DELHI'),
(205, 'Kakrola B.O', 110078, 'SOUTH WEST DELHI'),
(206, 'Kangan Heri B.O', 110028, 'SOUTH WEST DELHI'),
(207, 'Khaira B.O', 110028, 'SOUTH WEST DELHI'),
(208, 'Khaira S.O', 110043, 'SOUTH WEST DELHI'),
(209, 'Khera Dabur B.O', 110028, 'SOUTH WEST DELHI'),
(210, 'Malik Pur B.O', 110028, 'SOUTH WEST DELHI'),
(211, 'Malik Pur S.O', 110073, 'SOUTH WEST DELHI'),
(212, 'Maya Puri S.O', 110064, 'SOUTH WEST DELHI'),
(213, 'Mitraon B.O', 110028, 'SOUTH WEST DELHI'),
(214, 'Mundela Kalan B.O', 110028, 'SOUTH WEST DELHI'),
(215, 'N.S.I.T. Dwarka S.O', 110078, 'SOUTH WEST DELHI'),
(216, 'Najafgarh S.O', 110043, 'SOUTH WEST DELHI'),
(217, 'Nangal Raya S.O', 110046, 'SOUTH WEST DELHI'),
(218, 'Naraina Industrial Estate H.O', 110028, 'SOUTH WEST DELHI'),
(219, 'Naraina Village S.O', 110028, 'SOUTH WEST DELHI'),
(220, 'Nasirpur B.O', 110028, 'SOUTH WEST DELHI'),
(221, 'Palam Village S.O', 110045, 'SOUTH WEST DELHI'),
(222, 'Pandwala Kalan B.O', 110028, 'SOUTH WEST DELHI'),
(223, 'Papravat B.O', 110028, 'SOUTH WEST DELHI'),
(224, 'Quazipur B.O', 110028, 'SOUTH WEST DELHI'),
(225, 'Raj Nagar - II S.O', 110077, 'SOUTH WEST DELHI'),
(226, 'Raota B.O', 110028, 'SOUTH WEST DELHI'),
(227, 'Raota S.O', 110073, 'SOUTH WEST DELHI'),
(228, 'Rewla Khanpur B.O', 110028, 'SOUTH WEST DELHI'),
(229, 'Sagarpur S.O', 110046, 'SOUTH WEST DELHI'),
(230, 'Shopping Centre Mayapuri S.O', 110064, 'SOUTH WEST DELHI'),
(231, 'Surehra B.O', 110028, 'SOUTH WEST DELHI'),
(232, 'Tilangpur Kotla B.O', 110028, 'SOUTH WEST DELHI'),
(233, 'Ujwa S.O', 110073, 'SOUTH WEST DELHI'),
(234, 'A-3 Janak Puri S.O', 110058, 'WEST DELHI'),
(235, 'Ashok Nagar S.O', 110018, 'WEST DELHI'),
(236, 'Ashoka Park Extn. S.O', 110026, 'WEST DELHI'),
(237, 'B-1 Janak Puri S.O', 110058, 'WEST DELHI'),
(238, 'Bakkarwala B.O', 110015, 'WEST DELHI'),
(239, 'C-4 Janak Puri S.O', 110058, 'WEST DELHI'),
(240, 'Chand Nagar S.O', 110018, 'WEST DELHI'),
(241, 'Chaukhandi B.O', 110015, 'WEST DELHI'),
(242, 'D. K. Mohan Garden S.O', 110059, 'WEST DELHI'),
(243, 'D.E.S.U. Colony S.O', 110058, 'WEST DELHI'),
(244, 'Delhi Industrial Area S.O', 110015, 'WEST DELHI'),
(245, 'ESI S.O', 110015, 'WEST DELHI'),
(246, 'Fateh Nagar S.O', 110018, 'WEST DELHI'),
(247, 'Hari Nagar BE Block S.O', 110064, 'WEST DELHI'),
(248, 'Hari Nagar Dadb Block S.O', 110064, 'WEST DELHI'),
(249, 'Hari Nagar S.O', 110064, 'WEST DELHI'),
(250, 'Hastal Village B.O', 110015, 'WEST DELHI'),
(251, 'Hirankudna B.O', 110015, 'WEST DELHI'),
(252, 'J-6 Rajouri Garden S.O', 110027, 'WEST DELHI'),
(253, 'Jail Road S.O', 110058, 'WEST DELHI'),
(254, 'Janta Market S.O', 110027, 'WEST DELHI'),
(255, 'Jawala Heri B.O', 110063, 'WEST DELHI'),
(256, 'Jeevan Park B.O', 110015, 'WEST DELHI'),
(257, 'Jeevan Park S.O', 110059, 'WEST DELHI'),
(258, 'Jwala Puri S.O', 110087, 'WEST DELHI'),
(259, 'Jwalaheri B.O', 110015, 'WEST DELHI'),
(260, 'Karam Pura S.O', 110015, 'WEST DELHI'),
(261, 'Khyala Phase -  I S.O', 110018, 'WEST DELHI'),
(262, 'Khyala Phase - II S.O', 110018, 'WEST DELHI'),
(263, 'L. M. Nagar Indl. Area S.O', 110015, 'WEST DELHI'),
(264, 'M.B.S. Nagar S.O', 110018, 'WEST DELHI'),
(265, 'Madipur Slum Quarter S.O', 110063, 'WEST DELHI'),
(266, 'Madipur Village S.O', 110063, 'WEST DELHI'),
(267, 'Mahabir Nagar S.O', 110018, 'WEST DELHI'),
(268, 'Mansarover Garden S.O', 110015, 'WEST DELHI'),
(269, 'Matiala B.O', 110015, 'WEST DELHI'),
(270, 'Matiala S.O', 110059, 'WEST DELHI'),
(271, 'Mundka B.O', 110041, 'WEST DELHI'),
(272, 'N.I.Area S.O', 110015, 'WEST DELHI'),
(273, 'Nangloi - II B.O', 110015, 'WEST DELHI'),
(274, 'Nangloi - III S.O', 110041, 'WEST DELHI'),
(275, 'Nangloi S.O', 110041, 'WEST DELHI'),
(276, 'Nilothi B.O', 110015, 'WEST DELHI'),
(277, 'Paschim Vihar B Block S.O', 110063, 'WEST DELHI'),
(278, 'Paschim Vihar S.O', 110063, 'WEST DELHI'),
(279, 'Peeragarhi B.O', 110015, 'WEST DELHI'),
(280, 'Punjabi Bagh S.O', 110026, 'WEST DELHI'),
(281, 'Punjabi Bagh Sec - III S.O', 110026, 'WEST DELHI'),
(282, 'Rajouri Garden S.O', 110027, 'WEST DELHI'),
(283, 'Rajouri Market S.O', 110027, 'WEST DELHI'),
(284, 'Ramesh Nagar H.O', 110015, 'WEST DELHI'),
(285, 'Ranhola B.O', 110015, 'WEST DELHI'),
(286, 'Shivaji Park S.O', 110026, 'WEST DELHI'),
(287, 'Subhash Nagar S.O', 110027, 'WEST DELHI'),
(288, 'Subhash Nagar West S.O', 110027, 'WEST DELHI'),
(289, 'Sunder Vihar S.O', 110087, 'WEST DELHI'),
(290, 'Tikri Kalan B.O', 110015, 'WEST DELHI'),
(291, 'Tilak Nagar East S.O', 110018, 'WEST DELHI'),
(292, 'Tilak Nagar S.O', 110018, 'WEST DELHI'),
(293, 'Uttam Nagar S.O', 110059, 'WEST DELHI'),
(294, 'Vikas Puri S.O', 110018, 'WEST DELHI'),
(295, 'Vishnu Garden S.O', 110018, 'WEST DELHI'),
(296, 'Zakhira S.O', 110015, 'WEST DELHI');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE IF NOT EXISTS `model` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `maker` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`ID`, `maker`, `model`, `quantity`) VALUES
(1, 'apple', 'iphone 5', 130),
(2, 'samsung', 'galaxy j7', 390),
(3, 'samsung', 'galaxy j5', 85),
(4, 'BlackBerry', '9220', 15),
(5, 'Le', '1s', 77),
(6, 'Nokia', 'lumia 700', 340),
(7, 'apple', 'iphone 6plus', 69);

-- --------------------------------------------------------

--
-- Table structure for table `ngolist`
--

CREATE TABLE IF NOT EXISTS `ngolist` (
  `ID` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Person` varchar(97) DEFAULT NULL,
  `Phone` varchar(107) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngolist`
--

INSERT INTO `ngolist` (`ID`, `Name`, `Address`, `Person`, `Phone`) VALUES
(1, 'Bal Sahyog, Connaught Place,', 'Cannought Circus, Opp. L Block, New Delhi Near Kakeda Hotel, Connaught Place. N.D www.balsahyog.org.', 'Mr. Harish Gupta (Director)-9810988486, Mrs. Manu (Superintendent)- 9868378227', '9868378227, 23411995, 23411273 NGO Home'),
(2, 'Salam Balak Trust, Paharganj', 'Apna Ghar, Gali No. 11, Multani Dhanda, Pahar Ganj, New Delhi – 55. www.salaambaalaktrust.com', 'Mrs. Kiran Jyoti (Director)- 3589305, Mr. K.N. Misra (Coordinator)- 9310149107', '23681803 N.G.O. Home'),
(3, 'Sewa Bharti Matri Chhaya,Udaseen, Paharganj', 'Udaseen Ashram, Paharganj, N.D www.sewabharti.org', 'Ms. Shushma', '011-24503778/79, sewabharti@vsnl.net NGO Home'),
(4, 'Udayan Care-ORPHANAGE, Mayur Vihar', 'Mayur Vihar, Phase-I,Delhi- 110091, www.udayancare.org', 'Ms. Madhu Gupta', '9811300083, udayancare@gmail.com N.G.O. Home'),
(5, 'SBT Shelter Home, Pahargunj', 'DDA 2nd Floor Community Centre, Chandiwali Gali, New Delhi -55, Ph 011-3589305', 'Mrs. Kiran Jyoti (Director) – 3589305, Mr. Shyam Singh (Cordinator) – 9310149104.', '3589305 N.G.O. Home'),
(6, 'Vatsalaya Mandir, Shahdara', 'Halkara Kuan, Jwala Nagar, Shahdara, Delhi.www.vatsalyagram.org', 'Sh. Ramkaran 2045705', '22381705 011-65260557, vatsalyagram@hotmail.com N.G.O. Home'),
(7, 'Matri Chhaya C/o Sewa Bharti (Adoption Agency),', 'Udaseen Ashram, Aram Bagh, Pahar Ganj, New Delhi. Ph 24503778', 'Ms. Sushma (Social Worker) – 24503778, Rakesh 9278252248.', '24503778 N.G.O. Home'),
(8, 'Udayan, C/o SOS Children Villages of India,SOS Children Villages of India (Adopt', '1-Doctor Lane, Gole Market, New Delhi,', 'Mrs. Vijay Raina (Director) 9810843881, Ms. Salija Singh (Social Worker) – 9871102757', '9810843881 , 9871102757 N.G.O. Home'),
(9, 'Bhartiya Adim Jati Sewak Sangh, Pandav Nagar', 'Children Home for Boys, Pandav Nagar, Delhi.', 'Uma Bansal', '9968408837, 32957068 N.G.O. Home'),
(10, 'St. Anthony’s Girls Orphanage, Pahar Ganj', 'Institute of Franciscan Clarist sisters of the most Blessed Sacrament Pahar Ganj, New Delhi-55.', 'Sister Silvia', '23534620, 23520033 N.G.O. Home'),
(11, 'Jain Bal Ashram,', '4608 Ansari Road Daryaganj New Delhi 01,Ph 23285676, 23277424', 'Sh. Ankit Jain (Secretary), Sh. Bansi Dhar (Astt. Suptd.) - 23285676, 23277424', '23285676, 23277424 N.G.O. Home'),
(12, 'Katyani Balika Ashram,', 'Jhandewalan, New Delhi, Phone 23593234', 'Mr. N.C. Hembram (General Secretary)- 23625492, Mrs. Meenu Tiwari (Incharge) – 23593234.', '23593234 N.G.O. Home'),
(13, 'Sathi Children Home, Pandav Nagar', 'C- 59, Pandav Nagar, Delhi ( Near East Delhi Public School)', 'Anil Kapadia', '011- 32084173, 22754368 N.G.O.'),
(14, 'Jain Mahila Ashram', 'Ghata Masjid, Darya Ganj.Delhi-01. Phone 011- 23274736', 'Mrs. Ritu Das (General Secretary)-9810097693, Babita (Social Worker)- 9818954513,', 'Phone 011- 23274736'),
(15, 'Prayas Railway Project', 'Rail Mall Godam, Lahori Gate, Delhi - 06, Phone 23923417', 'Mr. Abhay Avasti (Manager) – 23923417, 8800867975.', NULL),
(16, 'Katyani Balika Ashram,', 'Jhandewalan, New Delhi, Phone 23593234', 'Mr. N.C. Hembram (General Secretary)- 23625492, Mrs. Meenu Tiwari (Incharge) – 23593234.', NULL),
(17, 'Missionaries of Charity', '12,Commissioner Lane, Delhi', '23950181 N.G.O Home', NULL),
(18, 'Phulwari, CHB- I, Alipur', 'Children Home for Boys- I, Alipur, Delhi- 110036.', 'Phone No- 011-27202339 Mr. K.V Sareen, Ms. Geeta Rana (9811712290), Mr. Shiv Narayan (9810726239)', 'Ph. 27202339 Govt. Home'),
(19, 'Prayas Children Home, Jahangir Puri', 'EE- Block, Jahangir Puri', 'Mrs. Alka', '27634853,9312150950 N.G.O Home'),
(20, 'Prayas, Tughlakabad', 'Tughlakabad Institutional area,New Delhi-110025', 'Ms. Astha', '29956244,29955505, 9718205995 N.G.O Home'),
(21, 'Sadhna Kunj, Bawana', 'Plot No. 469, Puth Khurd, Bawana, Delhi- 110039', '23552627,9310213200, e-mail-id:- rg@sadhna.com N.G.O Home', 'Salam Balak Trust, Paharganj'),
(22, 'Salam Balak Trust, Paharganj', 'Apna Ghar, Gali No. 11, Multani Dhanda, Pahar Ganj, New Delhi – 55. www.salaambaalaktrust.com', 'Mrs. Kiran Jyoti (Director)- 3589305, Mr. K.N. Misra (Coordinator)- 9310149107', '23681803 N.G.O. Home'),
(23, 'Samarth, BASK, Prahlad Pur', 'Prahlad Pur, Delhi', 'Parveen (9868749716), Mr. Vidhyarthi (9810240835)', '25193726, 27899152, e-mail-id:- vidhyarthi_mm@rediffmail.com N.G.O Home'),
(24, 'Samya – Centre Equity Studies, Sarvodaya Enclave', 'B- 102, First floor, Sarvodaya Enclave. New Delhi – 110017', 'Mr. Harsh Mander(Director)', '29813688, centreforequitystudies@gmail.com N.G.O Home'),
(25, 'Sewa Bharti Matri Chhaya, Mianwali Nagar', 'Mianwali Nagar, New Delhi', 'Ms. Charu Makkar (9899256061), www.sewabhartimatrichhaya.com', '011-25286821, info@sewabhartimatrichhaya.com'),
(26, 'Sewa Bharti Matri Chhaya,Udaseen, Paharganj', 'Udaseen Ashram, Paharganj, N.D www.sewabharti.org', 'Ms. Shushma', '011-24503778/79, sewabharti@vsnl.net NGO Home'),
(27, 'Society for young & old, Munirka', 'M.K. E- 17 A, DDA flats, Munirka, New Delhi- 110067', 'Dr. Sameer Jannay Monocha(President)', '26162055, 9871292811 , SJMKS@rediffmail.com N.G.O Home'),
(28, 'STOP, Chitranjan Park', 'A- 25,Chitranjan Park New Delhi -110019', 'Ms. Roma', '26275812/11, 9810135207 N.G.O. Home'),
(29, 'Children Home For Boys-I & II, Lajpat Nagar- II', 'Kasturba Niketan Complex, Lajpat Nagar- II, New Delhi- 110024', '29813688 Govt. Home', NULL),
(30, 'Udayan Care (Girls), Lajpat nagar-1V', '1697-A,1st floor, Vikram Vihar, Lajpat nagar-1V,New Delhi- 110024', 'Ms Antra 9911062369', '26440151,46539272 N.G.O Home'),
(31, 'Udayan Care Home for Girls, East of Kailash', '180 A, Sant Nagar, East of Kailash, New Delhi – 110065', 'Mrs. Kiran Modi (Managing trustee)', '32016122, 32603837, udayancare@gmail.com N.G.O Home'),
(32, 'Udayan Care Home for Girls, Mangla Puri', '69,New Mangla Puri, Sultanpur Village, Mehruali,New Delhi- 110030', '29840151, 32603837,32016122 N.G.O Home', NULL),
(33, 'Udayan Care-ORPHANAGE, Mayur Vihar', 'Mayur Vihar, Phase-I,Delhi- 110091, www.udayancare.org', 'Ms. Madhu Gupta', '9811300083, udayancare@gmail.com N.G.O. Home'),
(34, 'SBT Shelter Home, Pahargunj', 'DDA 2nd Floor Community Centre, Chandiwali Gali, New Delhi -55, Ph 011-3589305', 'Mrs. Kiran Jyoti (Director) – 3589305, Mr. Shyam Singh (Cordinator) – 9310149104.', '3589305 N.G.O. Home'),
(35, 'Vatsalaya Mandir, Shahdara', 'Halkara Kuan, Jwala Nagar, Shahdara, Delhi.www.vatsalyagram.org', 'Sh. Ramkaran 2045705', '22381705 011-65260557, vatsalyagram@hotmail.com N.G.O. Home'),
(36, 'Village Cottage Home – I, Lajpat Nagar', 'Kasturba Niketan Complex Lajpat Nagar-24', '29810675 Govt. Home', NULL),
(37, 'Village Cottage Home-III, Maharani Bagh', 'Maharani Bagh, (Kriti Nagar), New Delhi-', '26830432 Govt. Home', NULL),
(38, 'Village Cottage Home – II, Maharani Bagh', 'Maharani Bagh, New Delhi', '26830432 Govt. Home', NULL),
(39, 'Holly Cross Social Services Center, Dheer Pur', 'Dheer Pur, Delhi', 'hcssc@bol.net.in', '27608765, 27601917, (Fax) 27605736 N.G.O. Home'),
(40, 'Kilkari Children Home for Girls, Kashmeri Gate', 'Nicolson Road, Kashmeri Gate, Delhi- 110006.', 'Mehnaz Khan, Reshmi Mitra (Senior Co-Ordinator)', '9250397574, 9910089044, E-mail-id:- mahenazkhn@gmail.com, reshmi81@gmail.com N.G.O. Home'),
(41, 'Antyodaya Niketan, Kashemeri Gate', 'Old Court Road, Kashemeri Gate, Delhi- 110006.', 'Tejdhar. A. Paik (Wilson) (M) 9650103124', 'Ph:- 43597076, E-mail-id:- talk2paik@gmail.com, tejmilton@yahoo.com N.G.O. Home'),
(42, 'Project Concern International, Nizamuddin', '52A, Gupta Building, Sarai Kale Khan, Nizamuddin (E), New Delhi- 110013', 'Mr. Peter Joseph Trinidad (Secretary)', 'proconin@pciindia.org N.G.O. Home'),
(43, 'Welfare Home for Children, Sarita Vihar', 'B Institutional area, Sarita Vihar, New Delhi- 110044', 'Mrs. Achla Khanna (General Secretary)', '26974702, 26954150 N.G.O. Home'),
(44, 'SOS Udayan (Children Village of India), Gole Market', '1, Doctor Lane, Gole Market, New Delhi- 110001', 'Mrs. Vijay Raina (Director)', '26743739, E-mail-id:- soscvi@vsnl.com N.G.O. Home'),
(45, 'Sopan, Mandakini Enclave', '347, Mandakini Enclave, Alaknanda', 'Mrs. Vijay Raina (Director)', '26743739 N.G.O. Home'),
(46, 'Upvan, Safdarjung Enclave', 'B-5/21, Safdarjung Enclave, New Delhi', 'Mrs. Vijay Raina (Director)', '23743739 N.G.O. Home'),
(47, 'SOS Children Villege, Bawana', 'Main Khanjawala Road, Bawana, Delhi-39', 'Pradeep Jarwal (M) 9810322713', 'Ph:- 27752351, E-mail-id:- sos_bawana2000@yahoo.com N.G.O. Home'),
(48, 'Mukti Ashram (Bachpan Bachao Andolan), Ibrahim Pur', 'Ibrahim Pur, Delhi- 110036', 'Mr. Manish Sharma (M) 9953333921', 'Ph. :- 27732213, E-mail-id:- manish.ashram@gmail.com N.G.O. Home'),
(49, 'Bal Vihar-Children Home, Najafgarh', 'Sadhu Sunder Singh Welfare Society, Najafgarh, New Delhi-110043', '9213612217, Email-id: flowersofgod@yahoo.co.in N.G.O. Home', NULL),
(50, 'Sweet Home Anathalaya, Najafgarh', '553/B, Main Road,Tura Mandi,Najafgarh, Delhi.', 'Mr. Devender', '(M) 9717178705, 011-25017463 N.G.O. Home'),
(51, 'Matri Chhaya C/o Sewa Bharti (Adoption Agency),', 'Udaseen Ashram, Aram Bagh, Pahar Ganj, New Delhi. Ph 24503778', 'Ms. Sushma (Social Worker) – 24503778, Rakesh 9278252248.', '24503778 N.G.O. Home'),
(52, 'Udayan, C/o SOS Children Villages of India,SOS Children Villages of India (Adopt', '1-Doctor Lane, Gole Market, New Delhi,', 'Mrs. Vijay Raina (Director) 9810843881, Ms. Salija Singh (Social Worker) – 9871102757', '9810843881 , 9871102757 N.G.O. Home'),
(53, 'Bhartiya Adim Jati Sewak Sangh, Pandav Nagar', 'Children Home for Boys, Pandav Nagar, Delhi.', 'Uma Bansal', '9968408837, 32957068 N.G.O. Home'),
(54, 'St. Anthony’s Girls Orphanage, Pahar Ganj', 'Institute of Franciscan Clarist sisters of the most Blessed Sacrament Pahar Ganj, New Delhi-55.', 'Sister Silvia', '23534620, 23520033 N.G.O. Home'),
(55, 'Jain Bal Ashram,', '4608 Ansari Road Daryaganj New Delhi 01,Ph 23285676, 23277424', 'Sh. Ankit Jain (Secretary), Sh. Bansi Dhar (Astt. Suptd.) - 23285676, 23277424', '23285676, 23277424 N.G.O. Home'),
(56, 'Katyani Balika Ashram,', 'Jhandewalan, New Delhi, Phone 23593234', 'Mr. N.C. Hembram (General Secretary)- 23625492, Mrs. Meenu Tiwari (Incharge) – 23593234.', '23593234 N.G.O. Home'),
(57, 'Apna Ghar, Children of Mother Earth (COME), Shahdara,Delhi', 'Shahdara, Delhi', 'Jamghat-Aanchal, Children Home for Girls, Saket', 'F- 122, Saidullah-jab, Main MB Road, Opp. D- Block, Saket, New Delhi- 110030'),
(58, 'Jamghat-Aanchal, Children Home for Girls, Saket', 'F- 122, Saidullah-jab, Main MB Road, Opp. D- Block, Saket, New Delhi- 110030', 'Ms. Charu', '9810028791 N.G.O.'),
(59, 'Jamghat-Aanchal Children Home for Boy''s, Lado Sarai', 'Lado Sarai, New Delhi', 'Mr. Yesudos', 'N.G.O.'),
(60, 'Khusi Children Home, Okhla', 'Tehkhand Road, Near Jeevan Jyoti Hospital, Okhla Industrial Area, Phase - 1, New Delhi', 'Mr. Nisar Seikh', '011-26851335 N.G.O.'),
(61, 'Umeed Aman Ghar for Boy''s, Mehrauli', 'Near Qutab Bus Stand, Qutab Minar, Mehrauli, New Delhi', 'Mr. Nisar Seikh', '011-26851335 N.G.O.'),
(62, 'Samarpan Foundation, Defence Colony', '92/87, Defence Colony, Flyover Market, New Delhi', 'Ms. Sobha', '9990020079 N.G.O.'),
(63, 'VATSALAYAM Maitreey Prekhsha Seva Mission, Aya Nagar', 'C-1/160, Phase- IV, New Balka Chowk, Aya Nagar-110047', 'Mr. Sanjay Verma', '011-29531954 N.G.O.'),
(64, 'Sathi Children Home, Pandav Nagar', 'C- 59, Pandav Nagar, Delhi ( Near East Delhi Public School)', 'Anil Kapadia', '011- 32084173, 22754368 N.G.O.'),
(65, 'DMRC Children’s Home, Tis Hazari', 'Bhargava Lane, Metro Pillar No.65, Tis Hazari, New-Delhi 110054,Ph- 23955844 Nirmala- 9811553494', '(Near Tis Hazari Metro Station, opposite St. Stephens hospital) Nirmala- 9811553494', 'Ph- 23955844 , 9810230027, 9310149103, Ph- 23955844 E-mail-id: - aktiwari@salaambaalaktrust.org N.G.O. Home'),
(66, 'Rafa Home – Sahaitha', '– E-35, Saket, New Delhi-110017, E-mails- ssailawadi@gmail.com , Phone: 91 – 011- 26561541, 2953180', 'Phone: 91 – 011- 26561541, 29531804, Mobile: 9868911541 Delhi', 'Jeevan Jyoti Home, Missionaries of Charity'),
(67, 'Jeevan Jyoti Home, Missionaries of Charity', 'Jangpura-B, Mathura Road, New Delhi. Phone 24375483', 'Sr. Annaline MC - Sister Superior', 'Phone 24375483 Delhi'),
(68, 'ONYVA – TARA PROJECT', '208-A, I & II Floor, Savitri Nagar, New Malviya Nagar, New Delhi. Mobile:- 9990415609', 'Mr. Puscal', '9990415609 New Delhi'),
(69, 'Global Family Charitable Trust (NGO) Home,', 'E-6/81 H, Ratia Marg, Sangam Vihar, New Delhi-110062, Mobile: 09999473032', 'Mr. Robertson', 'Mobile: 09999473032'),
(70, 'Zakat Foundation of India – Fatima Care (Girls Orphanage)', 'D-2, Okhla Vihar, Jamia Nagar, New Delhi-110025, E-mail: info@zakatindia.org', 'Mumtaz Najmi – Joint Secretary', 'Zakat Foundation of India – Happy Home (Boys Orphanage)'),
(71, 'Zakat Foundation of India – Happy Home (Boys Orphanage)', 'A-11, Khajoori Road, Jogabai Extension, Jamia Nagar, New Delhi-110025, info@zakatindia.org, Phone No', 'Mumtaz Najmi – Joint Secretary', 'Phone No. 011 – 26982781'),
(72, 'Courage & Healing Home (Girls Home)', 'A-45, Freedom Fighter’s Colony, Neb Sarai, New Delhi, Mobile : 9810085937', 'Ms. Judith', 'Mobile : 9810085937'),
(73, 'Holly Cross Social Services Center', 'Dheer Pur, Delhi, 27608765, 27601917, hcssc@bol.net.in', '27608765, 27601917, (Fax) 27605736 , hcssc@bol.net.in', 'Kilkari Children Home for Girls (NGO Home)'),
(74, 'Kilkari Children Home for Girls (NGO Home)', 'Nicolson Road, Kashmeri Gate, Delhi- 110006. mahenazkhn@gmail.com', 'Mehnaz Khan, 9250397574, Reshmi Mitra, 9910089044, reshmi81@gmail.com', '9250397574, 9910089044,'),
(75, 'Antyodaya Niketan (NGO Home)', 'Old Court Road, Kashemeri Gate, Delhi- 110006. Ph 43597076, antyodayaniketan@gmail.com', 'Tej Wilson (M) 9810523483', '9810523483, 43597076'),
(76, 'Bachpan Bachao Andolan (NGO Home)', 'Ibrahim Pur, Delhi. 9953333921, 27732213. manish.ashram@gmail.com', 'Mr. Manish Sharma 9953333921, 27732213', '9953333921, 27732213'),
(77, 'Jain Mahila Ashram', 'Ghata Masjid, Darya Ganj.Delhi-01. Phone 011- 23274736', 'Mrs. Ritu Das (General Secretary)-9810097693, Babita (Social Worker)- 9818954513,', 'Phone 011- 23274736'),
(78, 'Prayas Railway Project', 'Rail Mall Godam, Lahori Gate, Delhi - 06, Phone 23923417', 'Mr. Abhay Avasti (Manager) – 23923417, 8800867975.', 'Katyani Balika Ashram,'),
(79, 'Katyani Balika Ashram,', 'Jhandewalan, New Delhi, Phone 23593234', 'Mr. N.C. Hembram (General Secretary)- 23625492, Mrs. Meenu Tiwari (Incharge) – 23593234.', 'Phulwari, Children Home for Boys- II'),
(80, 'Phulwari, Children Home for Boys- II', 'Children Home for Boys- II, Alipur, Phone No- 011-27202339', 'Mr. K. V Sareen', '011-27202339'),
(81, 'Child Survival India', 'Flat No- 285, Pkt- 01, Sec- A/6, Narela, Delhi. Phone 011-27782197', 'Deepa Baja- 01127844740, 27844182', 'Deepa Baja- 01127844740, 27844182'),
(82, 'Stop Society, Nerela', 'B- 492, JJ Colony, Bawana, Narela, Delhi. ph 9818372481', 'Chaakarwarty - 9818372481', NULL),
(83, 'Pahal, Badli', 'A-3, Raja Vihar, Badli Industrial Area, Delhi, Ph 011-65150085', 'Sh. Jitender Singh- 9971544444', '01165150085, 9971544444'),
(84, 'Karun Path ( Mentally Disturb Children)', 'H.No- 22 G.T.K Road Libaspur, Delhi', 'Genl. Sec. Sh Dilip Kumar 9899335009', 'Minda Bal Gram, Holambi Khurd Mod,'),
(85, 'Minda Bal Gram, Holambi Khurd Mod,', 'Minda Bal Gram,Villiage- Holambi Khurd Mod, Phone No- 011-27202102', '011-27202102', 'Padari PlO Bhawan, Khera Khurd'),
(86, 'Padari PlO Bhawan, Khera Khurd', 'Vill- Khera Khurd, Delhi , Mobile No- 99580882997', NULL, NULL),
(87, 'Bal Adhikar Sashanktikaran Kendra, Pehlad Pur', 'Plot No- 86, Pehlad Pur Bangar,Delhi, Phone No- 011-22899152', 'Sh. MM Vidharti- 9810122355', 'Phone No- 011-22899152 , 9810122355'),
(88, 'SOS Children, Bawana', 'Main Kanjhawala Road, Bawana, Delhi, Phone No: 011-27752351', 'Sh. Jabril- 9910430346', '011-27752351'),
(89, 'STOP, Madan Pur', 'Kh. No- 5/13 Karala Mundka Road Madan Pur, Dabas, Delhi Phone No- 011-25953421,', 'Rama Devi- 011655782', '011-655782, 011-25953421,'),
(90, 'Asha Daan. Karkardooma', 'Asha Daan, X-13, Institutional Area, Karkardooma, Delhi-110092', 'Apna Ghar, Distt-East.', 'G T Road. Railway Track Supply Depot. Mansarovar Phatak. Shahdra Delhi-32'),
(91, 'Apna Ghar, Distt-East.', 'G T Road. Railway Track Supply Depot. Mansarovar Phatak. Shahdra Delhi-32', 'Phone 011-22134621', 'Phone 011-22134621');

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

CREATE TABLE IF NOT EXISTS `ordered` (
  `rid` int(10) NOT NULL AUTO_INCREMENT,
  `rname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rmaker` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rorder` int(10) NOT NULL,
  `rmodel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rtime` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ordered`
--

INSERT INTO `ordered` (`rid`, `rname`, `rmaker`, `rorder`, `rmodel`, `rtime`) VALUES
(1, 'chug', 'nokia', 5, '2600', '2016-02-29 09:16:11'),
(2, 'chug', 'apple', 15, 'iphone 5', '2016-02-29 12:17:41'),
(3, 'cust', 'le', 75, '1s', '2016-02-29 17:06:21'),
(4, 'chug', 'apple', 1, 'iphone 5', '2016-02-29 23:54:07'),
(5, 'cust', 'apple', 21, 'iphone 6plus', '2016-03-01 11:29:36'),
(6, 'chug', 'apple', 3, 'iphone 6plus', '2016-03-01 14:07:00'),
(7, 'chug', 'samsung', 1, 'galaxy j7', '2016-03-23 01:04:24'),
(8, 'chug', '', 20, '', '2016-04-04 18:43:20'),
(9, 'chug', '', 9, '', '2016-04-04 18:44:53'),
(10, 'chug', '', 10, '', '2016-04-04 18:46:15'),
(11, 'chug', 'samsung', 15, 'galaxy j5', '2016-04-04 18:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('chug', '1'),
('cust', '2'),
('admin', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
