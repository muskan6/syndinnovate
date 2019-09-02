-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2019 at 02:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `syndicatehackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(7) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `phoneNO` bigint(10) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mr_ms` varchar(3) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `fname`, `lname`, `gender`, `phoneNO`, `pass`, `email`, `mr_ms`, `dob`) VALUES
(1234567, 'Shreya', 'Bansal', 'F', 8802170150, 'shreya5678', 'shreya@syndicate.com', 'Ms', '1998-02-19'),
(3456789, 'Muskan', 'Gupta', 'F', 9999233124, 'muskan1234', 'muskan@syndicate.com', 'Ms', '1997-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agentid` int(7) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mr_ms` varchar(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `id_proof_type` varchar(50) DEFAULT NULL,
  `id_proof_number` bigint(12) DEFAULT NULL,
  `phoneNo` bigint(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `referral_id` int(7) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agentid`, `fname`, `lname`, `mr_ms`, `dob`, `id_proof_type`, `id_proof_number`, `phoneNo`, `Address`, `email`, `pass`, `referral_id`, `points`) VALUES
(1111111, 'Anuj', 'Sharma', 'Mr', '1970-08-12', 'Aadhar card', 222233334444, 9868320704, 'hno 25 f block darya ganj', 'anuj@gmail.com', 'anuj1234', 1234567, 900),
(5555555, 'Mukul', 'Rastogi', 'Mr', '1983-05-21', 'Pan card', 555244484644, 9999923354, 'HNO.182 F-49 tagore garden DELHI', 'mukul@gmail.com', 'mukul1234', 5555888, 900),
(7697367, 'RITU', 'BANSAL', 'Mr.', '1972-12-13', 'Aadhar Card', 888822224444, 8585858585, 'HNO.45 SEC-12  ROHINI Delhi India', 'ritu@syndicate.com', 'ritu1234', 8528664, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(7) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `mr_ms` varchar(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `id_proof_type` varchar(100) DEFAULT NULL,
  `id_proof_number` bigint(16) DEFAULT NULL,
  `phoneNO` bigint(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `fname`, `lname`, `mr_ms`, `dob`, `id_proof_type`, `id_proof_number`, `phoneNO`, `address`, `email`, `pass`) VALUES
(2222222, 'ridhi', 'Malhotra', 'Ms', '1985-02-03', 'Aadhar card', 4141321321321234, 8888326121, 'apartment No-52 westville building gurgaon haryana india', 'ridhi@syndicatebank.com', 'ridhi1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agentid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
