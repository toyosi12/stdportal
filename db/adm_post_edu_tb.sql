-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2017 at 08:12 PM
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
-- Table structure for table `adm_post_edu_tb`
--

CREATE TABLE `adm_post_edu_tb` (
  `edu_id` int(10) NOT NULL,
  `name_institute` varchar(100) NOT NULL,
  `year_begin` varchar(5) NOT NULL,
  `year_end` varchar(5) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `intent_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adm_post_edu_tb`
--

INSERT INTO `adm_post_edu_tb` (`edu_id`, `name_institute`, `year_begin`, `year_end`, `degree`, `intent_id`) VALUES
(1, 'ssdasdasdfasdf', '1999', '2000', 'Second Class Upper', 2),
(2, 'St Micheal Primary School', '1988', '1993', 'Primary School Certificate', 4),
(4, 'COLLEGE OF AGRICULTURE JALINGO TARABA STATE', '2010', '2011', 'HND/LOWER CREDIT', 54),
(5, 'COLLEGE OF AGRICULTURE JALINGO TARABA STATE', '2007', '2008', 'ND/LOWER CREDIT', 54),
(7, 'SAYLOT COMPUTER EDUCATIONAL CENTRE MURTALA SCHOOL YELWA YAURI LGA KEBBI STATE', '2012', '2013', 'CERTIFICATE IN MICROSOFT OFFICE PROFESSIONAL', 54),
(8, 'Federal Polytechnic Mubi', '2007', '2009', 'Diploma/Distinction', 55),
(9, 'Adamawa State Univeersity, Mubi', '2010', '2014', 'Degree/ Second Class Upper Division', 55),
(10, 'Rural Information and Communication Technology in Colloboration with Adamawa State University, Mubi', '2009', '2010', 'Certificate in Computer/Upper Credit', 55),
(11, 'Rural Information and Communication Technology in Colloboration with Adamawa State University, Mubi', '2009', '2010', 'Certificate in Computer/Upper Credit', 55),
(14, 'Obafemi Awolowo University', '2006', '2012', 'BSc. Economics (second class lower)', 85),
(15, 'NBTS', '2003', '2007', 'BTh/2.2', 95),
(16, 'University of Ibadan', '2003', '2008', 'BA/2.2', 95),
(17, 'National Teachers Institute, Kaduna', '2011', '2012', 'PGDE', 95),
(18, 'University of Ibadan', '2012', '2014', 'MA in Christian Ethics', 95),
(19, 'OSUN STATE COLLEGE OF TECHNOLOGY, ESA OKE', '2002', '2008', 'HND LOWER CREDIT', 97),
(21, 'Ladoke Akintola University of Technology, Ogbomoso', '1999', '2005', 'Second class upper', 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_post_edu_tb`
--
ALTER TABLE `adm_post_edu_tb`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `intent_id` (`intent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_post_edu_tb`
--
ALTER TABLE `adm_post_edu_tb`
  MODIFY `edu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
