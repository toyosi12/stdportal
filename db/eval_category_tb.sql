-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:01 PM
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
-- Table structure for table `eval_category_tb`
--

CREATE TABLE `eval_category_tb` (
  `e_cat_id` int(4) NOT NULL,
  `eval_category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eval_category_tb`
--

INSERT INTO `eval_category_tb` (`e_cat_id`, `eval_category`) VALUES
(3, 'THE TEACHER'),
(4, 'PERFORMANCE'),
(5, 'STUDENT OUTCOMES'),
(6, 'EVALUATION AND GRADING'),
(7, 'TEACHER-STUDENT RELATIONS'),
(8, 'GENERAL'),
(9, 'SUPPLEMENTARY QUESTIONS ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eval_category_tb`
--
ALTER TABLE `eval_category_tb`
  ADD PRIMARY KEY (`e_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eval_category_tb`
--
ALTER TABLE `eval_category_tb`
  MODIFY `e_cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
