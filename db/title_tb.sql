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
-- Table structure for table `title_tb`
--

CREATE TABLE `title_tb` (
  `title_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_tb`
--

INSERT INTO `title_tb` (`title_id`, `title`, `description`) VALUES
(1, 'Mr', ''),
(2, 'Mrs', 'Mrs'),
(3, 'Dr.', 'Dr.'),
(4, 'Rev.Dr.', 'Rev.Dr.'),
(5, 'Pastor', 'Pastor'),
(6, 'Rev.', 'Rev.'),
(7, 'Dr. Mrs.', 'Dr. Mrs.'),
(8, 'Rev. Mrs.', 'Rev. Mrs.'),
(10, 'Pastor Mrs', 'Pastor Mrs.'),
(11, 'Pastor Dr.(Mrs)', 'Pastor Dr.(Mrs)'),
(12, 'Rev. Dr.(Mrs)', 'Rev. Dr.(Mrs)'),
(13, 'Prof.', 'Prof.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `title_tb`
--
ALTER TABLE `title_tb`
  ADD PRIMARY KEY (`title_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `title_tb`
--
ALTER TABLE `title_tb`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
