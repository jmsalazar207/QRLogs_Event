-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2024 at 04:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_logs_qr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participants`
--

CREATE TABLE `tbl_participants` (
  `control_id` int(11) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `position` varchar(50) NOT NULL,
  `office` varchar(100) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `contact_number` varchar(30) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `added_by` varchar(10) NOT NULL,
  `added_datetime` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `updated_by` varchar(20) NOT NULL,
  `datetime_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_participants`
--

INSERT INTO `tbl_participants` (`control_id`, `full_name`, `position`, `office`, `sex`, `email_address`, `contact_number`, `photo`, `added_by`, `added_datetime`, `status`, `nickname`, `updated_by`, `datetime_updated`) VALUES
(1, 'RICHARD MALLARE', 'NETWORK ADMINISTRATOR', 'FO I', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:19:55', 'COMING', '', '03-10961', '2024-10-31 09:19:55'),
(2, 'PAUL GURAY', 'RICTMU HEAD', 'FO I', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:41:24', 'COMING', '', '03-10961', '2024-10-31 09:41:24'),
(3, 'ANDRES ABONG', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO II', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:41:42', 'COMING', '', '03-10961', '2024-10-31 09:41:42'),
(4, 'JOHNMANUEL MAGUIGAD', 'SERVER ADMINISTRATOR', 'FO II', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:42:55', 'COMING', '', '03-10961', '2024-10-31 09:42:55'),
(5, 'JEFFREY SALAZAR', 'SERVER ADMINISTRATOR', 'FO III', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:43:19', 'COMING', '', '03-10961', '2024-10-31 09:43:19'),
(6, 'BRYAN MANIEGO', 'NETWORK ADMINISTRATOR', 'FO III', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:43:33', 'COMING', '', '03-10961', '2024-10-31 09:43:33'),
(7, 'INJEAMAR CAPANGPANGAN', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO IV-A', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:43:49', 'COMING', '', '03-10961', '2024-10-31 09:43:49'),
(8, 'RICAFORT CENIZAL', 'RICTMU HEAD', 'FO IV-A', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:44:17', 'COMING', '', '03-10961', '2024-10-31 09:44:17'),
(9, 'HENZ BAYETA', 'NETWORK ADMINISTRATOR', 'FO IV-B', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:44:29', 'COMING', '', '03-10961', '2024-10-31 09:44:29'),
(10, 'NEONARDO TABIASCO', 'SERVER ADMINISTRATOR', 'FO IV- B', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:45:10', 'COMING', '', '03-10961', '2024-10-31 09:45:10'),
(11, 'RODEL ASPA', 'NETWORK ADMINISTRATOR', 'FO V', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:46:18', 'COMING', '', '03-10961', '2024-10-31 09:46:18'),
(12, 'MARK BARCELON', 'SERVER ADMINISTRATOR', 'FO V', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:46:36', 'COMING', '', '03-10961', '2024-10-31 09:46:36'),
(13, 'MICHAEL ELANGA', 'NETWORK ADMINISTRATOR', 'FO VI', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:46:54', 'COMING', '', '03-10961', '2024-10-31 09:46:54'),
(14, 'HARRY NAVALES', 'SERVER ADMINISTRATOR', 'FO VI', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:47:11', 'COMING', '', '03-10961', '2024-10-31 09:47:11'),
(15, 'VON ADLAON', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO VII', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:47:25', 'COMING', '', '03-10961', '2024-10-31 09:47:25'),
(16, 'RESTITUTO TABASA', 'SERVER ADMINISTRATOR', 'FO VII', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:47:53', 'COMING', '', '03-10961', '2024-10-31 09:47:53'),
(17, 'ELVIN CHUA', 'RICTMU HEAD', 'FO VIII', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:48:07', 'COMING', '', '03-10961', '2024-10-31 09:48:07'),
(18, 'RODOMAR NARTEA', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO VIII', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:49:01', 'COMING', '', '03-10961', '2024-10-31 09:49:01'),
(19, 'JORGE GAGANTING', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO IX', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:49:20', 'COMING', '', '03-10961', '2024-10-31 09:49:20'),
(20, 'MARC PASCUA', 'NETWORK ADMINISTRATOR', 'FO IX', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:49:33', 'COMING', '', '03-10961', '2024-10-31 09:49:33'),
(21, 'ROMER LARIBA', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO X', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:49:54', 'COMING', '', '03-10961', '2024-10-31 09:49:54'),
(22, 'GEMINI GUMISONG JR.', 'SERVER ADMINISTRATOR', 'FO X', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:50:09', 'COMING', '', '03-10961', '2024-10-31 09:50:09'),
(23, 'PETER JOHN SAGA', 'NETWORK ADMINISTRATOR', 'FO XI', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:50:23', 'COMING', '', '03-10961', '2024-10-31 09:50:23'),
(24, 'LARRY PAHILACAN', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FO XI', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:50:36', 'COMING', '', '03-10961', '2024-10-31 09:50:36'),
(25, 'MARC DALIDA', 'NETWORK ADMINISTRATOR', 'FO XII', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:50:56', 'COMING', '', '03-10961', '2024-10-31 09:50:56'),
(26, 'ROD VINCENT BANAGA', 'SERVER ADMINISTRATOR', 'FO XII', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:51:07', 'COMING', '', '03-10961', '2024-10-31 09:51:07'),
(27, 'ARNOLD TANDAGAN', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'CAR', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:51:25', 'COMING', '', '03-10961', '2024-10-31 09:51:25'),
(28, 'DERRECK ALAN BENGSON', 'SERVER ADMINISTRATOR', 'CAR', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:51:49', 'COMING', '', '03-10961', '2024-10-31 09:51:49'),
(29, 'MICHAEL BERAY', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'CARAGA', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:52:04', 'COMING', '', '03-10961', '2024-10-31 09:52:04'),
(30, 'ALLEN HILADO', 'SERVER ADMINISTRATOR', 'CARAGA', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:52:16', 'COMING', '', '03-10961', '2024-10-31 09:52:16'),
(31, 'JAN JULIUS TAGUIAM', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'NCR', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:52:49', 'COMING', '', '03-10961', '2024-10-31 09:52:49'),
(32, 'MIKE ALBERT ALMAZAN', 'SERVER ADMINISTRATOR', 'NCR', 'Open this s', '', '', 'noimg.jpg', '03-10961', '2024-10-31 09:53:12', 'COMING', '', '03-10961', '2024-10-31 09:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timelogs`
--

