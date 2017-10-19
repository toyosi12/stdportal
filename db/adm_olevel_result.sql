-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:11 PM
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
-- Table structure for table `adm_olevel_result`
--

CREATE TABLE `adm_olevel_result` (
  `result_id` int(10) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `exam_num` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `candidate_no` varchar(20) NOT NULL,
  `intent_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adm_olevel_result`
--

INSERT INTO `adm_olevel_result` (`result_id`, `exam`, `exam_num`, `year`, `subject`, `grade`, `candidate_no`, `intent_id`) VALUES
(1, 'NECO', '4345', 2002, 'Mathematics', 'A', '123456', 2),
(2, 'NECO', '112', 2005, 'Mathematics', 'A', '134567', 2),
(3, 'NECO', '', 2000, '', 'A', '', 2),
(4, 'NECO', 'yuyiuiy', 2006, 'kuyuiyi', 'A', 'yuiyiyu', 2),
(5, 'NECO', '3589', 1999, 'English', 'A', '98398', 4),
(7, 'NABTEB', '016', 2015, 'ENGLISH', 'C5', '35041016', 54),
(8, 'NABTEB', '016', 2015, 'MATHEMATICS', 'C6', '35041016', 54),
(9, 'NABTEB', '016', 2015, 'PHYSICS', 'C6', '35041016', 54),
(10, 'NABTEB', '016', 2015, 'AGRICULTURE', 'C6', '35041016', 54),
(11, 'NECO', '091', 2006, 'BIOLOGY', 'C6', '61386066IF', 54),
(12, 'NECO', '091', 2006, 'CRK', 'D7', '61386066IF', 54),
(13, 'NECO', '091', 2006, 'MATHEMATICS', 'C6', '61386066IF', 54),
(16, 'NABTEB', '03047', 2010, 'Mathmatics', 'C6', '185', 55),
(15, 'WAEC', '4031413', 2011, 'English Language', 'C4', '088', 55),
(17, 'WAEC', '088', 2011, 'Government', 'B3', '4031413', 55),
(25, 'NABTEB', '185', 2011, 'Office Practice', 'C6', '03047', 55),
(19, 'WAEC', '088', 2011, 'Economics', 'C4', '4031413', 55),
(20, 'WAEC', '088', 2011, 'Geography', 'B3', '4031413', 55),
(21, 'WAEC', '088', 2011, 'Agric Science', 'B3', '4031413', 55),
(22, 'WAEC', '088', 2011, 'Biology', 'C6', '4031413', 55),
(23, 'WAEC', '088', 2011, 'Hausa', 'D7', '4031413', 55),
(24, 'WAEC', '185', 2010, 'ICT', 'C6', '03047', 55),
(26, 'WAEC', '4241301177', 2004, 'Mathematics', 'C4', '4241301177', 85),
(27, 'WAEC', '4241301177', 2004, 'English', 'C6', '4241301177', 85),
(28, 'WAEC', '4241301177', 2004, 'Biology', 'C5', '4241301177', 85),
(29, 'WAEC', '4241301177', 2004, 'Economics', 'C5', '4241301177', 85),
(30, 'WAEC', '4241301177', 2004, 'Chemistry', 'C4', '4241301177', 85),
(31, 'WAEC', '4241301177', 2004, 'Physics', 'C5', '4241301177', 85),
(32, 'WAEC', '4241301177', 2004, 'Agricultural Science', 'C5', '4241301177', 85),
(33, 'WAEC', '4241301177', 2004, 'Geography', 'C6', '4241301177', 85),
(34, 'WAEC', '43', 1995, 'English', 'C6', '29263001', 95),
(38, 'WAEC', '43', 1995, 'Geography', 'C6', '29263001', 95),
(37, 'WAEC', '29263001', 1995, 'Yoruba', 'A', '43', 95),
(39, 'WAEC', '43', 1995, 'Government', 'C6', '29263001', 95),
(40, 'WAEC', '43', 1995, 'Agric Science', 'C6', '29263001', 95),
(43, 'WAEC', '21', 2011, 'Mathematics', 'B2', '4310511015', 95),
(42, 'WAEC', '21', 2011, 'CRK', 'C4', '4310511015', 95),
(44, 'WAEC', '21', 2011, 'Biology', 'C4', '4310511015', 95),
(45, 'NECO', '', 2001, '', 'A', '', 97),
(46, 'WAEC', '419192003', 2016, 'SCIENCE', 'A', '419192003', 101),
(47, 'WAEC GCE', '', 2001, 'English', 'C6', '5312501026', 102),
(51, 'WAEC GCE', '', 2001, 'Chemistry', 'C4', '5312501026', 102),
(49, 'WAEC GCE', '', 2001, 'Mathematics', 'C6', '5312501026', 102),
(50, 'WAEC GCE', '', 2001, 'physics', 'B3', '5312501026', 102),
(52, 'WAEC GCE', '', 2001, 'Biology ', 'B3', '5312501026', 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_olevel_result`
--
ALTER TABLE `adm_olevel_result`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `intent_id` (`intent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_olevel_result`
--
ALTER TABLE `adm_olevel_result`
  MODIFY `result_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
