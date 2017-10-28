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
-- Table structure for table `adm_churchrec_tb`
--

CREATE TABLE `adm_churchrec_tb` (
  `churchrec_id` int(10) NOT NULL,
  `howlongknown` varchar(20) NOT NULL,
  `howbemem` varchar(50) NOT NULL,
  `howbememo` varchar(50) DEFAULT NULL,
  `active` varchar(10) NOT NULL,
  `ifactive` varchar(100) DEFAULT NULL,
  `demcall` varchar(10) NOT NULL,
  `ifdemcall` varchar(100) DEFAULT NULL,
  `dependtrust` varchar(10) NOT NULL,
  `emotions` varchar(10) NOT NULL,
  `moralspirit` varchar(10) NOT NULL,
  `interpersonal` varchar(10) NOT NULL,
  `improve` varchar(100) NOT NULL,
  `leadership` varchar(100) NOT NULL,
  `atitude` varchar(10) NOT NULL,
  `discipline` varchar(10) NOT NULL,
  `ifdiscipline` varchar(100) DEFAULT NULL,
  `involvement` varchar(100) NOT NULL,
  `timerec` date NOT NULL,
  `intent_id` int(10) NOT NULL,
  `church` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_churchrec_tb`
--
ALTER TABLE `adm_churchrec_tb`
  ADD PRIMARY KEY (`churchrec_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_churchrec_tb`
--
ALTER TABLE `adm_churchrec_tb`
  MODIFY `churchrec_id` int(10) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
