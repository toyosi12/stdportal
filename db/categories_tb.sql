-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 03:42 PM
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
-- Table structure for table `categories_tb`
--

CREATE TABLE `categories_tb` (
  `cat_id` int(4) NOT NULL,
  `category` varchar(20) DEFAULT ' ',
  `no_of_subject` int(4) DEFAULT '10',
  `description` varchar(160) DEFAULT ' ',
  `staff_id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_tb`
--

INSERT INTO `categories_tb` (`cat_id`, `category`, `no_of_subject`, `description`, `staff_id`, `faculty_id`) VALUES
(3, 'DTh NT', 10, 'Department of Theology (N.T)', 28, 3),
(4, 'DTh', 30, 'Department of Theology', 28, 3),
(5, 'DACM', 25, 'Department of African Church Music', 19, 1),
(6, 'DWCM', 25, 'Department of Western Church Music', 20, 1),
(7, 'DME', 35, 'Department of Missions and Evangelism', 23, 3),
(9, 'DRE', 35, 'Department of Religious Education', 17, 2),
(10, 'DTE', 10, 'Department of Teacher Education', 20, 2),
(11, 'DCE', 10, 'Department of Community Education', 22, 2),
(12, 'DBS', 10, 'Department of Biblical Studies', 15, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_tb`
--
ALTER TABLE `categories_tb`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `category` (`category`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_tb`
--
ALTER TABLE `categories_tb`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_tb`
--
ALTER TABLE `categories_tb`
  ADD CONSTRAINT `categories_tb_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_tb` (`faculty_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
