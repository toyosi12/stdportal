-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:06 PM
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
-- Table structure for table `session_tb`
--

CREATE TABLE `session_tb` (
  `session_id` int(4) NOT NULL,
  `session_year` varchar(9) DEFAULT ' ',
  `term` int(1) DEFAULT '3',
  `performances` int(4) DEFAULT NULL,
  `comment` varchar(120) DEFAULT NULL,
  `fee` int(8) DEFAULT '0',
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session_tb`
--

INSERT INTO `session_tb` (`session_id`, `session_year`, `term`, `performances`, `comment`, `fee`, `status`) VALUES
(4, '2016/2017', 2, NULL, '2016/2017', 0, 3),
(5, '2017/2018', 2, NULL, '2017/2018', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `session_tb`
--
ALTER TABLE `session_tb`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_year_2` (`session_year`),
  ADD KEY `session_year` (`session_year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `session_tb`
--
ALTER TABLE `session_tb`
  MODIFY `session_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
