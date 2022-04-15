-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 12:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse470_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(101, 'Naima ', 'Ahmed Nup', 'naima@gmail.com', '1234', '1990-05-20', 'Female', '015', 1212, 'Razarbagh, Dhaka', 'IT', 'Head', 'images/me.jpg'),
(102, 'Farnaz', 'Hasan', 'farnaz@gmail.com', '1234', '2018-01-01', 'Female', '010', 3030, 'Mirpur, Dhaka', 'CSE', 'CSE', 'images/2.png'),
(103, 'Steven', 'Wilson', 'wilson@yahoo.com', '1234', '1990-02-02', 'Male', '011', 6262, 'Thames, UK', 'Creative', 'MSc', 'images/3.jpg'),
(104, 'Guthrie', 'Govan', 'guthrie@hotmail.com', '1234', '1971-12-01', 'Male', '012', 5959, 'Chemsford, USA', 'Creative', 'MSc', 'images/4.png'),
(105, 'Elon', 'Musk', 'elon@spacex.com', '1234', '1971-06-28', 'Male', '013', 5858, 'LA, USA', 'SpaceTech', 'BSc', 'images/5.jpg'),
(106, 'Hacker', 'Man', 'hackerman@live.corp', '1234', '1990-02-02', 'Male', '014', 5757, 'Underground, Dhaka', 'NetworkSecurity', 'MSc', 'images/6.png'),
(107, 'Wonder ', 'Woman', 'woman@nup.corp', '1234', '1995-03-03', 'Female', '016', 5454, 'Virginia, USA', 'Defense ', 'MS', 'images/7.jpg'),
(108, 'Andrew', '', 'andrew@nup.corp', '1234', '1975-10-15', 'Male', '017', 7878, 'New Jersey, USA', 'AI', 'PhD', 'images/8.jpg'),
(109, 'Ian ', 'Goodfellow', 'ian@gsuite.corp', '1234', '1985-01-01', 'Male', '018', 2525, 'California, USA', 'AI', 'PhD', 'images/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(101, 301, '2019-04-07', '2019-04-08', 'Sick Leave', 'Approved'),
(102, 305, '2019-04-07', '2019-04-08', 'Urgent Family Cause', 'Approved'),
(103, 306, '2019-04-08', '2019-04-08', 'Concert Tour', 'Approved'),
(101, 307, '2019-04-14', '2019-04-30', 'Want to see GOT', 'Cancelled'),
(105, 308, '2019-04-26', '2019-04-30', 'Launching Tesla Model Y', 'Pending'),
(104, 310, '2019-04-08', '2019-04-09', 'Emergency Leave', 'Pending'),
(101, 311, '2022-05-14', '2022-05-15', 'Noboborsho Chuti', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(213, 101, 'Database', '2019-04-07', '2019-04-04', 10, 'Submitted'),
(214, 102, 'Test', '2019-04-10', '0000-00-00', 5, 'Due'),
(215, 105, 'Tesla Model Y', '2019-04-19', '2019-04-06', 10, 'Submitted'),
(216, 106, 'Hack', '2019-05-04', '2019-04-05', 5, 'Submitted'),
(218, 105, 'Tesla Model X', '2019-04-03', '2019-04-03', 10, 'Submitted'),
(219, 101, 'PHP', '2019-04-07', '2022-04-14', 0, 'Submitted'),
(222, 103, 'Statistical', '2019-04-19', '2019-04-04', 6, 'Submitted'),
(223, 108, 'Software Scema', '2019-04-09', '2019-04-02', 25, 'Submitted'),
(224, 107, 'Security Check', '2019-04-26', '2019-04-05', 9, 'Submitted'),
(225, 109, 'ML', '2019-04-03', '2019-04-04', 6, 'Submitted'),
(226, 101, 'Bus Idea', '2022-04-14', '0000-00-00', 20, 'Due');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(101, 30),
(102, 5),
(103, 6),
(104, 0),
(105, 20),
(106, 5),
(107, 9),
(108, 28),
(109, 6);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(101, 55000, 30, 71500),
(102, 16500, 5, 25575),
(103, 65000, 6, 68900),
(104, 78000, 0, 78000),
(105, 105000, 20, 126000),
(106, 60000, 5, 63000),
(107, 77000, 9, 83930),
(108, 50000, 28, 64000),
(109, 85000, 0, 85000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
