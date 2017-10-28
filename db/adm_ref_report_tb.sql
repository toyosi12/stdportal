-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:12 PM
-- Server version: 5.6.37-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nbtsedun_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm_ref_report_tb`
--

CREATE TABLE `adm_ref_report_tb` (
  `ref_rep_id` int(100) NOT NULL,
  `hw_long_known` varchar(50) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `currel` varchar(50) NOT NULL,
  `aspirit` varchar(20) NOT NULL,
  `amarriage` varchar(20) NOT NULL,
  `ahealth` varchar(20) NOT NULL,
  `getalong` varchar(20) NOT NULL,
  `responsibility` varchar(20) NOT NULL,
  `dependability` varchar(20) NOT NULL,
  `leadership` varchar(20) NOT NULL,
  `loyality` varchar(20) NOT NULL,
  `moral` varchar(20) NOT NULL,
  `appearance` varchar(20) NOT NULL,
  `minpromise` varchar(20) NOT NULL,
  `mindemons` varchar(20) NOT NULL,
  `correction` varchar(20) NOT NULL,
  `other` varchar(300) NOT NULL,
  `recommend` varchar(10) NOT NULL,
  `intent_id` int(10) DEFAULT NULL,
  `ref_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adm_ref_report_tb`
--

INSERT INTO `adm_ref_report_tb` (`ref_rep_id`, `hw_long_known`, `relationship`, `currel`, `aspirit`, `amarriage`, `ahealth`, `getalong`, `responsibility`, `dependability`, `leadership`, `loyality`, `moral`, `appearance`, `minpromise`, `mindemons`, `correction`, `other`, `recommend`, `intent_id`, `ref_id`) VALUES
(1, '2 Years', 'Mentor', 'Mentor', 'He is very Spiritual', 'Loving', 'Very Healthy', 'Above Average', 'Average', 'Above Average', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'None', 'Yes', 2, 31),
(2, '3 Years', 'SUBORDINATE', 'STILL SUBORDINATE', 'STRONG SPIRITUAL', 'A HOME WORTHY OF EMU', 'NO', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'SATISFACTORY', 'Yes', 54, 37),
(3, '4 Years', 'A COLLEGUE, A FRIEND', 'FRIEND, MENTOR, AND ROLE MODEL', 'HIS A GOD FEARING BE', 'INDEED SHE IS A CHRI', 'PHYSICALLY FIT, AND ', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'HE IS CALL TO THE MINISTRY TO WORK AS MINISTER OF GOD AND AS MISSIONARY.', 'Yes', 54, 39),
(4, 'More than 5 Years', 'Member', 'Member', 'Bible Study', 'Peacefully', 'Nil', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'Excellent', 'i appeal that the school should admit him', 'Yes', 54, 38);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_ref_report_tb`
--
ALTER TABLE `adm_ref_report_tb`
  ADD PRIMARY KEY (`ref_rep_id`),
  ADD KEY `ref_id` (`ref_id`),
  ADD KEY `intent_id` (`intent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_ref_report_tb`
--
ALTER TABLE `adm_ref_report_tb`
  MODIFY `ref_rep_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
