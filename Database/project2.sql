-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 12:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project2`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `meter` varchar(30) NOT NULL,
  `month` varchar(30) NOT NULL,
  `units` varchar(30) NOT NULL,
  `total_bill` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`meter`, `month`, `units`, `total_bill`, `status`) VALUES
('446227', 'January', '500', '4650', 'Not Paid'),
('2', 'September', '5000', '45150', 'Not Paid');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(30) NOT NULL,
  `meter` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `meter`, `address`, `state`, `city`, `email`, `phone`) VALUES
('Java sir', '446227', 'Cr er basar pase', 'Cr jei City te thake', 'Cr jei desh a thake', 'javapro@gmail.com', '+880171717173'),
('Pritom', '2', 'Mirpur-12', 'Bangladesh', 'Dhaka', 'pritom@gmail.com', '0155555555555');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `meter_no` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`meter_no`, `name`, `username`, `password`, `user`) VALUES
('1', 'Angel Jude Suarez', 'admin', 'admin', 'Admin'),
('2', 'Pritom102', 'pri', 'pri', 'Customer'),
('446227', '', '', '', ''),
('45555', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `meter_info`
--

CREATE TABLE `meter_info` (
  `meter_number` varchar(30) NOT NULL,
  `meter_location` varchar(30) NOT NULL,
  `meter_type` varchar(30) NOT NULL,
  `phase_code` varchar(30) NOT NULL,
  `bill_type` varchar(30) NOT NULL,
  `days` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meter_info`
--

INSERT INTO `meter_info` (`meter_number`, `meter_location`, `meter_type`, `phase_code`, `bill_type`, `days`) VALUES
('446227', 'Outside', 'Electric Meter', '011', 'Normal', '30'),
('45555', 'Outside', 'Electric Meter', '011', 'Normal', '30');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `cost_per_unit` varchar(30) NOT NULL,
  `meter_rent` varchar(30) NOT NULL,
  `service_charge` varchar(30) NOT NULL,
  `service_tax` varchar(30) NOT NULL,
  `swacch_bharat_cess` varchar(30) NOT NULL,
  `fixed_tax` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`cost_per_unit`, `meter_rent`, `service_charge`, `service_tax`, `swacch_bharat_cess`, `fixed_tax`) VALUES
('9', '47', '22', '57', '6', '18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
