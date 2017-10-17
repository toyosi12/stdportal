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
-- Table structure for table `adm_uploads`
--

CREATE TABLE `adm_uploads` (
  `upload_id` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `file` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `intent_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adm_uploads`
--

INSERT INTO `adm_uploads` (`upload_id`, `Name`, `file`, `type`, `intent_id`) VALUES
(1, 'wdwdwdwed', 'Bello Olabimpe Idowu (2).docx', 'Academic Certificate', 2),
(2, 'fgsdgdg', 'Bello Olabimpe Idowu (2).docx', 'Photo Card', 2),
(5, 'MR. DANGANA IBRAHIM', 'DANGANA HND RESULT 2.jpg', 'Academic Certificate', 54),
(4, 'MR. DANGANA IBRAHIM', 'DANGANA NABTEB RESULT.jpg', 'Academic Certificate', 54),
(6, 'MR. DANGANA IBRAHIM', 'DANGANA NECO 4.jpg', 'Academic Certificate', 54),
(7, 'MR. DANGANA IBRAHIM', 'DANGANA CHRISTIAN EXPERIENCE.docx', 'Christian Experience', 54),
(8, 'MR. DANGANA IBRAHIM', 'DANGANA MY CALL CONVICTION.docx', 'My Call Conviction', 54),
(9, 'MR.DANGANA IBRAHIM', 'DANGANA CONVICTION TO ENTER SEMINARY.docx', 'Conviction to Enter Seminary', 54),
(10, 'Zacchaeus Sekoni', 'married  cert(3).jpg', 'Marriage Certificate', 85),
(11, 'Zacchaeus Sekoni ', 'DEGREE(3).jpg', 'Academic Certificate', 85),
(12, 'Zacchaeus sekoni', 'WAEC(3).jpg', 'Academic Certificate', 85),
(13, 'Zacchaeus Sekoni', '1(3).jpg', 'Photo Card', 85),
(14, '', '1480598285394.jpg', 'Academic Certificate', 101);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_uploads`
--
ALTER TABLE `adm_uploads`
  ADD PRIMARY KEY (`upload_id`),
  ADD KEY `intent_id` (`intent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_uploads`
--
ALTER TABLE `adm_uploads`
  MODIFY `upload_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
