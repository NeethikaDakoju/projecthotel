-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2018 at 07:30 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prohotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `uid` int(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `upass` varchar(30) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `uemail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`uid`, `uname`, `upass`, `fullname`, `uemail`) VALUES
(1, 'neethika', 'neethika', 'sailakshmineethika', 'neethu@gmail.com'),
(2, 'lucy', 'lucy', 'lucysarojini', 'lucy@gmail.com'),
(3, 'hema', 'hema', 'hemavarshini', 'hema@gmail.com'),
(4, 'manu', 'manu', 'manaswi', 'manu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `roomcat`
--

CREATE TABLE `roomcat` (
  `rname` text NOT NULL,
  `rqnty` int(20) NOT NULL,
  `availability` int(20) NOT NULL,
  `booked` int(20) NOT NULL,
  `nobed` int(20) NOT NULL,
  `bedtype` text NOT NULL,
  `facility` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomcat`
--

INSERT INTO `roomcat` (`rname`, `rqnty`, `availability`, `booked`, `nobed`, `bedtype`, `facility`, `price`) VALUES
('Duplex', 10, 10, 0, 2, 'single', 'AC,TV,WIFI', 2000),
('Family', 10, 10, 0, 2, 'Double', 'AC,TV,Sofa, WIFI,Balcony,Complimentary Breakfast', 4000),
('Super-comfort', 10, 10, 0, 2, 'double', 'AC,TV,WIFI', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `rid` int(200) NOT NULL,
  `rcat` text NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `name` text NOT NULL,
  `phone` int(100) NOT NULL,
  `book` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`rid`, `rcat`, `checkin`, `checkout`, `name`, `phone`, `book`) VALUES
(901, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(902, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(903, 'Duplex', '2018-06-16', '2018-06-20', 'DoMinJoon', 987654321, 'true'),
(905, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(906, 'Duplex', '2018-09-18', '2018-09-22', 'CheonSongYi', 547896321, 'true'),
(904, 'Duplex', '0000-00-00', '0000-00-00', '', 0, 'false'),
(1001, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(1002, 'Family', '2018-06-19', '2018-06-21', 'KimHyunJoon', 456789123, 'true'),
(1003, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(1004, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(1005, 'Family', '2018-10-10', '2018-10-15', 'LeMinHoo', 1236547892, 'true'),
(1006, 'Family', '0000-00-00', '0000-00-00', '', 0, 'false'),
(2001, 'Super comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(2002, 'super-comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(2003, 'super-comfort', '2018-10-16', '2018-10-18', 'parkshinhy', 456612378, 'true'),
(2004, 'super-comfort', '2018-12-16', '2018-12-20', 'LeeJongsuk', 1544521658, 'true'),
(2005, 'super-comfort', '0000-00-00', '0000-00-00', '', 0, 'false'),
(2006, 'super-comfort', '0000-00-00', '0000-00-00', '', 0, 'false');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
