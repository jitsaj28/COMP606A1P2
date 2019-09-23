-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 04:25 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `uname`, `pwd`) VALUES
(1, 'vicky', '123'),
(2, 'jnlkj', 'jkl'),
(3, 'h', 'h');

-- --------------------------------------------------------

--
-- Table structure for table `parlour`
--

CREATE TABLE `parlour` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `nofemp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parlour`
--

INSERT INTO `parlour` (`id`, `name`, `address`, `nofemp`) VALUES
(1, 'abc parlour', 'chennai', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sch`
--

CREATE TABLE `tbl_sch` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `type_massage`
--

CREATE TABLE `type_massage` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `time` varchar(10) NOT NULL,
  `amnt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_massage`
--

INSERT INTO `type_massage` (`id`, `p_id`, `Name`, `time`, `amnt`) VALUES
(1, 1, 'ABC ', '1', 300),
(2, 1, 'bCD ', '1', 400),
(3, 1, 'DJF ', '1', 350),
(4, 1, 'DS ', '1', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_AutoID` int(11) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Age` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_AutoID`, `User_Name`, `Age`, `Address`, `email`, `uname`, `pwd`) VALUES
(1, 'viknesh', '12', 'dgjo', 'dffd', 'vicky', '123'),
(2, 'sudha', '1', 'trichy', 'sudhajeva@gmail.com', 'sudha', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `parlour`
--
ALTER TABLE `parlour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sch`
--
ALTER TABLE `tbl_sch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_massage`
--
ALTER TABLE `type_massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_AutoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parlour`
--
ALTER TABLE `parlour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sch`
--
ALTER TABLE `tbl_sch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `type_massage`
--
ALTER TABLE `type_massage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
