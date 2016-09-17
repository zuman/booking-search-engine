-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2016 at 12:21 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `booking`
--
DROP DATABASE `booking`;
CREATE DATABASE IF NOT EXISTS `booking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `booking`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cities`
--
DROP VIEW IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
`city` varchar(255)
);
-- --------------------------------------------------------

--
-- Table structure for table `data_table`
--
-- Creation: Aug 14, 2016 at 07:43 PM
--

DROP TABLE IF EXISTS `data_table`;
CREATE TABLE IF NOT EXISTS `data_table` (
  `City` varchar(255) NOT NULL,
  `Passion` varchar(255) NOT NULL,
  `Endorsement_count` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table`
--

INSERT INTO `data_table` (`City`, `Passion`, `Endorsement_count`) VALUES
('Amsterdam', 'Museums', 64380),
('Amsterdam', 'City Walks', 41419),
('Lucknow', 'Food', 85956),
('Chennai', 'Beach', 3625),
('Bangalore', 'Movies', 4526),
('Amsterdam', 'Cycling', 24234),
('Amsterdam', 'Shopping', 25756),
('Amsterdam', 'Nightlife', 31500),
('Amsterdam', 'Culture', 32543),
('Amsterdam', 'Walking', 32707),
('Amsterdam', 'Architecture', 33933),
('Amsterdam', 'Sightseeing', 37198),
('Amsterdam', 'Trekking', 52415),
('Amsterdam', 'Metro', 54321),
('Amsterdam', 'Mountains', 9586),
('Amsterdam', 'Rainfall', 11000),
('Lisboa', 'Monuments', 25904),
('Lisboa', 'History', 26009),
('Lisboa', 'Culture', 26070),
('Lucknow', 'Walking', 44000),
('Chennai', 'City Walks', 4521),
('Lisboa', 'Architecture', 26207),
('Lisboa', 'Friendly People', 26728),
('Lisboa', 'Sightseeing', 30543),
('Lisboa', 'Old Town', 31719),
('Lisboa', 'City Walks', 32724),
('Lisboa', 'Food', 33060),
('Chennai', 'Food', 5263),
('Paris', 'Art', 42927),
('Paris', 'Food', 45947),
('Paris', 'Shopping', 47174),
('Paris', 'Architecture', 54666),
('Paris', 'Monuments', 55457),
('Paris', 'Culture', 58852),
('Paris', 'Sightseeing', 63457),
('Paris', 'Museums', 84569);

-- --------------------------------------------------------

--
-- Structure for view `cities`
--
DROP TABLE IF EXISTS `cities`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cities` AS select distinct `data_table`.`City` AS `city` from `data_table`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
