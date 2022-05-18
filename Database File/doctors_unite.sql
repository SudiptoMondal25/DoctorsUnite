-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 05:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctors_unite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Ad_ID` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `NID` bigint(20) NOT NULL,
  `Email` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_number` int(11) NOT NULL,
  `SatusAge` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `D_ID` int(11) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `NID` bigint(50) NOT NULL,
  `Phone_number` varchar(15) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `Present_work_place` varchar(50) NOT NULL,
  `Specialist` varchar(50) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Educational_background` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Joining_Date` date NOT NULL,
  `StatusBOD` enum('1','0') NOT NULL DEFAULT '0',
  `StatusExperience` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`D_ID`, `First_Name`, `Last_Name`, `NID`, `Phone_number`, `Address`, `City`, `Country`, `Present_work_place`, `Specialist`, `Date_of_Birth`, `Educational_background`, `Email`, `Password`, `Joining_Date`, `StatusBOD`, `StatusExperience`) VALUES
(1, 'Bradford', 'Reed', 2987143274, '01878476742', '4/A Badda', 'Dhaka', 'Bangladesh', 'United Medical Hospital', 'Neurology', '1993-05-18', 'Dhaka Medical College', 'bradford@gmail.com', '12345', '2020-06-19', '0', '0'),
(2, 'Rahman', 'Abdul', 97127410481, '01621316461', '3/A, Badda', 'Dhaka', 'Bangladesh', 'United Medical Hospital', 'Cardiologist', '1992-02-18', 'MBBS at DMC', 'abdul@gmail.com', 'ehqhqw', '2017-12-14', '0', '0'),
(3, 'Jake', 'Miller', 920712798172, '011293616', '2/C, Badda', 'Dhaka', 'Bangladesh', 'United Medical Hospital', 'Neurology', '1992-09-11', 'MBBS at DMC', 'jake@gmail.com', 'hoqohoqyo', '2018-05-17', '0', '0'),
(4, 'Rahim', 'Chowdhury', 92812731239, '016128736', '23/F, Badda', 'Dhaka', 'Bangladesh', 'CMH', 'Cardiologist', '1996-05-24', 'MBBS at Mymenshing Medical College', 'rahim@gmail.com', 'ajhfgiwuaoiqjdq', '2021-05-21', '0', '0'),
(5, 'Jack', 'Sparrow', 9001730790, '016128735', '9/A, Badda', 'Dhaka', 'Bangladesh', 'United Medical Hospital', 'Orthopedic', '1986-09-13', 'Harvard Medical School', 'jack07@gmail.com', 'lhfyo217h', '2013-06-14', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `handles_payment`
--

CREATE TABLE `handles_payment` (
  `Payment_ID` int(11) NOT NULL,
  `Amount` float NOT NULL,
  `Payment_date` date NOT NULL,
  `Ad_ID` int(11) NOT NULL,
  `P_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `Name` varchar(30) NOT NULL,
  `Med_ID` int(11) NOT NULL,
  `Company_Name` varchar(30) NOT NULL,
  `Power` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `P_ID` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`P_ID`, `username`, `email`, `password`) VALUES
(14, 'mario', 'mario@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(15, 'Bario', 'bario@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'Sudipto', 'dipto1407@gmail.com', 'b59c67bf196a4758191e42f76670ceba');

-- --------------------------------------------------------

--
-- Table structure for table `prescribes`
--

CREATE TABLE `prescribes` (
  `D_ID` int(11) NOT NULL,
  `P_ID` int(11) NOT NULL,
  `Med_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `takes_appointment`
--

CREATE TABLE `takes_appointment` (
  `Appointment_date` date NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Ap_ID` int(11) NOT NULL,
  `D_ID` int(11) NOT NULL,
  `P_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `V_ID` int(11) NOT NULL,
  `D_ID` int(11) NOT NULL,
  `Ad_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Ad_ID`),
  ADD UNIQUE KEY `NID` (`NID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Phone_number` (`Phone_number`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`D_ID`),
  ADD UNIQUE KEY `NID` (`NID`),
  ADD UNIQUE KEY `Phone_number` (`Phone_number`),
  ADD UNIQUE KEY `Password` (`Password`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `handles_payment`
--
ALTER TABLE `handles_payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `test` (`Ad_ID`),
  ADD KEY `test2` (`P_ID`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`Med_ID`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`P_ID`),
  ADD UNIQUE KEY `Email` (`email`);

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD KEY `FK1` (`D_ID`),
  ADD KEY `FK2` (`Med_ID`),
  ADD KEY `FK3` (`P_ID`);

--
-- Indexes for table `takes_appointment`
--
ALTER TABLE `takes_appointment`
  ADD PRIMARY KEY (`Ap_ID`),
  ADD KEY `ForeignKey1` (`D_ID`),
  ADD KEY `ForeignKey2` (`P_ID`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`V_ID`),
  ADD KEY `D_ID` (`D_ID`),
  ADD KEY `Ad_ID` (`Ad_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Ad_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `D_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `handles_payment`
--
ALTER TABLE `handles_payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `Med_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `P_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `takes_appointment`
--
ALTER TABLE `takes_appointment`
  MODIFY `Ap_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `V_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `handles_payment`
--
ALTER TABLE `handles_payment`
  ADD CONSTRAINT `test` FOREIGN KEY (`Ad_ID`) REFERENCES `admin` (`Ad_ID`),
  ADD CONSTRAINT `test2` FOREIGN KEY (`P_ID`) REFERENCES `patients` (`P_ID`);

--
-- Constraints for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD CONSTRAINT `FK1` FOREIGN KEY (`D_ID`) REFERENCES `doctors` (`D_ID`),
  ADD CONSTRAINT `FK2` FOREIGN KEY (`Med_ID`) REFERENCES `medicine` (`Med_ID`),
  ADD CONSTRAINT `FK3` FOREIGN KEY (`P_ID`) REFERENCES `patients` (`P_ID`);

--
-- Constraints for table `takes_appointment`
--
ALTER TABLE `takes_appointment`
  ADD CONSTRAINT `ForeignKey1` FOREIGN KEY (`D_ID`) REFERENCES `doctors` (`D_ID`),
  ADD CONSTRAINT `ForeignKey2` FOREIGN KEY (`P_ID`) REFERENCES `patients` (`P_ID`);

--
-- Constraints for table `verification`
--
ALTER TABLE `verification`
  ADD CONSTRAINT `verification_ibfk_1` FOREIGN KEY (`D_ID`) REFERENCES `doctors` (`D_ID`),
  ADD CONSTRAINT `verification_ibfk_2` FOREIGN KEY (`Ad_ID`) REFERENCES `admin` (`Ad_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
