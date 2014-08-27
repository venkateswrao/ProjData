-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 12:52 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbtrading`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `cp_area`
--

INSERT INTO `cp_area` (`area_id`, `city_id`, `from_area_name`, `to_area_name`, `modified_by`, `created_date`) VALUES
(12, 3, 'ammerpet', 'hitechcity', 'User', 'Fri Feb 07 2014 07:09:47 AM'),
(13, 3, 'banjarahills', 'vinukonda', 'User', 'Fri Feb 07 2014 09:00:09 AM'),
(9, 3, 'ammerpet', '', 'User', 'Fri Feb 07 2014 06:07:09 AM'),
(10, 5, 'ameerpet', '', 'User', 'Fri Feb 07 2014 06:37:02 AM'),
(11, 3, 'hitechcity', '', 'User', 'Fri Feb 07 2014 06:42:39 AM'),
(16, 20, 'Tatipaka', 'Ballipadu', 'User', 'Sat Feb 08 2014 07:45:54 AM'),
(17, 3, 'ammerpet', 'hitechcity', 'User', 'Mon Feb 10 2014 06:36:37 AM'),
(18, 3, 'ammerpet', 'hitechcity', 'User', 'Mon Feb 10 2014 06:43:30 AM'),
(19, 22, 'abc_village', '', 'User', 'Wed Feb 12 2014 06:22:38 AM');

-- --------------------------------------------------------

--
-- Table structure for table `cp_casual_lift`
--

CREATE TABLE IF NOT EXISTS `cp_casual_lift` (
  `clift_id` int(20) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `clift_type` varchar(255) NOT NULL,
  `from_state_id` int(6) NOT NULL,
  `from_city` varchar(20) NOT NULL,
  `from_area` varchar(20) NOT NULL,
  `to_state_id` int(6) NOT NULL,
  `to_city` varchar(20) NOT NULL,
  `to_area` varchar(20) NOT NULL,
  `clift_leaving_date` varchar(255) NOT NULL,
  `clift_leaving_time` varchar(255) NOT NULL,
  `clift_route` text NOT NULL,
  `clift_sharing_cost` varchar(255) NOT NULL,
  `clift_commuter` varchar(150) NOT NULL,
  `clift_description` text NOT NULL,
  `clift_publish` varchar(150) NOT NULL,
  `clift_created_date` varchar(255) NOT NULL,
  `clift_views` int(11) NOT NULL,
  PRIMARY KEY (`clift_id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cp_casual_lift`
--

INSERT INTO `cp_casual_lift` (`clift_id`, `reg_id`, `clift_type`, `from_state_id`, `from_city`, `from_area`, `to_state_id`, `to_city`, `to_area`, `clift_leaving_date`, `clift_leaving_time`, `clift_route`, `clift_sharing_cost`, `clift_commuter`, `clift_description`, `clift_publish`, `clift_created_date`, `clift_views`) VALUES
(1, 3, 'Casual', 1, 'Razole', 'Tatipaka', 1, 'Attili', 'Ballipadu', '09-02-2014', '3:10 AM', 'Tatipaka,Palakol,Ballipadu,,,,,,', '230 INR', 'Any', 'welcome Guest', 'Active', 'Sat Feb 08 2014 10:27:29 AM', 1),
(2, 8, 'Casual', 1, 'abc', 'abc_village', 1, 'xyz', 'xyz_village', '09-02-2014', '1:5 AM', 'abc,fgh,xyz,,,,,,', '230 INR', 'Any', 'hi welcome', 'Active', 'Sat Feb 08 2014 13:40:28 PM', 0),
(3, 3, 'Casual', 1, 'abc', 'abc_village', 1, 'xyz', 'xyz_village', '09-02-2014', '4:30 AM', 'abc,fgh,xyz,,,,,,', '230 INR', 'Any', 'nani', 'Active', 'Sat Feb 08 2014 13:50:44 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cp_casual_lift1`
--

CREATE TABLE IF NOT EXISTS `cp_casual_lift1` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `cp_casual_lift1`
--

