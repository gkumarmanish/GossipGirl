-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2016 at 09:46 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gossipgirl`
--

-- --------------------------------------------------------

--
-- Table structure for table `usercomment`
--

CREATE TABLE IF NOT EXISTS `usercomment` (
  `UserName` varchar(11) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercomment`
--

INSERT INTO `usercomment` (`UserName`, `Comment`) VALUES
('Manm', 'ashj'),
('Manmsams', 'msnanmsan hdkjas djkasdj jksdaksd'),
('Hello', 'Hiasjasjka'),
('Hjsaj', 'dska'),
('Hello', 'HJASJ'),
('MANISH', 'Hello How r u'),
('MANISH', 'Hello How r u'),
('MANISH', 'Hello How r u'),
('Manish', 'I am Manish'),
('Manish', 'Hello How r u');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
