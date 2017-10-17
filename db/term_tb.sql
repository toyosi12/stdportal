-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:08 PM
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
-- Table structure for table `term_tb`
--

CREATE TABLE `term_tb` (
  `term_id` int(4) NOT NULL,
  `term` varchar(20) DEFAULT NULL,
  `performance_pct` int(10) DEFAULT NULL,
  `session_id` int(4) DEFAULT NULL,
  `begins` date DEFAULT NULL,
  `ends` date DEFAULT NULL,
  `fee` int(8) DEFAULT '0',
  `discount_id` int(4) NOT NULL DEFAULT '1',
  `sms` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term_tb`
--

INSERT INTO `term_tb` (`term_id`, `term`, `performance_pct`, `session_id`, `begins`, `ends`, `fee`, `discount_id`, `sms`) VALUES
(9, 'First Semester', NULL, 4, '2016-08-29', '2017-03-31', 0, 1, 0),
(10, 'Second Semester', NULL, 4, '2017-04-01', '2017-08-11', 0, 1, 0),
(11, 'First Semester', NULL, 5, '2017-08-14', '2017-12-31', 0, 1, 0),
(12, 'Second Semester', NULL, 5, '2018-01-01', '2018-05-31', 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `term_tb`
--
ALTER TABLE `term_tb`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `ends` (`ends`),
  ADD UNIQUE KEY `begins` (`begins`),
  ADD KEY `session_id_2` (`session_id`),
  ADD KEY `discount_id` (`discount_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `term_tb`
--
ALTER TABLE `term_tb`
  MODIFY `term_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `term_tb`
--
ALTER TABLE `term_tb`
  ADD CONSTRAINT `term_tb_ibfk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount_tb` (`discount_id`),
  ADD CONSTRAINT `term_tb_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `session_tb` (`session_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
