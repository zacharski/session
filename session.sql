-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2010 at 03:26 AM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `session`
--
CREATE DATABASE IF NOT EXISTS session;
GRANT ALL PRIVILEGES ON session.* to 'assist'@'localhost' identified by 'assist';
USE session;
-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie` varchar(70) NOT NULL,
  `theater` varchar(50) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie`, `theater`, `zip`) VALUES
(1, 'Valentine''s Day', 'Regal Fredericksburg 15', 22401),
(2, 'Dear John', 'Regal Fredericksburg 15', 22401),
(3, 'The Wolfman', 'Regal Fredericksburg 15', 22401),
(4, 'From Paris with Love', 'Marquee Cinemas Southpoint 9', 22401),
(5, 'The Book of Eli', 'Allen Cinema 4 Mesilla Valley', 88005),
(6, 'The Wolfman', 'Allen Cinema 4 Mesilla Valley', 88005),
(7, 'Avatar3D', 'Allen Cinema 4 Mesilla Valley', 88005);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE IF NOT EXISTS `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `address` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `type`, `address`, `zip`) VALUES
(1, 'Starbucks', 'coffee', '2511 Lohman Ave', 88005),
(2, 'Milagro Coffee Y Espresso', 'coffee', '1733 E. University Ave', 88005),
(3, 'Starbucks', 'coffee', '1500 South Valley', 88005),
(4, 'Bean', 'coffee', '2011 Avenida De Mesilla', 88005),
(5, 'Hyperion Espresso', 'coffee', '301 William St.', 22401),
(6, 'Starbucks', 'coffee', '2001 Plank Road', 22401),
(7, 'Caribou Coffee', 'coffee', '1251 Carl D Silver Parkway', 22401),
(8, 'Pancho Villa Mexican Rest', 'Mexican restaurant', '10500 Spotsylvania Ave', 22401),
(9, 'Chipotle', 'Mexican restaurant', '5955 Kingstowne', 22401),
(10, 'El Comedor', 'Mexican restaurant', '2190 Avenida De  Mesilla', 88005),
(11, 'Los Compas', 'Mexican restaurant', '603 S Nevarez St.', 88005),
(12, 'La Fuente', 'Mexican restaurant', '1710 S Espina', 88005),
(13, 'Peet''s', 'coffee', '2260 Locust', 88005);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `zipcode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `zipcode`) VALUES
(1, 'raz', 'p00d13', 88005),
(2, 'ann', 'changeme', 22401),
(3, 'lazy', 'qwerty', 22401);