CREATE TABLE `tbl_timelogs` (
  `log_id` int(11) NOT NULL,
  `log_empno` varchar(10) NOT NULL,
  `log_time` datetime NOT NULL,
  `log_photo` varchar(250) NOT NULL,
  `log_ip` varchar(20) NOT NULL,
  `log_address` varchar(300) NOT NULL,
  `log_latitude` varchar(50) NOT NULL,
  `log_longitude` varchar(50) NOT NULL,
  `db_timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `db_on_change` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_participants`
--
ALTER TABLE `tbl_participants`
  ADD PRIMARY KEY (`control_id`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `datetime_updated` (`datetime_updated`),
  ADD KEY `added_datetime` (`added_datetime`),
  ADD KEY `added_by` (`added_by`),
  ADD KEY `status` (`status`),
  ADD KEY `full_name` (`full_name`),
  ADD KEY `position` (`position`),
  ADD KEY `office` (`office`),
  ADD KEY `photo` (`photo`);

--
-- Indexes for table `tbl_timelogs`
--
ALTER TABLE `tbl_timelogs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_empno` (`log_empno`),
  ADD KEY `log_time` (`log_time`),
  ADD KEY `log_photo` (`log_photo`),
  ADD KEY `log_ip` (`log_ip`),
  ADD KEY `log_address` (`log_address`),
  ADD KEY `log_latitude` (`log_latitude`),
  ADD KEY `log_longitude` (`log_longitude`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_participants`
--
ALTER TABLE `tbl_participants`
  MODIFY `control_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_timelogs`
--
ALTER TABLE `tbl_timelogs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
