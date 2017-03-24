-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 01:02 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `airzim`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE IF NOT EXISTS `bookings` (
`userid` int(200) NOT NULL,
  `date` date NOT NULL,
  `optradio` varchar(10) DEFAULT NULL,
  `from` varchar(20) NOT NULL,
  `todest` varchar(20) NOT NULL,
  `fromdate` date NOT NULL,
  `adultsq` int(3) NOT NULL,
  `kidsq` int(3) NOT NULL,
  `ticketnum` varchar(20) NOT NULL,
  `total` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nid` varchar(15) NOT NULL,
  `cell` int(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf32;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`userid`, `date`, `optradio`, `from`, `todest`, `fromdate`, `adultsq`, `kidsq`, `ticketnum`, `total`, `name`, `nid`, `cell`, `email`) VALUES
(1, '2017-03-13', 'roundtrip', 'HARARE', 'harare', '2017-03-14', 2, 0, 'AFRI7124Z', 200, 'Kudakwashe Masangomai ', '63-249349729R43', 777696355, 'kudam775@gmail.com'),
(2, '2017-03-20', 'roundtrip', 'HARARE', 'BULUWAYO', '2017-03-21', 1, 0, 'AFRI31959Z', 100, 'kuku', '632499746r65', 777567344, 'mj@gmail.com'),
(4, '2017-03-23', 'one way', 'HARARE', 'BULUWAYO', '2017-03-25', 11, 1, 'AFRI14027Z', 1150, 'tatenta', '63 656577t45', 777696355, 'tat@gmail.com'),
(5, '2017-03-24', 'roundtrip', 'HARARE', 'BULUWAYO', '2017-03-27', 1, 1, 'AFRI31800Z', 150, 'tendai', '63-24567yt54', 77696355, 'tend@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`c_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`c_id`, `date`, `email`, `comment`) VALUES
(4, '2017-03-11', 'kudam775@gmail.com', '    \r\n  Good work hey guys.KEEP IT UP'),
(5, '2017-03-13', 'tm@gmail.com', '    makanyanya\r\n  '),
(6, '2017-03-15', 'pfid@gmail.com', '    help with this\r\n  '),
(7, '2017-03-15', 'macandela@gmail.com', 'excellent service keep up the good work'),
(8, '2017-03-20', 'ennie@gmail.com', '    \r\n  good wrk'),
(9, '2017-03-23', 'tat@gmail.com', '    munopenga\r\n  '),
(10, '2017-03-24', 'tendai@gmail.com', '    \r\n  your services are poor');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE IF NOT EXISTS `tblcustomers` (
  `customer_id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `id_num` int(11) NOT NULL,
  `ticket_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblrecyclebin`
--

CREATE TABLE IF NOT EXISTS `tblrecyclebin` (
`recycle_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `optradio` varchar(50) NOT NULL,
  `from` varchar(50) NOT NULL,
  `todest` varchar(50) NOT NULL,
  `fromdate` date NOT NULL,
  `adults` int(50) NOT NULL,
  `kidsq` int(50) NOT NULL,
  `ticketnum` varchar(50) NOT NULL,
  `total` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `cell` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrecyclebin`
--

INSERT INTO `tblrecyclebin` (`recycle_id`, `date`, `optradio`, `from`, `todest`, `fromdate`, `adults`, `kidsq`, `ticketnum`, `total`, `name`, `nid`, `cell`, `email`) VALUES
(2, '2017-03-13', 'roundtrip', 'HARARE', 'harare', '2017-03-14', 1, 1, 'AFRI20952Z', 150, 'tendai mhete', '63-123456789', '772448675', 'kc@gmail.com'),
(3, '2017-03-20', 'roundtrip', 'HARARE', 'BULUWAYO', '2017-03-22', 2, 2, 'AFRI21012Z', 300, 'ennie', '78567908r45', '777678123', 'eniie@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin12345'),
(2, 'kuda', 'k@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225'),
(3, 'kuda', 'kudam775@gmail.com', '23908b1736c8c59efa6fdfd19b523bf4ee87dafc114c1dd0fba92488a610db41'),
(4, 'Lisah', 'lisah@gmail.com', '4fe48b286db63066ac02cc8ad7d11b0f0d0bb981b39dcf5e75a88f37098fe60c'),
(5, 'mk', 'kudam@gmail.com', 'kud@kwashe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
 ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
 ADD PRIMARY KEY (`customer_id`), ADD KEY `name` (`name`,`id_num`,`ticket_num`);

--
-- Indexes for table `tblrecyclebin`
--
ALTER TABLE `tblrecyclebin`
 ADD PRIMARY KEY (`recycle_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userId`), ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
MODIFY `userid` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblrecyclebin`
--
ALTER TABLE `tblrecyclebin`
MODIFY `recycle_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
ADD CONSTRAINT `tblcustomers_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `bookings` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
