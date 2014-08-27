-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2014 at 04:01 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car_codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_administrator`
--

CREATE TABLE IF NOT EXISTS `cp_administrator` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_created_date` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cp_administrator`
--

INSERT INTO `cp_administrator` (`admin_id`, `admin_name`, `admin_password`, `admin_created_date`) VALUES
(1, 'admin', 'YWRtaW4=', '01-18-2014');

-- --------------------------------------------------------

--
-- Table structure for table `cp_area`
--

CREATE TABLE IF NOT EXISTS `cp_area` (
  `area_id` int(10) NOT NULL AUTO_INCREMENT,
  `city_id` int(10) NOT NULL,
  `from_area_name` varchar(255) NOT NULL,
  `to_area_name` varchar(255) NOT NULL,
  `modified_by` varchar(150) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `cp_area`
--

INSERT INTO `cp_area` (`area_id`, `city_id`, `from_area_name`, `to_area_name`, `modified_by`, `created_date`) VALUES
(15, 10, 'ammerpet', 'hitechcity', 'User', 'Fri Jan 31 2014 03:57:01 AM');

-- --------------------------------------------------------

--
-- Table structure for table `cp_casual_lift`
--

CREATE TABLE IF NOT EXISTS `cp_casual_lift` (
  `clift_id` int(20) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `clift_type` varchar(255) NOT NULL,
  `clift_leaving_date` varchar(255) NOT NULL,
  `clift_leaving_time` varchar(255) NOT NULL,
  `clift_route` text NOT NULL,
  `clift_sharing_cost` varchar(255) NOT NULL,
  `clift_commuter` varchar(150) NOT NULL,
  `clift_description` text NOT NULL,
  `clift_publish` varchar(150) NOT NULL,
  `clift_created_date` varchar(255) NOT NULL,
  PRIMARY KEY (`clift_id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cities`
--

CREATE TABLE IF NOT EXISTS `cp_cities` (
  `city_id` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` int(10) NOT NULL,
  `reg_id` int(10) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `to_city_name` varchar(255) NOT NULL,
  `city_pincode` varchar(150) NOT NULL,
  `modified_by` varchar(150) NOT NULL,
  PRIMARY KEY (`city_id`),
  KEY `FK_state` (`state_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `cp_cities`
--

INSERT INTO `cp_cities` (`city_id`, `state_name`, `reg_id`, `city_name`, `to_city_name`, `city_pincode`, `modified_by`) VALUES
(10, 1, 6, 'hyderabad', '', '500034', 'User'),
(9, 1, 3, 'hyderabad', '', '500034', 'User'),
(8, 1, 3, 'hyderabad', '', '5467892', 'User'),
(11, 1, 3, 'hyderabad', '', '500034', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `cp_regular_lift`
--

CREATE TABLE IF NOT EXISTS `cp_regular_lift` (
  `rlift_id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `rlift_type` varchar(255) NOT NULL,
  `rlift_leaving_time` varchar(255) NOT NULL,
  `rlift_return_time` varchar(255) NOT NULL,
  `rlift_route` text NOT NULL,
  `rlift_frequency` text NOT NULL,
  `rlift_vehicle_type` varchar(255) NOT NULL,
  `rlift_sharing_cost` varchar(150) NOT NULL,
  `rlift_commuter` varchar(150) NOT NULL,
  `rlift_description` text NOT NULL,
  `rlift_publish` varchar(150) NOT NULL,
  `rlift_created_date` varchar(255) NOT NULL,
  PRIMARY KEY (`rlift_id`),
  KEY `FK_reg` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `cp_regular_lift`
--

INSERT INTO `cp_regular_lift` (`rlift_id`, `reg_id`, `rlift_type`, `rlift_leaving_time`, `rlift_return_time`, `rlift_route`, `rlift_frequency`, `rlift_vehicle_type`, `rlift_sharing_cost`, `rlift_commuter`, `rlift_description`, `rlift_publish`, `rlift_created_date`) VALUES
(18, 3, 'Regular', '10:00', '5:00', 'amerpet,srnagar,hitech,,,,,,', 'Mon Tue Wed Thu Fri ', '4wheeler', '450 INR', 'Male', 'welcome', 'Active', 'Fri Jan 31 2014 03:57:01 AM');

-- --------------------------------------------------------

--
-- Table structure for table `cp_state`
--

CREATE TABLE IF NOT EXISTS `cp_state` (
  `state_id` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_created_date` varchar(255) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `cp_state`
--

INSERT INTO `cp_state` (`state_id`, `state_name`, `state`, `state_created_date`) VALUES
(1, '0', 'Andaman & Nicobar', 'Fri Jan 24 2014 07:40:56 AM'),
(2, '1', 'Andhra Pradesh', 'Fri Jan 24 2014 07:40:56 AM'),
(3, '2', 'Arunachal Pradesh', 'Fri Jan 24 2014 07:40:56 AM'),
(4, '3', 'Assam', 'Fri Jan 24 2014 07:40:56 AM'),
(5, '4', 'Bihar', 'Fri Jan 24 2014 07:40:56 AM'),
(6, '5', 'Chandigarh', 'Fri Jan 24 2014 07:40:56 AM'),
(7, '6', 'Chattisgarh', 'Fri Jan 24 2014 07:40:56 AM'),
(8, '7', 'Dadar & Nagar', 'Fri Jan 24 2014 07:40:56 AM'),
(9, '8', 'Daman & Diu', 'Fri Jan 24 2014 07:40:56 AM'),
(10, '9', 'Delhi', 'Fri Jan 24 2014 07:40:56 AM'),
(11, '10', 'Goa', 'Fri Jan 24 2014 07:40:56 AM'),
(12, '11', 'Gujarat', 'Fri Jan 24 2014 07:40:56 AM'),
(13, '12', 'Haryana', 'Fri Jan 24 2014 07:40:56 AM'),
(14, '13', 'Himachal Pradesh', 'Fri Jan 24 2014 07:40:56 AM'),
(15, '14', 'Jammu & Kashmir', 'Fri Jan 24 2014 07:40:56 AM'),
(16, '15', 'Jarkhand', 'Fri Jan 24 2014 07:40:56 AM'),
(17, '16', 'Karnataka', 'Fri Jan 24 2014 07:40:56 AM'),
(18, '17', 'Kerala', 'Fri Jan 24 2014 07:40:56 AM'),
(19, '18', 'Lakhadweep', 'Fri Jan 24 2014 07:40:56 AM'),
(20, '19', 'Madhya Pradesh', 'Fri Jan 24 2014 07:40:56 AM'),
(21, '20', 'Maharashtra', 'Fri Jan 24 2014 07:40:56 AM'),
(22, '21', 'Manipur', 'Fri Jan 24 2014 07:40:56 AM'),
(23, '22', 'Meghalaya', 'Fri Jan 24 2014 07:40:56 AM'),
(24, '23', 'Mizoram', 'Fri Jan 24 2014 07:40:56 AM'),
(25, '24', 'Nagaland', 'Fri Jan 24 2014 07:40:56 AM'),
(26, '25', 'Orissa', 'Fri Jan 24 2014 07:40:56 AM'),
(27, '26', 'Pondicherry', 'Fri Jan 24 2014 07:40:56 AM'),
(28, '27', 'Punjab', 'Fri Jan 24 2014 07:40:56 AM'),
(29, '28', 'Rajasthan', 'Fri Jan 24 2014 07:40:56 AM'),
(30, '29', 'Sikkim', 'Fri Jan 24 2014 07:40:56 AM'),
(31, '30', 'Tamilnadu', 'Fri Jan 24 2014 07:40:56 AM'),
(32, '31', 'Tripura', 'Fri Jan 24 2014 07:40:56 AM'),
(33, '32', 'Uttar Pradesh', 'Fri Jan 24 2014 07:40:56 AM'),
(34, '33', 'Uttaranchal', 'Fri Jan 24 2014 07:40:56 AM'),
(35, '34', 'West Bengal', 'Fri Jan 24 2014 07:40:56 AM'),
(36, '--- Select State ---', '', 'Wed Jan 29 2014 02:06:59 AM'),
(37, '--- Select State ---', '', 'Wed Jan 29 2014 02:07:03 AM'),
(38, '--- Select State ---', '', 'Wed Jan 29 2014 02:11:31 AM'),
(39, '--- Select State ---', '', 'Wed Jan 29 2014 02:19:19 AM'),
(40, '--- Select State ---', '', 'Wed Jan 29 2014 02:19:27 AM'),
(41, '--- Select State ---', '', 'Wed Jan 29 2014 02:19:32 AM'),
(42, '--- Select State ---', '', 'Wed Jan 29 2014 02:19:47 AM'),
(43, '1', '', 'Wed Jan 29 2014 02:27:46 AM'),
(44, '', '', 'Wed Jan 29 2014 02:30:25 AM'),
(45, '', '', 'Wed Jan 29 2014 02:30:42 AM'),
(46, '', '', 'Wed Jan 29 2014 02:30:54 AM'),
(47, '--- Select State ---', '', 'Wed Jan 29 2014 02:31:12 AM'),
(48, '--- Select State ---', '', 'Wed Jan 29 2014 02:31:25 AM'),
(49, '--- Select State ---', '', 'Wed Jan 29 2014 02:33:49 AM'),
(50, '--- Select State ---', '', 'Wed Jan 29 2014 02:35:19 AM'),
(51, '--- Select State ---', '', 'Wed Jan 29 2014 02:36:12 AM'),
(52, '', '', 'Wed Jan 29 2014 02:37:26 AM'),
(53, '', '', 'Wed Jan 29 2014 02:37:27 AM'),
(54, '', '', 'Wed Jan 29 2014 02:37:28 AM'),
(55, '1', '', 'Wed Jan 29 2014 03:02:22 AM'),
(56, '1', '', 'Wed Jan 29 2014 03:04:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `cp_users`
--

CREATE TABLE IF NOT EXISTS `cp_users` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_firstname` varchar(150) NOT NULL,
  `reg_lastname` varchar(150) NOT NULL,
  `reg_password` varchar(100) NOT NULL,
  `reg_gender` varchar(50) NOT NULL,
  `reg_mobile` varchar(100) NOT NULL,
  `reg_email` varchar(255) NOT NULL,
  `reg_dob` varchar(150) NOT NULL,
  `reg_city` varchar(150) NOT NULL,
  `reg_created_date` varchar(255) NOT NULL,
  `reg_last_visit_date` varchar(255) NOT NULL,
  `reg_last_password_reset_date` varchar(255) NOT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cp_users`
--

INSERT INTO `cp_users` (`reg_id`, `reg_firstname`, `reg_lastname`, `reg_password`, `reg_gender`, `reg_mobile`, `reg_email`, `reg_dob`, `reg_city`, `reg_created_date`, `reg_last_visit_date`, `reg_last_password_reset_date`) VALUES
(6, 'bhaskar', 'babu', 'MTIz', 'Male', '9704505674', 'bhaskar.pragada@gmail.com', '1985-1-1', 'hyderabad', 'Thu Jan 30 2014 20:46:02', 'Thu Jan 30 2014 20:46:02', 'Thu Jan 30 2014 20:46:02'),
(3, 'nagababu', 'ch', 'MTIz', 'Male', '8712110137', 'cn@gmail.com', '1994-1-1', 'hyderabad', 'Fri Jan 24 2014 23:06:33', 'Fri Jan 24 2014 23:06:33', 'Fri Jan 24 2014 23:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `cp_user_notes`
--

CREATE TABLE IF NOT EXISTS `cp_user_notes` (
  `reg_note_id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_id` int(50) NOT NULL,
  `reg_activation_code` int(50) NOT NULL,
  `reg_sendemail` int(2) NOT NULL,
  `reg_mobile_sendactcode` int(2) NOT NULL,
  `reg_browser_agent` varchar(150) NOT NULL,
  `reg_user_ipaddress` varchar(150) NOT NULL,
  `reg_user_location_info` varchar(150) NOT NULL,
  `reg_email_activation_status` int(2) NOT NULL,
  `reg_mobile_activation_status` int(2) NOT NULL,
  `reg_block` int(2) NOT NULL,
  `reg_activation_count` int(2) NOT NULL,
  PRIMARY KEY (`reg_note_id`),
  KEY `FK_reg` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cp_user_notes`
--

INSERT INTO `cp_user_notes` (`reg_note_id`, `reg_id`, `reg_activation_code`, `reg_sendemail`, `reg_mobile_sendactcode`, `reg_browser_agent`, `reg_user_ipaddress`, `reg_user_location_info`, `reg_email_activation_status`, `reg_mobile_activation_status`, `reg_block`, `reg_activation_count`) VALUES
(1, 1, 308655200, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(2, 2, 251885200, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(3, 3, 114125200, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(4, 4, 2147483647, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(5, 5, 2147483647, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(6, 6, 3061552, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
