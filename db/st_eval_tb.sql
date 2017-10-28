-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:07 PM
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
-- Table structure for table `st_eval_tb`
--

CREATE TABLE `st_eval_tb` (
  `es_id` int(11) NOT NULL,
  `ev_id` int(11) DEFAULT NULL,
  `r_id` int(11) NOT NULL,
  `eval` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_eval_tb`
--

INSERT INTO `st_eval_tb` (`es_id`, `ev_id`, `r_id`, `eval`) VALUES
(1, 5, 6474, '3'),
(2, 7, 6474, '2'),
(3, 8, 6474, '3'),
(4, 9, 6474, '3'),
(5, 10, 6474, '4'),
(6, 11, 6474, '2'),
(7, 13, 6474, '4'),
(8, 14, 6474, '2'),
(9, 15, 6474, '2'),
(10, 16, 6474, '4'),
(11, 17, 6474, '2'),
(12, 18, 6474, '4'),
(13, 19, 6474, '4'),
(14, 20, 6474, '3'),
(15, 21, 6474, '2'),
(16, 22, 6474, '4'),
(17, 23, 6474, '2'),
(18, 24, 6474, '4'),
(19, 25, 6474, '4'),
(20, 26, 6474, '2'),
(21, 27, 6474, '4'),
(22, 28, 6474, '4'),
(23, 29, 6474, '3'),
(24, 30, 6474, '3'),
(25, 31, 6474, '3'),
(26, 32, 6474, '4'),
(27, 33, 6474, '2'),
(28, 34, 6474, '4'),
(29, 35, 6474, '2'),
(30, 36, 6474, '4'),
(31, 37, 6474, 'Nothing'),
(32, 38, 6474, 'Nothing'),
(33, 39, 6474, 'Nothing'),
(34, 40, 6474, 'Nothing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `st_eval_tb`
--
ALTER TABLE `st_eval_tb`
  ADD PRIMARY KEY (`es_id`),
  ADD KEY `ev_id` (`ev_id`),
  ADD KEY `r_id` (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `st_eval_tb`
--
ALTER TABLE `st_eval_tb`
  MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `st_eval_tb`
--
ALTER TABLE `st_eval_tb`
  ADD CONSTRAINT `st_eval_tb_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `result_tb` (`r_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `st_eval_tb_ibfk_2` FOREIGN KEY (`ev_id`) REFERENCES `evaluation_tb` (`eval_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
