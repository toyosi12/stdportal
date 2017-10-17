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
-- Table structure for table `class_tb`
--

CREATE TABLE `class_tb` (
  `c_id` int(4) NOT NULL,
  `name` varchar(20) DEFAULT ' ',
  `description` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_tb`
--

INSERT INTO `class_tb` (`c_id`, `name`, `description`) VALUES
(2, 'Dip.C.M.', 'Diploma in Church Music'),
(3, 'B.Th.', 'Bachelor of Theology'),
(4, 'M.Div.Th', 'Master of Divinity in Theology'),
(5, 'MATS', 'Master of Arts in Theological Studies'),
(6, 'M.A.C.M.', 'Master of Arts in Church Music'),
(8, 'M.C.M.', 'Master of Church Music'),
(9, 'D.Min', 'Doctor of Ministry'),
(11, 'D.M.A.', 'Doctor of Musical Arts'),
(12, 'B.Th.Miss', 'Bachelor of Theology in Missiology'),
(13, 'B.CM', 'Bachelor in Church Music'),
(14, 'M.Div.R.E', 'Master of Divinity in Religious Education'),
(15, 'M.Div.Miss', 'Master of Divinity in Missiology'),
(16, 'M.Div.C.M', 'Master of Divinity in Church Music'),
(17, 'M.Th.R.E', 'Master of Theology in Religious Education'),
(18, 'B.R.E', 'Bachelor in Religious Studies'),
(19, 'Ph.D Th.', 'Doctor Of Theology'),
(22, 'Ph.D.R.E.', 'Doctor of Religious Education'),
(24, 'M.Th C.PR', 'Masters of Theology in Christian Preaching'),
(25, 'M.Th W.R.', 'Masters of Theology in World Religion'),
(26, 'M.Th Miss.', 'Masters of Theology in Missiology'),
(27, 'M.Th PCC', 'Master of Theology in Pastoral Care and Counseling'),
(28, 'M.Th S.T', 'Master of Theology in Systematic Theology'),
(29, 'M.Th C.Ethics', 'Master of Theology in Christian Ethics'),
(30, 'M.Th OT', 'Master of Theology in Old Testerment'),
(31, 'MABS', 'Master of Arts Biblical Studies'),
(32, 'MACE', 'Master of Arts Christian Education'),
(35, 'M.Phil', 'Master of Philosophy'),
(36, 'M.Th. NT', 'Master of Theology in New Testament'),
(37, 'M. Th C.H.', 'Master of Theology in Church History'),
(38, 'Ph.D. OT', 'Doctor of Philosophy in Old Testament Language & Literature'),
(39, 'Ph.D. NT', 'Doctor of Philosophy in New Testament Language & Literature'),
(40, 'Ph.D. CH', 'Doctor of Philosophy in Church History'),
(44, 'Ph.D. PCC', 'Doctor of Philosophy in Pastoral Care & Counselling'),
(45, 'Ph.D. WRE', 'Doctor of Philosophy in World Religions'),
(46, 'Ph.D. STT', 'Doctor of Philosophy in Systematic Theology'),
(47, 'Ph.D. MSS', 'Doctor of Philosophy in Missiology'),
(48, 'Ph.D. CET', 'Doctor of Philosophy in Christian Ethics'),
(49, 'Ph.D. C.PR', 'Doctor of Philosophy in Christian Preaching'),
(50, 'Ph.D. C.PH', 'Doctor of Philosophy in Christian Philosophy'),
(51, 'M. Th. CH', 'Master of Theology in Church History'),
(53, 'Dip. W.M.', 'Diploma in Women Ministry'),
(54, 'Dip.WTC', 'Women Traninig Centre Diploma Programme'),
(55, 'M.Div.Th[S]', 'Master of Divinity in Theology [Sandwitch]'),
(56, 'M.Th I S', 'Master of Theology Intercultural Studies'),
(57, 'M.Th I.S', 'Master of Theology Intercultural Studies'),
(58, 'M.Th', 'Masters Of Theology'),
(59, 'B.CM [A]', 'Bachelor of Church Music African'),
(60, 'B.CM [W]', 'Bachelor of Church Music Western'),
(61, 'M.Div.CM [A]', 'Master of Divinity in Church in Music African'),
(62, 'M.Div.CM [W]', 'Master of Divinity in Church in Music Western'),
(63, 'M.C.M [A]', 'Master of Church Music African'),
(64, 'M.C.M [W]', 'Master of Church Music Western'),
(65, 'M.Th C.PH', 'Master of Theology in Christian Philosophy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_tb`
--
ALTER TABLE `class_tb`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_tb`
--
ALTER TABLE `class_tb`
  MODIFY `c_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
