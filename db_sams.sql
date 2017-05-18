-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2017 at 05:29 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sams`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `roll`, `attend`, `att_time`) VALUES
(1, 50, 'absent', '2017-04-01'),
(2, 37, 'absent', '2017-04-01'),
(3, 99, 'absent', '2017-04-01'),
(4, 90, 'absent', '2017-04-01'),
(5, 40, 'absent', '2017-04-01'),
(6, 15, 'absent', '2017-04-01'),
(7, 19, 'absent', '2017-04-01'),
(8, 50, 'present', '2017-04-02'),
(9, 37, 'present', '2017-04-02'),
(10, 40, 'absent', '2017-04-02'),
(11, 99, 'present', '2017-04-02'),
(12, 90, 'absent', '2017-04-02'),
(13, 15, 'absent', '2017-04-02'),
(14, 19, 'present', '2017-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `name`, `roll`) VALUES
(1, 'Bidhan sutradhar', 50),
(2, 'Razu saha', 37),
(3, 'Rajib sutradhar', 40),
(4, 'Hridoy sutradhar', 99),
(5, 'Sumon Roy', 90),
(6, 'Shoel', 15),
(7, 'Hasan', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
