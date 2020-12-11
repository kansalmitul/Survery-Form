-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 04:58 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surveyform`
--

-- --------------------------------------------------------

--
-- Table structure for table `surveyformtable`
--

CREATE TABLE `surveyformtable` (
  `id` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `role` enum('S','E') NOT NULL,
  `rating` enum('Definitely','Maybe','Not Sure about it') NOT NULL,
  `mostLike` enum('code samples','Sample projects','other features') NOT NULL,
  `improve` enum('FEP','BEP','DV') NOT NULL,
  `comments` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surveyformtable`
--

INSERT INTO `surveyformtable` (`id`, `Name`, `email`, `Age`, `role`, `rating`, `mostLike`, `improve`, `comments`) VALUES
(1, 'Alisha', 'al@hm.com', 65, 'E', 'Maybe', 'other features', 'FEP', 'aaD'),
(2, 'Alisha', 'al@hm.com', 0, 'E', 'Maybe', 'other features', 'FEP', 'aaD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `surveyformtable`
--
ALTER TABLE `surveyformtable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surveyformtable`
--
ALTER TABLE `surveyformtable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