INSERT INTO `cp_casual_lift1` (`clift_id`, `reg_id`, `clift_type`, `clift_leaving_date`, `clift_leaving_time`, `clift_route`, `clift_sharing_cost`, `clift_commuter`, `clift_description`, `clift_publish`, `clift_created_date`) VALUES
(14, 3, 'Casual', '09-02-2014', '4:20 AM', 'vinukonda,vijayawada,hyderabad,,,,,,', '230 INR', 'Male', 'tesgdsgdfghfdhdfh', 'Active', 'Fri Feb 07 2014 09:00:09 AM'),
(19, 3, 'Casual', '09-02-2014', '6:15 PM', 'Tatipaka,Palakol,Ballipadu,,,,,,', '230 INR', 'Any', 'Test', 'Active', 'Sat Feb 08 2014 07:45:54 AM');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `cp_cities`
--

INSERT INTO `cp_cities` (`city_id`, `state_name`, `reg_id`, `city_name`, `to_city_name`, `city_pincode`, `modified_by`) VALUES
(3, 1, 3, 'hyderabad', '', '500034', 'User'),
(4, 1, 3, 'hyderabad', '', '500034', 'User'),
(5, 1, 3, 'Eluru', '', '533258', 'User'),
(6, 1, 8, 'hyderabad', '', '500034', 'User'),
(7, 1, 8, 'hyderabad', '', '500034', 'User'),
(8, 1, 8, 'kakinada', '', '533258', 'User'),
(9, 0, 0, '', '', '', 'User'),
(11, 1, 8, 'kaikalore', '', '522356', 'Owner'),
(12, 1, 3, 'hyderabad', '', '500034', 'User'),
(20, 1, 3, 'Razole', 'Attili', '523658', 'User'),
(21, 1, 3, 'Attili', '', '500034', 'User'),
(22, 1, 8, 'abc', '', '', 'Owner'),
(23, 1, 8, 'xyz', '', '', 'Owner'),
(25, 1, 8, 'hyderabad', '', '500034', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `cp_regular_lift`
--

CREATE TABLE IF NOT EXISTS `cp_regular_lift` (
  `rlift_id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_id` int(10) NOT NULL,
  `rlift_type` varchar(255) NOT NULL,
  `rlift_state_id` int(6) NOT NULL,
  `rlift_city` varchar(20) NOT NULL,
  `rlift_from_area` varchar(20) NOT NULL,
  `rlift_to_area` varchar(20) NOT NULL,
  `rlift_pincode` int(15) NOT NULL,
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
  `rlift_views` int(11) NOT NULL,
  PRIMARY KEY (`rlift_id`),
  KEY `FK_reg` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cp_regular_lift`
--

INSERT INTO `cp_regular_lift` (`rlift_id`, `reg_id`, `rlift_type`, `rlift_state_id`, `rlift_city`, `rlift_from_area`, `rlift_to_area`, `rlift_pincode`, `rlift_leaving_time`, `rlift_return_time`, `rlift_route`, `rlift_frequency`, `rlift_vehicle_type`, `rlift_sharing_cost`, `rlift_commuter`, `rlift_description`, `rlift_publish`, `rlift_created_date`, `rlift_views`) VALUES
(1, 3, 'Regular', 1, 'hyderabad', 'ammerpet', 'hitechcity', 500034, '4:25 AM', '4:25 PM', 'amerpet,srnagar,hitechcity,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Male', 'fbsdhfasjfkjfhjksdafhjk', 'Active', 'Mon Feb 10 2014 08:17:35 AM', 7),
(2, 8, 'Regular', 1, 'hyderabad', 'ammerpet', 'hitechcity', 500034, '3:15 AM', '6:20 PM', 'amerpet,srnagar,hitechcity,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Any', 'sgdsfhdjfghkjgjkgkl', 'Active', 'Mon Feb 10 2014 11:12:55 AM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cp_regular_lift1`
--

CREATE TABLE IF NOT EXISTS `cp_regular_lift1` (
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `cp_regular_lift1`
--

INSERT INTO `cp_regular_lift1` (`rlift_id`, `reg_id`, `rlift_type`, `rlift_leaving_time`, `rlift_return_time`, `rlift_route`, `rlift_frequency`, `rlift_vehicle_type`, `rlift_sharing_cost`, `rlift_commuter`, `rlift_description`, `rlift_publish`, `rlift_created_date`) VALUES
(26, 8, 'Regular', '8:5 AM', '5:30 PM', 'ammerpet,srnagar,hitechcity,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Male', 'tggdgghhggh', 'Active', 'Thu Feb 06 2014 08:58:01 AM'),
(25, 8, 'Regular', '6:10 AM', '5:10 PM', 'amerpet,srnagar,hitech,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Male', 'test', 'Active', 'Thu Feb 06 2014 07:49:44 AM'),
(24, 3, 'Regular', '8:10 AM', '7:10 PM', 'ammerpet,srnagar,hitechcity,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Male', 'test', 'Active', 'Wed Feb 05 2014 11:10:41 AM'),
(27, 3, 'Regular', '1:5 AM', '1:5 AM', 'amerpet,srnagar,hitech,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Male', 'test', 'Active', 'Fri Feb 07 2014 07:09:47 AM'),
(29, 8, 'Regular', '1:5 AM', '1:5 AM', 'amerpet,srnagar,hitechcity,,,,,,', 'Mon Tue Wed Thu Fri ', 'four wheeler', '450 INR', 'Male', 'jhgjghjghjghj\r\nhgjhgjghj\r\ngfjfgjfj\r\nfjfdgjf', 'Active', 'Mon Feb 10 2014 06:43:30 AM');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

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
(56, '1', '', 'Wed Jan 29 2014 03:04:05 AM'),
(57, '1', '', 'Fri Jan 31 2014 22:40:14 PM'),
(58, '1-Andhra Pradesh', '', 'Fri Feb 07 2014 07:54:18 AM');

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
  `reg_interested_in` varchar(50) NOT NULL,
  `reg_ride_mode` varchar(50) NOT NULL,
  `reg_user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`reg_id`),
  KEY `reg_id` (`reg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cp_users`
--

INSERT INTO `cp_users` (`reg_id`, `reg_firstname`, `reg_lastname`, `reg_password`, `reg_gender`, `reg_mobile`, `reg_email`, `reg_dob`, `reg_city`, `reg_created_date`, `reg_last_visit_date`, `reg_last_password_reset_date`, `reg_interested_in`, `reg_ride_mode`, `reg_user_type`) VALUES
(6, 'bhaskar', 'babu', 'MTIz', 'Male', '9704505674', 'bhaskar.pragada@gmail.com', '1985-1-1', 'hyderabad', 'Thu Jan 30 2014 20:46:02', 'Thu Jan 30 2014 20:46:02', 'Thu Jan 30 2014 20:46:02', '', '', 'User'),
(3, 'nagababu', 'ch', 'MTIz', 'Male', '8712110137', 'cn@gmail.com', '1994-1-1', 'hyderabad', 'Fri Jan 24 2014 23:06:33', 'Fri Jan 24 2014 23:06:33', 'Fri Jan 24 2014 23:06:33', '', '', 'User'),
(8, 'naga', 'babu', 'MTIz', 'Male', '9704505674', 'babu@gmail.com', '1988-1-1', 'hyderabad', 'Wed Feb 05 2014 13:21:15', 'Wed Feb 05 2014 13:21:15', 'Wed Feb 05 2014 13:21:15', 'Offer_ride Take_ride ', 'car_icon ', 'Owner'),
(9, 'bhaskar', 'p', 'MTIz', 'Male', '9704505674', 'basi@gmail.com', '1988-1-1', 'hyderabad', 'Wed Feb 05 2014 13:22:28', 'Wed Feb 05 2014 13:22:28', 'Wed Feb 05 2014 13:22:28', 'Take_ride Sharecab ', 'car_icon ', 'User'),
(10, 'jagan', 'bai', 'MTIz', 'Male', '9704505674', 'jagan@gmail.com', '--select---1-1', 'hyderabad', 'Thu Feb 06 2014 12:28:25', 'Thu Feb 06 2014 12:28:25', 'Thu Feb 06 2014 12:28:25', 'Take_ride Sharecab ', 'car_icon ', 'User');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cp_user_notes`
--

INSERT INTO `cp_user_notes` (`reg_note_id`, `reg_id`, `reg_activation_code`, `reg_sendemail`, `reg_mobile_sendactcode`, `reg_browser_agent`, `reg_user_ipaddress`, `reg_user_location_info`, `reg_email_activation_status`, `reg_mobile_activation_status`, `reg_block`, `reg_activation_count`) VALUES
(1, 1, 308655200, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 1, 0, 0, 0),
(2, 2, 251885200, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(3, 3, 114125200, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 1, 0, 0, 0),
(4, 4, 2147483647, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 1, 0, 0, 0),
(5, 5, 2147483647, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(6, 6, 3061552, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(9, 9, 1787252, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0),
(8, 8, 1151152, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 1, 0, 0, 0),
(10, 10, 1644852, 1, 0, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '::1', '', 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
