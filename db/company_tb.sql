-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 03:44 PM
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
-- Table structure for table `company_tb`
--

CREATE TABLE `company_tb` (
  `company_id` int(4) NOT NULL,
  `path` varchar(40) DEFAULT NULL,
  `name` varchar(60) DEFAULT ' ',
  `address` varchar(200) DEFAULT ' ',
  `phone1` varchar(15) NOT NULL DEFAULT '  ',
  `phone2` varchar(15) DEFAULT ' ',
  `email` varchar(25) NOT NULL DEFAULT ' ',
  `website` varchar(25) DEFAULT ' ',
  `system` varchar(20) DEFAULT ' ',
  `banner` varchar(25) DEFAULT NULL,
  `logo` varchar(200) NOT NULL,
  `adm_initial` varchar(10) DEFAULT ' ',
  `b_method` varchar(25) DEFAULT ' ',
  `a_charges` varchar(25) DEFAULT ' ',
  `ac_billing` varchar(25) DEFAULT ' ',
  `r_access` varchar(25) DEFAULT ' ',
  `t_access` varchar(25) DEFAULT ' ',
  `f_accounting` varchar(10) DEFAULT ' ',
  `std_prefix` varchar(10) DEFAULT ' ',
  `sta_prefix` varchar(10) DEFAULT ' ',
  `r_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_tb`
--

INSERT INTO `company_tb` (`company_id`, `path`, `name`, `address`, `phone1`, `phone2`, `email`, `website`, `system`, `banner`, `logo`, `adm_initial`, `b_method`, `a_charges`, `ac_billing`, `r_access`, `t_access`, `f_accounting`, `std_prefix`, `sta_prefix`, `r_time`) VALUES
(18, 'asset/banner.png', 'The Nigerian Baptist Theological Seminary', 'Along Ogbomoso-Ilorin Road Ogbomoso, <br> Oyo-State, <br>Nigeria.', '08062444583', '08062444583', 'info@nbts.edu.ng', 'www.nbts.edu.ng', 'University System', '', '', 'NBTS', 'Per Session', '', '', 'Yes for both Guardian and', 'Yes for both Guardian and', '01/01/2014', '', 'NBTS', '08:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_tb`
--
ALTER TABLE `company_tb`
  ADD PRIMARY KEY (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_tb`
--
ALTER TABLE `company_tb`
  MODIFY `company_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
