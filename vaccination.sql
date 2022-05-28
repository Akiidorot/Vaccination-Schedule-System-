-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 11:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccination`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(5) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `date`) VALUES
(1, 'admin', 'admin', '2022-02-06 23:52:14');

-- --------------------------------------------------------

--
-- Table structure for table `assign_vaccine`
--

CREATE TABLE `assign_vaccine` (
  `ID` int(20) NOT NULL,
  `patient_no` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `vaccine_brand` varchar(255) NOT NULL,
  `schedule` varchar(50) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dosage_seq` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_vaccine`
--

INSERT INTO `assign_vaccine` (`ID`, `patient_no`, `fullname`, `vaccine_brand`, `schedule`, `status`, `dosage_seq`, `date`) VALUES
(19, '31', 'aki idorot', 'Astrazenica', '2022-04-13', 'Vaccinated', '1st Dose', '2022-05-12 18:33:45'),
(20, '31', 'aki idorot', 'Astrazenica', '2022-05-13', 'Process', '2nd Dose', '2022-05-12 18:33:25'),
(21, '32', 'Irish Jane Ibañez', 'Sinovac', '2022-05-31', 'Process', '2nd Dose', '2022-05-12 19:26:50'),
(22, '33', 'bianca bartolome', 'Sinovac', '2022-05-31', 'Process', '1st Dose', '2022-05-20 08:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_registration`
--

CREATE TABLE `vaccine_registration` (
  `ID` int(20) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine_registration`
--

INSERT INTO `vaccine_registration` (`ID`, `firstname`, `lastname`, `contact`, `email`, `address`, `birthday`, `gender`, `age`, `date`) VALUES
(31, 'aki', 'idorot', '09167853439', 'idorotaki08@gmail.com', 'Caloocan City', '2022-06-02', 'FEMALE', 20, '2022-05-12 16:47:14'),
(32, 'Irish Jane', 'Ibañez', '09123456789', 'ibanez_irishjanne@spcc.edu.ph', 'lot1 ph3 blk.28 tulingan st. caloocan city', '2001-02-14', 'FEMALE', 21, '2022-05-12 19:25:57'),
(33, 'bianca', 'bartolome', '09281172878', 'baguio.bianca1704@gmail.com', 'Manila City', '2022-05-27', 'female', 20, '2022-05-12 19:32:26'),
(34, 'bianca', 'bartolome', '09281172878', 'baguio.bianca1704@gmail.com', 'Manila City', '2022-06-01', 'female', 20, '2022-05-20 09:03:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `assign_vaccine`
--
ALTER TABLE `assign_vaccine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vaccine_registration`
--
ALTER TABLE `vaccine_registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_vaccine`
--
ALTER TABLE `assign_vaccine`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vaccine_registration`
--
ALTER TABLE `vaccine_registration`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
