-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2012 at 05:08 AM
-- Server version: 5.0.24
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tt_gen`
--
CREATE DATABASE `tt_gen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tt_gen`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `acc_id` varchar(100) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `gender` int(11) NOT NULL,
  `civil_states` int(11) NOT NULL,
  `home_name` varchar(100) NOT NULL,
  `street` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(30) NOT NULL,
  `home_nu` int(10) default NULL,
  `mobile_nu` int(10) default NULL,
  PRIMARY KEY  (`acc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`acc_id`, `first_name`, `last_name`, `gender`, `civil_states`, `home_name`, `street`, `city`, `district`, `home_nu`, `mobile_nu`) VALUES
('1', 'S.', 'Vasanthapriyan', 0, 1, '', '', '', '', NULL, NULL),
('16', 'Administrator', '', 0, 1, '', '', '', '', NULL, NULL),
('2', 'R.K.A.R.', 'Kariapper', 0, 0, '', '', '', '', NULL, NULL),
('3', 'B.T.G.S.', 'Kumara', 0, 0, '', '', '', '', NULL, NULL),
('4', 'Jayalath B.', 'Ekanayake', 0, 0, '', '', '', '', NULL, NULL),
('5', 'Akalanka', 'Galappaththi ', 0, 1, '', '', '', '', NULL, NULL),
('6', 'Sugeeswari', 'Lekamge', 1, 1, '', '', '', '', NULL, NULL),
('7', 'Piumi', 'Ishanka ', 1, 1, '', '', '', '', NULL, NULL),
('8', 'Pubudu N.', 'Jayasena ', 1, 1, '', '', '', '', NULL, NULL),
('9', 'Hiran', 'Punchihewa', 0, 0, '', '', '', '', NULL, NULL),
('10', 'Christie', 'Alwis', 0, 0, '', '', '', '', NULL, NULL),
('11', 'Prasad', 'Jayaweera', 0, 0, '', '', '', '', NULL, NULL),
('12', 'Nihal', 'Hewage', 0, 0, '', '', '', '', NULL, NULL),
('13', 'Java', 'Sir', 0, 0, '', '', '', '', NULL, NULL),
('14', 'Rasika', 'Sampath', 0, 0, '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
  `batch_id` int(11) NOT NULL,
  `year_of_addmission` date NOT NULL,
  `no_of _students` int(11) NOT NULL,
  PRIMARY KEY  (`batch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch_id`, `year_of_addmission`, `no_of _students`) VALUES
(1, '2008-11-09', 47),
(2, '2009-11-10', 72),
(3, '2010-11-10', 68),
(4, '2011-08-10', 84);

-- --------------------------------------------------------

--
-- Table structure for table `gen_time_table_year_1`
--

CREATE TABLE IF NOT EXISTS `gen_time_table_year_1` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_time_table_year_1`
--

INSERT INTO `gen_time_table_year_1` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('-', '-', 'Information Systems Hardware and Systems Software', '-', '-', '-', '-'),
('-', '-', 'Information Systems Hardware and Systems Software', '-', '-', '-', '-'),
('-', '-', 'Information Systems Hardware and Systems Software', '-', '-', '-', '-'),
('-', '-', 'Information Systems Hardware and Systems Software', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `gen_time_table_year_2`
--

CREATE TABLE IF NOT EXISTS `gen_time_table_year_2` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_time_table_year_2`
--

INSERT INTO `gen_time_table_year_2` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('-', '-', 'Platform Technologies ', '-', '-', '-', '-'),
('-', '-', 'Platform Technologies ', '-', '-', '-', '-'),
('-', '-', 'Platform Technologies ', '-', '-', '-', '-'),
('-', '-', 'Platform Technologies ', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `gen_time_table_year_3`
--

CREATE TABLE IF NOT EXISTS `gen_time_table_year_3` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_time_table_year_3`
--

INSERT INTO `gen_time_table_year_3` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('-', 'Advanced Software Engineering ', 'Artifitial Intelligent Systems', '-', '-', '-', '-'),
('-', 'Advanced Software Engineering ', 'Artifitial Intelligent Systems', '-', '-', '-', '-'),
('-', 'Advanced Software Engineering ', 'Artifitial Intelligent Systems', '-', '-', '-', '-'),
('-', 'Advanced Software Engineering ', 'Artifitial Intelligent Systems', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `gen_time_table_year_4`
--

CREATE TABLE IF NOT EXISTS `gen_time_table_year_4` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_time_table_year_4`
--

INSERT INTO `gen_time_table_year_4` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('Business Process Management Systems', 'Literature Search & Seminar', 'Information Access & Management ', 'Software Project Management ', 'Software Project Management ', 'Business Process Management Systems', 'Business Process Management Systems'),
('Business Process Management Systems', 'Literature Search & Seminar', 'Information Access & Management ', 'Software Project Management ', 'Software Project Management ', 'Business Process Management Systems', 'Business Process Management Systems'),
('Business Process Management Systems', 'Literature Search & Seminar', 'Information Access & Management ', 'Software Project Management ', 'Software Project Management ', 'Business Process Management Systems', 'Business Process Management Systems'),
('Business Process Management Systems', 'Literature Search & Seminar', 'Information Access & Management ', 'Software Project Management ', 'Software Project Management ', 'Business Process Management Systems', 'Business Process Management Systems'),
('Geographic Information Systems', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `subject_code` varchar(8) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `number_of_credits` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  PRIMARY KEY  (`subject_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_code`, `subject_name`, `number_of_credits`, `semester_id`, `lecturer_id`) VALUES
('11301', 'Fundamentals of Information Systems', 3, 1, 5),
('11302', 'Programming Fundamentals', 3, 1, 13),
('11303', 'Information Systems Theory and Practice', 3, 1, 6),
('11304', 'Information Systems Hardware and Systems Software', 3, 1, 3),
('11305', 'Mathematics for Information Systems ', 3, 1, 12),
('12306', 'Programming, Data, Files and Object Structures', 3, 2, 6),
('12307', 'Physical Design and Implementation with DBMS', 3, 2, 7),
('12308', 'Physical Design and Implementation in Emerging Environments ', 3, 2, 9),
('12309', 'Algorithms and Complexity ', 3, 2, 8),
('12310', 'Data Structures', 3, 2, 3),
('21311', 'Personal Productivity with IS Technology', 3, 3, 1),
('21312', 'Software Engineering', 3, 3, 2),
('21313', 'Object Oriented Programming', 3, 3, 10),
('21314', 'Platform Technologies ', 3, 3, 3),
('21315', 'Information Assurance and Security ', 3, 3, 6),
('22316', 'System Administration and Maintenance ', 3, 4, 3),
('22317', 'Operating Systems', 3, 4, 2),
('22318', 'System Integration and Architecture ', 3, 4, 5),
('22319', 'Social and Professional Issues', 3, 4, 2),
('22320', 'Web Systems and Technologies ', 3, 4, 3),
('31221', 'Electronic Business Strategy , Architecture and Design', 2, 5, 1),
('31222', 'Distributed Systems', 2, 5, 6),
('31323', 'Network and Telecommunication ', 3, 5, 10),
('31224', 'Digital Image Processing ', 2, 5, 3),
('31225', 'Artifitial Intelligent Systems', 2, 5, 4),
('31226', 'Statistics and Probability', 2, 5, 7),
('31227', 'Analysis and Logical Design', 2, 5, 8),
('31228', 'Advanced Software Engineering ', 2, 5, 2),
('32329', 'Graphics and Visualization', 3, 6, 3),
('32230', 'Human Computer Interaction ', 2, 6, 3),
('32231', 'Management Information Systems', 2, 6, 5),
('32232', 'Multimedia Design and Technology ', 2, 6, 2),
('32233', 'Mini Project', 2, 6, 0),
('32234', 'Artificial Neural Networks ', 2, 6, 4),
('32335', 'Electronic Business Technologies ', 2, 6, 11),
('32236', 'Human Resource Management ', 2, 6, 14),
('41337', 'Project Management and Practice', 3, 7, 9),
('41338', 'Literature Search & Seminar', 3, 7, 8),
('41339', 'Data Mining & Information Retrieval', 3, 7, 1),
('41340', 'Information Access & Management ', 3, 7, 3),
('41341', 'Computer System Security ', 3, 7, 4),
('41138', 'Literature Search & Seminar', 1, 7, 8),
('41342', 'Software Project Management ', 3, 7, 3),
('41343', 'Business Process Management Systems', 3, 7, 6),
('41344', 'Parallel Processing ', 3, 7, 8),
('41245', 'Bio Informatics  ', 2, 7, 5),
('41246', 'Geographic Information Systems', 2, 7, 2),
('42647', 'Research Project / Industrial Training ', 6, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_table_year_1`
--

CREATE TABLE IF NOT EXISTS `time_table_year_1` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_year_1`
--

INSERT INTO `time_table_year_1` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('Fundamentals of Information Systems', 'Fundamentals of Information Systems', 'Fundamentals of Information Systems', 'Programming Fundamentals', 'Programming Fundamentals', 'Programming Fundamentals', 'Information Systems Theory and Practice'),
('Information Systems Theory and Practice', 'Information Systems Theory and Practice', 'Information Systems Hardware and Systems Software', 'Information Systems Hardware and Systems Software', 'Information Systems Hardware and Systems Software', 'Mathematics for Information Systems ', 'Mathematics for Information Systems '),
('Mathematics for Information Systems ', '-', '-', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_year_2`
--

CREATE TABLE IF NOT EXISTS `time_table_year_2` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_year_2`
--

INSERT INTO `time_table_year_2` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('Personal Productivity with IS Technology', 'Personal Productivity with IS Technology', 'Personal Productivity with IS Technology', 'Software Engineering', 'Software Engineering', 'Software Engineering', 'Object Oriented Programming'),
('Object Oriented Programming', 'Object Oriented Programming', 'Platform Technologies ', 'Platform Technologies ', 'Platform Technologies ', 'Information Assurance and Security ', 'Information Assurance and Security '),
('Information Assurance and Security ', '-', '-', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_year_3`
--

CREATE TABLE IF NOT EXISTS `time_table_year_3` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_year_3`
--

INSERT INTO `time_table_year_3` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('Electronic Business Strategy , Architecture and Design', 'Electronic Business Strategy , Architecture and Design', 'Distributed Systems', 'Distributed Systems', 'Network and Telecommunication ', 'Network and Telecommunication ', 'Network and Telecommunication '),
('Digital Image Processing ', 'Digital Image Processing ', 'Artifitial Intelligent Systems', 'Artifitial Intelligent Systems', 'Statistics and Probability', 'Statistics and Probability', 'Analysis and Logical Design'),
('Analysis and Logical Design', 'Advanced Software Engineering ', 'Advanced Software Engineering ', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-'),
('-', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_year_4`
--

CREATE TABLE IF NOT EXISTS `time_table_year_4` (
  `8-9` varchar(100) NOT NULL,
  `9-10` varchar(100) NOT NULL,
  `10-11` varchar(100) NOT NULL,
  `11-12` varchar(100) NOT NULL,
  `1-2` varchar(100) NOT NULL,
  `2-3` varchar(100) NOT NULL,
  `3-4` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_year_4`
--

INSERT INTO `time_table_year_4` (`8-9`, `9-10`, `10-11`, `11-12`, `1-2`, `2-3`, `3-4`) VALUES
('Project Management and Practice', 'Project Management and Practice', 'Project Management and Practice', 'Literature Search & Seminar', 'Literature Search & Seminar', 'Literature Search & Seminar', 'Data Mining & Information Retrieval'),
('Data Mining & Information Retrieval', 'Data Mining & Information Retrieval', 'Information Access & Management ', 'Information Access & Management ', 'Information Access & Management ', 'Computer System Security ', 'Computer System Security '),
('Computer System Security ', 'Literature Search & Seminar', 'Software Project Management ', 'Software Project Management ', 'Software Project Management ', 'Business Process Management Systems', 'Business Process Management Systems'),
('Business Process Management Systems', 'Parallel Processing ', 'Parallel Processing ', 'Parallel Processing ', 'Bio Informatics  ', 'Bio Informatics  ', 'Geographic Information Systems'),
('Geographic Information Systems', '-', '-', '-', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_ID` int(11) NOT NULL auto_increment,
  `user_level` int(1) NOT NULL default '2',
  `acc_id` varchar(100) NOT NULL default '0',
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`user_ID`),
  KEY `FK_users_1` USING BTREE (`acc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_level`, `acc_id`, `username`, `password`) VALUES
(19, 2, '1', 'priyan', '2061bac208c7bdd2665fbf4b7067e468'),
(16, 1, '16', 'admin', '2061bac208c7bdd2665fbf4b7067e468'),
(20, 2, '2', 'kariapper', '2061bac208c7bdd2665fbf4b7067e468'),
(21, 2, '3', 'kumara', '2061bac208c7bdd2665fbf4b7067e468'),
(25, 2, '25', 'test_lec', '2061bac208c7bdd2665fbf4b7067e468'),
(27, 2, '27', 'mj', '2061bac208c7bdd2665fbf4b7067e468'),
(28, 2, '28', 'srk', '2061bac208c7bdd2665fbf4b7067e468');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE IF NOT EXISTS `venues` (
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(100) NOT NULL,
  `number_of_students` int(11) NOT NULL,
  `availability_of_pc` tinyint(1) NOT NULL,
  PRIMARY KEY  (`venue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`venue_id`, `venue_name`, `number_of_students`, `availability_of_pc`) VALUES
(1, 'Computer Center 1', 55, 1),
(2, 'Computer Center 2', 50, 1),
(3, 'External Hall', 90, 0),
(4, 'NLH', 100, 0);
