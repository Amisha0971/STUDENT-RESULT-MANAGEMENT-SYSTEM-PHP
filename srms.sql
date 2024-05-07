-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 04:54 PM
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
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-01-01 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'BCA', 1, 'C', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(10, 'BCA-2yr', 2, 'A', '2022-04-22 13:26:29', NULL),
(11, 'MCM IV Semester', 1010, 'COM', '2024-04-20 03:21:26', NULL),
(12, 'MCM IV Semester', 4, 'COMPU', '2024-04-20 03:38:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2022-01-01 10:30:57', NULL),
(3, 1, 1, 1, 80, '2022-01-01 10:30:57', NULL),
(4, 1, 1, 5, 78, '2022-01-01 10:30:57', NULL),
(5, 1, 1, 4, 60, '2022-01-01 10:30:57', NULL),
(6, 2, 4, 2, 90, '2022-01-01 10:30:57', NULL),
(7, 2, 4, 1, 75, '2022-01-01 10:30:57', NULL),
(8, 2, 4, 5, 56, '2022-01-01 10:30:57', NULL),
(9, 2, 4, 4, 80, '2022-01-01 10:30:57', NULL),
(10, 4, 7, 2, 54, '2022-01-01 10:30:57', NULL),
(11, 4, 7, 1, 85, '2022-01-01 10:30:57', NULL),
(12, 4, 7, 5, 55, '2022-01-01 10:30:57', NULL),
(13, 4, 7, 7, 65, '2022-01-01 10:30:57', NULL),
(14, 5, 8, 2, 75, '2022-01-01 10:30:57', NULL),
(15, 5, 8, 1, 56, '2022-01-01 10:30:57', NULL),
(16, 5, 8, 5, 52, '2022-01-01 10:30:57', NULL),
(17, 5, 8, 4, 80, '2022-01-01 10:30:57', NULL),
(18, 6, 9, 8, 80, '2022-01-01 15:20:18', NULL),
(19, 6, 9, 8, 70, '2022-01-01 15:20:18', NULL),
(20, 6, 9, 2, 90, '2022-01-01 15:20:18', NULL),
(21, 6, 9, 1, 60, '2022-01-01 15:20:18', NULL),
(22, 7, 11, 13, 90, '2024-04-20 03:25:08', NULL),
(23, 7, 11, 12, 89, '2024-04-20 03:25:08', NULL),
(24, 7, 11, 11, 89, '2024-04-20 03:25:08', NULL),
(25, 8, 12, 16, 89, '2024-04-20 03:47:35', NULL),
(26, 8, 12, 15, 90, '2024-04-20 03:47:35', NULL),
(27, 8, 12, 14, 98, '2024-04-20 03:47:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2022-01-01 10:30:57', NULL, 1),
(2, 'Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2022-01-01 10:30:57', NULL, 0),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2022-01-01 10:30:57', NULL, 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2022-01-01 10:30:57', NULL, 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2022-01-01 10:30:57', NULL, 1),
(6, 'Shiv Gupta', '12345', 'shiv34534@gmail.com', 'Male', '2007-01-12', 9, '2022-01-01 15:19:40', NULL, 1),
(7, 'Amisha Ninawe', '100', 'amisha@gmail.com', 'Female', '2001-07-09', 11, '2024-04-20 03:24:41', NULL, 1),
(8, 'vaishnvai Mahakalkar', '101', 'vai@gmail.com', 'Female', '1998-02-05', 12, '2024-04-20 03:46:56', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2022-01-01 10:30:57', NULL),
(4, 1, 2, 1, '2022-01-01 10:30:57', NULL),
(5, 1, 4, 1, '2022-01-01 10:30:57', NULL),
(6, 1, 5, 1, '2022-01-01 10:30:57', NULL),
(8, 4, 4, 1, '2022-01-01 10:30:57', NULL),
(10, 4, 1, 1, '2022-01-01 10:30:57', NULL),
(12, 4, 2, 1, '2022-01-01 10:30:57', NULL),
(13, 4, 5, 1, '2022-01-01 10:30:57', NULL),
(14, 6, 1, 1, '2022-01-01 10:30:57', NULL),
(15, 6, 2, 1, '2022-01-01 10:30:57', NULL),
(16, 6, 4, 1, '2022-01-01 10:30:57', NULL),
(17, 6, 6, 1, '2022-01-01 10:30:57', NULL),
(18, 7, 1, 1, '2022-01-01 10:30:57', NULL),
(19, 7, 7, 1, '2022-01-01 10:30:57', NULL),
(20, 7, 2, 1, '2022-01-01 10:30:57', NULL),
(21, 7, 6, 1, '2022-01-01 10:30:57', NULL),
(22, 7, 5, 0, '2022-01-01 10:30:57', NULL),
(23, 8, 1, 1, '2022-01-01 10:30:57', NULL),
(24, 8, 2, 1, '2022-01-01 10:30:57', NULL),
(25, 8, 4, 1, '2022-01-01 10:30:57', NULL),
(26, 8, 6, 1, '2022-01-01 10:30:57', NULL),
(27, 8, 5, 0, '2022-01-01 10:30:57', NULL),
(28, 9, 1, 1, '2022-01-01 15:18:40', NULL),
(29, 9, 2, 1, '2022-01-01 15:18:43', NULL),
(30, 9, 8, 1, '2022-01-01 15:18:48', NULL),
(31, 9, 8, 1, '2022-01-01 15:18:54', NULL),
(32, 11, 11, 1, '2024-04-20 03:23:18', NULL),
(33, 11, 12, 1, '2024-04-20 03:23:25', NULL),
(34, 11, 13, 1, '2024-04-20 03:23:29', NULL),
(35, 12, 14, 1, '2024-04-20 03:45:26', NULL),
(36, 12, 15, 1, '2024-04-20 03:45:35', NULL),
(37, 12, 16, 1, '2024-04-20 03:45:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2022-01-01 10:30:57', NULL),
(2, 'English', 'ENG11', '2022-01-01 10:30:57', NULL),
(4, 'Science', 'SC1', '2022-01-01 10:30:57', NULL),
(5, 'Music', 'MS', '2022-01-01 10:30:57', NULL),
(6, 'Social Studies', 'SS08', '2022-01-01 10:30:57', NULL),
(7, 'Physics', 'PH03', '2022-01-01 10:30:57', NULL),
(8, 'Chemistry', 'CH65', '2022-01-01 10:30:57', NULL),
(11, 'Python', 'M1', '2024-04-20 03:22:10', NULL),
(12, 'Asp.net', 'M2', '2024-04-20 03:22:27', NULL),
(13, 'ADV. JAVA', 'M3', '2024-04-20 03:22:45', NULL),
(14, 'software Engineering ', '12', '2024-04-20 03:41:17', NULL),
(15, 'Biology', 'B3', '2024-04-20 03:42:04', NULL),
(16, 'AI', 'AI4', '2024-04-20 03:42:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
