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
-- Table structure for table `evaluation_tb`
--

CREATE TABLE `evaluation_tb` (
  `eval_id` int(11) NOT NULL,
  `evaluation` varchar(150) NOT NULL,
  `etype_id` int(11) NOT NULL,
  `e_cat_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluation_tb`
--

INSERT INTO `evaluation_tb` (`eval_id`, `evaluation`, `etype_id`, `e_cat_id`) VALUES
(5, 'The teacher demonstrated evidence of salvation and Christian experience', 2, 3),
(7, 'The teacher comported himself and dressed appropriately', 2, 3),
(8, 'The teacher demonstrated moral uprightness in words and actions', 2, 3),
(9, 'The teacher was an effective role model of a Christian minister and mentors', 2, 3),
(10, 'The teacher showed the mastery of the subject matter', 2, 4),
(11, 'The teacher was enthusiastic when teaching', 2, 4),
(13, 'The teacher communicated at a pace suitable for student\'s understanding', 2, 4),
(14, 'Material was presented in a well-organized manner', 2, 4),
(15, 'The teacher usually begins and ends the class on time and maintained class discipline', 2, 4),
(16, 'The teacher\'s explanations were clear', 2, 4),
(17, 'The syllabus clearly stated the objectives and expectations of the teacher', 2, 5),
(18, 'The course helped me to become a more critical thinker', 2, 5),
(19, 'The course stimulated my desire for further study in this subject', 2, 5),
(20, 'I understood the material presented in this course', 2, 5),
(21, 'The teaching methods and activities were effective in helping to learn', 2, 5),
(22, 'The amount of work was appropriate for the credit received', 2, 5),
(23, 'Of the courses I have had at the Seminary, this course is needed for ministry', 2, 5),
(24, 'They gave me skills that will enhance my ministry', 2, 5),
(25, 'Course objectives were reflected in the tests and other measurements of learning', 2, 6),
(26, 'Exams emphasized understanding rather than memorization', 2, 6),
(27, 'Sufficient feedback was provided on graded materials on time', 2, 6),
(28, 'The teacher adequately assessed how well students accomplished the course objectives', 2, 6),
(29, 'Relationships with students seemed important to the teacher', 2, 7),
(30, 'Assistance from the teacher was available outside of class', 2, 7),
(31, 'The teacher was sensitive to the cultural and gender difference of students', 2, 7),
(32, 'The teacher met informally with students outside of class', 2, 7),
(33, '	The teacher showed interest in students\' lives and counseled them', 2, 7),
(34, 'I would recommend this course to a fellow student', 2, 8),
(35, 'I would recommend this teacher to a fellow student', 2, 8),
(36, 'The overall quality of instruction in this course was high', 2, 8),
(37, 'What do you admire most in the approach or method of the teacher?', 3, 9),
(38, 'What do you admire least about the teacher?', 3, 9),
(39, 'In what ways can the teacher improve his or her teaching in this course or make it more interesting and relevant?', 3, 9),
(40, 'Any other comment?', 3, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluation_tb`
--
ALTER TABLE `evaluation_tb`
  ADD PRIMARY KEY (`eval_id`),
  ADD KEY `etype_id` (`etype_id`),
  ADD KEY `e_cat_id` (`e_cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluation_tb`
--
ALTER TABLE `evaluation_tb`
  MODIFY `eval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `evaluation_tb`
--
ALTER TABLE `evaluation_tb`
  ADD CONSTRAINT `evaluation_tb_ibfk_1` FOREIGN KEY (`etype_id`) REFERENCES `eval_type_tb` (`etype_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluation_tb_ibfk_2` FOREIGN KEY (`e_cat_id`) REFERENCES `eval_category_tb` (`e_cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
