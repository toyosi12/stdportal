-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:04 PM
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
-- Table structure for table `fee_tb`
--

CREATE TABLE `fee_tb` (
  `fee_id` int(11) NOT NULL,
  `ac_id` varchar(6) DEFAULT NULL,
  `title` varchar(25) NOT NULL,
  `description` varchar(400) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_tb`
--

INSERT INTO `fee_tb` (`fee_id`, `ac_id`, `title`, `description`, `amount`) VALUES
(13, '4008', 'NBTS Exams Fees', 'NBTS Exams Fees', 0),
(14, '4001', 'UI Tuition Fee', 'UI Tuition Fee', 50000),
(15, '4003', 'Dissertation Supervision ', 'Dissertation Supervision Fee', 0),
(16, '4004', 'Internet Facilities', 'Internet Facilities', 0),
(17, '4009', 'UI External Examinations', 'UI External Examinations', 12000),
(19, '4012', 'Services &amp; Maintenanc', 'Services &amp; Maintenance Fee', 12000),
(20, '4000', 'NBTS Tuition Fee', 'NBTS Tuition Fee', 0),
(21, '4013', 'Capital Dev. Contribution', 'Capital Development Contribution', 0),
(22, '4014', 'OJOT Journal', 'OJOT Journal', 3000),
(23, '4015', 'Nigerian Baptist Magazine', 'Nigerian Baptist Magazine', 0),
(24, '4005', 'Uni. of Ibadan Gown', 'University of Ibadan Gown per event', 0),
(25, '4005', 'NBTS Gown', 'NBTS Gown per event', 0),
(26, '4006', 'Student Hand Book', 'Student Hand Book', 0),
(27, '4006', 'Seminary Catalogue', 'Seminary Catalogue', 0),
(28, '4007', 'Student I.D. Card', 'Student Identity Card.', 0),
(29, '4017', 'Medical Bill ', 'Medical Bill ', 5000),
(30, '4011', 'Graduation Charges', 'Graduation Charges', 0),
(31, '4018', 'Medical Test for New stud', 'Comprehensive Medical test for new student', 0),
(32, '4020', 'Use of Musical Instrument', 'Use of Musical Instrument', 0),
(33, '4063', 'Ministers Conference', 'Ministers Conference', 2000),
(39, '4010', 'Library Fee', 'Library Fee', 0),
(40, '4005', 'Matriculation', 'Matriculation', 0),
(41, '4027', 'Result Confirmation', 'Result Confirmation', 0),
(42, '4022', 'NBC General Worker Conf.', 'NBC General Workers Conference', 0),
(43, '4026', 'Sporting &amp; Recreation', 'Sporting &amp; Recreation', 2000),
(44, '4019', 'Accreditation Fee', 'Accreditation Fee', 0),
(45, '4039', 'Minimester/Special Semina', 'Minimester/Special Seminars Fee', 5000),
(46, '4021', 'Teaching Practice Fee', 'Teaching Practice Fee', 0),
(47, '4002', 'WTC Tuition Fee', 'WTC Tuition Fee', 0),
(49, '4028', 'Students Educational Tour', 'Students Educational Tour', 0),
(50, '4023', 'Hostel Accommodation Bill', 'Hostel Accommodation Bill', 0),
(51, '4024', 'Electricity Fee', 'Electricity Fee', 0),
(52, '4025', 'Water Fee', 'Water Fee', 0),
(56, '4016', 'NBTS Calendar Fee', 'NBTS Calendar Fee', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fee_tb`
--
ALTER TABLE `fee_tb`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `ac_id_2` (`ac_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fee_tb`
--
ALTER TABLE `fee_tb`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fee_tb`
--
ALTER TABLE `fee_tb`
  ADD CONSTRAINT `fee_tb_ibfk_1` FOREIGN KEY (`ac_id`) REFERENCES `account_tb` (`ac_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
