-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2023 at 03:05 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21544810_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '@Test123', '19-11-2023 10:32:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Dermatology', 6, 3, 1200, '2023-12-21', '7:45 PM', '2023-12-06 11:36:19', 1, 1, NULL),
(4, 'Dermatology', 6, 3, 1200, '2023-12-21', '7:45 PM', '2023-12-06 11:37:11', 1, 1, NULL),
(5, 'Orthopedics', 7, 7, 4444, '2023-12-28', '7:30 PM', '2023-12-09 11:20:28', 0, 1, '2023-12-09 11:20:45'),
(6, 'Orthopedics', 8, 8, 1231, '2023-12-26', '7:45 PM', '2023-12-09 11:32:22', 0, 1, '2023-12-09 11:32:31'),
(7, 'General Surgery', 9, 8, 123, '2024-01-26', '7:45 PM', '2023-12-09 11:32:42', 1, 0, '2023-12-09 11:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(7, 'erika', 'ferolinoerika@gmail.com', 938173817238, 'This is a test', '2023-11-19 12:29:30', 'Noted', '2023-11-19 14:08:41', 1),
(8, 'Erika', 'erikaferolino@gmail.com', 9873817283, 'Test #2', '2023-11-19 12:33:10', NULL, NULL, NULL),
(10, 'John', 'test@mail.co', 123123123123, 'test', '2023-11-26 12:47:45', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'Dental Care', 'Erika', 'Commonwealth, Quezon City', '350', 923658923, 'erika@gmail.com', '32250170a0dca92d53ec9624f336ca24', '2023-11-19 13:00:27', '0000-00-00 00:00:00'),
(6, 'Dermatology', 'Nicole', 'Mindanao Ave., Quezon City', '1200', 9928050192, 'qanstalce@tip.edu.ph', '32250170a0dca92d53ec9624f336ca24', '2023-12-06 09:12:05', NULL),
(7, 'Orthopedics', '4444', '4444', '4444', 4444, 'doc2@gmail.com', 'a6e435a6683512e2c59e440cea1a319d', '2023-12-06 11:26:49', NULL),
(8, 'Orthopedics', 'nicolee', '9123dwa', '1231', 321123312, 'doctest@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-12-09 11:29:45', NULL),
(9, 'General Surgery', 'nicolee', 'qew', '123', 123132, 'doctest1@gmail.com', 'e99a18c428cb38d5f260853678922e03', '2023-12-09 11:30:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 4, 'erika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:00:49', '19-11-2023 06:35:42 PM', 1),
(28, 4, 'erika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:07:02', '19-11-2023 06:37:08 PM', 1),
(29, 4, 'erika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:07:28', '19-11-2023 06:39:46 PM', 1),
(30, 4, 'erika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:11:14', NULL, 1),
(31, 4, 'erika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:27:43', '19-11-2023 09:28:08 PM', 1),
(32, 4, 'erika@gmail.com', 0x3133362e3135382e33372e3135360000, '2023-12-05 10:49:52', '05-12-2023 06:50:17 PM', 1),
(33, NULL, 'qeferolino1@tip.edu.ph', 0x3131302e35342e3136362e3137300000, '2023-12-06 09:13:01', NULL, 0),
(34, NULL, 'erika', 0x3131302e35342e3136362e3137300000, '2023-12-06 09:13:07', NULL, 0),
(35, NULL, 'Erika', 0x3131302e35342e3136362e3137300000, '2023-12-06 09:13:13', NULL, 0),
(36, 6, 'qanstalce@tip.edu.ph', 0x3131302e35342e3136362e3137300000, '2023-12-06 09:13:30', '06-12-2023 05:13:43 PM', 1),
(37, 6, 'qanstalce@tip.edu.ph', 0x3131302e35342e3136362e3137300000, '2023-12-06 11:37:55', '06-12-2023 07:38:32 PM', 1),
(38, NULL, 'erika', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:24:52', NULL, 0),
(39, NULL, 'erika', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:25:00', NULL, 0),
(40, NULL, 'Erika', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:27:18', NULL, 0),
(41, NULL, 'nicole', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:27:23', NULL, 0),
(42, 9, 'doctest1@gmail.com', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:31:00', '09-12-2023 07:31:03 PM', 1),
(43, 9, 'doctest1@gmail.com', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:34:33', '09-12-2023 07:35:41 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
(2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 18:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `quantity`, `total_price`, `order_date`) VALUES
(37, 5, 70, 10, 387.70, '2023-12-01 14:10:40'),
(38, 5, 69, 10, 1842.00, '2023-12-01 14:10:40'),
(39, 5, 70, 50, 1938.50, '2023-12-01 14:37:26'),
(40, 5, 72, 50, 1987.50, '2023-12-01 14:37:57'),
(41, 5, 70, 1, 38.77, '2023-12-01 14:38:22'),
(42, 5, 70, 1, 38.77, '2023-12-05 17:25:30'),
(43, 5, 69, 1, 184.20, '2023-12-05 17:25:30'),
(44, 5, 68, 1, 47.50, '2023-12-05 17:25:30'),
(45, 5, 69, 30, 5526.00, '2023-12-05 17:28:04'),
(46, 5, 70, 1, 38.77, '2023-12-05 17:29:13'),
(47, 5, 69, 15, 2763.00, '2023-12-05 17:29:13'),
(48, 3, 69, 1, 184.20, '2023-12-06 08:59:37'),
(49, 3, 70, 5, 193.85, '2023-12-06 08:59:37'),
(50, 3, 69, 1, 184.20, '2023-12-06 11:25:32'),
(51, 3, 76, 10, 11110.00, '2023-12-06 11:25:32'),
(52, 7, 68, 1, 47.50, '2023-12-09 11:39:00'),
(53, 7, 69, 4, 736.80, '2023-12-09 11:39:00'),
(54, 7, 70, 1, 38.77, '2023-12-09 11:39:00'),
(55, 7, 68, 1, 47.50, '2023-12-09 11:43:19'),
(56, 7, 69, 5, 921.00, '2023-12-09 11:43:19'),
(57, 7, 70, 2, 77.54, '2023-12-09 11:43:19'),
(58, 7, 71, 2, 340.00, '2023-12-09 11:43:19'),
(59, 7, 72, 2, 79.50, '2023-12-09 11:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(68, 'Paracetamol (Acetaminophen)', 'Pain reliever and fever reducer. 500mg 10 Tablets', 47.50, 'paracetamol.png', '2023-12-01 13:55:37', '2023-12-01 13:55:37'),
(69, 'Ibuprofen ', 'Nonsteroidal anti-inflammatory drug (NSAID) used for pain and inflammation. 200mg 20 Capsules', 184.20, 'advil200mg100caps.png', '2023-12-01 13:56:56', '2023-12-01 13:56:56'),
(70, 'Cetirizine', 'Antihistamine used to relieve allergy symptoms. 10mg 10 Tablets', 38.77, 'Cetirizine.png', '2023-12-01 13:58:37', '2023-12-01 13:58:37'),
(71, 'Loperamide', 'Anti-diarrheal medication. 2mg 20 Capsules', 170.00, 'loperamide.png', '2023-12-01 13:59:37', '2023-12-01 13:59:37'),
(72, 'Omeprazole', 'Proton pump inhibitor used to treat stomach ulcers and acid reflux. 40mg 1 Capsule', 39.75, 'Omeprazole.jpg', '2023-12-01 14:00:56', '2023-12-01 14:00:56'),
(76, '1111', '1111', 1111.00, 'car.PNG', '2023-12-06 11:23:41', '2023-12-06 11:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 2, '12', '12', '12', '12', 'waddwa', '2023-12-09 11:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 9, 'kiel', 1293, 'me@gmail.com', 'male', '12da', 21, 'aa', '2023-12-09 11:35:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(5, NULL, 'Blacksyrose', 0x3a3a3100000000000000000000000000, '2023-11-19 10:43:23', NULL, 0),
(6, NULL, 'Erika', 0x3a3a3100000000000000000000000000, '2023-11-19 10:44:50', NULL, 0),
(7, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 10:45:09', '19-11-2023 04:16:23 PM', 1),
(8, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 10:47:41', NULL, 1),
(9, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 11:03:22', '19-11-2023 04:41:37 PM', 1),
(10, NULL, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 11:12:27', NULL, 0),
(11, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 11:12:33', '19-11-2023 04:42:51 PM', 1),
(12, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 11:24:47', '19-11-2023 07:33:09 PM', 1),
(13, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 11:36:37', '19-11-2023 07:36:54 PM', 1),
(14, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 11:43:01', '19-11-2023 07:43:06 PM', 1),
(15, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:35:20', '19-11-2023 08:35:39 PM', 1),
(16, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:35:51', '19-11-2023 08:38:06 PM', 1),
(17, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:38:15', '19-11-2023 08:38:22 PM', 1),
(18, NULL, 'Erika', 0x3a3a3100000000000000000000000000, '2023-11-19 12:49:32', NULL, 0),
(19, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:51:06', '19-11-2023 08:51:09 PM', 1),
(20, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:51:34', NULL, 1),
(21, NULL, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:52:18', NULL, 0),
(22, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:52:33', '19-11-2023 08:52:49 PM', 1),
(23, NULL, 'Erika', 0x3a3a3100000000000000000000000000, '2023-11-19 12:57:48', NULL, 0),
(24, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 12:57:53', '19-11-2023 08:57:56 PM', 1),
(25, 3, 'ferolinoerika@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:09:56', '19-11-2023 09:11:07 PM', 1),
(26, 4, 'nicole@gmail.com', 0x3a3a3100000000000000000000000000, '2023-11-19 13:14:55', NULL, 1),
(27, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 08:13:54', '26-11-2023 04:18:14 PM', 1),
(28, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 08:18:25', NULL, 1),
(29, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 08:27:38', '26-11-2023 04:27:48 PM', 1),
(30, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 08:54:17', NULL, 1),
(31, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:17:50', '26-11-2023 05:17:58 PM', 1),
(32, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:18:48', NULL, 1),
(33, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:19:25', '26-11-2023 05:32:32 PM', 1),
(34, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:33:07', '26-11-2023 05:35:32 PM', 1),
(35, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:35:40', '26-11-2023 05:43:30 PM', 1),
(36, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:44:05', '26-11-2023 05:46:43 PM', 1),
(37, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:50:55', '26-11-2023 05:52:44 PM', 1),
(38, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 09:54:28', '26-11-2023 05:55:01 PM', 1),
(39, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 09:56:18', '26-11-2023 05:56:46 PM', 1),
(40, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 09:57:15', NULL, 1),
(41, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 10:55:23', '26-11-2023 07:00:15 PM', 1),
(42, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:01:04', NULL, 1),
(43, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:01:18', NULL, 1),
(44, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:03:21', '26-11-2023 07:03:44 PM', 1),
(45, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:06:16', NULL, 1),
(46, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:07:33', '26-11-2023 07:07:41 PM', 1),
(47, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:11:51', NULL, 1),
(48, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:13:00', NULL, 1),
(49, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:13:42', '26-11-2023 07:14:01 PM', 1),
(50, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:15:10', '26-11-2023 07:15:21 PM', 1),
(51, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:16:38', '26-11-2023 07:22:35 PM', 1),
(52, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:22:42', '26-11-2023 07:23:07 PM', 1),
(53, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:26:34', '26-11-2023 07:26:37 PM', 1),
(54, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:26:42', NULL, 1),
(55, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:28:21', '26-11-2023 07:30:07 PM', 1),
(56, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:30:13', '26-11-2023 07:35:54 PM', 1),
(57, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:36:02', '26-11-2023 07:36:50 PM', 1),
(58, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:36:56', '26-11-2023 07:47:44 PM', 1),
(59, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:48:13', '26-11-2023 07:48:28 PM', 1),
(60, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:49:53', '26-11-2023 07:54:16 PM', 1),
(61, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 11:54:22', NULL, 1),
(62, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:57:20', NULL, 0),
(63, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:57:33', NULL, 0),
(64, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:57:39', NULL, 0),
(65, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:57:54', NULL, 0),
(66, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:58:12', NULL, 0),
(67, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:58:16', NULL, 0),
(68, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:58:29', NULL, 0),
(69, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:58:42', NULL, 0),
(70, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:58:47', NULL, 0),
(71, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:58:54', NULL, 0),
(72, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:59:05', NULL, 0),
(73, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:59:39', NULL, 0),
(74, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 11:59:49', NULL, 0),
(75, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:00:25', '26-11-2023 08:00:37 PM', 1),
(76, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:00:43', '26-11-2023 08:00:47 PM', 1),
(77, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:00:53', '26-11-2023 08:03:56 PM', 1),
(78, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:06:05', NULL, 1),
(79, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:06:18', NULL, 1),
(80, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:06:37', NULL, 1),
(81, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:07:21', '26-11-2023 08:07:36 PM', 1),
(82, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:07:43', '26-11-2023 08:08:52 PM', 1),
(83, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:09:11', '26-11-2023 08:09:13 PM', 1),
(84, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:09:20', NULL, 1),
(85, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:10:17', '26-11-2023 08:21:45 PM', 1),
(86, 5, '', 0x3a3a3100000000000000000000000000, '2023-11-26 12:25:01', NULL, 1),
(87, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:26:46', '26-11-2023 08:26:53 PM', 1),
(88, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:33:11', NULL, 1),
(89, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:33:57', NULL, 1),
(90, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:41:28', NULL, 1),
(91, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:41:40', '26-11-2023 08:43:54 PM', 1),
(92, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:43:59', '26-11-2023 08:54:56 PM', 1),
(93, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 12:55:00', NULL, 1),
(94, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 13:37:35', NULL, 1),
(95, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 13:44:30', NULL, 1),
(96, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 18:04:56', NULL, 1),
(97, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 18:19:38', '27-11-2023 02:32:51 AM', 1),
(98, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 18:34:51', '27-11-2023 03:05:26 AM', 1),
(99, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 19:05:30', '27-11-2023 03:09:01 AM', 1),
(100, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 19:09:09', '27-11-2023 03:30:41 AM', 1),
(101, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 19:42:46', '27-11-2023 03:51:32 AM', 1),
(102, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 19:52:32', '27-11-2023 05:41:16 AM', 1),
(103, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 21:41:21', NULL, 0),
(104, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-26 21:41:26', '27-11-2023 04:27:05 PM', 1),
(105, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 08:27:11', NULL, 0),
(106, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 08:27:15', '27-11-2023 05:06:42 PM', 1),
(107, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 09:06:46', NULL, 1),
(108, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 09:17:50', '27-11-2023 05:23:49 PM', 1),
(109, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 09:23:53', '27-11-2023 06:28:24 PM', 1),
(110, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 10:28:28', '27-11-2023 08:31:44 PM', 1),
(111, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 12:31:49', '28-11-2023 12:54:10 AM', 1),
(112, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 17:08:21', NULL, 1),
(113, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-27 17:15:37', '28-11-2023 11:39:22 AM', 1),
(114, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 03:39:28', '28-11-2023 11:39:40 AM', 1),
(115, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 03:39:46', '28-11-2023 02:03:01 PM', 1),
(116, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 06:03:55', '28-11-2023 02:29:14 PM', 1),
(117, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 06:29:19', '28-11-2023 04:31:28 PM', 1),
(118, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 08:31:32', '28-11-2023 05:49:27 PM', 1),
(119, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 09:49:32', '28-11-2023 06:56:24 PM', 1),
(120, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 10:56:30', '28-11-2023 06:56:38 PM', 1),
(121, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 13:39:52', '28-11-2023 10:55:37 PM', 1),
(122, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 14:55:53', '28-11-2023 10:57:14 PM', 1),
(123, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-28 14:58:17', '28-11-2023 10:59:24 PM', 1),
(124, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-29 11:39:16', NULL, 0),
(125, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-29 11:39:21', '29-11-2023 08:09:08 PM', 1),
(126, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-29 13:57:25', NULL, 1),
(127, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-30 07:40:07', '30-11-2023 03:41:11 PM', 1),
(128, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-30 07:41:19', '30-11-2023 03:50:54 PM', 1),
(129, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-30 07:50:58', '30-11-2023 10:02:26 PM', 1),
(130, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-30 14:02:32', '30-11-2023 10:02:50 PM', 1),
(131, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-11-30 14:02:56', NULL, 1),
(132, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 08:03:02', '01-12-2023 04:10:37 PM', 1),
(133, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 08:10:42', '01-12-2023 04:56:32 PM', 1),
(134, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 08:56:37', '01-12-2023 05:02:24 PM', 1),
(135, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 09:34:05', '01-12-2023 05:59:57 PM', 1),
(136, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 11:39:13', '01-12-2023 07:40:22 PM', 1),
(137, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 11:40:31', '01-12-2023 07:43:04 PM', 1),
(138, NULL, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 11:48:52', NULL, 0),
(139, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 11:48:56', '01-12-2023 08:39:59 PM', 1),
(140, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 12:50:24', '01-12-2023 08:50:35 PM', 1),
(141, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 14:10:08', '01-12-2023 10:11:33 PM', 1),
(142, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 14:36:46', '01-12-2023 10:38:31 PM', 1),
(143, 5, 'john@mail.com', 0x3a3a3100000000000000000000000000, '2023-12-01 14:40:07', '01-12-2023 10:40:45 PM', 1),
(144, 3, 'ferolinoerika@gmail.com', 0x3133362e3135382e33372e3135360000, '2023-12-05 10:44:57', '05-12-2023 06:49:17 PM', 1),
(145, 3, 'ferolinoerika@gmail.com', 0x3133362e3135382e33372e3135360000, '2023-12-05 10:49:32', NULL, 1),
(146, 3, 'ferolinoerika@gmail.com', 0x3133362e3135382e33372e3135360000, '2023-12-05 10:52:33', NULL, 1),
(147, 3, 'ferolinoerika@gmail.com', 0x3133362e3135382e33372e3135360000, '2023-12-05 11:06:42', '05-12-2023 07:35:31 PM', 1),
(148, 3, 'ferolinoerika@gmail.com', 0x3133362e3135382e33372e3135360000, '2023-12-05 12:21:45', '05-12-2023 08:22:57 PM', 1),
(149, 5, 'john@mail.com', 0x3137352e3137362e32332e3537000000, '2023-12-05 16:45:58', '06-12-2023 12:46:28 AM', 1),
(150, 5, 'john@mail.com', 0x3137352e3137362e32332e3537000000, '2023-12-05 16:46:46', '06-12-2023 01:29:22 AM', 1),
(151, 5, 'john@mail.com', 0x3137352e3137362e32332e3537000000, '2023-12-05 17:38:50', '06-12-2023 01:40:06 AM', 1),
(152, NULL, 'ferolinoerika@gmail.com', 0x3131322e3139382e39372e3831000000, '2023-12-06 03:04:03', NULL, 0),
(153, 3, 'ferolinoerika@gmail.com', 0x3131322e3139382e39372e3831000000, '2023-12-06 03:04:18', NULL, 1),
(154, 3, 'ferolinoerika@gmail.com', 0x34352e3131342e3133342e3231340000, '2023-12-06 06:42:27', NULL, 1),
(155, 3, 'ferolinoerika@gmail.com', 0x3131302e35342e3136362e3137300000, '2023-12-06 08:56:30', NULL, 1),
(156, 3, 'ferolinoerika@gmail.com', 0x34352e3131342e3133342e3231340000, '2023-12-06 11:15:57', NULL, 1),
(157, 3, 'ferolinoerika@gmail.com', 0x34352e3131342e3133342e3231340000, '2023-12-06 11:16:08', '06-12-2023 07:37:45 PM', 1),
(158, 7, 'nicoletalce@gmail.com', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:20:00', '09-12-2023 07:20:54 PM', 1),
(159, 8, 'sy@gmail.com', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:32:04', '09-12-2023 07:32:46 PM', 1),
(160, 7, 'nicoletalce@gmail.com', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:37:16', '09-12-2023 07:39:10 PM', 1),
(161, 7, 'nicoletalce@gmail.com', 0x3138302e3139302e33392e3139340000, '2023-12-09 11:42:20', '09-12-2023 07:43:22 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `cart_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`, `cart_data`) VALUES
(3, 'Erika', 'Commonwealth', 'Quezon City', 'female', 'ferolinoerika@gmail.com', '32250170a0dca92d53ec9624f336ca24', '2023-11-19 10:43:52', '2023-12-06 11:25:32', 'a:0:{}'),
(4, 'Nicole', 'Mindanao Ave.', 'Quezon City', 'female', 'nicole@gmail.com', '32250170a0dca92d53ec9624f336ca24', '2023-11-19 13:14:47', NULL, NULL),
(5, 'john', 'jan lang', 'haha', 'male', 'john@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-11-26 08:13:39', '2023-12-05 17:38:55', 'a:3:{i:70;i:1;i:69;i:1;i:68;i:1;}'),
(6, '4444', '4444', '5555', 'male', 'user444@mail.com', '0a4edb143da3fb25fdd853d77e4cd448', '2023-12-06 11:28:31', NULL, NULL),
(7, 'nicole', '93-20', 'quezon city', 'female', 'nicoletalce@gmail.com', 'e99a18c428cb38d5f260853678922e03', '2023-12-09 11:19:47', '2023-12-09 11:43:19', 'a:0:{}'),
(8, 'erika', '93-20', 'qc', 'female', 'sy@gmail.com', 'e99a18c428cb38d5f260853678922e03', '2023-12-09 11:31:52', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
