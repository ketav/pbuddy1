-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2013 at 12:46 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pbuddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE IF NOT EXISTS `user_detail` (
  `name` varchar(500) NOT NULL,
  `email_id` varchar(1000) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `geography` varchar(1000) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`name`, `email_id`, `sex`, `geography`, `user_id`, `age`) VALUES
('Arashdeep Singh', 'asingh58@sapient.com', 'male', 'Gurgaon, Haryana', 2147483647, NULL),
('Arashdeep Sidhu', 'arashdeeps@gmail.com', 'male', 'Gurgaon, Haryana', 726424688, NULL),
('Ketav Sharma', 'ketavsharma@gmail.com', 'male', 'Mandi, India', 1040570136, 21);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
