-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:00 PM
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
-- Table structure for table `departments_tb`
--

CREATE TABLE `departments_tb` (
  `department_id` int(4) NOT NULL,
  `department_name` varchar(25) DEFAULT ' ',
  `description` varchar(50) DEFAULT ' ',
  `manager_id` int(4) NOT NULL DEFAULT '0',
  `company_id` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments_tb`
--

INSERT INTO `departments_tb` (`department_id`, `department_name`, `description`, `manager_id`, `company_id`) VALUES
(28, 'Administration', 'Administration', 0, 18),
(29, 'Academics', 'Academics', 0, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments_tb`
--
ALTER TABLE `departments_tb`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `company_id` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments_tb`
--
ALTER TABLE `departments_tb`
  MODIFY `department_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments_tb`
--
ALTER TABLE `departments_tb`
  ADD CONSTRAINT `departments_tb_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_tb` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
