-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2014 at 08:49 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo_codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `title`, `text`) VALUES
(1, 'Hello World!', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla  \nsapien eros, lacinia eu, consectetur vel, dignissim et, massa. Praesent suscipit nunc vitae neque. Duis a ipsum. Nunc a erat. Praesent  \nnec libero. Phasellus lobortis, velit sed pharetra imperdiet, justo ipsum facilisis arcu, in eleifend elit nulla sit amet tellus.  \nPellentesque molestie dui lacinia nulla. Sed vitae arcu at nisl sodales ultricies. Etiam mi ligula, consequat eget, elementum sed,  \nvulputate in, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;');

-- --------------------------------------------------------

--
-- Table structure for table `hall_details`
--

CREATE TABLE IF NOT EXISTS `hall_details` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hall` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `hall_details`
--

INSERT INTO `hall_details` (`id`, `hall`, `city`) VALUES
(7, 'beemas', 'banglore'),
(8, 'karthik', 'hyd'),
(10, 'paradise', 'hyderabad'),
(11, 'ameerpet', 'banglore');

-- --------------------------------------------------------

--
-- Table structure for table `imgupload`
--

CREATE TABLE IF NOT EXISTS `imgupload` (
  `imgid` int(10) NOT NULL AUTO_INCREMENT,
  `imgpath` varchar(100) NOT NULL,
  PRIMARY KEY (`imgid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `imgupload`
--

INSERT INTO `imgupload` (`imgid`, `imgpath`) VALUES
(8, 'uploads/Koala5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'surya', 'babu@gmail.com', 'aff8fbcbf1363cd7edc85a1e11391173'),
(2, 'bhaskar', 'bhaskar@gmail.com', 'e776db715b807d7fc675764a415e9c23'),
(3, 'shiva', 'shiva@gmail.com', '69f404925df883e0e5579d65b7768e7c');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
