-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 04:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
(1, 'RICHARD MALLARE', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE I', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:03:18', 'COMING', '', '03-10961', '2024-11-02 23:03:18'),
(2, 'PAUL GURAY', 'RICTMU HEAD', 'FIELD OFFICE I', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:33', 'COMING', '', '03-10961', '2024-11-02 23:04:33'),
(3, 'ANDRES ABONG', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE II', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:56', 'COMING', '', '03-10961', '2024-11-02 23:04:56'),
(4, 'JOHN MANUEL MAGUIGAD', 'SERVER ADMINISTRATOR', 'FIELD OFFICE II', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:17:22', 'COMING', '', '03-10961', '2024-11-02 23:17:22'),
(5, 'JEFFREY MELQUIADES SALAZAR', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE III', 'MALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 22:56:36', 'COMING', '', '03-10961', '2024-11-02 22:56:36'),
(6, 'BRYAN MANIEGO', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE III', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:41', 'COMING', '', '03-10961', '2024-11-02 23:04:41'),
(7, 'INJEAMAR CAPANGPANGAN', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE IV-A', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:25', 'COMING', '', '03-10961', '2024-11-02 23:04:25'),
(8, 'RICAFORT CENIZAL', 'RICTMU HEAD', 'FIELD OFFICE IV-A', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:17', 'COMING', '', '03-10961', '2024-11-02 23:04:17'),
(9, 'HENZ BAYETA', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE IV-B', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:09', 'COMING', '', '03-10961', '2024-11-02 23:04:09'),
(10, 'NEONARDO TABIASCO', 'SERVER ADMINISTRATOR', 'FIELD OFFICE IV- B', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:04:02', 'COMING', '', '03-10961', '2024-11-02 23:04:02'),
(11, 'RODEL ASPA', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE V', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:03:55', 'COMING', '', '03-10961', '2024-11-02 23:03:55'),
(12, 'MARK BARCELON', 'SERVER ADMINISTRATOR', 'FIELD OFFICE V', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:03:46', 'COMING', '', '03-10961', '2024-11-02 23:03:46'),
(13, 'MICHAEL ELANGA', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE VI', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:01:38', 'COMING', '', '03-10961', '2024-11-02 23:01:38'),
(14, 'HARRY NAVALES', 'SERVER ADMINISTRATOR', 'FIELD OFFICE VI', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:03:36', 'COMING', '', '03-10961', '2024-11-02 23:03:36'),
(15, 'VON ADLAON', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE VII', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:03:27', 'COMING', '', '03-10961', '2024-11-02 23:03:27'),
(16, 'RESTITUTO TABASA', 'SERVER ADMINISTRATOR', 'FIELD OFFICE VII', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:03:05', 'COMING', '', '03-10961', '2024-11-02 23:03:05'),
(17, 'ELVIN CHUA', 'RICTMU HEAD', 'FIELD OFFICE VIII', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:02:57', 'COMING', '', '03-10961', '2024-11-02 23:02:57'),
(18, 'RODOMAR NARTEA', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE VIII', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:02:36', 'COMING', '', '03-10961', '2024-11-02 23:02:36'),
(19, 'JORGE GAGANTING', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE IX', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:02:47', 'COMING', '', '03-10961', '2024-11-02 23:02:47'),
(20, 'MARC PASCUA', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE IX', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:02:27', 'COMING', '', '03-10961', '2024-11-02 23:02:27'),
(21, 'ROMER LARIBA', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE X', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:02:17', 'COMING', '', '03-10961', '2024-11-02 23:02:17'),
(22, 'GEMINI GUMISONG JR.', 'SERVER ADMINISTRATOR', 'FIELD OFFICE X', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:02:08', 'COMING', '', '03-10961', '2024-11-02 23:02:08'),
(23, 'PETER JOHN SAGA', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE XI', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:01:56', 'COMING', '', '03-10961', '2024-11-02 23:01:56'),
(24, 'LARRY PAHILACAN', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE XI', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:01:47', 'COMING', '', '03-10961', '2024-11-02 23:01:47'),
(25, 'MARC DALIDA', 'NETWORK ADMINISTRATOR', 'FIELD OFFICE XII', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:01:24', 'COMING', '', '03-10961', '2024-11-02 23:01:24'),
(26, 'ROD VINCENT BANAGA', 'SERVER ADMINISTRATOR', 'FIELD OFFICE XIII', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:01:04', 'COMING', '', '03-10961', '2024-11-02 23:01:04'),
(27, 'ARNOLD TANDAGAN', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE CAR', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:05:57', 'COMING', '', '03-10961', '2024-11-02 23:05:57'),
(28, 'DERRECK ALAN BENGSON', 'SERVER ADMINISTRATOR', 'FIELD OFFICE CAR', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:05:51', 'COMING', '', '03-10961', '2024-11-02 23:05:51'),
(29, 'MICHAEL BERAY', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE CARAGA', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:05:45', 'COMING', '', '03-10961', '2024-11-02 23:05:45'),
(30, 'ALLEN HILADO', 'SERVER ADMINISTRATOR', 'FIELD OFFICE CARAGA', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:05:38', 'COMING', '', '03-10961', '2024-11-02 23:05:38'),
(31, 'JAN JULIUS TAGUIAM', 'LEAD NETWORK AND INFRASTRUCTURE ADMINISTRATOR', 'FIELD OFFICE NCR', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:05:27', 'COMING', '', '03-10961', '2024-11-02 23:05:27'),
(32, 'MIKE ALBERT ALMAZAN', 'SERVER ADMINISTRATOR', 'FIELD OFFICE NCR', 'FEMALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:05:20', 'COMING', '', '03-10961', '2024-11-02 23:05:20'),
(33, 'RONIE CASTRO FRANCISCO', 'COMPUTER MAINTENANCE TECHNOLOGISTS III', 'FIELD OFFICE III', 'MALE', '', '', 'noimg.jpg', '03-10961', '2024-11-02 23:18:24', 'COMING', '', '03-10961', '2024-11-02 23:18:24');

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
  MODIFY `control_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_timelogs`
--
ALTER TABLE `tbl_timelogs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
