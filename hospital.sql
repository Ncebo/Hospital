-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2019 at 14:36 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--
CREATE DATABASE IF NOT EXISTS `hospital` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hospital`;

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `id` int(50) NOT NULL,
  `doctor_id` int(50) NOT NULL,
  `patient_id` int(50) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `created_date` varchar(20) NOT NULL,
  `serial_no` int(50) NOT NULL,
  `details` text NOT NULL,
  `prescription` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`id`, `doctor_id`, `patient_id`, `schedule_id`, `date`, `created_date`, `serial_no`, `details`, `prescription`, `status`) VALUES
(1, 5, 6, 6, '28/04/2019', '29/04/19', 1, '', '', 'pending'),
(2, 5, 16, 6, '28/04/2019', '29/04/19', 2, '', '', 'pending'),
(3, 4, 16, 9, '02/05/2019', '01/05/19', 1, '', '', 'pending'),
(4, 4, 5, 9, '16/05/2019', '02/05/19', 1, '', '', 'pending'),
(5, 5, 5, 6, '25/05/2019', '03/05/19', 1, '', '', 'pending'),
(6, 5, 6, 6, '18/05/2019', '19/02/18', 1, '', '', 'pending'),
(7, 4, 6, 10, '21/05/2019', '19/05/19', 1, '', 'Prescription Details here', 'pending'),
(8, 4, 13, 9, '23/05/2019', '16/05/19', 1, '', '', 'pending'),
(9, 2, 13, 11, '25/05/2019', '16/05/19', 1, '', '', 'pending'),
(10, 4, 6, 10, '28/05/2019', '16/05/19', 1, '', 'Hello I am', 'pending'),
(11, 2, 6, 11, '11/05/2019', '16/05/19', 1, '', '', 'pending'),
(12, 5, 6, 6, '04/05/2019', '16/05/19', 1, '', '', 'pending'),
(13, 4, 6, 9, '09/05/2019', '16/05/19', 1, '', 'sdfdsfdsafds', 'pending'),
(14, 2, 6, 11, '18/05/2019', '16/05/19', 1, '', '', 'pending'),
(15, 5, 6, 7, '05/05/2019', '16/05/19', 1, '', '', 'pending'),
(16, 5, 6, 6, '25/05/2019', '16/05/19', 2, '', '', 'pending'),
(19, 4, 5, 9, '09/05/2019', '29/05/19', 2, '', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`) VALUES
(3, 'Orthopedic  ', 'Orthopedic   Descriptions'),
(4, 'Neuro Surgery   ', 'Neuro Surgery   department');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `department` int(10) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `meta` text NOT NULL,
  `user_id` int(15) NOT NULL,
  `picture` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `nic`, `department`, `blood_group`, `birth_date`, `sex`, `email`, `phone`, `country`, `state`, `address`, `about`, `name`, `meta`, `user_id`, `picture`) VALUES
(2, '123456789', 4, '0', '10/10/2011', '0', 'Email@email.com', '01733435951', 'BD', 'Dr', 'Mayo, Dr, Mkhize', ':)', 'Doctor 1', '', 0, 'http://localhost/hospital/uploads/doctor-3.jpg'),
(4, '2', 4, '0', '', '0', 'mdluli.com@gmail.com3', '', 'BD', '', '', '', 'Doctor 2', '', 0, 'http://localhost/hospital/uploads/doctor-2.jpg'),
(5, '45548 3', 4, '0', '10/10/2003', '1', 'mdluli.com@gmail.com3', '8017947545653', 'BD', 'Dhaka3', 'address filed3', 'dsfdsf3', 'Dr. Mdluli', '', 0, 'http://localhost/hospital/uploads/doctor-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_schedule`
--

CREATE TABLE `doctors_schedule` (
  `id` int(50) NOT NULL,
  `doctor_id` int(50) NOT NULL,
  `day_of_week` varchar(9) NOT NULL,
  `start_time` varchar(15) NOT NULL,
  `end_time` varchar(15) NOT NULL,
  `max_num_of_patients` int(11) NOT NULL,
  `fees` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `comment` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors_schedule`
--

INSERT INTO `doctors_schedule` (`id`, `doctor_id`, `day_of_week`, `start_time`, `end_time`, `max_num_of_patients`, `fees`, `status`, `comment`) VALUES
(6, 5, 'Sunday', '10 am', '11 am', 5, '200', '', ''),
(7, 5, 'Monday', '10 am', '11 am', 5, '200', '', ''),
(8, 5, 'Tuesday', '10 am', '11 am', 5, '200', '', ''),
(9, 4, 'Friday', '10 am', '12 am', 10, '399', '', '10 % discount'),
(10, 4, 'Wednesday', '10am', '1pm', 25, '250', '', 'dsf'),
(11, 2, 'Sunday', '10am', '1pm', 25, '250', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `created_by` int(11) NOT NULL,
  `patient` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `data` text NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `title`, `created_by`, `patient`, `date`, `data`, `total`) VALUES
(5, 'Invoice Name 568', 5, 16, '02/19/2018', '[{"label":"Label 3","price":"548"},{"label":"Lax","price":"5"}]', '553'),
(6, 'Test invoice', 5, 17, '03/16/2018', '[{"label":"Medicine ","price":"230"},{"label":"Blood Test","price":"120"}]', '350'),
(7, 'ECG', 5, 17, '03/29/2018', '[{"label":"ooo","price":"1000"}]', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `id` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `picture` varchar(150) NOT NULL,
  `about` text NOT NULL,
  `user_id` int(10) NOT NULL,
  `meta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`id`, `name`, `phone`, `email`, `address`, `picture`, `about`, `user_id`, `meta`) VALUES
(6, 'Nurse Name', '7706408552', 'mdluli.com@gmail.com', 'ngcebo-2020,mdluli', 'http://localhost/hospital/uploads/04 News InsideSmall.jpg', 'dsfdsf', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `department` int(10) NOT NULL,
  `birth_date` varchar(12) NOT NULL,
  `age` int(10) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `email` varchar(50) NOT NULL,
  `county` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `guardian_name` varchar(150) NOT NULL,
  `guardian_phone` varchar(20) NOT NULL,
  `guardian_details` varchar(50) NOT NULL,
  `bad_no` int(20) NOT NULL,
  `referred_by` int(10) NOT NULL,
  `reg_date` varchar(20) NOT NULL,
  `descriptions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `phone`, `blood_group`, `department`, `birth_date`, `age`, `sex`, `email`, `county`, `city`, `address`, `about`, `guardian_name`, `guardian_phone`, `guardian_details`, `bad_no`, `referred_by`, `reg_date`, `descriptions`)


-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(50) NOT NULL,
  `apionment_id` int(50) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `last_login` datetime NOT NULL,
  `role` varchar(15) NOT NULL,
  `picture` varchar(150) NOT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `full_name`, `email`, `last_login`, `role`, `picture`, `profile_id`) 

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors_schedule`
--
ALTER TABLE `doctors_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `doctors_schedule`
--
ALTER TABLE `doctors_schedule`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
