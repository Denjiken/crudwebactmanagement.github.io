-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 05:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `activity_name` varchar(100) DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  `activity_description` varchar(255) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `activity_name`, `activity_date`, `activity_description`, `instructor_id`, `category_id`) VALUES
(12, 'anyware', '2023-06-12', 'gawa ka lang basta', 34789260, 12),
(13, 'anyware', '2023-06-12', 'gawa ka lang basta', 34789261, 13),
(14, 'anyware', '2023-06-13', 'hdgsvhfvhsgfako', 34789262, 14),
(15, 'activity_management_system', '2023-06-11', 'create a web application in php', 34789263, 15),
(16, 'updates activity', '2023-06-17', 'asjgdahgsfdghafdhjkasdjgfsdhfjgfljnbnd \r\nsgsgisdhja\r\nsgfusgwhggfsf\r\nshfsgf', 34789264, 16),
(17, 'python createddd', '2023-06-17', 'gawa ka lang basta', 34789265, 17);

-- --------------------------------------------------------

--
-- Table structure for table `activity_categories`
--

CREATE TABLE `activity_categories` (
  `category_id` int(11) NOT NULL,
  `study_area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_categories`
--

INSERT INTO `activity_categories` (`category_id`, `study_area`) VALUES
(1, 'computer science'),
(2, 'information technology'),
(3, 'information technology'),
(4, 'environmental science'),
(5, 'Computer Science'),
(6, 'Computer Science'),
(7, 'Computer Science'),
(8, 'environmental science'),
(9, 'environmental science'),
(10, 'Computer Science'),
(11, 'environmental science'),
(12, 'environmental science'),
(13, 'environmental science'),
(14, 'environmental science'),
(15, 'Information Technology'),
(16, 'Computer Science'),
(17, 'environmental science'),
(18, 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `instructor_id` int(11) NOT NULL,
  `instructor_name` varchar(50) DEFAULT NULL,
  `instructor_email` varchar(100) DEFAULT NULL,
  `instructor_address` varchar(255) DEFAULT NULL,
  `instructor_gender` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`instructor_id`, `instructor_name`, `instructor_email`, `instructor_address`, `instructor_gender`) VALUES
(68473, 'pachamba', 'vicentearman7@gmail.com', 'Puerto Princesa City', 'male'),
(623562, 'IKAW NA YAN', 'hazuki@gmail.com', 'Hazukidimahanapnalugar', 'female'),
(22225566, 'Hazuki', 'hazuki@gmail.com', 'Hazukidimahanapnalugar', 'male'),
(34789248, 'kaneki', 'gaye@gmail.com', 'Puerto Princesa City', 'female'),
(34789256, 'IKAWWWWW', 'vicentearman7@gmail.com', 'Puerto Princesa City', 'male'),
(34789264, 'kaneki kenzu', 'kanekiken@gmail.com', NULL, NULL),
(34789265, 'armando', 'hagdghshg@gmail.com', NULL, NULL),
(34789266, 'kaneki', 'dgfdsftyf@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registration_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`registration_id`, `student_id`, `activity_id`) VALUES
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_email` varchar(100) DEFAULT NULL,
  `student_year` enum('first year','second year','third year','fourth year','fifth year') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `student_email`, `student_year`) VALUES
(1, 'hjgdfgsjf', 'hsdggh@gmail.com', ''),
(2, 'hfkjhsdfh', 'hasgdhga@gmail.com', ''),
(3, 'hjgdfgsjf', 'vicentearman7@gmail.com', ''),
(4, 'anoytherden', 'denjiken@gmail.com', ''),
(5, 'vicente arman', 'dgfdsftyf@gmail.com', ''),
(6, 'vicente arman', 'vicentearman7@gmail.com', ''),
(7, 'anoytherden', 'root@localhost', ''),
(8, 'vicente arman', 'dgfdsftyf@gmail.com', ''),
(9, 'Arman Vicente', 'armanvicente4@gmail.com', ''),
(10, 'Vicente Arman', 'armanvicente4@gmail.com', ''),
(11, 'Arman Vicente', 'vicentearman7@gmail.com', ''),
(12, 'Arman Vicente', 'vicentearman7@gmail.com', ''),
(13, 'Arman Vicente', 'vicentearman7@gmail.com', ''),
(14, 'vicente arman', 'root@localhost', ''),
(15, 'Jaycris Vicente', 'jaycrisvicente@gmail.com', ''),
(16, 'Arman Vicente', 'armanvicente4@gmail.com', ''),
(17, 'vicente arman', 'hazuki@gmail.com', ''),
(18, 'Arman Vicente', 'hazuki@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_type` enum('instructor','student') NOT NULL DEFAULT 'instructor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `first_name`, `last_name`, `user_email`, `user_password`, `user_type`) VALUES
(6477, 'arman', NULL, NULL, NULL, '$2y$10$l7vs.j.g9GQxlsOvERH4tubcjW1sTtScjiLPmxjiv//PB2tNWx8PS', 'instructor'),
(647763, 'arman', NULL, NULL, NULL, '$2y$10$z1kwaa6QrNi7xdzSMRKAnO8VUTt0qrphg1GmB3wDR0Vkhgs28Hwtu', 'student'),
(6477614, 'arman', NULL, NULL, NULL, 'hans', 'student'),
(6477617, 'kaneki', NULL, NULL, NULL, 'vicente', 'student'),
(6477619, 'kaneki', NULL, NULL, NULL, 'vicente', 'student'),
(6477630, 'kaneki', NULL, NULL, NULL, '$2y$10$O/9E/GCE6bL16llpRjR10OXXWiDyhFPh6mWdB.53u1EQE9FG29IRa', 'student'),
(64776485, 'arman', NULL, NULL, NULL, '$2y$10$gOuw/Ahmods4pYBx11Kil.fb4CaJJ2dwIB5dAaNbf4fWEpxrLPCc2', 'student'),
(1685577914, 'vicente', NULL, NULL, NULL, '$2y$10$6BJ37tbMT.VjB0lMC6fVA.lVix2cjIaufHQdTSSJAWV3.seZPL6ra', 'student'),
(1685577955, 'vicentearman', NULL, NULL, NULL, '$2y$10$DesR3kWkOtwT5wCMX8tNnugtXVVuUUJiuGb2zAPH2pKnf7iBc41Py', 'instructor'),
(1685580156, 'rdgfdydtrrstf', NULL, NULL, NULL, '$2y$10$ulRqa2Cf96BqgFnkTFcwiOvILIpvCsOt4VCG2vgsHfmg0HjdZ/WZu', 'instructor'),
(1685580292, 'haiseken', NULL, NULL, NULL, '$2y$10$TwGRode9P.FGgz9ouiqX8OTAeAVh0WGSnnr1XqSrE/sO1mPJRNi.K', 'instructor'),
(1685580454, 'kenehaise', NULL, NULL, NULL, '$2y$10$vzytGSrGNblvzcuJLgbCFufMtAg/O.WLGGTfGfBJAU7ajYw6IBV4q', 'student'),
(1685581466, 'whatif', NULL, NULL, NULL, '$2y$10$KQ6OECnEsI90QPwee5EddOGL6fFNcptM2QHzAzXYXMHlYzucYJsF2', 'instructor'),
(1685605802, 'Kaizu', NULL, NULL, NULL, '$2y$10$B5HAjHiBcTbM7bbDgJnb9ujT3OQIoxixxKjYqpeq8/5DhIuHoSSwW', 'student'),
(1685664766, 'Haiyyy', NULL, NULL, NULL, '$2y$10$qHvEbym2fiTWxh8x.l6j7O4M6sGr07KTh0p/LwyHo/scs5M5yhnNu', 'student'),
(1685665507, 'Haiyyyyy', NULL, NULL, NULL, '$2y$10$jmcmxFSMuUkuFxWxvktwf.T7viwyZZIO5Wr9I.3ybIMxWDnfw4HL2', 'student'),
(1685666120, 'Haiyyyyyy', NULL, NULL, NULL, '$2y$10$XgZiYRvd3olxlZiz1RRCQuudw8L2R9rd/MbxYCaQ1GAVOQwcDIZue', 'student'),
(1685666180, 'Haiyyyyyyy', NULL, NULL, NULL, '$2y$10$67W5qr6rbdM59QLRnzs/guDZQ45w3dIbAFL4Z5B/8seQwsQEF8zJi', 'instructor'),
(1685666229, 'hwyyyyyy', NULL, NULL, NULL, '$2y$10$W4yf8C6FrGrNorUycUqmR.3wKnXLbJSuiPUdY2l6kY7aUAjYC2wTq', 'instructor'),
(1685668683, 'hello', NULL, NULL, NULL, '$2y$10$VNRE/kpIELZRZMnJPqf8QeWcSkjo6AbHgB0GrRcITWu03TCnLKk2W', 'student'),
(1685668835, 'armando', NULL, NULL, NULL, '$2y$10$ofttSMvVFsrWu0CX/rRTUetMBAEe4icMTmp7LHJ3oJSLu1oIk0E72', 'student'),
(1685668933, 'kanekiii', NULL, NULL, NULL, '$2y$10$9OWZHQkeMyf50SAwR2y8le7.kDWLObPaQbj9BcWrpsr3bj7r9rBlW', 'instructor'),
(1685669183, 'kanekun', NULL, NULL, NULL, '$2y$10$PIxZ9h370eQfom.thIAZb.mZfA1iAO4182/dka0AW/F6LTRxWfDNu', 'student'),
(2147483647, 'arman', NULL, NULL, NULL, 'hans', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `activity_categories`
--
ALTER TABLE `activity_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `activity_categories`
--
ALTER TABLE `activity_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34789267;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`activity_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
