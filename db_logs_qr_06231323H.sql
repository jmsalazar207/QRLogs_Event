-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 07:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
CREATE DATABASE IF NOT EXISTS `db_logs_qr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_logs_qr`;

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
(1, 'ATTY. JUSTIN CAESAR ANTHONY D. BATOCABE', 'DIRECTOR IV', 'SWIDB', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(2, 'ATTY. BERNADETTE AQUINO MAPUE-JOAQUIN', 'NATIONAL PROGRAM MANAGER', 'KALAHI-CIDSS NPMO', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(3, 'MARCELO NICOMEDES J. CASTILLO, CESO', 'ASSISTANT SECRETARY', 'PAG-ABOT', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(4, 'MARIE ANGELA S. GOPALAN, CESO III', 'REGIONAL DIRECTOR', 'FIELD OFFICE I', 'FEMALE', 'masgopalan@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(5, 'SHALAINE MARIE S. LUCERO, CESO IV', 'REGIONAL DIRECTOR', 'FIELD OFFICE VII', 'FEMALE', 'smslucero@dswd.gov.ph', '9199909709', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(6, 'ATTY. KARINA ANTONETTE A. AGUDO', 'DIRECTOR IV', 'AS', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(7, 'SOFIA D. MENDIOLA - CALINGACION', 'ADMINISTRATIVE OFFICER V', 'NRLMB', 'FEMALE', 'sdmendiola@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(8, 'JEXIELYN CRISSELDA I. MARASIGAN', 'ADMINISTRATIVE OFFICER IV', 'AS', 'FEMALE', 'jcimarasigan@dswd.gov.ph', '9064164696', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(9, 'ATTY. MICHAEL JOSEPH J. LORICO', 'REGIONAL DIRECTOR', 'FIELD OFFICE NCR', 'MALE', 'mjjlorico@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(10, 'MARIA A. CATBAGAN-APLATEN, PHD', 'REGIONAL DIRECTOR', 'FIELD OFFICE CAR', 'FEMALE', 'macaplaten@dswd.gov.ph', '9455288242', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(11, 'ATTY. MEGAN THERESE Y. MANAHAN', 'DIRECTOR IV', 'SB', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(12, 'LEONARDO C. REYNOSO, CESO III', 'REGIONAL DIRECTOR', 'FIELD OFFICE IV-B \n(MIMAROPA)', 'MALE', 'lcreynoso@dswd.gov.ph', '9666876417', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(13, 'MICHAEL CRISTOPHER R. MATHAY', 'OFFICER-IN-CHARGE', 'DRMB', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(14, 'CLARENCE DARRYL V. ALFUENTE', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE VI', 'MALE', 'cvalfuente@dswd.gov.ph', '9499922647', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(15, 'XANTHI ROMEILLA J. VALLECER', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE IX', 'FEMALE', 'xrcjalon@dswd.gov.ph', '9176510139', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(16, 'CHRISTIAN JOSEPH M. REGUNAY', 'DIRECTOR IV', 'ICTMS', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(17, 'ATTY. LESLIE ROSE A. TORRES', 'DEPUTY PROGRAM MANAGER', 'BFIRST', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(18, 'SONNY CUTHBERT T. ARICHETA', 'ADMINISTRATIVE OFFICER IV', 'FIELD OFFICE II', 'MALE', 'sctaricheta@dswd.gov.ph', '9159836565', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(19, 'JIMMY FRANCIS T. SCHUCK II', 'DIRECTOR IV', 'NHTO', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(20, 'MICHAEL PATRICK A. PINEDA', 'PLANNING OFFICER III', 'FIELD OFFICE II', 'MALE', 'mpapineda@dswd.gov.ph', '9973446448', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(21, 'PHILIP LEONARD T. ESCUETA', 'PLANNING OFFICER III', 'FIELD OFFICE XII', 'MALE', 'pltescueta.fo12@dswd.gov.ph', '9178162563', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(22, 'ROLANDO D. VILLACORTA JR.', 'DEPUTY NATIONAL PROGRAM MANAGER', 'KALAHI-CIDSS NPMO', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(23, 'COLDWALD MALCOLM A. REYES', 'ADMINISTRATIVE OFFICER V', 'FMS - BDRP', 'MALE', 'cmareyes@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(24, 'KIMBERLY JOICE G. CABRERA', 'ADMINISTRATIVE AIDE II', 'FMS - BDRP', 'FEMALE', 'kjgcabrera@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(25, 'KRISTINE JAYE L. BAUTISTA', 'ADMINISTRATIVE OFFICER IV', 'FMS - BDRP', 'FEMALE', 'kjlbautista@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(26, 'KAREN RHE-JOICE P. NOVEDA', 'ADMINISTRATIVE OFFICER V', 'PMB', 'FEMALE', 'krjpnoveda@dswd.gov.ph', '9453422415', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(27, 'ATTY. CARMELO N. NOCHETE', 'REGIONAL DIRECTOR', 'FIELD OFFICE VI', 'MALE', 'cnnochete@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(28, 'ATTY. VANESSA B. GOC-ONG', 'REGIONAL DIRECTOR', 'FIELD OFFICE XI', 'FEMALE', 'vbgoc-ong@dswd.gov.ph', '9171171187', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(29, 'PEARL ANGELI M. MELENDEZ', 'PLANNING OFFICER I', 'FIELD OFFICE III', 'FEMALE', 'pammelendez@dswd.gov.ph', '9511632386', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(30, 'ATTY. MERIEL P. CASTILLO', 'CHIEF ADMINISTRATIVE OFFICER', 'FMS - BDRP', 'FEMALE', 'mpcastillo@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(31, 'ESTELA MARIZ V. ORGANIZA', 'STATISTICIAN III', 'PDPB', 'FEMALE', 'emvoganiza@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(32, 'CATHERINE B. VALENZUELA', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE NCR', 'FEMALE', 'cbvalenzuela@dswd.gov.ph', '9086876931', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(33, 'MOHAMMAD FAYEZ D. SARIP', 'ADMINISTRATIVE OFFICER III', 'FIELD OFFICE XII', 'MALE', 'mfdsarip.fo12@dswd.gov.ph', '9167163351', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(34, 'HANNAH A. GIRAY-CARCIDO', 'ASSISTANT BUREAU DIRECTOR', 'PDPB', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(35, 'VANITY JOY B. ESTREMERA', 'SUPERVISING ADMINISTRATIVE OFFICER', 'NHTS', 'FEMALE', 'vjbestremera@dswd.gov.ph', '10123', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(36, 'JENNY PEARL C. ABEDANIA', 'ADMINISTRATIVE OFFICER II', 'AS', 'FEMALE', 'jpcabedania@dswd.gov.ph', '9306603935', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(37, 'CHRISTINE JOY B. CHAVEZ', 'ADMINISTRATIVE AIDE II', 'FMS - BDRP', 'FEMALE', 'cjbchavez@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(38, 'MARIANE SHERYL OLIVARES', 'ADMINISTRATIVE AIDE V', 'HRMDS', 'FEMALE', 'msolivares@dswd.gov.ph', '9393954980', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(39, 'ROLDAN JUSTINO A. CADAG', 'PROJECT DEVELOPMENT OFFICER III', 'PMB', 'MALE', 'rjacadag@dswd.gov.ph', '9173100902', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(40, 'KRISTOFFER IAN L. FEBRE', 'ADMINISTRATIVE OFFICER V', 'PMB', 'MALE', 'kilfebre@dswd.gov.ph', '9950279930', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(41, 'CHRISTIAN RYAN J. JUBAN', 'FINANCIAL ANALYST II', 'STB', 'MALE', 'crjjuban@dswd.gov.ph', '9770197558', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(42, 'KRISTINE JOYCE P. SUPAN', 'PLANNING OFFICER III', 'PDPB', 'FEMALE', 'kjpsupan@dswd.gov.ph', '9555730452', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(43, 'ROSELLE YPIL - ALMAYDA', 'PLANNING OFFICER III', 'FIELD OFFICE VIII', 'FEMALE', 'ryalmayda@dswd.gov.ph', '9088809829', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(44, 'MELPE JEAN B. MAGHANOY', 'SUPERVISING ADMINISTRATIVE OFFICER', 'FIELD OFFICE X', 'FEMALE', 'mjbmaghanoy@dswd.gov.ph', '9279825815', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(45, 'ETHEL GRACE P. DINAMPO', 'ADMINISTRATIVE OFFICER IV', 'FIELD OFFICE XI', 'FEMALE', 'egpdinampo@dswd.gov.ph', '9984988132', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(46, 'CLARISSA LARA A. DURAN', 'DIRECTOR IV', 'AOS', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(47, 'ATTY. MARIJOY D. SEGUI', 'DIRECTOR IV', 'IAS', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(48, 'JOHNY BOY A. KINANAHAN', 'ADMINISTRATIVE AIDE I', 'ICTMS', 'MALE', 'jbakinanahan@dswd.gov.ph', '10308', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(49, 'DANMEL JOHN F. BARRACA', 'ADMINISTRATIVE ASSISTANT III', 'DLLO', 'MALE', 'dfbarraca@dswd.gov.ph', '9603666084', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(50, 'MARIA ELLAINE M. GABAY', 'ADMINISTRATIVE OFFICER V', 'DRMB', 'FEMALE', 'memgabay@dswd.gov.ph', '9279507580', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(51, 'CRESENCIA R. ESPLANADA', 'ADMINISTRATIVE OFFICER V', 'FMS - BDSP', 'FEMALE', 'cresplanada@dswd.gov.ph', '10062', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(52, 'PAUL CRISANTO T. OCATE', 'ADMINISTRATIVE OFFICER II', 'FMS - BDRP', 'MALE', 'pctocate@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(53, 'MA. SOCORRO S. MACASO', 'ASSISTANT REGIONAL DIRECTOR FOR OPERATIONS', 'FIELD OFFICE IX', 'FEMALE', 'mssmacaso@dswd.gov.ph', '9052697210', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(54, 'MARK LORBEN E. VICUÑA', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE VIII', 'MALE', 'mlevicuna@dswd.gov.ph', '9958838350', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(55, 'KAYSHER B. DANTALMURA', 'PLANNING OFFICER III', 'FIELD OFFICE X', 'MALE', 'kbdantalmura@dswd.gov.ph', '9062564594', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(56, 'ATTY. ERICKSON C. LUZ', 'DEPUTY PROGRAM MANAGER', 'PDBBM', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(57, 'ZHERLUCK I. TOLENTINO', 'ADMINISTRATIVE OFFICER III', 'DMS', 'MALE', 'zitolentino@dswd.gov.ph', '10086', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(58, 'GUILLERMA G. BAUTISTA', 'ADMINISTRATIVE OFFICER V', '4PS NPMO', 'FEMALE', 'ggbautista@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(59, 'MARK LEONEL V. DECANO', 'ADMINISTRATIVE OFFICER IV', '4PS NPMO', 'MALE', 'mlvdecano@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(60, 'VINCE RAY S. ESCARCHA', 'PLANNING OFFICER III', 'DRMB', 'MALE', 'vrsescarcha@dswd.gov.ph', '9454287924', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(61, 'JOEFFREY D. SEVILLEJO', 'ADMINISTRATIVE OFFICER II', 'FMS - OD', 'MALE', 'jdsevillejo@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(62, 'MARY ANN D. GUTIERREZ', 'FINANCIAL ANALYST III', 'PDBBM', 'FEMALE', 'madgutierrez@dswd.gov.ph', '9358141586', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(63, 'RIZZA JANE F. AZUCENA', 'SOCIAL WELFARE OFFICER IV', 'PDPB', 'FEMALE', 'rjfazucena@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(64, 'LORETO V. CABAYA JR.', 'REGIONAL DIRECTOR', 'FIELD OFFICE XII', 'MALE', 'lvcabaya@dswd.gov.ph', '9293244770', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(65, 'JOEL PAUL R. CASUGAY', 'ADMINISTRATIVE OFFICER IV', 'TMS', 'MALE', 'jprcasugay@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(66, 'ROSEMARIE M. VILLENA', 'ADMINISTRATIVE OFFICER V', 'FMS - BDSP', 'FEMALE', 'rmmvillena@dswd.gov.ph', '10062', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(67, 'KARL JAKE G. GUINGAB', 'PROJECT DEVELOPMENT OFFICER III', 'PMB', 'MALE', 'kjgguingab@dswd.gov.ph', '9663395737', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(68, 'JAN REMLE B. ANAVISO', 'SOCIAL WELFARE OFFICER II', 'SB', 'MALE', 'jrbanaviso@dswd.gov.ph', '10073', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(69, 'CARMELITO C. ARCINAS', 'PROJECT DEVELOPMENT OFFICER IV', 'EPAHP', 'MALE', 'ccarcinas@dswd.gov.ph', '9177492488', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(70, 'BARRY R. CHUA, M.D.', 'REGIONAL DIRECTOR', 'FIELD OFFICE IV-A (CALABARZON)', 'MALE', 'brchua@dswd.gov.ph', '9399301967', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(71, 'JOSEPH KARLO V. LIM', 'SOCIAL WELFARE OFFICER II', 'FIELD OFFICE NCR', 'MALE', 'jkvlim@dswd.gov.ph', '9288282245', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(72, 'MA. CARMEN T. TAYAM', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE V', 'FEMALE', 'mcttayam@dswd.gov.ph', '9184110046', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(73, 'MARYGIZELLE B. MESA', 'INFORMATION OFFICER II', 'FIELD OFFICE V', 'FEMALE', 'mbmesa.fo5@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(74, 'LIEZYL T. ASTODILLO', 'PLANNING OFFICER III', 'FIELD OFFICE CAR', 'FEMALE', 'ltasrodillo@dswd.gov.ph', '9982553511', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(75, 'EDMON B. MONTEVERDE', 'DIRECTOR IV', 'PMB', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(76, 'DIANNE JOIE E. RUIZ', 'DIRECTOR IV', 'DMS', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(77, 'MARY JANE G. SENDON', 'INFORMATION TECHNOLOGY OFFICER I', 'ICTMS', 'FEMALE', 'mjgsendon@dswd.gov.ph', '10308', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(78, 'KAREN JOY M. FERRER', 'ADMINISTRATIVE OFFICER II', 'AS', 'FEMALE', 'kjmferrer@dswd.gov.ph', '9171253010', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(79, 'MARY JANE S. MANUEL', 'OFFICER-IN-CHARGE', 'FMS - BDSP', 'FEMALE', 'mjsmanuel@dswd.gov.ph', '10062', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(80, 'JOHN DWIGHT V. CRUZ', 'FINANCIAL ANALYST III', 'FMS - BDSP', 'MALE', 'jdvcruz@dswd.gov.ph', '10062', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(81, 'BENJAMIN C. MAHINAY', 'SUPERVISING ADMINISTRATIVE OFFICER', 'FMS - BDRP', 'MALE', 'bcmahinay@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(82, 'SHINE MAE S. JACOBE', 'ADMINISTRATIVE AIDE IV', 'FMS - BDRP', 'FEMALE', 'smsjacobe@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(83, 'JACELLE B. COLUMNAS', 'ADMINISTRATIVE AIDE II', 'FMS - BDRP', 'FEMALE', 'jbcolumnas@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(84, 'VLADIMIR B. CABRERA', 'PROJECT DEVELOPMENT OFFICER III', 'PMB', 'MALE', 'vbcabrera@dswd.gov.ph', '9989826175', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(85, 'RANIAG L. GUILLERMO', 'PROJECT DEVELOPMENT OFFICER III', 'STB', 'MALE', 'rlguillermo@dswd.gov.ph', '9524818290', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(86, 'HAZEL ANNE B. NAZAR', 'ADMINISTRATIVE AIDE I', 'PDPB', 'FEMALE', 'habnazar@dswd.gov.ph', '9202289244', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(87, 'VENUS F. REBULDELA', 'REGIONAL DIRECTOR', 'FIELD OFFICE III', 'FEMALE', 'vfrebuldela@dswd.gov.ph', '9158384866', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(88, 'ROSELLE M. RENTOZA', 'PLANNING OFFICER IV', 'FIELD OFFICE NCR', 'FEMALE', 'rrentoza@dswd.gov.ph', '9975280067', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(89, 'PEE JAY M. MORALES', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE III', 'MALE', 'pmmorales@dswd.gov.ph', '907446989', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(90, 'HERBERT I. RODRIGO', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE IV-B', 'MALE', 'hirodrigo@dswd.gov.ph', '9274443290', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(91, 'ROXIE A. ABAGATNAN', 'PLANNING OFFICER IV', 'FIELD OFFICE VI', 'MALE', 'raabagatnan@dswd.gov.ph', '9205105208', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(92, 'JASSIE ANNE C. TAN', 'PLANNING OFFICER III', 'FIELD OFFICE XI', 'FEMALE', 'jactan@dswd.gov.ph', '9082294459', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(93, 'JONATHAN C. ANTEZA', 'DEPUTY PROGRAM MANAGER', '4PS NPMO', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(94, 'CRISTINA C. GAMING', 'ADMINISTRATIVE AIDE I', 'IAS', 'FEMALE', 'ccgaming@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(95, 'MICHELLE H. CAMARA', 'ADMINISTRATIVE OFFICER II', 'AS', 'FEMALE', 'mhcamara@dswd.gov.ph', '9272962966', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(96, 'GENIELA I. SOLEDAD', 'SENIOR ADMINISTRATIVE ASSISTANT I', 'AS', 'FEMALE', 'gisoledad@dswd.gov.ph', '9163188518', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(97, 'CHRISTIAN S. TAGAB', 'ADMINISTRATIVE OFFICER IV', 'HRMDS', 'MALE', 'cstagab@dswd.gov.ph', '9295813946', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(98, 'JOAN MAE C. BUEMIO', 'PROJECT DEVELOPMENT OFFICER III', 'PMB', 'FEMALE', 'jmcbuemio@dswd.gov.ph', '9088177821', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(99, 'IRENE F. FERNANDEZ', 'PROJECT DEVELOPMENT OFFICER III', 'SLP', 'FEMALE', 'iffernandez@dswd.gov.ph', '9274524840', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(100, 'GLORIA G. ALVARADO', 'TRAINING SPECIALIST III', 'SWIDB', 'FEMALE', 'ggalvarado@dswd.gov.ph', '9064164652', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(101, 'CYNTHIA B. LAGASCA', 'CHIEF ADMINISTRATIVE OFFICER', 'PDPB', 'FEMALE', 'cblagasca@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(102, 'RAYNILYN A. ABUGAN', 'SENIOR ADMINISTRATIVE ASSISTANT III', 'OUSPPG', 'FEMALE', 'raabugan@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(103, 'CELSO L. ARAO JR.', 'ASSISTANT REGIONAL DIRECTOR FOR ADMINISTRATION', 'FIELD OFFICE II', 'MALE', 'claraojr@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(104, 'DELIA B. SANTIAGO', 'ADMINISTRATIVE OFFICER V', 'FIELD OFFICE I', 'FEMALE', 'dbsantiago@dswd.gov.ph', '9773433018', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(105, 'MARIVIC M. MACUHA', 'PLANNING OFFICER IV', 'FIELD OFFICE IV-A', 'FEMALE', 'mmmacuha@dswd.gov.ph', '9688549520', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(106, 'TERESA M. BIDAURE', 'ADMINISTRATIVE OFFICER IV', 'FIELD OFFICE CARAGA', 'FEMALE', 'tmbidaure@dswd.gov.ph', '9773140432', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(107, 'JOCELYN T. TUPENG', 'ADMINISTRATIVE OFFICER IV', 'FIELD OFFICE CAR', 'FEMALE', 'jttupeng@dswd.gov.ph', '9473180501', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(108, 'ALDRINE R. FERMIN', 'DIRECTOR', 'TMS', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(109, 'DENMARK V. RABAGO', 'ADMINISTRATIVE OFFICER IV', 'AOS', 'MALE', 'dvrabago@dswd.gov.ph', '9190588600', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(110, 'DONN S. SASTRILLO', 'INFORMATION TECHNOLOGY OFFICER II', 'ICTMS', 'FEMALE', 'dssastrillo@dswd.gov.ph', '10340', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(111, 'GERCY C. VIRTUCIO', 'ADMINISTRATIVE OFFICER III', 'NRLMB', 'MALE', 'gvirtucio@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(112, 'DONA MAE L. BUIZA', 'PROJECT DEVELOPMENT OFFICER III', 'SB', 'FEMALE', 'dmlbuiza@dswd.gov.ph', '10073', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(113, 'LEILANIR. CABUYAO', 'PROJECT DEVELOPMENT OFFICER II', 'EPAHP', 'FEMALE', 'lrcabuyao@dswd.gov.ph', '9498287620', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(114, 'NORMAN S. LAURIO', 'REGIONAL DIRECTOR', 'FIELD OFFICE V', 'MALE', 'nslaurio@dswd.gov.ph', '9959443301', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(115, 'TRISTAN C. TELEN', 'ASSISTANT REGIONAL DIRECTOR FOR ADMINISTRATION', 'FIELD OFFICE CARAGA', 'MALE', 'tctelen@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(116, 'JOSEPH L. TESTON', 'PLANNING OFFICER III', 'FIELD OFFICE V', 'MALE', 'jlteston@dswd.gov.ph', '9219800776', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(117, 'JUNNEL P. DEMAPE', 'BUDGET OFFICER III', 'FIELD OFFICE VII', 'MALE', 'jpdemape@dswd.gov.ph', '9175700840', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(118, 'GENARA A. BURLAT', 'PLANNING OFFICER IV', 'FIELD OFFICE VII', 'FEMALE', 'gaburlat@dswd.gov.ph', '9177744458', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(119, 'ARCHIE D. TURTUR', 'PROJECT DEVELOPMENT OFFICER III', 'FIELD OFFICE CARAGA', 'MALE', 'adturtur@dswd.gov.ph', '9369800365', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(120, 'RHODORA G. ALDAY', 'DIRECTOR IV', 'PDPB', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(121, 'JENNIFER M. RIZO', 'DIRECTOR IV', 'HRMDS', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(122, 'WAYNE C. BELIZAR', 'DIRECTOR IV', 'FMS', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(123, 'VIRGIL P. TRAPSI', 'INTERNAL AUDIT III', 'IAS', 'MALE', 'vptrapsi@dswd.gov.ph', '9162250562', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(124, 'JONNALYN S. GURO', 'ADMINISTRATIVE OFFICER IV', 'FMS - BDRP', 'FEMALE', 'jsguro@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(125, 'ROCHELLE C. DIAZ', 'ADMINISTRATIVE ASSISTANT I', 'HRMDS', 'FEMALE', 'rcdiaz@dswd.gov.ph', '9994706238', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(126, 'GEMMA C. DUGURAN', 'FINANCIAL ANALYST IV', 'KALAHI', 'FEMALE', 'gcduguran@dswd.gov.ph', '9178236133', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(127, 'ERLEO S. BACABAC', 'PROJECT DEVELOPMENT OFFICER IV', 'KALAHI', 'FEMALE', 'esbacabac@dswd.gov.ph', '9173147137', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(128, 'JOSEPH H. LAGMAN', 'PROJECT DEVELOPMENT OFFICER IV', 'SLP', 'MALE', 'jhlagman@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(129, 'AMELITA DC. MICU', 'PROJECT DEVELOPMENT OFFICER III', 'SLP', 'FEMALE', 'adcmicu@dswd.gov.ph', '9175044043', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(130, 'ALBERTO B. CLARO', 'ADMINISTRATIVE ASSISTANT I', 'SWIDB', 'MALE', 'abclaro@dswd.gov.ph', '9206120459', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(131, 'DIANNE E. BACCAY', 'PROJECT DEVELOPMENT OFFICER II', 'WGNPMO', 'FEMALE', 'diannebaccay31@gmail.com', '9911178671', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(132, 'LEONARD G. DEAÑO', 'PROJECT DEVELOPMENT OFFICER III', 'STB', 'MALE', 'lgdeano@dswd.gov.ph', '9666409778', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(133, 'CHARRY C. CUENCA', 'PLANNING OFFICER III', 'STB', 'MALE', 'cccuenca@dswd.gov.ph', '9277083186', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(134, 'RAZEL S. GURUBAT', 'FINANCIAL ANALYST III', 'BFIRST', 'FEMALE', 'regurubat@dswd.gov.ph', '10022', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(135, 'THRESNA O. PABLO', 'PLANNING OFFICER III', 'PDPB', 'FEMALE', 'topablo@dswd.gov.ph', '89517120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(136, 'GRACE Q. SUBONG', 'REGIONAL DIRECTOR', 'FIELD OFFICE VIII', 'FEMALE', 'gqsubong@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(137, 'MARITES C. YSIP', 'PLANNING OFFICER III', 'FIELD OFFICE I', 'FEMALE', 'mcysip@dswd.gov.ph', '9174857382', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(138, 'HELEN Y. SUZARA', 'DIRECTOR IV', 'STB', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(139, 'EDWIN S. MORATA', 'DIRECTOR III', 'PMB', 'MALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(140, 'ROWELA F. HIZON', 'DIRECTOR IV', 'OASSP', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(141, 'MIRAMEL G. LAXA', 'DIRECTOR IV', 'SLP', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(142, 'GEMMA B. GABUYA', 'DIRECTOR IV', '4PS NPMO', 'FEMALE', '', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(143, 'SOLITA T. PANTI', 'ADMINISTRATIVE AIDE III', 'FMS - BDSP', 'FEMALE', 'stpanti@dswd.gov.ph', '10062', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(144, 'AILEEN E. RUBIO', 'ADMINISTRATIVE OFFICER IV', 'FMS - BDRP', 'FEMALE', 'aerubio@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(145, 'LADY ANN C. YAP', 'ADMINISTRATIVE OFFICER II', 'FMS - BDRP', 'FEMALE', 'lacyap@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(146, 'MONINA A. LASAC', 'ADMINISTRATIVE AIDE I', 'LS', 'FEMALE', 'malasac@dswd.gov.ph', '9171005574', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(147, 'LEA B. BANGALAN', 'PROJECT DEVELOPMENT OFFICER IV', 'PMB', 'FEMALE', 'lbbangalan@dswd.gov.ph', '9602698393', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(148, 'AMME F. SEVILLA', 'PLANNING OFFICER III', 'STB', 'FEMALE', 'afsevilla@dswd.gov.ph', '9171562807', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(149, 'NENA I. DE VEAS', 'PLANNING OFFICER III', 'PDPB', 'FEMALE', 'nideveas@dswd.gov.ph', '9491946725', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(150, 'RAMEL F. JAMEN', 'REGIONAL DIRECTOR', 'FIELD OFFICE X', 'MALE', 'rfjamen@dswd.gov.ph', '9773140422', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(151, 'JORAM M. MEDUA', 'ADMINISTRATIVE OFFICER IV', 'FIELD OFFICE IV-A', 'MALE', 'jmmedua@dswd.gov.ph', '9602184797', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(152, 'RAFAEL L. GACA', 'PLANNING OFFICER III', 'FIELD OFFICE IV-B', 'MALE', 'rlgaca@dswd.gov.ph', '9271909022', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(153, 'HASAN B. ALFAD', 'PLANNING OFFICER IV', 'FIELD OFFICE IX', 'MALE', 'hbalfad@dswd.gov.ph', '9177078465', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(154, 'MADELANE SELGA', 'ADMINISTRATIVE AIDE II', 'FMS - BDRP', 'FEMALE', 'mselga@dswd.gov.ph', '10120', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(155, 'EMMA C. DERICO', 'ADMINISTRATIVE OFFICER V', 'PMB', 'FEMALE', 'ecderico@dswd.gov.ph', '9179085039', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(156, 'LUCIA S. ALAN', 'REGIONAL DIRECTOR', 'FIELD OFFICE II', 'FEMALE', 'lsalan@dswd.gov.ph', '', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29'),
(157, 'ALVIN D. AYUB', 'FINANCIAL ANALYST IV', 'BANGUN', 'MALE', 'adayub@dswd.gov.ph', '9056302876', 'noimg.jpg', '03-9079', '2024-06-23 11:15:45', 'COMING', '', '', '2024-06-22 21:49:29');

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
  MODIFY `control_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tbl_timelogs`
--
ALTER TABLE `tbl_timelogs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
